program SHE_DUIMPPRIVADA;

uses
  Forms,
  CryptUID7 in '..\Lib\Default\CryptUID7.pas',
  WinHttpApi in '..\Lib\Default\WinHttpApi.pas',
  WinCrypt in '..\Lib\Default\WinCrypt.pas',
  superobject in '..\Lib\Default\superobject.pas',
  uPrincipalDuimpPrivada in 'uPrincipalDuimpPrivada.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
