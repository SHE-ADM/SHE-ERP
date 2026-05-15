program DUIMP;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  CryptUID7 in '..\Lib\Default\CryptUID7.pas',
  WinHttpApi in '..\Lib\Default\WinHttpApi.pas',
  WinCrypt in '..\Lib\Default\WinCrypt.pas',
  superobject in '..\Lib\Default\superobject.pas',
  uDuimpNFeERPComponentesD7 in 'uDuimpNFeERPComponentesD7.pas',
  uDuimpNFeItensCompletoD7 in 'uDuimpNFeItensCompletoD7.pas',
  uDuimpNFeXmlCompletoD7 in 'uDuimpNFeXmlCompletoD7.pas',
  uPortalUnicoClientD7 in 'uPortalUnicoClientD7.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
