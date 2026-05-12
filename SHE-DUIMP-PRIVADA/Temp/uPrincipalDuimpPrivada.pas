unit uPrincipalDuimpPrivada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxPageControl,
  WinHttpApi, WinCrypt, CryptUID7, superobject;

type
  TForm1 = class(TForm)
    BTNAutentica: TButton;
    BTNConsultaDuimp: TButton;
    dxPageControl1: TdxPageControl;
    TSCertificado: TdxTabSheet;
    LabelConsumerKey: TLabel;
    LabelConsumerSecret: TLabel;
    LabelNumeroDuimp: TLabel;
    LabelVersaoDuimp: TLabel;
    LabelCertificadoNoSerie: TLabel;
    EditNumeroDuimp: TEdit;
    EditVersaoDuimp: TEdit;
    EditConsumerKey: TEdit;
    EditConsumerSecret: TEdit;
    EditCertificadoNoSerie: TEdit;
    MemoRetorno: TMemo;
    EditToken: TEdit;
    LabelToken: TLabel;
    EditClienteID: TEdit;
    LabelClienteID: TLabel;
    LabelClienteSecret: TLabel;
    EditClienteSecret: TEdit;
    procedure BTNAutenticaClick(Sender: TObject);
    procedure BTNConsultaDuimpClick(Sender: TObject);
  private
    FCertContext: PCCERT_CONTEXT;
    FAccessToken: string;
    FTokenType: string;
    FTokenExpiresAt: TDateTime;

    function Wide(const S: string): WideString;
    function Base64Encode(const S: AnsiString): string;
    function MaskText(const S: string; ALeft, ARight: Integer): string;
    function NormalizeSerial(const ASerial: string): string;
    function CertSerialToString(ACert: PCCERT_CONTEXT): string;
    function SelectCertificateManual: PCCERT_CONTEXT;
    function FindCertificateBySerial(const ASerial: string): PCCERT_CONTEXT;
    function LoadCertificate: PCCERT_CONTEXT;
    function ReadResponseBody(ARequest: HINTERNET): string;
    function QueryStatusCode(ARequest: HINTERNET): Integer;
    function QueryRawHeaders(ARequest: HINTERNET): string;
    function ExtractJsonStringValue(const AJson, AName: string): string;
    function ExtractJsonIntegerValue(const AJson, AName: string): Integer;
    function UrlEncodeQueryParam(const S: string): string;

    procedure SetTls12(ASession: HINTERNET);
    procedure SetClientCertificate(ARequest: HINTERNET; ACert: PCCERT_CONTEXT);
    procedure ClearToken;
    procedure FreeCertificate;
    procedure ConfigureButtons;
    procedure ValidarCamposAutenticacao;
    procedure ValidarCamposConsultaDuimp;
    function TokenValido: Boolean;
    procedure GarantirAutenticado;
    function BuildDuimpConsultaPath(const ANumero, AVersao, AChaveAcesso: string; AMode: Integer; var AHost: string; var AUsaHeadersIntegra: Boolean; var ADescricao: string): string;
    function HttpGetJsonHost(const AHost, APath: string; AUsaHeadersIntegra: Boolean; out AStatusCode: Integer; out ARawHeaders: string): string;
    function JsonDataTypeName(AObj: ISuperObject): string;
    function JsonScalarToText(AObj: ISuperObject): string;
    procedure AddJsonFieldsToMemo(AObj: ISuperObject; const APath: string; ALines: TStrings; ADepth, AMaxDepth: Integer);
    procedure AddJsonCapaIndexToMemo(AObj: ISuperObject; const APath: string; ALines: TStrings; ADepth, AMaxDepth: Integer);
    procedure ConsultarDuimpSerpro;
    procedure AutenticarSerproIntegraComex;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    property AccessToken: string read FAccessToken;
    property TokenType: string read FTokenType;
    property TokenExpiresAt: TDateTime read FTokenExpiresAt;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const
  SERPRO_TOKEN_HOST = 'gateway.apiserpro.serpro.gov.br';
  SERPRO_TOKEN_PATH = '/token';
  SERPRO_API_HOST = 'gateway.apiserpro.serpro.gov.br';
  SERPRO_DUIMP_PUBLIC_HOST = 'pro-integra-pub-pucomex-dimp.estaleiro.serpro.gov.br';
  TOKEN_EXPIRATION_SAFETY_SECONDS = 60;

constructor TForm1.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FCertContext := nil;
  ClearToken;

  ConfigureButtons;
end;

destructor TForm1.Destroy;
begin
  FreeCertificate;
  inherited Destroy;
end;

function TForm1.Wide(const S: string): WideString;
begin
  Result := WideString(S);
end;

procedure TForm1.ClearToken;
begin
  FAccessToken := '';
  FTokenType := '';
  FTokenExpiresAt := 0;
end;

procedure TForm1.FreeCertificate;
begin
  if FCertContext <> nil then
  begin
    CertFreeCertificateContext(FCertContext);
    FCertContext := nil;
  end;
end;

function TForm1.MaskText(const S: string; ALeft, ARight: Integer): string;
begin
  if S = '' then
  begin
    Result := '';
    Exit;
  end;

  if Length(S) <= ALeft + ARight then
  begin
    Result := StringOfChar('*', Length(S));
    Exit;
  end;

  Result := Copy(S, 1, ALeft) + '...' +
    Copy(S, Length(S) - ARight + 1, ARight);
end;

function TForm1.NormalizeSerial(const ASerial: string): string;
var
  I: Integer;
  C: Char;
begin
  Result := '';

  for I := 1 to Length(ASerial) do
  begin
    C := UpCase(ASerial[I]);

    if C in ['0'..'9', 'A'..'F'] then
      Result := Result + C;
  end;
end;

function TForm1.Base64Encode(const S: AnsiString): string;
const
  Table: PAnsiChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
var
  I: Integer;
  B1, B2, B3: Byte;
  HasB2: Boolean;
  HasB3: Boolean;
  L: Integer;
begin
  Result := '';
  I := 1;
  L := Length(S);

  while I <= L do
  begin
    B1 := Ord(S[I]);
    Inc(I);

    HasB2 := I <= L;
    if HasB2 then
    begin
      B2 := Ord(S[I]);
      Inc(I);
    end
    else
      B2 := 0;

    HasB3 := I <= L;
    if HasB3 then
    begin
      B3 := Ord(S[I]);
      Inc(I);
    end
    else
      B3 := 0;

    Result := Result + Char(Table[(B1 shr 2)]);
    Result := Result + Char(Table[((B1 and $03) shl 4) or (B2 shr 4)]);

    if HasB2 then
      Result := Result + Char(Table[((B2 and $0F) shl 2) or (B3 shr 6)])
    else
      Result := Result + '=';

    if HasB3 then
      Result := Result + Char(Table[(B3 and $3F)])
    else
      Result := Result + '=';
  end;
end;

function TForm1.CertSerialToString(ACert: PCCERT_CONTEXT): string;
var
  I: Integer;
  P: PByte;
begin
  Result := '';

  if (ACert = nil) or
     (ACert^.pCertInfo = nil) or
     (ACert^.pCertInfo^.SerialNumber.pbData = nil) then
    Exit;

  P := ACert^.pCertInfo^.SerialNumber.pbData;

  for I := ACert^.pCertInfo^.SerialNumber.cbData - 1 downto 0 do
    Result := Result + IntToHex(PByte(Cardinal(P) + Cardinal(I))^, 2);
end;

function TForm1.SelectCertificateManual: PCCERT_CONTEXT;
var
  Store: HCERTSTORE;
  Info: CRYPTUI_SELECTCERTIFICATE_STRUCT;
  Selected: PCCERT_CONTEXT;
begin
  Result := nil;
  Selected := nil;

  Store := CertOpenSystemStore(0, 'MY');
  if Store = nil then
    RaiseLastOSError;

  try
    FillChar(Info, SizeOf(Info), 0);

    Info.dwSize := SizeOf(Info);
    Info.hwndParent := Handle;
    Info.szTitle := 'Selecione o certificado digital';
    Info.szDisplayString := 'Escolha o certificado A1/A3 instalado no Windows';
    Info.cDisplayStores := 1;
    Info.rghDisplayStores := @Store;
    Info.cStores := 1;
    Info.rghStores := @Store;

    Selected := CryptUIDlgSelectCertificate(@Info);

    if Selected = nil then
      raise Exception.Create('Nenhum certificado foi selecionado.');

    Result := CertDuplicateCertificateContext(Selected);
    if Result = nil then
      RaiseLastOSError;
  finally
    if Selected <> nil then
      CertFreeCertificateContext(Selected);

    CertCloseStore(Store, 0);
  end;
end;

function TForm1.FindCertificateBySerial(const ASerial: string): PCCERT_CONTEXT;
var
  Store: HCERTSTORE;
  Cert: PCCERT_CONTEXT;
  SerialInformado: string;
  SerialAtual: string;
begin
  Result := nil;
  SerialInformado := NormalizeSerial(ASerial);

  if SerialInformado = '' then
    raise Exception.Create('Numero de serie do certificado nao informado.');

  Store := CertOpenSystemStore(0, 'MY');
  if Store = nil then
    RaiseLastOSError;

  try
    Cert := nil;

    repeat
      Cert := CertEnumCertificatesInStore(Store, Cert);

      if Cert <> nil then
      begin
        SerialAtual := NormalizeSerial(CertSerialToString(Cert));

        if SerialAtual = SerialInformado then
        begin
          Result := CertDuplicateCertificateContext(Cert);
          Exit;
        end;
      end;
    until Cert = nil;
  finally
    CertCloseStore(Store, 0);
  end;
end;

function TForm1.LoadCertificate: PCCERT_CONTEXT;
var
  Serial: string;
begin
  FreeCertificate;

  Serial := Trim(EditCertificadoNoSerie.Text);

  if Serial = '' then
  begin
    FCertContext := SelectCertificateManual;

    if FCertContext <> nil then
      EditCertificadoNoSerie.Text := CertSerialToString(FCertContext);
  end
  else
  begin
    FCertContext := FindCertificateBySerial(Serial);

    if FCertContext = nil then
      raise Exception.Create(
        'Certificado nao encontrado pelo numero de serie informado: ' + Serial
      );
  end;

  if FCertContext = nil then
    raise Exception.Create('Certificado digital nao carregado.');

  Result := FCertContext;
end;

procedure TForm1.SetTls12(ASession: HINTERNET);
var
  Protocols: DWORD;
begin
  Protocols := WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_2;

  if not WinHttpSetOption(
    ASession,
    WINHTTP_OPTION_SECURE_PROTOCOLS,
    @Protocols,
    SizeOf(Protocols)
  ) then
    RaiseLastOSError;
end;

procedure TForm1.SetClientCertificate(ARequest: HINTERNET; ACert: PCCERT_CONTEXT);
begin
  if ACert = nil then
    raise Exception.Create('Certificado digital nao carregado.');

  if not WinHttpSetOption(
    ARequest,
    WINHTTP_OPTION_CLIENT_CERT_CONTEXT,
    ACert,
    SizeOf(CERT_CONTEXT)
  ) then
    RaiseLastOSError;
end;

function TForm1.QueryStatusCode(ARequest: HINTERNET): Integer;
var
  StatusCode: DWORD;
  BufferLen: DWORD;
  Index: DWORD;
begin
  Result := 0;
  BufferLen := SizeOf(StatusCode);
  Index := 0;

  if not WinHttpQueryHeaders(
    ARequest,
    WINHTTP_QUERY_STATUS_CODE or WINHTTP_QUERY_FLAG_NUMBER,
    nil,
    @StatusCode,
    BufferLen,
    Index
  ) then
    RaiseLastOSError;

  Result := StatusCode;
end;

function TForm1.QueryRawHeaders(ARequest: HINTERNET): string;
var
  BufferLen: DWORD;
  Index: DWORD;
  Buffer: PWideChar;
begin
  Result := '';
  BufferLen := 0;
  Index := 0;

  WinHttpQueryHeaders(
    ARequest,
    WINHTTP_QUERY_RAW_HEADERS_CRLF,
    nil,
    nil,
    BufferLen,
    Index
  );

  if BufferLen = 0 then
    Exit;

  GetMem(Buffer, BufferLen);
  try
    FillChar(Buffer^, BufferLen, 0);
    Index := 0;

    if not WinHttpQueryHeaders(
      ARequest,
      WINHTTP_QUERY_RAW_HEADERS_CRLF,
      nil,
      Buffer,
      BufferLen,
      Index
    ) then
      RaiseLastOSError;

    Result := WideCharToString(Buffer);
  finally
    FreeMem(Buffer);
  end;
end;

function TForm1.ReadResponseBody(ARequest: HINTERNET): string;
var
  Buffer: array[0..8191] of AnsiChar;
  BytesRead: DWORD;
  Temp: AnsiString;
begin
  Result := '';

  repeat
    BytesRead := 0;
    FillChar(Buffer, SizeOf(Buffer), 0);

    if not WinHttpReadData(
      ARequest,
      @Buffer[0],
      SizeOf(Buffer),
      BytesRead
    ) then
      RaiseLastOSError;

    if BytesRead > 0 then
    begin
      SetString(Temp, Buffer, BytesRead);
      Result := Result + string(Temp);
    end;
  until BytesRead = 0;
end;

function TForm1.ExtractJsonStringValue(const AJson, AName: string): string;
var
  P: Integer;
  I: Integer;
  Key: string;
  S: string;
begin
  Result := '';
  S := AJson;
  Key := '"' + AName + '"';

  P := Pos(Key, S);
  if P <= 0 then
    Exit;

  P := P + Length(Key);

  while (P <= Length(S)) and (S[P] in [' ', #9, #10, #13]) do
    Inc(P);

  if (P > Length(S)) or (S[P] <> ':') then
    Exit;

  Inc(P);

  while (P <= Length(S)) and (S[P] in [' ', #9, #10, #13]) do
    Inc(P);

  if (P > Length(S)) or (S[P] <> '"') then
    Exit;

  Inc(P);
  I := P;

  while I <= Length(S) do
  begin
    if (S[I] = '"') and ((I = 1) or (S[I - 1] <> '\')) then
      Break;
    Inc(I);
  end;

  if I > Length(S) then
    Exit;

  Result := Copy(S, P, I - P);
  Result := StringReplace(Result, '\/', '/', [rfReplaceAll]);
  Result := StringReplace(Result, '\"', '"', [rfReplaceAll]);
end;

function TForm1.ExtractJsonIntegerValue(const AJson, AName: string): Integer;
var
  P: Integer;
  I: Integer;
  Key: string;
  Num: string;
  S: string;
begin
  Result := 0;
  S := AJson;
  Key := '"' + AName + '"';

  P := Pos(Key, S);
  if P <= 0 then
    Exit;

  P := P + Length(Key);

  while (P <= Length(S)) and (S[P] in [' ', #9, #10, #13]) do
    Inc(P);

  if (P > Length(S)) or (S[P] <> ':') then
    Exit;

  Inc(P);

  while (P <= Length(S)) and (S[P] in [' ', #9, #10, #13]) do
    Inc(P);

  I := P;
  while (I <= Length(S)) and (S[I] in ['0'..'9']) do
    Inc(I);

  Num := Copy(S, P, I - P);

  if Num <> '' then
    Result := StrToIntDef(Num, 0);
end;


function TForm1.UrlEncodeQueryParam(const S: string): string;
const
  Hex = '0123456789ABCDEF';
var
  I: Integer;
  B: Byte;
  C: Char;
begin
  Result := '';

  for I := 1 to Length(S) do
  begin
    C := S[I];
    if C in ['A'..'Z', 'a'..'z', '0'..'9', '-', '_', '.', '~'] then
      Result := Result + C
    else
    begin
      B := Ord(C);
      Result := Result + '%' + Hex[(B shr 4) + 1] + Hex[(B and $0F) + 1];
    end;
  end;
end;

procedure TForm1.ValidarCamposAutenticacao;
begin
  if Trim(EditConsumerKey.Text) = '' then
    raise Exception.Create('Informe o Consumer Key em EditConsumerKey.');

  if Trim(EditConsumerSecret.Text) = '' then
    raise Exception.Create('Informe o Consumer Secret em EditConsumerSecret.');
end;


procedure TForm1.ConfigureButtons;
var
  AParent: TWinControl;
begin
  if Assigned(BTNAutentica) then
    BTNAutentica.OnClick := BTNAutenticaClick;

  if Assigned(TSCertificado) then
    AParent := TSCertificado
  else
    AParent := Self;

  { Layout atual do formulario:
    - EditConsumerKey/EditConsumerSecret: credenciais da API privada SERPRO Integra Comex DUIMP.
    - EditClienteID/EditClienteSecret: credenciais/chave da DUIMP publica, mantidas no layout mas nao usadas na consulta privada.
    - EditToken: token de compartilhamento e-CAC.
    - EditNumeroDuimp/EditVersaoDuimp: identificacao da DUIMP.
    Nao criar LabelChaveAcessoDuimp/EditChaveAcessoDuimp dinamicamente. }

  if not Assigned(BTNConsultaDuimp) then
  begin
    BTNConsultaDuimp := TButton.Create(Self);
    BTNConsultaDuimp.Parent := AParent;
    BTNConsultaDuimp.Caption := 'Consultar DUIMP';
    BTNConsultaDuimp.Width := 130;
    BTNConsultaDuimp.Height := 25;

    if Assigned(BTNAutentica) then
    begin
      BTNConsultaDuimp.Left := BTNAutentica.Left + BTNAutentica.Width + 8;
      BTNConsultaDuimp.Top := BTNAutentica.Top;
    end
    else
    begin
      BTNConsultaDuimp.Left := 8;
      BTNConsultaDuimp.Top := 8;
    end;
  end;

  BTNConsultaDuimp.OnClick := BTNConsultaDuimpClick;
end;

procedure TForm1.ValidarCamposConsultaDuimp;
begin
  if Trim(EditNumeroDuimp.Text) = '' then
    raise Exception.Create('Informe o numero da DUIMP em EditNumeroDuimp.');

  if Trim(EditToken.Text) = '' then
    raise Exception.Create('Informe o token de compartilhamento e-CAC em EditToken.');
end;

function TForm1.TokenValido: Boolean;
begin
  Result := (Trim(FAccessToken) <> '') and
            (Trim(FTokenType) <> '') and
            (FTokenExpiresAt > Now);
end;

procedure TForm1.GarantirAutenticado;
begin
  if TokenValido then
    Exit;

  MemoRetorno.Lines.Add('Access token ausente ou expirado. Autenticando novamente...');
  AutenticarSerproIntegraComex;
  MemoRetorno.Lines.Add('');
end;

function TForm1.BuildDuimpConsultaPath(const ANumero, AVersao, AChaveAcesso: string; AMode: Integer; var AHost: string; var AUsaHeadersIntegra: Boolean; var ADescricao: string): string;
var
  NumPath: string;
  NumQuery: string;
begin
  Result := '';
  AHost := SERPRO_API_HOST;
  AUsaHeadersIntegra := True;
  ADescricao := '';

  NumPath := UrlEncodeQueryParam(Trim(ANumero));
  NumQuery := UrlEncodeQueryParam(Trim(ANumero));

  { Rotas revisadas para DUIMP PRIVADA / Integra Comex SERPRO.
    Prioridade real: contexto privado confirmado pelo Swagger/contrato:
      https://gateway.apiserpro.serpro.gov.br/duimp-integracomex-priv/api/...
    A chave publica da DUIMP em EditClienteID nao e enviada na URL da API privada.
    A seguranca privada usa mTLS + Bearer + Role-Type + x-compartilhamento-token.
    API publica fica apenas como diagnostico de atualizacao. }

  case AMode of
    0:
      begin
        ADescricao := 'INTEGRA COMEX DUIMP PRIVADA - dados gerais/capa por numero DUIMP';
        Result := '/duimp-integracomex-priv/api/duimp/' + NumPath;
      end;

    1:
      begin
        ADescricao := 'INTEGRA COMEX DUIMP PRIVADA - itens, mercadorias e tributos por numero DUIMP';
        Result := '/duimp-integracomex-priv/api/duimp/' + NumPath + '/itens';
      end;

    2:
      begin
        ADescricao := 'INTEGRA COMEX DUIMP PRIVADA - historico/eventos por numero DUIMP';
        Result := '/duimp-integracomex-priv/api/duimp/' + NumPath + '/historico';
      end;

    3:
      begin
        ADescricao := 'API PUBLICA SERPRO - somente diagnostico de atualizacao da DUIMP, nao substitui consulta completa';
        AHost := SERPRO_DUIMP_PUBLIC_HOST;
        AUsaHeadersIntegra := False;
        Result := '/duimp-integracomex-pub/api/duimp/atualizacao?duimp=' + NumQuery;
      end;
  end;
end;

function TForm1.HttpGetJsonHost(const AHost, APath: string; AUsaHeadersIntegra: Boolean; out AStatusCode: Integer; out ARawHeaders: string): string;
var
  Session: HINTERNET;
  Connect: HINTERNET;
  Request: HINTERNET;
  Cert: PCCERT_CONTEXT;
  Headers: WideString;
begin
  Result := '';
  AStatusCode := 0;
  ARawHeaders := '';

  Session := nil;
  Connect := nil;
  Request := nil;
  Cert := nil;

  if AUsaHeadersIntegra then
  begin
    if not TokenValido then
      raise Exception.Create('Access token ausente ou expirado. Execute BTNAutentica antes da consulta.');

    if FCertContext = nil then
      Cert := LoadCertificate
    else
      Cert := FCertContext;
  end;

  try
    Session := WinHttpOpen(
      PWideChar(Wide('Sheild-DUIMPPRIVADA-D7/1.0')),
      WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
      WINHTTP_NO_PROXY_NAME,
      WINHTTP_NO_PROXY_BYPASS,
      0
    );

    if Session = nil then
      RaiseLastOSError;

    SetTls12(Session);

    Connect := WinHttpConnect(
      Session,
      PWideChar(Wide(AHost)),
      443,
      0
    );

    if Connect = nil then
      RaiseLastOSError;

    Request := WinHttpOpenRequest(
      Connect,
      PWideChar(Wide('GET')),
      PWideChar(Wide(APath)),
      nil,
      nil,
      nil,
      WINHTTP_FLAG_SECURE
    );

    if Request = nil then
      RaiseLastOSError;

    Headers := 'Accept: application/json' + #13#10;

    if AUsaHeadersIntegra then
    begin
      SetClientCertificate(Request, Cert);

      Headers := Headers +
        'Authorization: ' + Wide(FTokenType + ' ' + FAccessToken) + #13#10 +
        'Role-Type: TERCEIROS' + #13#10 +
        'x-compartilhamento-token: ' + Wide(Trim(EditToken.Text)) + #13#10;
    end;

    if not WinHttpAddRequestHeaders(
      Request,
      PWideChar(Headers),
      Length(Headers),
      WINHTTP_ADDREQ_FLAG_ADD or WINHTTP_ADDREQ_FLAG_REPLACE
    ) then
      RaiseLastOSError;

    if not WinHttpSendRequest(
      Request,
      nil,
      0,
      nil,
      0,
      0,
      0
    ) then
      RaiseLastOSError;

    if not WinHttpReceiveResponse(Request, nil) then
      RaiseLastOSError;

    AStatusCode := QueryStatusCode(Request);
    ARawHeaders := QueryRawHeaders(Request);
    Result := ReadResponseBody(Request);
  finally
    if Request <> nil then WinHttpCloseHandle(Request);
    if Connect <> nil then WinHttpCloseHandle(Connect);
    if Session <> nil then WinHttpCloseHandle(Session);
  end;
end;

function TForm1.JsonDataTypeName(AObj: ISuperObject): string;
begin
  Result := '<nao atribuido>';

  if not Assigned(AObj) then
    Exit;

  case AObj.DataType of
    stNull: Result := 'null';
    stBoolean: Result := 'boolean';
    stDouble: Result := 'double';
    stInt: Result := 'integer';
    stObject: Result := 'object';
    stArray: Result := 'array';
    stString: Result := 'string';
  else
    Result := 'unknown';
  end;
end;

function TForm1.JsonScalarToText(AObj: ISuperObject): string;
begin
  Result := '';

  if not Assigned(AObj) then
  begin
    Result := '<nao atribuido>';
    Exit;
  end;

  case AObj.DataType of
    stNull:
      Result := '<null>';

    stBoolean:
      begin
        if AObj.AsBoolean then
          Result := 'true'
        else
          Result := 'false';
      end;

    stInt:
      Result := IntToStr(AObj.AsInteger);

    stDouble:
      Result := StringReplace(FloatToStr(AObj.AsDouble), ',', '.', [rfReplaceAll]);

    stString:
      Result := AObj.AsString;

  else
    Result := '<' + JsonDataTypeName(AObj) + '>';
  end;
end;

procedure TForm1.AddJsonFieldsToMemo(AObj: ISuperObject; const APath: string; ALines: TStrings; ADepth, AMaxDepth: Integer);
var
  Iter: TSuperObjectIter;
  Valor: ISuperObject;
  I: Integer;
  PathAtual: string;
begin
  if not Assigned(AObj) then
    Exit;

  if ADepth > AMaxDepth then
  begin
    if APath <> '' then
      ALines.Add(APath + ' = <profundidade maxima atingida>');
    Exit;
  end;

  case AObj.DataType of
    stObject:
      begin
        if APath <> '' then
          ALines.Add(APath + ' = <object>');

        if ObjectFindFirst(AObj, Iter) then
        begin
          try
            repeat
              Valor := Iter.val;

              if APath = '' then
                PathAtual := Iter.key
              else
                PathAtual := APath + '.' + Iter.key;

              AddJsonFieldsToMemo(Valor, PathAtual, ALines, ADepth + 1, AMaxDepth);
            until not ObjectFindNext(Iter);
          finally
            ObjectFindClose(Iter);
          end;
        end;
      end;

    stArray:
      begin
        if APath <> '' then
          ALines.Add(APath + ' = <array; quantidade=' + IntToStr(AObj.AsArray.Length) + '>');

        for I := 0 to AObj.AsArray.Length - 1 do
        begin
          if APath = '' then
            PathAtual := '[' + IntToStr(I) + ']'
          else
            PathAtual := APath + '[' + IntToStr(I) + ']';

          AddJsonFieldsToMemo(AObj.AsArray.O[I], PathAtual, ALines, ADepth + 1, AMaxDepth);
        end;
      end;

  else
    if APath <> '' then
      ALines.Add(APath + ' = ' + JsonScalarToText(AObj));
  end;
end;

procedure TForm1.AddJsonCapaIndexToMemo(AObj: ISuperObject; const APath: string; ALines: TStrings; ADepth, AMaxDepth: Integer);
var
  Iter: TSuperObjectIter;
  Valor: ISuperObject;
  I: Integer;
  PathAtual: string;
begin
  if not Assigned(AObj) then
    Exit;

  if ADepth > AMaxDepth then
    Exit;

  case AObj.DataType of
    stObject:
      begin
        if ObjectFindFirst(AObj, Iter) then
        begin
          try
            repeat
              Valor := Iter.val;

              if APath = '' then
                PathAtual := Iter.key
              else
                PathAtual := APath + '.' + Iter.key;

              if Pos('CAPA', UpperCase(Iter.key)) > 0 then
                ALines.Add('  ' + PathAtual + ' = <' + JsonDataTypeName(Valor) + '>');

              if Assigned(Valor) and (Valor.DataType in [stObject, stArray]) then
                AddJsonCapaIndexToMemo(Valor, PathAtual, ALines, ADepth + 1, AMaxDepth);
            until not ObjectFindNext(Iter);
          finally
            ObjectFindClose(Iter);
          end;
        end;
      end;

    stArray:
      begin
        for I := 0 to AObj.AsArray.Length - 1 do
        begin
          if APath = '' then
            PathAtual := '[' + IntToStr(I) + ']'
          else
            PathAtual := APath + '[' + IntToStr(I) + ']';

          AddJsonCapaIndexToMemo(AObj.AsArray.O[I], PathAtual, ALines, ADepth + 1, AMaxDepth);
        end;
      end;
  end;
end;

procedure TForm1.ConsultarDuimpSerpro;
var
  Numero: string;
  Versao: string;
  ChavePublica: string;
  HostConsulta: string;
  PathConsulta: string;
  DescricaoEndpoint: string;
  ResponseBody: string;
  RawHeaders: string;
  StatusCode: Integer;
  Tentativa: Integer;
  ModoEndpoint: Integer;
  Root: ISuperObject;
  UltimoErro: string;
  UsaHeadersIntegra: Boolean;
  TemSucessoPrivado: Boolean;
  TemSucessoPublico: Boolean;
  DeveParar: Boolean;
begin
  ValidarCamposConsultaDuimp;
  GarantirAutenticado;

  Numero := Trim(EditNumeroDuimp.Text);
  Versao := Trim(EditVersaoDuimp.Text);
  ChavePublica := '';
  if Assigned(EditClienteID) then
    ChavePublica := Trim(EditClienteID.Text);

  UltimoErro := '';
  TemSucessoPrivado := False;
  TemSucessoPublico := False;

  MemoRetorno.Lines.Add('CONSULTA DUIMP - ORDEM DE PRIORIDADE');
  MemoRetorno.Lines.Add('------------------------------------------------------------');
  MemoRetorno.Lines.Add('1) API SERPRO Integra Comex DUIMP privada/paga pelo contexto oficial:');
  MemoRetorno.Lines.Add('   https://gateway.apiserpro.serpro.gov.br/duimp-integracomex-priv/api/...');
  MemoRetorno.Lines.Add('2) Consulta somente leitura por numero da DUIMP: /duimp/{numero}, /duimp/{numero}/itens e /duimp/{numero}/historico.');
  MemoRetorno.Lines.Add('3) API publica somente como diagnostico de atualizacao, nunca como fonte principal para XML NF-e.');
  MemoRetorno.Lines.Add('Nenhum endpoint de gravacao, retificacao, calculo, POST, PUT, PATCH ou DELETE sera usado nesta consulta.');
  MemoRetorno.Lines.Add('');
  MemoRetorno.Lines.Add('Numero DUIMP: ' + Numero);
  if Versao <> '' then
    MemoRetorno.Lines.Add('Versao DUIMP informada no formulario: ' + Versao + ' (nao usada nas rotas privadas atuais por numero).')
  else
    MemoRetorno.Lines.Add('Versao DUIMP informada no formulario: <vazia> (ok para as rotas privadas atuais por numero).');
  if ChavePublica <> '' then
    MemoRetorno.Lines.Add('EditClienteID/chave publica DUIMP informada: ' + MaskText(ChavePublica, 6, 4) + ' (mantida para diagnostico publico; nao enviada na URL privada).')
  else
    MemoRetorno.Lines.Add('EditClienteID/chave publica DUIMP: <vazia>.');
  MemoRetorno.Lines.Add('');

  for ModoEndpoint := 0 to 3 do
  begin
    { A API publica so sera chamada se nenhuma consulta privada retornar HTTP 200. }
    if (ModoEndpoint = 3) and TemSucessoPrivado then
      Break;

    PathConsulta := BuildDuimpConsultaPath(Numero, Versao, ChavePublica, ModoEndpoint, HostConsulta, UsaHeadersIntegra, DescricaoEndpoint);

    if PathConsulta = '' then
      Continue;

    DeveParar := False;
    StatusCode := 0;
    ResponseBody := '';
    RawHeaders := '';

    for Tentativa := 1 to 3 do
    begin
      MemoRetorno.Lines.Add('Consulta DUIMP - endpoint tentativa: GET https://' + HostConsulta + PathConsulta);
      MemoRetorno.Lines.Add('Origem/prioridade: ' + DescricaoEndpoint);
      MemoRetorno.Lines.Add('Tentativa HTTP ' + IntToStr(Tentativa) + ' de 3');

      ResponseBody := HttpGetJsonHost(HostConsulta, PathConsulta, UsaHeadersIntegra, StatusCode, RawHeaders);
      UltimoErro := 'GET https://' + HostConsulta + PathConsulta + sLineBreak +
        'Origem/prioridade: ' + DescricaoEndpoint + sLineBreak +
        'HTTP status: ' + IntToStr(StatusCode) + sLineBreak +
        'Resposta: ' + ResponseBody;

      if StatusCode = 200 then
      begin
        if UsaHeadersIntegra then
          TemSucessoPrivado := True
        else
          TemSucessoPublico := True;
        Break;
      end;

      if UsaHeadersIntegra and (StatusCode = 401) then
      begin
        MemoRetorno.Lines.Add('HTTP 401 recebido. Renovando access token e tentando novamente...');
        ClearToken;
        AutenticarSerproIntegraComex;
        Continue;
      end;

      if StatusCode = 403 then
      begin
        MemoRetorno.Lines.Add('HTTP 403 recebido. Acesso negado.');
        MemoRetorno.Lines.Add('Verifique se EditConsumerKey/EditConsumerSecret pertencem ao contrato INTEGRA COMEX - Servicos para Terceiros - DUIMP - V1.');
        MemoRetorno.Lines.Add('Verifique Role-Type TERCEIROS, x-compartilhamento-token, permissao e-CAC e certificado mTLS.');
        MemoRetorno.Lines.Add(ResponseBody);
        Exit;
      end;

      if StatusCode = 422 then
      begin
        MemoRetorno.Lines.Add('HTTP 422 recebido. Endpoint existente, mas a regra de negocio ou parametro foi recusado.');
        MemoRetorno.Lines.Add('A rotina parou para evitar sequencia de chamadas potencialmente bilhetadas.');
        MemoRetorno.Lines.Add(ResponseBody);
        Exit;
      end;

      if (StatusCode = 400) or (StatusCode = 404) or (StatusCode = 405) then
      begin
        MemoRetorno.Lines.Add('Endpoint nao aceito neste formato ou recurso nao encontrado. Seguindo para o proximo endpoint oficial somente leitura.');
        DeveParar := True;
        Break;
      end;

      if Tentativa < 3 then
      begin
        MemoRetorno.Lines.Add('Falha temporaria HTTP ' + IntToStr(StatusCode) + '. Aguardando 2 segundos...');
        Sleep(2000);
      end;
    end;

    if StatusCode = 200 then
    begin
      MemoRetorno.Lines.Add('');
      if UsaHeadersIntegra then
        MemoRetorno.Lines.Add('CONSULTA PRIVADA INTEGRA COMEX REALIZADA COM SUCESSO')
      else
        MemoRetorno.Lines.Add('DIAGNOSTICO PUBLICO REALIZADO COM SUCESSO');
      MemoRetorno.Lines.Add('------------------------------------------------------------');
      MemoRetorno.Lines.Add('endpoint utilizado: GET https://' + HostConsulta + PathConsulta);
      MemoRetorno.Lines.Add('origem/prioridade: ' + DescricaoEndpoint);
      MemoRetorno.Lines.Add('HTTP status: ' + IntToStr(StatusCode));
      if UsaHeadersIntegra then
      begin
        MemoRetorno.Lines.Add('Role-Type: TERCEIROS');
        MemoRetorno.Lines.Add('x-compartilhamento-token: ' + MaskText(Trim(EditToken.Text), 6, 4));
      end
      else
        MemoRetorno.Lines.Add('Observacao: retorno publico usado apenas para diagnostico; nao substitui dados privados para XML NF-e.');
      MemoRetorno.Lines.Add('');

      Root := SO(ResponseBody);

      if not Assigned(Root) then
      begin
        MemoRetorno.Lines.Add('JSON retornado nao pode ser parseado pelo SuperObject. Segue retorno bruto:');
        MemoRetorno.Lines.Add(ResponseBody);
        MemoRetorno.Lines.Add('');
      end
      else
      begin
        MemoRetorno.Lines.Add('CAPAS / BLOCOS COM NOME CONTENDO "CAPA"');
        MemoRetorno.Lines.Add('------------------------------------------------------------');
        AddJsonCapaIndexToMemo(Root, '', MemoRetorno.Lines, 0, 80);
        MemoRetorno.Lines.Add('');

        MemoRetorno.Lines.Add('TODOS OS CAMPOS RETORNADOS PELO ENDPOINT');
        MemoRetorno.Lines.Add('------------------------------------------------------------');
        AddJsonFieldsToMemo(Root, '', MemoRetorno.Lines, 0, 80);
        MemoRetorno.Lines.Add('');
      end;
    end;

    if DeveParar then
      Continue;
  end;

  if not TemSucessoPrivado then
  begin
    MemoRetorno.Lines.Add('');
    MemoRetorno.Lines.Add('ATENCAO - CONSULTA PRIVADA COMPLETA NAO RETORNOU HTTP 200');
    MemoRetorno.Lines.Add('------------------------------------------------------------');
    if TemSucessoPublico then
      MemoRetorno.Lines.Add('Apenas o diagnostico publico respondeu. Ele confirma atualizacao/existencia, mas nao entrega payload completo para NF-e.')
    else
      MemoRetorno.Lines.Add('Nenhum endpoint privado nem diagnostico publico retornou sucesso.');
    MemoRetorno.Lines.Add('Ultimo erro registrado:');
    MemoRetorno.Lines.Add(UltimoErro);
  end;
end;

procedure TForm1.AutenticarSerproIntegraComex;
var
  Session: HINTERNET;
  Connect: HINTERNET;
  Request: HINTERNET;
  Cert: PCCERT_CONTEXT;
  Headers: WideString;
  RawHeaders: string;
  Body: AnsiString;
  ResponseBody: string;
  StatusCode: Integer;
  BasicToken: string;
  ExpiresIn: Integer;
begin
  ClearToken;
  ValidarCamposAutenticacao;

  Session := nil;
  Connect := nil;
  Request := nil;

  Cert := LoadCertificate;

  try
    Session := WinHttpOpen(
      PWideChar(Wide('Sheild-DUIMPPRIVADA-D7/1.0')),
      WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
      WINHTTP_NO_PROXY_NAME,
      WINHTTP_NO_PROXY_BYPASS,
      0
    );

    if Session = nil then
      RaiseLastOSError;

    SetTls12(Session);


    Connect := WinHttpConnect(
      Session,
      PWideChar(Wide(SERPRO_TOKEN_HOST)),
      443,
      0
    );

    if Connect = nil then
      RaiseLastOSError;

    Request := WinHttpOpenRequest(
      Connect,
      PWideChar(Wide('POST')),
      PWideChar(Wide(SERPRO_TOKEN_PATH)),
      nil,
      nil,
      nil,
      WINHTTP_FLAG_SECURE
    );

    if Request = nil then
      RaiseLastOSError;

    SetClientCertificate(Request, Cert);

    BasicToken := Base64Encode(AnsiString(Trim(EditConsumerKey.Text) + ':' + Trim(EditConsumerSecret.Text)));

    Headers :=
      'Authorization: Basic ' + Wide(BasicToken) + #13#10 +
      'Accept: application/json' + #13#10 +
      'Content-Type: application/x-www-form-urlencoded' + #13#10;

    if not WinHttpAddRequestHeaders(
      Request,
      PWideChar(Headers),
      Length(Headers),
      WINHTTP_ADDREQ_FLAG_ADD or WINHTTP_ADDREQ_FLAG_REPLACE
    ) then
      RaiseLastOSError;

    Body := AnsiString('grant_type=client_credentials');

    if not WinHttpSendRequest(
      Request,
      nil,
      0,
      PAnsiChar(Body),
      Length(Body),
      Length(Body),
      0
    ) then
      RaiseLastOSError;

    if not WinHttpReceiveResponse(Request, nil) then
      RaiseLastOSError;

    StatusCode := QueryStatusCode(Request);
    RawHeaders := QueryRawHeaders(Request);
    ResponseBody := ReadResponseBody(Request);

    if StatusCode <> 200 then
      raise Exception.Create(
        'Erro ao autenticar na API SERPRO Integra Comex.' + sLineBreak +
        'HTTP status: ' + IntToStr(StatusCode) + sLineBreak +
        'Resposta: ' + ResponseBody + sLineBreak +
        'Headers: ' + RawHeaders
      );

    FAccessToken := ExtractJsonStringValue(ResponseBody, 'access_token');
    FTokenType := ExtractJsonStringValue(ResponseBody, 'token_type');
    ExpiresIn := ExtractJsonIntegerValue(ResponseBody, 'expires_in');

    if FAccessToken = '' then
      raise Exception.Create(
        'Autenticacao HTTP 200, mas access_token nao foi encontrado na resposta.' +
        sLineBreak + 'Resposta: ' + ResponseBody
      );

    if FTokenType = '' then
      FTokenType := 'Bearer';

    if ExpiresIn <= TOKEN_EXPIRATION_SAFETY_SECONDS then
      ExpiresIn := 3600;

    FTokenExpiresAt := Now + ((ExpiresIn - TOKEN_EXPIRATION_SAFETY_SECONDS) / 86400);

    MemoRetorno.Lines.Add('Autenticacao SERPRO Integra Comex realizada com sucesso.');
    MemoRetorno.Lines.Add('Endpoint: POST https://' + SERPRO_TOKEN_HOST + SERPRO_TOKEN_PATH);
    MemoRetorno.Lines.Add('HTTP status: ' + IntToStr(StatusCode));
    MemoRetorno.Lines.Add('token_type: ' + FTokenType);
    MemoRetorno.Lines.Add('expires_in: ' + IntToStr(ExpiresIn));
    MemoRetorno.Lines.Add('expira em memoria: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', FTokenExpiresAt));
    MemoRetorno.Lines.Add('access_token: ' + MaskText(FAccessToken, 18, 12));
    MemoRetorno.Lines.Add('certificado serie: ' + CertSerialToString(Cert));
    MemoRetorno.Lines.Add('');
    MemoRetorno.Lines.Add('Headers para as proximas consultas DUIMP:');
    MemoRetorno.Lines.Add('Authorization: ' + FTokenType + ' ' + MaskText(FAccessToken, 18, 12));
    MemoRetorno.Lines.Add('Role-Type: TERCEIROS');
    MemoRetorno.Lines.Add('x-compartilhamento-token: ' + MaskText(Trim(EditToken.Text), 6, 4));
  finally
    if Request <> nil then WinHttpCloseHandle(Request);
    if Connect <> nil then WinHttpCloseHandle(Connect);
    if Session <> nil then WinHttpCloseHandle(Session);
  end;
end;

procedure TForm1.BTNAutenticaClick(Sender: TObject);
var
  Tentativa: Integer;
  UltimoErro: string;
begin
  MemoRetorno.Clear;
  MemoRetorno.Lines.Add('DUIMP PRIVADA - AUTENTICACAO SERPRO INTEGRA COMEX');
  MemoRetorno.Lines.Add('--------------------------------------------------');
  MemoRetorno.Lines.Add('Endpoint: POST https://' + SERPRO_TOKEN_HOST + SERPRO_TOKEN_PATH);
  MemoRetorno.Lines.Add('Body: grant_type=client_credentials');
  if Trim(EditCertificadoNoSerie.Text) = '' then
    MemoRetorno.Lines.Add('Certificado: selecionar manualmente')
  else
    MemoRetorno.Lines.Add('Certificado: usar numero de serie informado');
  MemoRetorno.Lines.Add('');

  BTNAutentica.Enabled := False;
  try
    try
      UltimoErro := '';

      for Tentativa := 1 to 3 do
      begin
        try
          MemoRetorno.Lines.Add('Tentativa ' + IntToStr(Tentativa) + ' de 3...');
          AutenticarSerproIntegraComex;
          Exit;
        except
          on E: Exception do
          begin
            UltimoErro := E.Message;
            MemoRetorno.Lines.Add('Falha na tentativa ' + IntToStr(Tentativa) + ': ' + E.Message);

            if (Pos('HTTP status: 400', E.Message) > 0) or
               (Pos('HTTP status: 401', E.Message) > 0) or
               (Pos('HTTP status: 403', E.Message) > 0) then
              Break;

            if Tentativa < 3 then
            begin
              MemoRetorno.Lines.Add('Aguardando 2 segundos para nova tentativa...');
              Sleep(2000);
            end;
          end;
        end;
      end;

      raise Exception.Create('Nao foi possivel autenticar na API SERPRO.' +
        sLineBreak + 'Ultimo erro: ' + UltimoErro);
    except
      on E: Exception do
      begin
        ClearToken;
        MemoRetorno.Lines.Add('');
        MemoRetorno.Lines.Add('ERRO FINAL');
        MemoRetorno.Lines.Add(E.Message);
        Application.MessageBox(PChar(E.Message), 'Erro na autenticacao SERPRO', MB_OK or MB_ICONERROR);
      end;
    end;
  finally
    BTNAutentica.Enabled := True;
  end;
end;


procedure TForm1.BTNConsultaDuimpClick(Sender: TObject);
begin
  MemoRetorno.Clear;
  MemoRetorno.Lines.Add('DUIMP PRIVADA - CONSULTA GERAL SERPRO INTEGRA COMEX');
  MemoRetorno.Lines.Add('------------------------------------------------------------');
  MemoRetorno.Lines.Add('Consulta somente leitura via GET. Nenhum endpoint de gravacao/alteracao/calculo sera consumido.');
  MemoRetorno.Lines.Add('Prioridade: API privada SERPRO Integra Comex DUIMP: /duimp-integracomex-priv/api/duimp/{numero}.');
  MemoRetorno.Lines.Add('Numero DUIMP: ' + Trim(EditNumeroDuimp.Text));
  MemoRetorno.Lines.Add('Versao DUIMP: ' + Trim(EditVersaoDuimp.Text));
  MemoRetorno.Lines.Add('');

  BTNConsultaDuimp.Enabled := False;
  try
    try
      ConsultarDuimpSerpro;
    except
      on E: Exception do
      begin
        MemoRetorno.Lines.Add('');
        MemoRetorno.Lines.Add('ERRO NA CONSULTA DUIMP');
        MemoRetorno.Lines.Add(E.Message);
        Application.MessageBox(PChar(E.Message), 'Erro na consulta DUIMP', MB_OK or MB_ICONERROR);
      end;
    end;
  finally
    BTNConsultaDuimp.Enabled := True;
  end;
end;

end.
