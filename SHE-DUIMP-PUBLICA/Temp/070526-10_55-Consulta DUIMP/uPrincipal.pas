unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  SuperObject,
  uPortalUnicoClientD7,
  dxPageControl;

type
  TForm1 = class(TForm)
    BTNAutentica: TButton;
    MemoRetorno: TMemo;
    BTNConsultaDUIMP: TButton;
    dxPageControl1: TdxPageControl;
    TSCertificado: TdxTabSheet;
    LabelValorAFRMM: TLabel;
    LabelPcceClientId: TLabel;
    LabelPcceClientSecret: TLabel;
    LabelNumeroDuimp: TLabel;
    LabelVersaoDuimp: TLabel;
    LabelNumeroItem: TLabel;
    LabelCertificadoNoSerie: TLabel;
    EditNumeroDuimp: TEdit;
    EditVersaoDuimp: TEdit;
    EditNumeroItem: TEdit;
    EditValorAFRMM: TEdit;
    EditPcceClientId: TEdit;
    EditPcceClientSecret: TEdit;
    EditCertificadoNoSerie: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BTNAutenticaClick(Sender: TObject);
    procedure BTNConsultaDUIMPClick(Sender: TObject);
  private
    FClient: TPortalUnicoClientD7;

    procedure AddStatus(const AMsg: string);
    function TextoEdit(AEdit: TEdit): string;
    function ClientIdComplementarInformado: string;
    function ClientSecretComplementarInformado: string;
    function CertificadoNoSerieInformado: string;
    function NumeroDuimpInformado: string;
    function VersaoDuimpInformada: Integer;
    procedure GarantirAutenticado;
    procedure AplicarChaveAcessoComplementar;
    function JsonObjPath(AObj: ISuperObject; const APath: string): ISuperObject;
    function JsonStr(AObj: ISuperObject; const APath: string): string;
    function JsonFloat(AObj: ISuperObject; const APath: string): Double;
    function JsonInt(AObj: ISuperObject; const APath: string): Integer;
    procedure AddJsonStr(AObj: ISuperObject; const APath: string);
    procedure AddJsonFloat(AObj: ISuperObject; const APath: string);
    procedure AddJsonInt(AObj: ISuperObject; const APath: string);
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

function TForm1.NumeroDuimpInformado: string;
begin
  Result := TextoEdit(EditNumeroDuimp);
end;

function TForm1.VersaoDuimpInformada: Integer;
begin
  Result := StrToIntDef(TextoEdit(EditVersaoDuimp), 0);
end;

procedure TForm1.GarantirAutenticado;
begin
  if not Assigned(FClient) then
    raise Exception.Create('DUIMP nao autenticada. Execute BTNAutentica primeiro.');

  if Trim(FClient.Session.SetToken) = '' then
    raise Exception.Create('Sessao DUIMP sem Set-Token. Execute BTNAutentica primeiro.');

  if Trim(FClient.Session.CsrfToken) = '' then
    raise Exception.Create('Sessao DUIMP sem X-CSRF-Token. Execute BTNAutentica primeiro.');
end;

function TForm1.JsonObjPath(AObj: ISuperObject; const APath: string): ISuperObject;
begin
  Result := nil;

  if not Assigned(AObj) then
    Exit;

  try
    Result := AObj.O[APath];
  except
    Result := nil;
  end;
end;

function TForm1.JsonStr(AObj: ISuperObject; const APath: string): string;
var
  V: ISuperObject;
begin
  Result := '';
  V := JsonObjPath(AObj, APath);

  if not Assigned(V) then
    Exit;

  try
    if V.DataType = stNull then
      Result := ''
    else
      Result := Trim(V.AsString);
  except
    Result := '';
  end;
end;

function TForm1.JsonFloat(AObj: ISuperObject; const APath: string): Double;
var
  V: ISuperObject;
begin
  Result := 0;
  V := JsonObjPath(AObj, APath);

  if not Assigned(V) then
    Exit;

  try
    Result := V.AsDouble;
  except
    Result := 0;
  end;
end;

function TForm1.JsonInt(AObj: ISuperObject; const APath: string): Integer;
var
  V: ISuperObject;
begin
  Result := 0;
  V := JsonObjPath(AObj, APath);

  if not Assigned(V) then
    Exit;

  try
    Result := V.AsInteger;
  except
    Result := 0;
  end;
end;

procedure TForm1.AddJsonStr(AObj: ISuperObject; const APath: string);
begin
  AddStatus(APath + ': ' + JsonStr(AObj, APath));
end;

procedure TForm1.AddJsonFloat(AObj: ISuperObject; const APath: string);
begin
  AddStatus(APath + ': ' + FormatFloat('0.00', JsonFloat(AObj, APath)));
end;

procedure TForm1.AddJsonInt(AObj: ISuperObject; const APath: string);
begin
  AddStatus(APath + ': ' + IntToStr(JsonInt(AObj, APath)));
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


procedure TForm1.BTNConsultaDUIMPClick(Sender: TObject);
var
  LNumeroDuimp: string;
  LVersaoDuimp: Integer;
  LEndpoint: string;
  LRetorno: string;
  LRoot: ISuperObject;
begin
  if Assigned(MemoRetorno) then
    MemoRetorno.Clear;

  try
    GarantirAutenticado;

    LNumeroDuimp := NumeroDuimpInformado;
    LVersaoDuimp := VersaoDuimpInformada;

    if LNumeroDuimp = '' then
      raise Exception.Create('Informe o numero da DUIMP em EditNumeroDuimp.');

    if LVersaoDuimp <= 0 then
      raise Exception.Create('Informe a versao da DUIMP em EditVersaoDuimp.');

    LEndpoint :=
      'https://portalunico.siscomex.gov.br' +
      '/duimp-api/api/ext/duimp/' +
      LNumeroDuimp + '/' + IntToStr(LVersaoDuimp);

    AddStatus('DUIMP - CONSULTA GERAL');
    AddStatus('------------------------------------------------------------');
    AddStatus('endpoint: ' + LEndpoint);
    AddStatus('numero informado: ' + LNumeroDuimp);
    AddStatus('versao informada: ' + IntToStr(LVersaoDuimp));
    AddStatus('');

    LRetorno := FClient.ConsultarDuimp(LNumeroDuimp, LVersaoDuimp);
    LRoot := SO(LRetorno);

    if not Assigned(LRoot) then
      raise Exception.Create('Retorno da DUIMP nao e um JSON valido.');

    AddStatus('identificacao');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'identificacao.numero');
    AddJsonInt(LRoot, 'identificacao.versao');
    AddJsonStr(LRoot, 'identificacao.dataRegistro');
    AddJsonStr(LRoot, 'identificacao.chaveAcesso');
    AddJsonStr(LRoot, 'identificacao.responsavelRegistroNumero');
    AddStatus('');

    AddStatus('identificacao.importador');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'identificacao.importador.tipoImportador');
    AddJsonStr(LRoot, 'identificacao.importador.ni');
    AddStatus('');

    AddStatus('situacao');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'situacao.situacaoDuimp');
    AddJsonStr(LRoot, 'situacao.situacaoAnaliseRetificacao');
    AddJsonStr(LRoot, 'situacao.situacaoLicenciamento');
    AddJsonStr(LRoot, 'situacao.controleCarga');
    AddStatus('');

    AddStatus('carga');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'carga.unidadeDeclarada.codigo');
    AddJsonStr(LRoot, 'carga.tipoIdentificacaoCarga');
    AddJsonStr(LRoot, 'carga.identificacao');
    AddJsonStr(LRoot, 'carga.paisProcedencia.codigo');
    AddJsonStr(LRoot, 'carga.motivoSituacaoEspecial.codigo');
    AddStatus('');

    AddStatus('carga.frete');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'carga.frete.codigoMoedaNegociada');
    AddJsonFloat(LRoot, 'carga.frete.valorMoedaNegociada');
    AddJsonFloat(LRoot, 'carga.frete.valorTotalFrete');
    AddJsonFloat(LRoot, 'carga.frete.valorTotalFreteBRL');
    AddStatus('');

    AddStatus('carga.seguro');
    AddStatus('------------------------------------------------------------');
    AddJsonStr(LRoot, 'carga.seguro.codigoMoedaNegociada');
    AddJsonFloat(LRoot, 'carga.seguro.valorMoedaNegociada');
    AddJsonFloat(LRoot, 'carga.seguro.valorTotalSeguro');
    AddJsonFloat(LRoot, 'carga.seguro.valorTotalSeguroBRL');
    AddStatus('');

    AddStatus('tributos.mercadoria');
    AddStatus('------------------------------------------------------------');
    AddJsonFloat(LRoot, 'tributos.mercadoria.valorTotalLocalEmbarqueUSD');
    AddJsonFloat(LRoot, 'tributos.mercadoria.valorTotalLocalEmbarqueBRL');
    AddStatus('');

    AddStatus('RETORNO JSON ORIGINAL');
    AddStatus('------------------------------------------------------------');
    AddStatus(LRetorno);
  except
    on E: Exception do
    begin
      AddStatus('Erro ao consultar DUIMP.');
      AddStatus(E.Message);

      MessageDlg(
        'Erro ao consultar DUIMP:' + sLineBreak + E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

end.
