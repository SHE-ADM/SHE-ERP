unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, comobj,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnTestar: TButton;
    edtDoc: TEdit;
    memResp: TMemo;
    procedure btnTestarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function HResultToHex(H: Integer): string;
begin
  Result := '$' + IntToHex(H, 8);
end;

function UrlEncode(const S: AnsiString): AnsiString;
const
  Hex: array[0..15] of AnsiChar = '0123456789ABCDEF';
var
  i: Integer;
  c: AnsiChar;
begin
  Result := '';
  for i := 1 to Length(S) do
  begin
    c := S[i];
    if (c in ['A'..'Z','a'..'z','0'..'9','-','_','.', '~']) then
      Result := Result + c
    else
      Result := Result + '%' + Hex[Ord(c) shr 4] + Hex[Ord(c) and $0F];
  end;
end;

function WideToAnsi(const W: WideString): AnsiString;
var
  Len: Integer;
begin
  // Converte UTF-16 (BSTR) -> ANSI (CP_ACP) para exibir no TMemo do D7
  Len := WideCharToMultiByte(CP_ACP, 0, PWideChar(W), -1, nil, 0, nil, nil);
  SetLength(Result, Len - 1);
  if Len > 1 then
    WideCharToMultiByte(CP_ACP, 0, PWideChar(W), -1, PAnsiChar(Result), Len - 1, nil, nil);
end;

procedure TForm1.btnTestarClick(Sender: TObject);

const
  TLS12 = $00000800; // Option(9) secure protocols -> TLS 1.2
  PROXY_DEFAULT = 0; // SetProxy: default/preconfig
  PROXY_DIRECT  = 1; // SetProxy: direct (sem proxy)
  // PROXY_PROXY = 2; // SetProxy: proxy explícito (host:porta)
var
  h: OleVariant;
  URL: AnsiString;
  Status: Integer;
begin
  memResp.Clear;

  URL :=
    'https://cobrancabancaria.tecnospeed.com.br/api/v1/boletos?TituloNumeroDocumento=241948-E';

  try
    h := CreateOleObject('WinHttp.WinHttpRequest.5.1'); // WinHttpRequest COM [1](https://learn.microsoft.com/en-us/windows/win32/winhttp/winhttprequest)

    // 1) TLS 1.2
    h.Option(9) := TLS12; // Option property existe no objeto [1](https://learn.microsoft.com/en-us/windows/win32/winhttp/winhttprequest)

    // 2) Proxy (teste 1: usar config do Windows / default)
    // SetProxy deve ser chamado ANTES do Send [2](https://learn.microsoft.com/en-us/windows/win32/winhttp/iwinhttprequest-setproxy)
    h.SetProxy(PROXY_DEFAULT);

    // (Se vc suspeita de proxy corporativo atrapalhando, troque para:)
    // h.SetProxy(PROXY_DIRECT);

    // 3) Timeouts
    h.SetTimeouts(30000, 30000, 30000, 60000); // SetTimeouts existe [1](https://learn.microsoft.com/en-us/windows/win32/winhttp/winhttprequest)

    // 4) Request
    h.Open('GET', URL, False); // Open existe [1](https://learn.microsoft.com/en-us/windows/win32/winhttp/winhttprequest)

    h.SetRequestHeader('cnpj-sh',      '17287123000158');
    h.SetRequestHeader('token-sh',     '23200c0ce01abc0c4632ffb93047956a');
    h.SetRequestHeader('cnpj-cedente', '47273917000123');
    h.SetRequestHeader('Accept', 'application/json');

    h.Send(EmptyParam); // Send existe [1](https://learn.microsoft.com/en-us/windows/win32/winhttp/winhttprequest)

    Status := h.Status; // Status existe [1](https://learn.microsoft.com/en-us/windows/win32/winhttp/winhttprequest)
    memResp.Lines.Add('HTTP Status: ' + IntToStr(Status));
    memResp.Lines.Add('--- Response Headers ---');
    memResp.Lines.Add(String(h.GetAllResponseHeaders)); // GetAllResponseHeaders existe [1](https://learn.microsoft.com/en-us/windows/win32/winhttp/winhttprequest)
    memResp.Lines.Add('--- Body ---');
    memResp.Lines.Add(String(h.ResponseText));

  except
    on E: EOleException do
    begin
      memResp.Lines.Add('*** ERRO COM/OLE ***');
      memResp.Lines.Add('Mensagem: ' + E.Message);
      memResp.Lines.Add('ErrorCode (HRESULT): ' + HResultToHex(E.ErrorCode));
      // Se for 0x80070005 => Access is denied (permissão/ambiente)
    end;
    on E: Exception do
    begin
      memResp.Lines.Add('*** ERRO ***');
      memResp.Lines.Add(E.ClassName + ': ' + E.Message);
    end;
  end;
end;




end.
