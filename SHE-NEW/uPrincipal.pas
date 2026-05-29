unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, RXCtrls, ToolWin, StdCtrls, Buttons,
  DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable, ActnList, ActnMan,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, DateUtils, Printers, StrUtils,
  Grids, DBGrids, IBStoredProc, ImgList, Shellapi, DBTables, jpeg, math,
  XPStyleActnCtrls, IdBaseComponent, IdComponent, qrPrev,
  IdIPWatch, Provider, cxGraphics, cxControls, dxStatusBar, ACBrBarCode,
  IBSQL, dxDBGrid, dxTL, dxDBCtrl, TypInfo, dxsbar, dxDockPanel,
  dxDockControl, dxBar, dxBarExtItems, rxAnimate, rxGIFCtrl;

type
  TFrmPrincipal = class(TForm)

    TPrincipal: TTimer;
    IPrincipal: TImage;

    ACBrBarCode: TACBrBarCode;
    ACBrBarCodeV: TACBrBarCode;
    BMPrincipal: TdxBarManager;
    BSICadastros: TdxBarSubItem;
    BSIProdutos: TdxBarSubItem;
    DMPrincipal: TdxDockingManager;
    DSMenu: TdxDockSite;
    LDSPrincipal: TdxLayoutDockSite;
    DPMenu: TdxDockPanel;
    BLBMU_Etiquetas: TdxBarLargeButton;
    SBPrincipal: TdxSideBar;
    SBSPrincipal: TdxSideBarStore;
    BLBCAD_CLI_ADM: TdxBarLargeButton;
    BLBCAD_REP_ADM: TdxBarLargeButton;
    BLBCAD_VEN_ADM: TdxBarLargeButton;
    BLBCAD_COM_ADM: TdxBarLargeButton;
    BLBCAD_TRA_ADM: TdxBarLargeButton;
    BLBCAD_FOR_ADM: TdxBarLargeButton;
    BLBCAD_PRO_ADM: TdxBarLargeButton;
    BLBCAD_PRO_GRD_COR: TdxBarLargeButton;
    BLBCAD_PRO_GRD_EST: TdxBarLargeButton;
    BLBCAD_PRO_FIT: TdxBarLargeButton;
    BLBCAD_PRO_ETC: TdxBarLargeButton;
    BLBCAD_PRO_COL: TdxBarLargeButton;
    BLBCAD_PRO_SEG: TdxBarLargeButton;
    BLBCAD_PRO_GRP: TdxBarLargeButton;
    BLBCAD_PRO_SGP: TdxBarLargeButton;
    BLBCAD_PRO_CAT: TdxBarLargeButton;
    BLBCAD_PRO_SCT: TdxBarLargeButton;
    BLBCAD_PRO_EST_LCT: TdxBarLargeButton;
    BLBCAD_PRO_EST_ADM: TdxBarLargeButton;
    BLBCAD_PRO_EST_ETQ: TdxBarLargeButton;
    BLBCAD_PRO_EST_DEF: TdxBarLargeButton;
    BLBCAD_PRO_EST_EXP_CLT: TdxBarLargeButton;
    BLBCAD_PRO_EST_EXP_MAN: TdxBarLargeButton;
    BLBCAD_CTNR_ADM: TdxBarLargeButton;
    BLBCAD_CTNR_LCT: TdxBarLargeButton;
    BSIEstoque: TdxBarSubItem;
    BDIExpedicao: TdxBarSubItem;
    BSIContainers: TdxBarSubItem;
    BLBPED_PDC_ADM: TdxBarLargeButton;
    BLBPED_PDC_LCT: TdxBarLargeButton;
    BLBPED_PDP_ADM: TdxBarLargeButton;
    BLBPED_PDP_LCT: TdxBarLargeButton;
    BLBPED_PDV_LCT: TdxBarLargeButton;
    BLBPED_PDV_ADM: TdxBarLargeButton;
    BLBPED_PDV_RDV: TdxBarLargeButton;
    BLBFIS_NFE_LCT: TdxBarLargeButton;
    BLBFIS_NFE_ADM: TdxBarLargeButton;
    BLBFIS_NFE_LCT_TER: TdxBarLargeButton;
    BLBFIS_NFE_CFOP: TdxBarLargeButton;
    BLBFIS_CFE_LCT: TdxBarLargeButton;
    BLBFIS_CFE_ADM: TdxBarLargeButton;
    BLBFIN_REC_ADM: TdxBarLargeButton;
    BLBFIN_REC_BXD: TdxBarLargeButton;
    BLBFIN_REC_DUP: TdxBarLargeButton;
    BLBFIN_REC_BOL: TdxBarLargeButton;
    BLBFIN_PAG_ADM: TdxBarLargeButton;
    BLBFIN_PAG_CMV: TdxBarLargeButton;
    BLBFIN_CHQ_EDI: TdxBarLargeButton;
    BLBFIN_CHQ_ADM: TdxBarLargeButton;
    BLBCAI_ABR_PAD: TdxBarLargeButton;
    BLBCAI_RAB: TdxBarLargeButton;
    BLBCAI_FCH: TdxBarLargeButton;
    BLBCAI_LSS: TdxBarLargeButton;
    BLBCAI_TSS: TdxBarLargeButton;
    BLBCAI_FLC: TdxBarLargeButton;
    BLBTAB_PRZ: TdxBarLargeButton;
    BLBTAB_TPO_COB: TdxBarLargeButton;
    BLBTAB_TPO_PED: TdxBarLargeButton;
    BLBTAB_NCM: TdxBarLargeButton;
    BLBTAB_UCOM: TdxBarLargeButton;
    BLBTAB_CMUN: TdxBarLargeButton;
    BLBTAB_CFOP: TdxBarLargeButton;
    BLBTAB_ICMS: TdxBarLargeButton;
    BLBTAB_ICMS_ST: TdxBarLargeButton;
    BLBTAB_ORIG: TdxBarLargeButton;
    BSICompras: TdxBarSubItem;
    BSIProgramados: TdxBarSubItem;
    BSIRomaneios: TdxBarSubItem;
    BSICheques: TdxBarSubItem;
    BSICaixa: TdxBarSubItem;
    BSIRelatorios: TdxBarSubItem;
    dxBarSubItem1: TdxBarSubItem;
    BLBREL_EST_EPE: TdxBarLargeButton;
    BLBREL_EST_EPP: TdxBarLargeButton;
    BLBREL_EST_ERS: TdxBarLargeButton;
    BLBREL_EST_ESP: TdxBarLargeButton;
    PMREL_EST: TdxBarPopupMenu;
    BLBREL_EST_EFI: TdxBarLargeButton;
    BLBREL_EST_ETQ: TdxBarLargeButton;
    BLBREL_EST_QLD: TdxBarLargeButton;
    BLBREL_EST_INV: TdxBarLargeButton;
    BBREL_EST: TdxBarButton;
    BBREL_EST_UCOM: TdxBarButton;
    BBREL_PRO: TdxBarButton;
    BBREL_COL: TdxBarButton;
    BBREL_SEG: TdxBarButton;
    BBREL_GRP: TdxBarButton;
    BBREL_SGP: TdxBarButton;
    BBREL_CAT: TdxBarButton;
    BBREL_SCT: TdxBarButton;
    BBREL_CLI: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    BLBMU_ABOUT: TdxBarLargeButton;
    BLBMU_FIS_NFE_PSQ: TdxBarLargeButton;
    BLBMU_FIS_CFE_EDT: TdxBarLargeButton;
    BLBUSER_PASSWORD: TdxBarLargeButton;
    BLBMU_Impressoras: TdxBarLargeButton;
    BLBMU_PARAMETROS: TdxBarLargeButton;
    BLBMU_BACKUP: TdxBarLargeButton;
    BLBMU_SAIDA: TdxBarLargeButton;
    SSICAD_PRO_ADM: TdxStoredSideItem;
    SSIPED_VEN_ADM: TdxStoredSideItem;
    BLBCAD_PRO_GRD_TAM: TdxBarLargeButton;
    BLBTAB_PAIS: TdxBarLargeButton;
    SSICAD_PRO_EST_EXP_MAN: TdxStoredSideItem;
    SSICAD_PRO_EST_EXP_COL: TdxStoredSideItem;
    SSICAD_PRO_EST_ADM: TdxStoredSideItem;
    SSICAD_PRO_EST_LAN: TdxStoredSideItem;
    SSICAD_PRO_EST_ETQ: TdxStoredSideItem;
    BLBUSER_LOGIN: TdxBarLargeButton;
    BLBMU_FIS_NFE_SAI: TdxBarLargeButton;
    ILPrincipal: TImageList;
    AMPrincipal: TActionManager;
    ACTADM_DENIED: TAction;
    ACTUSER_LOGIN: TAction;
    ACTUSER_PASSWORD: TAction;
    ACTRelatorios: TAction;
    ACTPRN_ADM: TAction;
    ACTPRN_EXE: TAction;
    ACTMU_PARAMETROS: TAction;
    ACTMU_BACKUP: TAction;
    ACTPED_PDV_LCT: TAction;
    ACTCAD_PRO_ADM: TAction;
    ACTCAD_PRO_EST_ADM: TAction;
    ACTCAD_PRO_EST_LCT: TAction;
    ACTCAD_PRO_EST_EXP_CLT: TAction;
    ACTCAD_PRO_EST_EXP_MAN: TAction;
    ACTCAD_PRO_EST_ETQ: TAction;
    ACTFIS_NFE_ADM: TAction;
    ACTFIS_NFE_LCT: TAction;
    ACTFIS_NFE_LCT_TER: TAction;
    ACTPED_PDC_ADM: TAction;
    ACTCAI_ABR_PAD: TAction;
    ACTCAI_ABR_FST: TAction;
    ACTCAI_FEC: TAction;
    ACTCAI_RAB: TAction;
    ACTCAI_LSS: TAction;
    ACTCAI_TSS: TAction;
    ACTCAI_FLC: TAction;
    ACTCAD_PRO_GRD_COR: TAction;
    ACTPED_RDV_ADM: TAction;
    ACTADM_COMISSAO: TAction;
    ACTPED_PDV_CLT: TAction;
    ACTMU_FIS_NFE_PSQ: TAction;
    ACTMU_FIS_NFE_SAI: TAction;
    ACTMU_FIS_CFE_EDT: TAction;
    ACTMU_Etiquetas: TAction;
    ACTMU_Impressoras: TAction;
    ACTMU_USER_LOGIN: TAction;
    ACTMU_USER_PASSWORD: TAction;
    ACTMU_ABOUT: TAction;
    ACTMU_SAIDA: TAction;
    ACTCAD_CLI_ADM: TAction;
    ACTCAD_REP_ADM: TAction;
    ACTCAD_FOR_ADM: TAction;
    ACTCAD_TRA_ADM: TAction;
    ACTCAD_PRO_GRD_EST: TAction;
    ACTCAD_PRO_GRD_TAM: TAction;
    ACTCAD_PRO_COL: TAction;
    ACTCAD_PRO_SEG: TAction;
    ACTCAD_PRO_GRP: TAction;
    ACTCAD_PRO_SGP: TAction;
    ACTCAD_PRO_CAT: TAction;
    ACTCAD_PRO_SCT: TAction;
    ACTCAD_PRO_EST_DEF: TAction;
    ACTPED_PDP_ADM: TAction;
    ACTTAB_PRZ: TAction;
    ACTCAD_CTNR_ADM: TAction;
    ACTPED_PDC_CUSTO: TAction;
    ACTFIN_REC_ADM: TAction;
    ACTFIN_PAG_ADM: TAction;
    ACTFIN_REC_BXD: TAction;
    ACTFIN_PAG_BXD: TAction;
    ACTFIN_PAG_CMV: TAction;
    ACTREL_GER_PDV_CRD: TAction;
    ACTREL_GER_PDV_TPO: TAction;
    ACTREL_GER_FIS_CFOP: TAction;
    ACTREL_GER_FIS_PESO: TAction;
    ACTREL_GER_EST_PRO: TAction;
    ACTREL_GER_EST_INV: TAction;
    ACTREL_PRO_EST: TAction;
    ACTREL_PRO_EST_ETQ: TAction;
    ACTREL_PRO_CAD_FCT: TAction;
    ACTREL_PRO_PDC_PLN: TAction;
    ACTREL_PRO_PDC_LST: TAction;
    ACTREL_FOR_PRO_CAD: TAction;
    ACTREL_REP_PDV_RKG: TAction;
    ACTREL_FOR_PDC_REC: TAction;
    ACTREL_PRO_VEN_DIA: TAction;
    ACTREL_PRO_VEN_MES: TAction;
    ACTREL_PRO_TAB_PRC: TAction;
    EPrincipal: TOpenDialog;
    PNLSBRodape: TPanel;
    PNLSyncEvent: TPanel;
    PNLSyncAnimate: TPanel;
    GFASyncEvent: TRxGIFAnimator;
    PNLSyncRecords: TPanel;
    SBSyncRecords: TdxStatusBar;
    PNLMainEvent: TPanel;
    SBRodape: TdxStatusBar;
    ACTCAD_VEN_ADM: TAction;
    ACTCAD_COM_ADM: TAction;
    ACTCAD_PRO_FCT: TAction;
    ACTCAD_PRO_ETC: TAction;
    ACTCAD_CTNR_LCT: TAction;
    ACTPED_PDC_LCT: TAction;
    ACTPED_PDP_LCT: TAction;
    ACTPED_PDV_ADM: TAction;
    ACTPED_PDV_PRZ: TAction;
    BLBPED_PDV_CLT: TdxBarLargeButton;
    BLBPED_PDV_PRZ: TdxBarLargeButton;
    ACTFIS_NFE_CFOP: TAction;
    ACTFIS_CFE_LCT: TAction;
    ACTFIS_CFE_ADM: TAction;
    ACTFIN_REC_DUP: TAction;
    ACTFIN_REC_BOL: TAction;
    ACTFIN_CHQ_LCT: TAction;
    ACTFIN_CHQ_ADM: TAction;
    BLBFIN_PAG_BXD: TdxBarLargeButton;
    ACTTAB_TPO_PED: TAction;
    ACTTAB_TPO_COB: TAction;
    ACTTAB_UCOM: TAction;
    ACTTAB_CFOP: TAction;
    ACTTAB_NCM: TAction;
    ACTTAB_ICMS: TAction;
    ACTTAB_ICMS_ST: TAction;
    ACTTAB_CMUN: TAction;
    ACTTAB_ORI: TAction;
    ACTTAB_PAIS: TAction;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

    procedure TPrincipalTimer(Sender: TObject);
    procedure ACTPRN_ADMExecute(Sender: TObject);
    procedure ACTUSER_LOGINExecute(Sender: TObject);
    procedure ACTUSER_LOGINUpdate(Sender: TObject);
    procedure ACTUSER_PASSWORDExecute(Sender: TObject);
    procedure ACTMU_SAIDAExecute(Sender: TObject);
    procedure ACTMU_ABOUTExecute(Sender: TObject);
    procedure ACTMU_FIS_NFE_PSQExecute(Sender: TObject);
    procedure ACTMU_FIS_NFE_SAIExecute(Sender: TObject);
    procedure ACTMU_FIS_CFE_EDTExecute(Sender: TObject);
    procedure ACTMU_EtiquetasExecute(Sender: TObject);
    procedure ACTADM_DENIEDExecute(Sender: TObject);
    procedure ACTMU_PARAMETROSExecute(Sender: TObject);
    procedure ACTMU_BACKUPExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTPRN_EXEExecute(Sender: TObject);
  private
    { Private declarations }
    procedure _USER_LOGIN(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;

    function  _SetMouseTracking: Boolean;

  public
    { Public declarations }
  end;

  { TEMPORÁRIOS }
var
  FrmPrincipal: TFrmPrincipal;
  ATrackMouseEvent: TTrackMouseEvent;

implementation

uses bPrincipal  ,
     pLogin      , pSenha   , pSobre,
     pImpressoras, AJBarcode;

{$R *.dfm}

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Nil;
  Result   := 0;
  try
    Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
    case msg of
         WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                            SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL or WS_CAPTION));
    end;
    Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
  except
    ;
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';
  Randomize;

  if (ClientHandle <> 0) then
  if (not(GetWindowLong(ClientHandle, GWL_USERDATA) <> 0))  then
  SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  _SetHintDefault;
  _USER_LOGIN(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP);
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  if oEmpty(RECUsuarios.Id) then
  Close;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  if oEmpty(RECUsuarios.Id) then
  Exit;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var i: Word;
begin
  if oEmpty(RECUsuarios.Id) then
  Exit;

  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  if oYesNo(Handle,'Sair do Sistema ?') = mrNo then
     Abort;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
begin
  SBRodape.Panels[3].Width := SBRodape.Width - 20 - (SBRodape.Panels[0].Width + SBRodape.Panels[1].Width + SBRodape.Panels[2].Width + SBRodape.Panels[4].Width + SBRodape.Panels[5].Width + SBRodape.Panels[6].Width + SBRodape.Panels[7].Width);
  SBRodape.Repaint;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
var
  XRect: TRect;
begin
  if FrmPrincipal <> Nil then
  begin
    GetWindowRect(Application.MainForm.ClientHandle,XRect);
    XRect.Top := IPrincipal.Top;

    Canvas.FillRect(XRect);
    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);

    Paint;
  end;  
end;

procedure TFrmPrincipal._SetMouseLeave(var AMessage: TMessage);
begin
  inherited;
  AMessage.Result := 1;
end;

function TFrmPrincipal._SetMouseTracking: Boolean;
begin
  with ATrackMouseEvent do
  begin
    cbSize      := sizeof(ATrackMouseEvent);
    dwFlags     := TME_LEAVE;
    hwndTrack   := Self.Handle;
    dwHoverTime := HOVER_DEFAULT;
  end;

  result := TrackMouseEvent(ATrackMouseEvent);
end;

procedure TFrmPrincipal._SetHintDefault;
var
  AhintBK: String;
  AHintPI,
  AHelpPI: PPropInfo;
  i: Word;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i].ClassType = TPanel then
       tag := 0;

    AHelpPI := GetPropInfo(Components[i].ClassInfo,'HelpKeyword');
    AHintPI := GetPropInfo(Components[i].ClassInfo,'Hint');

    if (AHintPI <> Nil) and (AHelpPI <> Nil) then
    begin
       AHintBK := GetStrProp(Components[i] , AHintPI);
       SetStrProp(Components[i], AHelpPI   , AHintBK);
    end;
  end;
end;

procedure TFrmPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  APoint  : TPoint;
  AControl: TControl;
begin
  if _SetMouseTracking then
  begin
    GetCursorPos(APoint);
    AControl := FindDragTarget(APoint, True);  { Mouse.CursorPos }

    if (AControl = Nil) or (AControl <> Sender) then
    Perform(WM_MOUSELEAVE, 0, 0) else
    AControl.Hint := IFThen(Self.Hint <> EmptyStr,Self.Hint + 'SAIU',AControl.HelpKeyword);
  end;
end;

procedure TFrmPrincipal.TPrincipalTimer(Sender: TObject);
          function SecondsIdle: DWord;
          var
            liInfo: TLastInputInfo;
          begin
            liInfo.cbSize := SizeOf(TLastInputInfo);
            GetLastInputInfo(liInfo);

            Result := (GetTickCount - liinfo.dwTime) DIV 1000;
          end;
var
  i: word;          
begin
  if FrmPrincipal <> Nil then
  with FrmPrincipal, FBird do
  begin
    RECParametros.SecondsIdle := SecondsIdle;

    { RODAPÉ }
    SBRodape.Panels[4].Text := RECParametros.STCX; { Caixa }
    SBRodape.Panels[6].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]); { Tempo }

    if RECParametros.SecondsIdle > 0 then
    begin
      if RECParametros.SecondsIdle mod 300 = 0  then
      begin
        { MAIN DB }
        if not FBird.DBErp.TestConnected then
        try
          DBErp.CloseDataSets;
          DBErp.ForceClose;

          DBErp.Connected := True;
        except
          ;
        end;

        try
          oOTransact(TFBConsulta);
          with SQLFBConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT * FROM rdb$relation_fields');
            ExecQuery;
          end;
          oCTransact(TFBConsulta);
        except
          oCTransact(TFBConsulta,ltRollback);
        end;
      end;

      if RECParametros.SecondsIdle mod 600 = 0  then
      begin
        RECParametros.ForceClose := False;

        { VER FORMS FSNORMAL }
        //if (not Assigned(FrmVEN_PRC)) and
        //   (not Assigned(FrmVEN_PED)) and
        //   (not Assigned(FrmVEN_PRG)) and
        //   (not Assigned(FrmVEN_NFE)) and
        //   (not Assigned(FrmCAD_PRO_EDI)) and
        //   (not Assigned(FrmPesquisa)) and
        //   (not Assigned(FrmPesquisa_OLD)) then
        begin
          { VER FORMS }
          try
            for i := MDIChildCount - 1 downto 0 do
            if MDIChildren[i] <> Nil then
            if MDIChildren[i].HelpKeyword <> '0' then
            Exit;
          except
            Application.ProcessMessages;
          end;

          { FECHA FORMS }
          try
            for i := MDIChildCount - 1 downto 0 do
            if MDIChildren[i] <> Nil then
            if MDIChildren[i].HelpKeyword = '0' then
            MDIChildren[i].Free;
          except
            Application.ProcessMessages;
          end;

          { VER FORMS ABERTOS }
          try
            for i := MDIChildCount - 1 downto 0 do
            if MDIChildren[i] <> Nil then
            Exit;
          except
            Application.ProcessMessages;
          end;

          RECParametros.ForceClose := True;
          Self.Close;
        end;  
      end;
    end;

    { VER CAIXA }
    if RECParametros.CDCX = 0 then
    bExecEvent('Caixa');

    { EXEC CAIXA }
    ACTCAI_ABR_PAD.Enabled := (((RECParametros.STCX = 'Caixa Fechado') or (RECParametros.STCX = 'Caixa não aberto')) and (RECUsuarios.Caixa));
    ACTCAI_RAB.Enabled     := (ACTCAI_ABR_PAD.Enabled);
    ACTCAI_FEC.Enabled     := ((not ACTCAI_ABR_PAD.Enabled) and (RECUsuarios.Caixa));
  end;
end;

procedure TFrmPrincipal.ACTADM_DENIEDExecute(Sender: TObject);
begin
  raise exception.Create(PChar(ACTADM_DENIED.Caption) + #13 +
                         PChar(ACTADM_DENIED.Hint));
end;

procedure TFrmPrincipal.ACTMU_PARAMETROSExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTMU_BACKUPExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTMU_FIS_NFE_PSQExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTMU_FIS_NFE_SAIExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTMU_FIS_CFE_EDTExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTMU_EtiquetasExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTMU_SAIDAExecute(Sender: TObject);
begin
  //if ATHR_ITEM = 0 THEN
  Close;
end;

procedure TFrmPrincipal.ACTMU_ABOUTExecute(Sender: TObject);
begin
  FrmSobre := TFrmSobre.Create(Application);
  FrmSobre.Show;
end;

procedure TFrmPrincipal.ACTRelatoriosExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTPRN_EXEExecute(Sender: TObject);
begin
  if oEmpty(ACTPRN_EXE.Hint) then
  ACTPRN_EXE.Hint := 'Relatórios';

  try
    oPrinterSelect(Handle,ACTPRN_EXE.Hint);
  finally
    ACTPRN_EXE.Hint := EmptyStr;
  end;
end;

procedure TFrmPrincipal.ACTPRN_ADMExecute(Sender: TObject);
begin
  FrmImpressoras := TFrmImpressoras.Create(Application);
  FrmImpressoras.Show;
end;

procedure TFrmPrincipal.ACTUSER_LOGINExecute(Sender: TObject);
var
  i: integer;
begin
  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  FrmLogin         := TFrmLogin.create(Nil);
  FrmLogin.Caption := 'Login de Usuário';

  try
    FrmLogin.ShowModal;
  finally
    try
      if (FBird.DBErp.TestConnected) and (FrmLogin.RECLogin.Selected) then
          _USER_LOGIN(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP) else
      begin
        RECUsuarios.Id := 0;
        Close;
      end;
    finally
      FreeAndNil(FrmLogin);
    end;
  end;
end;

procedure TFrmPrincipal.ACTUSER_LOGINUpdate(Sender: TObject);
begin
  if BLBUSER_LOGIN.Caption <> RECUsuarios.Nome then
  BLBUSER_LOGIN.Caption := RECUsuarios.Nome;
end;

procedure TFrmPrincipal.ACTUSER_PASSWORDExecute(Sender: TObject);
begin
  FrmSenha := TFrmSenha.Create(Application);
  FrmSenha.Show;
end;

procedure TFrmPrincipal._USER_LOGIN(AIDUSER: Variant; AIDEP,ADEEP: String);
var
  AREC_SHE_DEF: TREC_SHE_DEF;
begin
  if oEmpty(AIDUSER) then
  Exit;

  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_USER');
      SQL.Add('SET    IDEP_UEP = ''' + AIDEP + ''',');
      SQL.Add('       IDEP_UDT = CURRENT_TIMESTAMP,');

      SQL.Add('       IP   = ''' + RECParametros.IP   + ''',');
      SQL.Add('       HOST = ''' + RECParametros.HOST + '''' );
      SQL.Add('WHERE  ID   = ''' + AIDUSER + '''');
      ExecQuery;
    end;
    oCTransact(TFBEdicao);

    bExecParametros(AIDEP);
    bExecUsuarios(AIDUSER);
    bExecCaixa;

    { PATH - Área de Trabalho }
    EPrincipal.InitialDir := RECParametros.SHE_PATH_DESKTOP;

    if EPrincipal.InitialDir  = EmptyStr then
       EPrincipal.InitialDir := 'C:\Sheild\Coletor';
  except
    { nothing }
  end;

  oIREC_SHE_DEF(AREC_SHE_DEF);
  try
  finally
    oFREC_SHE_DEF(AREC_SHE_DEF);
  end;

  with FrmPrincipal do
  begin
    { RODAPÉ }
    SBRodape.Width := Screen.Width + 1;

    { EMPRESA }
    SBRodape.Panels[0].Text  := RECParametros.EP_NO;
    SBRodape.Panels[0].Width := Length(SBRodape.Panels[0].Text) * 12;

    { USUÁRIO }
    SBRodape.Panels[1].Text  := oPrimeiraLetraMaiuscula(RECUsuarios.Login) + ' - ' + oPrimeiraLetraMaiuscula(RECUsuarios.Cargo);
    SBRodape.Panels[1].Width := Length(SBRodape.Panels[1].Text) * IFThen(Length(SBRodape.Panels[1].Text) > 15,7,9);

    { DEPARTAMENTO }
    SBRodape.Panels[2].Text  := 'Departamento de ' + oPrimeiraLetraMaiuscula(RECUsuarios.Departamento);
    SBRodape.Panels[2].Width := Length(SBRodape.Panels[2].Text) * IFThen(Length(SBRodape.Panels[2].Text) > 15,7,9);

    { HOST }
    SBRodape.Panels[5].Text  := RECParametros.ServerHost;
    SBRodape.Panels[5].Width := Length(SBRodape.Panels[5].Text) * IFThen(Length(SBRodape.Panels[5].Text) > 15,6,8);

    { SHEILD }
    SBRodape.Panels[3].Text := EmptyStr;
    SBRodape.Panels[7].Text := 'Copyright © ' + oStrZero(YearOf(Date),4) + ' Sheild';
    SBRodape.Refresh;

    _oLoadJPG(Nil,Nil,IPrincipal,True,'JPG_SPLASH');
    Repaint;
  end;

  { ADMIN }
  if RECUsuarios.ID > 0 then
  //BSIADM.Visible := ivNever;
end;

end.
