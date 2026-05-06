unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  uPortalUnicoClientD7, SuperObject;

type
  TForm1 = class(TForm)
    EditNumeroDuimp: TEdit;
    EditVersaoDuimp: TEdit;
    BTNAutentica: TButton;
    MemoRetorno: TMemo;
    EditNumeroItem: TEdit;
    BTNConsultaDUIMP: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BTNAutenticaClick(Sender: TObject);
    procedure BTNConsultaDUIMPClick(Sender: TObject);
  private
    { Private declarations }
    FClient: TPortalUnicoClientD7;

    procedure GarantirAutenticado;
    procedure ExibirRetorno(const ATitulo, ARetorno: string);

    function GetNumeroDuimp: string;
    function GetVersaoDuimp: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FClient := nil;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
 if Assigned(FClient) then
    FreeAndNil(FClient);
end;

procedure TForm1.GarantirAutenticado;
begin
  if not Assigned(FClient) then
    raise Exception.Create('Cliente não autenticado. Clique primeiro em Autenticar.');
end;

function TForm1.GetNumeroDuimp: string;
begin
  Result := Trim(EditNumeroDuimp.Text);

  if Result = '' then
    raise Exception.Create('Informe o número da DUIMP.');
end;

function TForm1.GetVersaoDuimp: Integer;
begin
  Result := StrToIntDef(Trim(EditVersaoDuimp.Text), 0);

  if Result <= 0 then
    raise Exception.Create('Informe uma versão válida da DUIMP. Exemplo: 1');
end;

procedure TForm1.ExibirRetorno(const ATitulo, ARetorno: string);
begin
  MemoRetorno.Clear;
  MemoRetorno.Lines.Add(ATitulo);
  MemoRetorno.Lines.Add(StringOfChar('-', 80));
  MemoRetorno.Lines.Add(ARetorno);
end;

procedure TForm1.BTNAutenticaClick(Sender: TObject);
begin
MemoRetorno.Clear;

  try
    if Assigned(FClient) then
      FreeAndNil(FClient);

    FClient := TPortalUnicoClientD7.Create(
      'portalunico.siscomex.gov.br',
      'IMPEXP',
      ''
    );

    FClient.Autenticar;

    MemoRetorno.Lines.Add('Autenticado com sucesso.');
    MemoRetorno.Lines.Add('CSRF expira em: ' + FClient.Session.CsrfExpiration);
    MemoRetorno.Lines.Add('');
    MemoRetorno.Lines.Add('Agora clique em Consultar DUIMP.');
  except
    on E: Exception do
    begin
      if Assigned(FClient) then
        FreeAndNil(FClient);

      MemoRetorno.Lines.Add('Erro ao autenticar:');
      MemoRetorno.Lines.Add(E.Message);

      MessageDlg(
        'Erro ao autenticar no Portal Único:' + sLineBreak +
        E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

procedure TForm1.BTNConsultaDUIMPClick(Sender: TObject);
var
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  Retorno: string;
begin
  MemoRetorno.Clear;

  try
    GarantirAutenticado;

    NumeroDuimp := GetNumeroDuimp;
    VersaoDuimp := GetVersaoDuimp;

    MemoRetorno.Lines.Add('Consultando DUIMP...');
    MemoRetorno.Lines.Add('Número: ' + NumeroDuimp);
    MemoRetorno.Lines.Add('Versão: ' + IntToStr(VersaoDuimp));
    MemoRetorno.Lines.Add('');

    Retorno := FClient.ConsultarDuimp(
      NumeroDuimp,
      VersaoDuimp
    );

    ExibirRetorno(
      'DUIMP CONSULTADA COM SUCESSO' + sLineBreak +
      'Número: ' + NumeroDuimp + sLineBreak +
      'Versão: ' + IntToStr(VersaoDuimp) + sLineBreak +
      sLineBreak +
      'RETORNO JSON',
      Retorno
    );

  except
    on E: Exception do
    begin
      MemoRetorno.Clear;
      MemoRetorno.Lines.Add('Erro ao consultar DUIMP:');
      MemoRetorno.Lines.Add(E.Message);

      MessageDlg(
        'Erro ao consultar DUIMP:' + sLineBreak +
        E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

end.
