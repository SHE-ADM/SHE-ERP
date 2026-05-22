unit uPrincipalDuimpPrivada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxPageControl,
  WinHttpApi, WinCrypt, CryptUID7, superobject;

const
  SERPRO_GATEWAY_HOST = 'gateway.apiserpro.serpro.gov.br';
  SERPRO_AUTH_PATH = '/token'; 
  
  // O contexto oficial da aplicacao privada mapeada no Gateway
  CONTEXTO_BASE_PRODUCAO = '/duimp-integracomex-priv/api';
  
  TOKEN_EXPIRATION_SAFETY_SECONDS = 60;

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
    
    function BuildDuimpGetPath(const ANumero: string; AMode: Integer; var AHost: string; var ADescricao: string): string;
    function HttpGetJsonHost(const AHost, APath: string; AUsaHeadersIntegra: Boolean; out AStatusCode: Integer; out ARawHeaders: string): string;
    
    function JsonDataTypeName(AObj: ISuperObject): string;
    function JsonScalarToText(AObj: ISuperObject): string;
    procedure AddJsonFieldsToMemo(AObj: ISuperObject; const APath: string; ALines: TStrings; ADepth, AMaxDepth: Integer);
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

function TForm1.NormalizeSerial(const ASerial: string): string;
var I: Integer; C: Char;
begin
  Result := '';
  for I := 1 to Length(ASerial) do
  begin
    C := UpCase(ASerial[I]);
    if C in ['0'..'9', 'A'..'F'] then Result := Result + C;
  end;
end;

function TForm1.Base64Encode(const S: AnsiString): string;
const Table: PAnsiChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
var I, L: Integer; B1, B2, B3: Byte; HasB2, HasB3: Boolean;
begin
  Result := ''; I := 1; L := Length(S);
  while I <= L do
  begin
    B1 := Ord(S[I]); Inc(I);
    HasB2 := I <= L; if HasB2 then begin B2 := Ord(S[I]); Inc(I); end else B2 := 0;
    HasB3 := I <= L; if HasB3 then begin B3 := Ord(S[I]); Inc(I); end else B3 := 0;
    Result := Result + Char(Table[(B1 shr 2)]);
    Result := Result + Char(Table[((B1 and $03) shl 4) or (B2 shr 4)]);
    if HasB2 then Result := Result + Char(Table[((B2 and $0F) shl 2) or (B3 shr 6)]) else Result := Result + '=';
    if HasB3 then Result := Result + Char(Table[(B3 and $3F)]) else Result := Result + '=';
  end;
end;

function TForm1.CertSerialToString(ACert: PCCERT_CONTEXT): string;
var I: Integer; P: PByte;
begin
  Result := '';
  if (ACert = nil) or (ACert^.pCertInfo = nil) or (ACert^.pCertInfo^.SerialNumber.pbData = nil) then Exit;
  P := ACert^.pCertInfo^.SerialNumber.pbData;
  for I := ACert^.pCertInfo^.SerialNumber.cbData - 1 downto 0 do
    Result := Result + IntToHex(PByte(Cardinal(P) + Cardinal(I))^, 2);
end;

function TForm1.SelectCertificateManual: PCCERT_CONTEXT;
var Store: HCERTSTORE; Info: CRYPTUI_SELECTCERTIFICATE_STRUCT; Selected: PCCERT_CONTEXT;
begin
  Result := nil; Store := CertOpenSystemStore(0, 'MY');
  if Store = nil then RaiseLastOSError;
  try
    FillChar(Info, SizeOf(Info), 0); Info.dwSize := SizeOf(Info); Info.hwndParent := Handle;
    Info.szTitle := 'Selecione o certificado digital'; Info.cDisplayStores := 1; Info.rghDisplayStores := @Store;
    Info.cStores := 1; Info.rghStores := @Store;
    Selected := CryptUIDlgSelectCertificate(@Info);
    if Selected = nil then raise Exception.Create('Nenhum certificado selecionado.');
    Result := CertDuplicateCertificateContext(Selected);
    if Selected <> nil then CertFreeCertificateContext(Selected);
  finally CertCloseStore(Store, 0); end;
end;

function TForm1.FindCertificateBySerial(const ASerial: string): PCCERT_CONTEXT;
var Store: HCERTSTORE; Cert: PCCERT_CONTEXT; SerialInformado, SerialAtual: string;
begin
  Result := nil; SerialInformado := NormalizeSerial(ASerial);
  Store := CertOpenSystemStore(0, 'MY');
  if Store = nil then RaiseLastOSError;
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
  finally CertCloseStore(Store, 0); end;
end;

function TForm1.LoadCertificate: PCCERT_CONTEXT;
var Serial: string;
begin
  FreeCertificate; 
  Serial := Trim(EditCertificadoNoSerie.Text);
  
  if Serial = '' then 
  begin
    FCertContext := SelectCertificateManual;
    // ESTA É A LINHA MÁGICA QUE EU TINHA APAGADO:
    if FCertContext <> nil then 
      EditCertificadoNoSerie.Text := CertSerialToString(FCertContext);
  end 
  else 
    FCertContext := FindCertificateBySerial(Serial);
    
  if FCertContext = nil then raise Exception.Create('Certificado digital nao carregado.');
  Result := FCertContext;
end;

procedure TForm1.SetTls12(ASession: HINTERNET);
var Protocols: DWORD;
begin
  Protocols := WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_2;
  WinHttpSetOption(ASession, WINHTTP_OPTION_SECURE_PROTOCOLS, @Protocols, SizeOf(Protocols));
end;

procedure TForm1.SetClientCertificate(ARequest: HINTERNET; ACert: PCCERT_CONTEXT);
begin
  WinHttpSetOption(ARequest, WINHTTP_OPTION_CLIENT_CERT_CONTEXT, ACert, SizeOf(CERT_CONTEXT));
end;

function TForm1.QueryStatusCode(ARequest: HINTERNET): Integer;
var StatusCode, BufferLen, Index: DWORD;
begin
  StatusCode := 0; BufferLen := SizeOf(StatusCode); Index := 0;
  WinHttpQueryHeaders(ARequest, WINHTTP_QUERY_STATUS_CODE or WINHTTP_QUERY_FLAG_NUMBER, nil, @StatusCode, BufferLen, Index);
  Result := StatusCode;
end;

function TForm1.QueryRawHeaders(ARequest: HINTERNET): string;
var BufferLen, Index: DWORD; Buffer: PWideChar;
begin
  Result := ''; BufferLen := 0; Index := 0;
  WinHttpQueryHeaders(ARequest, WINHTTP_QUERY_RAW_HEADERS_CRLF, nil, nil, BufferLen, Index);
  if BufferLen = 0 then Exit;
  GetMem(Buffer, BufferLen);
  try
    Index := 0; WinHttpQueryHeaders(ARequest, WINHTTP_QUERY_RAW_HEADERS_CRLF, nil, Buffer, BufferLen, Index);
    Result := WideCharToString(Buffer);
  finally FreeMem(Buffer); end;
end;

function TForm1.ReadResponseBody(ARequest: HINTERNET): string;
var Buffer: array[0..8191] of AnsiChar; BytesRead: DWORD; Temp: AnsiString;
begin
  Result := '';
  repeat
    BytesRead := 0; WinHttpReadData(ARequest, @Buffer[0], SizeOf(Buffer), BytesRead);
    if BytesRead > 0 then begin SetString(Temp, Buffer, BytesRead); Result := Result + string(Temp); end;
  until BytesRead = 0;
end;

function TForm1.ExtractJsonStringValue(const AJson, AName: string): string;
var P, I: Integer; Key, S: string;
begin
  Result := ''; S := AJson; Key := '"' + AName + '"';
  P := Pos(Key, S); if P <= 0 then Exit; P := P + Length(Key);
  while (P <= Length(S)) and (S[P] in [' ', #9, #10, #13, ':']) do Inc(P);
  if (P > Length(S)) or (S[P] <> '"') then Exit; Inc(P); I := P;
  while I <= Length(S) do begin if (S[I] = '"') and ((I = 1) or (S[I - 1] <> '\')) then Break; Inc(I); end;
  if I > Length(S) then Exit; Result := Copy(S, P, I - P);
  Result := StringReplace(StringReplace(Result, '\/', '/', [rfReplaceAll]), '\"', '"', [rfReplaceAll]);
end;

function TForm1.ExtractJsonIntegerValue(const AJson, AName: string): Integer;
var P, I: Integer; Key, Num, S: string;
begin
  Result := 0; S := AJson; Key := '"' + AName + '"';
  P := Pos(Key, S); if P <= 0 then Exit; P := P + Length(Key);
  while (P <= Length(S)) and (S[P] in [' ', #9, #10, #13, ':']) do Inc(P);
  I := P; while (I <= Length(S)) and (S[I] in ['0'..'9']) do Inc(I);
  Num := Copy(S, P, I - P); if Num <> '' then Result := StrToIntDef(Num, 0);
end;

function TForm1.UrlEncodeQueryParam(const S: string): string;
const Hex = '0123456789ABCDEF';
var I: Integer; B: Byte; C: Char;
begin
  Result := '';
  for I := 1 to Length(S) do
  begin
    C := S[I];
    if C in ['A'..'Z', 'a'..'z', '0'..'9', '-', '_', '.', '~'] then Result := Result + C
    else begin B := Ord(C); Result := Result + '%' + Hex[(B shr 4) + 1] + Hex[(B and $0F) + 1]; end;
  end;
end;

procedure TForm1.ValidarCamposAutenticacao;
begin
  if Trim(EditConsumerKey.Text) = '' then raise Exception.Create('Informe o Consumer Key.');
  if Trim(EditConsumerSecret.Text) = '' then raise Exception.Create('Informe o Consumer Secret.');
end;

procedure TForm1.ValidarCamposConsultaDuimp;
begin
  if Trim(EditNumeroDuimp.Text) = '' then raise Exception.Create('Informe o numero da DUIMP.');
  if Trim(EditToken.Text) = '' then raise Exception.Create('Informe o Token do e-CAC em EditToken.');
end;

procedure TForm1.ConfigureButtons;
begin
  if Assigned(BTNAutentica) then BTNAutentica.OnClick := BTNAutenticaClick;
  if not Assigned(BTNConsultaDuimp) then
  begin
    BTNConsultaDuimp := TButton.Create(Self);
    BTNConsultaDuimp.Parent := Self; BTNConsultaDuimp.Caption := 'Consultar DUIMP';
    BTNConsultaDuimp.Width := 130; BTNConsultaDuimp.Height := 25;
    if Assigned(BTNAutentica) then begin BTNConsultaDuimp.Left := BTNAutentica.Left + BTNAutentica.Width + 8; BTNConsultaDuimp.Top := BTNAutentica.Top; end;
  end;
  BTNConsultaDuimp.OnClick := BTNConsultaDuimpClick;
end;

function TForm1.TokenValido: Boolean;
begin
  Result := (Trim(FAccessToken) <> '') and (FTokenExpiresAt > Now);
end;

procedure TForm1.GarantirAutenticado;
begin
  if not TokenValido then AutenticarSerproIntegraComex;
end;

function TForm1.BuildDuimpGetPath(const ANumero: string; AMode: Integer; var AHost: string; var ADescricao: string): string;
var
  NumEncoded: string;
begin
  AHost := SERPRO_GATEWAY_HOST;
  NumEncoded := UrlEncodeQueryParam(Trim(ANumero));
  
  case AMode of
    0: 
      begin 
        ADescricao := 'GET /duimp/{numero} (Capa)'; 
        Result := CONTEXTO_BASE_PRODUCAO + '/duimp/' + NumEncoded; 
      end;
    1: 
      begin 
        ADescricao := 'GET /duimp/{numero}/itens'; 
        Result := CONTEXTO_BASE_PRODUCAO + '/duimp/' + NumEncoded + '/itens'; 
      end;
    2: 
      begin 
        ADescricao := 'GET /duimp/{numero}/tributos'; 
        Result := CONTEXTO_BASE_PRODUCAO + '/duimp/' + NumEncoded + '/tributos'; 
      end;
  else 
    Result := ''; 
  end;
end;

function TForm1.HttpGetJsonHost(const AHost, APath: string; AUsaHeadersIntegra: Boolean; out AStatusCode: Integer; out ARawHeaders: string): string;
var
  Session, Connect, Request: HINTERNET; Cert: PCCERT_CONTEXT;
  Headers: WideString;
begin
  Result := ''; Session := nil; Connect := nil; Request := nil; Cert := nil;
  if AUsaHeadersIntegra then begin GarantirAutenticado; Cert := LoadCertificate; end;
  try
    Session := WinHttpOpen(PWideChar(Wide('Sheild-D7/6.0')), WINHTTP_ACCESS_TYPE_DEFAULT_PROXY, nil, nil, 0);
    SetTls12(Session);
    Connect := WinHttpConnect(Session, PWideChar(Wide(AHost)), 443, 0);
    
    // Voltamos para o método GET
    Request := WinHttpOpenRequest(Connect, PWideChar(Wide('GET')), PWideChar(Wide(APath)), nil, nil, nil, WINHTTP_FLAG_SECURE);
    
    if AUsaHeadersIntegra then
    begin
      SetClientCertificate(Request, Cert);
      // Cabecalhos REST padrao. Sem cookies!
      Headers := 'Accept: application/json' + #13#10 + 
                 'Authorization: ' + Wide(FTokenType + ' ' + FAccessToken) + #13#10 +
                 'Role-Type: TERCEIROS' + #13#10 +
                 'x-token-compartilhamento: ' + Wide(Trim(EditToken.Text)) + #13#10;
    end 
    else 
      Headers := 'Accept: application/json' + #13#10;
      
    WinHttpAddRequestHeaders(Request, PWideChar(Headers), Length(Headers), WINHTTP_ADDREQ_FLAG_ADD or WINHTTP_ADDREQ_FLAG_REPLACE);
    
    WinHttpSendRequest(Request, nil, 0, nil, 0, 0, 0);
    WinHttpReceiveResponse(Request, nil);
    
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
  Result := 'null'; if not Assigned(AObj) then Exit;
  case AObj.DataType of
    stBoolean: Result := 'boolean'; stDouble: Result := 'double'; stInt: Result := 'integer';
    stObject: Result := 'object'; stArray: Result := 'array'; stString: Result := 'string';
  end;
end;

function TForm1.JsonScalarToText(AObj: ISuperObject): string;
begin
  Result := '';
  if not Assigned(AObj) then
  begin
    Result := '<null>';
    Exit;
  end;
  case AObj.DataType of
    stNull: Result := '<null>'; 
    stBoolean: if AObj.AsBoolean then Result := 'true' else Result := 'false';
    stInt: Result := IntToStr(AObj.AsInteger); 
    stDouble: Result := FloatToStr(AObj.AsDouble);
    stString: Result := AObj.AsString;
  else Result := '<' + JsonDataTypeName(AObj) + '>'; end;
end;

procedure TForm1.AddJsonFieldsToMemo(AObj: ISuperObject; const APath: string; ALines: TStrings; ADepth, AMaxDepth: Integer);
var Iter: TSuperObjectIter; I: Integer; PathAtual: string;
begin
  if (not Assigned(AObj)) or (ADepth > AMaxDepth) then Exit;
  case AObj.DataType of
    stObject: if ObjectFindFirst(AObj, Iter) then try repeat
      if APath = '' then PathAtual := Iter.key else PathAtual := APath + '.' + Iter.key;
      AddJsonFieldsToMemo(Iter.val, PathAtual, ALines, ADepth + 1, AMaxDepth);
    until not ObjectFindNext(Iter); finally ObjectFindClose(Iter); end;
    stArray: for I := 0 to AObj.AsArray.Length - 1 do begin
      if APath = '' then PathAtual := '[' + IntToStr(I) + ']' else PathAtual := APath + '[' + IntToStr(I) + ']';
      AddJsonFieldsToMemo(AObj.AsArray.O[I], PathAtual, ALines, ADepth + 1, AMaxDepth);
    end;
  else if APath <> '' then ALines.Add(APath + ' = ' + JsonScalarToText(AObj)); end;
end;

procedure TForm1.AutenticarSerproIntegraComex;
var
  Session, Connect, Request: HINTERNET; Cert: PCCERT_CONTEXT;
  Headers: WideString; ResponseBody, BasicToken: string;
  Body: AnsiString; StatusCode, ExpiresIn: Integer;
begin
  ClearToken; ValidarCamposAutenticacao; Cert := LoadCertificate;
  MemoRetorno.Lines.Add('Solicitando Autenticacao no Gateway (/token)...');
  try
    Session := WinHttpOpen(PWideChar(Wide('Sheild-D7/6.0')), WINHTTP_ACCESS_TYPE_DEFAULT_PROXY, nil, nil, 0);
    SetTls12(Session);
    Connect := WinHttpConnect(Session, PWideChar(Wide(SERPRO_GATEWAY_HOST)), 443, 0);
    Request := WinHttpOpenRequest(Connect, PWideChar(Wide('POST')), PWideChar(Wide(SERPRO_AUTH_PATH)), nil, nil, nil, WINHTTP_FLAG_SECURE);
    
    SetClientCertificate(Request, Cert);
    BasicToken := Base64Encode(AnsiString(Trim(EditConsumerKey.Text) + ':' + Trim(EditConsumerSecret.Text)));
    
    Headers := 'Authorization: Basic ' + Wide(BasicToken) + #13#10 +
               'Role-Type: TERCEIROS' + #13#10 +
               'Accept: application/json' + #13#10 +
               'Content-Type: application/x-www-form-urlencoded' + #13#10;
               
    WinHttpAddRequestHeaders(Request, PWideChar(Headers), Length(Headers), WINHTTP_ADDREQ_FLAG_ADD or WINHTTP_ADDREQ_FLAG_REPLACE);
    
    Body := AnsiString('grant_type=client_credentials'); 
    WinHttpSendRequest(Request, nil, 0, PAnsiChar(Body), Length(Body), Length(Body), 0);
    WinHttpReceiveResponse(Request, nil);
    
    StatusCode := QueryStatusCode(Request); 
    ResponseBody := ReadResponseBody(Request);
    
    if StatusCode = 200 then
    begin
      FAccessToken := ExtractJsonStringValue(ResponseBody, 'access_token');
      FTokenType := ExtractJsonStringValue(ResponseBody, 'token_type');
      ExpiresIn := ExtractJsonIntegerValue(ResponseBody, 'expires_in');
      
      if FTokenType = '' then FTokenType := 'Bearer';
      if ExpiresIn <= 0 then ExpiresIn := 3600;
      FTokenExpiresAt := Now + (ExpiresIn / 86400);
      
      MemoRetorno.Lines.Add('Sucesso! Access Token obtido.');
    end 
    else 
      raise Exception.Create('Erro Autenticacao (' + IntToStr(StatusCode) + '): ' + ResponseBody);
  finally
    WinHttpCloseHandle(Request); WinHttpCloseHandle(Connect); WinHttpCloseHandle(Session);
  end;
end;

procedure TForm1.ConsultarDuimpSerpro;
var
  Numero, Host, Path, Desc, ResponseBody, Headers: string;
  StatusCode, Mode: Integer; Root: ISuperObject;
begin
  ValidarCamposConsultaDuimp; GarantirAutenticado;
  
  Numero := Trim(EditNumeroDuimp.Text); 
  
  MemoRetorno.Lines.Add('Iniciando Consulta RESTful via GET (Gateway)...');
  
  for Mode := 0 to 2 do
  begin
    Path := BuildDuimpGetPath(Numero, Mode, Host, Desc);
    
    MemoRetorno.Lines.Add('>>> ' + Desc);
    ResponseBody := HttpGetJsonHost(Host, Path, True, StatusCode, Headers);
    
    if StatusCode in [200, 206] then
    begin
      Root := SO(ResponseBody);
      if Assigned(Root) then 
        AddJsonFieldsToMemo(Root, '', MemoRetorno.Lines, 0, 80)
      else 
        MemoRetorno.Lines.Add('Resposta bruta: ' + ResponseBody);
    end 
    else 
      MemoRetorno.Lines.Add('[ERRO] HTTP ' + IntToStr(StatusCode) + ': ' + ResponseBody);
  end;
end;

procedure TForm1.BTNAutenticaClick(Sender: TObject);
begin
  MemoRetorno.Clear; 
  try 
    AutenticarSerproIntegraComex;
  except 
    on E: Exception do Application.MessageBox(PChar(E.Message), 'Erro', MB_OK or MB_ICONERROR); 
  end;
end;

procedure TForm1.BTNConsultaDuimpClick(Sender: TObject);
begin
  try 
    ConsultarDuimpSerpro;
  except 
    on E: Exception do Application.MessageBox(PChar(E.Message), 'Erro', MB_OK or MB_ICONERROR); 
  end;
end;

end.
