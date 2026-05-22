unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  uPortalUnicoClientD7;

type
  TForm1 = class(TForm)
    BTNAutentica: TButton;
    MemoRetorno: TMemo;
    EditNumeroDuimp: TEdit;
    EditVersaoDuimp: TEdit;
    EditNumeroItem: TEdit;
    LabelValorAFRMM: TLabel;
    EditValorAFRMM: TEdit;
    EditPcceClientId: TEdit;
    EditPcceClientSecret: TEdit;
    EditCertificadoNoSerie: TEdit;
    LabelPcceClientId: TLabel;
    LabelPcceClientSecret: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BTNAutenticaClick(Sender: TObject);
  private
    FClient: TPortalUnicoClientD7;

    procedure AddStatus(const AMsg: string);
    function TextoEdit(AEdit: TEdit): string;
    function ClientIdComplementarInformado: string;
    function ClientSecretComplementarInformado: string;
    function CertificadoNoSerieInformado: string;
    procedure AplicarChaveAcessoComplementar;
  public
    property Client: TPortalUnicoClientD7 read FClient;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FClient := nil;

  if Assigned(EditPcceClientSecret) then
    EditPcceClientSecret.PasswordChar := '*';
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Assigned(FClient) then
    FreeAndNil(FClient);
end;

procedure TForm1.AddStatus(const AMsg: string);
begin
  if Assigned(MemoRetorno) then
    MemoRetorno.Lines.Add(AMsg);
end;

function TForm1.TextoEdit(AEdit: TEdit): string;
begin
  Result := '';

  if Assigned(AEdit) then
    Result := Trim(AEdit.Text);
end;

function TForm1.ClientIdComplementarInformado: string;
begin
  Result := TextoEdit(EditPcceClientId);
end;

function TForm1.ClientSecretComplementarInformado: string;
begin
  Result := TextoEdit(EditPcceClientSecret);
end;

function TForm1.CertificadoNoSerieInformado: string;
begin
  Result := TextoEdit(EditCertificadoNoSerie);
end;

procedure TForm1.AplicarChaveAcessoComplementar;
var
  LClientId: string;
  LClientSecret: string;
begin
  if not Assigned(FClient) then
    Exit;

  LClientId := ClientIdComplementarInformado;
  LClientSecret := ClientSecretComplementarInformado;

  if (LClientId <> '') and (LClientSecret <> '') then
    FClient.SetChaveAcessoComplementar(LClientId, LClientSecret)
  else
    FClient.SetChaveAcessoComplementar('', '');
end;

procedure TForm1.BTNAutenticaClick(Sender: TObject);
var
  LUsouChaveComplementar: Boolean;
  LCertificadoNoSerie: string;
begin
  if Assigned(MemoRetorno) then
    MemoRetorno.Clear;

  try
    if Assigned(FClient) then
      FreeAndNil(FClient);

    LCertificadoNoSerie := CertificadoNoSerieInformado;

    FClient := TPortalUnicoClientD7.Create(
      'portalunico.siscomex.gov.br',
      'IMPEXP',
      LCertificadoNoSerie
    );

    LUsouChaveComplementar :=
      (ClientIdComplementarInformado <> '') and
      (ClientSecretComplementarInformado <> '');

    AplicarChaveAcessoComplementar;

    FClient.Autenticar;

    AddStatus('Autenticado no Portal Unico/DUIMP com sucesso.');
    AddStatus('Host...............: portalunico.siscomex.gov.br');
    AddStatus('Role-Type..........: IMPEXP');
    AddStatus('Autenticacao base..: e-CPF/certificado digital');

    if LCertificadoNoSerie <> '' then
      AddStatus('Certificado........: numero de serie informado; selecao manual nao aberta.')
    else
      AddStatus('Certificado........: numero de serie vazio; selecao manual aberta.');

    AddStatus('DUIMP CSRF expira..: ' + FClient.Session.CsrfExpiration);

    if LUsouChaveComplementar then
      AddStatus('Chave complementar.: Client-Id/Client-Secret enviados no POST /portal/api/autenticar.')
    else
      AddStatus('Chave complementar.: ignorada; Client-Id ou Client-Secret vazio/em branco.');

    AddStatus('');
    AddStatus('Modo atual.........: somente DUIMP.');
    AddStatus('PCCE/SEFAZ/Mercante: nao utilizados.');
  except
    on E: Exception do
    begin
      if Assigned(FClient) then
        FreeAndNil(FClient);

      AddStatus('Erro ao autenticar no Portal Unico/DUIMP.');
      AddStatus(E.Message);

      MessageDlg(
        'Erro ao autenticar no Portal Unico/DUIMP:' + sLineBreak +
        E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

end.
