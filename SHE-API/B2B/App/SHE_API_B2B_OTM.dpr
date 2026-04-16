program SHE_API_B2B_OTM;

uses
  Forms,
  SysUtils,
  Windows,
  uPrincipal in 'uPrincipal.pas' {FrmSHE_API_B2B},
  oPrincipal in '..\..\..\Lib\Default\oPrincipal.pas',
  pSplash in '..\..\..\Lib\Default\pSplash.pas' {FrmSplash},
  bPrincipal in '..\..\..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  StrInt in '..\..\..\Lib\Default\StrInt.pas',
  StrIntImp in '..\..\..\Lib\Default\StrIntImp.pas',
  pSobre in '..\..\..\Lib\Default\pSobre.pas' {FrmSobre},
  hkHints in '..\..\..\Lib\Default\HkHints.pas',
  DSiWin32 in '..\..\..\Lib\Default\DSiWin32.pas',
  oIBXRetryTransaction in '..\..\..\Lib\Default\oIBXRetryTransaction.pas';

{$R *.res}

var
  Handle: THandle;
begin
  Handle := 0;//FindWindow('TFrmPrincipalB2B',Nil);

  if Handle <> 0 then
  begin
    Application.MessageBox('Sistema já está em execução.','Atenção !',mb_Ok+mb_IconExclamation);

    if not ISWindowVisible(Handle) then
               ShowWindow (Handle,SW_RESTORE);

    SetForegroundWindow(Handle);
    Application.Terminate;
  end else
  begin
    Application.Initialize;
    Application.Title := 'SHE_API_B2B_OTM';
  Application.CreateForm(TFrmSHE_API_B2B, FrmSHE_API_B2B);
    FrmSplash := TFrmSplash.Create(Nil);
    FrmSplash.Refresh;
    FrmSplash.Show;

    FBird := TFBird.Create(Application);

    oODatabase(FBird.DBErp);

    Application.Initialize;
    FreeAndNil(FrmSplash);

    Application.Run;
    FreeAndNil(FrmSHE_API_B2B);
  end;  
end.
