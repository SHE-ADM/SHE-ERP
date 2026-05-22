unit WinHttpApi;

interface

uses
  Windows;

type
  HINTERNET = Pointer;
  INTERNET_PORT = Word;

const
  WINHTTP_ACCESS_TYPE_DEFAULT_PROXY = 0;
  WINHTTP_NO_PROXY_NAME = nil;
  WINHTTP_NO_PROXY_BYPASS = nil;

  WINHTTP_FLAG_SECURE = $00800000;

  WINHTTP_ADDREQ_FLAG_ADD = $20000000;
  WINHTTP_ADDREQ_FLAG_REPLACE = $80000000;

  WINHTTP_QUERY_STATUS_CODE = 19;
  WINHTTP_QUERY_RAW_HEADERS_CRLF = 22;
  WINHTTP_QUERY_CUSTOM = 65535;
  WINHTTP_QUERY_FLAG_NUMBER = $20000000;

  WINHTTP_OPTION_CLIENT_CERT_CONTEXT = 47;
  WINHTTP_OPTION_SECURE_PROTOCOLS = 84;

  WINHTTP_FLAG_SECURE_PROTOCOL_TLS1_2 = $00000800;

function WinHttpOpen(
  pwszUserAgent: PWideChar;
  dwAccessType: DWORD;
  pwszProxyName: PWideChar;
  pwszProxyBypass: PWideChar;
  dwFlags: DWORD
): HINTERNET; stdcall;

function WinHttpConnect(
  hSession: HINTERNET;
  pswzServerName: PWideChar;
  nServerPort: INTERNET_PORT;
  dwReserved: DWORD
): HINTERNET; stdcall;

function WinHttpOpenRequest(
  hConnect: HINTERNET;
  pwszVerb: PWideChar;
  pwszObjectName: PWideChar;
  pwszVersion: PWideChar;
  pwszReferrer: PWideChar;
  ppwszAcceptTypes: Pointer;
  dwFlags: DWORD
): HINTERNET; stdcall;

function WinHttpSetOption(
  hInternet: HINTERNET;
  dwOption: DWORD;
  lpBuffer: Pointer;
  dwBufferLength: DWORD
): BOOL; stdcall;

function WinHttpAddRequestHeaders(
  hRequest: HINTERNET;
  pwszHeaders: PWideChar;
  dwHeadersLength: DWORD;
  dwModifiers: DWORD
): BOOL; stdcall;

function WinHttpSendRequest(
  hRequest: HINTERNET;
  pwszHeaders: PWideChar;
  dwHeadersLength: DWORD;
  lpOptional: Pointer;
  dwOptionalLength: DWORD;
  dwTotalLength: DWORD;
  dwContext: DWORD
): BOOL; stdcall;

function WinHttpReceiveResponse(
  hRequest: HINTERNET;
  lpReserved: Pointer
): BOOL; stdcall;

function WinHttpQueryHeaders(
  hRequest: HINTERNET;
  dwInfoLevel: DWORD;
  pwszName: PWideChar;
  lpBuffer: Pointer;
  var lpdwBufferLength: DWORD;
  var lpdwIndex: DWORD
): BOOL; stdcall;

function WinHttpReadData(
  hRequest: HINTERNET;
  lpBuffer: Pointer;
  dwNumberOfBytesToRead: DWORD;
  var lpdwNumberOfBytesRead: DWORD
): BOOL; stdcall;

function WinHttpCloseHandle(
  hInternet: HINTERNET
): BOOL; stdcall;

implementation

function WinHttpOpen; external 'winhttp.dll';
function WinHttpConnect; external 'winhttp.dll';
function WinHttpOpenRequest; external 'winhttp.dll';
function WinHttpSetOption; external 'winhttp.dll';
function WinHttpAddRequestHeaders; external 'winhttp.dll';
function WinHttpSendRequest; external 'winhttp.dll';
function WinHttpReceiveResponse; external 'winhttp.dll';
function WinHttpQueryHeaders; external 'winhttp.dll';
function WinHttpReadData; external 'winhttp.dll';
function WinHttpCloseHandle; external 'winhttp.dll';

end. 
