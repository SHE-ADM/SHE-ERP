unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  SuperObject,
  uPortalUnicoClientD7,
  uDuimpNFeItensCompletoD7,
  dxPageControl;

type
  TForm1 = class(TForm)
    MemoRetorno: TMemo;
    ScrollBox1: TScrollBox;
    BTNAutentica: TButton;
    BTNConsultaDUIMP: TButton;
    BTNImportador: TButton;
    BTNConsultaFrete: TButton;
    BTNConsultaCompleta: TButton;
    PCPrincipal: TdxPageControl;
    TSCertificado: TdxTabSheet;
    LabelPcceClientId: TLabel;
    LabelPcceClientSecret: TLabel;
    LabelNumeroDuimp: TLabel;
    LabelVersaoDuimp: TLabel;
    LabelNumeroItem: TLabel;
    LabelCertificadoNoSerie: TLabel;
    EditNumeroDuimp: TEdit;
    EditVersaoDuimp: TEdit;
    EditNumeroItem: TEdit;
    EditPcceClientId: TEdit;
    EditPcceClientSecret: TEdit;
    EditCertificadoNoSerie: TEdit;
    TSIdentificacao: TdxTabSheet;
    TSEmitente: TdxTabSheet;
    LabelEmitCNPJ: TLabel;
    LabelEmitxNome: TLabel;
    LabelEmitxFant: TLabel;
    LabelEmitenderEmitxLgr: TLabel;
    LabelEmitenderEmitnro: TLabel;
    LabelEmitenderEmitxBairro: TLabel;
    LabelEmitenderEmitcMun: TLabel;
    LabelEmitenderEmitxMun: TLabel;
    EditlEmitCNPJ: TEdit;
    EditEmitxNome: TEdit;
    EditEmitxFant: TEdit;
    EditEmitenderEmitxLgr: TEdit;
    EditEmitenderEmitnro: TEdit;
    EditEmitenderEmitxBairro: TEdit;
    EditEmitenderEmitcMun: TEdit;
    EditEmitenderEmitxMun: TEdit;
    LabelEmitenderEmitUF: TLabel;
    EditEmitenderEmitUF: TEdit;
    LabelEmitenderEmitCEP: TLabel;
    EditEmitenderEmitCEP: TEdit;
    LabelEmitenderEmitcPais: TLabel;
    EditEmitenderEmitcPais: TEdit;
    LabelEmitenderEmitxPais: TLabel;
    EditEmitenderEmitxPais: TEdit;
    EditEmitenderEmitFone: TEdit;
    LabelEmitenderEmitFone: TLabel;
    EditEmitIE: TEdit;
    LabelEmitIE: TLabel;
    EditEmitCRT: TEdit;
    LabelEmitCRT: TLabel;
    TSDestinatario: TdxTabSheet;
    LabelDestNome: TLabel;
    LabelDestenderDestxLgr: TLabel;
    LabelDestenderDestnro: TLabel;
    LabelDestenderDestxBairro: TLabel;
    LabelDestenderDestcMun: TLabel;
    LabelDestenderDestxMun: TLabel;
    EditDestxNome: TEdit;
    EditDestenderDestxLgr: TEdit;
    EditDestenderDestnro: TEdit;
    EditDestenderDestxBairro: TEdit;
    EditDestenderDestcMun: TEdit;
    EditDestenderDestxMun: TEdit;
    LabelDestenderDestUF: TLabel;
    EditDestenderDestUF: TEdit;
    LabelDestenderDestCEP: TLabel;
    EditDestenderDestCEP: TEdit;
    LabelDestenderDestcPais: TLabel;
    EditDestenderDestcPais: TEdit;
    LabelDestenderDestxPais: TLabel;
    EditDestenderDestxPais: TEdit;
    EditDestenderDestFone: TEdit;
    LabelDestenderDestFone: TLabel;
    EditDestindIEDest: TEdit;
    LabelDestindIEDest: TLabel;
    TSTransportadora: TdxTabSheet;
    LabelTranspCNPJ: TLabel;
    LabelTranspxNome: TLabel;
    LabelTranspxEnder: TLabel;
    LabelTranspxMun: TLabel;
    EditlTranspCNPJ: TEdit;
    EditTranspxNome: TEdit;
    EditTranspxEnder: TEdit;
    EditTranspxMun: TEdit;
    LabelTranspUF: TLabel;
    EditTranspUF: TEdit;
    EditTranspIE: TEdit;
    LabelTranspIE: TLabel;
    EditDestenderDestxCpl: TEdit;
    LabelDestenderDestxCpl: TLabel;
    TSProdutos: TdxTabSheet;
    LabeldetprodCFOP: TLabel;
    LabeldetprodUFDesemb: TLabel;
    EditldetprodCFOP: TEdit;
    EditdetprodUFDesemb: TEdit;
    EditIdecUF: TEdit;
    LabelIdecUF: TLabel;
    LabelIdenatOp: TLabel;
    EditIdenatOp: TEdit;
    LabelIdenNF: TLabel;
    EditIdenNF: TEdit;
    LabelIdetpNF: TLabel;
    EditIdetpNF: TEdit;
    EditIdeidDest: TEdit;
    LabelIdeidDest: TLabel;
    LabelIdecMunFG: TLabel;
    EditIdecMunFG: TEdit;
    LabelIdetpImp: TLabel;
    EditIdetpImp: TEdit;
    EditIdetpEmis: TEdit;
    LabelIdetpEmis: TLabel;
    LabelIdetpAmb: TLabel;
    EditIdetpAmb: TEdit;
    LabelIdefinNFe: TLabel;
    EditIdefinNFe: TEdit;
    EditIdeindFinal: TEdit;
    LabelIdeindFinal: TLabel;
    LabelIdeindPres: TLabel;
    EditIdeindPres: TEdit;
    EditIdeindIntermed: TEdit;
    LabelIdeindIntermed: TLabel;
    LabelICMSorig: TLabel;
    EditICMSorig: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BTNAutenticaClick(Sender: TObject);
    procedure BTNConsultaDUIMPClick(Sender: TObject);
    procedure BTNImportadorClick(Sender: TObject);
    procedure BTNConsultaFreteClick(Sender: TObject);
    procedure BTNConsultaCompletaClick(Sender: TObject);
  private
    FClient: TPortalUnicoClientD7;

    procedure AddStatus(const AMsg: string);
    function TextoEdit(AEdit: TEdit): string;
    function TextoEditPorNome(const ANomeComponente: string): string;
    function TextoEditAnyPorNome(const ANomesComponentes: array of string): string;
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
    procedure AddJsonTextBlock(AObj: ISuperObject; const APath: string);
  public
    property Client: TPortalUnicoClientD7 read FClient;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
{ * FALLBACK E REQUISITOS *
  * MAPA DE IDENTIFICAÇÕES E INSTRUÇÕES DOS COMPONENTES TLABELS E TEDITS *
  * ESSES COMPONENTES REPRESENTAM AS INFORMAÇÕES DO SISTEMA ERP *

  1) Número de série do certificado digital: LabelCertificadoNoSerie / EditCertificadoNoSerie
     observação: quando não preenchido, abrir janela de opções para selecionar o certificado digital desejado
                 quando preenchido usar o número de série informado para abrir diretamente o certificado digital
  2) Credenciais API DUIMP: LabelClienteID / EditClienteID
     observação: usar quando fizer sentido, pois a prioridade de autentcação é via certificado digital
  3) Número e versão DUIMP: LabelNumeroDuimp / EditNumeroDuimp
  4) Pesquisa item de produo específico: LabelNumeroItem / EditNumeroItem

  * TAG XML Identificação <ide> *
  Para a tag <cUF>         use o componente EditIdecUF
  Para a tag <cUF>         use o componente EditIdecUF
  Para a tag <natOp>       use o componente EditIdenatOp
  Para a tag <nNF>         use o componente EditIdenNF
  Para a tag <tpNF>        use o componente EditIdetpNF
  Para a tag <idDest>      use o componente EditIdeidDest
  Para a tag <cMunFG>      use o componente EditIdecMunFG
  Para a tag <tpImp>       use o componente EditIdetpImp
  Para a tag <tpEmis>      use o componente EditIdetpEmis
  Para a tag <tpAmb>       use o componente EditIdetpAmb
  Para a tag <finNFe>      use o componente EditIdefinNFe
  Para a tag <indFinal>    use o componente EditIdeindFinal
  Para a tag <indPres>     use o componente EditIdeindPres
  Para a tag <indIntermed> use o componente EditIdeindIntermed

  * TAG XML Emitente <emit> *
  Para a tag <CNPJ>    use o componente EditlEmitCNPJ
  Para a tag <xNome>   use o componente EditEmitxNome
  Para a tag <xFant>   use o componente EditEmitxFant
  Para a tag <xLgr>    use o componente EditEmitenderEmitxLgr
  Para a tag <nro>     use o componente EditEmitenderEmitnro
  Para a tag <xBairro> use o componente EditEmitenderEmitxBairro
  Para a tag <cMun>    use o componente EditEmitenderEmitcMun
  Para a tag <xMun>    use o componente EditEmitenderEmitxMun
  Para a tag <UF>      use o componente EditEmitenderEmitUF
  Para a tag <CEP>     use o componente EditEmitenderEmitCEP
  Para a tag <cPais>   use o componente EditEmitenderEmitcPais
  Para a tag <xPais>   use o componente EditEmitenderEmitxPais
  Para a tag <fone>    use o componente EditEmitenderEmitFone
  Para a tag <IE>      use o componente EditEmitIE
  Para a tag <CRT>     use o componente EditEmitCRT

  * TAG XML RDestinatário <dest> *
  Para a tag <xNome>     use o componente EditDestxNome
  Para a tag <xLgr>      use o componente EditDestenderDestxLgr
  Para a tag <nro>       use o componente EditDestenderDestnro
  Para a tag <xCpl>      use o componente EditDestenderDestxCpl
  Para a tag <xBairro>   use o componente EditDestenderDestxBairro
  Para a tag <cMun>      use o componente EditDestenderDestcMun
  Para a tag <xMun>      use o componente EditDestenderDestxMun
  Para a tag <UF>        use o componente EditDestenderDestUF
  Para a tag <CEP>       use o componente EditDestenderDestCEP
  Para a tag <cPais>     use o componente EditDestenderDestcPais
  Para a tag <xPais>     use o componente EditDestenderDestxPais
  Para a tag <fone>      use o componente EditDestenderDestFone
  Para a tag <indIEDest> use o componente EditDestindIEDest

  * TAG XML Transportadora *
  Para a tag <CNPJ>   use o componente EditlTranspCNPJ
  Para a tag <xNome>  use o componente EditTranspxNome
  Para a tag <IE>     use o componente EditTranspIE
  Para a tag <xEnder> use o componente EditTranspxEnder
  Para a tag <xMun>   use o componente EditTranspxMun
  Para a tag <UF>     use o componente EditTranspUF

  * TAG XML DETALHE DOS PRODUTOS *
  Para a tag <CFOP>     use o componente EditdetprodCFOP
  Para a tag <UFDesemb> use o componente EditdetprodUFDesemb
  }

  FClient := nil;

  if Assigned(EditPcceClientSecret) then
    EditPcceClientSecret.PasswordChar := '*';

  {
    Compatibilidade: se o botao ainda nao existir no .dfm atual,
    ele sera criado em tempo de execucao. Quando voce incluir o botao
    visualmente no form, esta rotina apenas garante o evento OnClick.
  }
  if not Assigned(BTNConsultaFrete) then
  begin
    BTNConsultaFrete := TButton.Create(Self);
    BTNConsultaFrete.Name := 'BTNConsultaFrete';

    if Assigned(BTNImportador) and Assigned(BTNImportador.Parent) then
      BTNConsultaFrete.Parent := BTNImportador.Parent
    else
      BTNConsultaFrete.Parent := Self;

    BTNConsultaFrete.Caption := 'Consultar Frete';
    BTNConsultaFrete.Width := 120;
    BTNConsultaFrete.Height := 25;

    if Assigned(BTNImportador) then
    begin
      BTNConsultaFrete.Left := BTNImportador.Left + BTNImportador.Width + 8;
      BTNConsultaFrete.Top := BTNImportador.Top;
    end
    else
    begin
      BTNConsultaFrete.Left := 16;
      BTNConsultaFrete.Top := 160;
    end;
  end;

  BTNConsultaFrete.OnClick := BTNConsultaFreteClick;
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

function TForm1.TextoEditPorNome(const ANomeComponente: string): string;
var
  C: TComponent;
begin
  Result := '';

  if Trim(ANomeComponente) = '' then
    Exit;

  C := FindComponent(Trim(ANomeComponente));
  if Assigned(C) and (C is TEdit) then
    Result := TextoEdit(TEdit(C));
end;

function TForm1.TextoEditAnyPorNome(const ANomesComponentes: array of string): string;
var
  I: Integer;
begin
  Result := '';

  for I := Low(ANomesComponentes) to High(ANomesComponentes) do
  begin
    Result := TextoEditPorNome(ANomesComponentes[I]);
    if Trim(Result) <> '' then
      Exit;
  end;
end;

function TForm1.ClientIdComplementarInformado: string;
begin
  { Prioridade para o nome oficial informado no mapa ERP: EditClienteID.
    EditPcceClientId fica apenas como compatibilidade com telas antigas. }
  Result := TextoEditAnyPorNome(['EditClienteID', 'EditPcceClientId']);
end;

function TForm1.ClientSecretComplementarInformado: string;
begin
  Result := TextoEditAnyPorNome(['EditPcceClientSecret']);
end;

function TForm1.CertificadoNoSerieInformado: string;
begin
  Result := TextoEditAnyPorNome(['EditCertificadoNoSerie']);
end;

function TForm1.NumeroDuimpInformado: string;
begin
  Result := TextoEditAnyPorNome(['EditNumeroDuimp']);
end;

function TForm1.VersaoDuimpInformada: Integer;
begin
  Result := StrToIntDef(TextoEditAnyPorNome(['EditVersaoDuimp']), 0);
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

procedure TForm1.AddJsonTextBlock(AObj: ISuperObject; const APath: string);
var
  LTexto: string;
  SL: TStringList;
  I: Integer;
begin
  AddStatus(APath + ':');

  LTexto := JsonStr(AObj, APath);

  if Trim(LTexto) = '' then
  begin
    AddStatus('  <nao retornado>');
    Exit;
  end;

  LTexto := StringReplace(LTexto, #13#10, #10, [rfReplaceAll]);
  LTexto := StringReplace(LTexto, #13, #10, [rfReplaceAll]);

  SL := TStringList.Create;
  try
    SL.Text := LTexto;

    for I := 0 to SL.Count - 1 do
      AddStatus('  ' + SL[I]);
  finally
    SL.Free;
  end;
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
    AddJsonStr(LRoot, 'identificacao.importador.nome');
    AddJsonStr(LRoot, 'identificacao.importador.endereco');
    AddStatus('');

    AddStatus('identificacao.informacaoComplementar');
    AddStatus('------------------------------------------------------------');
    AddJsonTextBlock(LRoot, 'identificacao.informacaoComplementar');
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

procedure TForm1.BTNImportadorClick(Sender: TObject);
var
  LNumeroDuimp: string;
  LVersaoDuimp: Integer;
  LEndpoint: string;
  LRetorno: string;
  LRoot: ISuperObject;
  LTipoImportador: string;
  LNI: string;
  LNome: string;
  LEndereco: string;

  function ApenasDigitosLocal(const ATexto: string): string;
  var
    I: Integer;
  begin
    Result := '';
    for I := 1 to Length(ATexto) do
      if ATexto[I] in ['0'..'9'] then
        Result := Result + ATexto[I];
  end;

  function ValorOuNaoRetornadoLocal(const AValor: string): string;
  begin
    Result := Trim(AValor);
    if Result = '' then
      Result := '<nao retornado>';
  end;

  procedure AddCampoOrigemLocal(const ATagXml, ACampoJson, AValor: string);
  begin
    AddStatus(ATagXml + ' <= ' + ACampoJson + ': ' + ValorOuNaoRetornadoLocal(AValor));
  end;

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

    AddStatus('DUIMP - IMPORTADOR / DETALHE DO INTERVENIENTE');
    AddStatus('------------------------------------------------------------');
    AddStatus('endpoint: ' + LEndpoint);
    AddStatus('numero informado: ' + LNumeroDuimp);
    AddStatus('versao informada: ' + IntToStr(LVersaoDuimp));
    AddStatus('');

    LRetorno := FClient.ConsultarDuimp(LNumeroDuimp, LVersaoDuimp);
    LRoot := SO(LRetorno);

    if not Assigned(LRoot) then
      raise Exception.Create('Retorno da DUIMP nao e um JSON valido.');

    LTipoImportador := JsonStr(LRoot, 'identificacao.importador.tipoImportador');
    LNI := ApenasDigitosLocal(JsonStr(LRoot, 'identificacao.importador.ni'));
    LNome := JsonStr(LRoot, 'identificacao.importador.nome');
    LEndereco := JsonStr(LRoot, 'identificacao.importador.endereco');

    AddStatus('identificacao.importador');
    AddStatus('------------------------------------------------------------');
    AddStatus('identificacao.importador.tipoImportador: ' + ValorOuNaoRetornadoLocal(LTipoImportador));
    AddStatus('identificacao.importador.ni: ' + ValorOuNaoRetornadoLocal(LNI));
    AddStatus('identificacao.importador.nome: ' + ValorOuNaoRetornadoLocal(LNome));
    AddStatus('identificacao.importador.endereco: ' + ValorOuNaoRetornadoLocal(LEndereco));
    AddStatus('');

    AddStatus('VALIDACAO DO NI DO IMPORTADOR');
    AddStatus('------------------------------------------------------------');
    if LNI = '' then
      AddStatus('identificacao.importador.ni: <nao retornado>')
    else if Length(LNI) = 14 then
      AddStatus('identificacao.importador.ni identificado como CNPJ com 14 digitos.')
    else if Length(LNI) = 11 then
      AddStatus('identificacao.importador.ni identificado como CPF com 11 digitos.')
    else
      AddStatus('identificacao.importador.ni retornou ' + IntToStr(Length(LNI)) + ' digitos; validar cadastro antes da NF-e.');
    AddStatus('');

    AddStatus('MAPEAMENTO PARA NF-e - tag <emit>');
    AddStatus('------------------------------------------------------------');

    if Length(LNI) = 14 then
      AddCampoOrigemLocal('<emit><CNPJ>', 'identificacao.importador.ni', LNI)
    else if Length(LNI) = 11 then
      AddCampoOrigemLocal('<emit><CPF>', 'identificacao.importador.ni', LNI)
    else
      AddCampoOrigemLocal('<emit><CNPJ>/<CPF>', 'identificacao.importador.ni', LNI);

    AddCampoOrigemLocal('<emit><xNome>', 'identificacao.importador.nome', LNome);
    AddCampoOrigemLocal('<emit><enderEmit> agregado', 'identificacao.importador.endereco', LEndereco);
    AddStatus('');

    AddStatus('CAMPOS DA tag <emit> NAO DETALHADOS PELA DUIMP GERAL');
    AddStatus('------------------------------------------------------------');
    AddStatus('<emit><xFant>: <nao retornado pela DUIMP geral>');
    AddStatus('<emit><enderEmit><xLgr>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><nro>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><xCpl>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><xBairro>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><cMun>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><xMun>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><UF>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><CEP>: derivar/validar pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><cPais>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><xPais>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><enderEmit><fone>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><IE>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('<emit><IEST>: preencher pelo cadastro fiscal do ERP/RFB quando aplicavel');
    AddStatus('<emit><IM>: preencher pelo cadastro fiscal do ERP/RFB quando aplicavel');
    AddStatus('<emit><CNAE>: preencher pelo cadastro fiscal do ERP/RFB quando aplicavel');
    AddStatus('<emit><CRT>: preencher pelo cadastro fiscal do ERP/RFB');
    AddStatus('');

    AddStatus('OBSERVACAO');
    AddStatus('------------------------------------------------------------');
    AddStatus('A DUIMP geral identifica o importador/interveniente e pode retornar nome/endereco agregado.');
    AddStatus('Para gerar XML NF-e valido, os campos cadastrais/fiscais obrigatorios da tag <emit>');
    AddStatus('devem ser completados e validados no cadastro fiscal do ERP/RFB antes da emissao.');
  except
    on E: Exception do
    begin
      AddStatus('Erro ao consultar dados detalhe do importador.');
      AddStatus(E.Message);

      MessageDlg(
        'Erro ao consultar dados detalhe do importador:' + sLineBreak + E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

procedure TForm1.BTNConsultaFreteClick(Sender: TObject);
var
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  RetornoDuimp: string;
  RetornoValores: string;
  RetornoItens: string;
  ErroValores: string;
  RootDuimp: ISuperObject;
  RootValores: ISuperObject;
  RootItens: ISuperObject;
  ArrItens: TSuperArray;
  I: Integer;
  TotalPesoLiquido: Double;
  TotalPesoBruto: Double;
  TotalFreteBRL: Double;
  TotalSeguroBRL: Double;
  TotalValorAduaneiroBRL: Double;
  ItensPesoLiquido: Double;
  ItensPesoBruto: Double;
  ItensFreteBRL: Double;
  ItensSeguroBRL: Double;
  ItensValorAduaneiroBRL: Double;
  MoedaFrete: string;
  ValorFreteMoeda: string;
  UnidadeDeclarada: string;
  TipoIdentificacaoCarga: string;
  IdentificacaoCarga: string;
  QuantidadeItens: Integer;
  ModalTransporte: string;
  TransportadorNI: string;
  TransportadorNome: string;
  TransportadorIE: string;
  TransportadorEndereco: string;
  TransportadorMunicipio: string;
  TransportadorUF: string;
  StatusObs: string;

  function OnlyDigitsLocal(const S: string): string;
  var
    J: Integer;
  begin
    Result := '';
    for J := 1 to Length(S) do
      if S[J] in ['0'..'9'] then
        Result := Result + S[J];
  end;

  function ValorOuNaoRetornadoLocal(const S: string): string;
  begin
    Result := Trim(S);
    if Result = '' then
      Result := '<nao retornado>';
  end;

  function ValorFloatTextoLocal(const V: Double; const Casas: Integer): string;
  begin
    if V = 0 then
    begin
      Result := '<nao retornado>';
      Exit;
    end;

    if Casas = 3 then
      Result := FormatFloat('0.000', V)
    else
      Result := FormatFloat('0.00', V);

    Result := StringReplace(Result, ',', '.', [rfReplaceAll]);
  end;

  function JsonStrAnyLocal(AObj: ISuperObject; const APaths: array of string): string;
  var
    J: Integer;
  begin
    Result := '';

    if not Assigned(AObj) then
      Exit;

    for J := Low(APaths) to High(APaths) do
    begin
      Result := JsonStr(AObj, APaths[J]);
      if Trim(Result) <> '' then
        Exit;
    end;
  end;

  function JsonFloatAnyLocal(AObj: ISuperObject; const APaths: array of string): Double;
  var
    J: Integer;
  begin
    Result := 0;

    if not Assigned(AObj) then
      Exit;

    for J := Low(APaths) to High(APaths) do
    begin
      Result := JsonFloat(AObj, APaths[J]);
      if Result <> 0 then
        Exit;
    end;
  end;

  function KeyMatchLocal(const AKey: string; const ATermos: array of string): Boolean;
  var
    J: Integer;
    K: string;
    T: string;
  begin
    Result := False;
    K := LowerCase(Trim(AKey));

    for J := Low(ATermos) to High(ATermos) do
    begin
      T := LowerCase(Trim(ATermos[J]));
      if K = T then
      begin
        Result := True;
        Exit;
      end;
    end;
  end;

  function FloatFromObjLocal(AObj: ISuperObject): Double;
  begin
    Result := 0;

    if not Assigned(AObj) then
      Exit;

    try
      if AObj.DataType in [stInt, stDouble] then
      begin
        Result := AObj.AsDouble;
        Exit;
      end;

      if AObj.DataType = stString then
      begin
        Result := StrToFloatDef(StringReplace(Trim(AObj.AsString), '.', DecimalSeparator, [rfReplaceAll]), 0);
        Exit;
      end;

      if AObj.DataType = stObject then
      begin
        Result := JsonFloatAnyLocal(AObj, [
          'valorBRL',
          'valorTotalBRL',
          'valorTotalFreteBRL',
          'valorFreteBRL',
          'valor',
          'valorTotal'
        ]);
      end;
    except
      Result := 0;
    end;
  end;

  function JsonFindFloatByKeyLocal(AObj: ISuperObject; const ATermos: array of string): Double;
  var
    Iter: TSuperObjectIter;
    Valor: ISuperObject;
    J: Integer;
  begin
    Result := 0;

    if not Assigned(AObj) then
      Exit;

    case AObj.DataType of
      stObject:
        begin
          if ObjectFindFirst(AObj, Iter) then
          begin
            try
              repeat
                Valor := Iter.val;

                if KeyMatchLocal(Iter.key, ATermos) then
                begin
                  Result := FloatFromObjLocal(Valor);
                  if Result <> 0 then
                    Exit;
                end;

                if Assigned(Valor) and (Valor.DataType in [stObject, stArray]) then
                begin
                  Result := JsonFindFloatByKeyLocal(Valor, ATermos);
                  if Result <> 0 then
                    Exit;
                end;
              until not ObjectFindNext(Iter);
            finally
              ObjectFindClose(Iter);
            end;
          end;
        end;

      stArray:
        begin
          for J := 0 to AObj.AsArray.Length - 1 do
          begin
            if Assigned(AObj.AsArray.O[J]) then
            begin
              Result := JsonFindFloatByKeyLocal(AObj.AsArray.O[J], ATermos);
              if Result <> 0 then
                Exit;
            end;
          end;
        end;
    end;
  end;

  function GetJsonArrayFromRootLocal(ARoot: ISuperObject): TSuperArray;
  begin
    Result := nil;

    if not Assigned(ARoot) then
      Exit;

    if ARoot.DataType = stArray then
    begin
      Result := ARoot.AsArray;
      Exit;
    end;

    try
      if Assigned(ARoot.A['itens']) then
      begin
        Result := ARoot.A['itens'];
        Exit;
      end;
    except
    end;

    try
      if Assigned(ARoot.A['listaItens']) then
      begin
        Result := ARoot.A['listaItens'];
        Exit;
      end;
    except
    end;

    try
      if Assigned(ARoot.A['content']) then
      begin
        Result := ARoot.A['content'];
        Exit;
      end;
    except
    end;
  end;

  function ItemPesoLiquidoLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'mercadoria.pesoLiquido',
      'caracterizacao.pesoLiquido',
      'caracterizacao.pesoLiqui',
      'pesoLiquido'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['pesoLiquido', 'pesoLiqui']);
  end;

  function ItemPesoBrutoLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'mercadoria.pesoBruto',
      'caracterizacao.pesoBruto',
      'pesoBruto'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['pesoBruto']);
  end;

  function ItemFreteBRLLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'condicaoVenda.frete.valorBRL',
      'condicaoVenda.frete.valorTotalBRL',
      'carga.frete.valorBRL',
      'frete.valorBRL',
      'frete.valorTotalBRL',
      'valorFreteBRL'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['valorFreteBRL', 'frete']);
  end;

  function ItemSeguroBRLLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'condicaoVenda.seguro.valorBRL',
      'condicaoVenda.seguro.valorTotalBRL',
      'seguro.valorBRL',
      'seguro.valorTotalBRL',
      'valorSeguroBRL'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['valorSeguroBRL', 'seguro']);
  end;

  function ItemValorAduaneiroBRLLocal(AItem: ISuperObject): Double;
  begin
    Result := JsonFloatAnyLocal(AItem, [
      'tributos.mercadoria.valorAduaneiroBRL',
      'tributos.mercadoria.valorAduaneiro.valorBRL',
      'tributos.mercadoria.valorAduaneiro.valorTotalBRL',
      'mercadoria.valorAduaneiroBRL',
      'mercadoria.valorAduaneiro.valorBRL',
      'mercadoria.valorAduaneiro.valorTotalBRL',
      'valorAduaneiroBRL',
      'valorAduaneiro.valorBRL',
      'valorAduaneiro.valorTotalBRL'
    ]);

    if Result = 0 then
      Result := JsonFindFloatByKeyLocal(AItem, ['valorAduaneiroBRL', 'valorAduaneiro']);
  end;

begin
  if Assigned(MemoRetorno) then
    MemoRetorno.Clear;

  try
    GarantirAutenticado;

    NumeroDuimp := NumeroDuimpInformado;
    VersaoDuimp := VersaoDuimpInformada;

    if NumeroDuimp = '' then
      raise Exception.Create('Informe o numero da DUIMP em EditNumeroDuimp.');

    if VersaoDuimp <= 0 then
      raise Exception.Create('Informe a versao da DUIMP em EditVersaoDuimp.');

    AddStatus('Consultando carga, transito, peso e frete pela DUIMP...');
    AddStatus('DUIMP: ' + NumeroDuimp);
    AddStatus('Versao: ' + IntToStr(VersaoDuimp));
    AddStatus('');

    RetornoDuimp := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);
    RootDuimp := SO(RetornoDuimp);

    if not Assigned(RootDuimp) then
      raise Exception.Create('JSON invalido no retorno dos dados gerais da DUIMP.');

    RootValores := nil;
    RetornoValores := '';
    ErroValores := '';
    StatusObs := '';

    { Regra atual: consumir somente endpoints de consulta da DUIMP.
      Nao chamar /valores-calculados, pois em DUIMP desembaracada este servico
      retorna DIMP-ER8505 e e restrito a versao em elaboracao. }
    StatusObs := 'Endpoint /valores-calculados ignorado por regra: consulta somente via dados gerais + itens da DUIMP.';

    MoedaFrete := JsonStrAnyLocal(RootDuimp, [
      'carga.frete.codigoMoedaNegociada',
      'frete.codigoMoedaNegociada',
      'carga.frete.moeda.codigo',
      'carga.frete.moedaNegociada.codigo',
      'carga.codigoMoedaFrete'
    ]);

    ValorFreteMoeda := JsonStrAnyLocal(RootDuimp, [
      'carga.frete.valorMoedaNegociada',
      'frete.valorMoedaNegociada',
      'carga.frete.valorTotalMoedaNegociada',
      'carga.frete.valorNaMoedaNegociada'
    ]);

    TotalFreteBRL := JsonFloatAnyLocal(RootDuimp, [
      'carga.frete.valorTotalBRL',
      'carga.frete.valorTotalFreteBRL',
      'carga.frete.valorTotalFreteEmReal',
      'carga.frete.valorTotalFreteReal',
      'carga.valorFreteTotalBRL',
      'carga.valorTotalFreteBRL',
      'carga.valorTotalFrete'
    ]);

    TotalSeguroBRL := JsonFloatAnyLocal(RootDuimp, [
      'carga.seguro.valorTotalSeguroBRL',
      'carga.seguro.valorTotalBRL',
      'seguro.valorTotalBRL',
      'valorSeguroTotalBRL'
    ]);

    TotalValorAduaneiroBRL := JsonFloatAnyLocal(RootDuimp, [
      'tributos.mercadoria.valorAduaneiroBRL',
      'carga.valorAduaneiroBRL',
      'valorAduaneiroBRL'
    ]);

    TotalPesoLiquido := JsonFloatAnyLocal(RootDuimp, [
      'carga.pesoLiquido',
      'carga.dadosCarga.pesoLiquido',
      'carga.pesoLiquidoTotal'
    ]);

    TotalPesoBruto := JsonFloatAnyLocal(RootDuimp, [
      'carga.pesoBruto',
      'carga.dadosCarga.pesoBruto',
      'carga.pesoBrutoTotal'
    ]);

    ModalTransporte := JsonStrAnyLocal(RootDuimp, [
      'carga.modalTransporte',
      'carga.modalidadeTransporte',
      'carga.viaTransporte',
      'carga.dadosCarga.modalTransporte',
      'carga.dadosCarga.viaTransporte'
    ]);

    UnidadeDeclarada := JsonStrAnyLocal(RootDuimp, [
      'carga.unidadeDeclarada.codigo',
      'carga.unidadeDeclarada',
      'carga.unidadeCarga.codigo',
      'carga.unidadeCarga'
    ]);

    TipoIdentificacaoCarga := JsonStrAnyLocal(RootDuimp, [
      'carga.tipoIdentificacaoCarga',
      'carga.tipoIdentificacao',
      'carga.tipoCarga'
    ]);

    IdentificacaoCarga := JsonStrAnyLocal(RootDuimp, [
      'carga.identificacao',
      'carga.numeroConhecimento',
      'carga.conhecimentoCarga',
      'carga.conhecimentoCarga.numero',
      'carga.numeroCE',
      'carga.ceMercante'
    ]);

    QuantidadeItens := JsonInt(RootDuimp, 'quantidadeItens');

    TransportadorNI := OnlyDigitsLocal(JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.ni',
      'carga.transportador.cnpj',
      'carga.transportador.cpf',
      'carga.dadosTransportador.ni'
    ]));

    TransportadorNome := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.nome',
      'carga.transportador.nomeTransportador',
      'carga.dadosTransportador.nome'
    ]);

    TransportadorIE := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.ie',
      'carga.transportador.inscricaoEstadual',
      'carga.dadosTransportador.ie'
    ]);

    TransportadorEndereco := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.endereco',
      'carga.transportador.logradouro',
      'carga.dadosTransportador.endereco'
    ]);

    TransportadorMunicipio := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.municipio',
      'carga.transportador.nomeMunicipio',
      'carga.dadosTransportador.municipio'
    ]);

    TransportadorUF := JsonStrAnyLocal(RootDuimp, [
      'carga.transportador.uf',
      'carga.transportador.siglaUf',
      'carga.dadosTransportador.uf'
    ]);

    ItensPesoLiquido := 0;
    ItensPesoBruto := 0;
    ItensFreteBRL := 0;
    ItensSeguroBRL := 0;
    ItensValorAduaneiroBRL := 0;

    RetornoItens := FClient.ConsultarDuimpItens(NumeroDuimp, VersaoDuimp);
    RootItens := SO(RetornoItens);

    if not Assigned(RootItens) then
      raise Exception.Create('JSON invalido no retorno dos itens da DUIMP.');

    ArrItens := GetJsonArrayFromRootLocal(RootItens);

    if not Assigned(ArrItens) then
      raise Exception.Create('Nao foi encontrado array de itens no retorno da DUIMP.');

    if QuantidadeItens = 0 then
      QuantidadeItens := ArrItens.Length;

    for I := 0 to ArrItens.Length - 1 do
    begin
      if Assigned(ArrItens.O[I]) then
      begin
        ItensPesoLiquido := ItensPesoLiquido + ItemPesoLiquidoLocal(ArrItens.O[I]);
        ItensPesoBruto := ItensPesoBruto + ItemPesoBrutoLocal(ArrItens.O[I]);
        ItensFreteBRL := ItensFreteBRL + ItemFreteBRLLocal(ArrItens.O[I]);
        ItensSeguroBRL := ItensSeguroBRL + ItemSeguroBRLLocal(ArrItens.O[I]);
        ItensValorAduaneiroBRL := ItensValorAduaneiroBRL + ItemValorAduaneiroBRLLocal(ArrItens.O[I]);
      end;

      Application.ProcessMessages;
    end;

    { Consolida dados que existem nos itens, mas podem nao aparecer no bloco geral
      da DUIMP registrada. }
    if TotalPesoLiquido = 0 then
      TotalPesoLiquido := ItensPesoLiquido;

    if TotalPesoBruto = 0 then
      TotalPesoBruto := ItensPesoBruto;

    if TotalFreteBRL = 0 then
      TotalFreteBRL := ItensFreteBRL;

    if TotalSeguroBRL = 0 then
      TotalSeguroBRL := ItensSeguroBRL;

    if TotalValorAduaneiroBRL = 0 then
      TotalValorAduaneiroBRL := ItensValorAduaneiroBRL;

    AddStatus('DUIMP - CONSULTA DE FRETE / TRANSPORTE');
    AddStatus('------------------------------------------------------------');
    AddStatus('endpoint dados gerais: https://portalunico.siscomex.gov.br/duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp));
    AddStatus('endpoint itens: https://portalunico.siscomex.gov.br/duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp) + '/itens');
    AddStatus('endpoint valores calculados: nao consumido por regra; usar somente endpoints de consulta DUIMP');
    AddStatus('numero informado: ' + NumeroDuimp);
    AddStatus('versao informada: ' + IntToStr(VersaoDuimp));
    AddStatus('');

    AddStatus('carga.frete');
    AddStatus('------------------------------------------------------------');
    AddStatus('carga.frete.codigoMoedaNegociada: ' + ValorOuNaoRetornadoLocal(MoedaFrete));
    AddStatus('carga.frete.valorMoedaNegociada: ' + ValorOuNaoRetornadoLocal(ValorFreteMoeda));
    AddStatus('frete BRL consolidado pelos itens/dados gerais: ' + ValorFloatTextoLocal(TotalFreteBRL, 2));
    AddStatus('seguro BRL consolidado pelos itens/dados gerais: ' + ValorFloatTextoLocal(TotalSeguroBRL, 2));
    AddStatus('valor aduaneiro BRL consolidado pelos itens: ' + ValorFloatTextoLocal(TotalValorAduaneiroBRL, 2));
    AddStatus('');

    AddStatus('carga - identificacao');
    AddStatus('------------------------------------------------------------');
    AddStatus('carga.unidadeDeclarada.codigo: ' + ValorOuNaoRetornadoLocal(UnidadeDeclarada));
    AddStatus('carga.tipoIdentificacaoCarga: ' + ValorOuNaoRetornadoLocal(TipoIdentificacaoCarga));
    AddStatus('carga.identificacao: ' + ValorOuNaoRetornadoLocal(IdentificacaoCarga));
    AddStatus('quantidadeItens: ' + IntToStr(QuantidadeItens));
    AddStatus('');

    AddStatus('carga / volumes / pesos');
    AddStatus('------------------------------------------------------------');
    AddStatus('carga.modalTransporte: ' + ValorOuNaoRetornadoLocal(ModalTransporte));
    AddStatus('carga.quantidadeVolumes: <nao retornado>');
    AddStatus('peso liquido consolidado pelos itens: ' + ValorFloatTextoLocal(TotalPesoLiquido, 3));
    AddStatus('peso bruto consolidado: ' + ValorFloatTextoLocal(TotalPesoBruto, 3));
    AddStatus('');

    AddStatus('transportador, quando retornado no JSON');
    AddStatus('------------------------------------------------------------');
    AddStatus('carga.transportador.ni: ' + ValorOuNaoRetornadoLocal(TransportadorNI));
    AddStatus('carga.transportador.nome: ' + ValorOuNaoRetornadoLocal(TransportadorNome));
    AddStatus('carga.transportador.ie: ' + ValorOuNaoRetornadoLocal(TransportadorIE));
    AddStatus('carga.transportador.endereco: ' + ValorOuNaoRetornadoLocal(TransportadorEndereco));
    AddStatus('carga.transportador.municipio: ' + ValorOuNaoRetornadoLocal(TransportadorMunicipio));
    AddStatus('carga.transportador.uf: ' + ValorOuNaoRetornadoLocal(TransportadorUF));
    AddStatus('');

    AddStatus('MAPEAMENTO PARA NF-e - tag <transp>');
    AddStatus('------------------------------------------------------------');
    AddStatus('<transp>');
    AddStatus('  <modFrete>: <pendente: definir pelo ERP conforme modalidade fiscal da NF-e>');
    AddStatus('  <transporta>');

    if Length(TransportadorNI) = 14 then
      AddStatus('    <CNPJ> <= carga.transportador.ni: ' + TransportadorNI)
    else if Length(TransportadorNI) = 11 then
      AddStatus('    <CPF> <= carga.transportador.ni: ' + TransportadorNI)
    else
      AddStatus('    <CNPJ>/<CPF> <= carga.transportador.ni: <pendente: transportador nao retornado ou NI invalido>');

    AddStatus('    <xNome> <= carga.transportador.nome: ' + ValorOuNaoRetornadoLocal(TransportadorNome));
    AddStatus('    <IE> <= carga.transportador.ie: ' + ValorOuNaoRetornadoLocal(TransportadorIE));
    AddStatus('    <xEnder> <= carga.transportador.endereco: ' + ValorOuNaoRetornadoLocal(TransportadorEndereco));
    AddStatus('    <xMun> <= carga.transportador.municipio: ' + ValorOuNaoRetornadoLocal(TransportadorMunicipio));
    AddStatus('    <UF> <= carga.transportador.uf: ' + ValorOuNaoRetornadoLocal(TransportadorUF));
    AddStatus('  </transporta>');
    AddStatus('  <vol>');
    AddStatus('    <qVol> <= carga.quantidadeVolumes: <nao retornado>');
    AddStatus('    <pesoL> <= soma dos itens: ' + ValorFloatTextoLocal(TotalPesoLiquido, 3));
    AddStatus('    <pesoB> <= carga/itens: ' + ValorFloatTextoLocal(TotalPesoBruto, 3));
    AddStatus('  </vol>');
    AddStatus('</transp>');
    AddStatus('');

    AddStatus('VALORES DE FRETE PARA USO NO XML NF-e');
    AddStatus('------------------------------------------------------------');
    AddStatus('frete DUIMP localizado <= carga.frete.valorMoedaNegociada: ' + ValorOuNaoRetornadoLocal(ValorFreteMoeda) + ' ' + ValorOuNaoRetornadoLocal(MoedaFrete));
    AddStatus('<det><prod><vFrete> <= frete BRL consolidado/rateavel: ' + ValorFloatTextoLocal(TotalFreteBRL, 2));
    AddStatus('<total><ICMSTot><vFrete> <= somatorio dos itens/rateio do frete em BRL: ' + ValorFloatTextoLocal(TotalFreteBRL, 2));
    AddStatus('<det><prod><vSeg> <= seguro BRL consolidado/rateavel: ' + ValorFloatTextoLocal(TotalSeguroBRL, 2));
    AddStatus('valor aduaneiro BRL <= soma dos itens: ' + ValorFloatTextoLocal(TotalValorAduaneiroBRL, 2));
    AddStatus('moeda do frete DUIMP <= carga.frete.codigoMoedaNegociada: ' + ValorOuNaoRetornadoLocal(MoedaFrete));
    AddStatus('valor do frete na moeda negociada <= carga.frete.valorMoedaNegociada: ' + ValorOuNaoRetornadoLocal(ValorFreteMoeda));
    AddStatus('modalidade/via de transporte <= carga.modalTransporte: ' + ValorOuNaoRetornadoLocal(ModalTransporte));
    AddStatus('');

    AddStatus('OBSERVACAO');
    AddStatus('------------------------------------------------------------');
    AddStatus('Esta rotina consome somente endpoints de consulta: dados gerais da DUIMP e itens. Nao chama /valores-calculados.');
    AddStatus('O endpoint /valores-calculados nao e consumido neste fluxo, pois e restrito a DUIMP em elaboracao e pode retornar DIMP-ER8505 em DUIMP desembaracada.');
    AddStatus('A tag <transp> da NF-e nao recebe diretamente o valor do frete.');
    AddStatus('O valor do frete deve ser rateado nos itens em <det><prod><vFrete> e totalizado em <total><ICMSTot><vFrete>.');
    AddStatus('Quando a DUIMP nao retornar transportador, IE, endereco, municipio, UF ou volumes, preencher pelo ERP/cadastro logistico.');

    if StatusObs <> '' then
      AddStatus(StatusObs);

    if TotalPesoBruto = 0 then
      AddStatus('Atencao: peso bruto total nao foi retornado pela API de dados gerais/itens; no Portal Web ele pode aparecer na aba Carga.');

    if ModalTransporte = '' then
      AddStatus('Atencao: modalidade/via de transporte nao foi retornada na consulta geral DUIMP.');

    AddStatus('Nenhum valor fiscal foi fixado automaticamente.');
  except
    on E: Exception do
    begin
      AddStatus('');
      AddStatus('Erro ao consultar carga/frete pela DUIMP:');
      AddStatus(E.Message);

      MessageDlg(
        'Erro ao consultar carga/frete pela DUIMP:' + sLineBreak +
        E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

procedure TForm1.BTNConsultaCompletaClick(Sender: TObject);
var
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  RetornoGeral: string;
  RetornoItens: string;
  RetornoTributos: string;
  RetornoPcce: string;
  RetornoCompleto: string;
  RetornoTTCE: string;
  StatusHTTP: Integer;
  ErroHTTP: string;
  RootCompleto: ISuperObject;
  RootItens: ISuperObject;
  RootGeral: ISuperObject;
  ArrItens: TSuperArray;
  ItensNFe: TArrayDuimpNFeItemCompleto;
  Params: TDuimpNFeParametrosFiscais;
  I: Integer;
  UsouConsultaCompletaV1: Boolean;
  DataFatoGerador: string;
  CodigoPais: Integer;
  PaisTexto: string;
  CFOPERP: string;
  UFDesembERP: string;
  ICMSOrigERP: string;
  ValorAfrmmPcce: Double;
  PercentualIcmsPcce: Double;

  function TextoNaoRetornado(const S: string): string;
  begin
    Result := Trim(S);
    if Result = '' then
      Result := '<nao retornado>';
  end;

  function OnlyDigitsLocal(const S: string): string;
  var
    J: Integer;
  begin
    Result := '';
    for J := 1 to Length(S) do
      if S[J] in ['0'..'9'] then
        Result := Result + S[J];
  end;

  function CodigoPaisTTCEFromTextoLocal(const S: string): Integer;
  var
    T: string;
  begin
    Result := 0;
    T := OnlyDigitsLocal(S);

    { Regra solicitada: nao converter nem fixar codigo de pais.
      Para TTCE, usar somente codigo numerico retornado por endpoint real
      ou informado futuramente em campo ERP/TEdit especifico. }
    if T <> '' then
      Result := StrToIntDef(T, 0);
  end;

  function DateOnlyLocal(const S: string): string;
  var
    T: string;
  begin
    T := Trim(S);
    if Length(T) >= 10 then
      Result := Copy(T, 1, 10)
    else
      Result := T;
  end;

  function JsonPathLocal(AObj: ISuperObject; const APath: string): ISuperObject;
  var
    P: Integer;
    Part: string;
    Rest: string;
    Node: ISuperObject;
  begin
    Result := nil;
    if not Assigned(AObj) then
      Exit;

    Rest := APath;
    Node := AObj;

    while Rest <> '' do
    begin
      P := Pos('.', Rest);
      if P > 0 then
      begin
        Part := Copy(Rest, 1, P - 1);
        Delete(Rest, 1, P);
      end
      else
      begin
        Part := Rest;
        Rest := '';
      end;

      if Part = '' then
        Exit;

      Node := Node.O[Part];
      if not Assigned(Node) then
        Exit;
    end;

    Result := Node;
  end;

  function JsonTextLocal(AObj: ISuperObject; const APath: string): string;
  var
    Node: ISuperObject;
  begin
    Result := '';
    Node := JsonPathLocal(AObj, APath);
    if not Assigned(Node) then
      Exit;

    try
      Result := Trim(Node.AsString);
      if SameText(Result, 'null') then
        Result := '';
    except
      Result := '';
    end;
  end;

  function JsonTextAnyLocal(AObj: ISuperObject; const APaths: array of string): string;
  var
    J: Integer;
  begin
    Result := '';
    for J := Low(APaths) to High(APaths) do
    begin
      Result := JsonTextLocal(AObj, APaths[J]);
      if Trim(Result) <> '' then
        Exit;
    end;
  end;

  function RootArrayLocal(ARoot: ISuperObject): TSuperArray;
  begin
    Result := nil;
    if not Assigned(ARoot) then
      Exit;

    try
      if ARoot.DataType = stArray then
      begin
        Result := ARoot.AsArray;
        Exit;
      end;

      if Assigned(ARoot.A['itens']) then
      begin
        Result := ARoot.A['itens'];
        Exit;
      end;

      if Assigned(ARoot.O['resultado']) and Assigned(ARoot.O['resultado'].A['itens']) then
      begin
        Result := ARoot.O['resultado'].A['itens'];
        Exit;
      end;

      if Assigned(ARoot.O['duimp']) and Assigned(ARoot.O['duimp'].A['itens']) then
      begin
        Result := ARoot.O['duimp'].A['itens'];
        Exit;
      end;
    except
      Result := nil;
    end;
  end;

  function ExtrairDataFatoGeradorLocal(ARoot: ISuperObject): string;
  begin
    Result := DateOnlyLocal(JsonTextAnyLocal(ARoot, [
      'dataRegistro',
      'identificacao.dataRegistro',
      'declaracao.dataRegistro',
      'dadosGerais.dataRegistro',
      'dataFatoGerador'
    ]));
  end;

  function ExtrairCodigoPaisOrigemLocal(AObjItem: ISuperObject): Integer;
  var
    S: string;
  begin
    Result := 0;
    S := JsonTextAnyLocal(AObjItem, [
      'caracterizacao.paisDeOrigem.codigo',
      'caracterizacao.paisOrigem.codigo',
      'caracterizacao.paisOrigem.codigoPais',
      'caracterizacao.origem.codigoPais',
      'caracterizacao.codigoPaisOrigem',
      'fabricante.pais.codigo',
      'exportador.pais.codigo',
      'mercadoria.paisOrigem.codigo',
      'mercadoria.paisOrigem.codigoPais',
      'mercadoria.paisOrigem',
      'mercadoria.paisDeOrigem.codigo',
      'mercadoria.paisDeOrigem.codigoPais',
      'mercadoria.paisDeOrigem',
      'mercadoria.paisAquisicao.codigo',
      'mercadoria.paisAquisicao.codigoPais',
      'mercadoria.paisProcedencia.codigo',
      'mercadoria.paisProcedencia.codigoPais',
      'paisOrigem.codigo',
      'paisOrigem.codigoPais',
      'paisOrigem',
      'paisDeOrigem.codigo',
      'paisDeOrigem.codigoPais',
      'produto.paisOrigem.codigo',
      'produto.paisOrigem.codigoPais',
      'produto.paisDeOrigem.codigo',
      'produto.paisDeOrigem.codigoPais',
      'produto.pais.codigo',
      'origem.codigoPais',
      'codigoPaisOrigem',
      'codigoPaisDeOrigem'
    ]);

    Result := CodigoPaisTTCEFromTextoLocal(S);
  end;

  function ExtrairCodigoPaisGeralLocal(ARoot: ISuperObject): Integer;
  var
    S: string;
  begin
    Result := 0;
    S := JsonTextAnyLocal(ARoot, [
      'carga.paisProcedencia.codigo',
      'carga.paisProcedencia.codigoPais',
      'carga.paisProcedencia',
      'carga.paisOrigem.codigo',
      'carga.paisOrigem.codigoPais',
      'paisProcedencia.codigo',
      'paisProcedencia.codigoPais',
      'paisOrigem.codigo',
      'paisOrigem.codigoPais',
      'identificacao.paisProcedencia.codigo',
      'identificacao.paisOrigem.codigo'
    ]);

    Result := CodigoPaisTTCEFromTextoLocal(S);
  end;

  function TextoContem(const ATexto, ATermo: string): Boolean;
  begin
    Result := Pos(UpperCase(ATermo), UpperCase(ATexto)) > 0;
  end;

  function TTCETributoEh(AObj: ISuperObject; const ACodigoOuNome: string): Boolean;
  var
    Cod: string;
    Nome: string;
    Fund: string;
  begin
    Result := False;
    Cod := JsonTextAnyLocal(AObj, ['tributo.codigo', 'codigoTributo', 'codigo']);
    Nome := JsonTextAnyLocal(AObj, ['tributo.nome', 'nomeTributo', 'nome']);
    Fund := JsonTextAnyLocal(AObj, ['fundamentoLegal.nome', 'fundamento.nome']);

    if SameText(ACodigoOuNome, 'IPI') then
      Result := (Cod = '2') or TextoContem(Nome, 'IPI') or TextoContem(Nome, 'INDUSTRIALIZADOS') or TextoContem(Fund, 'IPI')
    else if SameText(ACodigoOuNome, 'II') then
      Result := TextoContem(Nome, 'IMPOSTO DE IMPORT') or TextoContem(Nome, 'IMPOSTO SOBRE IMPORT') or TextoContem(Fund, 'TEC')
    else if SameText(ACodigoOuNome, 'PIS') then
      Result := TextoContem(Nome, 'PIS') or TextoContem(Fund, 'PIS')
    else if SameText(ACodigoOuNome, 'COFINS') then
      Result := TextoContem(Nome, 'COFINS') or TextoContem(Fund, 'COFINS');
  end;

  function FloatTextLocal(const S: string): Double;
  var
    T: string;
  begin
    T := Trim(S);
    T := StringReplace(T, '.', DecimalSeparator, [rfReplaceAll]);
    T := StringReplace(T, ',', DecimalSeparator, [rfReplaceAll]);
    Result := StrToFloatDef(T, 0);
  end;

  function TTCEAliquota(AObj: ISuperObject): Double;
  begin
    Result := FloatTextLocal(JsonTextAnyLocal(AObj, [
      'aliquota.valor',
      'aliquota.percentual',
      'valorAliquota',
      'percentual'
    ]));
  end;

  procedure AplicarTTCEAoItem(const AJsonTTCE: string; var AItem: TDuimpNFeItemCompleto);
  var
    Root: ISuperObject;

    function DetectarTributoTTCE(AObj: ISuperObject; const ATributoAtual: string): string;
    begin
      Result := ATributoAtual;

      if not Assigned(AObj) then
        Exit;

      if TTCETributoEh(AObj, 'II') then
        Result := 'II'
      else if TTCETributoEh(AObj, 'IPI') then
        Result := 'IPI'
      else if TTCETributoEh(AObj, 'PIS') then
        Result := 'PIS'
      else if TTCETributoEh(AObj, 'COFINS') then
        Result := 'COFINS';
    end;

    procedure AplicarAliquotaDetectada(const ATributo: string; const AAliquota: Double);
    begin
      if AAliquota <= 0 then
        Exit;

      if SameText(ATributo, 'II') and (AItem.II.pAliq = 0) then
        AItem.II.pAliq := AAliquota
      else if SameText(ATributo, 'IPI') and (AItem.IPI.pIPI = 0) then
        AItem.IPI.pIPI := AAliquota
      else if SameText(ATributo, 'PIS') and (AItem.PIS.pAliq = 0) then
        AItem.PIS.pAliq := AAliquota
      else if SameText(ATributo, 'COFINS') and (AItem.COFINS.pAliq = 0) then
        AItem.COFINS.pAliq := AAliquota;
    end;

    procedure VisitarTTCE(AObj: ISuperObject; const ATributoAtual: string);
    var
      Iter: TSuperObjectIter;
      Filho: ISuperObject;
      J: Integer;
      TributoDetectado: string;
      Aliq: Double;
    begin
      if not Assigned(AObj) then
        Exit;

      TributoDetectado := DetectarTributoTTCE(AObj, ATributoAtual);
      Aliq := TTCEAliquota(AObj);
      AplicarAliquotaDetectada(TributoDetectado, Aliq);

      case AObj.DataType of
        stObject:
          begin
            if ObjectFindFirst(AObj, Iter) then
            begin
              try
                repeat
                  Filho := Iter.val;
                  if Assigned(Filho) and (Filho.DataType in [stObject, stArray]) then
                    VisitarTTCE(Filho, TributoDetectado);
                until not ObjectFindNext(Iter);
              finally
                ObjectFindClose(Iter);
              end;
            end;
          end;

        stArray:
          begin
            for J := 0 to AObj.AsArray.Length - 1 do
            begin
              Filho := AObj.AsArray.O[J];
              if Assigned(Filho) then
                VisitarTTCE(Filho, TributoDetectado);
            end;
          end;
      end;
    end;

  begin
    Root := SO(AJsonTTCE);
    if not Assigned(Root) then
      Exit;

    { Varredura defensiva: a TTCE pode retornar tratamentosTributarios[],
      resultado.tratamentosTributarios[] ou estruturas aninhadas equivalentes.
      Nao calcula imposto; apenas aplica aliquotas efetivamente retornadas. }
    VisitarTTCE(Root, '');
  end;

  procedure AplicarDefaultsPermitidos(var AItem: TDuimpNFeItemCompleto);
  begin
    { Excecoes autorizadas pelo usuario.
      Aplicar apenas apos DUIMP/consulta completa/TTCE. }
    if AItem.ICMS.Orig = 0 then
      AItem.ICMS.Orig := 1;

    if Trim(AItem.ICMS.CST) = '' then
      AItem.ICMS.CST := '00';

    if Trim(AItem.PIS.CST) = '' then
      AItem.PIS.CST := '01';

    if Trim(AItem.COFINS.CST) = '' then
      AItem.COFINS.CST := '01';
  end;

  procedure ComplementarDescricoesCatp;
  var
    K: Integer;
    JsonCatp: string;
    RootCatp: ISuperObject;
    Desc: string;
  begin
    for K := 0 to High(ItensNFe) do
    begin
      if (Trim(ItensNFe[K].xProd) = '') and
         (Trim(ItensNFe[K].CpfCnpjRaiz) <> '') and
         (Trim(ItensNFe[K].CodigoProduto) <> '') and
         (Trim(ItensNFe[K].VersaoProduto) <> '') then
      begin
        try
          JsonCatp := FClient.ConsultarCatpProdutoDetalhe(
            ItensNFe[K].CpfCnpjRaiz,
            ItensNFe[K].CodigoProduto,
            ItensNFe[K].VersaoProduto
          );

          RootCatp := SO(JsonCatp);
          Desc := JsonTextAnyLocal(RootCatp, [
            'denominacao',
            'descricao',
            'produto.denominacao',
            'produto.descricao',
            'resultado.denominacao',
            'resultado.descricao',
            'conteudo.denominacao',
            'conteudo.descricao'
          ]);

          if Trim(Desc) <> '' then
          begin
            ItensNFe[K].xProd := Desc;
            if Trim(ItensNFe[K].StatusValidacao) <> '' then
              ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + '; ';
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao +
              'xProd complementado via CATP';
          end;
        except
          on E: Exception do
          begin
            if Trim(ItensNFe[K].StatusValidacao) <> '' then
              ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + '; ';
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao +
              'CATP nao consultado/nao retornou descricao: ' + E.Message;
          end;
        end;
      end;
    end;
  end;

  procedure ComplementarComTTCE;
  var
    K: Integer;
    RawItem: ISuperObject;
    DeveConsultar: Boolean;
  begin
    if not Assigned(ArrItens) then
      Exit;

    for K := 0 to High(ItensNFe) do
    begin
      RawItem := nil;
      if K < ArrItens.Length then
        RawItem := ArrItens.O[K];

      { TTCE e apenas complemento de consulta tributaria.
        Usar somente quando os dados federais vindos da DUIMP estiverem em branco.
        Se a DUIMP ja trouxe base, aliquota ou valor para o tributo, nao sobrescrever. }
      DeveConsultar :=
        ((ItensNFe[K].II.pAliq = 0) and (ItensNFe[K].II.vBC = 0) and (ItensNFe[K].II.vImp = 0)) or
        ((ItensNFe[K].IPI.pIPI = 0) and (ItensNFe[K].IPI.vBC = 0) and (ItensNFe[K].IPI.vIPI = 0)) or
        ((ItensNFe[K].PIS.pAliq = 0) and (ItensNFe[K].PIS.vBC = 0) and (ItensNFe[K].PIS.vImp = 0)) or
        ((ItensNFe[K].COFINS.pAliq = 0) and (ItensNFe[K].COFINS.vBC = 0) and (ItensNFe[K].COFINS.vImp = 0));

      if DeveConsultar and Assigned(RawItem) then
      begin
        CodigoPais := ExtrairCodigoPaisOrigemLocal(RawItem);
        if CodigoPais <= 0 then
          CodigoPais := ExtrairCodigoPaisGeralLocal(RootGeral);

        PaisTexto := IntToStr(CodigoPais);

        if (Trim(ItensNFe[K].NCM) <> '') and (CodigoPais > 0) and (Trim(DataFatoGerador) <> '') then
        begin
          RetornoTTCE := '';
          ErroHTTP := '';
          StatusHTTP := 0;

          if FClient.TryConsultarTTCEImportacao(
            ItensNFe[K].NCM,
            CodigoPais,
            DataFatoGerador,
            RetornoTTCE,
            StatusHTTP,
            ErroHTTP
          ) then
          begin
            AplicarTTCEAoItem(RetornoTTCE, ItensNFe[K]);
            if Trim(ItensNFe[K].StatusValidacao) <> '' then
              ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + '; ';
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao +
              'TTCE consultada como complemento porque dados federais DUIMP estavam em branco para NCM ' + ItensNFe[K].NCM + ' codigoPais ' + PaisTexto;
          end
          else
          begin
            if Trim(ItensNFe[K].StatusValidacao) <> '' then
              ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + '; ';
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao +
              'TTCE nao consultada/nao retornou: HTTP ' + IntToStr(StatusHTTP) + ' - ' + ErroHTTP;
          end;
        end
        else
        begin
          if Trim(ItensNFe[K].StatusValidacao) <> '' then
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + '; ';
          ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + 'TTCE nao consultada:';
          if Trim(ItensNFe[K].NCM) = '' then
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + ' NCM nao retornada;';
          if CodigoPais <= 0 then
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + ' pais de origem/procedencia em codigo numerico nao retornado;';
          if Trim(DataFatoGerador) = '' then
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + ' data do fato gerador nao retornada;';
        end;
      end;

      AplicarDefaultsPermitidos(ItensNFe[K]);
      RecalcularTributosNFeImportacaoItem(ItensNFe[K], Params);
    end;
  end;

begin
  MemoRetorno.Clear;

  try
    GarantirAutenticado;

    NumeroDuimp := NumeroDuimpInformado;
    VersaoDuimp := VersaoDuimpInformada;

    if NumeroDuimp = '' then
      raise Exception.Create('Informe o numero da DUIMP.');

    if VersaoDuimp <= 0 then
      raise Exception.Create('Informe a versao da DUIMP.');

    AddStatus('DUIMP - CONSULTA COMPLETA PARA PREPARACAO DO XML NF-e');
    AddStatus('------------------------------------------------------------');
    AddStatus('endpoint dados gerais consulta: GET /duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp));
    AddStatus('endpoint itens consulta: GET /duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp) + '/itens');
    AddStatus('endpoint tributos consulta: GET /duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp) + '/tributos');
    AddStatus('endpoint PCCE ICMS declaracao ativa: GET /pcce/api/ext/priv/icms/' + NumeroDuimp);
    AddStatus('endpoint TTCE consulta tributaria complementar: POST /ttce/api/ext/tratamentos-tributarios/importacao/');
    AddStatus('numero informado: ' + NumeroDuimp);
    AddStatus('versao informada: ' + IntToStr(VersaoDuimp));
    AddStatus('');

    RetornoCompleto := '';
    RetornoTributos := '';
    RetornoPcce := '';
    UsouConsultaCompletaV1 := False;
    RootCompleto := nil;
    ArrItens := nil;
    ErroHTTP := '';
    StatusHTTP := 0;

    // Regra atual: somente endpoints de consulta DUIMP.
    // Nao tentar /duimp/api/ext/v1/duimp/[numero] nem /valores-calculados.
    RetornoGeral := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);
    RetornoItens := FClient.ConsultarDuimpItens(NumeroDuimp, VersaoDuimp);
    try
      RetornoTributos := FClient.ConsultarDuimpTributos(NumeroDuimp, VersaoDuimp);
    except
      on E: Exception do
      begin
        RetornoTributos := '';
        AddStatus('Aviso: endpoint /tributos nao retornou dados ou nao esta disponivel para esta DUIMP: ' + E.Message);
      end;
    end;

    try
      RetornoPcce := FClient.ConsultarPcceDeclaracaoIcmsAtiva(NumeroDuimp);
    except
      on E: Exception do
      begin
        RetornoPcce := '';
        AddStatus('Aviso: PCCE declaracao ativa de ICMS nao retornou dados ou nao esta disponivel para esta DUIMP: ' + E.Message);
      end;
    end;

    RootGeral := SO(RetornoGeral);
    RootItens := SO(RetornoItens);
    ArrItens := RootArrayLocal(RootItens);

    if not Assigned(RootGeral) then
      raise Exception.Create('JSON invalido no retorno da DUIMP.');

    if not Assigned(ArrItens) then
      raise Exception.Create('Nao foi encontrado array de itens no retorno da DUIMP.');

    FillChar(Params, SizeOf(Params), 0);

    { Dados ERP/tela: aplicar somente quando informados.
      Nao criar CFOP, UFDesemb ou ICMS.orig fixos. }
    CFOPERP := TextoEditAnyPorNome(['EditdetprodCFOP', 'EditldetprodCFOP']);
    if Trim(CFOPERP) <> '' then
      Params.CFOP := CFOPERP;

    ICMSOrigERP := TextoEditAnyPorNome(['EditICMSorig']);
    if Trim(ICMSOrigERP) <> '' then
      Params.OrigemMercadoria := StrToIntDef(ICMSOrigERP, 0);

    UFDesembERP := UpperCase(TextoEditAnyPorNome(['EditdetprodUFDesemb']));

    MontarDuimpItensNFeCompleto(
      RetornoGeral,
      RetornoItens,
      NumeroDuimp,
      VersaoDuimp,
      Params,
      ItensNFe
    );

    for I := 0 to High(ItensNFe) do
    begin
      if (Trim(ItensNFe[I].CFOP) = '') and (Trim(Params.CFOP) <> '') then
        ItensNFe[I].CFOP := Params.CFOP;

      if (Trim(ItensNFe[I].DI.UFDesemb) = '') and (Trim(UFDesembERP) <> '') then
        ItensNFe[I].DI.UFDesemb := UFDesembERP;

      if (ItensNFe[I].ICMS.Orig = 0) and (Params.OrigemMercadoria > 0) then
        ItensNFe[I].ICMS.Orig := Params.OrigemMercadoria;
    end;

    if Trim(RetornoTributos) <> '' then
    begin
      AplicarValoresCalculadosDuimpNosItensNFe(RetornoTributos, Params, ItensNFe);
      AddStatus('Endpoint /tributos aplicado aos itens antes da TTCE.');
    end;

    if Trim(RetornoPcce) <> '' then
    begin
      ValorAfrmmPcce := ExtrairVAfrmmTotalDuimpJson(RetornoPcce);
      if ValorAfrmmPcce > 0 then
      begin
        AplicarVAfrmmTotalNosItensNFe(ValorAfrmmPcce, ItensNFe);
        AddStatus('PCCE aplicado: valorAfrmm encontrado e aplicado em vAFRMM da DI.');
      end;

      PercentualIcmsPcce := ExtrairPercentualICMSDuimpJson(RetornoPcce);
      if PercentualIcmsPcce > 0 then
      begin
        AplicarPercentualICMSNosItensNFe(PercentualIcmsPcce, ItensNFe);
        AddStatus('PCCE aplicado: percentual de ICMS encontrado e aplicado nos itens.');
      end;

      if (ValorAfrmmPcce = 0) and (PercentualIcmsPcce = 0) then
        AddStatus('PCCE consultado, mas sem valorAfrmm ou percentual de ICMS aproveitavel para os itens.');
    end;

    DataFatoGerador := ExtrairDataFatoGeradorLocal(RootGeral);

    AddStatus('Consultando descricoes no Catalogo de Produtos (CATP) quando xProd estiver vazio...');
    ComplementarDescricoesCatp;

    ComplementarComTTCE;

    AddStatus('IMPORTANTE');
    AddStatus('------------------------------------------------------------');
    AddStatus('Esta rotina usa somente dados existentes nos endpoints consultados.');
    AddStatus('Nao consome /valores-calculados nem endpoints de preparacao/edicao; usa somente consultas DUIMP/PCCE.');
    AddStatus('Nao fixa CFOP, UFDesemb, ICMS.orig, aliquotas, bases ou valores de tributos.');
    AddStatus('Usa TTCE somente quando dados tributarios federais da DUIMP estiverem em branco e houver NCM, pais de origem e data do fato gerador.');
    AddStatus('Excecoes finais autorizadas: ICMS.orig=1, ICMS.CST=00, PIS.CST=01, COFINS.CST=01 quando nao encontrados nos endpoints.');
    AddStatus('');

    AddStatus('Fonte principal: GET /duimp-api/api/ext/duimp/{numero}/{versao} + ' +
              'GET /duimp-api/api/ext/duimp/{numero}/{versao}/itens + ' +
              'GET /duimp-api/api/ext/duimp/{numero}/{versao}/tributos quando disponivel + ' +
              'GET /pcce/api/ext/priv/icms/{numeroDuimp} quando disponivel');
    AddStatus('CFOP informado pela tela/ERP: ' + TextoNaoRetornado(Params.CFOP));
    AddStatus('UFDesemb informada pela tela/ERP: ' + TextoNaoRetornado(UFDesembERP));
    if Params.OrigemMercadoria > 0 then
      AddStatus('ICMS.orig informado pela tela/ERP: ' + IntToStr(Params.OrigemMercadoria))
    else
      AddStatus('ICMS.orig informado pela tela/ERP: <nao retornado>');

    AddStatus('Data fato gerador para TTCE: ' + TextoNaoRetornado(DataFatoGerador));
    AddStatus('Quantidade de itens encontrados: ' + IntToStr(Length(ItensNFe)));
    AddStatus('');

    AddStatus('RESUMO DOS ITENS PREPARADOS PARA NF-e');
    AddStatus('------------------------------------------------------------');
    AddStatus(DuimpItensNFeResumo(ItensNFe));
    AddStatus('');

    AddStatus('VALIDACAO / PENDENCIAS PARA XML NF-e VALIDO');
    AddStatus('------------------------------------------------------------');
    AddStatus(DuimpItensNFeValidacao(ItensNFe));
    AddStatus('');

    AddStatus('PREVIEW XML <det> GERADO A PARTIR DOS ENDPOINTS CONSULTADOS');
    AddStatus('------------------------------------------------------------');
    AddStatus(DuimpItensNFePreviewDetXML(ItensNFe));
    AddStatus('');

    AddStatus('OBSERVACAO');
    AddStatus('------------------------------------------------------------');
    AddStatus('CFOP, UFDesemb, transportador, regras estaduais e dados cadastrais devem vir do ERP ou de endpoint real que retorne esses campos.');
    AddStatus('Nenhum valor fiscal foi inventado.');
  except
    on E: Exception do
    begin
      AddStatus('');
      AddStatus('Erro ao consultar DUIMP completa:');
      AddStatus(E.Message);

      MessageDlg(
        'Erro ao consultar DUIMP completa:' + sLineBreak + E.Message,
        mtError,
        [mbOK],
        0
      );
    end;
  end;
end;

end.
