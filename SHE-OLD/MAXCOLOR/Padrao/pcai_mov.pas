unit pcai_mov;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, ImgList, StdCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, IBStoredProc, DB, IBCustomDataSet,
  IBQuery, IBDatabase, dxDBTLCl, dxGrClms, dxEdLib, dxExEdtr, Menus,
  rxSpeedbar, math, StrUtils;

type
  Tfrmcai_mov = class(TForm)
    imageOPC: TImageList;
    imageITEM: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    siREL: TSpeedItem;
    pnlpri: TPanel;
    GroupBox1: TGroupBox;
    dbgcai_laf: TdxDBGrid;
    IBTra: TIBTransaction;
    cai_laf: TIBQuery;
    dtscai_laf: TDataSource;
    ibSP: TIBStoredProc;
    consulta: TIBQuery;
    cai_lafID: TIntegerField;
    cai_lafCAI_CDEP: TIntegerField;
    cai_lafCAI_CDCX: TSmallintField;
    cai_lafCAI_DECX: TIBStringField;
    cai_lafCAI_DABR: TDateField;
    cai_lafCAI_HABR: TTimeField;
    cai_lafCAI_VABR: TIBBCDField;
    cai_lafCAI_DFEC: TDateField;
    cai_lafCAI_HFEC: TTimeField;
    cai_lafCAI_VFEC: TIBBCDField;
    cai_lafCAI_CUSU: TIntegerField;
    cai_lafCAI_IP: TIBStringField;
    cai_lafCAI_TERM: TIBStringField;
    cai_lafPAR_FANT: TIBStringField;
    cai_lafUSU_DUSU: TIBStringField;
    dbgcai_lafCAI_DECX: TdxDBGridMaskColumn;
    dbgcai_lafCAI_DABR: TdxDBGridDateColumn;
    dbgcai_lafCAI_HABR: TdxDBGridTimeColumn;
    dbgcai_lafCAI_VABR: TdxDBGridMaskColumn;
    dbgcai_lafCAI_DFEC: TdxDBGridDateColumn;
    dbgcai_lafCAI_HFEC: TdxDBGridTimeColumn;
    dbgcai_lafCAI_VFEC: TdxDBGridMaskColumn;
    dbgcai_lafPAR_FANT: TdxDBGridMaskColumn;
    dbgcai_lafUSU_DUSU: TdxDBGridMaskColumn;
    pnlbot: TPanel;
    GroupBox2: TGroupBox;
    dbgcai_mov: TdxDBGrid;
    cai_mov: TIBQuery;
    dtscai_mov: TDataSource;
    cai_movID: TIntegerField;
    cai_movCAI_CCAB: TIntegerField;
    cai_movCAI_CTSR: TIntegerField;
    cai_movCAI_DESC: TIBStringField;
    cai_movCAI_DOCT: TIBStringField;
    cai_movCAI_DCAD: TDateField;
    cai_movCAI_HCAD: TTimeField;
    cai_movCAI_SANT: TIBBCDField;
    cai_movCAI_CRED: TIBBCDField;
    cai_movCAI_DEBI: TIBBCDField;
    cai_movCAI_SATU: TIBBCDField;
    dbgcai_movCAI_DESC: TdxDBGridMaskColumn;
    dbgcai_movCAI_DOCT: TdxDBGridMaskColumn;
    dbgcai_movCAI_DCAD: TdxDBGridDateColumn;
    dbgcai_movCAI_HCAD: TdxDBGridTimeColumn;
    cai_lafCAI_CRED: TIBBCDField;
    cai_lafCAI_DEBI: TIBBCDField;
    cai_lafCAI_SATU: TIBBCDField;
    siPED: TSpeedItem;
    siCAI: TSpeedItem;
    cai_movCAI_VANT: TCurrencyField;
    cai_movCAI_VENT: TCurrencyField;
    cai_movCAI_VSAI: TCurrencyField;
    cai_movCAI_VATU: TCurrencyField;
    dbgcai_movCAI_VENT: TdxDBGridColumn;
    dbgcai_movCAI_VSAI: TdxDBGridColumn;
    cai_lafCAI_VENT: TCurrencyField;
    cai_lafCAI_VSAI: TCurrencyField;
    cai_lafCAI_VATU: TCurrencyField;
    dbgcai_lafCAI_VENT: TdxDBGridColumn;
    dbgcai_lafCAI_VSAI: TdxDBGridColumn;
    dbgcai_lafCAI_VATU: TdxDBGridColumn;
    cai_movCAI_CONC: TSmallintField;
    siCAR: TSpeedItem;
    siBAN: TSpeedItem;
    PopupMenu1: TPopupMenu;
    AcertodeCaixa1: TMenuItem;
    aux: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure cai_lafAfterOpen(DataSet: TDataSet);
    procedure siPEDClick(Sender: TObject);
    procedure siCAIClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cai_movCalcFields(DataSet: TDataSet);
    procedure cai_lafCalcFields(DataSet: TDataSet);
    procedure siCARClick(Sender: TObject);
    procedure siBANClick(Sender: TObject);
    procedure AcertodeCaixa1Click(Sender: TObject);
    procedure siREFClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;

    procedure AJUSTAFORM;
  public
    { Public declarations }
  end;

var
  frmcai_mov: Tfrmcai_mov;

implementation

uses uPrincipal, prelatorio_geral;

{$R *.dfm}

procedure Tfrmcai_mov.AJUSTAFORM;
begin
  Self.top    := 0;
  Self.left   := 0;
  Self.Height := frmprincipal.pnCustomize.Height-4;
  Self.Width  := TELA_WIDTH;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    Left    := 7;
    Top     := 50;
    Width   := Screen.Width-15;

    if Top <= 50 then
       Height := frmprincipal.pnCustomize.Height+3
    else
       Height := frmprincipal.pnCustomize.Height+4;
  end;
end;

procedure Tfrmcai_mov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  if frmcai_mov <> nil then
  begin
    frmcai_mov.Release;
    frmcai_mov := nil;
  end;
end;

procedure Tfrmcai_mov.FormCreate(Sender: TObject);
begin
  AJUSTAFORM;
  with cai_laf do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAI_LAF.*,PAR_SIS.PAR_FANT,CAD_USU.USU_DUSU');
    SQL.Add('FROM     CAI_LAF,PAR_SIS,CAD_USU');
    SQL.Add('WHERE    CAI_LAF.CAI_CDEP = PAR_SIS.ID');
    SQL.Add('AND      CAI_LAF.CAI_CUSU = CAD_USU.USU_CUSU');
    SQL.Add('AND      CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;
  siREF.Click;
end;

procedure Tfrmcai_mov.siSAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcai_mov.cai_lafAfterOpen(DataSet: TDataSet);
begin
  cai_mov.Close;
  cai_mov.Open;
end;

procedure Tfrmcai_mov.siPEDClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsCAI_MOV.TabVisible   := true;
    frmrelatorio_geral.pcMAIN.ActivePage      := frmrelatorio_geral.tsCAI_MOV;
    frmrelatorio_geral.cbCAI_MOV_TREL.Text    := 'FLUXO GERAL DE VENDAS - SINTÉTICO';
    frmrelatorio_geral.cbCAI_MOV_DATA.Text    := '';
    frmrelatorio_geral.cbCAI_MOV_DFOR.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_CPRO.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_TIPO.Enabled := false;


    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Clear;
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Clear;
    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO GERAL DE VENDAS - SINTÉTICO');
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO GERAL DE VENDAS - SINTÉTICO');
    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO GERAL DE VENDAS - ANALÍTICO');
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO GERAL DE VENDAS - ANALÍTICO');

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('ORDER BY ID DESC');
      Open;

      frmrelatorio_geral.cbCAI_MOV_CDCX.Text := fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime);

      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_CDCX.Values.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
        frmrelatorio_geral.cbCAI_MOV_CDCX.Descriptions.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CLI_FANT');
      SQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_CLI.ID = PED_VEN_CAB.ROM_CCLI');
      SQL.Add('GROUP BY CLI_FANT');
      SQL.Add('ORDER BY CLI_FANT');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   REP_FANT');
      SQL.Add('FROM     CAD_REP,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_REP.ID = PED_VEN_CAB.ROM_CREP');
      SQL.Add('GROUP BY REP_FANT');
      SQL.Add('ORDER BY REP_FANT');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   USU_DUSU');
      SQL.Add('FROM     CAD_USU,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_USU.USU_CUSU = PED_VEN_CAB.ROM_CVEN');
      SQL.Add('GROUP BY USU_DUSU');
      SQL.Add('ORDER BY USU_DUSU');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
      SQL.Add('ORDER BY VEN_TIPO');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_STCO.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAI_MOV_STCO.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmcai_mov.siCAIClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsCAI_MOV.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAI_MOV;
    frmrelatorio_geral.cbCAI_MOV_DATA.Text  := '';
    frmrelatorio_geral.cbCAI_MOV_TREL.Text  := '';
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Clear;
    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Clear;
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO DE CAIXA - SINTÉTICO');
    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO DE CAIXA - SINTÉTICO');
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO DE CAIXA - ANALÍTICO');
    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO DE CAIXA - ANALÍTICO');
    frmrelatorio_geral.cbCAI_MOV_STCO.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_DFOR.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_CPRO.Enabled := false;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('ORDER BY ID DESC');
      Open;

      frmrelatorio_geral.cbCAI_MOV_CDCX.Text := fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime);

      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_CDCX.Values.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
        frmrelatorio_geral.cbCAI_MOV_CDCX.Descriptions.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CLI_FANT');
      SQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_CLI.ID = PED_VEN_CAB.ROM_CCLI');
      SQL.Add('GROUP BY CLI_FANT');
      SQL.Add('ORDER BY CLI_FANT');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   REP_FANT');
      SQL.Add('FROM     CAD_REP,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_REP.ID = PED_VEN_CAB.ROM_CREP');
      SQL.Add('GROUP BY REP_FANT');
      SQL.Add('ORDER BY REP_FANT');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   USU_DUSU');
      SQL.Add('FROM     CAD_USU,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_USU.USU_CUSU = PED_VEN_CAB.ROM_CVEN');
      SQL.Add('GROUP BY USU_DUSU');
      SQL.Add('ORDER BY USU_DUSU');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   VEN_TIPO');
      SQL.Add('FROM     TAB_COB');
      SQL.Add('ORDER BY VEN_TIPO');
      Open;

      frmrelatorio_geral.cbCAI_MOV_TIPO.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_TIPO.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
      SQL.Add('ORDER BY VEN_TIPO');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_STCO.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAI_MOV_STCO.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmcai_mov.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_return,40: if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                        selectNext (activecontrol, true, true);
       38          : if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                       selectNext (activecontrol, false, true);
       116         : begin
                       with consulta do
                       begin
                         SQL.Clear;
                         SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
                         SQL.Add('WHERE  CAI_CCAB = '''+cai_lafID.AsString+'''');
                         Open;
                       end;

                       with frmprincipal.sp_sql do
                       begin
                         ibSP.StoredProcName := 'SP_SQL';
                         SQL.Clear;
                         SQL.Add('UPDATE CAI_LAF');
                         SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
                         SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
                         SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
                         SQL.Add('WHERE  ID       = '''+cai_lafID.AsString+'''');

                         ibSP.Prepare;
                         ibSP.ParamByName('sqltexto').Value := frmprincipal.sp_sql.SQL.Text;
                         ibSP.ExecProc;
                       end;
                       cai_laf.Close;
                       cai_laf.Open;
                     end;
  end;
end;

procedure Tfrmcai_mov.cai_movCalcFields(DataSet: TDataSet);
begin
  cai_movCAI_VANT.Value := cai_movCAI_SANT.AsFloat;
  cai_movCAI_VENT.Value := cai_movCAI_CRED.AsFloat;
  cai_movCAI_VSAI.Value := cai_movCAI_DEBI.AsFloat;
  cai_movCAI_VATU.Value := cai_movCAI_SATU.AsFloat;

  if cai_movCAI_CONC.AsInteger > 1 then
  begin
    cai_movCAI_VANT.Value := cai_movCAI_SANT.AsFloat*cai_movCAI_CONC.AsInteger;
    cai_movCAI_VENT.Value := cai_movCAI_CRED.AsFloat*cai_movCAI_CONC.AsInteger;
    cai_movCAI_VSAI.Value := cai_movCAI_DEBI.AsFloat*cai_movCAI_CONC.AsInteger;
    cai_movCAI_VATU.Value := cai_movCAI_SATU.AsFloat*cai_movCAI_CONC.AsInteger;
  end;  
end;

procedure Tfrmcai_mov.cai_lafCalcFields(DataSet: TDataSet);
begin
  cai_lafCAI_VENT.Value := cai_lafCAI_CRED.AsFloat;
  cai_lafCAI_VSAI.Value := cai_lafCAI_DEBI.AsFloat;
  cai_lafCAI_VATU.Value := cai_lafCAI_SATU.AsFloat;
end;

procedure Tfrmcai_mov.siCARClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsCAI_MOV.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAI_MOV;
    frmrelatorio_geral.cbCAI_MOV_DATA.Text  := '';
    frmrelatorio_geral.cbCAI_MOV_TREL.Text  := 'FLUXO DE CAIXA DE CARTEIRA';
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Clear;
    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Clear;
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO DE CAIXA DE CARTEIRA');
    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO DE CAIXA DE CARTEIRA');
    frmrelatorio_geral.cbCAI_MOV_STCO.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_DFOR.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_CPRO.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_TIPO.Enabled := false;

    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Clear;
    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Clear;
    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('PENDENTE');
    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('PENDENTE');
    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('PAGO');
    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('PAGO');
    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('CANCELADO');
    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('CANCELADO');
    frmrelatorio_geral.cbCAI_MOV_STFI.Text  := 'PENDENTE';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('ORDER BY ID DESC');
      Open;

      frmrelatorio_geral.cbCAI_MOV_CDCX.Text := 'TODOS';

      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_CDCX.Values.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
        frmrelatorio_geral.cbCAI_MOV_CDCX.Descriptions.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CLI_FANT');
      SQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_CLI.ID = PED_VEN_CAB.ROM_CCLI');
      SQL.Add('GROUP BY CLI_FANT');
      SQL.Add('ORDER BY CLI_FANT');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   REP_FANT');
      SQL.Add('FROM     CAD_REP,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_REP.ID = PED_VEN_CAB.ROM_CREP');
      SQL.Add('GROUP BY REP_FANT');
      SQL.Add('ORDER BY REP_FANT');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   USU_DUSU');
      SQL.Add('FROM     CAD_USU,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_USU.USU_CUSU = PED_VEN_CAB.ROM_CVEN');
      SQL.Add('GROUP BY USU_DUSU');
      SQL.Add('ORDER BY USU_DUSU');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
      SQL.Add('ORDER BY VEN_TIPO');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_STCO.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAI_MOV_STCO.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;

    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmcai_mov.siBANClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsCAI_MOV.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAI_MOV;
    frmrelatorio_geral.cbCAI_MOV_DATA.Text  := '';
    frmrelatorio_geral.cbCAI_MOV_TREL.Text  := 'FLUXO DE CAIXA BANCÁRIO';
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Clear;
    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Clear;
    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO DE CAIXA BANCÁRIO');
    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO DE CAIXA BANCÁRIO');
    frmrelatorio_geral.cbCAI_MOV_STCO.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_DFOR.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_CPRO.Enabled := false;
    frmrelatorio_geral.cbCAI_MOV_TIPO.Enabled := false;    

    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Clear;
    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Clear;
    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('PENDENTE');
    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('PENDENTE');
    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('PAGO');
    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('PAGO');
    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('CANCELADO');
    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('CANCELADO');
    frmrelatorio_geral.cbCAI_MOV_STFI.Text  := 'PENDENTE';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
      SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('ORDER BY ID DESC');
      Open;

      frmrelatorio_geral.cbCAI_MOV_CDCX.Text := 'TODOS';

      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_CDCX.Values.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
        frmrelatorio_geral.cbCAI_MOV_CDCX.Descriptions.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CLI_FANT');
      SQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_CLI.ID = PED_VEN_CAB.ROM_CCLI');
      SQL.Add('GROUP BY CLI_FANT');
      SQL.Add('ORDER BY CLI_FANT');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   REP_FANT');
      SQL.Add('FROM     CAD_REP,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_REP.ID = PED_VEN_CAB.ROM_CREP');
      SQL.Add('GROUP BY REP_FANT');
      SQL.Add('ORDER BY REP_FANT');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   USU_DUSU');
      SQL.Add('FROM     CAD_USU,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    CAD_USU.USU_CUSU = PED_VEN_CAB.ROM_CVEN');
      SQL.Add('GROUP BY USU_DUSU');
      SQL.Add('ORDER BY USU_DUSU');
      Open;

      frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add('TODOS');
      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
      SQL.Add('ORDER BY VEN_TIPO');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAI_MOV_STCO.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAI_MOV_STCO.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;

    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmcai_mov.AcertodeCaixa1Click(Sender: TObject);
begin
  if oYesNo(handle,'Confirma acerto do caixa ?') = mrno then
  abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,CAI_DESC,CAI_CRED,CAI_DEBI FROM CAI_MOV');
    Open;
  end;

  while not consulta.Eof do
  begin
    with aux do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_TSR');
      SQL.Add('WHERE  CAI_DESC = '''+consulta.Fields[1].AsString+'''');
      Open;

      if fields[0].IsNull then
      begin
        SQL.Clear;
        SQL.Add('INSERT INTO CAI_TSR (ID,CAI_DESC,CAI_TIPO)');
        SQL.Add('VALUES (');
        SQL.Add('''0'',');
        SQL.Add(''''+consulta.Fields[1].AsString+''',');
        SQL.Add('''ENTRADA'')');
        ExecSQL;
        IBTra.CommitRetaining;

        SQL.Clear;
        SQL.Add('SELECT ID FROM CAI_TSR');
        SQL.Add('WHERE  CAI_DESC = '''+consulta.Fields[1].AsString+'''');
        Open;
      end;

      if not fields[0].IsNull then
      begin
        aux.Tag := fields[0].AsInteger;

        SQL.Clear;
        SQL.Add('UPDATE CAI_MOV');
        SQL.Add('SET    CAI_CTSR = '''+inttostr(aux.Tag)+'''');
        SQL.Add('WHERE  ID = '''+consulta.Fields[0].AsString+'''');
        ExecSQL;
        IBTra.CommitRetaining;
      end;
    end;

    if consulta.Fields[3].AsFloat > 0 then
    begin
      with aux do
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAI_TSR');
        SQL.Add('SET    CAI_TIPO = ''SAÍDA''');
        SQL.Add('WHERE  ID = '''+inttostr(aux.Tag)+'''');
        ExecSQL;
        IBTra.CommitRetaining;
      end;
    end;
    consulta.Next;
  end;

  ShowMessage('OK');
end;

procedure Tfrmcai_mov.siREFClick(Sender: TObject);
var
  wRec: TBookMark;
begin
  wRec := cai_laf.GetBookmark;

  while not cai_mov.Eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT    FIN_TIPO,SUM(FIN_VALO) "FIN_VALO"');
      SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     CAD_CLI.ID = FIN_CCLI');
      SQL.Add('AND       CAD_REP.ID = FIN_CREP');
      SQL.Add('AND       ROM_CDBX   = FIN_CDBX');
      SQL.Add('AND       USU_CUSU   = FIN_CVEN');
      SQL.Add('AND       FIN_TIPO = '''+cai_movCAI_DESC.AsString+'''');
      SQL.Add('AND       FIN_CONC = '''+cai_movCAI_CONC.AsString+'''');
      SQL.Add('AND       FIN_CDCX = '''+cai_lafID.AsString+'''');
      SQL.Add('GROUP BY 1');
      SQL.Add('UNION');
      SQL.Add('SELECT    FIN_TIPO,SUM(FIN_VALO) "FIN_VALO"');
      SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_BAN_BAI" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     CAD_CLI.ID = FIN_CCLI');
      SQL.Add('AND       CAD_REP.ID = FIN_CREP');
      SQL.Add('AND       ROM_CDBX   = FIN_CDBX');
      SQL.Add('AND       USU_CUSU   = FIN_CVEN');
      SQL.Add('AND       FIN_TIPO = '''+cai_movCAI_DESC.AsString+'''');
      SQL.Add('AND       FIN_CONC = '''+cai_movCAI_CONC.AsString+'''');
      SQL.Add('AND       FIN_CDCX = '''+cai_lafID.AsString+'''');
      SQL.Add('GROUP BY 1');
      Open;
    end;

    if not consulta.Fields[0].IsNull then
    begin
      with aux do
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAI_MOV');
        SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[1].AsString,',','.')+'''');
        SQL.Add('WHERE  ID       = '''+cai_movID.AsString+'''');
        ExecSQL;
        IBTra.CommitRetaining;

        SQL.Clear;
        SQL.Add('UPDATE CAI_MOV');
        SQL.Add('SET    CAI_SATU = CAI_CRED-CAI_DEBI');
        SQL.Add('WHERE  ID       = '''+cai_movID.AsString+'''');
        ExecSQL;
        IBTra.CommitRetaining;
      end;
    end;
    cai_mov.Next;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+cai_lafID.AsString+'''');
    Open;
  end;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+'''');
    SQL.Add('WHERE  ID       = '''+cai_lafID.AsString+'''');
    ExecSQL;
    IBTra.CommitRetaining;

    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_SATU = CAI_CRED-CAI_DEBI');
    SQL.Add('WHERE  ID       = '''+cai_lafID.AsString+'''');
    ExecSQL;
    IBTra.CommitRetaining;
  end;

  cai_laf.Close;
  cai_laf.Open;

  if (wRec = Nil) or (cai_laf.Fields[0].IsNull) then cai_laf.last
  else cai_laf.GotoBookmark(wRec);
       cai_laf.FreeBookmark(wRec);
end;

procedure Tfrmcai_mov.FormPaint(Sender: TObject);
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

procedure Tfrmcai_mov.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  Paint;
end;

procedure Tfrmcai_mov.FormDestroy(Sender: TObject);
begin
  oFTransact(IBTRA);
end;

procedure Tfrmcai_mov.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;
end;

end.
