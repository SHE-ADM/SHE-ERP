unit pRelatorios_OLD;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxEditor,
  ActnList, XPStyleActnCtrls, ActnMan, QRPDFFilt, QRExport, DateUtils,
  dxBar,
  dxBarExtItems, dxsbar, dxDockPanel, dxDockControl;

Type
  TFrmRelatorios_OLD = class(TForm)
    TConsulta: TIBTransaction;
    AMPrincipal: TActionManager;
    ACTRECTitulos: TAction;
    ACTRECTitulosConsolidados: TAction;
    ACTGER_CRD: TAction;
    ACTEST_ETQ_PAD: TAction;
    ACTEST_ENT_ROM: TAction;
    ACTGerencial_Estoque_Unidade_Medida: TAction;
    ACTGerencial_NF_Tipo_Operacao: TAction;
    ACTEST_ETQ_PEQ: TAction;
    ILMenu: TImageList;
    BMMain: TdxBarManager;
    BLBSalva: TdxBarLargeButton;
    BLBValida: TdxBarLargeButton;
    BLBCancela: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    BLBImprime: TdxBarLargeButton;
    BLBConverte: TdxBarLargeButton;
    BLBVisualiza: TdxBarLargeButton;
    DMMain: TdxDockingManager;
    ALMain: TActionList;
    ACTSaida: TAction;
    ACTImprime: TAction;
    ACTVisualiza: TAction;
    ACTConverte: TAction;
    DSMenu: TdxDockSite;
    LDSMenu: TdxLayoutDockSite;
    LDSEdicao: TdxLayoutDockSite;
    DPMenu: TdxDockPanel;
    SBMenu: TdxSideBar;
    DPEdicao: TdxDockPanel;
    PNLEdicao: TPanel;
    PNLRelatorios: TPanel;
    SANome: TShape;
    SBNome: TShape;
    SAEmpresa: TShape;
    SBEmpresa: TShape;
    LANome: TLabel;
    LAEmpresa: TLabel;
    SBTipo: TShape;
    SATipo: TShape;
    LATipo: TLabel;
    SAStatus: TShape;
    SBStatus: TShape;
    LAStatus: TLabel;
    IENome: TdxImageEdit;
    IEEmpresa: TdxImageEdit;
    IETipo: TdxImageEdit;
    IEStatus: TdxImageEdit;
    PNLData: TPanel;
    GBData1: TGroupBox;
    MCData1: TMonthCalendar;
    GBData2: TGroupBox;
    MCData2: TMonthCalendar;
    PNLPeriodo: TPanel;
    GBPeriodo: TGroupBox;
    SAData: TShape;
    LAData: TLabel;
    SBData: TShape;
    IEData: TdxImageEdit;
    GBIntervalo: TGroupBox;
    LADEData: TLabel;
    PNLCodigos: TPanel;
    GB1Codigo: TGroupBox;
    PEC1Codigo: TdxPickEdit;
    GB2Codigo: TGroupBox;
    PEC2Codigo: TdxPickEdit;
    PNLRodape: TPanel;
    GBConsulta: TGroupBox;
    SBC2Consulta: TShape;
    SAC2Consulta: TShape;
    SAC1Consulta: TShape;
    SBC1Consulta: TShape;
    SAC3Consulta: TShape;
    SBC3Consulta: TShape;
    LAC2Consulta: TLabel;
    SAC4Consulta: TShape;
    SBC4Consulta: TShape;
    LAC3Consulta: TLabel;
    LAC4Consulta: TLabel;
    LAC1Consulta: TLabel;
    SAC1ConsultaWhere: TShape;
    SAC2ConsultaWhere: TShape;
    SAC3ConsultaWhere: TShape;
    SAC4ConsultaWhere: TShape;
    IEC1Consulta: TdxImageEdit;
    IEC2Consulta: TdxImageEdit;
    PEC1Consulta: TdxPickEdit;
    PEC2Consulta: TdxPickEdit;
    IEC3Consulta: TdxImageEdit;
    PEC3Consulta: TdxPickEdit;
    IEC4Consulta: TdxImageEdit;
    PEC4Consulta: TdxPickEdit;
    IEC1ConsultaWhere: TdxImageEdit;
    IEC2ConsultaWhere: TdxImageEdit;
    IEC3ConsultaWhere: TdxImageEdit;
    IEC4ConsultaWhere: TdxImageEdit;
    ACTProduto_Compra_Planejamento: TAction;
    SQLConsulta: TIBSQL;
    ACTProduto_Custo_Importado: TAction;
    ACTPROSpedFiscal: TAction;
    ACTProduto_Devolucao_Cancelamento: TAction;
    ACTFinanceiro_Abatimento: TAction;
    ACTGCadastros_Venda_Produto: TAction;
    SAModelo: TShape;
    SBModelo: TShape;
    LAModelo: TLabel;
    IEModelo: TdxImageEdit;
    ACTProduto_Venda: TAction;
    ACTCliente_Produto_Atendido: TAction;
    ACTCadastros_Listagem: TAction;
    ACTProduto_Estoque: TAction;
    ACTProduto_Estoque_Etiqueta: TAction;
    ACTProduto_Ficha_Tecnica: TAction;
    ACTGFinanceiro_Cadastros_Duplicata: TAction;
    ACTProduto_Ranking: TAction;
    ACTProduto_Tabela_Preco: TAction;
    ACTGProduto_Tabela_Preco: TAction;
    ACTGerencial_Tipo_Venda: TAction;
    ACTGerencial_NF_Peso: TAction;
    ACTGGerencial_Performance_Venda: TAction;
    ACTProduto_Venda_Inativo: TAction;
    ACTCadastros_Ranking: TAction;
    ACTProduto_Venda_Mensal: TAction;
    ACTProduto_Venda_Regiao_Nacional: TAction;
    ACTProduto_Venda_Regiao_UF: TAction;
    ACTPedidos: TAction;
    SQLFKConsulta: TIBSQL;
    ACTRomaneio: TAction;
    ACTGFornecedoresProdutosCadastrados: TAction;
    ACTCliente_Produto_Nao_Atendido: TAction;
    ACTREL_FOR_PDC_REC: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure IENomeChange(Sender: TObject);
    procedure IEEmpresaChange(Sender: TObject);
    procedure IETipoChange(Sender: TObject);
    procedure IEDataChange(Sender: TObject);
    procedure PEC1CodigoChange(Sender: TObject);
    procedure ACTEST_ETQ_PADExecute(Sender: TObject);
    procedure IEStatusChange(Sender: TObject);
    procedure IEC1ConsultaChange(Sender: TObject);
    procedure IEC1ConsultaWhereChange(Sender: TObject);
    procedure PEC1ConsultaChange(Sender: TObject);
    procedure MCData1Click(Sender: TObject);
    procedure ACTEST_ENT_ROMExecute(Sender: TObject);
    procedure ACTEST_ETQ_PEQExecute(Sender: TObject);
    procedure ACTImprimeExecute(Sender: TObject);
    procedure ACTConverteExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTProduto_Compra_PlanejamentoExecute(Sender: TObject);
    procedure ACTVisualizaExecute(Sender: TObject);
    procedure ACTProduto_Custo_ImportadoExecute(Sender: TObject);
    procedure IEModeloChange(Sender: TObject);
    procedure ACTProduto_EstoqueExecute(Sender: TObject);
    procedure ACTProduto_Estoque_EtiquetaExecute(Sender: TObject);
    procedure ACTProduto_Ficha_TecnicaExecute(Sender: TObject);
    procedure PEC2CodigoChange(Sender: TObject);
    procedure ACTPedidosExecute(Sender: TObject);
    procedure MCData2Click(Sender: TObject);
    procedure ACTGFornecedoresProdutosCadastradosExecute(Sender: TObject);
    procedure ACTCadastros_RankingExecute(Sender: TObject);
    procedure ACTREL_FOR_PDC_RECExecute(Sender: TObject);
    procedure ACTProduto_VendaExecute(Sender: TObject);
    procedure ACTProduto_Venda_MensalExecute(Sender: TObject);
    procedure ACTGProduto_Tabela_PrecoExecute(Sender: TObject);
  private
    { Private declarations }
    FMSGCaption: Variant;
    FCaixa     : Boolean;

    { Definindo uma propriedade no form
      Criado um atributo FMSGCaption e um método SetMSGCaption para trabalhar com a propriedade
      FMSGCaption   - Encapsula a informação
      SetMSGCaption - Método de acesso que recebe a atualização da informação MSGCaption
      Não usarei o método SetMSGCaption para atribuir informação a FMSGRodpae,
      vou apenas utilizar a propriedade }

    { método para atribuição\validação de valor }
    procedure SetMSGCaption(const AValue: Variant);
    procedure SetCaixa    (const AValue: Boolean);

    procedure _Perfis;
    procedure _FillParams(ATipo,AStatus,AData: String;AConsultas: Array of String);
    procedure _Empresas;
    procedure _Relatorios;
    procedure _Parametros;
    procedure _Hints(AComponente: Word);
    procedure _Tabelas(AComponente: Word);
    procedure _Visualizar_Todos;
  public
    { Public declarations }
    property SMSGCaption: Variant read FMSGCaption write SetMSGCaption;
    property BCaixa     : Boolean read FCaixa     write SetCaixa;

    Constructor Create(AOwner: TComponent;Const ANome: String; APerfil: Word; AId: Integer = 0;ACD1: String = '';ACD2: String = ''); reintroduce; overload;
  end;

var
  FrmRelatorios_OLD: TFrmRelatorios_OLD;
  ExecRelat    : TAction;
  RECRelatorios: TRECRelatorios;

implementation

uses uPrincipal, bPrincipal

  {$IF DEFINED(DEF_ERP)}
       ,qProduto_Compra_Planejamento,
       qProduto_Custo_Importado,
       qFicha_Tecnica,
       qProduto_Estoque, qProduto_Estoque_Etiqueta,
       qEST_ENT_ROM, qEST_ETQ_PAD, qEST_ETQ_PEQ,
       qGFornecedoresProdutosCadastrados, QREL_PED_COM,
       QCadastros_Ranking, qProduto_Venda, qProduto_Venda_Mensal, qGProduto_Tabela_Preco 

  {$ELSEIF DEFINED(DEF_PDV)}
       ,qFicha_Tecnica,
       qProduto_Estoque, qProduto_Estoque_Etiqueta

  {$IFEND}

  ;

{$R *.dfm}

procedure TFrmRelatorios_OLD.SetMSGCaption(const AValue: Variant);
begin
  case AValue of
    1: FMSGCaption := 'Gerenciais';
  end;
  Caption := FMSGCaption;
end;

procedure TFrmRelatorios_OLD.SetCaixa(const AValue: Boolean);
begin
  FCaixa := AValue;
end;

Constructor TFrmRelatorios_OLD.Create(AOwner: TComponent;Const ANome: String; APerfil: Word; AId: Integer = 0;ACD1: String = '';ACD2: String = '');
begin
  oIRECRelatorios(RECRelatorios);

  RECRelatorios.Id   := IntToStr(AID);
  RECRelatorios.IDEP := '0';
  RECRelatorios.DEEP := EmptyStr;

  RECRelatorios.Perfil := APerfil;
  RECRelatorios.Nome   := ANome;

  RECRelatorios.PEC1CodigoText := IFThen(((not oEmpty(ACD1)) and (not oEmpty(ACD2))),ACD1,'TODOS');
  RECRelatorios.PEC2CodigoText := IFThen(((not oEmpty(ACD1)) and (not oEmpty(ACD2))),ACD2,'TODOS');

  inherited Create(AOwner);
end;

procedure TFrmRelatorios_OLD.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  oOTransact(TConsulta);

  { Métodos }
  SMSGCaption := RECRelatorios.Perfil;
  BCaixa      := False;

  { Parâmetros }
  MCData1.Date := RECRelatorios.IEDataText1;
  MCData2.Date := RECRelatorios.IEDataText2;

  { Empresa }
//  IEEmpresa.Enabled := RECUsuarios.TodasEmpresas;

  try
    IEEmpresa.Descriptions.BeginUpdate;
    IEEmpresa.Values.BeginUpdate;
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   FANTASIA FROM TAB_PAR_SIS');
      SQL.Add('GROUP BY 1');
      SQL.Add('ORDER BY 1');
      Prepare;
      ExecQuery;
      while not eof do
      begin
        IEEmpresa.Descriptions.Add(Current.Vars[0].AsString);
        IEEmpresa.Values.Add(Current.Vars[0].AsString);
        Next;
      end;
    end;
  finally
    IEEmpresa.Descriptions.EndUpdate;
    IEEmpresa.Values.EndUpdate;
  end;

  _Perfis;
  Height := Height - IFThen(not PNLCodigos.Visible,PNLCodigos.Height,0);
end;

procedure TFrmRelatorios_OLD.FormShow(Sender: TObject);
begin
  { Herança }
  RECRelatorios.AFrmStyle    := FormStyle;
  RECRelatorios.AFrmPosition := Position;
end;

procedure TFrmRelatorios_OLD.FormActivate(Sender: TObject);
begin
  OnActivate    := Nil;
  Screen.Cursor := crDefault;

  if (oEmpty(RECParametros.CDCX)) and (BCaixa) then
  begin
    oErro(Handle,'Acesso Negado !'+#13+
                 'Abertura de caixa não registrada.'+#13+
                 'Motivo: '+RECParametros.CDCX);
    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TFrmRelatorios_OLD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  Action := caFree;
end;

procedure TFrmRelatorios_OLD.FormDestroy(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

    { Transação Principal }
    try
      oFTransact(TConsulta);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    { record e afins }
    try
      oFRECRelatorios(RECRelatorios);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Caption+'.');
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    FrmRelatorios_OLD := Nil;
  end;
end;

procedure TFrmRelatorios_OLD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: ACTSaida.Execute;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, True, True);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
  end;
end;

procedure TFrmRelatorios_OLD.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  {[Ctrl+P]} else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmRelatorios_OLD.ACTVisualizaExecute(Sender: TObject);
begin
  RECRelatorios.PrintTAG := 0;
  RECRelatorios.Handle   := Self.Handle;

  _Relatorios;
end;

procedure TFrmRelatorios_OLD.ACTImprimeExecute(Sender: TObject);
begin
  RECRelatorios.PrintTAG := 1;
  RECRelatorios.Handle   := Self.Handle;

  _Relatorios;
end;

procedure TFrmRelatorios_OLD.ACTConverteExecute(Sender: TObject);
begin
  RECRelatorios.PrintTAG := 3;
  RECRelatorios.Handle   := Self.Handle;

  _Relatorios;
end;

procedure TFrmRelatorios_OLD.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelatorios_OLD.IENomeChange(Sender: TObject);
begin
  if IENome.Text <> RECRelatorios.Nome then
  begin
    RECRelatorios.Nome := IENome.Descriptions[IENome.Values.IndexOf(IENome.Text)];
    IENome.Hint        := RECRelatorios.Nome;

    if RECRelatorios.Nome = 'VENDAS FATURADAS' then
    begin
      IETipo.Text   := 'POR TIPO DE CRÉDITO';
      IEStatus.Text := 'FATURADO';
    end else
    if RECRelatorios.Nome = 'ESTOQUE DE PRODUTOS POR UNIDADE DE MEDIDA' then
    begin
      IETipo.Text   := 'TODOS';
      IEStatus.Text := 'TODOS';
    end else
    if RECRelatorios.Nome = 'Planejamento de Compras de Produtos' then
    begin
      MCData1.Date := StartOfTheMonth(IncMonth(Date,-11));
      MCData2.Date := Date;
    end else
    if RECRelatorios.Nome = 'Vendas Mensais de Produtos' then
    begin
      MCData1.Date := StrToDate('01/01/'+oStrZero(oRETAno(Date),4));
      MCData2.Date := StrToDate('31/12/'+oStrZero(oRETAno(Date),4));
    end;
  end;
  _Empresas;
end;

procedure TFrmRelatorios_OLD.IEModeloChange(Sender: TObject);
begin
  RECRelatorios.Modelo := IEModelo.Text;
  IEModelo.Enabled     := (IEModelo.Text <> 'Padrão');
end;

procedure TFrmRelatorios_OLD.IETipoChange(Sender: TObject);
begin
  RECRelatorios.Tipo      := IETipo.Descriptions[IETipo.Values.IndexOf(IETipo.Text)];
  RECRelatorios.TipoValor := IETipo.Text;

  _Empresas;
end;

procedure TFrmRelatorios_OLD.IEStatusChange(Sender: TObject);
begin
  RECRelatorios.Status := IEStatus.Text;
  _Empresas;
end;

procedure TFrmRelatorios_OLD.IEEmpresaChange(Sender: TObject);
begin
  if RECRelatorios.DEEP <> IEEmpresa.Text then
     with SQLConsulta do
     begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT ID,CNPJ,RAZAO FROM TAB_PAR_SIS');
       SQL.Add('WHERE  FANTASIA = '''+IEEmpresa.Text+'''');
       ExecQuery;

       RECRelatorios.IDEP   := IFThen(Current.Vars[0].AsInteger > 0,Current.Vars[0].AsString,'0');
       RECRelatorios.DEEP   := IEEmpresa.Text;
       RECRelatorios.RZEP   := Current.Vars[2].AsString;
       RECRelatorios.CNPJEP := IFThen(Current.Vars[0].AsInteger > 0,Current.Vars[1].AsString,RECParametros.Cnpj);
     end;
end;

procedure TFrmRelatorios_OLD.MCData1Click(Sender: TObject);
begin
  MCData2.Date := endOfTheMonth(MCData1.Date);
  IEDataChange(Self);
end;

procedure TFrmRelatorios_OLD.MCData2Click(Sender: TObject);
begin
  IEDataChange(Self);
end;

procedure TFrmRelatorios_OLD.IEDataChange(Sender: TObject);
begin
  if not oEmpty(IEData.Text) then
  begin
    if MCData2.Date < MCData1.Date then
       oException(Nil,'Data Inicial ( '+FormatDateTime('dd/mm/yy',MCData1.Date)+' ) não pode ser maior que Data Final ( '+FormatDateTime('dd/mm/yy',MCData2.Date)+' ).');

    RECRelatorios.IEDataCaption := IEData.Descriptions[IEData.Values.IndexOf(IEData.Text)];
    RECRelatorios.IEDataField   := IEData.Values[IEData.Values.IndexOf(IEData.Text)];

    if  RECRelatorios.Nome = 'Listagem de Clientes' then
        RECRelatorios.IEDataField := 'CLI_'+RECRelatorios.IEDataField else
    if  RECRelatorios.Nome = 'Listagem de Representantes' then
        RECRelatorios.IEDataField := 'REP_'+RECRelatorios.IEDataField;

    RECRelatorios.IEDataText1 := MCData1.Date;
    RECRelatorios.IEDataText2 := MCData2.Date;

    GBPeriodo.Font.Color   := clBlack;
    LAData.Font.Color      := clBlack;
    GBIntervalo.Font.Color := clBlack;
    GBData1.Font.Color     := clBlack;
    GBData2.Font.Color     := clBlack;

    MCData1.CalColors.BackColor         := $00FDF9F4;
    MCData1.CalColors.MonthBackColor    := $00FDF9F4;
    MCData1.CalColors.TextColor         := clBlack;
    MCData1.CalColors.TitleBackColor    := $00E1AD40;
    MCData1.CalColors.TitleTextColor    := clBlack;
    MCData1.CalColors.TrailingTextColor := clBlack;
    MCData1.Refresh;

    MCData2.CalColors.BackColor         := $00FDF9F4;
    MCData2.CalColors.MonthBackColor    := $00FDF9F4;
    MCData2.CalColors.TextColor         := clBlack;
    MCData2.CalColors.TitleBackColor    := $00E1AD40;
    MCData2.CalColors.TitleTextColor    := clBlack;
    MCData2.CalColors.TrailingTextColor := clBlack;
    MCData2.Refresh;

    LADEData.Caption := IFThen(IEData.Text <> '',FormatDateTime('dd/mm/yyyy',MCData1.Date)+' '+'até '+FormatDateTime('dd/mm/yyyy',MCData2.Date),'');
    LADEData.Visible := True;
    LADEData.Refresh;

    if IENome.Text = 'ACTProduto_Estoque' then
       IEEmpresa.Text := RECParametros.EP_NO;
  end else
  begin
    RECRelatorios.IEDataCaption := '';
    RECRelatorios.IEDataField   := '';
    RECRelatorios.IEDataText1   := 0;
    RECRelatorios.IEDataText2   := 0;

    GBPeriodo.Font.Color   := clSilver;
    LAData.Font.Color      := clSilver;
    GBIntervalo.Font.Color := clSilver;
    GBData1.Font.Color     := clSilver;
    GBData2.Font.Color     := clSilver;

    MCData1.Date := RECParametros.SHE_DATA_MES_PK;
    MCData1.CalColors.BackColor         := clBtnFace;
    MCData1.CalColors.MonthBackColor    := clBtnFace;
    MCData1.CalColors.TextColor         := clSilver;
    MCData1.CalColors.TitleBackColor    := clBtnFace;
    MCData1.CalColors.TitleTextColor    := clSilver;
    MCData1.CalColors.TrailingTextColor := clBtnFace;
    MCData1.Refresh;

    MCData2.Date := RECParametros.SHE_DATA_MES_FK;
    MCData2.CalColors.BackColor         := clBtnFace;
    MCData2.CalColors.MonthBackColor    := clBtnFace;
    MCData2.CalColors.TextColor         := clSilver;
    MCData2.CalColors.TitleBackColor    := clBtnFace;
    MCData2.CalColors.TitleTextColor    := clSilver;
    MCData2.CalColors.TrailingTextColor := clBtnFace;
    MCData2.Refresh;

    LADEData.Caption := '';
    LADEData.Visible := False;
    LADEData.Refresh;
  end;
end;

procedure TFrmRelatorios_OLD.PEC1CodigoChange(Sender: TObject);
begin
  RECRelatorios.PEC1CodigoText := PEC1Codigo.Text;
  if PNLCodigos.Tag = 0 then
  PEC2Codigo.Text := PEC1Codigo.Text;
end;

procedure TFrmRelatorios_OLD.PEC2CodigoChange(Sender: TObject);
begin
  RECRelatorios.PEC2CodigoText := PEC2Codigo.Text;
end;

procedure TFrmRelatorios_OLD.IEC1ConsultaChange(Sender: TObject);
var
  IEConsultaCaption,
  IEConsultaField,
  IEConsultaAlias: String;
  IEConsultaWhere: TdxImageEdit;
begin
  IEConsultaCaption := TdxImageEdit(Sender).Descriptions[TdxImageEdit(Sender).Values.IndexOf(TdxImageEdit(Sender).Text)];
  IEConsultaField   := TdxImageEdit(Sender).Values[TdxImageEdit(Sender).Values.IndexOf(TdxImageEdit(Sender).Text)];
  IEConsultaAlias   := '';

  if IEConsultaCaption = 'Região Metropolitana' then
     IEConsultaAlias := 'RM.' else
  if IEConsultaCaption = 'Região Nacional' then
     IEConsultaAlias := 'RN.' else
  if IEConsultaCaption = 'UF' then
     IEConsultaAlias := 'UF.';

  if (((Pos('ACTProduto_Venda_Inativo',IENome.Text) > 0) or (Pos('ACTProduto_Ficha',IENome.Text) > 0)) and (Pos('PRO_CART',IEConsultaField) > 0)) then
        IEConsultaAlias := 'PSQ.';

  if (((Pos('ACTProduto',IENome.Text) > 0) or (Pos('ACTGProduto',IENome.Text) > 0) or (Pos('Ranking',IENome.Text) > 0)) and (IEConsultaField = 'CAD_FOR.FOR_FANT')) then
        if Pos(IENome.Text,'ACTProduto_EstoqueACTProduto_Compra_PlanejamentoACTProduto_Custo_Importado') = 0 then
           IEConsultaField := 'PRO_DPSQ';

  if (IEConsultaField = 'CP.ARTIGO') OR (IEConsultaField = 'CP.SKU') then
       IEConsultaAlias := 'CP.';

  if ((Pos('Produto',IENome.Text) > 0) and (IEConsultaCaption = 'Bairro')) then
       IEConsultaAlias := 'CL.CLI_';

  case TdxImageEdit(Sender).Tag of
    1: begin
         RECRelatorios.IEC1ConsultaCaption := IEConsultaCaption;
         RECRelatorios.IEC1ConsultaTable   := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         RECRelatorios.IEC1ConsultaField   := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
    2: begin
         RECRelatorios.IEC2ConsultaCaption := IEConsultaCaption;
         RECRelatorios.IEC2ConsultaTable   := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         RECRelatorios.IEC2ConsultaField   := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
    3: begin
         RECRelatorios.IEC3ConsultaCaption := IEConsultaCaption;
         RECRelatorios.IEC3ConsultaTable   := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         RECRelatorios.IEC3ConsultaField   := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
    4: begin
         RECRelatorios.IEC4ConsultaCaption := IEConsultaCaption;
         RECRelatorios.IEC4ConsultaTable   := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         RECRelatorios.IEC4ConsultaField   := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
  end;

  { Localizando Componente no Form }
  IEConsultaWhere         := FindComponent(Format('IEC%dConsultaWhere',[TdxImageEdit(Sender).Tag])) as TdxImageEdit;
  IEConsultaWhere.Text    := IFThen((Pos(UpperCase(IEConsultaCaption),'IDIDCPPEDIDOROMANEIO' ) > 0),'=',
                             IFThen((Pos(UpperCase(IEConsultaCaption),'ARTIGOSKUPRODUTOGRADE') > 0),'Início','Ambos'));
  IEConsultaWhere.Enabled := not (IEConsultaCaption = 'Selecionar tipo de consulta');

  _Tabelas(TdxImageEdit(Sender).Tag);
end;

procedure TFrmRelatorios_OLD.IEC1ConsultaWhereChange(Sender: TObject);
var
  IEConsultaWhere,
  IEConsultaLike1,
  IEConsultaLike2: String;
begin
  IEConsultaWhere := IFThen(Pos(TdxImageEdit(Sender).Text,'='          ) > 0,'=','LIKE');
  IEConsultaLike1 := IFThen(Pos(TdxImageEdit(Sender).Text,'FinalAmbos' ) > 0,'%','');
  IEConsultaLike2 := IFThen(Pos(TdxImageEdit(Sender).Text,'InícioAmbos') > 0,'%','');

  case TdxImageEdit(Sender).Tag of
    1: begin
         RECRelatorios.IEC1ConsultaWhere := IEConsultaWhere;
         RECRelatorios.IEC1ConsultaLike1 := IEConsultaLike1;
         RECRelatorios.IEC1ConsultaLike2 := IEConsultaLike2;
       end;
    2: begin
         RECRelatorios.IEC2ConsultaWhere := IEConsultaWhere;
         RECRelatorios.IEC2ConsultaLike1 := IEConsultaLike1;
         RECRelatorios.IEC2ConsultaLike2 := IEConsultaLike2;
       end;
    3: begin
         RECRelatorios.IEC3ConsultaWhere := IEConsultaWhere;
         RECRelatorios.IEC3ConsultaLike1 := IEConsultaLike1;
         RECRelatorios.IEC3ConsultaLike2 := IEConsultaLike2;
       end;
    4: begin
         RECRelatorios.IEC4ConsultaWhere := IEConsultaWhere;
         RECRelatorios.IEC4ConsultaLike1 := IEConsultaLike1;
         RECRelatorios.IEC4ConsultaLike2 := IEConsultaLike2;
       end;
  end;

  _Hints(TdxImageEdit(Sender).Tag);
end;

procedure TFrmRelatorios_OLD.PEC1ConsultaChange(Sender: TObject);
begin
  case TdxImageEdit(Sender).Tag of
    1: RECRelatorios.PEC1ConsultaText := TdxImageEdit(Sender).Text;
    2: RECRelatorios.PEC2ConsultaText := TdxImageEdit(Sender).Text;
    3: RECRelatorios.PEC3ConsultaText := TdxImageEdit(Sender).Text;
    4: RECRelatorios.PEC4ConsultaText := TdxImageEdit(Sender).Text;
  end;
end;

procedure TFrmRelatorios_OLD.ACTPedidosExecute(Sender: TObject);
begin
  {
  if IETipo.Text = 'Ordem de Separação' then
  begin
    qrpGPedidosExpedicao := TqrpGPedidosExpedicao.Create(Self,RECRelatorios);
    qrpGPedidosExpedicao.WinControlFormCreate(qrpGPedidosExpedicao);
  end else
  begin
    qrpPedidos := TqrpPedidos.Create(Self,RECRelatorios);
    qrpPedidos.WinControlFormCreate(qrpPedidos);
  end;
  }
end;

procedure TFrmRelatorios_OLD.ACTProduto_EstoqueExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  if not Assigned(qrpProduto_Estoque) then
  begin
    _Visualizar_Todos;

    qrpProduto_Estoque := TqrpProduto_Estoque.Create(Self,RECRelatorios);
    qrpProduto_Estoque.WinControlFormCreate(qrpProduto_Estoque);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTProduto_VendaExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

    if not Assigned(qrpProduto_Venda) then
    begin
      qrpProduto_Venda := TqrpProduto_Venda.Create(Self,RECRelatorios);
      qrpProduto_Venda.WinControlFormCreate(qrpProduto_Venda);
    end;

  {$IFEND};
end;

procedure TFrmRelatorios_OLD.ACTProduto_Venda_MensalExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

    if not Assigned(qrpProduto_Venda_Mensal) then
    begin
      qrpProduto_Venda_Mensal := TqrpProduto_Venda_Mensal.Create(Self,RECRelatorios);
      qrpProduto_Venda_Mensal.WinControlFormCreate(qrpProduto_Venda_Mensal);
    end;

  {$IFEND};
end;

procedure TFrmRelatorios_OLD.ACTGFornecedoresProdutosCadastradosExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  if not Assigned(qrpGFornecedoresProdutosCadastrados) then
  begin
    _Visualizar_Todos;

    qrpGFornecedoresProdutosCadastrados := TqrpGFornecedoresProdutosCadastrados.Create(Self,RECRelatorios);
    qrpGFornecedoresProdutosCadastrados.WinControlFormCreate(qrpGFornecedoresProdutosCadastrados);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTREL_FOR_PDC_RECExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  if Assigned(QRPREL_PED_COM) then QRPREL_PED_COM.BringToFront else
  begin
    QRPREL_PED_COM := TQRPREL_PED_COM.Create(Self,RECRelatorios);
    QRPREL_PED_COM.WinControlFormCreate(QRPREL_PED_COM);
  end;

  {$IFEND};
end;

procedure TFrmRelatorios_OLD.ACTCadastros_RankingExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  if not Assigned(qrpCadastros_Ranking) then
  begin
    qrpCadastros_Ranking := TqrpCadastros_Ranking.Create(Self,RECRelatorios);
    qrpCadastros_Ranking.WinControlFormCreate(qrpCadastros_Ranking);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTProduto_Estoque_EtiquetaExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  if not Assigned(qrpProduto_Estoque_Etiqueta) then
  begin
    _Visualizar_Todos;

    qrpProduto_Estoque_Etiqueta := TqrpProduto_Estoque_Etiqueta.Create(Self,RECRelatorios);
    qrpProduto_Estoque_Etiqueta.WinControlFormCreate(qrpProduto_Estoque_Etiqueta);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTProduto_Ficha_TecnicaExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  if not Assigned(qrpFicha_Tecnica) then
  begin
    _Visualizar_Todos;

    qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Self,RECRelatorios);
    qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTProduto_Custo_ImportadoExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if not Assigned(qrpProduto_Custo_Importado) then
  begin
    qrpProduto_Custo_Importado := TqrpProduto_Custo_Importado.Create(Self,RECRelatorios);
    qrpProduto_Custo_Importado.WinControlFormCreate(qrpProduto_Custo_Importado);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTProduto_Compra_PlanejamentoExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if not Assigned(qrpProduto_Compra_Planejamento) then
  begin
    qrpProduto_Compra_Planejamento := TqrpProduto_Compra_Planejamento.Create(Self,RECRelatorios);
    qrpProduto_Compra_Planejamento.WinControlFormCreate(qrpProduto_Compra_Planejamento);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTGProduto_Tabela_PrecoExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if not Assigned(qrpGProduto_Tabela_Preco) then
  begin
    qrpGProduto_Tabela_Preco := TqrpGProduto_Tabela_Preco.Create(Self,RECRelatorios);
    qrpGProduto_Tabela_Preco.WinControlFormCreate(qrpGProduto_Tabela_Preco);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTEST_ETQ_PADExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if Assigned(qrpEST_ETQ_PAD) then qrpEST_ETQ_PAD.BringToFront else
  begin
    qrpEST_ETQ_PAD     := TqrpEST_ETQ_PAD.Create(Self,RECRelatorios);
    qrpEST_ETQ_PAD.Tag := 1;
    qrpEST_ETQ_PAD.WinControlFormCreate(qrpEST_ETQ_PAD);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTEST_ETQ_PEQExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if Assigned(qrpEST_ETQ_PEQ) then qrpEST_ETQ_PEQ.BringToFront else
  begin
    qrpEST_ETQ_PEQ     := TqrpEST_ETQ_PEQ.Create(Self,RECRelatorios);
    qrpEST_ETQ_PEQ.Tag := 2;
    qrpEST_ETQ_PEQ.WinControlFormCreate(qrpEST_ETQ_PEQ);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD.ACTEST_ENT_ROMExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if Assigned(qrpEST_ENT_ROM) then qrpEST_ENT_ROM.BringToFront else
  begin
    qrpEST_ENT_ROM     := TqrpEST_ENT_ROM.Create(Self,RECRelatorios);
    qrpEST_ENT_ROM.Tag := 5;
    qrpEST_ENT_ROM.WinControlFormCreate(qrpEST_ENT_ROM);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios_OLD._Empresas;
begin
  case RECRelatorios.Perfil of
    14,
    15,
    16,
    17: IEEmpresa.Text := IFThen(IEEmpresa.Enabled,'TODAS AS EMPRESAS',RECParametros.EP_NO);
    9:  IEEmpresa.Text := IFThen(IEEmpresa.Enabled,'TODAS AS EMPRESAS',RECParametros.EP_NO);
  end;

end;

procedure TFrmRelatorios_OLD._Relatorios;
var
  BRet: Boolean;
begin
  ActiveControl := Nil;

  RECRelatorios.Titulo := RECRelatorios.Nome;
  if ((RECRelatorios.Tipo <> EmptyStr) and (RECRelatorios.Tipo <> 'TODOS')) or ((IEStatus.Text <> EmptyStr) and (IEStatus.Text <> 'TODOS')) then
  begin
    RECRelatorios.Titulo := RECRelatorios.Titulo + ' [ ';
    RECRelatorios.Titulo := RECRelatorios.Titulo + IFThen((RECRelatorios.Tipo <> EmptyStr) and (RECRelatorios.Tipo  <> 'TODOS') and (IEStatus.Text <> EmptyStr) and (IEStatus.Text <> 'TODOS'),RECRelatorios.Tipo+' + '+IEStatus.Text,
                                                   IFThen(RECRelatorios.Tipo  <> 'TODOS',RECRelatorios.Tipo,
                                                   IFThen(IEStatus.Text       <> 'TODOS',IEStatus.Text,'')));
    RECRelatorios.Titulo := RECRelatorios.Titulo + ' ]';
  end;

  { Range Diversos }
  RECRelatorios.PEC1CodigoCaption := PEC1Codigo.Text;
  RECRelatorios.PEC2CodigoCaption := PEC2Codigo.Text;

  { Rodapés }
  RECRelatorios.RodapeRelatorio := EmptyStr;
  RECRelatorios.RodapeFiltros   := EmptyStr;

  if RECRelatorios.Perfil = 1 then
  begin
    BRet := False;
    
    if ((PEC1Codigo.Enabled  ) and (PEC1Codigo.Text   <> 'TODOS')) or
       ((PEC2Codigo.Enabled  ) and (PEC2Codigo.Text   <> 'TODOS')) or
       ((PEC1Consulta.Enabled) and (PEC1Consulta.Text <> 'TODOS')) or
       ((PEC2Consulta.Enabled) and (PEC2Consulta.Text <> 'TODOS')) or
       ((PEC3Consulta.Enabled) and (PEC3Consulta.Text <> 'TODOS')) or
       ((PEC4Consulta.Enabled) and (PEC4Consulta.Text <> 'TODOS')) or
       (IEData.Enabled) then
    BRet := True;
  end else
  BRet := True;

  if not BRet then
  oException(Nil,'Nenhum filtro selecionado para a emissão do relatório !');

  ExecRelat := FindComponent(IENome.Text) as TAction;
  if ExecRelat <> Nil then
  try ExecRelat.Execute;
  finally _Parametros;
  end;
end;

procedure TFrmRelatorios_OLD._Parametros;
begin
  if (IENome.Text = 'ACTPROESTEtiquetas') or
     (IENome.Text = 'ACTEST_ENT_ROM') then
  PEC1Consulta.Text  := RECRelatorios.Id;
end;

procedure TFrmRelatorios_OLD._Hints(AComponente: Word);
var
  PEConsulta: TdxPickEdit;
  IEConsulta,
  IEConsultaWhere: TdxImageEdit;
begin
  { Localizando Componente no Form }
  GBConsulta.Hint := '';
  IEConsulta      := FindComponent(Format('IEC%dConsulta'     ,[AComponente])) as TdxImageEdit;
  IEConsultaWhere := FindComponent(Format('IEC%dConsultaWhere',[AComponente])) as TdxImageEdit;
  PEConsulta      := FindComponent(Format('PEC%dConsulta'     ,[AComponente])) as TdxPickEdit;

  if IEConsulta.Text <> 'Selecionar tipo de consulta' then
  GBConsulta.Hint := 'Pesquisar campo '+IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)]+' '+
                                        IFThen(IEConsultaWhere.Text = '='     ,'que seja = a expressão: ',
                                        IFThen(IEConsultaWhere.Text = 'Início','que comece com a expressão: ',
                                        IFThen(IEConsultaWhere.Text = 'Final' ,'que termine com a expressão: ',
                                        IFThen(IEConsultaWhere.Text = 'Ambos' ,'que contenha no começo, meio ou fim a expressão: '+PEConsulta.Text))));

  IEConsulta.Hint      := GBConsulta.Hint;
  IEConsulta.Refresh;
  IEConsultaWhere.Hint := GBConsulta.Hint;
  IEConsultaWhere.Refresh;
  PEConsulta.Hint      := GBConsulta.Hint;
  PEConsulta.Refresh;
  GBConsulta.Refresh;
end;

procedure TFrmRelatorios_OLD._Tabelas(AComponente: Word);
var
  PEConsulta: TdxPickEdit;
  IEConsulta: TdxImageEdit;
begin
  { Localizando Componente no Form }
  IEConsulta := FindComponent(Format('IEC%dConsulta',[AComponente])) as TdxImageEdit;
  PEConsulta := FindComponent(Format('PEC%dConsulta',[AComponente])) as TdxPickEdit;
  PEConsulta.Items.Clear;
  PEConsulta.Items.Add('TODOS');
  PEConsulta.Text    := 'TODOS';
  PEConsulta.Enabled := not (IEConsulta.Text = 'Selecionar tipo de consulta');

  try
    PEConsulta.Items.BeginUpdate;
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;

      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Planilha' then
      SQL.Add('SELECT DESCRICAO FROM CAD_PRO_PCI_RPK WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1 DESC') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Grupo de Clientes' then
      SQL.Add('SELECT CLI_DEGP  FROM CAD_CLI     WHERE NOT FEMPTY(CLI_DEGP) GROUP BY 1 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Fornecedor' then
      SQL.Add('SELECT FOR_FANT  FROM CAD_FOR     WHERE FOR_STAV = ''A'' AND NOT FEMPTY(FOR_FANT) GROUP BY 1 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Vendedor' then
      SQL.Add('SELECT USU_DUSU  FROM CAD_USU     WHERE USU_STAV = ''A'' AND USU_MENU = ''VEN'' AND NOT FEMPTY(USU_DUSU) GROUP BY 1 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Representante' then
      SQL.Add('SELECT REP_FANT  FROM CAD_REP     WHERE REP_STAV = ''A'' AND NOT FEMPTY(REP_FANT) GROUP BY 1 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Cor' then
      SQL.Add('SELECT DESCRICAO FROM TAB_COR WHERE ID > 0 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Categoria' then
      SQL.Add('SELECT DESCRICAO FROM TAB_SCT     WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Grupo' then
      SQL.Add('SELECT DESCRICAO FROM TAB_GRP     WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Market Place' then
      SQL.Add('SELECT DESCRICAO FROM TAB_MKP     WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Coleção' then
      SQL.Add('SELECT DESCRICAO FROM TAB_COL    WHERE NOT FEMPTY(DESCRICAO) GROUP BY 1 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Empresa' then
      SQL.Add('SELECT FANTASIA  FROM TAB_PAR_SIS  GROUP BY 1 ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Região Metropolitana' then
      SQL.Add('SELECT RMT_NO FROM TAB_CEP_RMT WHERE NOT FEMPTY(RMT_NO) ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'Região Nacional' then
      SQL.Add('SELECT RNA_NO FROM TAB_CEP_RNA WHERE NOT FEMPTY(RNA_NO) ORDER BY 1') else
      if IEConsulta.Descriptions[IEConsulta.Values.IndexOf(IEConsulta.Text)] = 'UF' then
      SQL.Add('SELECT SIGLA     FROM TAB_CEP_UFE WHERE NOT FEMPTY(SIGLA) ORDER BY 1');

      if not oEmpty(SQL.Text) then
      begin
        Prepare;
        ExecQuery;
        while not eof do
        begin
          PEConsulta.Items.Add(Current.Vars[0].AsString);
          next;
        end;
      end;  
    end;
  finally
    PEConsulta.Items.EndUpdate;
  end;
end;

procedure TFrmRelatorios_OLD._Visualizar_Todos;
begin
  if (PEC1Consulta.Text = 'TODOS') and (PEC2Consulta.Text = 'TODOS') and (PEC3Consulta.Text = 'TODOS') and (PEC4Consulta.Text = 'TODOS') and (IEData.Text = EmptyStr) then
      if oYesNo(handle,'Nenhum filtro selecionado.'+#13+
                       'Tem certeza que quer visualizar todo o cadastro ?') = mrNo then
         Abort;
end;

procedure TFrmRelatorios_OLD._Perfis;
begin
//  IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));
//  IEEmpresa.Text    := IFThen(IEEmpresa.Enabled,'TODAS AS EMPRESAS',RECParametros.EP_NO);
  IEEmpresa.Text := 'TODAS AS EMPRESAS';
  IENome.Descriptions.Add(RECRelatorios.Nome);
  IENome.Text    := EmptyStr;
  IEModelo.Text  := 'Padrão';
  IETipo.Text    := EmptyStr;
  IEStatus.Text  := EmptyStr;
  IEData.Text    := EmptyStr;

  if ((RECRelatorios.Nome = 'Ranking de Produtos')             or (RECRelatorios.Nome = 'Listagem de vendas de produtos diário') or (RECRelatorios.Nome = 'Listagem de vendas de produtos mensal') or
      (RECRelatorios.Nome = 'Vendas de Produtos por Clientes') or (RECRelatorios.Nome = 'Vendas de Produtos por Grupos de Clientes')) then
  begin
    IEModelo.Descriptions.Clear;
    IEModelo.Descriptions.Add('Produto_X_Valor');
    IEModelo.Descriptions.Add('Produto_X_Metro_X_Kilo');
    IEModelo.Descriptions.Add('Artigo_X_Valor');
    IEModelo.Descriptions.Add('Artigo_X_Metro_X_Kilo');
    IEModelo.Descriptions.Add('Categoria_X_Valor');
    IEModelo.Descriptions.Add('Categoria_X_Metro_X_Kilo');
    IEModelo.Descriptions.Add('Sub-Categoria_X_Valor');
    IEModelo.Descriptions.Add('Sub-Categoria_X_Metro_X_Kilo');


    IEModelo.Values.Clear;
    IEModelo.Values.Add('Produto_X_Valor');
    IEModelo.Values.Add('Produto_X_Metro_X_Kilo');
    IEModelo.Values.Add('Artigo_X_Valor');
    IEModelo.Values.Add('Artigo_X_Metro_X_Kilo');
    IEModelo.Values.Add('Categoria_X_Valor');
    IEModelo.Values.Add('Categoria_X_Metro_X_Kilo');
    IEModelo.Values.Add('Sub-Categoria_X_Valor');
    IEModelo.Values.Add('Sub-Categoria_X_Metro_X_Kilo');
    IEModelo.Text := 'Artigo_X_Valor';
  end;

  if ((RECRelatorios.Nome = 'Listagem de vendas de produtos mensal') or (RECRelatorios.Nome = 'Vendas por UF') or (RECRelatorios.Nome = 'Vendas por Região Nacional')) then
  begin
    IEModelo.Descriptions.Clear;
    IEModelo.Descriptions.Add('Produto_X_Valor');
    IEModelo.Descriptions.Add('Produto_X_Quantidade');
    IEModelo.Descriptions.Add('Produto_X_Metro');
    IEModelo.Descriptions.Add('Produto_X_Kilo');

    IEModelo.Descriptions.Add('Artigo_X_Valor');
    IEModelo.Descriptions.Add('Artigo_X_Quantidade');
    IEModelo.Descriptions.Add('Artigo_X_Metro');
    IEModelo.Descriptions.Add('Artigo_X_Kilo');

    IEModelo.Values.Clear;
    IEModelo.Values.Add('Produto_X_Valor');
    IEModelo.Values.Add('Produto_X_Quantidade');
    IEModelo.Values.Add('Produto_X_Metro');
    IEModelo.Values.Add('Produto_X_Kilo');

    IEModelo.Values.Add('Artigo_X_Valor');
    IEModelo.Values.Add('Artigo_X_Quantidade');
    IEModelo.Values.Add('Artigo_X_Metro');
    IEModelo.Values.Add('Artigo_X_Kilo');
    IEModelo.Text := 'Artigo_X_Quantidade';
  end;

  if (RECRelatorios.Nome = 'Performance de Vendas') or (RECRelatorios.Nome = 'Performance de Preços') or (RECRelatorios.Nome = 'Listagem de preços de produtos') then
  begin
    IEEmpresa.Text := RECParametros.EP_NO;

    IEModelo.Descriptions.Clear;
    IEModelo.Descriptions.Add('Artigo');
    IEModelo.Descriptions.Add('Segmento');
    IEModelo.Descriptions.Add('Grupo');
    IEModelo.Descriptions.Add('Sub Grupo');
    IEModelo.Descriptions.Add('Categoria');
    IEModelo.Descriptions.Add('Sub Categoria');

    IEModelo.Values.Clear;
    IEModelo.Values.Add('Artigo');
    IEModelo.Values.Add('Segmento');
    IEModelo.Values.Add('Grupo');
    IEModelo.Values.Add('Sub Grupo');
    IEModelo.Values.Add('Categoria');
    IEModelo.Values.Add('Sub Categoria');

    IEModelo.Text    := 'Artigo';
    IEModelo.Enabled := True;
  end;

  case RECRelatorios.Perfil of
    1: begin
         if RECRelatorios.Nome = 'Listagem de vendas de produtos diário' then
         begin
           IENome.Values.Add('ACTProduto_Venda');
           IENome.Text := 'ACTProduto_Venda';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','cliente_vendedor_representante_fornecedor','cep_região_nacional_metropolitana_UF']);
         end else

         if RECRelatorios.Nome = 'Listagem de vendas de produtos mensal' then
         begin
           IEModelo.Text := 'Artigo_X_Quantidade';

           IENome.Values.Add('ACTProduto_Venda_Mensal');
           IENome.Text := 'ACTProduto_Venda_Mensal';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','cliente_vendedor_representante_fornecedor','cep_região_nacional_metropolitana_UF']);
         end else

         if RECRelatorios.Nome = 'Ficha Técnica de Produtos' then
         begin
           IEEmpresa.Text := RECParametros.EP_NO;

           IENome.Values.Add('ACTProduto_Ficha_Tecnica');
           IENome.Text := 'ACTProduto_Ficha_Tecnica';

           _FillParams('TODOS','TODOS','',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Estoque de Produtos' then
         begin
           IEEmpresa.Text := RECParametros.EP_NO;

           IENome.Values.Add('ACTProduto_Estoque');
           IENome.Text := 'ACTProduto_Estoque';

           _FillParams('estoque','estoque','cadastro_listagem',['artigo_produto_descrição','categorias','fornecedor']);
           IEData.Text := EmptyStr;
         end else
         if RECRelatorios.Nome = 'Estoque de Produtos Etiquetados' then
         begin
           IENome.Values.Add('ACTProduto_Estoque_Etiqueta');
           IENome.Text := 'ACTProduto_Estoque_Etiqueta';

           _FillParams('estoque_etiqueta','','',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Planejamento de Compras de Produtos' then
         begin
           IEEmpresa.Text := RECParametros.EP_NO;

           IENome.Values.Add('ACTProduto_Compra_Planejamento');
           IENome.Text := 'ACTProduto_Compra_Planejamento';

           _FillParams('planejamento','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Listagem de Compras de Produtos' then
         begin
           IEEmpresa.Text := RECParametros.EP_NO;

           IENome.Values.Add('ACTProduto_Compra_Listagem');
           IENome.Text := 'ACTProduto_Compra_Listagem';

           _FillParams('planejamento','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Listagem de preços de produtos' then
         begin
           IENome.Values.Add('ACTGProduto_Tabela_Preco');
           IENome.Text := 'ACTGProduto_Tabela_Preco';

           _FillParams('preco','estoque','',['artigo_produto_descrição','categorias','fornecedor','cep_UF']);
         end else
         begin
           IEEmpresa.Text := RECParametros.EP_NO;

           IENome.Enabled := True;
           IENome.Descriptions.Clear;
           IENome.Descriptions.Add('Romaneio de estoque para simples conferência');
           IENome.Descriptions.Add('Etiquetas de estoque modelo 1');
           IENome.Descriptions.Add('Etiquetas de estoque modelo 2');

           IENome.Values.Clear;
           IENome.Values.Add('ACTEST_ENT_ROM');
           IENome.Values.Add('ACTEST_ETQ_PAD');
           IENome.Values.Add('ACTEST_ETQ_PEQ');

           IENome.Text := 'ACTEST_ETQ_PAD';

           RECRelatorios.PEC1CodigoField   := 'Itens.EST_CDET';
           RECRelatorios.PEC1CodigoCaption := 'Etiqueta Inicial';
           RECRelatorios.PEC2CodigoField   := 'Itens.EST_CDET';
           RECRelatorios.PEC2CodigoCaption := 'Etiqueta Final';

           _FillParams('estoque_pcp','','',['etiqueta_estoque','categorias','artigo_sku']);

           IETipo.Descriptions.Add('TODOS');
           IETipo.Values.Add('TODOS');
           IETipo.Text := 'TODOS';

           IEStatus.Descriptions.Clear;
           IEStatus.Values.Clear;
           IEStatus.Enabled := True;

           IEStatus.Descriptions.Add('TODOS');
           IEStatus.Descriptions.Add('DISPONÍVEL');

           IEStatus.Values.Add('TODOS');
           IEStatus.Values.Add('DISPONÍVEL');
           IEStatus.Text := 'TODOS';

           { RICARDO if not bPSQUSER('USU_PRIN','Produtos','Estoque','Re-Emissão de Etiquetas') then
           begin
             IEStatus.Enabled := False;
             IEStatus.Text := 'DISPONÍVEL';
           end;      }
         end;
       end;
    2: begin
         {}
       end;
    3: begin
         { Fornecedores }
         IEEmpresa.Text := RECParametros.EP_NO;
         IENome.Descriptions.Add(RECRelatorios.Nome);
         if RECRelatorios.Nome = 'Listagem de produtos cadastrados' then
         begin
           IENome.Values.Add('ACTGFornecedoresProdutosCadastrados');
           IENome.Text :=    'ACTGFornecedoresProdutosCadastrados';

           _FillParams('TODOS','estoque','fornecedor',['fornecedor','','','']);
         end else

         if RECRelatorios.Nome = 'Listagem de compras de produtos' then
         begin
           IENome.Values.Add('ACTREL_FOR_PDC_REC');
           IENome.Text :=    'ACTREL_FOR_PDC_REC';

           _FillParams('TODOS','pedido_compra','fornecedor_tmp',['Fornecedores','','','']);
         end;
       end;
    4: begin
         { Clientes }
         IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));

         if RECRelatorios.Nome = 'Ranking de Clientes' then
         begin
           IENome.Values.Add('ACTCadastros_Ranking');
           IENome.Text := 'ACTCadastros_Ranking';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['grupo de clientes','artigo_produto_descrição','fornecedor','categorias']);
         end else
         if RECRelatorios.Nome = 'Vendas de Produtos por Clientes' then
         begin
           IENome.Values.Add('ACTGCadastros_Venda_Produto');
           IENome.Text := 'ACTGCadastros_Venda_Produto';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['cliente','grupo de clientes','artigo_produto_descrição','categorias']);
         end else
         if RECRelatorios.Nome = 'Vendas de Produtos por Grupos de Clientes' then
         begin
           IENome.Values.Add('ACTGCadastros_Venda_Produto');
           IENome.Text := 'ACTGCadastros_Venda_Produto';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['grupo de clientes','artigo_produto_descrição','categorias']);
         end else
         if RECRelatorios.Nome = 'Relação de Produtos Atendidos' then
         begin
           IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));

           IEModelo.Descriptions.Clear;
           IEModelo.Descriptions.Add('Produto_X_Quantidade');
           IEModelo.Descriptions.Add('Artigo_X_Quantidade');
           IEModelo.Values.Clear;
           IEModelo.Values.Add('Produto');
           IEModelo.Values.Add('Artigo');
           IEModelo.Text := 'Produto';

           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTCliente_Produto_Atendido');
           IENome.Text := 'ACTCliente_Produto_Atendido';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Relação de Produtos Não Atendidos' then
         begin
           IEEmpresa.Enabled := ((Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUSuarios.Comprador));

           IEModelo.Descriptions.Clear;
           IEModelo.Descriptions.Add('Produto_X_Quantidade');
           IEModelo.Descriptions.Add('Artigo_X_Quantidade');
           IEModelo.Values.Clear;
           IEModelo.Values.Add('Produto');
           IEModelo.Values.Add('Artigo');
           IEModelo.Text := 'Produto';

           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTCliente_Produto_Nao_Atendido');
           IENome.Text := 'ACTCliente_Produto_Nao_Atendido';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['artigo_produto_descrição','categorias','fornecedor']);
         end else
         if RECRelatorios.Nome = 'Listagem de Clientes' then
         begin
           IEEmpresa.Enabled := True;

           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTCadastros_Listagem');
           IENome.Text := 'ACTCadastros_Listagem';

           _FillParams('Listagem de Cadastros','TODOS','Listagem de Cadastros',['vendedor_representante','cep_região_metropolitana','cep_região_nacional','cep_UF']);
         end;
       end;
    5: begin
         { Representantes }
         IENome.Descriptions.Add(RECRelatorios.Nome);
         if RECRelatorios.Nome = 'Ranking de Representantes' then
         begin
           IENome.Values.Add('ACTCadastros_Ranking');
           IENome.Text := 'ACTCadastros_Ranking';

           _FillParams('pedido_venda','pedido_venda','pedido_venda',['','artigo_produto_descrição','fornecedor','categorias']);
         end;
       end;
    6: begin
       end;
    7: begin
         { Fornecedores: Financeiro }
       end;
    8: begin
         { Transportadoras: BI }
       end;
    9: begin
         { Transportadoras: Financeiro }
       end;
   10: begin
         { Vendedores: BI }
       end;
   11: begin
         { Vendedores: Financeiro }
       end;
   12: begin
         { Representantes: BI }
       end;
   13: begin
         { Representantes: Financeiro }
       end;
   14: begin
         { Gerenciais: Vendas }
       end;
   15: begin
         { Gerenciais: Compras }
       end;
   16: begin
         { Gerenciais: Financeiro }
         if RECRelatorios.Nome = 'Emissão de Abatimentos Financeiros' then
         begin
           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTFinanceiro_Abatimento');
           IENome.Text := 'ACTFinanceiro_Abatimento';

           _FillParams('TODOS','TODOS','abatimento',['cliente','grupo de clientes','vendedor','representante']);
         end else
         if RECRelatorios.Nome = 'Emissão de Duplicatas por Cliente' then
         begin
           IENome.Descriptions.Add(RECRelatorios.Nome);
           IENome.Values.Add('ACTGFinanceiro_Cadastros_Duplicata');
           IENome.Text := 'ACTGFinanceiro_Cadastros_Duplicata';

           _FillParams('duplicata_cliente','duplicata_cliente','duplicata_cliente',['cliente','grupo de clientes','vendedor','representante']);
         end;
       end;
   18: begin
         { Custo }
         IENome.Values.Add('ACTProduto_Custo_Importado');
         IENome.Text := 'ACTProduto_Custo_Importado';

         _FillParams('todos','todos','',['custo_produto_importado']);
       end;
   19: begin
         { Tabela de Preço }
       end;
   20: begin
         { Pedidos de Vendas }
         IEEmpresa.Text    := RECParametros.EP_NO;
         IEEmpresa.Enabled := False;

         IEModelo.Descriptions.Clear;
         IEModelo.Descriptions.Add('Padrão');
         IEModelo.Descriptions.Add('Canhoto de Venda');
         IEModelo.Descriptions.Add('Cupom Fiscal');

         IEModelo.Values.Clear;
         IEModelo.Values.Add('Padrão');
         IEModelo.Values.Add('Canhoto de Venda');
         IEModelo.Values.Add('Cupom Fiscal');
         IEModelo.Enabled := True;
         IEModelo.Text    := 'Padrão';

         IENome.Descriptions.Clear;
         IENome.Descriptions.Add('Pedido de Venda');

         IENome.Values.Clear;
         IENome.Values.Add('ACTPedidos');
         IENome.Text    := 'ACTPedidos';
         IENome.Enabled := False;

         _FillParams('pedido_venda_caixa','','',['pedido_venda_caixa']);

         PEC1Consulta.Text := RECRelatorios.Id;
         IEStatus.Text     := RECRelatorios.PEC1CodigoText;
                              RECRelatorios.PEC1CodigoText := 'TODOS';
                              RECRelatorios.PEC2CodigoText := 'TODOS';
       end;
   21: begin
         { Romaneio de Vendas }
       end;
  end;

  { Rankings }
  if Pos('Ranking',RECRelatorios.Nome) > 0 then
  begin
    PNLCodigos.Tag := 1;
    RECRelatorios.PEC1CodigoCaption := 'Quantidade de Itens';
    RECRelatorios.PEC1CodigoField   := 'First';
    RECRelatorios.PEC2CodigoCaption := 'Relevância';
    RECRelatorios.PEC2CodigoField   := 'OrderBy';

    PEC1Codigo.Items.Clear;
    PEC1Codigo.Items.Add('5');
    PEC1Codigo.Items.Add('10');
    PEC1Codigo.Items.Add('50');
    PEC1Codigo.Items.Add('100');
    PEC1Codigo.Text := '100';

    PEC2Codigo.Items.Clear;
    PEC2Codigo.Items.Add('Mais Vendidos');
    PEC2Codigo.Items.Add('Menos Vendidos');
    PEC2Codigo.Text := PEC2Codigo.Items.Strings[0];
  end;

  { Datas }
  PNLData.Enabled := not ((IEData.Values.Count <= 1) and (oEmpty(IEData.Text)));
  IEData.Enabled  := PNLData.Enabled;
  IEDataChange(Self);

  { Códigos }
  PNLCodigos.Visible := (not oEmpty(RECRelatorios.PEC1CodigoCaption));
  if PNLCodigos.Visible then
  begin
    GB1Codigo.Caption := '  '+RECRelatorios.PEC1CodigoCaption+'  ';
    GB2Codigo.Caption := '  '+RECRelatorios.PEC2CodigoCaption+'  ';
  end;
end;

procedure TFrmRelatorios_OLD._FillParams(ATipo,AStatus,AData: String;AConsultas: Array of String);
var
  i: Word;
  IEComponente: TdxImageEdit;
begin
  try
    IETipo.Values.BeginUpdate;
    IETipo.Values.Clear;
    IETipo.Descriptions.BeginUpdate;
    IETipo.Descriptions.Clear;

    IEStatus.Values.BeginUpdate;
    IEStatus.Values.Clear;
    IEStatus.Descriptions.BeginUpdate;
    IEStatus.Descriptions.Clear;

    IEData.Values.BeginUpdate;
    IEData.Values.Clear;
    IEData.Descriptions.BeginUpdate;
    IEData.Descriptions.Clear;

    with SQLFKConsulta do
    begin
      { Tipo }
      Close;
      SQL.Clear;

      if ATipo <> 'estoque_pcp' then
         SQL.Add('SELECT DESCRICAO ,VALOR,MAIN FROM TAB_REL_TIP WHERE CHAVE = '''+ATipo+''' ORDER BY ID')
      else
         SQL.Add('SELECT PK.DESCRICAO,PK.ID AS VALOR,0 AS MAIN FROM TAB_TPO AS PK WHERE PK.EST_ENT = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');

      ExecQuery;
      IETipo.Enabled := (not Eof);

      while not eof do
      begin
        IETipo.Descriptions.Add(Current.ByName('DESCRICAO').AsString);
        IETipo.Values.Add(Current.ByName('VALOR').AsString);

        if Current.ByName('MAIN').AsInteger = 1 then
           IETipo.Text := Current.ByName('VALOR').AsString;
        next;
      end;

      { Status }
      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO,VALOR,MAIN FROM TAB_REL_STA WHERE CHAVE = '''+AStatus+''' ORDER BY ID');
      ExecQuery;
      IEStatus.Enabled := (not Eof);

      while not eof do
      begin
        IEStatus.Descriptions.Add(Current.ByName('DESCRICAO').AsString);
        IEStatus.Values.Add(Current.ByName('VALOR').AsString);

        if Current.ByName('MAIN').AsInteger = 1 then
           IEStatus.Text := Current.ByName('VALOR').AsString;
        next;
      end;

      { Data }
      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO,VALOR,MAIN FROM TAB_REL_DAT WHERE CHAVE = '''+AData+''' ORDER BY ID');
      ExecQuery;
      IEData.Enabled := (not Eof);

      while not eof do
      begin
        IEData.Descriptions.Add(Current.ByName('DESCRICAO').AsString);
        IEData.Values.Add(Current.ByName('VALOR').AsString);

        if Current.ByName('MAIN').AsInteger = 1 then
           IEData.Text := Current.ByName('VALOR').AsString;
        next;
      end;
    end;

      { Consulta }
      for i := 0 to high(AConsultas) do
      begin
        SQLFKConsulta.Close;
        SQLFKConsulta.SQL.Clear;
        SQLFKConsulta.SQL.Add('SELECT DESCRICAO,VALOR,MAIN FROM TAB_REL_CON WHERE CHAVE = '''+AConsultas[i]+''' ORDER BY DESCRICAO');
        SQLFKConsulta.Prepare;
        SQLFKConsulta.ExecQuery;

        while not SQLFKConsulta.Eof do
        begin
          { Localizando Componente no Form }
          IEComponente := FindComponent(Format('IEC%dConsulta',[i + 1])) as TdxImageEdit;

          { Definindo Atributos }
          try
            IEComponente.Descriptions.BeginUpdate;
            IEComponente.Values.BeginUpdate;

            IEComponente.Descriptions.Add(SQLFKConsulta.Current.ByName('DESCRICAO').AsString);
            IEComponente.Values.Add(SQLFKConsulta.Current.ByName('VALOR').AsString);

            if SQLFKConsulta.Current.ByName('MAIN').AsInteger = 1 then
               IEComponente.Text := SQLFKConsulta.Current.ByName('VALOR').AsString;
          finally
            IEComponente.Descriptions.EndUpdate;
            IEComponente.Values.EndUpdate;
          end;

          SQLFKConsulta.Next;
        end;
      end;
  finally
    IETipo.Descriptions.EndUpdate;
    IETipo.Values.EndUpdate;

    IEStatus.Descriptions.EndUpdate;
    IEStatus.Values.EndUpdate;

    IEData.Descriptions.EndUpdate;
    IEData.Values.EndUpdate;
  end;
end;

end.
