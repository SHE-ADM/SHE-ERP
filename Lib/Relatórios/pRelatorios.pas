unit pRelatorios;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxEditor,
  ActnList, XPStyleActnCtrls, ActnMan, QRPDFFilt, QRExport, DateUtils,
  dxBar, dxBarExtItems, dxsbar, dxDockPanel, dxDockControl;

Type
  TFrmRelatorios = class(TForm)
    TConsulta: TIBTransaction;
    AMPrincipal: TActionManager;
    ILMenu: TImageList;
    BMMain: TdxBarManager;
    BLBSalva: TdxBarLargeButton;
    BLBValida: TdxBarLargeButton;
    BLBConverteExcel: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    BLBImprime: TdxBarLargeButton;
    BLBConverte: TdxBarLargeButton;
    BLBVisualiza: TdxBarLargeButton;
    DMMain: TdxDockingManager;
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
    SQLConsulta: TIBSQL;
    SQLPKConsulta: TIBSQL;
    SAModelo: TShape;
    SBModelo: TShape;
    LAModelo: TLabel;
    IEModelo: TdxImageEdit;

    ACTVisualiza: TAction;
    ACTImprime: TAction;
    ACTConverteExcel: TAction;
    ACTSaida: TAction;

    ACTRelatorios: TAction;
    ACTExeRelatorios: TAction;
    ACTExeEmpresas: TAction;
    ACTREL_GER_PDV_CRD: TAction;
    ACTREL_GER_EST_PRO: TAction;
    ACTREL_GER_FIS_CFOP: TAction;
    ACTREL_GER_EST_INV: TAction;
    ACTREL_GER_FIS_PESO: TAction;
    ACTREL_FOR_PRO_CAD: TAction;
    BLBConvertePDF: TdxBarLargeButton;
    ACTConvertePDF: TAction;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure ACTVisualizaExecute(Sender: TObject);
    procedure ACTImprimeExecute(Sender: TObject);
    procedure ACTConverteExcelExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);

    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTExeRelatoriosExecute(Sender: TObject);
    procedure ACTExeEmpresasExecute(Sender: TObject);

    procedure ACTREL_GER_PDV_CRDExecute(Sender: TObject);
    procedure ACTREL_GER_EST_PROExecute(Sender: TObject);
    procedure ACTREL_GER_FIS_CFOPExecute(Sender: TObject);

    procedure ACTEST_ETQ_PADExecute(Sender: TObject);
    procedure ACTEST_ENT_ROMExecute(Sender: TObject);
    procedure ACTEST_ETQ_PEQExecute(Sender: TObject);

    procedure MCData1Click(Sender: TObject);
    procedure MCData2Click(Sender: TObject);
    procedure IENomeChange(Sender: TObject);
    procedure IEModeloChange(Sender: TObject);
    procedure IETipoChange(Sender: TObject);
    procedure IEStatusChange(Sender: TObject);
    procedure IEEmpresaChange(Sender: TObject);
    procedure IEDataChange(Sender: TObject);
    procedure PEC1CodigoChange(Sender: TObject);
    procedure PEC2CodigoChange(Sender: TObject);
    procedure IEC1ConsultaChange(Sender: TObject);
    procedure IEC1ConsultaWhereChange(Sender: TObject);
    procedure PEC1ConsultaChange(Sender: TObject);
    procedure ACTREL_GER_EST_INVExecute(Sender: TObject);
    procedure ACTREL_GER_FIS_PESOExecute(Sender: TObject);
    procedure ACTREL_FOR_PRO_CADExecute(Sender: TObject);
    procedure ACTConvertePDFExecute(Sender: TObject);
  private
    AExeRelatorio: TAction;
    REC_SHE_REL  : TREC_SHE_REL;

    procedure _Hints(AComponente: Word);
    procedure _Tabelas(AComponente: Word);
  public
    Constructor Create(AOwner: TComponent; Const ACTRelatorio: TAction); reintroduce; overload;
  end;

var
  FrmRelatorios: TFrmRelatorios;

implementation

uses uPrincipal, bPrincipal

  {$IF DEFINED(DEF_PCP)}
     ,qEST_ETQ_PAD, qEST_ENT_ROM, qEST_ETQ_PEQ

  {$ELSEIF DEFINED(DEF_ERP)}
     ,QGER_FIS_CFOP,QGER_FIS_PESO,QGER_EST_PRO, QGER_PDV_CRD, QGER_EST_INV

  {$ELSEIF DEFINED(DEF_PDV)}
     ,QGER_PDV_CRD
     
  {$IFEND}

  ;

{$R *.dfm}

Constructor TFrmRelatorios.Create(AOwner: TComponent; Const ACTRelatorio: TAction);
begin
  oIREC_SHE_REL(REC_SHE_REL);

  REC_SHE_REL.ACTRelatorio := ACTRelatorio;

  REC_SHE_REL.PK_ID := IntToStr(ACTRelatorio.HelpContext);
  REC_SHE_REL.FK_ID := IntToStr(ACTRelatorio.HelpContext);

  REC_SHE_REL.EP_ID := IntToStr(ACTRelatorio.GroupIndex);
  REC_SHE_REL.EP_NO := RECParametros.EP_NO;

  REC_SHE_REL.TAGPerfil := ACTRelatorio.Tag;
  REC_SHE_REL.TAGNome   := ACTRelatorio.HelpContext;

  REC_SHE_REL.Nome      := ACTRelatorio.Caption;
  REC_SHE_REL.Titulo    := ACTRelatorio.Caption;
  REC_SHE_REL.SubTitulo := ACTRelatorio.Hint;

  REC_SHE_REL.PK_ID := IFThen(((not oEmpty(REC_SHE_REL.PK_ID)) and (not oEmpty(REC_SHE_REL.FK_ID))),REC_SHE_REL.PK_ID,'TODOS');
  REC_SHE_REL.FK_ID := IFThen(((not oEmpty(REC_SHE_REL.PK_ID)) and (not oEmpty(REC_SHE_REL.FK_ID))),REC_SHE_REL.FK_ID,'TODOS');

  inherited Create(AOwner);
end;

procedure TFrmRelatorios.FormCreate(Sender: TObject);
begin
  Height := Height - IFThen(not PNLCodigos.Visible,PNLCodigos.Height,0);

  { INICIALIZAÇÃO DE PARÂMETROS }
  MCData1.Date := REC_SHE_REL.PK_DT;
  MCData2.Date := REC_SHE_REL.FK_DT;

  { EMPRESAS }
  oOTransact(TConsulta);
  try
    IEEmpresa.Descriptions.BeginUpdate;
    IEEmpresa.Values.BeginUpdate;
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.FANTASIA FROM TAB_PAR_SIS AS PK');
      SQL.Add('WHERE  PK.FANTASIA IS NOT NULL');
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

  { PERFIS DE RELATÓRIOS }
  ACTExeRelatorios.Execute;
end;

procedure TFrmRelatorios.FormShow(Sender: TObject);
begin
  case REC_SHE_REL.TAGPerfil of
    0: begin
         { Gerenciais }
         if (REC_SHE_REL.TAGNome <> 3) and (REC_SHE_REL.TAGNome <> 6) then
         if Pos(RECUsuarios.Grupo,'DEVDIR') = 0 then
         begin
           IEEmpresa.Enabled := False;
           IEEmpresa.Text    := RECParametros.EP_NO;
         end;

         IENome.Descriptions.Add(REC_SHE_REL.ACTRelatorio.Caption);
         IENome.Values.Add(REC_SHE_REL.ACTRelatorio.Name);
         IENome.Text := REC_SHE_REL.ACTRelatorio.Name;
       end;
  end;
end;

procedure TFrmRelatorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRelatorios.FormDestroy(Sender: TObject);
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
      oFREC_SHE_REL(REC_SHE_REL);
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
    FrmRelatorios := Nil;
  end;
end;

procedure TFrmRelatorios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo) and
                      not (ActiveControl is TdxBlobEdit) and
                      not (ActiveControl is TdxDBBlobEdit) and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo) and
                      not (ActiveControl is TdxBlobEdit) and
                      not (ActiveControl is TdxDBBlobEdit) and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TdxBlobEdit) and
                      not (ActiveControl is TdxDBBlobEdit) and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
  end;
end;

procedure TFrmRelatorios.ACTVisualizaExecute(Sender: TObject);
begin
  REC_SHE_REL.TAGPrint := 0;
  REC_SHE_REL.Handle   := Self.Handle;

  ACTRelatorios.Execute;
end;


procedure TFrmRelatorios.ACTImprimeExecute(Sender: TObject);
begin
  REC_SHE_REL.TAGPrint := 1;
  REC_SHE_REL.Handle   := Self.Handle;

  ACTRelatorios.Execute;
end;

procedure TFrmRelatorios.ACTConvertePDFExecute(Sender: TObject);
begin
  REC_SHE_REL.TAGPrint := 2;
  REC_SHE_REL.Handle   := Self.Handle;

  ACTRelatorios.Execute;
end;

procedure TFrmRelatorios.ACTConverteExcelExecute(Sender: TObject);
begin
  REC_SHE_REL.TAGPrint := 3;
  REC_SHE_REL.Handle   := Self.Handle;

  ACTRelatorios.Execute;
end;

procedure TFrmRelatorios.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelatorios.MCData1Click(Sender: TObject);
begin
  MCData2.Date := EndOfTheMonth(MCData1.Date);
  IEDataChange(Self);
end;

procedure TFrmRelatorios.MCData2Click(Sender: TObject);
begin
  IEDataChange(Self);
end;

procedure TFrmRelatorios.IENomeChange(Sender: TObject);
begin
  if IENome.Text <> REC_SHE_REL.Nome then
  begin
    REC_SHE_REL.Nome := IENome.Descriptions[IENome.Values.IndexOf(IENome.Text)];
    IENome.Hint      := REC_SHE_REL.Nome;

    if REC_SHE_REL.Nome = 'VENDAS FATURADAS' then
    begin
      IETipo.Text   := 'POR TIPO DE CRÉDITO';
      IEStatus.Text := 'FATURADO';
    end else
    if REC_SHE_REL.Nome = 'ESTOQUE DE PRODUTOS POR UNIDADE DE MEDIDA' then
    begin
      IETipo.Text   := 'TODOS';
      IEStatus.Text := 'TODOS';
    end else
    if REC_SHE_REL.Nome = 'Planejamento de Compras de Produtos' then
    begin
      MCData1.Date := StartOfTheMonth(IncMonth(Date,-11));
      MCData2.Date := Date;
    end else
    if REC_SHE_REL.Nome = 'Vendas Mensais de Produtos' then
    begin
      MCData1.Date := StrToDate('01/01/'+oStrZero(oRETAno(Date),4));
      MCData2.Date := StrToDate('31/12/'+oStrZero(oRETAno(Date),4));
    end;
  end;

  ACTExeEmpresas.Execute;
end;

procedure TFrmRelatorios.IEModeloChange(Sender: TObject);
begin
  REC_SHE_REL.Modelo := IEModelo.Text;
  IEModelo.Enabled   := (IEModelo.Text <> 'Padrão');
end;

procedure TFrmRelatorios.IETipoChange(Sender: TObject);
begin
  REC_SHE_REL.FB_PSQ_TPO_LB := IETipo.Descriptions[IETipo.Values.IndexOf(IETipo.Text)];
  REC_SHE_REL.FB_PSQ_TPO_VD := IETipo.Text;

  ACTExeEmpresas.Execute;
end;

procedure TFrmRelatorios.IEStatusChange(Sender: TObject);
begin
  REC_SHE_REL.FB_PSQ_STA_LB := IEStatus.Descriptions[IEStatus.Values.IndexOf(IEStatus.Text)];
  REC_SHE_REL.FB_PSQ_STA_VD := IEStatus.Text;

  ACTExeEmpresas.Execute;
end;

procedure TFrmRelatorios.IEEmpresaChange(Sender: TObject);
begin
  if REC_SHE_REL.EP_NO <> IEEmpresa.Text then
     with SQLConsulta do
     begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT ID,CNPJ,RAZAO FROM TAB_PAR_SIS');
       SQL.Add('WHERE  FANTASIA = ''' + IEEmpresa.Text + '''');
       ExecQuery;

       REC_SHE_REL.EP_ID    := IFThen(Current.Vars[0].AsInteger > 0,Current.Vars[0].AsString,'0');
       REC_SHE_REL.EP_NO    := IEEmpresa.Text;
       REC_SHE_REL.EP_RZ_NO := Current.Vars[2].AsString;
       REC_SHE_REL.EP_CNPJ  := IFThen(Current.Vars[0].AsInteger > 0,Current.Vars[1].AsString,RECParametros.Cnpj);
     end;
end;

procedure TFrmRelatorios.IEDataChange(Sender: TObject);
begin
  if not oEmpty(IEData.Text) then
  begin
    if MCData2.Date < MCData1.Date then
    oException(Nil,'Data Inicial ( '+FormatDateTime('dd/mm/yy',MCData1.Date)+' ) não pode ser maior que Data Final ( '+FormatDateTime('dd/mm/yy',MCData2.Date)+' ).');

    REC_SHE_REL.FB_PSQ_DT_LB_PK := IEData.Descriptions[IEData.Values.IndexOf(IEData.Text)];
    REC_SHE_REL.FB_PSQ_DT_NO_PK := IEData.Values[IEData.Values.IndexOf(IEData.Text)];

    if  REC_SHE_REL.Titulo = 'Listagem de Clientes' then
        REC_SHE_REL.FB_PSQ_DT_NO_PK := 'CLI_'+REC_SHE_REL.FB_PSQ_DT_NO_PK else
    if  REC_SHE_REL.Titulo = 'Listagem de Representantes' then
        REC_SHE_REL.FB_PSQ_DT_NO_PK := 'REP_'+REC_SHE_REL.FB_PSQ_DT_NO_PK;

    REC_SHE_REL.FB_PSQ_DT_VD_PK := MCData1.Date;
    REC_SHE_REL.FB_PSQ_DT_VD_FK := MCData2.Date;

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
    REC_SHE_REL.FB_PSQ_DT_LB_PK := '';
    REC_SHE_REL.FB_PSQ_DT_NO_PK := '';
    REC_SHE_REL.FB_PSQ_DT_VD_PK := 0;
    REC_SHE_REL.FB_PSQ_DT_VD_FK := 0;

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

procedure TFrmRelatorios.PEC1CodigoChange(Sender: TObject);
begin
  REC_SHE_REL.FB_PSQ_CD_VD_PK := PEC1Codigo.Text;

  if PNLCodigos.Tag = 0 then
  PEC2Codigo.Text := PEC1Codigo.Text;
end;

procedure TFrmRelatorios.PEC2CodigoChange(Sender: TObject);
begin
  REC_SHE_REL.FB_PSQ_CD_VD_FK := PEC2Codigo.Text;
end;

procedure TFrmRelatorios.IEC1ConsultaChange(Sender: TObject);
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
  if (Pos(IENome.Text,'ACTProduto_EstoqueACTProduto_Compra_PlanejamentoACTProduto_Custo_Importado') = 0) then
  IEConsultaField := 'PRO_DPSQ';

  if (IEConsultaField = 'CP.ARTIGO') OR (IEConsultaField = 'CP.SKU') then
  IEConsultaAlias := 'CP.';

  if ((Pos('Produto',IENome.Text) > 0) and (IEConsultaCaption = 'Bairro')) then
  IEConsultaAlias := 'CL.CLI_';

  case TdxImageEdit(Sender).Tag of
    1: begin
         REC_SHE_REL.FB_PSQ_IE1_LB := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         REC_SHE_REL.FB_PSQ_IE1_NO := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
         REC_SHE_REL.FB_PSQ_IE1_VD := IEConsultaCaption;
       end;
    2: begin
         REC_SHE_REL.FB_PSQ_IE2_LB := IEConsultaCaption;
         REC_SHE_REL.FB_PSQ_IE2_NO := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         REC_SHE_REL.FB_PSQ_IE2_VD := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
    3: begin
         REC_SHE_REL.FB_PSQ_IE3_LB := IEConsultaCaption;
         REC_SHE_REL.FB_PSQ_IE3_NO := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         REC_SHE_REL.FB_PSQ_IE3_VD := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
    4: begin
         REC_SHE_REL.FB_PSQ_IE4_LB := IEConsultaCaption;
         REC_SHE_REL.FB_PSQ_IE4_NO := Trim(LeftStr(IEConsultaField,Pos('.',IEConsultaField) - 1));
         REC_SHE_REL.FB_PSQ_IE4_VD := Trim(IEConsultaAlias + Trim(Copy(IEConsultaField   ,Pos('.',IEConsultaField) + 1,Length(IEConsultaField))));
       end;
  end;

  { Localizando Componente no Form }
  IEConsultaWhere         := FindComponent(Format('IEC%dConsultaWhere',[TdxImageEdit(Sender).Tag])) as TdxImageEdit;
  IEConsultaWhere.Text    := IFThen((Pos(UpperCase(IEConsultaCaption),'IDIDCPPEDIDOROMANEIO' ) > 0),'=',
                             IFThen((Pos(UpperCase(IEConsultaCaption),'ARTIGOSKUPRODUTOGRADE') > 0),'Início','Ambos'));
  IEConsultaWhere.Enabled := not (IEConsultaCaption = 'Selecionar tipo de consulta');

  _Tabelas(TdxImageEdit(Sender).Tag);
end;

procedure TFrmRelatorios.IEC1ConsultaWhereChange(Sender: TObject);
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
         REC_SHE_REL.FB_PSQ_IE1_WHERE := IEConsultaWhere;
         REC_SHE_REL.FB_PSQ_IE1_LKPK  := IEConsultaLike1;
         REC_SHE_REL.FB_PSQ_IE1_LKFK  := IEConsultaLike2;
       end;
    2: begin
         REC_SHE_REL.FB_PSQ_IE2_WHERE := IEConsultaWhere;
         REC_SHE_REL.FB_PSQ_IE2_LKPK  := IEConsultaLike1;
         REC_SHE_REL.FB_PSQ_IE2_LKFK  := IEConsultaLike2;
       end;
    3: begin
         REC_SHE_REL.FB_PSQ_IE3_WHERE := IEConsultaWhere;
         REC_SHE_REL.FB_PSQ_IE3_LKPK  := IEConsultaLike1;
         REC_SHE_REL.FB_PSQ_IE3_LKFK  := IEConsultaLike2;
       end;
    4: begin
         REC_SHE_REL.FB_PSQ_IE4_WHERE := IEConsultaWhere;
         REC_SHE_REL.FB_PSQ_IE4_LKPK  := IEConsultaLike1;
         REC_SHE_REL.FB_PSQ_IE4_LKFK  := IEConsultaLike2;
       end;
  end;

  _Hints(TdxImageEdit(Sender).Tag);
end;

procedure TFrmRelatorios.PEC1ConsultaChange(Sender: TObject);
begin
  case TdxImageEdit(Sender).Tag of
    1: REC_SHE_REL.FB_PSQ_PE1_VD := TdxImageEdit(Sender).Text;
    2: REC_SHE_REL.FB_PSQ_PE2_VD := TdxImageEdit(Sender).Text;
    3: REC_SHE_REL.FB_PSQ_PE3_VD := TdxImageEdit(Sender).Text;
    4: REC_SHE_REL.FB_PSQ_PE4_VD := TdxImageEdit(Sender).Text;
  end;
end;

procedure TFrmRelatorios.ACTEST_ETQ_PADExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP)}

  if Assigned(qrpEST_ETQ_PAD) then qrpEST_ETQ_PAD.BringToFront else
  begin
//    qrpEST_ETQ_PAD     := TqrpEST_ETQ_PAD.Create(Self,REC_SHE_REL);
//    qrpEST_ETQ_PAD.Tag := 1;
//    qrpEST_ETQ_PAD.WinControlFormCreate(qrpEST_ETQ_PAD);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios.ACTEST_ETQ_PEQExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP)}

  if Assigned(qrpEST_ETQ_PEQ) then qrpEST_ETQ_PEQ.BringToFront else
  begin
//    qrpEST_ETQ_PEQ     := TqrpEST_ETQ_PEQ.Create(Self,REC_SHE_REL);
//    qrpEST_ETQ_PEQ.Tag := 2;
//    qrpEST_ETQ_PEQ.WinControlFormCreate(qrpEST_ETQ_PEQ);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios.ACTEST_ENT_ROMExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_PCP)}

  if Assigned(qrpEST_ENT_ROM) then qrpEST_ENT_ROM.BringToFront else
  begin
//    qrpEST_ENT_ROM     := TqrpEST_ENT_ROM.Create(Self,REC_SHE_REL);
//    qrpEST_ENT_ROM.Tag := 5;
//    qrpEST_ENT_ROM.WinControlFormCreate(qrpEST_ENT_ROM);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios.ACTREL_GER_EST_PROExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if Assigned(QRPGER_EST_PRO) then QRPGER_EST_PRO.BringToFront else
  begin
    QRPGER_EST_PRO := TQRPGER_EST_PRO.Create(Self,REC_SHE_REL);
    QRPGER_EST_PRO.WinControlFormCreate(QRPGER_EST_PRO);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios.ACTREL_GER_EST_INVExecute(
  Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if Assigned(QRPGER_EST_INV) then QRPGER_EST_INV.BringToFront else
  begin
    QRPGER_EST_INV := TQRPGER_EST_INV.Create(Self,REC_SHE_REL);
    QRPGER_EST_INV.WinControlFormCreate(QRPGER_EST_INV);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios.ACTREL_GER_FIS_CFOPExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if Assigned(QRPGER_FIS_CFOP) then QRPGER_FIS_CFOP.BringToFront else
  begin
    QRPGER_FIS_CFOP := TQRPGER_FIS_CFOP.Create(Self,REC_SHE_REL);
    QRPGER_FIS_CFOP.WinControlFormCreate(QRPGER_FIS_CFOP);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios.ACTREL_GER_FIS_PESOExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP)}

  if Assigned(QRPGER_FIS_PESO) then QRPGER_FIS_PESO.BringToFront else
  begin
    QRPGER_FIS_PESO := TQRPGER_FIS_PESO.Create(Self,REC_SHE_REL);
    QRPGER_FIS_PESO.WinControlFormCreate(QRPGER_FIS_PESO);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios.ACTREL_GER_PDV_CRDExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  if Assigned(QRPGER_PDV_CRD) then QRPGER_PDV_CRD.BringToFront else
  begin
    QRPGER_PDV_CRD := TQRPGER_PDV_CRD.Create(Self,REC_SHE_REL);
    QRPGER_PDV_CRD.WinControlFormCreate(QRPGER_PDV_CRD);
  end;

  {$IFEND}
end;

procedure TFrmRelatorios.ACTREL_FOR_PRO_CADExecute(Sender: TObject);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  {$IFEND}
end;

procedure TFrmRelatorios._Hints(AComponente: Word);
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

procedure TFrmRelatorios._Tabelas(AComponente: Word);
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

      if IEConsulta.Text = 'PK.CF_NO' then
      SQL.Add('SELECT PK.FANTASIA FROM CAD_FOR AS PK WHERE PK.ID > 0 GROUP BY 1 ORDER BY 1') else

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

procedure TFrmRelatorios.ACTRelatoriosExecute(Sender: TObject);
begin
  ActiveControl := Nil;

  REC_SHE_REL.Titulo := REC_SHE_REL.Nome;
  if ((REC_SHE_REL.Tipo <> EmptyStr) and (REC_SHE_REL.Tipo <> 'TODOS')) or ((IEStatus.Text <> EmptyStr) and (IEStatus.Text <> 'TODOS')) then
  begin
    REC_SHE_REL.Titulo := REC_SHE_REL.Titulo + ' [ ';
    REC_SHE_REL.Titulo := REC_SHE_REL.Titulo + IFThen((REC_SHE_REL.Tipo <> EmptyStr) and (REC_SHE_REL.Tipo <> 'TODOS') and (IEStatus.Text <> EmptyStr) and (IEStatus.Text <> 'TODOS'),REC_SHE_REL.Tipo+' + '+REC_SHE_REL.Situacao,
                                               IFThen(REC_SHE_REL.Tipo  <> 'TODOS',REC_SHE_REL.Tipo,
                                               IFThen(IEStatus.Text     <> 'TODOS',REC_SHE_REL.Situacao,'')));
    REC_SHE_REL.Titulo := REC_SHE_REL.Titulo + ' ]';
  end;

  { Diversos }
  REC_SHE_REL.PK_ID := PEC1Codigo.Text; { Primary Key }
  REC_SHE_REL.FK_ID := PEC2Codigo.Text; { Foreign Key }
  REC_SHE_REL.QRLRodape := EmptyStr;    { Linha de Rodapé }

  { EXECUTANDO RELATÓRIO }
  AExeRelatorio := FindComponent(IENome.Text) as TAction;

  if AExeRelatorio <> Nil then
  AExeRelatorio.Execute;
end;

procedure TFrmRelatorios.ACTExeEmpresasExecute(Sender: TObject);
begin
  { EMPRESAS PADRÕES }
  case REC_SHE_REL.TAGPerfil of
    0: IEEmpresa.Text := IFThen(IEEmpresa.Enabled,'TODAS AS EMPRESAS',RECParametros.EP_NO); { Gerencial }
  end;
end;

procedure TFrmRelatorios.ACTExeRelatoriosExecute(Sender: TObject);
          procedure _FillParams(ATipo,AStatus,AData: String;AConsultas: Array of String);
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
          
              with SQLPKConsulta do
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
                  SQLPKConsulta.Close;
                  SQLPKConsulta.SQL.Clear;
                  SQLPKConsulta.SQL.Add('SELECT DESCRICAO,VALOR,MAIN FROM TAB_REL_CON WHERE CHAVE = '''+AConsultas[i]+''' ORDER BY DESCRICAO');
                  SQLPKConsulta.Prepare;
                  SQLPKConsulta.ExecQuery;
          
                  while not SQLPKConsulta.Eof do
                  begin
                    { Localizando Componente no Form }
                    IEComponente := FindComponent(Format('IEC%dConsulta',[i + 1])) as TdxImageEdit;
          
                    { Definindo Atributos }
                    try
                      IEComponente.Descriptions.BeginUpdate;
                      IEComponente.Values.BeginUpdate;
          
                      IEComponente.Descriptions.Add(SQLPKConsulta.Current.ByName('DESCRICAO').AsString);
                      IEComponente.Values.Add(SQLPKConsulta.Current.ByName('VALOR').AsString);
          
                      if SQLPKConsulta.Current.ByName('MAIN').AsInteger = 1 then
                         IEComponente.Text := SQLPKConsulta.Current.ByName('VALOR').AsString;
                    finally
                      IEComponente.Descriptions.EndUpdate;
                      IEComponente.Values.EndUpdate;
                    end;
          
                    SQLPKConsulta.Next;
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

begin
  IEEmpresa.Text := 'TODAS AS EMPRESAS';

  IENome.Descriptions.Add(REC_SHE_REL.Nome);
  IENome.Text := EmptyStr;

  IEModelo.Text := 'Padrão';
  IETipo.Text   := 'TODOS';
  IEStatus.Text := 'TODOS';
  IEData.Text   := EmptyStr;

  case REC_SHE_REL.TAGPerfil of
    { GERENCIAL }
    0: begin
         if REC_SHE_REL.TAGNome = 2 then { Estoque Unitário }
         begin
           IEEmpresa.Enabled := (Pos(RECUsuarios.Grupo,'DEVDIR') > 0);
           if not IEEmpresa.Enabled then
           IEEmpresa.Text := REC_SHE_REL.EP_NO;

           _FillParams('TODOS','TODOS','Estoque',['']);
         end else

         if REC_SHE_REL.TAGNome = 3 then { Notas Fiscais por tipo de operação }
         begin
           IEEmpresa.Enabled := (Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUsuarios.ID = 66);
           if not IEEmpresa.Enabled then
           IEEmpresa.Text    := REC_SHE_REL.EP_NO;

           _FillParams('TODOS','TODOS','pedido_venda',['']);
         end else

         if REC_SHE_REL.TAGNome = 6 then { Notas Fiscais por peso transportado }
         begin
           IEEmpresa.Enabled := (Pos(RECUsuarios.Grupo,'DEVDIR') > 0) or (RECUsuarios.ID = 66);
           if not IEEmpresa.Enabled then
           IEEmpresa.Text    := REC_SHE_REL.EP_NO;

           _FillParams('TODOS','TODOS','pedido_venda',['']);
         end else
         begin
           IEEmpresa.Enabled := (Pos(RECUsuarios.Grupo,'DEVDIR') > 0);
           if not IEEmpresa.Enabled then
           IEEmpresa.Text    := REC_SHE_REL.EP_NO;

           _FillParams('TODOS','TODOS','pedido_venda',['']);
         end;
       end;

    { PRODUTOS }   
    1: begin
       end;

    { CLIENTES }
    2: begin
       end;

    { FORNECEDORES }
    3: begin
       end;
  end;

  { Rankings }
  if Pos('Ranking',REC_SHE_REL.Nome) > 0 then
  begin
    PNLCodigos.Tag := 1;
    REC_SHE_REL.FB_PSQ_CD_LB_PK := 'Quantidade de Itens';
    REC_SHE_REL.FB_PSQ_CD_LB_FK := 'First';

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
  PNLCodigos.Visible := (not oEmpty(REC_SHE_REL.FB_PSQ_CD_VD_PK));
  if PNLCodigos.Visible then
  begin
    GB1Codigo.Caption := '  ' + REC_SHE_REL.FB_PSQ_CD_VD_PK + '  ';
    GB2Codigo.Caption := '  ' + REC_SHE_REL.FB_PSQ_CD_VD_FK + '  ';
  end;
end;

end.
