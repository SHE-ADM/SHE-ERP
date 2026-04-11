unit pSHE_DEF_PSQ;

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
  TFrmSHE_DEF_PSQ = class(TForm)
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
    ILMenu: TImageList;
    ILEdicao: TImageList;
    StyleController: TdxEditStyleController;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    DMPrincipal: TdxDockingManager;
    DSPrincipal: TdxDockSite;
    DPMenu: TdxDockPanel;
    LDSMenu: TdxLayoutDockSite;
    SBPrincipal: TdxSideBar;
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
    BBPSQ_PER2: TdxBarButton;
    BBPSQ_PER3: TdxBarButton;
    BBPSQ_PER4: TdxBarButton;
    BBPSQ_PER: TdxBarButton;
    BLBPSQ_CAD2: TdxBarLargeButton;
    BLBPSQ_CAD3: TdxBarLargeButton;
    BLBPSQ_CAD4: TdxBarLargeButton;
    BLBPSQ_CAD5: TdxBarLargeButton;
    BBPSQ_PER5: TdxBarButton;
    DBGConsulta: TdxDBGrid;
    ConsultaC_ID: TLargeintField;
    DBGConsultaC_ID: TdxDBGridColumn;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTSaida: TAction;

    ACTConsulta: TAction;
    ACTEdicao: TAction;
    ACTPesquisa: TAction;
    ACTPesquisaOK: TAction;
    ACTPesquisaFocusControl: TAction;

    ACTMPAppend: TAction;
    ACTMPEdit: TAction;
    ACTMPDelete: TAction;
    ACTMPPost: TAction;
    ACTMPValidate: TAction;
    ACTMPCancel: TAction;

    ACTMEAppend: TAction;
    ACTMEEdit: TAction;
    ACTMEDelete: TAction;
    ACTMEPost: TAction;
    ACTMECancel: TAction;

    ACTCheckConstraints: TAction;
    ACTCheckErrors: TAction;

    ACTRelatorios: TAction;
    ACTVisualiza: TAction;
    ACTDashboards: TAction;
    ACTProgressBar: TAction;

    ACTEveRegister: TAction;
    ACTEveExecute: TAction;
    ACTEveExpress: TAction;
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure DPPrincipal1RodapeLEBUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure VCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure BEPSQ_CADCurChange(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BDPSQ_PER_INICurChange(Sender: TObject);
    procedure BDPSQ_PER_FIMCurChange(Sender: TObject);
    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);
    procedure DTSConsultaStateChange(Sender: TObject);
    procedure DBGConsultaBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);

    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTPesquisaOKExecute(Sender: TObject);
    procedure ACTPesquisaFocusControlExecute(Sender: TObject);

    procedure ACTMPAppendExecute(Sender: TObject);
    procedure ACTMPEditExecute(Sender: TObject);
    procedure ACTMPDeleteExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
    procedure ACTMPValidateExecute(Sender: TObject);
    procedure ACTMPCancelExecute(Sender: TObject);

    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure ACTMEDeleteExecute(Sender: TObject);
    procedure ACTMEPostExecute(Sender: TObject);
    procedure ACTMECancelExecute(Sender: TObject);

    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure ACTCheckErrorsExecute(Sender: TObject);

    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTVisualizaExecute(Sender: TObject);
    procedure ACTDashboardsExecute(Sender: TObject);
    procedure ACTProgressBarExecute(Sender: TObject);

    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTEveExpressExecute(Sender: TObject);

    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure ConsultaAfterOpen(DataSet: TDataSet);

    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure ConsultaAfterClose(DataSet: TDataSet);

    procedure ConsultaBeforeScroll(DataSet: TDataSet);
    procedure ConsultaAfterScroll(DataSet: TDataSet);

    procedure ConsultaBeforeInsert(DataSet: TDataSet);
    procedure ConsultaAfterInsert(DataSet: TDataSet);
    procedure ConsultaNewRecord(DataSet: TDataSet);

    procedure ConsultaBeforeEdit(DataSet: TDataSet);
    procedure ConsultaAfterEdit(DataSet: TDataSet);

    procedure ConsultaBeforeDelete(DataSet: TDataSet);
    procedure ConsultaAfterDelete(DataSet: TDataSet);

    procedure ConsultaBeforePost(DataSet: TDataSet);
    procedure ConsultaAfterPost(DataSet: TDataSet);

    procedure ConsultaBeforeCancel(DataSet: TDataSet);
    procedure ConsultaAfterCancel(DataSet: TDataSet);

    procedure ConsultaCalcFields(DataSet: TDataSet);

    procedure ConsultaUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ConsultaEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ConsultaDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ConsultaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);

  private
    { Private declarations }
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);

  public
    { Public declarations }
    REC_SHE_PSQ: TREC_SHE_PSQ;

    FDockControl: TdxCustomDockControl;
    FDockControlPrincipal1RodapeLE: Integer;

    procedure _SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);

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
  FrmSHE_DEF_PSQ: TFrmSHE_DEF_PSQ;


  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmSHE_DEF_PSQ._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmSHE_DEF_PSQ._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmSHE_DEF_PSQ._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmSHE_DEF_PSQ._WM_CREATE(var Msg: TMessage);
begin
  { INICIALIZA }
  Screen.Cursor := crAppStart;  { Cursor }
  //SetCursorPos(500,Self.Top); { Posição Inicial }
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
  { INICIALIZAÇÃO DOS COMPONENTES }
end;

procedure TFrmSHE_DEF_PSQ._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM }
  REC_SHE_PSQ.FMainArea := (REC_SHE_PSQ.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicativo }
  REC_SHE_PSQ.FWorkArea := (REC_SHE_PSQ.FWorkArea) and (Screen.Width <= 1280); { Desktop }

  { CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;

  { INICIALIZAÇÃO PADRÃO }
  DPMENU.Visible := False;
  DPMENU.Width   := 0;

  DPSUBMENU1.Visible := False;
  DPSUBMENU1.Width   := 0;

  DPSUBMENU2.Visible := False;
  DPSUBMENU2.Width   := 0;


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
  //_SetDockControl(DPPrincipal1ConsultaLE1 ,DPPrincipal1ConsultaLE1.Tag ,lHorizontal);
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
  DPPrincipal1Consulta2.Visible := (DPPrincipal1Consulta2.Tag > 0); { Principal }
  DPPrincipal1Rodape1.Visible   := (DPPrincipal1Rodape1.Tag   > 0); { Rodapé }
  DPPrincipal1Rodape2.Visible   := (DPPrincipal1Rodape2.Tag   > 0); { Rodapé }
  DPPrincipal1Rodape3.Visible   := (DPPrincipal1Rodape3.Tag   > 0); { Rodapé }

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

    TCDSPrincipal1Rodape.Visible  := False;
    TCDSPrincipal1Rodape.Tag      := 0;
    TCDSPrincipal1Rodape.Width    := 0;
    TCDSPrincipal1Rodape.Height   := 0;

    TCDSPrincipal1Rodape.Repaint;
  end else
  begin
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

    TCDSPrincipal1Rodape.Visible  := True;
    TCDSPrincipal1Rodape.Tag      := 1;
    TCDSPrincipal1Rodape.Width    := DSPrincipal1.Width  - HCDSPrincipal1Consulta.Tag;
    TCDSPrincipal1Rodape.Height   := DSPrincipal1.Height - HCDSPrincipal1Consulta.Height - DPPrincipal1INFADCAD.Height;

    TCDSPrincipal1Rodape.Repaint;
  end;
end;

procedure TFrmSHE_DEF_PSQ._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  ACTEveRegister.Execute; { Registro }
end;

procedure TFrmSHE_DEF_PSQ._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmSHE_DEF_PSQ._WM_SHOW(var Msg: TMessage);
begin
  { BEFORE SHOWNING }
  Screen.Cursor := crHourGlass; { Cursor }
  REC_SHE_PSQ.FResize := 0;     { Form Resize }
  ALockWindowUpdate   := True;  { SQL Injection Enabled }

//  ACTConsulta.Execute; { Tabelas }
//  ACTEdicao.Execute;   { Edições }
end;

procedure TFrmSHE_DEF_PSQ._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { INICIALIZAÇÃO DOS COMPONENTES }
  try
    Screen.Cursor := crAppStart;
    PNLPrincipal1.Enabled := False;

    { AFTER SHOWNING }
    //ACTPesquisa.Execute; { Pesquisa Principal }

  finally
    Screen.Cursor := crDefault;
    PNLPrincipal1.Enabled := True;
    ALockWindowUpdate := False;  { SQL Injection Disabled }

    { INICIALIZAÇÃO }
    REC_SHE_PSQ.FInitialize := False; { Finaliza }
  end;

  if (Showing) then
  if (DBGConsulta.Enabled) and (DBGConsulta.Visible) then
  if (Consulta.RecNo > 0 ) then
  oSetFocus(DBGConsulta);
end;

procedure TFrmSHE_DEF_PSQ._WM_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  REC_SHE_PSQ.FResize := REC_SHE_PSQ.FResize + 1;

  { FORM SCREEN }
  if REC_SHE_PSQ.FMainArea then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_PSQ.FPosition := poDefault;
    REC_SHE_PSQ.FWorkArea := False;
  end else

  if REC_SHE_PSQ.FWorkArea then
  begin
    REC_SHE_PSQ.FPosition := poDefault;
    REC_SHE_PSQ.FMainArea := False;
  end;

  { VER DIM TELA }
  REC_SHE_PSQ.FHeight := Self.Height;
  REC_SHE_PSQ.FWidth  := Self.Width ;
end;

procedure TFrmSHE_DEF_PSQ._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if REC_SHE_PSQ.FResize >= 2 then
     try
       TCDSPrincipal.Height := DPPrincipal1.Height - 1;
       TCDSPrincipal.Width  := DPPrincipal1.Width  - 1;
       TCDSPrincipal.Repaint;

       { DOCK CONSULTA MANAGER }
       if HCDSPrincipal1Consulta.Tag = 0 then
       begin
         HCDSPrincipal1Consulta.Tag    := DSPrincipal1.Height - DPPrincipal1Titulo.Height - DPPrincipal1INFADCPL.Height;
         HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

         TCDSPrincipal1Rodape.Visible  := False;
         TCDSPrincipal1Rodape.Tag      := 0;
         TCDSPrincipal1Rodape.Width    := 0;
         TCDSPrincipal1Rodape.Height   := 0;

         TCDSPrincipal1Rodape.Repaint;
       end else
       begin
         HCDSPrincipal1Consulta.Tag    := IFThen(Screen.Height > 864,350,250) + DPPrincipal1Titulo.Height;
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
       Screen.Cursor := crDefault;
       REC_SHE_PSQ.FResize := 0; { zera controle }

       { Focused }
       if (BEPSQ_CAD.Visible <> ivNever) and (_FormPesquisa) then
           BEPSQ_CAD.SetFocus(False);

       { Pesquisa }
       //ACTPesquisa.Execute;
     end;
end;

Constructor TFrmSHE_DEF_PSQ.Create(AOwner: TComponent;
                         const AIDPK : LongInt = 0 ;
                               ADEPK : String  = '';
                               AIDEV : LongInt = 0 ;
                               ACDEV : Word    = 0 ;
                               ATPEV : Word    = 0 ;

                               AFB_SQL_TAB: String = '';
                               AFB_SQL_GET: String = '');
begin
  oIREC_SHE_PSQ(REC_SHE_PSQ);

  REC_SHE_PSQ.IDPK := INTTOSTR(AIDPK);
  REC_SHE_PSQ.DEPK := TRIM(ADEPK);

  REC_SHE_PSQ.IDEV := INTTOSTR(AIDEV);
  REC_SHE_PSQ.CDEV := INTTOSTR(ACDEV);
  REC_SHE_PSQ.TPEV := INTTOSTR(ATPEV);

  REC_SHE_PSQ.FB_SQL_TAB := TRIM(AFB_SQL_TAB);
  REC_SHE_PSQ.FB_SQL_GET := TRIM(AFB_SQL_GET);

  inherited Create(AOwner);
end;

Class procedure TFrmSHE_DEF_PSQ._ExecForm(AOwner : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
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

Destructor TFrmSHE_DEF_PSQ.Destroy;
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
            oFREC_SHE_PSQ(REC_SHE_PSQ);
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

procedure TFrmSHE_DEF_PSQ.FormCreate(Sender: TObject);
begin
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

procedure TFrmSHE_DEF_PSQ.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmSHE_DEF_PSQ.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmSHE_DEF_PSQ.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
end;

procedure TFrmSHE_DEF_PSQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmSHE_DEF_PSQ.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSHE_DEF_PSQ.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  REC_SHE_PSQ.FTop    := AMainFormScreen.Top;
  REC_SHE_PSQ.FBottom := AMainFormScreen.Bottom;
  REC_SHE_PSQ.FLeft   := AMainFormScreen.Left;
  REC_SHE_PSQ.FRight  := AMainFormScreen.Right;
  REC_SHE_PSQ.FHeight := AMainFormScreen.Bottom;

  if REC_SHE_PSQ.FPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    Self.HelpContext := 95; { % }

    REC_SHE_PSQ.FMainHeight := IFThen(Self.HelpContext     > 0,Trunc((REC_SHE_PSQ.FHeight - REC_SHE_PSQ.FTop ) * (Self.HelpContext     / 100)),0);
    REC_SHE_PSQ.FMainWidth  := IFThen(Self.AlphaBlendValue > 0,Trunc((REC_SHE_PSQ.FRight  - REC_SHE_PSQ.FLeft) * (Self.AlphaBlendValue / 100)),0);

    if (REC_SHE_PSQ.FMainTop > 0) and (REC_SHE_PSQ.FMainLeft > 0) then
    begin
      Self.Top  := REC_SHE_PSQ.FTop + 5;
      Self.Left := REC_SHE_PSQ.FLeft;

      if Self.Top + Self.Height > REC_SHE_PSQ.FBottom then
      begin
        Self.Top := Self.Top - ((Self.Top + Self.Height) - REC_SHE_PSQ.FBottom);
      end;

      if Self.Left + Self.Width > REC_SHE_PSQ.FRight then
      begin
        Self.Left := Self.Left - ((Self.Left + Self.Width) - REC_SHE_PSQ.FRight);
      end;

    end else
    begin
      if REC_SHE_PSQ.FMainHeight > 0 then Self.Height := REC_SHE_PSQ.FMainHeight;
      if REC_SHE_PSQ.FMainWidth  > 0 then Self.Width  := REC_SHE_PSQ.FMainWidth;

      if FormStyle = fsNormal then
      begin
        Self.Top  := ( REC_SHE_PSQ.FTop   + (REC_SHE_PSQ.FHeight - Self.Height)) div 2;
        Self.Left := ((REC_SHE_PSQ.FRight +  REC_SHE_PSQ.FLeft)  - Self.Width)   div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Self.Top  := ((REC_SHE_PSQ.FBottom - REC_SHE_PSQ.FTop ) - Self.Height) div 2;
        Self.Left := ((REC_SHE_PSQ.FRight  - REC_SHE_PSQ.FLeft) - Self.Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_PSQ.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := Screen.WorkAreaTop;
    Self.Left   := Screen.WorkAreaLeft;
    Self.Width  := Screen.WorkAreaWidth;
    Self.Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_PSQ.FMainArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := 0;
    Self.Left   := 0;
    Self.Width  := REC_SHE_PSQ.FRight  - REC_SHE_PSQ.FLeft - 5;
    Self.Height := REC_SHE_PSQ.FHeight - REC_SHE_PSQ.FTop  - 5;
  end else
  if REC_SHE_PSQ.FPosition = poDefault then
  begin
    Self.Top    := IFThen(FormStyle = fsNormal,REC_SHE_PSQ.FTop ,0);
    Self.Left   := IFThen(FormStyle = fsNormal,REC_SHE_PSQ.FLeft,0);
    Self.Width  := IFThen(REC_SHE_PSQ.FPosition = poDefault,REC_SHE_PSQ.FRight  - REC_SHE_PSQ.FLeft - 5,0);
    Self.Height := IFThen(REC_SHE_PSQ.FPosition = poDefault,REC_SHE_PSQ.FHeight - REC_SHE_PSQ.FTop  - 5,0);
  end;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_PSQ.FMainWidth)  + ' x ' + IntToStr(REC_SHE_PSQ.FMainHeight) + '. ' + Self.Caption;
end;

procedure TFrmSHE_DEF_PSQ.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmSHE_DEF_PSQ._SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
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

procedure TFrmSHE_DEF_PSQ.VCDSPrincipal1RodapeLEUpdateDockZones(
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

procedure TFrmSHE_DEF_PSQ.TCDSPrincipal1RodapeLEUpdateDockZones(
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

procedure TFrmSHE_DEF_PSQ.DPPrincipal1RodapeLEBUpdateDockZones(
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

procedure TFrmSHE_DEF_PSQ.TCDSPrincipal1RodapeUpdateDockZones(
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

procedure TFrmSHE_DEF_PSQ.BEPSQ_CADCurChange(Sender: TObject);
begin
  BEPSQ_CAD.Text := BEPSQ_CAD.CurText;
end;

procedure TFrmSHE_DEF_PSQ.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    BEPSQ_CAD.Text := Trim(BEPSQ_CAD.Text);
    with REC_SHE_PSQ do
    begin
      if oBSONumero(BEPSQ_CAD.Text) then
      begin
        PSQ_WHERE := ' = ';
        PSQ_LKPK  := '''' ;
        PSQ_LKFK  := '''' ;
      end else
      begin
        PSQ_WHERE := ' LIKE ';
        PSQ_LKPK  := '''' ;
        PSQ_LKFK  := '%''';
      end;
    end;

    //ACTPesquisaOK.Execute;
  end else

  if key = VK_DOWN then
  begin
//    if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) and (DBGConsulta.Enabled) then
//    begin
//      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
//      TWinControl(DBGConsulta).SetFocus;
//    end;
  end else

  if key = vk_escape then
//  ACTSaida.Execute;
end;

procedure TFrmSHE_DEF_PSQ.BDPSQ_PER_INICurChange(Sender: TObject);
begin
  BDPSQ_PER_INI.Date := BDPSQ_PER_INI.CurDate;
end;

procedure TFrmSHE_DEF_PSQ.BDPSQ_PER_FIMCurChange(Sender: TObject);
begin
  BDPSQ_PER_FIM.Date := BDPSQ_PER_FIM.CurDate;
end;

procedure TFrmSHE_DEF_PSQ.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmSHE_DEF_PSQ.ACTSaidaExecute(Sender: TObject);
begin
  if Consulta.State in [dsInsert,dsEdit] then
  ACTMECancel.Execute else
  Close;
end;

procedure TFrmSHE_DEF_PSQ.ACTConsultaExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Principal }

  { TABELAS }
end;

procedure TFrmSHE_DEF_PSQ.ACTEdicaoExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  { EDIÇÕES }
  { PAGE CONTROL }
end;

procedure TFrmSHE_DEF_PSQ.ACTPesquisaExecute(Sender: TObject);
begin
  { INICIALIZA PARÂMETROS DA PESQUISA }
  with REC_SHE_PSQ do
  begin
    { PADRÃO }
    PSQ_CP_ID := '0';   { Identificador }
    PSQ_OK    := False; { Validação }

    { ÂNCORAS PRINCIPAIS }
    { Empresas }
    PSQ_EP_NO := EmptyStr; { Empresa }
    PSQ_CD_NO := EmptyStr; { Fabricante }

    { Situações }
    PSQ_DEST := EmptyStr; { Descrição }
    PSQ_STFI := EmptyStr; { Descrição Abreviada }

    { Produtos }
    PSQ_ARTIGO     := EmptyStr; { Artigo }
    PSQ_SKU        := EmptyStr; { SKU }
    PSQ_NCM        := EmptyStr; { NCM }
    PSQ_GRADE      := EmptyStr; { Grade }
    PSQ_DESCRICAO  := EmptyStr; { Nome / Descrição }
    PSQ_COMPOSICAO := EmptyStr; { Composição }

    { FIREBIRD PESQUISA PRIMÁRIA }
    { TEXTO }
    PSQ_TFD_PK := EmptyStr; { Campo  }
    PSQ_TVD_PK := EmptyStr; { Valor  }

    { DATAS }
    PSQ_DFD_PK := EmptyStr; { Campo  }
    PSQ_DVD_PK := 0;        { Valor  }

    { FIREBIRD PESQUISA PRIMÁRIA }
    { TEXTO }
    PSQ_TFD_FK := EmptyStr; { Campo  }
    PSQ_TVD_FK := EmptyStr; { Valor  }

    { DATAS }
    PSQ_DFD_FK := EmptyStr; { Campo  }
    PSQ_DVD_FK := 0;        { Valor  }

    { Lista Digitada }
    if FList = Nil then
    FList := TStringList.Create else
    FList.Clear;
  end;
end;

procedure TFrmSHE_DEF_PSQ.ACTPesquisaOKExecute(Sender: TObject);
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

procedure TFrmSHE_DEF_PSQ.ACTPesquisaFocusControlExecute(Sender: TObject);
begin
  if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) then
  BEPSQ_CAD.SetFocus(False);
end;

procedure TFrmSHE_DEF_PSQ.ACTMPAppendExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTMPEditExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTMPDeleteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTMPPostExecute(Sender: TObject);
begin
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;
end;

procedure TFrmSHE_DEF_PSQ.ACTMPValidateExecute(Sender: TObject);
begin
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;
end;

procedure TFrmSHE_DEF_PSQ.ACTMPCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmSHE_DEF_PSQ.ACTMEAppendExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTMEEditExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTMEDeleteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTMEPostExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTMECancelExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTCheckConstraintsExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmSHE_DEF_PSQ.ACTCheckErrorsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTRelatoriosExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTVisualizaExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTDashboardsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTProgressBarExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ACTEveRegisterExecute(Sender: TObject);
begin
  { UNREGISTER EVENTS }
  { REGISTER EVENTS }
end;

procedure TFrmSHE_DEF_PSQ.ACTEveExecuteExecute(Sender: TObject);
begin
  { EXECUTE EVENTS }
end;

procedure TFrmSHE_DEF_PSQ.ACTEveExpressExecute(Sender: TObject);
begin
  { EXECUTE EVENTS }
end;

procedure TFrmSHE_DEF_PSQ.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crHourGlass;
end;

procedure TFrmSHE_DEF_PSQ.ConsultaAfterOpen(DataSet: TDataSet);
begin
  { FINALIZA FORM SCREEN }
  Screen.Cursor := crDefault;

  REC_SHE_PSQ.FInitialize := False; { Finaliza Inicialização }
end;

procedure TFrmSHE_DEF_PSQ.ConsultaBeforeClose(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ConsultaAfterClose(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ConsultaBeforeScroll(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ConsultaAfterScroll(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ConsultaBeforeInsert(DataSet: TDataSet);
begin
  Consulta.Fields[0].Tag := Consulta.RecNo;
end;

procedure TFrmSHE_DEF_PSQ.ConsultaAfterInsert(DataSet: TDataSet);
begin
  if (Showing) then
  if (DBGConsulta.Enabled) and (DBGConsulta.Visible) then
  if (Consulta.RecNo > 0 ) then
  oSetFocus(DBGConsulta);
end;

procedure TFrmSHE_DEF_PSQ.ConsultaNewRecord(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ConsultaBeforeEdit(DataSet: TDataSet);
begin
  Consulta.Fields[0].Tag := Consulta.RecNo;
end;

procedure TFrmSHE_DEF_PSQ.ConsultaAfterEdit(DataSet: TDataSet);
begin
  if (Showing) then
  if (DBGConsulta.Enabled) and (DBGConsulta.Visible) then
  if (Consulta.RecNo > 0 ) then
  oSetFocus(DBGConsulta);
end;

procedure TFrmSHE_DEF_PSQ.ConsultaBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(Handle,'Confirma Exclusão ?') = mrNo then
  Abort;
end;

procedure TFrmSHE_DEF_PSQ.ConsultaAfterDelete(DataSet: TDataSet);
begin
  oRefresh(Consulta);
end;

procedure TFrmSHE_DEF_PSQ.ConsultaBeforePost(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ConsultaAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then { SQL Injection Enabled }
  begin
    oRefresh(Consulta);
  end;
end;

procedure TFrmSHE_DEF_PSQ.ConsultaBeforeCancel(DataSet: TDataSet);
begin
  if Consulta.Fields[0].Tag = 0 then
  begin
    Consulta.Close;
    Consulta.Open;

    ABORT;
  end;
end;

procedure TFrmSHE_DEF_PSQ.ConsultaAfterCancel(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.ConsultaUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmSHE_DEF_PSQ.ConsultaEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmSHE_DEF_PSQ.ConsultaDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmSHE_DEF_PSQ.ConsultaPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmSHE_DEF_PSQ.ConsultaCalcFields(DataSet: TDataSet);
begin
  Consulta.FieldByName('C_ID').Value := Consulta.RecNo;
end;

procedure TFrmSHE_DEF_PSQ.DTSConsultaDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then  { SQL Injection Enabled }
  Exit;
end;

procedure TFrmSHE_DEF_PSQ.DTSConsultaStateChange(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmSHE_DEF_PSQ.DBGConsultaBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  AValueText: String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);

    if (Sender as TdxDBGrid).GroupColumnCount = 0 then
    begin
      Font.Color := clMenu;
      AValueText := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, AValueText);
    end;
  end;
end;

procedure TFrmSHE_DEF_PSQ.DBGConsultaCustomDrawCell(Sender: TObject;
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

procedure TFrmSHE_DEF_PSQ.DBGConsultaDblClick(Sender: TObject);
begin
  if Consulta.RecNo > 0 then
  begin
    REC_SHE_PSQ.PSQ_OK := True;
    Close;
  end;
end;

procedure TFrmSHE_DEF_PSQ.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  if Consulta.RecNo > 0 then
  begin
    REC_SHE_PSQ.PSQ_OK := True;
    Close;
  end;
end;

end.
