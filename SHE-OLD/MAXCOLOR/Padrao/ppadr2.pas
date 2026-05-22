unit ppadr2;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar;

type
  Tfrmpadr2 = class(TForm)
    SBMenuPrincipal: TSpeedBar;
    SSMenuPrincipal: TSpeedbarSection;
    siPSQ: TSpeedItem;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    Consulta: TIBQuery;
    DTSCadastro: TDataSource;
    Cadastro: TIBQuery;
    siPRN: TSpeedItem;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    pnldir: TPanel;
    pnlpri: TPanel;
    pnldbg: TPanel;
    pnlbot: TPanel;
    pTRA: TIBTransaction;
    pEVE: TIBEvents;
    pSP: TIBStoredProc;
    gbDET: TGroupBox;
    DBGConsulta: TdxDBGrid;
    ILMenuPrincipal: TImageList;
    ILMenuEdicao: TImageList;
    sbMSG: TStatusBar;
    GBMenuEdicao: TGroupBox;
    SBMenuEdicao: TSpeedBar;
    SSMenuEdicao: TSpeedbarSection;
    SIMEAppend: TSpeedItem;
    SIMEEdit: TSpeedItem;
    SIMEDelete: TSpeedItem;
    SIMEPost: TSpeedItem;
    SIMECancel: TSpeedItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure DBGConsultaBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure siREFClick(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure siPRNClick(Sender: TObject);
    procedure SIMEAppendClick(Sender: TObject);
    procedure SIMEEditClick(Sender: TObject);
    procedure SIMEDeleteClick(Sender: TObject);
    procedure SIMEPostClick(Sender: TObject);
    procedure SIMECancelClick(Sender: TObject);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaDblClick(Sender: TObject);
    procedure pEVEEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
  public
    { Public declarations }
    Editado: Boolean;
    cEvent : String;
    Campo_Pesquisa: String;

    procedure ExecuteEvent;
  end;

var
  frmpadr2: Tfrmpadr2;

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmpadr2.FormCreate(Sender: TObject);
begin
  Screen.Cursor  := crAppStart;
  campo_pesquisa := '';
  Tag := 1;

  AUTORIZACAO      := '';
  TP_AUTORIZACAO   := '';
  
  SetLength(PCampo,5);
  oOTransact(IBTra);
end;

procedure Tfrmpadr2.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;

  { Eventos }
  cEvent := Trim(cEvent);
  if cEvent <> '' then
  with pEVE do
  begin
    UnregisterEvents;
    Events.Add(cEvent);
    RegisterEvents;
  end;

  if not Cadastro.Active then
  Cadastro.Open;
end;

procedure Tfrmpadr2.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  OnActivate    := Nil;
  Tag := 0;
end;

procedure Tfrmpadr2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Screen.Cursor := crAppStart;

  pEve.UnRegisterEvents;
  Action := caFree;
end;

procedure Tfrmpadr2.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  oFTransact(IBTra);
  Screen.Cursor := crDefault;
end;

procedure Tfrmpadr2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SISair.Click;
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
       118      : SIPsq.Click;
       116      : SIRef.Click;
  end;
end;

procedure Tfrmpadr2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  SIPrn.Click else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure Tfrmpadr2.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if (Showing) and ((HelpContext = 0) or (HelpContext = 1)) then
  begin
    { Definição sobre o Painel de utilitários do form principal }
    HelpContext := IFThen((Screen.Height > 768),0,1);

    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if FrmPosition = poDefault then
    begin
      if (AlphaBlendValue = 0) and (HelpContext = 0) then
      begin
        { Width padrão acima de 768 = 1032 }
        Height := Trunc((R.Bottom - R.Top) * 0.9);
        Top    := ((R.Bottom - R.Top ) - Height) div 2;
        Left   := ((R.Right  - R.Left) - Width ) div 2;
      end else
      begin
        Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
        Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
        Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
        Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
      end;
    end else
    begin
      if FrmStyle = fsNormal then
      begin
        Top  := R.Top + ((R.Bottom - R.Top ) - Height) div 2;
        Left :=         ((R.Right  + R.Left) - Width ) div 2;
      end else
      begin
        Top  := ((R.Bottom - R.Top ) - Height) div 2;
        Left := ((R.Right  - R.Left) - Width ) div 2;
      end;
    end;
  end;
end;

procedure Tfrmpadr2.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  Paint;
end;

procedure Tfrmpadr2.siREFClick(Sender: TObject);
begin
  oRefresh(Cadastro);
end;

procedure Tfrmpadr2.siPSQClick(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure Tfrmpadr2.siPRNClick(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure Tfrmpadr2.siSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmpadr2.SIMEAppendClick(Sender: TObject);
begin
  if (PCampo[0] <> EmptyStr) and (PCampo[1] <> EmptyStr) and (PCampo[2] <> EmptyStr) and (PCampo[3] <> EmptyStr) then
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
  raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
end;

procedure Tfrmpadr2.SIMEEditClick(Sender: TObject);
begin
  if (PCampo[0] <> EmptyStr) and (PCampo[1] <> EmptyStr) and (PCampo[2] <> EmptyStr) and (PCampo[3] <> EmptyStr) then
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
  raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
end;

procedure Tfrmpadr2.SIMEDeleteClick(Sender: TObject);
begin
  if (PCampo[0] <> EmptyStr) and (PCampo[1] <> EmptyStr) and (PCampo[2] <> EmptyStr) and (PCampo[3] <> EmptyStr) then
  if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,PCampo[0],PCampo[1],PCampo[2],PCampo[3],false) then
  raise exception.Create('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.');
end;

procedure Tfrmpadr2.SIMEPostClick(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure Tfrmpadr2.SIMECancelClick(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure Tfrmpadr2.CadastroAfterOpen(DataSet: TDataSet);
begin
  SBMsg.Panels[0].Text := 'Consulta';
end;

procedure Tfrmpadr2.DBGConsultaBackgroundDrawEvent(Sender: TObject;
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

procedure Tfrmpadr2.ExecuteEvent;
begin
  if cEvent <> '' then
  try
    oOTransact(pTra);

    pSP.StoredProcName     := 'SP_EVENT';
    pSP.Prepare;
    pSP.Params[0].AsString := cEvent;
    pSP.ExecProc;

    pTra.Commit;
    Editado := True;
  except
    on E: Exception do
    begin
      pTra.Rollback;
      Editado := False;

      raise exception.Create('Falha ao tentar salvar cadastro !'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Erro: '+E.Message);
    end;
  end;
end;

procedure Tfrmpadr2.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SISair.Click;
       vk_insert: SIMEAppend.Click;
       vk_return: SIMEEdit.Click;
       vk_delete: SIMEDelete.Click;
  end;
end;

procedure Tfrmpadr2.DBGConsultaDblClick(Sender: TObject);
begin
  SIMEEdit.Click;
end;

procedure Tfrmpadr2.pEVEEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Cadastro);
end;

end.
