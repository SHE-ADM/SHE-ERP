unit pPadr1;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, ActnList;

type
  TFrmPadr1 = class(TForm)
    sbMSG: TStatusBar;
    Consulta: TIBQuery;
    Cadastro: TIBDataSet;
    DTSCadastro: TDataSource;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    pnldir: TPanel;
    pnldbg: TPanel;
    pnlbot: TPanel;
    gbDET: TGroupBox;
    DBGConsulta: TdxDBGrid;
    ConsultaAux: TIBQuery;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLEvent: TIBSQL;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTExecEvent: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTMEAppend: TAction;
    ACTMEEdit: TAction;
    ACTMEDelete: TAction;
    ACTMEPost: TAction;
    ACTMECancel: TAction;
    ACTMAppend: TAction;
    ACTMEdit: TAction;
    ACTMDelete: TAction;
    ACTMPost: TAction;
    ACTMCancel: TAction;
    ACTSaida: TAction;
    ACTPSQ_OK: TAction;
    ACTPSQ_FOCUS: TAction;
    EEventAdmin: TIBEvents;
    ILMenuPrincipal: TImageList;
    SBMenuPrincipal: TSpeedBar;
    SSMenuPrincipal: TSpeedbarSection;
    siREF: TSpeedItem;
    siPSQ: TSpeedItem;
    siREL: TSpeedItem;
    siSAIR: TSpeedItem;
    ILMenuEdicao: TImageList;
    GBMenuEdicao: TGroupBox;
    SBMenuEdicao: TSpeedBar;
    SSMenuEdicao: TSpeedbarSection;
    SIMEAppend: TSpeedItem;
    SIMEEdit: TSpeedItem;
    SIMEDelete: TSpeedItem;
    SIMEPost: TSpeedItem;
    SIMECancel: TSpeedItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CadastroAfterDelete(DataSet: TDataSet);
    procedure DBGConsultaBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure CadastroNewRecord(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CadastroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CadastroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure CadastroBeforeCancel(DataSet: TDataSet);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure EEventAdminEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure ACTMEDeleteExecute(Sender: TObject);
    procedure ACTMEPostExecute(Sender: TObject);
    procedure ACTMECancelExecute(Sender: TObject);
    procedure CadastroBeforeInsert(DataSet: TDataSet);
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

    Constructor Create(AOwner: TComponent;
                 const AEP_ID: Integer;
                       AIDPK : LongInt;
                       AIDEV : LongInt;
                       ACDEV : Word); reintroduce; overload;
  end;

var
  FrmPadr1: TFrmPadr1;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmPadr1._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmPadr1._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmPadr1._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Constructor TFrmPadr1.Create(AOwner: TComponent;
                          const AEP_ID: Integer;
                                AIDPK : LongInt;
                                AIDEV : LongInt;
                                ACDEV : Word);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.EP_ID := INTTOSTR(AEP_ID);
  REC_SHE_DEF.IDPK  := INTTOSTR(AIDPK );

  REC_SHE_DEF.IDEV  := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV  := INTTOSTR(ACDEV);

  inherited Create(AOwner);
end;

procedure TFrmPadr1.FormCreate(Sender: TObject);
begin
  { INICIALIZAÇÃO }
  oOTransact(IBTRA); { Transação }

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

procedure TFrmPadr1.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;
end;

procedure TFrmPadr1.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  { EVENTOS }
  try
    { Limpa Eventos }
    REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
    REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
    REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

    try
      { Addmin }
      EEventAdmin.UnregisterEvents;
      EEventAdmin.Events.Clear;

      { Padrão }
      EEvent.UnregisterEvents;
      EEvent.Events.Clear;

      { Registra Eventos }
      if REC_SHE_DEF.FB_Event <> EmptyStr then
      begin
        { Admin }
        REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
        EEventAdmin.Events.Add(REC_SHE_DEF.FB_EVE_ADM);
        EEventAdmin.RegisterEvents;

        if not RECUsuarios.IS_EVE_ADM then
        begin
          { Padrão }
          REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
          EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
          EEvent.RegisterEvents;
        end;  
      end;
    except
      on E: Exception do
      begin
        { Limpa Eventos }
        REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
        REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
        REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

        oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                  REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                  E.Message              + '.' + #13 + #13 +
                                 'Favor entrar em contato com o administrador do sistema.');
      end;
    end;

  finally
    oUnLockWindowUpdate; { Desbloqueia Tela }

    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmPadr1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if cadastro.State in [dsEdit,dsInsert] then
   case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                         'Deseja Salvar ?',
                         PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
       mrCancel: Abort;
       mrYes   : cadastro.Post;
       mrNo    : cadastro.Cancel;
  end;
end;

procedure TFrmPadr1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmPadr1.FormDestroy(Sender: TObject);
begin
  try
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
             oFTransact(IBTRA);
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
       FrmPadr1 := Nil;
     end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmPadr1.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmPadr1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  SIRel.Click else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmPadr1.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  FHeight,
  FWidth ,
  H,
  T,
  B,
  L,R: Word;
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  T := AMainFormScreen.Top;
  B := AMainFormScreen.Bottom;
  L := AMainFormScreen.Left;
  R := AMainFormScreen.Right;
  H := B;

  if REC_SHE_DEF.FPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    HelpContext := 95; { % }

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FTop > 0) and (REC_SHE_DEF.FLeft > 0) then
    begin
      Top    := REC_SHE_DEF.FTop;
      Left   := REC_SHE_DEF.FLeft;

      if Top + Height > B then
      begin
        Top := Top - ((Top + Height) - B);
      end;

      if Left + Width > R then
      begin
        Left := Left - ((Left + Width) - R);
      end;

    end else
    begin
      if FHeight > 0 then Height := FHeight;
      if FWidth  > 0 then Width  := FWidth;

      if FormStyle = fsNormal then
      begin
        //if FHeight > 0 then
        Top := (T  + (H - Height)) div 2;

        //if FWidth > 0 then
        Left := ((R + L) - Width )  div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Top  := ((B - T ) - Height) div 2;
        Left := ((R - L)  - Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Top    := Screen.WorkAreaTop;
    Left   := Screen.WorkAreaLeft;
    Width  := Screen.WorkAreaWidth;
    Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Top    := 0;
    Left   := 0;
    Width  := R - L - 5;
    Height := H - T - 5;
  end else
  if REC_SHE_DEF.FPosition = poDefault then
  begin
    Top    := IFThen(FormStyle = fsNormal,T,0);
    Left   := IFThen(FormStyle = fsNormal,L,0);
    Width  := IFThen(REC_SHE_DEF.FPosition = poDefault,R - L - 5,0);
    Height := IFThen(REC_SHE_DEF.FPosition = poDefault,H - T - 5,0);
  end;
end;

procedure TFrmPadr1.FormResize(Sender: TObject);
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  if Self <> Nil then
     try
       { VER DIM TELA }
       REC_SHE_DEF.FHeight := Self.Height;
       REC_SHE_DEF.FWidth  := Self.Width ;

       if RECUsuarios.Id = 0 then
       Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;
       Paint;
    finally
      { After Resize }
       oResize(DBGConsulta);
    end;
end;

procedure TFrmPadr1.CadastroAfterDelete(DataSet: TDataSet);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr1.CadastroNewRecord(DataSet: TDataSet);
begin
  Cadastro.Fields[0].Value := 0;
end;

procedure TFrmPadr1.CadastroAfterPost(DataSet: TDataSet);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr1.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_insert: ACTMEAppend.Execute;
       vk_return: if Cadastro.State = dsBrowse then
                  ACTMEEdit.Execute else
                  DBGConsulta.FocusedColumn := DBGConsulta.FocusedColumn + 1;
       VK_delete: ACTMEDelete.Execute;
       vk_escape: ACTMECancel.Execute;
  end;
end;

procedure TFrmPadr1.DBGConsultaBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  Text : String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);
    if (Sender as TdxDBGrid).GroupColumnCount = 0 then

    begin
      Font.Color := clMenu;
      Text := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, Text);
    end;
  end;
end;

procedure TFrmPadr1.DTSCadastroStateChange(Sender: TObject);
begin
  oState(Cadastro,SBMenuEdicao);
  if Cadastro.State = dsBrowse then
  begin
    DBGConsulta.OptionsBehavior := ([edgoAutoSearch,edgoAutoSort,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
    DBGConsulta.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoPreview,edgoUseBitmap]);
    SBMsg.Panels[0].Text        := IFThen(Cadastro.State = dsEdit,'Alteração','Inclusão');
  end else
  begin
    DBGConsulta.OptionsBehavior := ([edgoAutoSort,edgoCaseInsensitive,edgoCollapsedReload,edgoDragCollapse,edgoDragExpand,edgoDragScroll,edgoEditing,edgoEnterShowEditor,edgoImmediateEditor,edgoSeekDetail,edgoShowHourGlass,edgoTabThrough,edgoVertThrough]);
    DBGConsulta.OptionsView     := ([edgoAutoCalcPreviewLines,edgoBandHeaderWidth,edgoHotTrack,edgoInvertSelect,edgoPreview,edgoUseBitmap]);
    SBMsg.Panels[0].Text        := 'Consulta';
  end;
end;

procedure TFrmPadr1.CadastroPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmPadr1.CadastroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmPadr1.CadastroBeforeCancel(DataSet: TDataSet);
begin
  if Cadastro.Fields[0].Tag = 0 then
  begin
    Cadastro.Close;
    Cadastro.Open;
    Cadastro.Last;

    ABORT;
  end;
end;

procedure TFrmPadr1.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr1.EEventAdminEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if RECUsuarios.IS_EVE_ADM then
  oRefresh(Cadastro);
end;

procedure TFrmPadr1.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     try
       oOTransact(TEvent);

       { Admin }
       SPEvent.StoredProcName := 'SP_SHE_EVE_ADM';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
       SPEvent.ExecProc;

       { Padrão }
       SPEvent.Close;
       SPEvent.StoredProcName := 'SP_SHE_EVE_PAD';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_PAD;

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

procedure TFrmPadr1.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr1.ACTPesquisaExecute(Sender: TObject);
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
    if LISTA = Nil then
    LISTA := TStringList.Create else
    LISTA.Clear;
  end;
end;

procedure TFrmPadr1.ACTRelatoriosExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPadr1.ACTSaidaExecute(Sender: TObject);
begin
  if Cadastro.State in [dsInsert,dsEdit] then
  ACTMECancel.Execute else
  ACTSaida.Execute;
end;

procedure TFrmPadr1.ACTMEAppendExecute(Sender: TObject);
begin
  if (not (GBMenuEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oAppend(Cadastro,REC_SHE_DEF.GAppend);
end;

procedure TFrmPadr1.ACTMEEditExecute(Sender: TObject);
begin
  if (not (GBMenuEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oEdit(Cadastro,REC_SHE_DEF.GEdit);
end;

procedure TFrmPadr1.ACTMEDeleteExecute(Sender: TObject);
begin
  if (not (ActiveControl is TdxDBGrid)) or { Focado no Grid }
     (not (GBMenuEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oDelete(Cadastro,REC_SHE_DEF.GDelete);
end;

procedure TFrmPadr1.ACTMEPostExecute(Sender: TObject);
begin
  if (not (GBMenuEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oPost(Cadastro,REC_SHE_DEF.GPost);
end;

procedure TFrmPadr1.ACTMECancelExecute(Sender: TObject);
begin
  if (not (GBMenuEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oCancel(Cadastro,REC_SHE_DEF.GCancel);
end;

procedure TFrmPadr1.CadastroBeforeInsert(DataSet: TDataSet);
begin
  Cadastro.Fields[0].Tag := Cadastro.RecNo;
end;

end.
