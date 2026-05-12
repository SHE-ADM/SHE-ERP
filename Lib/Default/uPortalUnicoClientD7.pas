unit uPortalUnicoClientD7;

interface

uses
  Windows,
  SysUtils,
  Classes,
  WinCrypt,
  CryptUID7,
  WinHttpApi;

type
  TPortalUnicoSession = record
    SetToken: string;
    CsrfToken: string;
    CsrfExpiration: string;
  end;

  TPortalUnicoClientD7 = class
  private
    FBaseHost: string;
    FRoleType: string;
    FCertSerial: string;
    FChaveAcessoClientId: string;
    FChaveAcessoClientSecret: string;
    FCert: PCCERT_CONTEXT;
    FSession: TPortalUnicoSession;

    function Wide(const S: string): WideString;
    function GetHeaderValue(const RawHeaders, HeaderName: string): string;
    function ReadResponseBody(ARequest: HINTERNET): string;
    function QueryRawHeaders(ARequest: HINTERNET): string;
    function QueryStatusCode(ARequest: HINTERNET): Integer;
    function UrlEncodeForm(const S: string): string;
    function ExtractJsonStringValue(const AJson, AName: string): string;
    function HeadersChaveAcessoComplementar: WideString;

    procedure AtualizarTokens(const RawHeaders: string);
    procedure SetClientCertificate(ARequest: HINTERNET);
    procedure SetTls12(ASession: HINTERNET);

  public
    constructor Create(
      const ABaseHost: string;
      const ARoleType: string;
      const ACertSerial: string
    );
    destructor Destroy; override;

    procedure LoadCertificateBySerial;
    procedure Autenticar;
    procedure SetChaveAcessoComplementar(const AClientId, AClientSecret: string);

    function ConsultarDuimp(
      const ANumeroDuimp: string;
      const AVersaoDuimp: Integer
    ): string;

    function ConsultarDuimpItens(
      const ANumeroDuimp: string;
      const AVersaoDuimp: Integer
    ): string;

    function ConsultarDuimpTributos(
      const ANumeroDuimp: string;
      const AVersaoDuimp: Integer
    ): string;

    function ConsultarPcceDeclaracaoIcmsAtiva(
      const ANumeroDuimp: string
    ): string;

    function ConsultarDuimpItem(
      const ANumeroDuimp: string;
      const AVersaoDuimp: Integer;
      const ANumeroItem: Integer
    ): string;

    function ConsultarDuimpValoresCalculados(
      const ANumeroDuimp: string;
      const AVersaoDuimp: Integer
    ): string;

    function ConsultarDuimpItemValoresCalculados(
      const ANumeroDuimp: string;
      const AVersaoDuimp: Integer;
      const ANumeroItem: Integer
    ): string;

    function GetJson(const AResource: string): string;
    function TryGetJson(
      const AResource: string;
      var ARetorno: string;
      var AStatusCode: Integer;
      var AErro: string
    ): Boolean;

    function PostJson(
      const AResource: string;
      const ABodyJson: string
    ): string;

    function TryPostJson(
      const AResource: string;
      const ABodyJson: string;
      var ARetorno: string;
      var AStatusCode: Integer;
      var AErro: string
    ): Boolean;

    function ConsultarTTCEImportacao(
      const ANCM: string;
      const ACodigoPais: Integer;
      const ADataFatoGerador: string
    ): string;

    function TryConsultarTTCEImportacao(
      const ANCM: string;
      const ACodigoPais: Integer;
      const ADataFatoGerador: string;
      var ARetorno: string;
      var AStatusCode: Integer;
      var AErro: string
    ): Boolean;

    function ConsultarAtributosPorNcmProducao: string;

    function ConsultarCatpProdutoDetalhe(
      const ACpfCnpjRaiz: string;
      const ACodigoProduto: string;
      const AVersaoProduto: string
    ): string;

    function ConsultarCatpProdutosPorCodigo(
      const ACpfCnpjRaiz: string;
      const ACodigoProduto: string
    ): string;

    property Session: TPortalUnicoSession read FSession;
  end;

implementation

function TPortalUnicoClientD7.ConsultarDuimp(
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer
): string;
var
  LPath: string;
begin
  if Trim(ANumeroDuimp) = '' then
    raise Exception.Create('Nmero da DUIMP no informado.');

  if AVersaoDuimp <= 0 then
    raise Exception.Create('Verso da DUIMP invlida.');

  LPath :=
    '/duimp-api/api/ext/duimp/' +
    Trim(ANumeroDuimp) + '/' +
    IntToStr(AVersaoDuimp);

  Result := GetJson(LPath);
end;

function TPortalUnicoClientD7.ConsultarDuimpItens(
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer
): string;
var
  LPath: string;
begin
  if Trim(ANumeroDuimp) = '' then
    raise Exception.Create('Nmero da DUIMP no informado.');

  if AVersaoDuimp <= 0 then
    raise Exception.Create('Verso da DUIMP invlida.');

  LPath :=
    '/duimp-api/api/ext/duimp/' +
    Trim(ANumeroDuimp) + '/' +
    IntToStr(AVersaoDuimp) +
    '/itens';

  Result := GetJson(LPath);
end;

function TPortalUnicoClientD7.ConsultarDuimpTributos(
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer
): string;
var
  LPath: string;
begin
  if Trim(ANumeroDuimp) = '' then
    raise Exception.Create('Nmero da DUIMP no informado.');

  if AVersaoDuimp <= 0 then
    raise Exception.Create('Verso da DUIMP invlida.');

  LPath :=
    '/duimp-api/api/ext/duimp/' +
    Trim(ANumeroDuimp) + '/' +
    IntToStr(AVersaoDuimp) +
    '/tributos';

  Result := GetJson(LPath);
end;

function TPortalUnicoClientD7.ConsultarPcceDeclaracaoIcmsAtiva(
  const ANumeroDuimp: string
): string;
var
  LPath: string;
begin
  if Trim(ANumeroDuimp) = '' then
    raise Exception.Create('Nmero da DUIMP no informado.');

  LPath :=
    '/pcce/api/ext/priv/icms/' +
    Trim(ANumeroDuimp);

  Result := GetJson(LPath);
end;

function TPortalUnicoClientD7.ConsultarDuimpItem(
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer;
  const ANumeroItem: Integer
): string;
var
  LPath: string;
begin
  if Trim(ANumeroDuimp) = '' then
    raise Exception.Create('Nmero da DUIMP no informado.');

  if AVersaoDuimp <= 0 then
    raise Exception.Create('Verso da DUIMP invlida.');

  if ANumeroItem <= 0 then
    raise Exception.Create('Nmero do item invlido.');

  LPath :=
    '/duimp-api/api/ext/duimp/' +
    Trim(ANumeroDuimp) + '/' +
    IntToStr(AVersaoDuimp) +
    '/itens/' +
    IntToStr(ANumeroItem);

  Result := GetJson(LPath);
end;

function TPortalUnicoClientD7.ConsultarDuimpValoresCalculados(
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer
): string;
var
  LPath: string;
begin
  if Trim(ANumeroDuimp) = '' then
    raise Exception.Create('Nmero da DUIMP no informado.');

  if AVersaoDuimp <= 0 then
    raise Exception.Create('Verso da DUIMP invlida.');

  LPath :=
    '/duimp-api/api/ext/duimp/' +
    Trim(ANumeroDuimp) + '/' +
    IntToStr(AVersaoDuimp) +
    '/valores-calculados';

  Result := GetJson(LPath);
end;

function TPortalUnicoClientD7.ConsultarDuimpItemValoresCalculados(
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer;
  const ANumeroItem: Integer
): string;
var
  LPath: string;
begin
  if Trim(ANumeroDuimp) = '' then
    raise Exception.Create('Nmero da DUIMP no informado.');

  if AVersaoDuimp <= 0 then
    raise Exception.Create('Verso da DUIMP invlida.');

  if ANumeroItem <= 0 then
    raise Exception.Create('Nmero do item invlido.');

  LPath :=
    '/duimp-api/api/ext/duimp/' +
    Trim(ANumeroDuimp) + '/' +
    IntToStr(AVersaoDuimp) +
    '/itens/' +
    IntToStr(ANumeroItem) +
    '/valores-calculados';

  Result := GetJson(LPath);
end;

function SelectCertificateManual: PCCERT_CONTEXT;
var
  Store: HCERTSTORE;
  Info: CRYPTUI_SELECTCERTIFICATE_STRUCT;
begin
  Result := nil;

  Store := CertOpenSystemStore(0, 'MY');
  if Store = nil then
    RaiseLastOSError;

  try
    FillChar(Info, SizeOf(Info), 0);

    Info.dwSize := SizeOf(Info);
    Info.hwndParent := 0;
    Info.szTitle := 'Selecione o certificado digital';
    Info.szDisplayString := 'Escolha o certificado A1/A3 instalado no Windows';
    Info.cDisplayStores := 1;
    Info.rghDisplayStores := @Store;
    Info.cStores := 1;
    Info.rghStores := @Store;

    Result := CryptUIDlgSelectCertificate(@Info);

    if Result = nil then
      raise Exception.Create('Nenhum certificado foi selecionado.');
  finally
    CertCloseStore(Store, 0);
  end;
end;

function CertSerialToString(pCert: PCCERT_CONTEXT): string;
var
  I: Integer;
  P: PByte;
begin
  Result := '';

  if (pCert = nil) or
     (pCert^.pCertInfo = nil) or
     (pCert^.pCertInfo^.SerialNumber.pbData = nil) then
    Exit;

  P := pCert^.pCertInfo^.SerialNumber.pbData;

  for I := pCert^.pCertInfo^.SerialNumber.cbData - 1 downto 0 do
    Result := Result + IntToHex(PByte(Cardinal(P) + Cardinal(I))^, 2);
end;

function FindCertBySerial(const ASerial: string): PCCERT_CONTEXT;
var
  Store: HCERTSTORE;
  Cert: PCCERT_CONTEXT;
  SerialAtual: string;
begin
  Result := nil;

  Store := CertOpenSystemStore(0, 'MY');
  if Store = nil then
    RaiseLastOSError;

  try
    Cert := nil;

    repeat
      Cert := CertEnumCertificatesInStore(Store, Cert);

      if Cert <> nil then
      begin
        SerialAtual := UpperCase(CertSerialToString(Cert));

        if SerialAtual = UpperCase(ASerial) then
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

function TPortalUnicoClientD7.Wide(const S: string): WideString;
begin
  Result := WideString(S);
end;

constructor TPortalUnicoClientD7.Create(
  const ABaseHost: string;
  const ARoleType: string;
  const ACertSerial: string);
begin
  inherited Create;

  FBaseHost := ABaseHost;
  FRoleType := ARoleType;
  FCertSerial := ACertSerial;
  FChaveAcessoClientId := '';
  FChaveAcessoClientSecret := '';
  FCert := nil;

  FillChar(FSession, SizeOf(FSession), 0);
end;

procedure TPortalUnicoClientD7.SetChaveAcessoComplementar(
  const AClientId, AClientSecret: string);
begin
  FChaveAcessoClientId := Trim(AClientId);
  FChaveAcessoClientSecret := Trim(AClientSecret);
end;

function TPortalUnicoClientD7.HeadersChaveAcessoComplementar: WideString;
begin
  Result := '';

  if FChaveAcessoClientId <> '' then
  begin
    Result := Result +
      'Client-Id: ' + Wide(FChaveAcessoClientId) + #13#10 +
      'X-Client-Id: ' + Wide(FChaveAcessoClientId) + #13#10;
  end;

  if FChaveAcessoClientSecret <> '' then
  begin
    Result := Result +
      'Client-Secret: ' + Wide(FChaveAcessoClientSecret) + #13#10 +
      'X-Client-Secret: ' + Wide(FChaveAcessoClientSecret) + #13#10;
  end;
end;

destructor TPortalUnicoClientD7.Destroy;
begin
  if FCert <> nil then
    CertFreeCertificateContext(FCert);

  inherited Destroy;
end;

procedure TPortalUnicoClientD7.LoadCertificateBySerial;
begin
  if FCert <> nil then
  begin
    CertFreeCertificateContext(FCert);
    FCert := nil;
  end;

  if Trim(FCertSerial) <> '' then
  begin
    FCert := FindCertBySerial(FCertSerial);

    if FCert = nil then
      raise Exception.Create(
        'Certificado no encontrado pelo nmero de srie: ' + FCertSerial
      );
  end
  else
  begin
    FCert := SelectCertificateManual;
  end;

  if FCert = nil then
    raise Exception.Create('Certificado no carregado.');
end;

procedure TPortalUnicoClientD7.SetTls12(ASession: HINTERNET);
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

procedure TPortalUnicoClientD7.SetClientCertificate(ARequest: HINTERNET);
begin
  if FCert = nil then
    raise Exception.Create('Certificado no carregado.');

  if not WinHttpSetOption(
    ARequest,
    WINHTTP_OPTION_CLIENT_CERT_CONTEXT,
    FCert,
    SizeOf(CERT_CONTEXT)
  ) then
    RaiseLastOSError;
end;

function TPortalUnicoClientD7.QueryStatusCode(ARequest: HINTERNET): Integer;
var
  StatusCode: DWORD;
  BufferLen: DWORD;
  Index: DWORD;
begin
  Result := 0;
  StatusCode := 0;
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

function TPortalUnicoClientD7.QueryRawHeaders(ARequest: HINTERNET): string;
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

function TPortalUnicoClientD7.ReadResponseBody(ARequest: HINTERNET): string;
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

function TPortalUnicoClientD7.GetHeaderValue(
  const RawHeaders, HeaderName: string): string;
var
  SL: TStringList;
  I: Integer;
  Linha: string;
  Prefixo: string;
begin
  Result := '';
  Prefixo := UpperCase(HeaderName) + ':';

  SL := TStringList.Create;
  try
    SL.Text := StringReplace(RawHeaders, #13#10, #10, [rfReplaceAll]);

    for I := 0 to SL.Count - 1 do
    begin
      Linha := Trim(SL[I]);

      if Pos(Prefixo, UpperCase(Linha)) = 1 then
      begin
        Result := Trim(Copy(Linha, Length(HeaderName) + 2, MaxInt));
        Exit;
      end;
    end;
  finally
    SL.Free;
  end;
end;

function TPortalUnicoClientD7.UrlEncodeForm(const S: string): string;
var
  I: Integer;
  C: Char;
begin
  Result := '';

  for I := 1 to Length(S) do
  begin
    C := S[I];

    if C in ['A'..'Z', 'a'..'z', '0'..'9', '-', '_', '.', '~'] then
      Result := Result + C
    else if C = ' ' then
      Result := Result + '+'
    else
      Result := Result + '%' + IntToHex(Ord(C), 2);
  end;
end;

function TPortalUnicoClientD7.ExtractJsonStringValue(
  const AJson, AName: string): string;
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
  Result := StringReplace(Result, '\/','/', [rfReplaceAll]);
  Result := StringReplace(Result, '\"','"', [rfReplaceAll]);
end;

procedure TPortalUnicoClientD7.AtualizarTokens(const RawHeaders: string);
var
  V: string;
begin
  V := GetHeaderValue(RawHeaders, 'Set-Token');
  if V <> '' then
    FSession.SetToken := V;

  V := GetHeaderValue(RawHeaders, 'X-CSRF-Token');
  if V <> '' then
    FSession.CsrfToken := V;

  V := GetHeaderValue(RawHeaders, 'X-CSRF-Expiration');
  if V <> '' then
    FSession.CsrfExpiration := V;
end;

procedure TPortalUnicoClientD7.Autenticar;
var
  Session: HINTERNET;
  Connect: HINTERNET;
  Request: HINTERNET;
  Headers: WideString;
  RawHeaders: string;
  Body: string;
  Status: Integer;
begin
  if FCert = nil then
    LoadCertificateBySerial;

  Session := nil;
  Connect := nil;
  Request := nil;

  try
    Session := WinHttpOpen(
      PWideChar(Wide('Sheild-DUIMP-D7/1.0')),
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
      PWideChar(Wide(FBaseHost)),
      443,
      0
    );

    if Connect = nil then
      RaiseLastOSError;

    Request := WinHttpOpenRequest(
      Connect,
      PWideChar(Wide('POST')),
      PWideChar(Wide('/portal/api/autenticar')),
      nil,
      nil,
      nil,
      WINHTTP_FLAG_SECURE
    );

    if Request = nil then
      RaiseLastOSError;

    SetClientCertificate(Request);

    Headers :=
      'Role-Type: ' + Wide(FRoleType) + #13#10 +
      HeadersChaveAcessoComplementar +
      'Accept: application/json' + #13#10 +
      'Content-Type: application/json; charset=utf-8' + #13#10;

    if not WinHttpAddRequestHeaders(
      Request,
      PWideChar(Headers),
      Length(Headers),
      WINHTTP_ADDREQ_FLAG_ADD or WINHTTP_ADDREQ_FLAG_REPLACE
    ) then
      RaiseLastOSError;

    if not WinHttpSendRequest(Request, nil, 0, nil, 0, 0, 0) then
      RaiseLastOSError;

    if not WinHttpReceiveResponse(Request, nil) then
      RaiseLastOSError;

    Status := QueryStatusCode(Request);
    RawHeaders := QueryRawHeaders(Request);
    Body := ReadResponseBody(Request);

    AtualizarTokens(RawHeaders);

    if not (Status in [200, 201, 204]) then
      raise Exception.Create(
        'Erro ao autenticar no Portal nico.' + sLineBreak +
        'HTTP: ' + IntToStr(Status) + sLineBreak +
        'Resposta: ' + Body + sLineBreak +
        'Headers: ' + RawHeaders
      );

    if (FSession.SetToken = '') or (FSession.CsrfToken = '') then
      raise Exception.Create(
        'Autenticao retornou HTTP ' + IntToStr(Status) +
        ', mas no retornou Set-Token ou X-CSRF-Token.'
      );

  finally
    if Request <> nil then WinHttpCloseHandle(Request);
    if Connect <> nil then WinHttpCloseHandle(Connect);
    if Session <> nil then WinHttpCloseHandle(Session);
  end;
end;

function TPortalUnicoClientD7.GetJson(const AResource: string): string;
var
  Session: HINTERNET;
  Connect: HINTERNET;
  Request: HINTERNET;
  Headers: WideString;
  RawHeaders: string;
  Status: Integer;
begin
  Result := '';

  if (FSession.SetToken = '') or (FSession.CsrfToken = '') then
    Autenticar;

  Session := nil;
  Connect := nil;
  Request := nil;

  try
    Session := WinHttpOpen(
      PWideChar(Wide('Sheild-DUIMP-D7/1.0')),
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
      PWideChar(Wide(FBaseHost)),
      443,
      0
    );

    if Connect = nil then
      RaiseLastOSError;

    Request := WinHttpOpenRequest(
      Connect,
      PWideChar(Wide('GET')),
      PWideChar(Wide(AResource)),
      nil,
      nil,
      nil,
      WINHTTP_FLAG_SECURE
    );

    if Request = nil then
      RaiseLastOSError;

    SetClientCertificate(Request);

    Headers :=
      'Authorization: ' + Wide(FSession.SetToken) + #13#10 +
      'X-CSRF-Token: ' + Wide(FSession.CsrfToken) + #13#10 +
      'Role-Type: ' + Wide(FRoleType) + #13#10 +
      'Accept: application/json' + #13#10 +
      'Content-Type: application/json; charset=utf-8' + #13#10;

    if not WinHttpAddRequestHeaders(
      Request,
      PWideChar(Headers),
      Length(Headers),
      WINHTTP_ADDREQ_FLAG_ADD or WINHTTP_ADDREQ_FLAG_REPLACE
    ) then
      RaiseLastOSError;

    if not WinHttpSendRequest(Request, nil, 0, nil, 0, 0, 0) then
      RaiseLastOSError;

    if not WinHttpReceiveResponse(Request, nil) then
      RaiseLastOSError;

    Status := QueryStatusCode(Request);
    RawHeaders := QueryRawHeaders(Request);
    Result := ReadResponseBody(Request);

    AtualizarTokens(RawHeaders);

    if Status = 401 then
    begin
      FSession.SetToken := '';
      FSession.CsrfToken := '';
      FSession.CsrfExpiration := '';
      raise Exception.Create('HTTP 401: sesso expirada ou autenticao invlida. Reautentique.');
    end;

    if not (Status in [200, 201, 204]) then
      raise Exception.Create(
        'Erro HTTP: ' + IntToStr(Status) + sLineBreak +
        'Resposta: ' + Result
      );

  finally
    if Request <> nil then WinHttpCloseHandle(Request);
    if Connect <> nil then WinHttpCloseHandle(Connect);
    if Session <> nil then WinHttpCloseHandle(Session);
  end;
end;


function TPortalUnicoClientD7.TryGetJson(
  const AResource: string;
  var ARetorno: string;
  var AStatusCode: Integer;
  var AErro: string
): Boolean;
var
  Session: HINTERNET;
  Connect: HINTERNET;
  Request: HINTERNET;
  Headers: WideString;
  RawHeaders: string;
begin
  Result := False;
  ARetorno := '';
  AStatusCode := 0;
  AErro := '';

  Session := nil;
  Connect := nil;
  Request := nil;

  try
    try
      if (FSession.SetToken = '') or (FSession.CsrfToken = '') then
        Autenticar;

      Session := WinHttpOpen(
        PWideChar(Wide('Sheild-DUIMP-D7/1.0')),
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
        PWideChar(Wide(FBaseHost)),
        443,
        0
      );

      if Connect = nil then
        RaiseLastOSError;

      Request := WinHttpOpenRequest(
        Connect,
        PWideChar(Wide('GET')),
        PWideChar(Wide(AResource)),
        nil,
        nil,
        nil,
        WINHTTP_FLAG_SECURE
      );

      if Request = nil then
        RaiseLastOSError;

      SetClientCertificate(Request);

      Headers :=
        'Authorization: ' + Wide(FSession.SetToken) + #13#10 +
        'X-CSRF-Token: ' + Wide(FSession.CsrfToken) + #13#10 +
        'Role-Type: ' + Wide(FRoleType) + #13#10 +
        'Accept: application/json' + #13#10 +
        'Content-Type: application/json; charset=utf-8' + #13#10;

      if not WinHttpAddRequestHeaders(
        Request,
        PWideChar(Headers),
        Length(Headers),
        WINHTTP_ADDREQ_FLAG_ADD or WINHTTP_ADDREQ_FLAG_REPLACE
      ) then
        RaiseLastOSError;

      if not WinHttpSendRequest(Request, nil, 0, nil, 0, 0, 0) then
        RaiseLastOSError;

      if not WinHttpReceiveResponse(Request, nil) then
        RaiseLastOSError;

      AStatusCode := QueryStatusCode(Request);
      RawHeaders := QueryRawHeaders(Request);
      ARetorno := ReadResponseBody(Request);

      AtualizarTokens(RawHeaders);

      if AStatusCode = 401 then
      begin
        FSession.SetToken := '';
        FSession.CsrfToken := '';
        FSession.CsrfExpiration := '';
        AErro := 'HTTP 401: sessao expirada ou autenticacao invalida. Reautentique.';
        Exit;
      end;

      if AStatusCode in [200, 201, 204] then
      begin
        Result := True;
        Exit;
      end;

      AErro :=
        'Erro HTTP: ' + IntToStr(AStatusCode) + sLineBreak +
        'Resposta: ' + ARetorno;
    finally
      if Request <> nil then WinHttpCloseHandle(Request);
      if Connect <> nil then WinHttpCloseHandle(Connect);
      if Session <> nil then WinHttpCloseHandle(Session);
    end;
  except
    on E: Exception do
    begin
      Result := False;
      if AErro = '' then
        AErro := E.Message;
    end;
  end;
end;


function TPortalUnicoClientD7.TryPostJson(
  const AResource: string;
  const ABodyJson: string;
  var ARetorno: string;
  var AStatusCode: Integer;
  var AErro: string
): Boolean;
var
  Session: HINTERNET;
  Connect: HINTERNET;
  Request: HINTERNET;
  Headers: WideString;
  RawHeaders: string;
  BodyAnsi: AnsiString;
begin
  Result := False;
  ARetorno := '';
  AStatusCode := 0;
  AErro := '';

  Session := nil;
  Connect := nil;
  Request := nil;

  try
    try
      if (FSession.SetToken = '') or (FSession.CsrfToken = '') then
        Autenticar;

      Session := WinHttpOpen(
        PWideChar(Wide('Sheild-DUIMP-D7/1.0')),
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
        PWideChar(Wide(FBaseHost)),
        443,
        0
      );

      if Connect = nil then
        RaiseLastOSError;

      Request := WinHttpOpenRequest(
        Connect,
        PWideChar(Wide('POST')),
        PWideChar(Wide(AResource)),
        nil,
        nil,
        nil,
        WINHTTP_FLAG_SECURE
      );

      if Request = nil then
        RaiseLastOSError;

      SetClientCertificate(Request);

      Headers :=
        'Authorization: ' + Wide(FSession.SetToken) + #13#10 +
        'X-CSRF-Token: ' + Wide(FSession.CsrfToken) + #13#10 +
        'Role-Type: ' + Wide(FRoleType) + #13#10 +
        'Accept: application/json' + #13#10 +
        'Content-Type: application/json; charset=utf-8' + #13#10;

      if not WinHttpAddRequestHeaders(
        Request,
        PWideChar(Headers),
        Length(Headers),
        WINHTTP_ADDREQ_FLAG_ADD or WINHTTP_ADDREQ_FLAG_REPLACE
      ) then
        RaiseLastOSError;

      BodyAnsi := AnsiString(ABodyJson);

      if Length(BodyAnsi) > 0 then
      begin
        if not WinHttpSendRequest(
          Request,
          nil,
          0,
          PAnsiChar(BodyAnsi),
          Length(BodyAnsi),
          Length(BodyAnsi),
          0
        ) then
          RaiseLastOSError;
      end
      else
      begin
        if not WinHttpSendRequest(Request, nil, 0, nil, 0, 0, 0) then
          RaiseLastOSError;
      end;

      if not WinHttpReceiveResponse(Request, nil) then
        RaiseLastOSError;

      AStatusCode := QueryStatusCode(Request);
      RawHeaders := QueryRawHeaders(Request);
      ARetorno := ReadResponseBody(Request);

      AtualizarTokens(RawHeaders);

      if AStatusCode = 401 then
      begin
        FSession.SetToken := '';
        FSession.CsrfToken := '';
        FSession.CsrfExpiration := '';
        AErro := 'HTTP 401: sessao expirada ou autenticacao invalida. Reautentique.';
        Exit;
      end;

      if AStatusCode in [200, 201, 204] then
      begin
        Result := True;
        Exit;
      end;

      AErro :=
        'Erro HTTP: ' + IntToStr(AStatusCode) + sLineBreak +
        'Resposta: ' + ARetorno;
    finally
      if Request <> nil then WinHttpCloseHandle(Request);
      if Connect <> nil then WinHttpCloseHandle(Connect);
      if Session <> nil then WinHttpCloseHandle(Session);
    end;
  except
    on E: Exception do
    begin
      Result := False;
      if AErro = '' then
        AErro := E.Message;
    end;
  end;
end;

function TPortalUnicoClientD7.PostJson(
  const AResource: string;
  const ABodyJson: string
): string;
var
  Status: Integer;
  Erro: string;
begin
  Result := '';
  if not TryPostJson(AResource, ABodyJson, Result, Status, Erro) then
    raise Exception.Create(Erro);
end;

function TPortalUnicoClientD7.ConsultarTTCEImportacao(
  const ANCM: string;
  const ACodigoPais: Integer;
  const ADataFatoGerador: string
): string;
var
  Payload: string;
begin
  if Trim(ANCM) = '' then
    raise Exception.Create('NCM nao informada para consulta TTCE.');

  if ACodigoPais <= 0 then
    raise Exception.Create('Codigo do pais nao informado para consulta TTCE.');

  if Trim(ADataFatoGerador) = '' then
    raise Exception.Create('Data do fato gerador nao informada para consulta TTCE.');

  Payload :=
    '{' +
    '"ncm":"' + Trim(ANCM) + '",' +
    '"codigoPais":' + IntToStr(ACodigoPais) + ',' +
    '"dataFatoGerador":"' + Trim(ADataFatoGerador) + '",' +
    '"tipoOperacao":"I"' +
    '}';

  Result := PostJson('/ttce/api/ext/tratamentos-tributarios/importacao/', Payload);
end;

function TPortalUnicoClientD7.TryConsultarTTCEImportacao(
  const ANCM: string;
  const ACodigoPais: Integer;
  const ADataFatoGerador: string;
  var ARetorno: string;
  var AStatusCode: Integer;
  var AErro: string
): Boolean;
var
  Payload: string;
begin
  ARetorno := '';
  AStatusCode := 0;
  AErro := '';

  if Trim(ANCM) = '' then
  begin
    AErro := 'NCM nao informada para consulta TTCE.';
    Result := False;
    Exit;
  end;

  if ACodigoPais <= 0 then
  begin
    AErro := 'Codigo do pais nao informado para consulta TTCE.';
    Result := False;
    Exit;
  end;

  if Trim(ADataFatoGerador) = '' then
  begin
    AErro := 'Data do fato gerador nao informada para consulta TTCE.';
    Result := False;
    Exit;
  end;

  Payload :=
    '{' +
    '"ncm":"' + Trim(ANCM) + '",' +
    '"codigoPais":' + IntToStr(ACodigoPais) + ',' +
    '"dataFatoGerador":"' + Trim(ADataFatoGerador) + '",' +
    '"tipoOperacao":"I"' +
    '}';

  Result := TryPostJson(
    '/ttce/api/ext/tratamentos-tributarios/importacao/',
    Payload,
    ARetorno,
    AStatusCode,
    AErro
  );
end;


function TPortalUnicoClientD7.ConsultarAtributosPorNcmProducao: string;
begin
  Result := GetJson('/cadatributos/api/atributo-ncm/download/json');
end;


function TPortalUnicoClientD7.ConsultarCatpProdutoDetalhe(
  const ACpfCnpjRaiz: string;
  const ACodigoProduto: string;
  const AVersaoProduto: string
): string;
var
  LPath: string;
begin
  if Trim(ACpfCnpjRaiz) = '' then
    raise Exception.Create('CPF/CNPJ raiz no informado para consulta CATP.');

  if Trim(ACodigoProduto) = '' then
    raise Exception.Create('Cdigo do produto no informado para consulta CATP.');

  if Trim(AVersaoProduto) = '' then
    raise Exception.Create('Verso do produto no informada para consulta CATP.');

  LPath :=
    '/catp/api/ext/produto/' +
    Trim(ACpfCnpjRaiz) + '/' +
    Trim(ACodigoProduto) + '/' +
    Trim(AVersaoProduto);

  Result := GetJson(LPath);
end;

function TPortalUnicoClientD7.ConsultarCatpProdutosPorCodigo(
  const ACpfCnpjRaiz: string;
  const ACodigoProduto: string
): string;
var
  LPath: string;
begin
  if Trim(ACpfCnpjRaiz) = '' then
    raise Exception.Create('CPF/CNPJ raiz no informado para consulta CATP.');

  if Trim(ACodigoProduto) = '' then
    raise Exception.Create('Cdigo do produto no informado para consulta CATP.');

  LPath :=
    '/catp/api/ext/produto?cpfCnpjRaiz=' + Trim(ACpfCnpjRaiz) +
    '&codigo=' + Trim(ACodigoProduto);

  Result := GetJson(LPath);
end;

end.
