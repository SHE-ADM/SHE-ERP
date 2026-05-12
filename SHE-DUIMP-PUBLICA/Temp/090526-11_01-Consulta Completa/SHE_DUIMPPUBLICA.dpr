program SHE_DUIMPPUBLICA;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uPortalUnicoClientD7 in '..\Lib\Default\uPortalUnicoClientD7.pas',
  CryptUID7 in '..\Lib\Default\CryptUID7.pas',
  WinHttpApi in '..\Lib\Default\WinHttpApi.pas',
  WinCrypt in '..\Lib\Default\WinCrypt.pas',
  superobject in '..\Lib\Default\superobject.pas',
  uDuimpNFeItensCompletoD7 in '..\Lib\Default\uDuimpNFeItensCompletoD7.pas',
  uDuimpNFeXmlCompletoD7 in '..\Lib\Default\uDuimpNFeXmlCompletoD7.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
