unit WinCrypt;

interface

uses
  Windows;

type
  ULONG_PTR = Cardinal;

  HCERTSTORE = Pointer;

  PCRYPTOAPI_BLOB = ^CRYPTOAPI_BLOB;
  CRYPTOAPI_BLOB = record
    cbData: DWORD;
    pbData: PByte;
  end;

  PCERT_INFO = ^CERT_INFO;
  CERT_INFO = record
    dwVersion: DWORD;
    SerialNumber: CRYPTOAPI_BLOB;
    SignatureAlgorithm: Pointer;
    Issuer: CRYPTOAPI_BLOB;
    NotBefore: TFileTime;
    NotAfter: TFileTime;
    Subject: CRYPTOAPI_BLOB;
    SubjectPublicKeyInfo: Pointer;
    IssuerUniqueId: CRYPTOAPI_BLOB;
    SubjectUniqueId: CRYPTOAPI_BLOB;
    cExtension: DWORD;
    rgExtension: Pointer;
  end;

  PCCERT_CONTEXT = ^CERT_CONTEXT;
  CERT_CONTEXT = record
    dwCertEncodingType: DWORD;
    pbCertEncoded: PByte;
    cbCertEncoded: DWORD;
    pCertInfo: PCERT_INFO;
    hCertStore: HCERTSTORE;
  end;

function CertOpenSystemStore(
  hProv: ULONG_PTR;
  szSubsystemProtocol: PAnsiChar
): HCERTSTORE; stdcall;

function CertCloseStore(
  hCertStore: HCERTSTORE;
  dwFlags: DWORD
): BOOL; stdcall;

function CertEnumCertificatesInStore(
  hCertStore: HCERTSTORE;
  pPrevCertContext: PCCERT_CONTEXT
): PCCERT_CONTEXT; stdcall;

function CertDuplicateCertificateContext(
  pCertContext: PCCERT_CONTEXT
): PCCERT_CONTEXT; stdcall;

function CertFreeCertificateContext(
  pCertContext: PCCERT_CONTEXT
): BOOL; stdcall;

implementation

function CertOpenSystemStore; external 'crypt32.dll' name 'CertOpenSystemStoreA';
function CertCloseStore; external 'crypt32.dll';
function CertEnumCertificatesInStore; external 'crypt32.dll';
function CertDuplicateCertificateContext; external 'crypt32.dll';
function CertFreeCertificateContext; external 'crypt32.dll';

end.
