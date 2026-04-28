unit pSHE_DEF_PED;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, Math, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxEdLib, dxDBELib, dxEditor, ExtCtrls, ActnList, ImgList,
  dxBar, dxBarExtItems, dxDockControl, dxPageControl, dxDockPanel,
  cxGraphics, cxControls, dxStatusBar, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, rxSpeedbar,
  IDGlobal, dxsbar, ComCtrls, DBCtrls, dxDBTLCl, dxGrClms, Menus;

type
  TFrmSHE_DEF_PED = class(TForm)
    BMPrincipal: TdxBarManager;

    BLBRefresh: TdxBarLargeButton;
    BLBRelatorios: TdxBarLargeButton;
    BLBPSQ_CAD: TdxBarLargeButton;
    BEPSQ_CAD: TdxBarEdit;
    BBPSQ_PER_MENU: TdxBarButton;
    BDPSQ_PER_INI: TdxBarDateCombo;
    BDPSQ_PER_FIM: TdxBarDateCombo;
    BLBMAppend: TdxBarLargeButton;
    BLBMEdit: TdxBarLargeButton;
    BLBMCancel: TdxBarLargeButton;
    BLBConfirma: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BLBMDelete: TdxBarLargeButton;
    BLBPesquisa: TdxBarLargeButton;
    BSProgresso: TdxBarStatic;
    BPProcesso: TdxBarProgressItem;
    BLBPSQ_CAD_MENU: TdxBarLargeButton;
    SBSMenu: TdxSideBarStore;
    SSIEAppend: TdxStoredSideItem;
    SSIEEdit: TdxStoredSideItem;
    SSIEDelete: TdxStoredSideItem;
    SSIEPost: TdxStoredSideItem;
    SSIECancel: TdxStoredSideItem;
    SSIMAppend: TdxStoredSideItem;
    SSIMEdit: TdxStoredSideItem;
    SSIMDelete: TdxStoredSideItem;
    PMPSQ_CAD: TdxBarPopupMenu;
    PMPSQ_PER: TdxBarPopupMenu;
    StyleController: TdxEditStyleController;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    DMPrincipal: TdxDockingManager;
    DSPrincipal: TdxDockSite;
    DPSubMenu5: TdxDockPanel;
    LDSSubMenu5: TdxLayoutDockSite;
    DPSubMenu4: TdxDockPanel;
    DPSubMenu3: TdxDockPanel;
    DPSubMenu2: TdxDockPanel;
    DPSubMenu1: TdxDockPanel;
    LDSSubMenu4: TdxLayoutDockSite;
    LDSSubMenu3: TdxLayoutDockSite;
    LDSSubMenu2: TdxLayoutDockSite;
    LDSSubMenu1: TdxLayoutDockSite;
    DPPrincipal1: TdxDockPanel;
    LDSPrincipal1: TdxLayoutDockSite;
    DPPrincipal2: TdxDockPanel;
    TCDSPrincipal: TdxTabContainerDockSite;
    PNLPrincipal1: TPanel;
    DSPrincipal1: TdxDockSite;
    LDSPrincipal1ConsultaINFADCAD: TdxLayoutDockSite;
    DPPrincipal1Consulta1: TdxDockPanel;
    DPPrincipal1RodapeLE1: TdxDockPanel;
    LDSPrincipal1Rodape1: TdxLayoutDockSite;
    DPPrincipal1RodapeLE2: TdxDockPanel;
    DPPrincipal1RodapeLEB: TdxDockPanel;
    TCDSPrincipal1RodapeLE: TdxTabContainerDockSite;
    VCDSPrincipal1RodapeLE: TdxVertContainerDockSite;
    DPPrincipal1LE: TdxDockPanel;
    LDSPrincipal1LE: TdxLayoutDockSite;
    DPPrincipal1LD: TdxDockPanel;
    LDSPrincipal1LD: TdxLayoutDockSite;
    DPPrincipal1Titulo: TdxDockPanel;
    LDSPrincipal1Titulo: TdxLayoutDockSite;
    DPPrincipal1INFADCAD: TdxDockPanel;
    LDSPrincipal1INFADCAD: TdxLayoutDockSite;
    DPPrincipal1INFADCPL: TdxDockPanel;
    LDSPrincipal1INFADCPL: TdxLayoutDockSite;
    HCDSPrincipal1Consulta: TdxHorizContainerDockSite;
    DPPrincipal1ConsultaLD1: TdxDockPanel;
    DPPrincipal1ConsultaLD2: TdxDockPanel;
    TCDSPrincipal1ConsultaLD: TdxTabContainerDockSite;
    DPPrincipal1Consulta2: TdxDockPanel;
    TCDSPrincipal1Consulta: TdxTabContainerDockSite;
    DPPrincipal1RodapeTitulo: TdxDockPanel;
    LDSPrincipal1RodapeTitulo: TdxLayoutDockSite;
    DPPrincipal1Rodape: TdxDockPanel;
    LDSPrincipal1RodapeLE: TdxLayoutDockSite;
    DPPrincipal1Rodape1: TdxDockPanel;
    LDSPrincipal1Rodape2: TdxLayoutDockSite;
    DPPrincipal1Rodape2: TdxDockPanel;
    TCDSPrincipal1Rodape: TdxTabContainerDockSite;
    PNLDBGConsulta: TPanel;
    DPPrincipal1Rodape3: TdxDockPanel;
    ILDockingManager: TImageList;
    Consulta: TIBQuery;
    DTSConsulta: TDataSource;
    DBGConsulta: TdxDBGrid;
    PNLCAD_PRO_IMG_PIX: TPanel;
    DBPrincipal1INFADCAD: TdxDBMemo;
    BBPSQ_DTSP: TdxBarButton;
    BBPSQ_PER: TdxBarButton;
    ConsultaC_ID: TLargeintField;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTRegisterEvent: TAction;
    ACTExecuteEvent: TAction;
    ACTConsulta: TAction;
    ACTPesquisa: TAction;
    ACTPesquisaOK: TAction;
    ACTPesquisaFocus: TAction;
    ACTRelatorios: TAction;
    ACTMEAppend: TAction;
    ACTMEEdit: TAction;
    ACTMEDelete: TAction;
    ACTMEPost: TAction;
    ACTMECancel: TAction;
    ACTMPAppend: TAction;
    ACTMPEdit: TAction;
    ACTMPDelete: TAction;
    ACTMPPost: TAction;
    ACTMPValidate: TAction;
    ACTMPCancel: TAction;
    ACTExpressEvent: TAction;
    ACTProgressBar: TAction;
    ACTDashboards: TAction;
    ACTCheckConstraints: TAction;
    ACTCheckErrors: TAction;
    ACTSaida: TAction;
    ACTEdicao: TAction;
    ConsultaPAG_ID: TLargeintField;
    ConsultaEP_ID: TSmallintField;
    ConsultaEP_NO: TIBStringField;
    ConsultaCF_ID: TSmallintField;
    ConsultaCF_NO: TIBStringField;
    ConsultaCONTA_ID: TSmallintField;
    ConsultaCONTA_NO: TIBStringField;
    ConsultaPLANO_CONTA_ID: TSmallintField;
    ConsultaPLANO_CONTA_NO: TIBStringField;
    ConsultaCENTRO_CUSTO_ID: TSmallintField;
    ConsultaCENTRO_CUSTO_NO: TIBStringField;
    ConsultaDESCRICAO: TIBStringField;
    ConsultaTIPO_MPG_ID: TSmallintField;
    ConsultaTIPO_MPG_NO: TIBStringField;
    ConsultaBANCO_ID: TSmallintField;
    ConsultaBANCO_CD: TIBStringField;
    ConsultaBANCO_NO: TIBStringField;
    ConsultaBANCO_AG: TIBStringField;
    ConsultaBANCO_CC: TIBStringField;
    ConsultaIS_BOLETO: TSmallintField;
    ConsultaIS_NF: TSmallintField;
    ConsultaSTATUS_ID: TSmallintField;
    ConsultaSTATUS_NO: TIBStringField;
    ConsultaINFADCAD: TMemoField;
    ConsultaCREATED_AT: TDateTimeField;
    ConsultaCREATED_NO: TIBStringField;
    DBGConsultaEP_NO: TdxDBGridMaskColumn;
    DBGConsultaCF_NO: TdxDBGridMaskColumn;
    DBGConsultaCONTA_NO: TdxDBGridMaskColumn;
    DBGConsultaPLANO_CONTA_NO: TdxDBGridMaskColumn;
    DBGConsultaCENTRO_CUSTO_NO: TdxDBGridMaskColumn;
    DBGConsultaDESCRICAO: TdxDBGridMaskColumn;
    DBGConsultaDOCUMENTO: TdxDBGridMaskColumn;
    DBGConsultaTIPO_TPG_NO: TdxDBGridMaskColumn;
    DBGConsultaTIPO_MPG_NO: TdxDBGridMaskColumn;
    DBGConsultaBANCO_NO: TdxDBGridMaskColumn;
    DBGConsultaBANCO_AG: TdxDBGridMaskColumn;
    DBGConsultaBANCO_CC: TdxDBGridMaskColumn;
    DBGConsultaDOCUMENTO_DATA_EMISSAO: TdxDBGridDateColumn;
    DBGConsultaDOCUMENTO_DATA_VENCIMENTO: TdxDBGridDateColumn;
    DBGConsultaSTATUS_NO: TdxDBGridMaskColumn;
    DBGConsultaCREATED_AT: TdxDBGridDateColumn;
    DBGConsultaCREATED_NO: TdxDBGridMaskColumn;
    DBGConsultaC_ID: TdxDBGridColumn;
    DBGConsultaDOCUMENTO_VALOR: TdxDBGridMaskColumn;
    DBGConsultaDOCUMENTO_VALOR_MULTA: TdxDBGridMaskColumn;
    DBGConsultaDOCUMENTO_VALOR_JURO: TdxDBGridMaskColumn;
    DBGConsultaIS_BOLETO: TdxDBGridCheckColumn;
    DBGConsultaIS_NF: TdxDBGridCheckColumn;
    DBGFKConsulta: TdxDBGrid;
    FKConsulta: TIBQuery;
    DTSFKConsulta: TDataSource;
    FKConsultaDOCUMENTO: TIBStringField;
    FKConsultaSTATUS_NO: TIBStringField;
    FKConsultaIS_NF: TSmallintField;
    FKConsultaIS_BOLETO: TSmallintField;
    FKConsultaCREATED_AT: TDateTimeField;
    FKConsultaCREATED_NO: TIBStringField;
    FKConsultaPAG_ID: TLargeintField;
    DBGFKConsultaDOCUMENTO: TdxDBGridMaskColumn;
    DBGFKConsultaDOCUMENTO_DATA_VENCIMENTO: TdxDBGridDateColumn;
    DBGFKConsultaDOCUMENTO_VALOR: TdxDBGridMaskColumn;
    DBGFKConsultaSTATUS_NO: TdxDBGridMaskColumn;
    DBGFKConsultaIS_NF: TdxDBGridCheckColumn;
    DBGFKConsultaIS_BOLETO: TdxDBGridCheckColumn;
    DBGFKConsultaCREATED_AT: TdxDBGridDateColumn;
    DBGFKConsultaCREATED_NO: TdxDBGridMaskColumn;
    ILMenuPrincipal: TImageList;
    ILMenuEdicao: TImageList;
    ConsultaTIPO_TPG_ID: TSmallintField;
    ConsultaTIPO_TPG_NO: TIBStringField;
    ConsultaDOCUMENTO: TIBStringField;
    ConsultaDOCUMENTO_DATA_EMISSAO: TDateField;
    ConsultaDOCUMENTO_DATA_VENCIMENTO: TDateField;
    ConsultaDOCUMENTO_VALOR: TIBBCDField;
    ConsultaDOCUMENTO_VALOR_MULTA: TIBBCDField;
    ConsultaDOCUMENTO_VALOR_JURO: TIBBCDField;
    ConsultaDOCUMENTO_PARCELA: TSmallintField;
    FKConsultaDOCUMENTO_DATA_VENCIMENTO: TDateField;
    FKConsultaDOCUMENTO_VALOR: TIBBCDField;
    ConsultaCREATED_LG_ID: TSmallintField;
    ConsultaEDITED_LG_ID: TSmallintField;
    ConsultaEDITED_AT: TDateTimeField;
    ConsultaSTATUS_LG_ID: TSmallintField;
    ConsultaSTATUS_AT: TDateTimeField;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DPPrincipal1RodapeLEBUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure VCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTPesquisaOKExecute(Sender: TObject);
    procedure ACTPesquisaFocusExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BEPSQ_CADCurChange(Sender: TObject);
    procedure BDPSQ_PER_INICurChange(Sender: TObject);
    procedure BDPSQ_PER_FIMCurChange(Sender: TObject);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure ConsultaAfterScroll(DataSet: TDataSet);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
    procedure DTSFKConsultaDataChange(Sender: TObject; Field: TField);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure ACTCheckErrorsExecute(Sender: TObject);
    procedure ACTDashboardsExecute(Sender: TObject);
    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTRegisterEventExecute(Sender: TObject);
    procedure ACTExecuteEventExecute(Sender: TObject);
    procedure ACTExpressEventExecute(Sender: TObject);
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure ACTMEDeleteExecute(Sender: TObject);
    procedure ACTMEPostExecute(Sender: TObject);
    procedure ACTMECancelExecute(Sender: TObject);
    procedure ACTMPAppendExecute(Sender: TObject);
    procedure ACTMPEditExecute(Sender: TObject);
    procedure ACTMPDeleteExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
    procedure ACTMPValidateExecute(Sender: TObject);
    procedure ACTMPCancelExecute(Sender: TObject);
    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTProgressBarExecute(Sender: TObject);
    procedure DBGFKConsultaCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
    FDockControl: TdxCustomDockControl;
    //FDockControlPrincipal1RodapeLE: Integer;

    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
    procedure _SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    property _GetCurrentAlert: String  read FCurrentAlert write _SetCurrentAlert;
    property _GetCurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property _GetForceClose  : Boolean read FForceClose   write _SetForceClose;

    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;
    procedure _WM_AFTER_CREATE(var Msg: TMessage); message WM_AFTER_CREATE;

    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;

    procedure _WM_SHOW(var Msg: TMessage); message WM_SHOW;
    procedure _WM_AFTER_SHOW(var Msg: TMessage); message WM_AFTER_SHOW;

    procedure _WM_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    Constructor Create(AOwner: TComponent;
                 const AIDPK : LongInt = 0 ;
                       ADEPK : String  = '';
                       AIDEV : LongInt = 0 ;
                       ACDEV : Word    = 0 ;
                       ATPEV : Word    = 0 ;

                       AFB_SQL_TAB: String = '';
                       AFB_SQL_GET: String = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK : LongInt = 0 ;
                              ADEPK : String  = '';
                              AIDEV : LongInt = 0 ;
                              ACDEV : Word    = 0 ;
                              ATPEV : Word    = 0 ;

                              AFB_SQL_TAB: String = '';
                              AFB_SQL_GET: String = '');

    Destructor  Destroy; override;
  end;

var
  FrmSHE_DEF_PED: TFrmSHE_DEF_PED;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal, pFIN_PAG_EDI;

{$R *.dfm}

procedure TFrmSHE_DEF_PED._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmSHE_DEF_PED._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmSHE_DEF_PED._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmSHE_DEF_PED._SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
var
  FUpdateZones: Boolean;
begin
  FUpdateZones := AUpdateZones;
  
  if AValue <> Nil then
  begin
    if FDockControl <> AValue then
       FDockControl := AValue;

    TdxCustomDockControl(AValue).Tag     := AXYPOS;
    TdxCustomDockControl(AValue).Visible := not (TdxCustomDockControl(AValue).Tag = 0);

    if ADirection = lVertical then
    begin
      //if AUpdateZones then
      //   FUpdateZones := (TdxCustomDockControl(AValue).Height <> TdxCustomDockControl(AValue).Tag);

      if ARepeat then
      begin
        repeat  TdxCustomDockControl(AValue).Height := TdxCustomDockControl(AValue).Tag;
        until   TdxCustomDockControl(AValue).Tag     = TdxCustomDockControl(AValue).Height;
      end else
      begin
        TdxCustomDockControl(AValue).Height := TdxCustomDockControl(AValue).Tag;
      end;
    end else

    if ADirection = lHorizontal then
    begin
      //if AUpdateZones then
      //   FUpdateZones := (TdxCustomDockControl(AValue).Width <> TdxCustomDockControl(AValue).Tag);

      if ARepeat then
      begin
        repeat  TdxCustomDockControl(AValue).Width := TdxCustomDockControl(AValue).Tag;
        until   TdxCustomDockControl(AValue).Tag    = TdxCustomDockControl(AValue).Width;
      end else
      begin
        TdxCustomDockControl(AValue).Width := TdxCustomDockControl(AValue).Tag;
      end;
    end;
    
    if FUpdateZones then
    AValue.OnUpdateDockZones(AValue,Avalue.DockZones);
    AValue.Repaint;
  end;
end;

procedure TFrmSHE_DEF_PED._WM_CREATE(var Msg: TMessage);
begin
  { INICIALIZA }
  Screen.Cursor := crAppStart;  { Cursor }

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
  { PRINCIPAL DOCK MANAGER }
  { Largura }
  _SetDockControl(DPPrincipal1LE,DPPrincipal1LE.Tag,lHorizontal); { LE }
  _SetDockControl(DPPrincipal1LD,DPPrincipal1LD.Tag,lHorizontal); { LD }

  { Altura }
  _SetDockControl(DPPrincipal1Titulo  ,DPPrincipal1Titulo.Tag  ,lVertical); { Título }
  _SetDockControl(DPPrincipal1INFADCAD,DPPrincipal1INFADCAD.Tag,lVertical); { Informações Adicionais }
  _SetDockControl(DPPrincipal1INFADCPL,DPPrincipal1INFADCPL.Tag,lVertical); { Informações Complementares }

  { CONSULTA DOCK MANAGER }
  { Largura LE }
//_SetDockControl(TCDSPrincipal1ConsultaLE,TCDSPrincipal1ConsultaLE.Tag,lHorizontal);
//  _SetDockControl(DPPrincipal1ConsultaLE1 ,DPPrincipal1ConsultaLE1.Tag ,lHorizontal);
//_SetDockControl(DPPrincipal1ConsultaLE2 ,DPPrincipal1ConsultaLE2.Tag ,lHorizontal);

  { Largura LD }
  _SetDockControl(TCDSPrincipal1ConsultaLD,TCDSPrincipal1ConsultaLD.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1ConsultaLD1 ,DPPrincipal1ConsultaLD1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1ConsultaLD2 ,DPPrincipal1ConsultaLD2.Tag ,lHorizontal);

  { RODAPÉ DOCK MANAGER }
  { Largura LE }
  _SetDockControl(VCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal);
  _SetDockControl(TCDSPrincipal1RodapeLE,TCDSPrincipal1RodapeLE.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLE1 ,DPPrincipal1RodapeLE1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLE2 ,DPPrincipal1RodapeLE2.Tag ,lHorizontal);


  { Altura }
  _SetDockControl(DPPrincipal1RodapeLEB,DPPrincipal1RodapeLEB.Tag,lVertical); { LEB }

  _SetDockControl(DPPrincipal1RodapeTitulo,DPPrincipal1RodapeTitulo.Tag,lVertical);
  _SetDockControl(DPPrincipal1Rodape      ,DPPrincipal1Rodape.Tag      ,lVertical);

  { CONSULTAS DOCK MANAGER }
  { Principal }
  DPPrincipal1Consulta2.Visible := (DPPrincipal1Consulta2.Tag > 0);

  { Rodapé }
  DPPrincipal1Rodape1.Visible := (DPPrincipal1Rodape1.Tag > 0);
  DPPrincipal1Rodape2.Visible := (DPPrincipal1Rodape2.Tag > 0);
  DPPrincipal1Rodape3.Visible := (DPPrincipal1Rodape3.Tag > 0);

  { CONTAINERS MANAGER }
  { Consulta }
//TCDSPrincipal1ConsultaLE.ActiveChildIndex := 0;
  TCDSPrincipal1ConsultaLD.ActiveChildIndex := 0;
  TCDSPrincipal1Consulta.ActiveChildIndex   := 0;

  { Rodapé Principal }
  TCDSPrincipal1RodapeLE.ActiveChildIndex := 0;
  TCDSPrincipal1Rodape.ActiveChildIndex   := 0;

  { CONTAINERS MANAGER }
  { Altura }
  if HCDSPrincipal1Consulta.Tag = 0 then
  begin
    HCDSPrincipal1Consulta.Tag    := DSPrincipal1.Height - DPPrincipal1Titulo.Height - DPPrincipal1INFADCPL.Height;
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;
    HCDSPrincipal1Consulta.Tag    := 0;

    TCDSPrincipal1Rodape.Visible  := False;
    TCDSPrincipal1Rodape.Tag      := 0;
    TCDSPrincipal1Rodape.Width    := 0;
    TCDSPrincipal1Rodape.Height   := 0;

    TCDSPrincipal1Rodape.Repaint;
  end else
  begin
    HCDSPrincipal1Consulta.Tag    := Trunc(DSPrincipal.Height * 0.6);  //IFThen(Screen.Height > 864,315,315) + DPPrincipal1Titulo.Height;
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

    TCDSPrincipal1Rodape.Visible  := True;
    TCDSPrincipal1Rodape.Tag      := 1;
    TCDSPrincipal1Rodape.Width    := DSPrincipal1.Width  - HCDSPrincipal1Consulta.Tag;
    TCDSPrincipal1Rodape.Height   := DSPrincipal1.Height - HCDSPrincipal1Consulta.Height - DPPrincipal1INFADCAD.Height;

    TCDSPrincipal1Rodape.Repaint;
  end;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
  { INICIALIZAÇÃO DOS COMPONENTES }
end;

procedure TFrmSHE_DEF_PED._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicativo }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Desktop }

  { CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;
end;

procedure TFrmSHE_DEF_PED._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  ACTRegisterEvent.Execute; { Registro }
end;

procedure TFrmSHE_DEF_PED._SW_SHOWNOACTIVATE(var Msg: TMessage);
          procedure _ProcessPaintMessages; // << not tested, pulled out of code
          var
            Msg: TMsg;
          begin
            while PeekMessage(msg, 0, WM_PAINT, WM_PAINT, PM_REMOVE) do
                  DispatchMessage(msg);
          end;
begin
  _ProcessPaintMessages;
end;

procedure TFrmSHE_DEF_PED._WM_SHOW(var Msg: TMessage);
begin
  { BEFORE SHOWNING }
  Screen.Cursor := crHourGlass; { Cursor }
  REC_SHE_DEF.FResize := 0; { Form Resize }
  ALockWindowUpdate   := True; { SQL Injection Enabled }

  oCTransact(TConsulta); { Transaction }
  ACTConsulta.Execute; { Tabelas }
  ACTEdicao.Execute; { Edições }
end;

procedure TFrmSHE_DEF_PED._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { INICIALIZAÇÃO DOS COMPONENTES }
  Screen.Cursor     := crDefault;
  ALockWindowUpdate := False;  { SQL Injection Disabled }
end;

procedure TFrmSHE_DEF_PED._WM_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  REC_SHE_DEF.FResize := REC_SHE_DEF.FResize + 1;

  { FORM SCREEN }
  if REC_SHE_DEF.FMainArea then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FWorkArea := False;
  end else

  if REC_SHE_DEF.FWorkArea then
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FMainArea := False;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;
end;

procedure TFrmSHE_DEF_PED._WM_AFTER_RESIZE(var Message: TMessage);
begin
  if REC_SHE_DEF.FResize >= 2 then
  try
    TCDSPrincipal.Height := DPPrincipal1.Height - 1;
    TCDSPrincipal.Width  := DPPrincipal1.Width  - 1;
    TCDSPrincipal.Repaint;

    { DOCK CONSULTA MANAGER }
    if HCDSPrincipal1Consulta.Tag = 0 then
    begin
      HCDSPrincipal1Consulta.Tag    := DSPrincipal1.Height - DPPrincipal1Titulo.Height - DPPrincipal1INFADCPL.Height;
      HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;
      HCDSPrincipal1Consulta.Tag    := 0;

      TCDSPrincipal1Rodape.Visible  := False;
      TCDSPrincipal1Rodape.Tag      := 0;
      TCDSPrincipal1Rodape.Width    := 0;
      TCDSPrincipal1Rodape.Height   := 0;

      TCDSPrincipal1Rodape.Repaint;
    end else
    begin
      HCDSPrincipal1Consulta.Tag    := Trunc(DSPrincipal.Height * 0.6); //IFThen(Screen.Height > 864,315,315) + DPPrincipal1Titulo.Height;
      HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

      TCDSPrincipal1Rodape.Visible  := True;
      TCDSPrincipal1Rodape.Tag      := 1;
      TCDSPrincipal1Rodape.Width    := DSPrincipal1.Width  - HCDSPrincipal1Consulta.Tag;
      TCDSPrincipal1Rodape.Height   := DSPrincipal1.Height - HCDSPrincipal1Consulta.Height - DPPrincipal1INFADCAD.Height;

      TCDSPrincipal1Rodape.Repaint;
    end;

    oResize(DBGConsulta);
    Paint;
  finally
    REC_SHE_DEF.FResize := 0; { zera controle }

    { FOCUSED }
    if (BEPSQ_CAD.Visible <> ivNever) and (_FormPesquisa) then
    BEPSQ_CAD.SetFocus(False);

    ACTPesquisa.Execute; { Pesquisa }
  end;
end;

Constructor TFrmSHE_DEF_PED.Create(AOwner: TComponent;
                         const AIDPK : LongInt = 0 ;
                               ADEPK : String  = '';
                               AIDEV : LongInt = 0 ;
                               ACDEV : Word    = 0 ;
                               ATPEV : Word    = 0 ;

                               AFB_SQL_TAB: String = '';
                               AFB_SQL_GET: String = '');
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);
  REC_SHE_DEF.TPEV := INTTOSTR(ATPEV);

  REC_SHE_DEF.FB_SQL_TAB := TRIM(AFB_SQL_TAB);
  REC_SHE_DEF.FB_SQL_GET := TRIM(AFB_SQL_GET);

  inherited Create(AOwner);
end;

Class procedure TFrmSHE_DEF_PED._ExecForm(AOwner : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                      AIDPK : LongInt = 0 ;
                                      ADEPK : String  = '';
                                      AIDEV : LongInt = 0 ;
                                      ACDEV : Word    = 0 ;
                                      ATPEV : Word    = 0 ;

                                      AFB_SQL_TAB: String = '';
                                      AFB_SQL_GET: String = '');
var
  idxForm: Integer;
begin
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (ACDEV = 1)) then
  TForm(AForm) := Self.Create (AOwner    ,
                               AIDPK     ,
                               ADEPK     ,
                               AIDEV     ,
                               ACDEV     ,
                               ATPEV     ,
                               AFB_SQL_TAB ,
                               AFB_SQL_GET);

  _Form.Objects[idxForm] := TObject(@AForm);

  if AFormStyle <> fsStayOnTop then
  begin
    TForm(AForm).FormStyle := AFormStyle;

    if TForm(AForm).FormStyle = fsNormal then
    begin
      TForm(AForm).Visible := False;
      TForm(AForm).ShowModal;
    end else
    begin
      TForm(AForm).Visible := True;
      TForm(AForm).Show;
    end;
  end;
end;

Destructor TFrmSHE_DEF_PED.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  Screen.Cursor := crAppStart;
  try
    if TForm(Self).Name <> EmptyStr then
    if Assigned(_Form) and _Form.Find(ClassName,idxForm) and (_Form.Objects[idxForm] <> Nil) then

    try
      { Eventos }
      try
        try
          EEvent.UnRegisterEvents;
        except
          on E: Exception do
          begin
            oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                     'Error Code: '+E.Message+'.'      +#13+
                                      Caption+'.');
          end;
        end;

      finally
        try
          { Transação Principal }
          try
            oFTransact(TConsulta); { Consultas }
            oFTransact(TEvent   ); { Eventos }
          except
            on E: Exception do
            begin
              oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                       'Error Code: '+E.Message+'.'      +#13+
                                        Caption+'.');
            end;
          end;

        finally
          { record e afins }
          try
            oFREC_SHE_DEF(REC_SHE_DEF);
          except
            on E: Exception do
            begin
             oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                      'Error Code: '+E.Message+'.'        +#13+
                                       Caption+'.');
            end;
          end;

        end;
      end;

    finally
      PtrForm(_Form.Objects[idxForm])^ := Nil;
      _Form.Objects[idxForm] := Nil;
    end;

  finally
    Screen.Cursor := crDefault;
    inherited;
  end;
end;

procedure TFrmSHE_DEF_PED.FormCreate(Sender: TObject);
begin
  Self.DoubleBuffered := True;
  SetCursorPos(500,Self.Top);
  Randomize;

  _FormPesquisa := True;

  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { EVENTOS }
  REC_SHE_DEF.FB_Event   := 'FIN_PAG_ADM'; { Evento Principal }
  REC_SHE_DEF.FB_EVE_EDT := ''; { Evento Edição }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Financeiro';
  REC_SHE_DEF.GReferencia := 'Pagamentos';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;

  if not REC_SHE_DEF.GAdmin then
  begin
    { SET GRANT USERT }
    oUSER(REC_SHE_DEF);

    { MANAGER ACCESS }
    ACTMPAppend.Enabled   := (REC_SHE_DEF.GPost and REC_SHE_DEF.GAppend);
    ACTMPEdit.Enabled     := (REC_SHE_DEF.GPost and REC_SHE_DEF.GEdit  );
    ACTMPDelete.Enabled   := (REC_SHE_DEF.GPost and REC_SHE_DEF.GDelete);

    ACTMPPost.Enabled     := (REC_SHE_DEF.GPost    );
    ACTMPValidate.Enabled := (REC_SHE_DEF.GValidate);
    ACTMPCancel.Enabled   := (REC_SHE_DEF.GCancel  );

    ACTRelatorios.Enabled := (REC_SHE_DEF.GPrint);
  end;
  
  if not REC_SHE_DEF.GView then
  _GetForceClose := True else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  _GetForceClose := False;

  { ACCESS DENIED }
  if (FForceClose) and (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                        RECParametros.STCX ;
  end else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                       'Usuário não Autorizado';
  end;

  { ACCESS ABORT }
  if FForceClose then
  begin
    oErro(Application.Handle,FCurrentAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
    Exit;
  end else
  PostMessage( Handle, WM_AFTER_CREATE, 0, 0);
end;

procedure TFrmSHE_DEF_PED.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmSHE_DEF_PED.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmSHE_DEF_PED.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
end;

procedure TFrmSHE_DEF_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmSHE_DEF_PED.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
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

procedure TFrmSHE_DEF_PED.FormKeyPress(Sender: TObject; var Key: Char);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PED.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  REC_SHE_DEF.FTop    := AMainFormScreen.Top;
  REC_SHE_DEF.FBottom := AMainFormScreen.Bottom;
  REC_SHE_DEF.FLeft   := AMainFormScreen.Left;
  REC_SHE_DEF.FRight  := AMainFormScreen.Right;
  REC_SHE_DEF.FHeight := AMainFormScreen.Bottom;

  if REC_SHE_DEF.FPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    Self.HelpContext := 95; { % }

    REC_SHE_DEF.FMainHeight := IFThen(Self.HelpContext     > 0,Trunc((REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop ) * (Self.HelpContext     / 100)),0);
    REC_SHE_DEF.FMainWidth  := IFThen(Self.AlphaBlendValue > 0,Trunc((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) * (Self.AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FMainTop > 0) and (REC_SHE_DEF.FMainLeft > 0) then
    begin
      Self.Top  := REC_SHE_DEF.FTop + 5;
      Self.Left := REC_SHE_DEF.FLeft;

      if Self.Top + Self.Height > REC_SHE_DEF.FBottom then
      begin
        Self.Top := Self.Top - ((Self.Top + Self.Height) - REC_SHE_DEF.FBottom);
      end;

      if Self.Left + Self.Width > REC_SHE_DEF.FRight then
      begin
        Self.Left := Self.Left - ((Self.Left + Self.Width) - REC_SHE_DEF.FRight);
      end;

    end else
    begin
      if REC_SHE_DEF.FMainHeight > 0 then Self.Height := REC_SHE_DEF.FMainHeight;
      if REC_SHE_DEF.FMainWidth  > 0 then Self.Width  := REC_SHE_DEF.FMainWidth;

      if FormStyle = fsNormal then
      begin
        Self.Top  := ( REC_SHE_DEF.FTop   + (REC_SHE_DEF.FHeight - Self.Height)) div 2;
        Self.Left := ((REC_SHE_DEF.FRight +  REC_SHE_DEF.FLeft)  - Self.Width)   div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Self.Top  := ((REC_SHE_DEF.FBottom - REC_SHE_DEF.FTop ) - Self.Height) div 2;
        Self.Left := ((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) - Self.Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := Screen.WorkAreaTop;
    Self.Left   := Screen.WorkAreaLeft;
    Self.Width  := Screen.WorkAreaWidth;
    Self.Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := 0;
    Self.Left   := 0;
    Self.Width  := REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5;
    Self.Height := REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5;
  end else
  if REC_SHE_DEF.FPosition = poDefault then
  begin
    Self.Top    := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FTop ,0);
    Self.Left   := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FLeft,0);
    Self.Width  := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5,0);
    Self.Height := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5,0);
  end;
end;

procedure TFrmSHE_DEF_PED.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmSHE_DEF_PED.VCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (VCDSPrincipal1RodapeLE.HelpContext = 0) then
  repeat
    VCDSPrincipal1RodapeLE.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := VCDSPrincipal1RodapeLE.Height;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmSHE_DEF_PED.TCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (TCDSPrincipal1RodapeLE.HelpContext = 0) then
  repeat
    TCDSPrincipal1RodapeLE.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := VCDSPrincipal1RodapeLE.Height;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmSHE_DEF_PED.DPPrincipal1RodapeLEBUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (DPPrincipal1RodapeLEB.HelpContext = 0) then
  repeat
    DPPrincipal1RodapeLEB.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := Sender.Tag;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmSHE_DEF_PED.TCDSPrincipal1RodapeUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  I: Integer;
begin
  if (Showing) and (TCDSPrincipal1Rodape.HelpContext = 0) then
  begin
    TCDSPrincipal1Rodape.HelpContext := 1;
    I := 0;
    while I < AZones.Count do
    begin
      Sender.Width  := Sender.Width  - 1;
      Sender.Height := Sender.Height - 1;
      Sender.Repaint;

      Inc(I);
    end;

    TCDSPrincipal.Tag := 1;
  end;
end;

procedure TFrmSHE_DEF_PED.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmSHE_DEF_PED.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmSHE_DEF_PED.ACTRelatoriosExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PED.ACTDashboardsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PED.ACTProgressBarExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PED.ACTConsultaExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PED.ACTPesquisaExecute(Sender: TObject);
var
  i: Integer;
begin
  try
    Screen.Cursor := crAppStart;
    ALockWindowUpdate := True;  { SQL Injection Enabled }

    { RESET TRANSACTION }
    oCTransact(TConsulta);
    oOTransact(TConsulta);

    { RESET FILTER DEFAULT }
    DBGConsulta.Filter.Clear; { Consulta }

    { DIVERSOS }
    REC_SHE_DEF.FB_PSQ_SBQ := False; { Sub Query }
    REC_SHE_DEF.FB_PSQ_PAD := True;  { Padrão }

    { TEXTO PRIMÁRIO }
    REC_SHE_DEF.FB_PSQ_FD_NO_PK := BLBPSQ_CAD_MENU.Description; { Campo }
    REC_SHE_DEF.FB_PSQ_FD_VD_PK := BEPSQ_CAD.Text;

    { TEXTO SECUNDÁRIO }
    REC_SHE_DEF.FB_PSQ_FD_NO_FK := EmptyStr;
    REC_SHE_DEF.FB_PSQ_FD_VD_FK := EmptyStr;

    { DATAS }
    REC_SHE_DEF.FB_PSQ_DT_NO_PK := EmptyStr;
    REC_SHE_DEF.FB_PSQ_DT_VD_PK := 0;
    REC_SHE_DEF.FB_PSQ_DT_VD_FK := 0;

    if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date >= BDPSQ_PER_INI.Date) then
    begin
      REC_SHE_DEF.FB_PSQ_DT_NO_PK := BBPSQ_PER_MENU.Description;
      REC_SHE_DEF.FB_PSQ_DT_VD_PK := BDPSQ_PER_INI.Date;
      REC_SHE_DEF.FB_PSQ_DT_VD_FK := BDPSQ_PER_FIM.Date;
    end;

    { Lista Digitada }
    if REC_SHE_DEF.FList = Nil then
    REC_SHE_DEF.FList := TStringList.Create else
    REC_SHE_DEF.FList.Clear;

    if (REC_SHE_DEF.FB_PSQ_FD_VD_PK <> EmptyStr) and (REC_SHE_DEF.FB_PSQ_FD_VD_PK <> '0') then
    begin
      { SEARCH DEFAULT }
      REC_SHE_DEF.FB_PSQ_PAD := False; { Padrão }

      { Capturar as palavras separadamente }
      While Length(REC_SHE_DEF.FB_PSQ_FD_VD_PK) > 0 do
      begin
        REC_SHE_DEF.FB_PSQ_FD_VD_FK  := Trim(Fetch(REC_SHE_DEF.FB_PSQ_FD_VD_PK    ,' '));
        REC_SHE_DEF.FB_PSQ_FD_VD_FK  := oStrTran(REC_SHE_DEF.FB_PSQ_FD_VD_FK, '+' ,' ');
        REC_SHE_DEF.FList.Add(REC_SHE_DEF.FB_PSQ_FD_VD_FK );
      end;
    end;

    { PESQUISA PRINCIPAL }
    with Consulta do
    begin
      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.* FROM VW_PSQ_FIN_PAG_ADM AS PK');

      if REC_SHE_DEF.FInitialize then { Padrão }
      SQL.Add('WHERE PK.DOCUMENTO_DATA_VENCIMENTO BETWEEN ''' + FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA_SEMANA_PK) + ''' AND ''' + FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA_SEMANA_FK) + '''');

      { Período }
      if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add(BBPSQ_PER_MENU.Description + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date) +  ''' AND ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date) + '''');
      end;

      SQL.Add('),'); { RECURSIVE FIM }

      { CTE INI }
      SQL.Add('CTE_PSQ');
      SQL.Add('AS    (');

      if REC_SHE_DEF.FList.Count = 0 then
      SQL.Add('SELECT PK.* FROM PK') else
      begin
        { Âncora Principal }
        { DOCUMENTO }
        SQL.Add('SELECT PK.* FROM PK');
        SQL.Add('WHERE  PK.DOCUMENTO CONTAINING ''' + REC_SHE_DEF.FList.Strings[0] + '''');

        for i := 0 to REC_SHE_DEF.FList.Count - 1 do
        begin
          { EMPRESA }
          SQL.Add('UNION  ALL');
          SQL.Add('SELECT PK.* FROM PK');
          SQL.Add('WHERE  PK.EP_NO LIKE ''' + REC_SHE_DEF.FList.Strings[i] + '%''');

          { FORNECEDOR }
          SQL.Add('UNION  ALL');
          SQL.Add('SELECT PK.* FROM PK');
          SQL.Add('WHERE  PK.CF_NO CONTAINING ''' + REC_SHE_DEF.FList.Strings[i] + '''');

          { DESCRIÇÃO }
          SQL.Add('UNION  ALL');
          SQL.Add('SELECT PK.* FROM PK');
          SQL.Add('WHERE  PK.DESCRICAO CONTAINING ''' + REC_SHE_DEF.FList.Strings[i] + '''');

          { PLANO DE CONTA }
          SQL.Add('UNION  ALL');
          SQL.Add('SELECT PK.* FROM PK');
          SQL.Add('WHERE  PK.PLANO_CONTA_NO CONTAINING ''' + REC_SHE_DEF.FList.Strings[i] + '''');

          { CENTRO DE CUSTO }
          SQL.Add('UNION  ALL');
          SQL.Add('SELECT PK.* FROM PK');
          SQL.Add('WHERE  PK.CENTRO_CUSTO_NO LIKE ''' + REC_SHE_DEF.FList.Strings[i] + '%''');

          { TIPO DE DOCUMENTO }
          SQL.Add('UNION  ALL');
          SQL.Add('SELECT PK.* FROM PK');
          SQL.Add('WHERE  PK.TIPO_DOC_NO LIKE ''' + REC_SHE_DEF.FList.Strings[i] + '%''');

          { MEIO DE PAGAMENTO }
          SQL.Add('UNION  ALL');
          SQL.Add('SELECT PK.* FROM PK');
          SQL.Add('WHERE  PK.TIPO_MPG_NO LIKE ''' + REC_SHE_DEF.FList.Strings[i] + '%''');

          { USUÁRIO }
          SQL.Add('UNION  ALL');
          SQL.Add('SELECT PK.* FROM PK');
          SQL.Add('WHERE  PK.CREATED_NO CONTAINING ''' + REC_SHE_DEF.FList.Strings[i] + '''');
        end;
      end;
      
      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT PK.* FROM CTE_PSQ AS PK');

      { Sub Query }
      if REC_SHE_DEF.FB_PSQ_SBQ then
      begin
      end;

      SQL.Add('ORDER BY PK.DOCUMENTO_DATA_VENCIMENTO DESC ');
      Prepare;
      Open;
    end;
  finally
    Screen.Cursor := crDefault;
    ALockWindowUpdate := False; { SQL Injection Disabled }

    { DOCK MANAGER }
    { Rodapé Esquerdo }
    //FDockControlPrincipal1RodapeLE := VCDSPrincipal1RodapeLE.Tag; { EST_EPE }
    //VCDSPrincipal1RodapeLE.Tag     := IFThen(VCDSPrincipal1RodapeLE.Tag < 400,400,VCDSPrincipal1RodapeLE.Tag);
    //
    //if FDockControlPrincipal1RodapeLE <> VCDSPrincipal1RodapeLE.Tag then
    //begin
    //  _SetDockControl(VCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,True ,True);
    //  _SetDockControl(TCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);
    //end;

    { DOCK MANAGER }
    if (DPPrincipal1RodapeLEB.Height <> 75) and (ConsultaINFADCAD.AsString <> EmptyStr) then
     _SetDockControl(DPPrincipal1RodapeLEB,75,lVertical,True,True) else

     if ConsultaINFADCAD.AsString <> EmptyStr then

    _SetDockControl(DPPrincipal1RodapeLEB,30,lVertical,True,True);

    { CONSULTA }
    DBGConsulta.Filter.Clear; { Filters }
    //DBGConsultaDEPK.Field.FocusControl; { Focused }

    if TCDSPrincipal.Tag = 0 then
    _SetDockControl(TCDSPrincipal1Rodape,DSPrincipal1.Width - VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);

    if Consulta.RecNo > 0 then
    begin
      { DBGConsulta }
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end else
    begin
      { Pesquisa }
      DPPrincipal1Consulta1.Caption := 'Registro(s) não Encontrado(s)';
      BEPSQ_CAD.SetFocus(False);
    end;
  end;
end;

procedure TFrmSHE_DEF_PED.ACTPesquisaOKExecute(Sender: TObject);
begin
  if ACTPesquisa.Enabled then
  begin
    if Sender.ClassType = TdxBarLargeButton then
    begin
      BLBPSQ_CAD_MENU.Description := TdxBarLargeButton(Sender).Description;
      BLBPSQ_CAD_MENU.Caption     := TdxBarLargeButton(Sender).Caption;
      BLBPSQ_CAD_MENU.Hint        := TdxBarLargeButton(Sender).Hint;
      BLBPSQ_CAD_MENU.Tag         := TdxBarLargeButton(Sender).Tag;

      BEPSQ_CAD.SetFocus(False);
    end;

    if Sender.ClassType = TdxBarButton then
    begin
      BBPSQ_PER_MENU.Description := TdxBarButton(Sender).Description;
      BBPSQ_PER_MENU.Caption     := TdxBarButton(Sender).Caption;
      BBPSQ_PER_MENU.Hint        := TdxBarButton(Sender).Hint;
      BBPSQ_PER_MENU.Tag         := TdxBarButton(Sender).Tag;
    end;

    if ((BEPSQ_CAD.Text = EmptyStr) and
       ((BDPSQ_PER_INI.Date <= 0  ) or (BDPSQ_PER_FIM.Date <= 0))) then
    Abort;

    if BDPSQ_PER_FIM.Date > 0 then
    if BDPSQ_PER_INI.Date > BDPSQ_PER_FIM.Date then
       oException(Nil,'DATA INICIAL não pode ser maior que DATA FINAL !');

    ACTPesquisa.Execute;
  end;
end;

procedure TFrmSHE_DEF_PED.ACTPesquisaFocusExecute(Sender: TObject);
begin
  if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) then
  BEPSQ_CAD.SetFocus(False);
end;

procedure TFrmSHE_DEF_PED.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    BEPSQ_CAD.Text := Trim(BEPSQ_CAD.Text);
    with REC_SHE_DEF do
    begin
      if oBSONumero(BEPSQ_CAD.Text) then
      begin
        PSQ_WHERE := ' = ';
        PSQ_LKINI := '''' ;
        PSQ_LKFIM := '''' ;
      end else
      begin
        if (Pos('.',BEPSQ_CAD.Text) = 0) and
           (BEPSQ_CAD.Text <> 'AG'     ) and
           (BEPSQ_CAD.Text <> 'BLQ'    ) and
           (BEPSQ_CAD.Text <> 'FAT'    ) and
           (BEPSQ_CAD.Text <> 'FIM'    ) and
           (BEPSQ_CAD.Text <> 'FEC'    ) then
        begin
          if (BEPSQ_CAD.Text <> EmptyStr) and (Length(BEPSQ_CAD.Text) < 3) then
              oException(Nil,'Mínimo de 3 caracteres para prosseguir com a pesquisa !');

          if (BEPSQ_CAD.Text <> EmptyStr) and (Length(BEPSQ_CAD.Text) < 5) then
              oAviso(Application.Handle,'Pesquisas com pouco conteúdo infomado ...' + #13 +
                                        'tem impacto direto na velocidade das informações obtidas.');
        end;
        
        PSQ_WHERE := ' LIKE ';
        PSQ_LKINI := '''' ;
        PSQ_LKFIM := '%''';
      end;
    end;

    ACTPesquisaOK.Execute;
  end else

  if key = VK_DOWN then
  begin
    if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) and (DBGConsulta.Enabled) then
    begin
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end;
  end else

  if key = vk_escape then
  ACTSaida.Execute;
end;

procedure TFrmSHE_DEF_PED.BEPSQ_CADCurChange(Sender: TObject);
begin
  BEPSQ_CAD.Text := BEPSQ_CAD.CurText;
end;

procedure TFrmSHE_DEF_PED.BDPSQ_PER_INICurChange(Sender: TObject);
begin
  BDPSQ_PER_INI.Date := BDPSQ_PER_INI.CurDate;
end;

procedure TFrmSHE_DEF_PED.BDPSQ_PER_FIMCurChange(Sender: TObject);
begin
  BDPSQ_PER_FIM.Date := BDPSQ_PER_FIM.CurDate;
end;

procedure TFrmSHE_DEF_PED.ACTEdicaoExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PED.ACTMPAppendExecute(Sender: TObject);
begin
  TFrmFIN_PAG_EDI._ExecForm(

  Self, { Owner    }
  FrmFIN_PAG_EDI, { Form     }
  False, { Pesquisa }
  fsNormal, { Tipo     }

  0,  { Código Principal }
  '', { Descrição Principal }

  0,  { Evento Principal }
  0,  { Tipo   Evento - 0: Copiado    1: Vazio  2: Romaneado }
  0,  { Código Evento - 0: Triangular 1: Normal 2: Complementar 3: Ajustes 4:Devolução }

  '', { Tabela }
  ''  { Get }
  );
end;

procedure TFrmSHE_DEF_PED.ACTMPEditExecute(Sender: TObject);
begin
  TFrmFIN_PAG_EDI._ExecForm(

  Self, { Owner    }
  FrmFIN_PAG_EDI, { Form     }
  False, { Pesquisa }
  fsNormal, { Tipo     }

  ConsultaPAG_ID.AsInteger,  { Código Principal }
  '', { Descrição Principal }

  0,  { Evento Principal }
  0,  { Tipo   Evento - 0: Copiado    1: Vazio  2: Romaneado }
  0,  { Código Evento - 0: Triangular 1: Normal 2: Complementar 3: Ajustes 4:Devolução }

  '', { Tabela }
  ''  { Get }
  );
end;

procedure TFrmSHE_DEF_PED.ACTMPDeleteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PED.ACTMPPostExecute(Sender: TObject);
begin
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;
end;

procedure TFrmSHE_DEF_PED.ACTMPValidateExecute(Sender: TObject);
begin
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;
end;

procedure TFrmSHE_DEF_PED.ACTMPCancelExecute(Sender: TObject);
begin
  REC_SHE_DEF.Editing := False;
  Close;
end;

procedure TFrmSHE_DEF_PED.ACTMEAppendExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oAppend(Consulta,REC_SHE_DEF.GAppend);
end;

procedure TFrmSHE_DEF_PED.ACTMEEditExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oEdit(Consulta,REC_SHE_DEF.GEdit);
end;

procedure TFrmSHE_DEF_PED.ACTMEDeleteExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oDelete(Consulta,REC_SHE_DEF.GDelete);
end;

procedure TFrmSHE_DEF_PED.ACTMEPostExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oPost(Consulta,REC_SHE_DEF.GPost);
end;

procedure TFrmSHE_DEF_PED.ACTMECancelExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oCancel(Consulta,REC_SHE_DEF.GCancel);
end;

procedure TFrmSHE_DEF_PED.ACTCheckConstraintsExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PED.ACTCheckErrorsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PED.ACTRegisterEventExecute(Sender: TObject);
begin
  { UNREGISTER EVENTS }
  if EEvent.Registered then

  try
    EEvent.UnregisterEvents;
    EEvent.Events.Clear;

    REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin  }
    REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Padrão }
  except
    on E: Exception do
    begin
      oErro(Handle,'Falha ao tentar limpar evento Padrão !' + #13 +
                   'Erro: ' + E.Message + '.');
    end;
  end;

  { REGISTER EVENTS }
  REC_SHE_DEF.FB_Event := TRIM(REC_SHE_DEF.FB_Event);
  if REC_SHE_DEF.FB_Event <> EmptyStr then

  try
    { ADMIN }
    REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
    EEvent.Events.Add(REC_SHE_DEF.FB_EVE_ADM);

    { PADRÃO }
    if not RECUsuarios.IS_EVE_ADM then
    begin
      REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
      EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
    end;

    { EDIÇÃO }
    if REC_SHE_DEF.FB_EVE_EDT <> EmptyStr then
    begin
      if ACTRegisterEvent.Tag > 0 then
      REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_EVE_EDT + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(ACTRegisterEvent.Tag,3) else
      REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_EVE_EDT + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);

      EEvent.Events.Add(REC_SHE_DEF.FB_EVE_EDT);
      ACTRegisterEvent.Tag := 0;
    end;

    EEvent.RegisterEvents;
  except
    on E: Exception do
    begin
      oErro(Application.Handle,'Falha ao tentar registrar evento !' + #13 +
                               'Erro: '   + E.Message + '.');
    end;
  end;
end;

procedure TFrmSHE_DEF_PED.ACTExecuteEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then { SQL Injection Enabled }
    oRefresh(Consulta);
  end else

  try
    oOTransact(TEvent);

    { ADMIN }
    SPEvent.StoredProcName := 'SP_SHE_EVE';
    SPEvent.Prepare;

    for i := 0 to SPEvent.ParamCount - 1 do
    SPEvent.Params[i].Value := Null;

    SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
    SPEvent.Params[1].Value := REC_SHE_DEF.FB_EVE_PAD;
    SPEvent.Params[2].Value := REC_SHE_DEF.FB_EVE_EDT;

    SPEvent.ExecProc;
    SPEvent.UnPrepare;
    
    oCTransact(TEvent);
  except
    on E: Exception do
    begin
      oCTransact(TEvent,ltRollback);
      oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                E.Message              + '.');
    end;
  end;
end;

procedure TFrmSHE_DEF_PED.ACTExpressEventExecute(Sender: TObject);
begin
  ACTRegisterEvent.Execute;
  ACTExecuteEvent.Execute;
end;

procedure TFrmSHE_DEF_PED.EEventEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if ((RECUSuarios.IS_EVE_ADM    ) and (RightStr(EventName,3) = 'ADM')) or
     ((not RECUSuarios.IS_EVE_ADM) and (RightStr(EventName,3) = oStrZero(RECUsuarios.ID,3))) then

  if REC_SHE_DEF.FB_EventAlert then
  begin
    //ShowMessage(EventName);
    oRefresh(Consulta);
  end;
end;

procedure TFrmSHE_DEF_PED.ConsultaCalcFields(DataSet: TDataSet);
begin
  ConsultaC_ID.Value := Consulta.RecNo;
end;

procedure TFrmSHE_DEF_PED.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGConsultaC_ID.Index] <> Null then
    if ANode.Values[DBGConsultaC_ID.Index] mod 2 <> 0 then
       AColor := $00F8F8F8 else
       AColor := clHighLightText;

   if AColumn = DBGConsultaSTATUS_NO then
   if ANode.Values[DBGConsultaSTATUS_NO.Index] = 'PAGO' then
   begin
     AColor      := $009FFF9F;
     AFont.Color := clWindowText;
   end else

   if ANode.Values[DBGConsultaSTATUS_NO.Index] = 'VENCIDO' then
   begin
     AColor      := $0080FFFF;
     AFont.Color := clWindowText;
   end else

   if ANode.Values[DBGConsultaSTATUS_NO.Index] = 'CANCELADO' then
   begin
     AColor      := $009FFF9F;
     AFont.Color := clHighLightText;
   end;
  end;

  if ANode.Selected then
  begin
    AColor      := $00750000;//$00400000;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmSHE_DEF_PED.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  DBGConsultaDOCUMENTO_DATA_EMISSAO.Visible := False;
end;

procedure TFrmSHE_DEF_PED.ConsultaAfterOpen(DataSet: TDataSet);
begin
  { INICIALIZAÇÃO }
  REC_SHE_DEF.FInitialize := False; { Finaliza }

  if FKConsulta.State = dsInactive then
  FKConsulta.Open;
end;

procedure TFrmSHE_DEF_PED.ConsultaAfterScroll(DataSet: TDataSet);
begin
  if ConsultaDOCUMENTO_DATA_EMISSAO.AsDateTime <> ConsultaDOCUMENTO_DATA_VENCIMENTO.AsDateTime then
  DBGConsultaDOCUMENTO_DATA_EMISSAO.Visible := True;
end;

procedure TFrmSHE_DEF_PED.DTSConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  DBGConsulta.ApplyBestFit(DBGConsultaDESCRICAO);
  DBGConsulta.ApplyBestFit(DBGConsultaDOCUMENTO);
  DBGConsulta.ApplyBestFit(DBGConsultaEP_NO);
  DBGConsulta.ApplyBestFit(DBGConsultaCF_NO);

  DBGConsulta.ApplyBestFit(DBGConsultaCONTA_NO);
  DBGConsulta.ApplyBestFit(DBGConsultaPLANO_CONTA_NO);
  DBGConsulta.ApplyBestFit(DBGConsultaCENTRO_CUSTO_NO);
  DBGConsulta.ApplyBestFit(DBGConsultaBANCO_NO);
  DBGConsulta.ApplyBestFit(DBGConsultaCREATED_NO);
  DBGConsulta.ApplyBestFit(DBGConsultaSTATUS_NO);

  DBGFKConsulta.Bands[0].Caption := 'Histórico ' + ConsultaCF_NO.AsString;
end;

procedure TFrmSHE_DEF_PED.DTSFKConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaDOCUMENTO);
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaCREATED_NO);
  DBGFKConsulta.ApplyBestFit(DBGFKConsultaSTATUS_NO);
end;

procedure TFrmSHE_DEF_PED.DBGFKConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if AColumn = DBGFKConsultaSTATUS_NO then
    if ANode.Values[DBGFKConsultaSTATUS_NO.Index] = 'PAGO' then
    begin
      AColor      := $009FFF9F;
      AFont.Color := clWindowText;
    end else

    if ANode.Values[DBGFKConsultaSTATUS_NO.Index] = 'VENCIDO' then
    begin
      AColor      := $0080FFFF;
      AFont.Color := clWindowText;
    end else

    if ANode.Values[DBGFKConsultaSTATUS_NO.Index] = 'CANCELADO' then
    begin
      AColor      := $009FFF9F;
      AFont.Color := clHighLightText;
    end;
  end;

  if ANode.Selected then
  begin
    AColor      := $00FDF9F4;//$00400000;
    AFont.Color := clWindowText;
  end;

  if ASelected then
  begin
    AColor      := $00750000; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

end.
