unit pDefault;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, cxGraphics, cxControls, dxStatusBar, dxPageControl, dxBar,
  dxBarExtItems, dxsbar, dxDockPanel, dxDockControl, ActnList,
  XPStyleActnCtrls, ActnMan, IDGlobal;

type
  TFrmDefault = class(TForm)
    DMPrincipal: TdxDockingManager;
    BMPrincipal: TdxBarManager;
    ALPrincipal: TActionList;
    IPrincipal: TImageList;
    PNLDefault: TPanel;

    SBRodape: TdxStatusBar;

    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    Consulta: TIBQuery;
    DTSConsulta: TDataSource;

    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;

    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;

    BLBRefresh: TdxBarLargeButton;
    ACTRefresh: TAction;

    BLBPSQ_PER: TdxBarLargeButton;
    PMPSQ_PER: TdxBarPopupMenu;
    BBPSQ_PER: TdxBarButton;
    BDPSQ_PER_INI: TdxBarDateCombo;
    BDPSQ_PER_FIM: TdxBarDateCombo;
    ACTPSQ_PER: TAction;

    BLBPSQ_CAD: TdxBarLargeButton;
    PMPSQ_CAD: TdxBarPopupMenu;
    BBPSQ_CAD: TdxBarButton;
    BEPSQ_CAD: TdxBarEdit;
    ACTPSQ_CAD: TAction;

    ACTPesquisa: TAction;

    BLBNovo: TdxBarLargeButton;
    ACTNovo: TAction;

    BLBEdicao: TdxBarLargeButton;
    ACTEdicao: TAction;

    BLBConfirma: TdxBarLargeButton;
    ACTValida: TAction;

    BLBCancela: TdxBarLargeButton;
    ACTCancela: TAction;

    BLBRelatorios: TdxBarLargeButton;
    ACTRelatorios: TAction;

    BLBSaida: TdxBarLargeButton;
    ACTSaida: TAction;
    ACTExecEvent: TAction;
    PNLTOP: TPanel;
    PNLBOTTOM: TPanel;
    PNLPrincipal: TPanel;
    DSConsulta: TdxDockSite;
    LDSConsulta: TdxLayoutDockSite;
    DPConsulta: TdxDockPanel;
    PNLConsulta: TPanel;
    DBGConsulta: TdxDBGrid;
    PNLRIGHT: TPanel;
    PNLLEFT: TPanel;
    EEventAdmin: TIBEvents;
    ACTEveRegister: TAction;
    ACTEveExecute: TAction;
    ACTEveExpress: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure ACTRefreshExecute(Sender: TObject);

    procedure ACTPSQ_PERExecute(Sender: TObject);
    procedure ACTPSQ_CADExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ACTPesquisaExecute(Sender: TObject);

    procedure ACTNovoExecute(Sender: TObject);
    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTValidaExecute(Sender: TObject);
    procedure ACTCancelaExecute(Sender: TObject);

    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure ConsultaAfterOpen(DataSet: TDataSet);

    procedure EEventEventAlert(Sender: TObject; EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
    procedure EEventAdminEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTEveExpressExecute(Sender: TObject);
  private
    { Private declarations }
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

    Constructor Create(AOwner    : TComponent;
                 const AIDPK     : LongInt = 0 ;
                       ADEPK     : String  = '';
                       AIDEV     : LongInt = 0 ;
                       ACDEV     : Word    = 0 ;
                       AFB_TB_PK : String  = '';
                       AFB_GETSQL: String  = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner    : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK     : LongInt = 0 ;
                              ADEPK     : String  = '';
                              AIDEV     : LongInt = 0 ;
                              ACDEV     : Word    = 0 ;
                              AFB_TB_PK : String  = '';
                              AFB_GETSQL: String = '');

    Destructor  Destroy; override;
  end;

var
  FrmDefault: TFrmDefault;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmDefault._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmDefault._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmDefault._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmDefault._WM_CREATE(var Msg: TMessage);
begin
  { FORM SCREEN }
  Screen.Cursor := crAppStart;
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
end;

procedure TFrmDefault._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM SCREEN }
  //SetCursorPos(500,Self.Top);

  { FORM CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;

  { FORM AREA }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicação }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Windows }

  { PAGE CONTROL }
  { INICIALIZAÇÃO PADRÃO }
end;

procedure TFrmDefault._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  ACTEveRegister.Execute; { Registro }
end;

procedure TFrmDefault._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmDefault._WM_SHOW(var Msg: TMessage);
begin
  { FORM SHOW }
  Screen.Cursor := crHourGlass;
  REC_SHE_DEF.FResize := 0; { FORM RESIZE }

  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Consultas }

  { TABELAS }
  { EDIÇÕES }
end;

procedure TFrmDefault._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { FORM SHOW }
  Screen.Cursor := crHourGlass;
  REC_SHE_DEF.FResize := 0; { FORM RESIZE }

  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Consultas }

  { TABELAS }
  { EDIÇÕES }
end;

procedure TFrmDefault._WM_RESIZE(var Message: TMessage);
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

procedure TFrmDefault._WM_AFTER_RESIZE(var Message: TMessage);
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

Constructor TFrmDefault.Create(AOwner: TComponent;
                     const AIDPK     : LongInt = 0 ;
                           ADEPK     : String  = '';
                           AIDEV     : LongInt = 0 ;
                           ACDEV     : Word    = 0 ;
                           AFB_TB_PK : String  = '';
                           AFB_GETSQL: String  = '');
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.FB_TB_PK  := TRIM(AFB_TB_PK );
  REC_SHE_DEF.FB_GETSQL := TRIM(AFB_GETSQL);
  inherited Create(AOwner);
end;

Class procedure TFrmDefault._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                  AIDPK     : LongInt = 0 ;
                                  ADEPK     : String  = '';
                                  AIDEV     : LongInt = 0 ;
                                  ACDEV     : Word    = 0 ;
                                  AFB_TB_PK : String  = '';
                                  AFB_GETSQL: String  = '');
var
  idxForm: Integer;
begin
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  { Inicia pela pesquisa }
  _FormPesquisa := AFormPesquisa;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (ACDEV = 1)) then
  TForm(AForm) := Self.Create (AOwner    ,
                               AIDPK     ,
                               ADEPK     ,
                               AIDEV     ,
                               ACDEV     ,
                               AFB_TB_PK ,
                               AFB_GETSQL);

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

Destructor TFrmDefault.Destroy;
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
            oFTransact(TConsulta);
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
            Finalize(REC_SHE_DEF);
            FillChar(REC_SHE_DEF,SizeOf(REC_SHE_DEF),0);
          except
            on E: Exception do
            begin
             oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                      'Error Code: '+E.Message+'.'        +#13+
                                       Caption+'.');
            end;
          end;

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

procedure TFrmDefault.FormCreate(Sender: TObject);
begin
  oOTransact(TConsulta);
  
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
  end;

  { ACCESS MANAGER }
  if not REC_SHE_DEF.GView then
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

procedure TFrmDefault.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmDefault.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmDefault.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
end;

procedure TFrmDefault.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmDefault.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
{       118      : if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) then
                      BEPSQ_CAD.SetFocus(False);
 }
       116      : ACTRefresh.Execute;
  end;
end;

procedure TFrmDefault.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  ACTRelatorios.Execute else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmDefault.FormPaint(Sender: TObject);
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

  { ricardo RODAPÉ }
  REC_SHE_DEF.FMainWidth := SBRodape.Width;
  for i  := 0 to SBRodape.Panels.Count - 1 do
  if  i  <> 1 then
  REC_SHE_DEF.FMainWidth   := REC_SHE_DEF.FMainWidth - SBRodape.Panels[i].Width;
  SBRodape.Panels[1].Width := REC_SHE_DEF.FMainWidth - 30;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FMainWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FMainHeight) + '. ' + Self.Caption;
end;

procedure TFrmDefault.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmDefault.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Consulta);
end;

procedure TFrmDefault.ACTNovoExecute(Sender: TObject);
begin
  if Consulta.State = dsInactive then
     oException(Nil,'Banco de dados desconectado '+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  if not REC_SHE_DEF.GAppend then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Incluindo ...';
  SBRodape.Refresh;
end;

procedure TFrmDefault.ACTEdicaoExecute(Sender: TObject);
begin
  if (Consulta.State = dsInactive) or (Consulta.RecNo = 0) then
      oException(Nil,'Registro não Informado !');

  if not REC_SHE_DEF.GEdit then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Alterando ...';
  SBRodape.Refresh;
end;

procedure TFrmDefault.ACTCancelaExecute(Sender: TObject);
begin
  if (Consulta.State = dsInactive) or (Consulta.RecNo = 0) then
      oException(Nil,'Registro não Informado !');

  if not REC_SHE_DEF.GDelete then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Excluindo ...';
  SBRodape.Refresh;
end;

procedure TFrmDefault.ACTValidaExecute(Sender: TObject);
begin
  if not REC_SHE_DEF.GPost then
     oException(Nil,'Acesso Negado !'+#13+
                    'Favor entrar em contato com o administrador do sistema.');

  SBRodape.Panels[0].Text := 'Validando ...';
  SBRodape.Refresh;
end;

procedure TFrmDefault.ACTSaidaExecute(Sender: TObject);
begin
  if BEPSQ_CAD.Text <> EmptyStr then
     BEPSQ_CAD.Text := EmptyStr else
     Close;
end;

procedure TFrmDefault.ACTRelatoriosExecute(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmDefault.ACTPSQ_PERExecute(Sender: TObject);
begin
  ACTPesquisa.Tag := 0;

  if Sender.ClassType = TdxBarLargeButton then
     BBPSQ_PER.Caption := TdxBarLargeButton(Sender).Caption;

  if (BEPSQ_CAD.Text = EmptyStr) and (BDPSQ_PER_INI.Date <= 0) and (BDPSQ_PER_FIM.Date <= 0) then
      Abort;

  if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
  begin
    if BDPSQ_PER_INI.Date > BDPSQ_PER_FIM.Date then
       oException(Nil,'Data Inicial não pode ser maior que Data Final !');

    ACTPesquisa.Execute;
  end;
end;

procedure TFrmDefault.ACTPSQ_CADExecute(Sender: TObject);
begin
  ACTPesquisa.Tag := 0;

  if Sender.ClassType = TdxBarLargeButton then
     BBPSQ_CAD.Caption := TdxBarLargeButton(Sender).Caption;

  if (BEPSQ_CAD.Text = EmptyStr) and (BDPSQ_PER_INI.Date <= 0) and (BDPSQ_PER_FIM.Date <= 0) then
      Abort;

  ACTPesquisa.Execute;
end;

procedure TFrmDefault.ACTPesquisaExecute(Sender: TObject);
begin
  { laNotReOpen não deixa re-abrir as tabelas mesmo quando configuradas para isso
    oCTransaction -> oOTransaction }
  oRTransact(TConsulta,ltCommit,laNotReOpen);

  if (ACTPesquisa.Tag = 1) and (TConsulta.InTransaction) then
      Consulta.Prepare;
end;

procedure TFrmDefault.BEPSQ_CADKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then ACTSaida.Execute;
  if key = vk_return then ACTPSQ_CAD.Execute;
  if key = VK_DOWN   then
  begin
    PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGConsulta).SetFocus;
  end;
end;

procedure TFrmDefault.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     Screen.Cursor := crAppStart;
end;

procedure TFrmDefault.ConsultaAfterOpen(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     Screen.Cursor := crDefault;
end;

procedure TFrmDefault.EEventAdminEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if RECUsuarios.IS_EVE_ADM then
  oRefresh(Consulta);
end;

procedure TFrmDefault.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Consulta);
end;

procedure TFrmDefault.ACTEveRegisterExecute(Sender: TObject);
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

procedure TFrmDefault.ACTEveExecuteExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then

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

procedure TFrmDefault.ACTEveExpressExecute(Sender: TObject);
begin
  ACTEveRegister.Execute;
  ACTEveExecute.Execute;
end;

end.
