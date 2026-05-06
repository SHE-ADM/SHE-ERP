unit pPadr2;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, dxBar, dxDockControl, dxDockPanel, ActnList, cxGraphics,
  cxControls, dxStatusBar, rxAnimate, rxGIFCtrl;

type
  TFrmPadr2 = class(TForm)
    DTSCadastro: TDataSource;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siPSQ: TSpeedItem;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    siREL: TSpeedItem;
    pnldbg: TPanel;
    imageOPC: TImageList;
    Cadastro: TIBQuery;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    ILDockIcons: TImageList;
    DMMain: TdxDockingManager;
    BMMain: TdxBarManager;
    DSConsulta: TdxDockSite;
    DPConsulta: TdxDockPanel;
    LDSConsulta: TdxLayoutDockSite;
    gbDET: TGroupBox;
    DBGConsulta: TdxDBGrid;
    SQLEvent: TIBSQL;
    pnlbot: TPanel;
    EEvent: TIBEvents;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTEveRegister: TAction;
    ACTEveExecute: TAction;
    ACTConsulta: TAction;
    ACTPesquisa: TAction;
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
    ACTEveExpress: TAction;
    ACTProgressBar: TAction;
    ACTDashboards: TAction;
    ACTCheckConstraints: TAction;
    ACTCheckErrors: TAction;
    ACTSaida: TAction;
    ACTEdicao: TAction;
    CadastroC_ID: TLargeintField;
    DBGConsultaC_ID: TdxDBGridColumn;
    PNLSBRodape: TPanel;
    PNLSyncEvent: TPanel;
    PNLSyncAnimate: TPanel;
    GFASyncEvent: TRxGIFAnimator;
    PNLSyncRecords: TPanel;
    SBSyncRecords: TdxStatusBar;
    PNLMainEvent: TPanel;
    SBRodape: TdxStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
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
    procedure ACTEveExpressExecute(Sender: TObject);
    procedure ACTProgressBarExecute(Sender: TObject);
    procedure ACTDashboardsExecute(Sender: TObject);
    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure ACTCheckErrorsExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTEdicaoExecute(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure CadastroAfterClose(DataSet: TDataSet);
    procedure CadastroBeforeInsert(DataSet: TDataSet);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroNewRecord(DataSet: TDataSet);
    procedure CadastroBeforeEdit(DataSet: TDataSet);
    procedure CadastroAfterEdit(DataSet: TDataSet);
    procedure CadastroBeforeDelete(DataSet: TDataSet);
    procedure CadastroAfterDelete(DataSet: TDataSet);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure CadastroBeforeCancel(DataSet: TDataSet);
    procedure CadastroAfterCancel(DataSet: TDataSet);
    procedure CadastroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure CadastroEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CadastroDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CadastroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure DTSCadastroStateChange(Sender: TObject);
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
    procedure ACTRelatoriosExecute(Sender: TObject);
  private
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
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
  FrmPadr2: TFrmPadr2;
  _Form: TStringList = Nil;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmPadr2._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmPadr2._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmPadr2._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmPadr2._WM_CREATE(var Msg: TMessage);
begin
  { INICIALIZA }
  Screen.Cursor := crAppStart;  { Cursor }
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
  { INICIALIZAÇÃO DOS COMPONENTES }
  oPrinterSelect(Application.Handle,'Relatórios');
end;

procedure TFrmPadr2._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicativo }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Desktop }

  { CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;
end;

procedure TFrmPadr2._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  ACTEveRegister.Execute; { Registro }
end;

procedure TFrmPadr2._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmPadr2._WM_SHOW(var Msg: TMessage);
begin
  { BEFORE SHOWNING }
  Screen.Cursor := crHourGlass; { Cursor }
  REC_SHE_DEF.FResize := 0;     { Form Resize }
  ALockWindowUpdate   := True;  { SQL Injection Enabled }

  ACTConsulta.Execute; { Tabelas }
  ACTEdicao.Execute;   { Edições }
end;

procedure TFrmPadr2._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { INICIALIZAÇÃO DOS COMPONENTES }
  try
    Screen.Cursor  := crAppStart;
    PNLDBG.Enabled := False;

    { AFTER SHOWNING }
    ACTPesquisa.Execute; { Pesquisa Principal }

  finally
    Screen.Cursor     := crDefault;
    PNLDBG.Enabled    := True;
    ALockWindowUpdate := False;  { SQL Injection Disabled }

    { INICIALIZAÇÃO }
    REC_SHE_DEF.FInitialize := False; { Finaliza }
  end;

  if (Showing) then
  if (PNLDBG.Enabled) and (PNLDBG.Visible) then
  if (GBDET.Enabled ) and (GBDET.Visible ) then
  if (DBGConsulta.Enabled) and (DBGConsulta.Visible) then
  if (Cadastro.RecNo > 0) then
  oSetFocus(DBGConsulta);
end;

procedure TFrmPadr2._WM_RESIZE(var Message: TMessage);
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

procedure TFrmPadr2._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if REC_SHE_DEF.FResize >= 2 then
     try
       oResize(DBGConsulta);
       Paint;
     finally
       Screen.Cursor := crDefault;
       REC_SHE_DEF.FResize := 0;
     end;
end;

Constructor TFrmPadr2.Create(AOwner: TComponent;
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

Class procedure TFrmPadr2._ExecForm(AOwner : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
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

Destructor TFrmPadr2.Destroy;
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

procedure TFrmPadr2.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  Self.DoubleBuffered := True;
  Randomize;

  { VALIDATE GRANT USER }
  REC_SHE_DEF.GAppend   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GEdit     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GDelete   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GPost     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GValidate := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GCancel   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GView     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GPrint    := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GControl  := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GAdmin    := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

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

procedure TFrmPadr2.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmPadr2.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmPadr2.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
  if Cadastro.State in [dsInsert,dsEdit] then
     Cadastro.Post;

  if ((Cadastro.RecNo > 0) and (REC_SHE_DEF.Editing)) or (REC_SHE_DEF.Editing) then

  Case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                         'Sair mesmo assim ?',
                          PChar(Caption)  ,
                          MB_ICONQUESTION + MB_YESNOCANCEL) of
       mrCancel,
       mrNo : Abort;
       mrYes: begin
                if ACTMPPost.Enabled then
                   ACTMPPost.Execute else

                if ACTMPValidate.Enabled then
                   ACTMPValidate.Execute;

                if ACTMEPost.Enabled then
                   ACTMEPost.Execute;
              end;
  end;
end;

procedure TFrmPadr2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmPadr2.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmPadr2.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  i: Word;
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

  { RODAPÉ }
  REC_SHE_DEF.FMainWidth := Self.Width;
  for i  := 0 to SBRodape.Panels.Count - 1 do
  if  i  <> 1 then
  REC_SHE_DEF.FMainWidth   := REC_SHE_DEF.FMainWidth - SBRodape.Panels[i].Width;
  SBRodape.Panels[1].Width := REC_SHE_DEF.FMainWidth - 50;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FMainWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FMainHeight) + '. ' + Self.Caption;
end;

procedure TFrmPadr2.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmPadr2.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr2.ACTSaidaExecute(Sender: TObject);
begin
  if Cadastro.State in [dsInsert,dsEdit] then
  ACTMECancel.Execute else
  Close;
end;

procedure TFrmPadr2.ACTConsultaExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Principal }

  { TABELAS }
end;

procedure TFrmPadr2.ACTPesquisaExecute(Sender: TObject);
begin
  { INICIALIZA PARÂMETROS DA PESQUISA }
  with REC_SHE_DEF do
  begin
    { FIREBIRD PESQUISA PRIMÁRIA }
    { PADRÃO }
    FB_PSQ_ID  := '0';      { Identificador }
    FB_PSQ_CPL := EmptyStr; { Complemento }
    FB_PSQ_SBQ := False;    { Sub Query }
    PSQ_OK  := False;    { Validação }

    { TEXTO }
    FB_PSQ_FD_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_PK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_PK := 0;        { Valor  }

    { FIREBIRD PESQUISA SECUNDÁRIA }
    { TEXTO }
    FB_PSQ_FD_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_FK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_FK := 0;        { Valor  }

    { ÂNCORAS PRINCIPAIS }
    { Empresas }
    EP_NO := EmptyStr; { Empresa }
    CF_NO := EmptyStr; { Fabricante }

    { Situações }
    DEST := EmptyStr; { Descrição }
    STFI := EmptyStr; { Descrição Abreviada }

    { Produtos }
    ARTIGO     := EmptyStr; { Artigo }
    SKU        := EmptyStr; { SKU }
    NCM        := EmptyStr; { NCM }
    GRADE      := EmptyStr; { Grade }
    DESCRICAO  := EmptyStr; { Nome / Descrição }
    COMPOSICAO := EmptyStr; { Composição }

    { Lista Digitada }
    if FList = Nil then
    FList := TStringList.Create else
    FList.Clear;
  end;
end;

procedure TFrmPadr2.ACTEdicaoExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  { EDIÇÕES }
  { PAGE CONTROL }
end;

procedure TFrmPadr2.ACTMPAppendExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPadr2.ACTMPEditExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPadr2.ACTMPDeleteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPadr2.ACTMPPostExecute(Sender: TObject);
begin
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;
end;

procedure TFrmPadr2.ACTMPValidateExecute(Sender: TObject);
begin
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;
end;

procedure TFrmPadr2.ACTMPCancelExecute(Sender: TObject);
begin
  REC_SHE_DEF.Editing := False;
  Close;
end;

procedure TFrmPadr2.ACTMEAppendExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oAppend(Cadastro,REC_SHE_DEF.GAppend);
end;

procedure TFrmPadr2.ACTMEEditExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oEdit(Cadastro,REC_SHE_DEF.GEdit);
end;

procedure TFrmPadr2.ACTMEDeleteExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oDelete(Cadastro,REC_SHE_DEF.GDelete);
end;

procedure TFrmPadr2.ACTMEPostExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oPost(Cadastro,REC_SHE_DEF.GPost);
end;

procedure TFrmPadr2.ACTMECancelExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection Enabled }
  Exit;

  oCancel(Cadastro,REC_SHE_DEF.GCancel);
end;

procedure TFrmPadr2.ACTCheckConstraintsExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmPadr2.ACTCheckErrorsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPadr2.ACTRelatoriosExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPadr2.ACTDashboardsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPadr2.ACTProgressBarExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPadr2.ACTEveRegisterExecute(Sender: TObject);
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
      if ACTEveRegister.Tag > 0 then
      REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_EVE_EDT + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(ACTEveRegister.Tag,3) else
      REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_EVE_EDT + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);

      EEvent.Events.Add(REC_SHE_DEF.FB_EVE_EDT);
      ACTEveRegister.Tag := 0;
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

procedure TFrmPadr2.ACTEveExecuteExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then { SQL Injection Enabled }
    oRefresh(Cadastro);
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

procedure TFrmPadr2.ACTEveExpressExecute(Sender: TObject);
begin
  ACTEveRegister.Execute;
  ACTEveExecute.Execute;
end;

procedure TFrmPadr2.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  if ((RECUSuarios.IS_EVE_ADM    ) and (RightStr(EventName,3) = 'ADM')) or
     ((not RECUSuarios.IS_EVE_ADM) and (RightStr(EventName,3) = oStrZero(RECUsuarios.ID,3))) then

  if REC_SHE_DEF.FB_EventAlert then
  begin
    //ShowMessage(EventName);
    oRefresh(Cadastro);
  end;
end;

procedure TFrmPadr2.CadastroBeforeOpen(DataSet: TDataSet);
begin
  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crHourGlass;
end;

procedure TFrmPadr2.CadastroAfterOpen(DataSet: TDataSet);
begin
  { FINALIZA FORM SCREEN }
  Screen.Cursor := crDefault;

  REC_SHE_DEF.FInitialize := False; { Finaliza Inicialização }
  SBRodape.Panels[0].Text := 'Consulta';
end;

procedure TFrmPadr2.CadastroBeforeClose(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmPadr2.CadastroAfterClose(DataSet: TDataSet);
begin
  SBRodape.Panels[1].Text := EmptyStr;
end;

procedure TFrmPadr2.CadastroBeforeInsert(DataSet: TDataSet);
begin
  Cadastro.Fields[0].Tag := Cadastro.RecNo;
end;

procedure TFrmPadr2.CadastroAfterInsert(DataSet: TDataSet);
begin
  if (Showing) then
  if (GBDET.Enabled) and (GBDET.Visible) then
  if (DBGConsulta.Enabled) and (DBGConsulta.Visible) then
  oSetFocus(DBGConsulta);
end;

procedure TFrmPadr2.CadastroNewRecord(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmPadr2.CadastroBeforeEdit(DataSet: TDataSet);
begin
  Cadastro.Fields[0].Tag := Cadastro.RecNo;
end;

procedure TFrmPadr2.CadastroAfterEdit(DataSet: TDataSet);
begin
  if (Showing) then
  if (GBDET.Enabled) and (GBDET.Visible) then
  if (DBGConsulta.Enabled) and (DBGConsulta.Visible) then
end;

procedure TFrmPadr2.CadastroBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(Handle,'Confirma Exclusão ?') = mrNo then
  Abort;
end;

procedure TFrmPadr2.CadastroAfterDelete(DataSet: TDataSet);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr2.CadastroBeforePost(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmPadr2.CadastroAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then { SQL Injection Enabled }
  begin
    REC_SHE_DEF.Editing := True;
    oRefresh(Cadastro);
  end;
end;

procedure TFrmPadr2.CadastroBeforeCancel(DataSet: TDataSet);
begin
  if Cadastro.Fields[0].Tag = 0 then
  begin
    Cadastro.Close;
    Cadastro.Open;

    ABORT;
  end;
end;

procedure TFrmPadr2.CadastroAfterCancel(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmPadr2.CadastroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmPadr2.CadastroEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmPadr2.CadastroDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmPadr2.CadastroPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmPadr2.CadastroCalcFields(DataSet: TDataSet);
begin
  Cadastro.FieldByName('C_ID').Value := Cadastro.RecNo;
end;

procedure TFrmPadr2.DTSCadastroDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then  { SQL Injection Enabled }
  Exit;
end;

procedure TFrmPadr2.DTSCadastroStateChange(Sender: TObject);
begin
  //oState(Cadastro,SBMenuEdicao);
end;

procedure TFrmPadr2.DBGConsultaBackgroundDrawEvent(Sender: TObject;
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

procedure TFrmPadr2.DBGConsultaCustomDrawCell(Sender: TObject;
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

procedure TFrmPadr2.DBGConsultaDblClick(Sender: TObject);
begin
  if ACTMEEdit.Enabled then ACTMEEdit.Execute else
  if ACTMPEdit.Enabled then ACTMPEdit.Execute;
end;

procedure TFrmPadr2.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_insert: ACTMPAppend.Execute;
       vk_return: if Cadastro.State = dsBrowse then
                  ACTMPEdit.Execute;
       VK_delete: ACTMPDelete.Execute;
  end;
end;

end.

