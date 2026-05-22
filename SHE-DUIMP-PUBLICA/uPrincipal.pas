unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  SuperObject,
  uPortalUnicoClientD7,
  uDuimpNFeItensCompletoD7,
  uDuimpNFeXmlCompletoD7,
  uDuimpNFeERPComponentesD7,
  dxPageControl, dxExEdtr, dxEdLib, dxCntner, dxEditor;

type
  TForm1 = class(TForm)
    MemoRetorno: TMemo;
    ScrollBox1: TScrollBox;
    BTNAutentica: TButton;
    BTNConsultaDUIMP: TButton;
    PCPrincipal: TdxPageControl;
    TSCertificado: TdxTabSheet;
    LabelPcceClientId: TLabel;
    LabelPcceClientSecret: TLabel;
    LabelCertificadoNoSerie: TLabel;
    TSIdentificacao: TdxTabSheet;
    LabelIdecUF: TLabel;
    LabelIdenatOp: TLabel;
    LabelIdenNF: TLabel;
    LabelIdetpNF: TLabel;
    LabelIdeidDest: TLabel;
    LabelIdecMunFG: TLabel;
    LabelIdetpImp: TLabel;
    LabelIdetpEmis: TLabel;
    LabelIdetpAmb: TLabel;
    LabelIdefinNFe: TLabel;
    LabelIdeindFinal: TLabel;
    LabelIdeindPres: TLabel;
    LabelIdeindIntermed: TLabel;
    TSEmitente: TdxTabSheet;
    LabelEmitCNPJ: TLabel;
    LabelEmitxNome: TLabel;
    LabelEmitxFant: TLabel;
    LabelEmitenderEmitxLgr: TLabel;
    LabelEmitenderEmitnro: TLabel;
    LabelEmitenderEmitxBairro: TLabel;
    LabelEmitenderEmitcMun: TLabel;
    LabelEmitenderEmitxMun: TLabel;
    LabelEmitenderEmitUF: TLabel;
    LabelEmitenderEmitCEP: TLabel;
    LabelEmitenderEmitcPais: TLabel;
    LabelEmitenderEmitxPais: TLabel;
    LabelEmitenderEmitFone: TLabel;
    LabelEmitIE: TLabel;
    LabelEmitCRT: TLabel;
    TSDestinatario: TdxTabSheet;
    LabelDestNome: TLabel;
    LabelDestenderDestxLgr: TLabel;
    LabelDestenderDestnro: TLabel;
    LabelDestenderDestxBairro: TLabel;
    LabelDestenderDestcMun: TLabel;
    LabelDestenderDestxMun: TLabel;
    LabelDestenderDestUF: TLabel;
    LabelDestenderDestCEP: TLabel;
    LabelDestenderDestcPais: TLabel;
    LabelDestenderDestxPais: TLabel;
    LabelDestenderDestFone: TLabel;
    LabelDestindIEDest: TLabel;
    LabelDestenderDestxCpl: TLabel;
    TSTransportadora: TdxTabSheet;
    LabelTranspCNPJ: TLabel;
    LabelTranspxNome: TLabel;
    LabelTranspxEnder: TLabel;
    LabelTranspxMun: TLabel;
    LabelTranspUF: TLabel;
    LabelTranspIE: TLabel;
    TSProdutos: TdxTabSheet;
    LabeldetprodCFOP: TLabel;
    LabeldetprodUFDesemb: TLabel;
    LabelICMSorig: TLabel;
    LabelPICMS: TLabel;
    LabelmodBC: TLabel;
    BTNGeraNFeXML: TButton;
    dxTabSheet2: TdxTabSheet;
    LabelTaxaSiscomex: TLabel;
    LabelvAFRMM: TLabel;
    MemoinfCpl: TMemo;
    PEREMETENTE: TdxPickEdit;
    CEVAFRMM: TdxCurrencyEdit;
    PETRANSPORTADORA: TdxPickEdit;
    LabelTRANSPORTADORA: TLabel;
    LabelREMETENTE: TLabel;
    CEVTAXASISCOMEX: TdxCurrencyEdit;
    EditCertificadoNoSerie: TdxEdit;
    EditPcceClientId: TdxEdit;
    EditPcceClientSecret: TdxEdit;
    EditIdecUF1: TdxEdit;
    EditIdenatOp1: TdxEdit;
    EditIdenNF1: TdxEdit;
    EditIdetpNF1: TdxEdit;
    EditIdeidDest1: TdxEdit;
    EditIdecMunFG1: TdxEdit;
    EditIdetpImp1: TdxEdit;
    EditIdetpEmis1: TdxEdit;
    EditIdetpAmb1: TdxEdit;
    EditIdefinNFe1: TdxEdit;
    EditIdeindFinal1: TdxEdit;
    EditIdeindPres1: TdxEdit;
    EditIdeindIntermed1: TdxEdit;
    EditlEmitCNPJ: TdxEdit;
    EditEmitxNome: TdxEdit;
    EditEmitxFant: TdxEdit;
    EditEmitenderEmitxLgr: TdxEdit;
    EditEmitenderEmitnro: TdxEdit;
    EditEmitenderEmitxBairro: TdxEdit;
    EditEmitenderEmitcMun: TdxEdit;
    EditEmitenderEmitxMun: TdxEdit;
    EditEmitenderEmitUF: TdxEdit;
    EditEmitenderEmitCEP: TdxEdit;
    EditEmitenderEmitcPais: TdxEdit;
    EditEmitenderEmitxPais: TdxEdit;
    EditEmitCRT: TdxEdit;
    EditEmitIE: TdxEdit;
    EditEmitenderEmitFone: TdxEdit;
    EditDestxNome: TdxEdit;
    EditDestenderDestxLgr: TdxEdit;
    EditDestenderDestnro: TdxEdit;
    EditDestenderDestxCpl: TdxEdit;
    EditDestenderDestxBairro: TdxEdit;
    EditDestenderDestcMun: TdxEdit;
    EditDestenderDestxMun: TdxEdit;
    EditDestenderDestUF: TdxEdit;
    EditDestenderDestCEP: TdxEdit;
    EditDestenderDestcPais: TdxEdit;
    EditDestenderDestxPais: TdxEdit;
    EditDestenderDestFone: TdxEdit;
    EditDestindIEDest: TdxEdit;
    EditlTranspCNPJ: TdxEdit;
    EditTranspxNome: TdxEdit;
    EditTranspIE: TdxEdit;
    EditTranspxEnder: TdxEdit;
    EditTranspxMun: TdxEdit;
    EditTranspUF: TdxEdit;
    EditldetprodCFOP: TdxEdit;
    EditdetprodUFDesemb: TdxEdit;
    EditICMSorig: TdxEdit;
    EditPICMS: TdxEdit;
    EditmodBC: TdxEdit;
    EditNumeroDuimp: TdxEdit;
    LabelNumeroDuimp: TLabel;
    LabelVersaoDuimp: TLabel;
    EditVersaoDuimp: TdxEdit;
    CEQVOL: TdxCurrencyEdit;
    LAVFRETE: TLabel;
    EditDestCNPJ: TdxEdit;
    Label1: TLabel;
    EditESP: TdxEdit;
    LabelESP: TLabel;
    CEPESOB: TdxCurrencyEdit;
    LabelPESOB: TLabel;
    CEPESOL: TdxCurrencyEdit;
    LabelPESOL: TLabel;
    CEVFRETE: TdxCurrencyEdit;
    LabelQVOL: TLabel;
    EditMarca: TdxEdit;
    LabelMarca: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BTNAutenticaClick(Sender: TObject);
    procedure BTNConsultaDUIMPClick(Sender: TObject);
    procedure BTNGeraNFeXMLClick(Sender: TObject);
  private
    FClient: TPortalUnicoClientD7;

    procedure AddStatus(const AMsg: string);
    procedure ScrollMemoToTop;
    function TextoEdit(AEdit: TdxEdit): string;
    function TextoEditPorNome(const ANomeComponente: string): string;
    function TextoEditAnyPorNome(const ANomesComponentes: array of string): string;
    procedure TrySetEditTextAny(const ANomesComponentes: array of string; const AValor: string);
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

procedure TForm1.ScrollMemoToTop;
begin
  if Assigned(MemoRetorno) then
  begin
    MemoRetorno.SelStart := 0;
    MemoRetorno.SelLength := 0;
    SendMessage(MemoRetorno.Handle, EM_SCROLLCARET, 0, 0);
  end;
end;

function TForm1.TextoEdit(AEdit: TdxEdit): string;
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
  if Assigned(C) and (C is TdxEdit) then
    Result := TextoEdit(TdxEdit(C));
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

procedure TForm1.TrySetEditTextAny(const ANomesComponentes: array of string; const AValor: string);
var
  I: Integer;
  C: TComponent;
begin
  for I := Low(ANomesComponentes) to High(ANomesComponentes) do
  begin
    C := FindComponent(ANomesComponentes[I]);
    if Assigned(C) then
    begin
      if C is TdxEdit then TdxEdit(C).Text := AValor
      else if C is TEdit then TEdit(C).Text := AValor;
      Exit; 
    end;
  end;
end;

function TForm1.ClientIdComplementarInformado: string;
begin
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
  if not Assigned(AObj) then Exit;
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
  if not Assigned(V) then Exit;
  try
    if V.DataType = stNull then Result := '' else Result := Trim(V.AsString);
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
  if not Assigned(V) then Exit;
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
  if not Assigned(V) then Exit;
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
  LClientId, LClientSecret: string;
begin
  if not Assigned(FClient) then Exit;

  LClientId := ClientIdComplementarInformado;
  LClientSecret := ClientSecretComplementarInformado;

  if (LClientId <> '') and (LClientSecret <> '') then
    FClient.SetChaveAcessoComplementar(LClientId, LClientSecret)
  else
    FClient.SetChaveAcessoComplementar('', '');
end;

// =============================================================================
// BOTÃO 1: AUTENTICAR
// =============================================================================
procedure TForm1.BTNAutenticaClick(Sender: TObject);
var
  LCertificadoNoSerie: string;
begin
  if Assigned(MemoRetorno) then MemoRetorno.Clear;

  try
    if Assigned(FClient) then FreeAndNil(FClient);

    LCertificadoNoSerie := CertificadoNoSerieInformado;

    FClient := TPortalUnicoClientD7.Create(
      'portalunico.siscomex.gov.br',
      'IMPEXP',
      LCertificadoNoSerie
    );

    AplicarChaveAcessoComplementar;
    FClient.Autenticar;

    AddStatus('Autenticado no Portal Unico/DUIMP com sucesso.');
    AddStatus('Host...............: portalunico.siscomex.gov.br');
    if LCertificadoNoSerie <> '' then
      AddStatus('Certificado........: numero de serie informado; selecao manual nao aberta.')
    else
      AddStatus('Certificado........: numero de serie vazio; selecao manual aberta.');
    AddStatus('DUIMP CSRF expira..: ' + FClient.Session.CsrfExpiration);
    
    ScrollMemoToTop;
    BTNAutentica.Enabled := False;
  except
    on E: Exception do
    begin
      if Assigned(FClient) then FreeAndNil(FClient);
      AddStatus('Erro ao autenticar no Portal Unico/DUIMP.');
      AddStatus(E.Message);
      ScrollMemoToTop;
      MessageDlg('Erro ao autenticar no Portal Unico/DUIMP:' + sLineBreak + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

// =============================================================================
// BOTÃO 2: CONSULTAR DUIMP E PREPARAR DADOS DE TELA
// =============================================================================
procedure TForm1.BTNConsultaDUIMPClick(Sender: TObject);
var
  LNumeroDuimp: string;
  LVersaoDuimp: Integer;
  LEndpoint: string;
  LRetorno: string;
  LRoot: ISuperObject;
  ValorSiscomex, ValorAFRMM: Double;
  TextoInfCpl: string;
  ArrBusca: TSuperArray;
  ItemBusca: ISuperObject;
  J: Integer;

  // Variáveis CCT e Varredura
  CargaId: string;
  CctStatus: Integer;
  CctErro, CctRetorno: string;
  CctRoot, ItemCct: ISuperObject;
  
  // Variáveis para Varredura de Itens (Peso Líquido)
  RetornoItensStr: string;
  RootItens: ISuperObject;
  ArrBuscaItens: TSuperArray;
  SomaPesoL: Double;
  
  // Variáveis para Varredura de Texto Livre
  InfoCompl, UpperLinha, AuxStr, NumStr, EspStr, EspecieResidual: string;
  SLInfo: TStringList;
  I_str, J_str: Integer;

begin
  if Assigned(MemoRetorno) then MemoRetorno.Clear;

  try
    GarantirAutenticado;

    LNumeroDuimp := NumeroDuimpInformado;
    LVersaoDuimp := VersaoDuimpInformada;

    if LNumeroDuimp = '' then raise Exception.Create('Informe o numero da DUIMP em EditNumeroDuimp.');
    if LVersaoDuimp <= 0 then raise Exception.Create('Informe a versao da DUIMP em EditVersaoDuimp.');

    // CORREÇÃO 1: Zera os componentes de volume e valores no início para evitar lixo de notas anteriores
    if Assigned(CEQVOL) then CEQVOL.Value := 0;
    if Assigned(EditESP) then EditESP.Text := '';
    if Assigned(EditMarca) then EditMarca.Text := '';
    if Assigned(CEPESOL) then CEPESOL.Value := 0;
    if Assigned(CEPESOB) then CEPESOB.Value := 0;
    if Assigned(CEVAFRMM) then CEVAFRMM.Value := 0;
    if Assigned(CEVTAXASISCOMEX) then CEVTAXASISCOMEX.Value := 0;
    if Assigned(MemoinfCpl) then MemoinfCpl.Clear;

    LEndpoint := 'https://portalunico.siscomex.gov.br/duimp-api/api/ext/duimp/' + LNumeroDuimp + '/' + IntToStr(LVersaoDuimp);

    AddStatus('DUIMP - CONSULTA GERAL');
    AddStatus('------------------------------------------------------------');
    AddStatus('endpoint: ' + LEndpoint);
    AddStatus('numero informado: ' + LNumeroDuimp);
    AddStatus('versao informada: ' + IntToStr(LVersaoDuimp));
    AddStatus('');

    LRetorno := FClient.ConsultarDuimp(LNumeroDuimp, LVersaoDuimp);
    LRoot := SO(LRetorno);

    if not Assigned(LRoot) then raise Exception.Create('Retorno da DUIMP nao e um JSON valido.');

    // -------------------------------------------------------------------------
    // TAXA SISCOMEX
    // -------------------------------------------------------------------------
    ValorSiscomex := 0;

    if Assigned(LRoot.A['tributos.tributosCalculados']) then
    begin
      ArrBusca := LRoot.A['tributos.tributosCalculados'];
      for J := 0 to ArrBusca.Length - 1 do
      begin
        ItemBusca := ArrBusca.O[J];
        if Assigned(ItemBusca) and SameText(ItemBusca.S['tipo'], 'TAXA_UTILIZACAO') then
        begin
          ValorSiscomex := ItemBusca.D['valoresBRL.recolhido'];
          if ValorSiscomex = 0 then ValorSiscomex := ItemBusca.D['valoresBRL.aRecolher'];
          Break;
        end;
      end;
    end;

    if ValorSiscomex = 0 then
    begin
      if Assigned(LRoot.A['pagamentos']) then
      begin
        ArrBusca := LRoot.A['pagamentos'];
        for J := 0 to ArrBusca.Length - 1 do
        begin
          ItemBusca := ArrBusca.O[J];
          if Assigned(ItemBusca) and SameText(ItemBusca.S['principal.tributo.tipo'], 'TAXA_UTILIZACAO') then
          begin
            ValorSiscomex := ItemBusca.D['principal.valor'];
            Break;
          end;
        end;
      end;
    end;

    if Assigned(CEVTAXASISCOMEX) then
      CEVTAXASISCOMEX.Value := ValorSiscomex;

    // Output das informacoes lidas
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

    // =========================================================================
    // CAMADA 1: CONSULTA SILENCIOSA AO CCT PARA BUSCAR VOLUMES, ESPÉCIE, MARCA E PESO BRUTO
    // =========================================================================
    CargaId := JsonStr(LRoot, 'carga.identificacao');
    if Trim(CargaId) <> '' then
    begin
      AddStatus('Iniciando busca estruturada no CCT para a carga: ' + CargaId);

      // 1. Tenta buscar no Modal Aquaviário (CCT-IMP)
      CctRetorno := ''; CctStatus := 0; CctErro := '';
      if FClient.TryGetJson('/cct/api/ext/imp/estoque/pos-acd?numeros=' + Trim(CargaId), CctRetorno, CctStatus, CctErro) then
      begin
        if CctStatus = 200 then
        begin
          CctRoot := SO(CctRetorno);
          if Assigned(CctRoot) and Assigned(CctRoot.A['lista']) and (CctRoot.A['lista'].Length > 0) then
          begin
            ItemCct := CctRoot.A['lista'].O[0];
            if Assigned(CEPESOB) then CEPESOB.Value := JsonFloat(ItemCct, 'pesoBrutoEstoque'); 
            
            if Assigned(ItemCct.A['cargas']) and (ItemCct.A['cargas'].Length > 0) then
            begin
              if Assigned(CEQVOL) then CEQVOL.Value := JsonInt(ItemCct.A['cargas'].O[0], 'quantidade');
              if Assigned(EditESP) then EditESP.Text := JsonStr(ItemCct.A['cargas'].O[0], 'descricao');
            end;
          end;
        end;
      end;

      // 2. Se não encontrou no marítimo, tenta no Modal Aéreo/Rodoviário (CCTA)
      if ((not Assigned(CEQVOL)) or (CEQVOL.Value = 0)) and 
         ((not Assigned(CEPESOB)) or (CEPESOB.Value = 0)) then
      begin
        CctRetorno := ''; CctStatus := 0; CctErro := '';
        if FClient.TryGetJson('/ccta/api/ext/conhecimentos?numeroConhecimento=' + Trim(CargaId), CctRetorno, CctStatus, CctErro) then
        begin
          if CctStatus = 200 then
          begin
            CctRoot := SO(CctRetorno);
            if Assigned(CctRoot) and (CctRoot.DataType = stArray) and (CctRoot.AsArray.Length > 0) then
            begin
              ItemCct := CctRoot.AsArray.O[0];
              if Assigned(CEQVOL) then CEQVOL.Value := JsonInt(ItemCct, 'quantidadeVolumesConhecimento');
              if Assigned(CEPESOB) then CEPESOB.Value := JsonFloat(ItemCct, 'pesoBrutoConhecimento');

              if Assigned(ItemCct.A['itensCarga']) and (ItemCct.A['itensCarga'].Length > 0) then
              begin
                if Assigned(EditESP) then 
                begin
                  EditESP.Text := JsonStr(ItemCct.A['itensCarga'].O[0], 'tipoEmbalagem.descricao');
                  if Trim(EditESP.Text) = '' then EditESP.Text := JsonStr(ItemCct.A['itensCarga'].O[0], 'descricao');
                end;

                if Assigned(EditMarca) then
                begin
                  EditMarca.Text := JsonStr(ItemCct.A['itensCarga'].O[0], 'marca');
                  if Trim(EditMarca.Text) = '' then EditMarca.Text := JsonStr(ItemCct.A['itensCarga'].O[0], 'contramarca');
                end;
              end;
            end;
          end;
        end;
      end;
      AddStatus('Busca no CCT finalizada.');
    end;

    // =========================================================================
    // CAMADA 2: VARREDURA DE ITENS PARA SOMAR O PESO LÍQUIDO
    // =========================================================================
    AddStatus('Iniciando varredura em /itens para somar Peso Liquido...');
    try
      RetornoItensStr := FClient.ConsultarDuimpItens(LNumeroDuimp, LVersaoDuimp);
      RootItens := SO(RetornoItensStr);
      if Assigned(RootItens) then
      begin
        SomaPesoL := 0;
        ArrBuscaItens := nil;

        if Assigned(RootItens.A['itens']) then ArrBuscaItens := RootItens.A['itens']
        else if Assigned(RootItens.O['resultado']) and Assigned(RootItens.O['resultado'].A['itens']) then ArrBuscaItens := RootItens.O['resultado'].A['itens']
        else if Assigned(RootItens.O['duimp']) and Assigned(RootItens.O['duimp'].A['itens']) then ArrBuscaItens := RootItens.O['duimp'].A['itens'];

        if Assigned(ArrBuscaItens) then
        begin
          for J_str := 0 to ArrBuscaItens.Length - 1 do
          begin
            ItemBusca := ArrBuscaItens.O[J_str];
            SomaPesoL := SomaPesoL + JsonFloat(ItemBusca, 'mercadoria.pesoLiquido');
          end;
        end;

        if (SomaPesoL > 0) and Assigned(CEPESOL) then 
        begin
          CEPESOL.Value := SomaPesoL;
          AddStatus('-> Peso Liquido somado e preenchido com sucesso: ' + FloatToStr(SomaPesoL));
        end;
      end;
    except
      AddStatus('-> Nao foi possivel extrair o peso liquido dos itens.');
    end;

    // =========================================================================
    // CAMADA 3: VARREDURA DE TEXTO LIVRE COMO FALLBACK
    // =========================================================================
    AddStatus('Iniciando varredura no texto livre (Informacoes Complementares) como fallback...');
    InfoCompl := JsonStr(LRoot, 'identificacao.informacaoComplementar');
    EspecieResidual := '';
    
    if Trim(InfoCompl) <> '' then
    begin
      SLInfo := TStringList.Create;
      try
        // Normaliza as quebras de linha
        SLInfo.Text := StringReplace(StringReplace(InfoCompl, #13#10, #10, [rfReplaceAll]), #13, #10, [rfReplaceAll]);
        
        for I_str := 0 to SLInfo.Count - 1 do
        begin
          UpperLinha := UpperCase(Trim(SLInfo[I_str]));
          
          // ----------------- EXPORTADOR -----------------
          if Pos('EXPORTADOR:', UpperLinha) > 0 then
          begin
            AuxStr := Trim(Copy(UpperLinha, Pos(':', UpperLinha) + 1, Length(UpperLinha)));
            if (AuxStr <> '') and Assigned(PEREMETENTE) then
              PEREMETENTE.Text := Copy(AuxStr, 1, 60);
          end;

          // ----------------- TRANSPORTADORA -----------------
          if Pos('TRANSPORTADORA:', UpperLinha) > 0 then
          begin
            AuxStr := Trim(Copy(UpperLinha, Pos(':', UpperLinha) + 1, Length(UpperLinha)));
            if (AuxStr <> '') and Assigned(PETRANSPORTADORA) then
              PETRANSPORTADORA.Text := Copy(AuxStr, 1, 60);
          end;

          // ----------------- QUANTIDADE DE VOLUME -----------------
          if (Pos('QUANTIDADE DE VOLUME:', UpperLinha) > 0) or 
             (Pos('QUANTIDADE:', UpperLinha) > 0) or 
             (Pos('QTD:', UpperLinha) > 0) or 
             (Pos('QTDE:', UpperLinha) > 0) then
          begin
            AuxStr := Trim(Copy(UpperLinha, Pos(':', UpperLinha) + 1, Length(UpperLinha)));
            NumStr := '';
            
            // Extrai a parte numérica
            for J_str := 1 to Length(AuxStr) do
            begin
              if AuxStr[J_str] in ['0'..'9', '.', ','] then NumStr := NumStr + AuxStr[J_str]
              else if NumStr <> '' then Break;
            end;
            
            if (NumStr <> '') and Assigned(CEQVOL) and (CEQVOL.Value = 0) then
            begin
              NumStr := StringReplace(NumStr, '.', '', [rfReplaceAll]);
              CEQVOL.Value := StrToFloatDef(NumStr, 0);
            end;

            // Extrai a espécie residual na mesma linha (ex: "QUANTIDADE: 1500 CAIXAS")
            EspStr := Trim(Copy(AuxStr, Length(NumStr) + 1, Length(AuxStr)));
            if (Length(EspStr) > 0) and (EspStr[1] = '-') then 
              EspStr := Trim(Copy(EspStr, 2, Length(EspStr)));
            
            if Trim(EspStr) <> '' then
              EspecieResidual := Copy(EspStr, 1, 60);
          end;

          // ----------------- ESPECIE -----------------
          if Pos('ESPECIE:', UpperLinha) > 0 then
          begin
            AuxStr := Trim(Copy(UpperLinha, Pos(':', UpperLinha) + 1, Length(UpperLinha)));
            if (AuxStr <> '') and Assigned(EditESP) and (Trim(EditESP.Text) = '') then
              EditESP.Text := Copy(AuxStr, 1, 60);
          end;

          // ----------------- MARCA DO VOLUME -----------------
          if (Pos('MARCA DO VOLUME:', UpperLinha) > 0) or (Pos('MARCA:', UpperLinha) > 0) then
          begin
            AuxStr := Trim(Copy(UpperLinha, Pos(':', UpperLinha) + 1, Length(UpperLinha)));
            if (AuxStr <> '') and Assigned(EditMarca) and (Trim(EditMarca.Text) = '') then
              EditMarca.Text := Copy(AuxStr, 1, 60);
          end;

          // ----------------- PESO BRUTO -----------------
          if Pos('PESO BRUTO:', UpperLinha) > 0 then
          begin
            AuxStr := Trim(Copy(UpperLinha, Pos(':', UpperLinha) + 1, Length(UpperLinha)));
            NumStr := '';
            
            for J_str := 1 to Length(AuxStr) do
            begin
              if AuxStr[J_str] in ['0'..'9', '.', ','] then NumStr := NumStr + AuxStr[J_str]
              else if NumStr <> '' then Break;
            end;
            
            if (NumStr <> '') and Assigned(CEPESOB) then
            begin
              NumStr := StringReplace(NumStr, '.', '', [rfReplaceAll]);
              CEPESOB.Value := StrToFloatDef(NumStr, 0);
            end;
          end;

          // ----------------- PESO LIQUIDO -----------------
          if (Pos('PESO LIQUIDO:', UpperLinha) > 0) or (Pos('PESO LÍQUIDO:', UpperLinha) > 0) then
          begin
            AuxStr := Trim(Copy(UpperLinha, Pos(':', UpperLinha) + 1, Length(UpperLinha)));
            NumStr := '';
            
            for J_str := 1 to Length(AuxStr) do
            begin
              if AuxStr[J_str] in ['0'..'9', '.', ','] then NumStr := NumStr + AuxStr[J_str]
              else if NumStr <> '' then Break;
            end;
            
            if (NumStr <> '') and Assigned(CEPESOL) then
            begin
              NumStr := StringReplace(NumStr, '.', '', [rfReplaceAll]);
              CEPESOL.Value := StrToFloatDef(NumStr, 0);
            end;
          end;

          // ----------------- AFRMM CORREÇÃO 1 -----------------
          if Pos('AFRMM:', UpperLinha) > 0 then
          begin
            AuxStr := Trim(Copy(UpperLinha, Pos(':', UpperLinha) + 1, Length(UpperLinha)));
            AuxStr := StringReplace(AuxStr, 'R$', '', [rfReplaceAll, rfIgnoreCase]);
            NumStr := '';
            
            for J_str := 1 to Length(AuxStr) do
            begin
              if AuxStr[J_str] in ['0'..'9', '.', ','] then NumStr := NumStr + AuxStr[J_str]
              else if NumStr <> '' then Break;
            end;
            
            if (NumStr <> '') and Assigned(CEVAFRMM) and (CEVAFRMM.Value = 0) then
            begin
              NumStr := StringReplace(NumStr, '.', '', [rfReplaceAll]);
              NumStr := StringReplace(NumStr, ',', DecimalSeparator, [rfReplaceAll]);
              CEVAFRMM.Value := StrToFloatDef(NumStr, 0);
            end;
          end;

        end;
        
        // Aplica o fallback da espécie residual caso não tenha encontrado a tag explícita "ESPECIE:"
        if Assigned(EditESP) and (Trim(EditESP.Text) = '') and (Trim(EspecieResidual) <> '') then
          EditESP.Text := EspecieResidual;
          
        AddStatus('-> Varredura de texto livre concluida.');
      finally
        SLInfo.Free;
      end;
    end;
    // =========================================================================

    // CORREÇÃO 2: MONTAGEM DO MemoinfCpl MOVIDA PARA O FINAL (Após todas as varreduras preencherem os componentes)
    if Assigned(MemoinfCpl) then
    begin
      TextoInfCpl := 'Duimp: ' + LNumeroDuimp + '. ';
      
      if Assigned(CEVTAXASISCOMEX) then ValorSiscomex := CEVTAXASISCOMEX.Value else ValorSiscomex := 0;
      if ValorSiscomex > 0 then
        TextoInfCpl := TextoInfCpl + 'Taxa Siscomex: ' + FormatFloat('0.00', ValorSiscomex) + '. ';

      if Assigned(CEVAFRMM) then ValorAFRMM := CEVAFRMM.Value else ValorAFRMM := 0;
      if ValorAFRMM > 0 then
        TextoInfCpl := TextoInfCpl + 'Afrmm: ' + FormatFloat('0.00', ValorAFRMM) + '. ';

      MemoinfCpl.Text := Trim(TextoInfCpl);
    end;

    AddStatus('');
    AddStatus('RETORNO JSON ORIGINAL');
    AddStatus('------------------------------------------------------------');
    AddStatus(LRetorno);

    ScrollMemoToTop;
  except
    on E: Exception do
    begin
      AddStatus('Erro ao consultar DUIMP.');
      AddStatus(E.Message);
      ScrollMemoToTop;
      MessageDlg('Erro ao consultar DUIMP:' + sLineBreak + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

// =============================================================================
// BOTÃO 3: PROCESSAR TUDO E GERAR XML NF-E
// =============================================================================
procedure TForm1.BTNGeraNFeXMLClick(Sender: TObject);
var
  NumeroDuimp: string;
  VersaoDuimp: Integer;
  RetornoGeral, RetornoItens, RetornoPcce, RetornoTTCE: string;
  StatusHTTP: Integer;
  ErroHTTP: string;
  RootGeral, RootItens: ISuperObject;
  ArrItens: TSuperArray;
  ItensNFe: TArrayDuimpNFeItemCompleto;
  Params: TDuimpNFeParametrosFiscais;
  I: Integer;
  DataFatoGerador: string;
  CodigoPais: Integer;
  CFOPERP, UFDesembERP, ICMSOrigERP: string;
  ValorAfrmmPcce: Double;
  PercentualIcmsPcce: Double;
  TranspCNPJ, TranspNome, TranspIE, TranspEnder, TranspMun, TranspUF: string;
  ICMSPICMSERP: string;
  ICMSPICMSValor: Double;
  ICMSTemPICMSERP: Boolean;
  SomaOutrasDespesasRateio: Double;
  SomaAfrmmRateio: Double;
  QtdItensVBCICMSPendente: Integer;
  VBCExaustivoResultado: Double;
  VBCExaustivoFonte: string;
  VBCExaustivoAplicado: Boolean;
  ICMSModBCERP: string;
  ICMSModBCValor: Integer;
  ICMSModBCInvalido: Boolean;
  ValorAfrmmERP: Double;
  LValSiscomex, LValAfrmm, LTotalvProdItem: Double;
  LTotalLocalEmbarque, LValFrete, NovoFrete, SomaFreteRateio: Double;
  PrecisaCalcularAduaneiro: Boolean;
  LViaTransp: Integer;
  ConfigNFe: TDuimpNFeConfig;
  EmitenteNFe: TDuimpNFeEmitente;
  DestinatarioNFe: TDuimpNFeDestinatario;
  XmlNFe, ArquivoXml, PastaXml, ValidacaoNFe, InfCplNFe: string;

  function PrimeiroTextoLocal(const APreferencial, AFallback: string): string;
  begin Result := Trim(APreferencial); if Result = '' then Result := Trim(AFallback); end;

  procedure RemoverStatusTokenLocal(var AStatus: string; const AToken: string);
  var T: string;
  begin
    T := Trim(AStatus);
    if (T = '') or (Trim(AToken) = '') then Exit;
    T := StringReplace(T, AToken + '; ', '', [rfReplaceAll]);
    T := StringReplace(T, '; ' + AToken, '', [rfReplaceAll]);
    T := StringReplace(T, AToken, '', [rfReplaceAll]);
    T := StringReplace(T, '; ;', ';', [rfReplaceAll]);
    T := StringReplace(T, ';;', ';', [rfReplaceAll]);
    T := Trim(T);
    while (Length(T) > 0) and (T[1] = ';') do Delete(T, 1, 1);
    while (Length(T) > 0) and (T[Length(T)] = ';') do Delete(T, Length(T), 1);
    AStatus := Trim(T);
  end;

  function OnlyDigitsLocal(const S: string): string;
  var J: Integer;
  begin Result := ''; for J := 1 to Length(S) do if S[J] in ['0'..'9'] then Result := Result + S[J]; end;

  function DateOnlyLocal(const S: string): string;
  var T: string;
  begin T := Trim(S); if Length(T) >= 10 then Result := Copy(T, 1, 10) else Result := T; end;

  // Modificado de forma robusta e similar a rotina oficial de itens
  function FloatTextLocal(const S: string): Double;
  var T: string; I, PontoCount, VirgCount, PosUltPonto, PosUltVirg: Integer; DecSep: Char;
  begin
    Result := 0; T := Trim(S); if T = '' then Exit;
    T := StringReplace(T, 'R$', '', [rfReplaceAll, rfIgnoreCase]);
    T := StringReplace(T, ' ', '', [rfReplaceAll]);
    PontoCount := 0; VirgCount := 0; PosUltPonto := 0; PosUltVirg := 0;
    for I := 1 to Length(T) do begin
      if T[I] = '.' then begin Inc(PontoCount); PosUltPonto := I; end
      else if T[I] = ',' then begin Inc(VirgCount); PosUltVirg := I; end;
    end;
    if (PontoCount > 0) and (VirgCount > 0) then begin
      if PosUltVirg > PosUltPonto then begin
        T := StringReplace(T, '.', '', [rfReplaceAll]);
        T := StringReplace(T, ',', DecimalSeparator, [rfReplaceAll]);
      end else begin
        T := StringReplace(T, ',', '', [rfReplaceAll]);
        T := StringReplace(T, '.', DecimalSeparator, [rfReplaceAll]);
      end;
    end else if VirgCount > 0 then T := StringReplace(T, ',', DecimalSeparator, [rfReplaceAll])
    else if PontoCount > 0 then begin
      if PontoCount = 1 then T := StringReplace(T, '.', DecimalSeparator, [rfReplaceAll])
      else begin
        DecSep := DecimalSeparator;
        for I := Length(T) downto 1 do if T[I] = '.' then begin T[I] := DecSep; Break; end;
        T := StringReplace(T, '.', '', [rfReplaceAll]);
      end;
    end;
    Result := StrToFloatDef(T, 0);
  end;

  function JsonPathLocal(AObj: ISuperObject; const APath: string): ISuperObject;
  var P: Integer; Part, Rest: string; Node: ISuperObject;
  begin
    Result := nil; if not Assigned(AObj) then Exit;
    Rest := APath; Node := AObj;
    while Rest <> '' do begin
      P := Pos('.', Rest);
      if P > 0 then begin Part := Copy(Rest, 1, P - 1); Delete(Rest, 1, P); end
      else begin Part := Rest; Rest := ''; end;
      if Part = '' then Exit;
      try Node := Node.O[Part]; except Node := nil; end;
      if not Assigned(Node) then Exit;
    end;
    Result := Node;
  end;

  function JsonTextLocal(AObj: ISuperObject; const APath: string): string;
  var Node: ISuperObject;
  begin
    Result := ''; Node := JsonPathLocal(AObj, APath);
    if Assigned(Node) then try if Node.DataType <> stNull then Result := Trim(Node.AsString); except Result := ''; end;
  end;

  function JsonTextAnyLocal(AObj: ISuperObject; const APaths: array of string): string;
  var J: Integer;
  begin Result := ''; for J := Low(APaths) to High(APaths) do begin Result := JsonTextLocal(AObj, APaths[J]); if Trim(Result) <> '' then Exit; end; end;

  function RootArrayLocal(ARoot: ISuperObject): TSuperArray;
  begin
    Result := nil; if not Assigned(ARoot) then Exit;
    try
      if ARoot.DataType = stArray then Result := ARoot.AsArray
      else if Assigned(ARoot.A['itens']) then Result := ARoot.A['itens']
      else if Assigned(ARoot.O['resultado']) and Assigned(ARoot.O['resultado'].A['itens']) then Result := ARoot.O['resultado'].A['itens']
      else if Assigned(ARoot.O['duimp']) and Assigned(ARoot.O['duimp'].A['itens']) then Result := ARoot.O['duimp'].A['itens'];
    except Result := nil; end;
  end;

  function ExtrairDataFatoGeradorLocal(ARoot: ISuperObject): string;
  begin
    Result := DateOnlyLocal(JsonTextAnyLocal(ARoot, [
      'dataRegistro', 'identificacao.dataRegistro', 'declaracao.dataRegistro', 'dadosGerais.dataRegistro', 'dataFatoGerador'
    ]));
  end;

  function TextoContem(const ATexto, ATermo: string): Boolean;
  begin Result := Pos(UpperCase(ATermo), UpperCase(ATexto)) > 0; end;

  function ExtrairViaTransporteLocal(ARoot: ISuperObject): Integer;
  var TipoCarga, ViaStr: string;
  begin
    Result := 1; if not Assigned(ARoot) then Exit;
    ViaStr := JsonTextAnyLocal(ARoot, ['carga.viaDeTransporte', 'carga.viaTransporte', 'carga.viaTransporte.codigo']);
    if Trim(ViaStr) <> '' then begin Result := StrToIntDef(ViaStr, 1); Exit; end;
    TipoCarga := UpperCase(Trim(JsonTextLocal(ARoot, 'carga.tipoIdentificacaoCarga')));
    if TipoCarga = 'CE' then Result := 1 else if Pos('AWB', TipoCarga) > 0 then Result := 4
    else if Pos('CRT', TipoCarga) > 0 then Result := 7 else if Pos('TIF', TipoCarga) > 0 then Result := 6
    else if TipoCarga = 'CP' then Result := 5;
  end;

  function TTCETributoEh(AObj: ISuperObject; const ACodigoOuNome: string): Boolean;
  var Cod, Nome, Fund: string;
  begin
    Result := False;
    Cod := JsonTextAnyLocal(AObj, ['tributo.codigo', 'codigoTributo', 'codigo']);
    Nome := JsonTextAnyLocal(AObj, ['tributo.nome', 'nomeTributo', 'nome']);
    Fund := JsonTextAnyLocal(AObj, ['fundamentoLegal.nome', 'fundamento.nome']);
    if SameText(ACodigoOuNome, 'IPI') then Result := (Cod = '2') or TextoContem(Nome, 'IPI') or TextoContem(Nome, 'INDUSTRIALIZADOS') or TextoContem(Fund, 'IPI')
    else if SameText(ACodigoOuNome, 'II') then Result := TextoContem(Nome, 'IMPOSTO DE IMPORT') or TextoContem(Nome, 'IMPOSTO SOBRE IMPORT') or TextoContem(Fund, 'TEC')
    else if SameText(ACodigoOuNome, 'PIS') then Result := TextoContem(Nome, 'PIS') or TextoContem(Fund, 'PIS')
    else if SameText(ACodigoOuNome, 'COFINS') then Result := TextoContem(Nome, 'COFINS') or TextoContem(Fund, 'COFINS');
  end;

  function TTCEAliquota(AObj: ISuperObject): Double;
  begin Result := FloatTextLocal(JsonTextAnyLocal(AObj, ['aliquota.valor', 'aliquota.percentual', 'valorAliquota', 'percentual'])); end;

  function ItemTemICMSPendenteLocal(const AItem: TDuimpNFeItemCompleto): Boolean;
  begin Result := (AItem.ICMS.vBC = 0) or (AItem.ICMS.pICMS = 0) or (AItem.ICMS.vICMS = 0); end;

  function ContarItensVBCICMSPendenteLocal: Integer;
  var K: Integer;
  begin Result := 0; for K := 0 to High(ItensNFe) do if ItensNFe[K].ICMS.vBC = 0 then Inc(Result); end;

  procedure AplicarPICMSErpLocal;
  var K: Integer;
  begin
    if not ICMSTemPICMSERP then Exit;
    for K := 0 to High(ItensNFe) do begin
      ItensNFe[K].ICMS.pICMS := ICMSPICMSValor;
      if (ItensNFe[K].ICMS.vICMS = 0) and (ItensNFe[K].ICMS.vBC > 0) and (ItensNFe[K].ICMS.pICMS > 0) then
        ItensNFe[K].ICMS.vICMS := Round((ItensNFe[K].ICMS.vBC * ItensNFe[K].ICMS.pICMS / 100) * 100) / 100;
    end;
  end;

  function ValorFloatObjetoLocal(AObj: ISuperObject): Double;
  begin
    Result := 0; if not Assigned(AObj) then Exit;
    try
      if AObj.DataType in [stInt, stDouble] then Result := AObj.AsDouble
      else if AObj.DataType = stString then Result := FloatTextLocal(AObj.AsString)
      else if AObj.DataType = stObject then Result := FloatTextLocal(JsonTextAnyLocal(AObj, ['valor', 'valorBRL', 'valorCalculado', 'valorDevido', 'valorARecolher']));
    except Result := 0; end;
  end;

  function ChaveEhVBCICMSLocal(const AKey: string): Boolean;
  var K: string;
  begin K := UpperCase(Trim(AKey)); Result := (K = 'BASECALCULOICMS') or (K = 'VALORBASECALCULOICMS') or (K = 'VBCICMS') or (K = 'VBC_ICMS'); end;

  function ChaveEhVBCGenericaLocal(const AKey: string): Boolean;
  var K: string;
  begin K := UpperCase(Trim(AKey)); Result := (K = 'BASECALCULO') or (K = 'VALORBASECALCULO') or (K = 'VBC'); end;

  function ObjetoEhICMSLocal(AObj: ISuperObject): Boolean;
  var T: string;
  begin
    Result := False; if not Assigned(AObj) then Exit;
    T := UpperCase(JsonTextAnyLocal(AObj, ['tipo', 'tipoTributo', 'tributo', 'tributo.nome', 'nomeTributo', 'nome']));
    Result := (Pos('ICMS', T) > 0) or (Pos('CIRCULACAO', T) > 0) or (Pos('CIRCULAÇÃO', T) > 0);
  end;

  function BuscarVBCICMSRecursivoLocal(AObj: ISuperObject; AContextoICMS: Boolean; APermiteGenerico: Boolean): Double;
  var Iter: TSuperObjectIter; Valor: ISuperObject; FilhoContextoICMS: Boolean; K: Integer;
  begin
    Result := 0; if not Assigned(AObj) then Exit;
    case AObj.DataType of
      stObject:
        if ObjectFindFirst(AObj, Iter) then
        try
          repeat
            FilhoContextoICMS := AContextoICMS or ObjetoEhICMSLocal(AObj);
            Valor := Iter.val;
            if Assigned(Valor) then begin
              if ChaveEhVBCICMSLocal(Iter.key) or ((APermiteGenerico or FilhoContextoICMS) and ChaveEhVBCGenericaLocal(Iter.key)) then
              begin Result := ValorFloatObjetoLocal(Valor); if Result > 0 then Exit; end;
              if Valor.DataType in [stObject, stArray] then
              begin Result := BuscarVBCICMSRecursivoLocal(Valor, FilhoContextoICMS or (Pos('ICMS', UpperCase(Iter.key)) > 0), APermiteGenerico); if Result > 0 then Exit; end;
            end;
          until not ObjectFindNext(Iter);
        finally ObjectFindClose(Iter); end;
      stArray:
        for K := 0 to AObj.AsArray.Length - 1 do
        begin Result := BuscarVBCICMSRecursivoLocal(AObj.AsArray.O[K], AContextoICMS, APermiteGenerico); if Result > 0 then Exit; end;
    end;
  end;

  function ExtrairVBCICMSJsonLocal(const AJson: string; APermiteGenerico: Boolean): Double;
  var Root: ISuperObject;
  begin
    Result := 0; if Trim(AJson) = '' then Exit;
    Root := SO(AJson); if not Assigned(Root) then Exit;
    Result := FloatTextLocal(JsonTextAnyLocal(Root, ['tributos.icms.baseCalculo', 'tributos.icms.vBC', 'icms.baseCalculo', 'icms.vBC', 'impostos.icms.vBC', 'vBCICMS']));
    if Result > 0 then Exit;
    Result := BuscarVBCICMSRecursivoLocal(Root, False, APermiteGenerico);
  end;

  procedure AtualizarStatusCamposPreenchidosLocal(var AItem: TDuimpNFeItemCompleto);
  begin
    if Trim(AItem.xProd) <> '' then RemoverStatusTokenLocal(AItem.StatusValidacao, 'xProd vazio');
    if Trim(AItem.CFOP) <> '' then RemoverStatusTokenLocal(AItem.StatusValidacao, 'CFOP vazio');
    if Trim(AItem.DI.UFDesemb) <> '' then RemoverStatusTokenLocal(AItem.StatusValidacao, 'DI.UFDesemb vazio');
    if Trim(AItem.StatusValidacao) = '' then AItem.StatusValidacao := 'OK';
  end;

  procedure RecalcularICMSComVBCAtualLocal;
  var K: Integer;
  begin
    for K := 0 to High(ItensNFe) do
      if (ItensNFe[K].ICMS.vBC > 0) and (ItensNFe[K].ICMS.pICMS > 0) and (ItensNFe[K].ICMS.vICMS = 0) then
        ItensNFe[K].ICMS.vICMS := Round((ItensNFe[K].ICMS.vBC * ItensNFe[K].ICMS.pICMS / 100) * 100) / 100;
  end;

  procedure AplicarModBCERPLocal;
  var K: Integer;
  begin
    if (Trim(ICMSModBCERP) = '') or ICMSModBCInvalido then Exit;
    for K := 0 to High(ItensNFe) do
      if ItensNFe[K].ICMS.modBC < 0 then ItensNFe[K].ICMS.modBC := ICMSModBCValor;
  end;

  procedure AplicarFallbackICMSPorDentroLocal;
  var K: Integer; Aliq, BaseAduaneira, SomaComponentes, BaseICMS: Double;
  begin
    for K := 0 to High(ItensNFe) do begin
      if (ItensNFe[K].ICMS.vBC <> 0) or (ItensNFe[K].ICMS.pICMS <= 0) then Continue;
      Aliq := ItensNFe[K].ICMS.pICMS / 100;
      if (Aliq <= 0) or (Aliq >= 1) then Continue;

      BaseAduaneira := ItensNFe[K].ValorAduaneiroBRL;
      if (BaseAduaneira = 0) and ((ItensNFe[K].vProd > 0) or (ItensNFe[K].vFrete > 0) or (ItensNFe[K].vSeg > 0)) then
        BaseAduaneira := ItensNFe[K].vProd + ItensNFe[K].vFrete + ItensNFe[K].vSeg;
      if BaseAduaneira <= 0 then Continue;

      // ATENÇÃO À FORMULA: AFRMM foi incluído no Numerador!
      SomaComponentes := BaseAduaneira + ItensNFe[K].II.vImp + ItensNFe[K].IPI.vIPI + ItensNFe[K].PIS.vImp + ItensNFe[K].COFINS.vImp + ItensNFe[K].vOutro + ItensNFe[K].DI.vAFRMM;
      if SomaComponentes <= 0 then Continue;

      BaseICMS := Round((SomaComponentes / (1 - Aliq)) * 100) / 100;
      if BaseICMS <= 0 then Continue;

      ItensNFe[K].ICMS.vBC := BaseICMS;
      if ItensNFe[K].ICMS.vICMS = 0 then ItensNFe[K].ICMS.vICMS := Round((BaseICMS * ItensNFe[K].ICMS.pICMS / 100) * 100) / 100;
    end;
  end;

  procedure AplicarVBCGlobalSeguroLocal(const AVBC: Double; const AFonte: string);
  begin
    VBCExaustivoAplicado := False;
    if AVBC <= 0 then Exit;
    if Length(ItensNFe) = 1 then begin
      if ItensNFe[0].ICMS.vBC = 0 then ItensNFe[0].ICMS.vBC := AVBC;
      VBCExaustivoAplicado := True;
      RecalcularICMSComVBCAtualLocal;
    end;
  end;

  function TentarBuscaExaustivaVBCICMSLocal: Double;
  var Ret: string; St: Integer; Err: string; V: Double;
  begin
    Result := 0; VBCExaustivoFonte := ''; VBCExaustivoAplicado := False;
    if ContarItensVBCICMSPendenteLocal = 0 then Exit;

    V := ExtrairVBCICMSJsonLocal(RetornoGeral, False);
    if V > 0 then begin Result := V; VBCExaustivoFonte := 'dados gerais da DUIMP'; Exit; end;

    V := ExtrairVBCICMSJsonLocal(RetornoPcce, True);
    if V > 0 then begin Result := V; VBCExaustivoFonte := 'PCCE ICMS ja consultado'; Exit; end;

    Ret := ''; St := 0; Err := '';
    if FClient.TryGetJson('/pcce/api/ext/sefaz/icms/consulta/' + NumeroDuimp, Ret, St, Err) then begin
      V := ExtrairVBCICMSJsonLocal(Ret, True);
      if V > 0 then begin Result := V; VBCExaustivoFonte := 'historico SEFAZ/PCCE'; Exit; end;
    end;

    Ret := ''; St := 0; Err := '';
    if FClient.TryGetJson('/duimp-api/api/ext/duimp/' + NumeroDuimp + '/' + IntToStr(VersaoDuimp) + '/tributos', Ret, St, Err) then begin
      AplicarValoresCalculadosDuimpNosItensNFe(Ret, Params, ItensNFe);
      RecalcularICMSComVBCAtualLocal;
      if ContarItensVBCICMSPendenteLocal = 0 then begin VBCExaustivoFonte := 'modulo tributos da DUIMP por item'; VBCExaustivoAplicado := True; Result := 1; Exit; end;
      V := ExtrairVBCICMSJsonLocal(Ret, False);
      if V > 0 then begin Result := V; VBCExaustivoFonte := 'modulo tributos da DUIMP'; Exit; end;
    end;

    V := ExtrairVBCICMSJsonLocal(RetornoItens, False);
    if V > 0 then begin Result := V; VBCExaustivoFonte := 'consulta de itens da DUIMP'; Exit; end;
  end;

  procedure AplicarTTCEAoItem(const AJsonTTCE: string; var AItem: TDuimpNFeItemCompleto);
  var
    Root: ISuperObject;
    function DetectarTributoTTCE(AObj: ISuperObject; const ATributoAtual: string): string;
    begin
      Result := ATributoAtual; if not Assigned(AObj) then Exit;
      if TTCETributoEh(AObj, 'II') then Result := 'II' else if TTCETributoEh(AObj, 'IPI') then Result := 'IPI'
      else if TTCETributoEh(AObj, 'PIS') then Result := 'PIS' else if TTCETributoEh(AObj, 'COFINS') then Result := 'COFINS';
    end;
    procedure AplicarAliquotaDetectada(const ATributo: string; const AAliquota: Double);
    begin
      if AAliquota <= 0 then Exit;
      if SameText(ATributo, 'II') and (AItem.II.pAliq = 0) then AItem.II.pAliq := AAliquota
      else if SameText(ATributo, 'IPI') and (AItem.IPI.pIPI = 0) then AItem.IPI.pIPI := AAliquota
      else if SameText(ATributo, 'PIS') and (AItem.PIS.pAliq = 0) then AItem.PIS.pAliq := AAliquota
      else if SameText(ATributo, 'COFINS') and (AItem.COFINS.pAliq = 0) then AItem.COFINS.pAliq := AAliquota;
    end;
    procedure VisitarTTCE(AObj: ISuperObject; const ATributoAtual: string);
    var Iter: TSuperObjectIter; Filho: ISuperObject; J: Integer; TributoDetectado: string; Aliq: Double;
    begin
      if not Assigned(AObj) then Exit;
      TributoDetectado := DetectarTributoTTCE(AObj, ATributoAtual);
      Aliq := TTCEAliquota(AObj);
      AplicarAliquotaDetectada(TributoDetectado, Aliq);
      case AObj.DataType of
        stObject:
          if ObjectFindFirst(AObj, Iter) then
          try repeat Filho := Iter.val; if Assigned(Filho) and (Filho.DataType in [stObject, stArray]) then VisitarTTCE(Filho, TributoDetectado);
          until not ObjectFindNext(Iter); finally ObjectFindClose(Iter); end;
        stArray:
          for J := 0 to AObj.AsArray.Length - 1 do begin Filho := AObj.AsArray.O[J]; if Assigned(Filho) then VisitarTTCE(Filho, TributoDetectado); end;
      end;
    end;
  begin
    Root := SO(AJsonTTCE); if not Assigned(Root) then Exit; VisitarTTCE(Root, '');
  end;

  procedure ComplementarDescricoesCatp;
  var K: Integer; JsonCatp: string; RootCatp: ISuperObject; Desc, Denom: string;
  begin
    for K := 0 to High(ItensNFe) do
    begin
      if (Trim(ItensNFe[K].CpfCnpjRaiz) <> '') and (Trim(ItensNFe[K].CodigoProduto) <> '') and (Trim(ItensNFe[K].VersaoProduto) <> '') then
      begin
        try
          JsonCatp := FClient.ConsultarCatpProdutoDetalhe(ItensNFe[K].CpfCnpjRaiz, ItensNFe[K].CodigoProduto, ItensNFe[K].VersaoProduto);
          RootCatp := SO(JsonCatp);
          if Assigned(RootCatp) then
          begin
            Desc := JsonTextAnyLocal(RootCatp, ['descricao', 'resultado.descricao']);
            Denom := JsonTextAnyLocal(RootCatp, ['denominacao', 'produto.denominacao', 'resultado.denominacao']);

            if Trim(Desc) <> '' then
              ItensNFe[K].xProd := Trim(Desc)
            else if Trim(Denom) <> '' then
              ItensNFe[K].xProd := Trim(Denom);

            RemoverStatusTokenLocal(ItensNFe[K].StatusValidacao, 'xProd vazio');
            if (Trim(ItensNFe[K].StatusValidacao) <> '') and (not SameText(Trim(ItensNFe[K].StatusValidacao), 'OK')) then ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + '; ';
            if SameText(Trim(ItensNFe[K].StatusValidacao), 'OK') then ItensNFe[K].StatusValidacao := '';
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + 'xProd complementado via CATP';
            AtualizarStatusCamposPreenchidosLocal(ItensNFe[K]);
          end;
        except
        end;
      end;
    end;
  end;

  procedure ComplementarComTTCE;
  var K: Integer; RawItem: ISuperObject; DeveConsultar: Boolean;
  begin
    if not Assigned(ArrItens) then Exit;
    CodigoPais := StrToIntDef(OnlyDigitsLocal(TextoEditAnyPorNome(['EditDestenderDestcPais'])), 0);
    for K := 0 to High(ItensNFe) do begin
      RawItem := nil; if K < ArrItens.Length then RawItem := ArrItens.O[K];
      DeveConsultar :=
        ((ItensNFe[K].II.pAliq = 0) and (ItensNFe[K].II.vBC = 0) and (ItensNFe[K].II.vImp = 0)) or
        ((ItensNFe[K].IPI.pIPI = 0) and (ItensNFe[K].IPI.vBC = 0) and (ItensNFe[K].IPI.vIPI = 0)) or
        ((ItensNFe[K].PIS.pAliq = 0) and (ItensNFe[K].PIS.vBC = 0) and (ItensNFe[K].PIS.vImp = 0)) or
        ((ItensNFe[K].COFINS.pAliq = 0) and (ItensNFe[K].COFINS.vBC = 0) and (ItensNFe[K].COFINS.vImp = 0));

      if DeveConsultar and Assigned(RawItem) then begin
        if (Trim(ItensNFe[K].NCM) <> '') and (CodigoPais > 0) and (Trim(DataFatoGerador) <> '') then begin
          RetornoTTCE := ''; ErroHTTP := ''; StatusHTTP := 0;
          if FClient.TryConsultarTTCEImportacao(ItensNFe[K].NCM, CodigoPais, DataFatoGerador, RetornoTTCE, StatusHTTP, ErroHTTP) then begin
            AplicarTTCEAoItem(RetornoTTCE, ItensNFe[K]);
            if Trim(ItensNFe[K].StatusValidacao) <> '' then ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + '; ';
            ItensNFe[K].StatusValidacao := ItensNFe[K].StatusValidacao + 'TTCE consultada como complemento.';
          end;
        end;
      end;
    end;
  end;

begin
  MemoRetorno.Clear;

  try
    GarantirAutenticado;

    NumeroDuimp := NumeroDuimpInformado;
    VersaoDuimp := VersaoDuimpInformada;

    if NumeroDuimp = '' then raise Exception.Create('Informe o numero da DUIMP.');
    if VersaoDuimp <= 0 then raise Exception.Create('Informe a versao da DUIMP.');

    AddStatus('DUIMP - GERACAO DO XML NF-e DE IMPORTACAO');
    AddStatus('------------------------------------------------------------');
    AddStatus('Buscando dados gerais e itens...');

    RetornoGeral := FClient.ConsultarDuimp(NumeroDuimp, VersaoDuimp);
    RetornoItens := FClient.ConsultarDuimpItens(NumeroDuimp, VersaoDuimp);
    
    RetornoPcce := ''; StatusHTTP := 0; ErroHTTP := '';
    ValorAfrmmPcce := 0; PercentualIcmsPcce := 0;

    if not FClient.TryGetJson('/pcce/api/ext/priv/icms/' + NumeroDuimp, RetornoPcce, StatusHTTP, ErroHTTP) then
      if not FClient.TryGetJson('/pcce/api/ext/priv/icms/' + NumeroDuimp + '/declaracao-ativa', RetornoPcce, StatusHTTP, ErroHTTP) then
         FClient.TryGetJson('/pcce/api/ext/sefaz/icms/consulta/' + NumeroDuimp, RetornoPcce, StatusHTTP, ErroHTTP);

    RootGeral := SO(RetornoGeral);
    RootItens := SO(RetornoItens);
    ArrItens := RootArrayLocal(RootItens);

    if Assigned(RootGeral) then
    begin
      TranspCNPJ := PrimeiroTextoLocal(TextoEditAnyPorNome(['EditlTranspCNPJ']), OnlyDigitsLocal(JsonTextAnyLocal(RootGeral, ['carga.transportador.ni', 'carga.transportador.cnpj'])));
      TranspNome := PrimeiroTextoLocal(TextoEditAnyPorNome(['EditTranspxNome']), JsonTextAnyLocal(RootGeral, ['carga.transportador.nome']));
      TranspIE := PrimeiroTextoLocal(TextoEditAnyPorNome(['EditTranspIE']), JsonTextAnyLocal(RootGeral, ['carga.transportador.ie']));
      TranspEnder := PrimeiroTextoLocal(TextoEditAnyPorNome(['EditTranspxEnder']), JsonTextAnyLocal(RootGeral, ['carga.transportador.endereco']));
      TranspMun := PrimeiroTextoLocal(TextoEditAnyPorNome(['EditTranspxMun']), JsonTextAnyLocal(RootGeral, ['carga.transportador.municipio']));
      TranspUF := PrimeiroTextoLocal(UpperCase(TextoEditAnyPorNome(['EditTranspUF'])), UpperCase(JsonTextAnyLocal(RootGeral, ['carga.transportador.uf'])));
    end;

    if not Assigned(RootGeral) then raise Exception.Create('JSON invalido no retorno da DUIMP.');
    if not Assigned(ArrItens) then raise Exception.Create('Nao foi encontrado array de itens no retorno da DUIMP.');

    FillChar(Params, SizeOf(Params), 0);
    CFOPERP := TextoEditAnyPorNome(['EditdetprodCFOP', 'EditldetprodCFOP']);
    if Trim(CFOPERP) <> '' then Params.CFOP := CFOPERP;

    ICMSOrigERP := TextoEditAnyPorNome(['EditICMSorig']);
    if Trim(ICMSOrigERP) <> '' then Params.OrigemMercadoria := StrToIntDef(ICMSOrigERP, 0);

    Params.CSTIPI := TextoEditAnyPorNome(['EditIPICST', 'EditCSTIPI']);
    Params.EnqIPI := TextoEditAnyPorNome(['EditIPIcEnq', 'EditcEnqIPI', 'EditcEnq']);
    Params.CSTPIS := TextoEditAnyPorNome(['EditPISCST', 'EditCSTPIS']);
    Params.CSTCOFINS := TextoEditAnyPorNome(['EditCOFINSCST', 'EditCSTCOFINS']);

    ICMSPICMSERP := TextoEditAnyPorNome(['EditPICMS']);
    ICMSPICMSValor := FloatTextLocal(ICMSPICMSERP);
    ICMSTemPICMSERP := ICMSPICMSValor > 0;
    if ICMSTemPICMSERP then Params.AliqICMS := ICMSPICMSValor;

    ICMSModBCERP := Trim(TextoEditAnyPorNome(['EditmodBC', 'EditICMSmodBC']));
    ICMSModBCValor := -1; ICMSModBCInvalido := False;
    if ICMSModBCERP <> '' then
    begin
      try ICMSModBCValor := StrToInt(ICMSModBCERP); if (ICMSModBCValor < 0) or (ICMSModBCValor > 3) then ICMSModBCInvalido := True;
      except ICMSModBCInvalido := True; end;
    end;

    // --- CORREÇÃO DO AFRMM DA TELA ---
    ValorAfrmmERP := 0;
    if Assigned(CEVAFRMM) then 
    begin
      ValorAfrmmERP := CEVAFRMM.Value;
      if ValorAfrmmERP = 0 then ValorAfrmmERP := FloatTextLocal(CEVAFRMM.Text);
    end;
    // ---------------------------------

    UFDesembERP := UpperCase(TextoEditAnyPorNome(['EditdetprodUFDesemb']));

    MontarDuimpItensNFeCompleto(RetornoGeral, RetornoItens, NumeroDuimp, VersaoDuimp, Params, ItensNFe);

    LTotalvProdItem := 0;
    for I := Low(ItensNFe) to High(ItensNFe) do
      LTotalvProdItem := LTotalvProdItem + ItensNFe[I].vProd;

    // =========================================================================
    // LÓGICA DE RATEIO DO FRETE EXCLUSIVO PARA BASE DO ADUANEIRO E EXCLUÍDO DO XML
    // =========================================================================
    LTotalLocalEmbarque := 0;
    for I := Low(ItensNFe) to High(ItensNFe) do
      LTotalLocalEmbarque := LTotalLocalEmbarque + ItensNFe[I].ValorLocalEmbarqueBRL;

    LValFrete := 0;
    if Assigned(CEVFRETE) then 
    begin
      LValFrete := CEVFRETE.Value;
      if LValFrete = 0 then LValFrete := FloatTextLocal(CEVFRETE.Text);
    end;

    if (LTotalLocalEmbarque > 0) and (LValFrete > 0) then
    begin
      SomaFreteRateio := 0;
      for I := Low(ItensNFe) to High(ItensNFe) do
      begin
        PrecisaCalcularAduaneiro := Abs(ItensNFe[I].ValorAduaneiroBRL - (ItensNFe[I].ValorLocalEmbarqueBRL + ItensNFe[I].vFrete + ItensNFe[I].vSeg)) < 0.01;

        if I = High(ItensNFe) then
          NovoFrete := Round((LValFrete - SomaFreteRateio) * 100) / 100
        else
          NovoFrete := Round(((ItensNFe[I].ValorLocalEmbarqueBRL / LTotalLocalEmbarque) * LValFrete) * 100) / 100;

        SomaFreteRateio := SomaFreteRateio + NovoFrete;
        ItensNFe[I].vFrete := NovoFrete;

        if PrecisaCalcularAduaneiro then
        begin
          ItensNFe[I].ValorAduaneiroBRL := ItensNFe[I].ValorLocalEmbarqueBRL + ItensNFe[I].vFrete + ItensNFe[I].vSeg;
          ItensNFe[I].vProd := ItensNFe[I].ValorAduaneiroBRL;
        end;
      end;
    end;

    LTotalvProdItem := 0;
    for I := Low(ItensNFe) to High(ItensNFe) do
      LTotalvProdItem := LTotalvProdItem + ItensNFe[I].vProd;

    // =========================================================================
    // LÓGICA DE RATEIO DO SISCOMEX E AFRMM COM AJUSTE DE CENTAVOS PELO ALGORITMO EXATO
    // =========================================================================
    LValSiscomex := 0;
    if Assigned(CEVTAXASISCOMEX) then 
    begin
      LValSiscomex := CEVTAXASISCOMEX.Value;
      if LValSiscomex = 0 then LValSiscomex := FloatTextLocal(CEVTAXASISCOMEX.Text);
    end;

    LValAfrmm := ValorAfrmmERP; 

    if LTotalvProdItem > 0 then
    begin
      SomaOutrasDespesasRateio := 0; 
      SomaAfrmmRateio := 0;
      
      for I := Low(ItensNFe) to High(ItensNFe) do
      begin
        if I = High(ItensNFe) then
        begin
          if LValSiscomex > 0 then
            ItensNFe[I].vOutro := Round((LValSiscomex - SomaOutrasDespesasRateio) * 100) / 100;
            
          if LValAfrmm > 0 then
            ItensNFe[I].DI.vAFRMM := Round((LValAfrmm - SomaAfrmmRateio) * 100) / 100;
        end
        else
        begin
          if LValSiscomex > 0 then
          begin
            ItensNFe[I].vOutro := Round(((ItensNFe[I].vProd / LTotalvProdItem) * LValSiscomex) * 100) / 100;
            SomaOutrasDespesasRateio := SomaOutrasDespesasRateio + ItensNFe[I].vOutro;
          end;

          if LValAfrmm > 0 then
          begin
            ItensNFe[I].DI.vAFRMM := Round(((ItensNFe[I].vProd / LTotalvProdItem) * LValAfrmm) * 100) / 100;
            SomaAfrmmRateio := SomaAfrmmRateio + ItensNFe[I].DI.vAFRMM;
          end;
        end;
      end;
    end;
    // =========================================================================
    
    LViaTransp := ExtrairViaTransporteLocal(RootGeral);

    for I := 0 to High(ItensNFe) do
    begin
      if (Trim(ItensNFe[I].CFOP) = '') and (Trim(Params.CFOP) <> '') then ItensNFe[I].CFOP := Params.CFOP;
      if (Trim(ItensNFe[I].DI.UFDesemb) = '') and (Trim(UFDesembERP) <> '') then ItensNFe[I].DI.UFDesemb := UFDesembERP;
      if (ItensNFe[I].ICMS.Orig = 0) and (Params.OrigemMercadoria > 0) then ItensNFe[I].ICMS.Orig := Params.OrigemMercadoria;
      
      if ItensNFe[I].ICMS.Orig = 0 then ItensNFe[I].ICMS.Orig := 1;
      if Trim(ItensNFe[I].ICMS.CST) = '' then ItensNFe[I].ICMS.CST := '00';
      if Trim(ItensNFe[I].PIS.CST) = '' then ItensNFe[I].PIS.CST := '01';
      if Trim(ItensNFe[I].COFINS.CST) = '' then ItensNFe[I].COFINS.CST := '01';
      if ItensNFe[I].IPI.vIPI > 0 then ItensNFe[I].IPI.CST := '00' else ItensNFe[I].IPI.CST := '49';
      
      ItensNFe[I].DI.tpViaTransp := LViaTransp;
      ItensNFe[I].DI.tpIntermedio := 1;         

      AtualizarStatusCamposPreenchidosLocal(ItensNFe[I]);
    end;

    if Trim(RetornoGeral) <> '' then AplicarValoresCalculadosDuimpNosItensNFe(RetornoGeral, Params, ItensNFe);

    if Trim(RetornoPcce) <> '' then
    begin
      ValorAfrmmPcce := ExtrairVAfrmmTotalDuimpJson(RetornoPcce);
      if (ValorAfrmmPcce > 0) and (LValAfrmm <= 0) then 
        AplicarVAfrmmTotalNosItensNFe(ValorAfrmmPcce, ItensNFe);
        
      PercentualIcmsPcce := ExtrairPercentualICMSDuimpJson(RetornoPcce);
      if PercentualIcmsPcce > 0 then AplicarPercentualICMSNosItensNFe(PercentualIcmsPcce, ItensNFe);
    end;

    DataFatoGerador := ExtrairDataFatoGeradorLocal(RootGeral);
    ComplementarDescricoesCatp;
    ComplementarComTTCE;
    AplicarPICMSErpLocal;
    AplicarModBCERPLocal;

    QtdItensVBCICMSPendente := ContarItensVBCICMSPendenteLocal;
    VBCExaustivoResultado := 0; VBCExaustivoFonte := ''; VBCExaustivoAplicado := False;

    if QtdItensVBCICMSPendente > 0 then
    begin
      VBCExaustivoResultado := TentarBuscaExaustivaVBCICMSLocal;
      if (VBCExaustivoResultado > 0) and (not VBCExaustivoAplicado) and (Trim(VBCExaustivoFonte) <> '') then
        AplicarVBCGlobalSeguroLocal(VBCExaustivoResultado, VBCExaustivoFonte);
    end;

    AplicarPICMSErpLocal;
    RecalcularICMSComVBCAtualLocal;
    
    // =========================================================================
    // RE-CALCULAR BASE DE CÁLCULO ICMS POR DENTRO APÓS RATEIOS
    // =========================================================================
    AplicarFallbackICMSPorDentroLocal;
    RecalcularICMSComVBCAtualLocal;

    for I := 0 to High(ItensNFe) do
      AtualizarStatusCamposPreenchidosLocal(ItensNFe[I]);

    DuimpERPPreencherConfigNFe(Self, NumeroDuimp, TranspCNPJ, TranspNome, TranspIE, TranspEnder, TranspMun, TranspUF, ConfigNFe);
    
    // =========================================================================
    // FORÇAR VALORES DE TELA PARA A TAG <vol> NA GERAÇÃO DO XML COM TRATATIVA (CORREÇÃO 2)
    // =========================================================================
    if Assigned(CEQVOL) then
    begin
      if CEQVOL.Value > 0 then ConfigNFe.TranspQVol := Trunc(CEQVOL.Value)
      else ConfigNFe.TranspQVol := Trunc(FloatTextLocal(CEQVOL.Text));
    end;

    if Assigned(EditESP) and (Trim(EditESP.Text) <> '') then
      ConfigNFe.TranspEsp := Trim(EditESP.Text);

    if Assigned(EditMarca) and (Trim(EditMarca.Text) <> '') then
      ConfigNFe.TranspMarca := Trim(EditMarca.Text);

    if Assigned(CEPESOL) then
    begin
      if CEPESOL.Value > 0 then ConfigNFe.TranspPesoL := CEPESOL.Value
      else ConfigNFe.TranspPesoL := FloatTextLocal(CEPESOL.Text);
    end;

    if Assigned(CEPESOB) then
    begin
      if CEPESOB.Value > 0 then ConfigNFe.TranspPesoB := CEPESOB.Value
      else ConfigNFe.TranspPesoB := FloatTextLocal(CEPESOB.Text);
    end;
    // =========================================================================

    DuimpERPPreencherEmitenteNFe(Self, EmitenteNFe);
    DuimpERPPreencherDestinatarioNFe(Self, EmitenteNFe, DestinatarioNFe);

    ValidacaoNFe := Trim(DuimpERPValidarConfigNFe(Self, ConfigNFe));
    if ValidacaoNFe <> '' then
      raise Exception.Create('Pendencias na configuracao <ide> da NF-e:' + sLineBreak + ValidacaoNFe);

    ValidacaoNFe := Trim(DuimpValidarDadosNFeCompleta(ItensNFe, EmitenteNFe, DestinatarioNFe));
    
    // =========================================================================
    // CORREÇÃO: IGNORAR A OBRIGATORIEDADE DO CNPJ DO DESTINATÁRIO
    // =========================================================================
    ValidacaoNFe := StringReplace(ValidacaoNFe, '- Destinatario sem CNPJ.', '', [rfReplaceAll, rfIgnoreCase]);
    ValidacaoNFe := Trim(ValidacaoNFe);
    while Pos(#13#10#13#10, ValidacaoNFe) > 0 do
      ValidacaoNFe := StringReplace(ValidacaoNFe, #13#10#13#10, #13#10, [rfReplaceAll]);

    if (ValidacaoNFe <> '') and (not SameText(ValidacaoNFe, 'OK')) then
      raise Exception.Create('Pendencias para gerar XML NF-e valido:' + sLineBreak + ValidacaoNFe);

    if Assigned(MemoinfCpl) and (Trim(MemoinfCpl.Text) <> '') then
      InfCplNFe := Trim(MemoinfCpl.Text)
    else
      InfCplNFe := 'NF-e de importacao gerada a partir da DUIMP ' + NumeroDuimp;

    XmlNFe := DuimpGerarXmlNFeImportacaoCompleta(
      NumeroDuimp,
      ItensNFe,
      EmitenteNFe,
      DestinatarioNFe,
      ConfigNFe,
      InfCplNFe
    );

    ArquivoXml := DuimpNomeArquivoXmlDownloads(NumeroDuimp);
    PastaXml := ExtractFilePath(ArquivoXml);
    if (Trim(PastaXml) <> '') and (not DirectoryExists(PastaXml)) then
      ForceDirectories(PastaXml);

    DuimpERPSalvarTextoUTF8(ArquivoXml, XmlNFe);

    AddStatus('XML NF-e completo gerado com sucesso.');
    AddStatus('Arquivo salvo em: ' + ArquivoXml);
    ScrollMemoToTop;

    MessageDlg(
      'XML NF-e gerado com sucesso:' + sLineBreak + ArquivoXml,
      mtInformation,
      [mbOK],
      0
    );
  except
    on E: Exception do
    begin
      AddStatus('');
      AddStatus('Erro ao gerar XML da DUIMP:');
      AddStatus(E.Message);
      ScrollMemoToTop;
      MessageDlg('Erro ao gerar XML da DUIMP:' + sLineBreak + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

end.
