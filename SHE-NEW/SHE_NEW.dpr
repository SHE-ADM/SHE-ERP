program SHE_NEW;
{$I C:\Sheild\Projetos\Delphi\Fontes\Lib\FastMM\FastMM4Options.inc} // incluir arquivo de configuração
{$SetPEFlags $20} // Permite que o aplicativo acesse até 4GB de RAM em sistemas x64

uses
  FastMM4 in '..\Lib\FastMM\FastMM4.pas',
  Forms,
  SysUtils,
  oIBXRetryTransaction in '..\Lib\Default\oIBXRetryTransaction.pas',
  oPrincipal in '..\Lib\Default\oPrincipal.pas',
  bPrincipal in '..\Lib\Data Modulo\bPrincipal.pas' {FBird: TDataModule},
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  StrInt in '..\Lib\Default\StrInt.pas',
  StrIntImp in '..\Lib\Default\StrIntImp.pas',
  DelphiZXingQRCode in '..\Lib\Default\DelphiZXIngQRCode.pas',
  hkHints in '..\Lib\Default\HkHints.pas',
  pSplash in '..\Lib\Default\pSplash.pas' {FrmSplash},
  pSobre in 'pSobre.pas' {FrmSobre},
  pConstrucao in '..\Lib\Default\pConstrucao.pas' {FrmConstrucao},
  pImpressoras in '..\Lib\Relatórios\pImpressoras.pas' {FrmImpressoras},
  pLogin in '..\Lib\Default\pLogin.pas' {FrmLogin},
  pSenha in '..\Lib\Default\pSenha.pas' {FrmSenha};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Modelo Padrão';

  FrmSplash := TFrmSplash.Create(Nil);
  FrmSplash.Refresh;
  FrmSplash.Show;

  FBird := TFBird.Create(Nil);

  FrmLogin := TFrmLogin.Create(Nil);
  FrmLogin.Refresh;
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Initialize;

  FreeAndNil(FrmSplash);
  FreeAndNil(FrmLogin);

  oPrinterSelect(Application.Handle,'Relatórios');
  Application.Run;

  FreeAndNil(FrmPrincipal);
  FreeAndNil(FBird);
end.
