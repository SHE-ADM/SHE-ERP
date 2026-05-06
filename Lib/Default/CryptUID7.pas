unit CryptUID7;

interface

uses
  Windows,
  WinCrypt;

type
  PCRYPTUI_SELECTCERTIFICATE_STRUCT = ^CRYPTUI_SELECTCERTIFICATE_STRUCT;
  CRYPTUI_SELECTCERTIFICATE_STRUCT = record
    dwSize: DWORD;
    hwndParent: HWND;
    dwFlags: DWORD;
    szTitle: PAnsiChar;
    dwDontUseColumn: DWORD;
    szDisplayString: PAnsiChar;
    pFilterCallback: Pointer;
    pDisplayCallback: Pointer;
    pvCallbackData: Pointer;
    cDisplayStores: DWORD;
    rghDisplayStores: ^HCERTSTORE;
    cStores: DWORD;
    rghStores: ^HCERTSTORE;
    cPropSheetPages: DWORD;
    rgPropSheetPages: Pointer;
    hSelectedCertStore: HCERTSTORE;
  end;

function CryptUIDlgSelectCertificate(
  pCertSelectInfo: PCRYPTUI_SELECTCERTIFICATE_STRUCT
): PCCERT_CONTEXT; stdcall;

implementation

function CryptUIDlgSelectCertificate; external 'cryptui.dll' name 'CryptUIDlgSelectCertificateA';

end. 
