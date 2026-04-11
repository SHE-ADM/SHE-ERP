unit pcai_mov;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, ImgList, StdCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, IBStoredProc, DB, IBCustomDataSet, math, StrUtils,
  IBQuery, IBDatabase, dxDBTLCl, dxGrClms, dxEdLib, dxExEdtr, Menus,
  rxSpeedbar;

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
    cai_lafUSU_DUSU: TIBStringField;
    dbgcai_lafCAI_DECX: TdxDBGridMaskColumn;
    dbgcai_lafCAI_DABR: TdxDBGridDateColumn;
    dbgcai_lafCAI_HABR: TdxDBGridTimeColumn;
    dbgcai_lafCAI_VABR: TdxDBGridMaskColumn;
    dbgcai_lafCAI_DFEC: TdxDBGridDateColumn;
    dbgcai_lafCAI_HFEC: TdxDBGridTimeColumn;
    dbgcai_lafCAI_VFEC: TdxDBGridMaskColumn;
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
    aux: TIBQuery;
    ConsultaAux: TIBQuery;
    cai_lafFANTASIA: TIBStringField;
    cai_movCAI_CDBX: TIntegerField;
    cai_movCAI_BCON: TIntegerField;
    cai_movCAI_DCON: TIBStringField;
    cai_movC_VCRD: TFloatField;
    cai_movC_VDEB: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure cai_lafAfterOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cai_movCalcFields(DataSet: TDataSet);
    procedure cai_lafCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure siPEDClick(Sender: TObject);
    procedure siCAIClick(Sender: TObject);
    procedure siCARClick(Sender: TObject);
    procedure siBANClick(Sender: TObject);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;
  end;

var
  frmcai_mov: Tfrmcai_mov;

implementation

uses uPrincipal,  bPrincipal;

{$R *.dfm}

procedure Tfrmcai_mov.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAIXA'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Caixa';
  REC_SHE_DEF.GReferencia := 'Fluxo de Caixa';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  Screen.Cursor := crAppStart;

  oOTransact(IBTra);
  with cai_laf do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAI_LAF.*,FANTASIA,CAD_USU.USU_DUSU');
    SQL.Add('FROM     CAI_LAF,TAB_PAR_SIS AS EP,CAD_USU');
    SQL.Add('WHERE    CAI_LAF.CAI_CDEP = EP.ID'  );
    SQL.Add('AND      CAI_LAF.CAI_CUSU = CAD_USU.USU_CUSU');
    SQL.Add('AND      CAI_CDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('ORDER BY ID DESC');
    Prepare;
    Open;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_MOV');
    SQL.Add('SET    CAI_CRED = 0,');
    SQL.Add('       CAI_DEBI = 0 ');
    SQL.Add('WHERE  CAI_CCAB = '''+IntToStr(CAI_LAFID.AsInteger)+'''');
    SQL.Add('AND    CAI_BCON = 0');
    SQL.Add('AND    CAI_CTSR <> 533');
    ExecSQL;
  end;

  while not cai_mov.Eof do
  begin
    if (cai_movCAI_BCON.AsInteger = 0) and (cai_movCAI_CTSR.AsInteger <> 533) then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT    FIN_TIPO,SUM(FIN_VALO) "FIN_VALO"');
        SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+oREPZero('FIN_REC_BAN_BAI','_',RECParametros.EP_ID,3)+' "FIN_REC_BAN_BAI" ,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
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
        SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+oREPZero('FIN_REC_CAR_BAI','_',RECParametros.EP_ID,3)+' "FIN_REC_BAN_BAI" ,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
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

      if not consulta.Eof then
      with aux do
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAI_MOV');
        SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[1].AsString,',','.')+'''');
        SQL.Add('WHERE  ID       = '''+cai_movID.AsString+'''');
        SQL.Add('AND    CAI_CTSR <> 533');
        ExecSQL;

        SQL.Clear;
        SQL.Add('UPDATE CAI_MOV');
        SQL.Add('SET    CAI_SATU = CAI_CRED-CAI_DEBI');
        SQL.Add('WHERE  ID       = '''+cai_movID.AsString+'''');
        SQL.Add('AND    CAI_CTSR <> 533');
        ExecSQL;
      end;
    end;
    cai_mov.Next;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+cai_lafID.AsString+'''');
    SQL.Add('AND    CAI_CTSR <> 533');
    Open;
  end;

  with aux do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+'''');
    SQL.Add('WHERE  ID       = '''+cai_lafID.AsString+'''');
    ExecSQL;

    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_SATU = CAI_CRED-CAI_DEBI');
    SQL.Add('WHERE  ID       = '''+cai_lafID.AsString+'''');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+IntToStr(CAI_LAFID.AsInteger)+'''');
    SQL.Add('AND    CAI_BCON = 0');
    SQL.Add('AND    CAI_SATU = 0');
    SQL.Add('AND    CAI_CTSR <> 533');
    ExecSQL;
  end;

  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('MERGE INTO CAI_MOV AS PK');
    SQL.Add('USING (');
    SQL.Add('       SELECT '+RECParametros.CDCX+' AS IDPK,FSTRZERO(533,20) AS DEPK,533 AS CDLC,''PEDIDOS EM ABERTO'' AS DELC,SUM(ROM_TCDE) AS VCRD');
    SQL.Add('       FROM   '+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' AS PK ');
    SQL.Add('       JOIN     TAB_PED  AS TPD ON (TPD.VEN_TIPO = PK.ROM_STPD)');
    SQL.Add('       WHERE    EXISTS (SELECT ID FROM TAB_STA WHERE DESCRICAO = ROM_STFI AND PED_PEN = 1)');
    SQL.Add('       AND      TPD.VEN_FATU = 1');
    SQL.Add('       GROUP BY 1,2,3,4) AS FK');
    SQL.Add('ON   PK.CAI_CTSR = FK.CDLC');
    SQL.Add('WHEN MATCHED THEN');
    SQL.Add('     UPDATE SET PK.CAI_CCAB = FK.IDPK,');
    SQL.Add('                PK.DTCA     = CURRENT_TIMESTAMP,');
    SQL.Add('                PK.CAI_DCAD = CURRENT_DATE,');
    SQL.Add('                PK.CAI_HCAD = CURRENT_TIME,');
    SQL.Add('                PK.CAI_CRED = FK.VCRD');
    SQL.Add('WHEN NOT MATCHED THEN');
    SQL.Add('     INSERT (CAI_CCAB,CAI_DOCT,CAI_CTSR,CAI_DESC,CAI_CRED)');
    SQL.Add('     VALUES (FK.IDPK ,FK.DEPK ,FK.CDLC ,FK.DELC ,FK.VCRD )');
    ExecSQL;
  end;
  oRefresh(CAI_LAF);
end;

procedure Tfrmcai_mov.FormShow(Sender: TObject);
begin
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := poDesigned;
end;

procedure Tfrmcai_mov.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;

procedure Tfrmcai_mov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  try oFTransact(IBTra);
  finally Action := caFree;
  end;
end;

procedure Tfrmcai_mov.FormDestroy(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  oPrinterSelect(Handle,'Relatórios');
  frmcai_mov := Nil;
end;

procedure Tfrmcai_mov.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if FrmPosition = poDefault then
    begin
      Top    := IFThen(FrmStyle    = fsNormal ,R.Top ,0);
      Left   := IFThen(FrmStyle    = fsNormal ,R.Left,0);
      Width  := IFThen(FrmPosition = poDefault,R.Right -R.Left-5,0);
      Height := IFThen(FrmPosition = poDefault,R.Bottom-R.Top -5,0);
    end else
    begin
      if AlphaBlendValue = 0 then
      Height := Trunc((R.Bottom - R.Top ) * 0.8);

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
  if frmcai_mov <> Nil then
  Paint;
end;

procedure Tfrmcai_mov.siSAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcai_mov.cai_lafAfterOpen(DataSet: TDataSet);
begin
  if not cai_mov.Active then
         cai_mov.Open;
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
                         SQL.Add('AND    CAI_CTSR <> 533');
                         Open;
                       end;

                       with ConsultaAux do
                       begin
                         SQL.Clear;
                         SQL.Add('UPDATE CAI_LAF');
                         SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
                         SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
                         SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
                         SQL.Add('WHERE  ID       = '''+cai_lafID.AsString+'''');
                         ExecSQL;
                       end;
                       cai_laf.Close;
                       cai_laf.Open;
                     end;
  end;
end;

procedure Tfrmcai_mov.cai_movCalcFields(DataSet: TDataSet);
begin
  cai_movCAI_VENT.Value := cai_movCAI_CRED.AsFloat;
  cai_movCAI_VANT.Value := 0;
  cai_movCAI_VSAI.Value := 0;
  cai_movCAI_VATU.Value := 0;

  if cai_movCAI_CTSR.AsInteger <> 533 then
  begin
    cai_movCAI_VANT.Value := cai_movCAI_SANT.AsFloat*IFThen(cai_movCAI_CONC.AsInteger > 0,cai_movCAI_CONC.AsInteger,1);
    cai_movCAI_VSAI.Value := cai_movCAI_DEBI.AsFloat*IFThen(cai_movCAI_CONC.AsInteger > 0,cai_movCAI_CONC.AsInteger,1);
    cai_movCAI_VATU.Value := cai_movCAI_SATU.AsFloat*IFThen(cai_movCAI_CONC.AsInteger > 0,cai_movCAI_CONC.AsInteger,1);
  end;
end;

procedure Tfrmcai_mov.cai_lafCalcFields(DataSet: TDataSet);
begin
  cai_lafCAI_VENT.Value := cai_lafCAI_CRED.AsFloat;
  cai_lafCAI_VSAI.Value := cai_lafCAI_DEBI.AsFloat;
  cai_lafCAI_VATU.Value := cai_lafCAI_SATU.AsFloat;
end;

procedure Tfrmcai_mov.siPEDClick(Sender: TObject);
begin
//  frmrelatorio_geral := TFrmrelatorio_geral.Create(Nil);
//  try
//    frmrelatorio_geral.tsCAI_MOV.TabVisible   := true;
//    frmrelatorio_geral.pcMAIN.ActivePage      := frmrelatorio_geral.tsCAI_MOV;
//    frmrelatorio_geral.cbCAI_MOV_TREL.Text    := 'FLUXO GERAL DE VENDAS - SINTÉTICO';
//    frmrelatorio_geral.cbCAI_MOV_DATA.Text    := '';
//    frmrelatorio_geral.cbCAI_MOV_DFOR.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_CPRO.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_TIPO.Enabled := false;
//
//
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Clear;
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Clear;
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO GERAL DE VENDAS - SINTÉTICO');
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO GERAL DE VENDAS - SINTÉTICO');
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO GERAL DE VENDAS - ANALÍTICO');
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO GERAL DE VENDAS - ANALÍTICO');
//
//    with consulta do
//    begin
//      SQL.Clear;
//      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
//      SQL.Add('WHERE    CAI_CDEP = '''+RECParametros.EP_ID+'''');
//      SQL.Add('ORDER BY ID DESC');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_CDCX.Text := fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime);
//
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_CDCX.Values.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
//        frmrelatorio_geral.cbCAI_MOV_CDCX.Descriptions.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   CLI_FANT');
//      SQL.Add('FROM     CAD_CLI,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_CLI.ID = PED_VEN_CAB.ROM_CCLI');
//      SQL.Add('GROUP BY CLI_FANT');
//      SQL.Add('ORDER BY CLI_FANT');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   REP_FANT');
//      SQL.Add('FROM     CAD_REP,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_REP.ID = PED_VEN_CAB.ROM_CREP');
//      SQL.Add('GROUP BY REP_FANT');
//      SQL.Add('ORDER BY REP_FANT');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   USU_DUSU');
//      SQL.Add('FROM     CAD_USU,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_USU.USU_CUSU = PED_VEN_CAB.ROM_CVEN');
//      SQL.Add('GROUP BY USU_DUSU');
//      SQL.Add('ORDER BY USU_DUSU');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
//      SQL.Add('ORDER BY VEN_TIPO');
//      Open;
//
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_STCO.Values.Add(fields[0].AsString);
//        frmrelatorio_geral.cbCAI_MOV_STCO.Descriptions.Add(fields[0].AsString);
//        next;
//      end;
//    end;
//    frmrelatorio_geral.ShowModal;
//  finally
//    freeAndNil(frmrelatorio_geral);
//  end;
end;

procedure Tfrmcai_mov.siCAIClick(Sender: TObject);
begin
//  frmrelatorio_geral := TFrmrelatorio_geral.Create(Nil);
//  try
//    frmrelatorio_geral.tsCAI_MOV.TabVisible := true;
//    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAI_MOV;
//    frmrelatorio_geral.cbCAI_MOV_DATA.Text  := '';
//    frmrelatorio_geral.cbCAI_MOV_TREL.Text  := '';
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Clear;
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Clear;
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO DE CAIXA - SINTÉTICO');
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO DE CAIXA - SINTÉTICO');
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO DE CAIXA - ANALÍTICO');
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO DE CAIXA - ANALÍTICO');
//    frmrelatorio_geral.cbCAI_MOV_STCO.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_DFOR.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_CPRO.Enabled := false;
//
//    with consulta do
//    begin
//      SQL.Clear;
//      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
//      SQL.Add('WHERE    CAI_CDEP = '''+RECParametros.EP_ID+'''');
//      SQL.Add('ORDER BY ID DESC');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_CDCX.Text := fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime);
//
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_CDCX.Values.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
//        frmrelatorio_geral.cbCAI_MOV_CDCX.Descriptions.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   CLI_FANT');
//      SQL.Add('FROM     CAD_CLI,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_CLI.ID = PED_VEN_CAB.ROM_CCLI');
//      SQL.Add('GROUP BY CLI_FANT');
//      SQL.Add('ORDER BY CLI_FANT');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   REP_FANT');
//      SQL.Add('FROM     CAD_REP,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_REP.ID = PED_VEN_CAB.ROM_CREP');
//      SQL.Add('GROUP BY REP_FANT');
//      SQL.Add('ORDER BY REP_FANT');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   USU_DUSU');
//      SQL.Add('FROM     CAD_USU,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_USU.USU_CUSU = PED_VEN_CAB.ROM_CVEN');
//      SQL.Add('GROUP BY USU_DUSU');
//      SQL.Add('ORDER BY USU_DUSU');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   VEN_TIPO');
//      SQL.Add('FROM     TAB_COB');
//      SQL.Add('ORDER BY VEN_TIPO');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_TIPO.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_TIPO.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
//      SQL.Add('ORDER BY VEN_TIPO');
//      Open;
//
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_STCO.Values.Add(fields[0].AsString);
//        frmrelatorio_geral.cbCAI_MOV_STCO.Descriptions.Add(fields[0].AsString);
//        next;
//      end;
//    end;
//    frmrelatorio_geral.ShowModal;
//  finally
//    freeAndNil(frmrelatorio_geral);
//  end;
end;

procedure Tfrmcai_mov.siCARClick(Sender: TObject);
begin
//  frmrelatorio_geral := TFrmrelatorio_geral.Create(Nil);
//  try
//    frmrelatorio_geral.tsCAI_MOV.TabVisible := true;
//    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAI_MOV;
//    frmrelatorio_geral.cbCAI_MOV_DATA.Text  := '';
//    frmrelatorio_geral.cbCAI_MOV_TREL.Text  := 'FLUXO DE CAIXA DE CARTEIRA';
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Clear;
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Clear;
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO DE CAIXA DE CARTEIRA');
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO DE CAIXA DE CARTEIRA');
//    frmrelatorio_geral.cbCAI_MOV_STCO.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_DFOR.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_CPRO.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_TIPO.Enabled := false;
//
//    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Clear;
//    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Clear;
//    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('PENDENTE');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('PENDENTE');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('PAGO');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('PAGO');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('CANCELADO');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('CANCELADO');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Text  := 'PENDENTE';
//
//    with consulta do
//    begin
//      SQL.Clear;
//      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
//      SQL.Add('WHERE    CAI_CDEP = '''+RECParametros.EP_ID+'''');
//      SQL.Add('ORDER BY ID DESC');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_CDCX.Text := 'TODOS';
//
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_CDCX.Values.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
//        frmrelatorio_geral.cbCAI_MOV_CDCX.Descriptions.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   CLI_FANT');
//      SQL.Add('FROM     CAD_CLI,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_CLI.ID = PED_VEN_CAB.ROM_CCLI');
//      SQL.Add('GROUP BY CLI_FANT');
//      SQL.Add('ORDER BY CLI_FANT');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   REP_FANT');
//      SQL.Add('FROM     CAD_REP,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_REP.ID = PED_VEN_CAB.ROM_CREP');
//      SQL.Add('GROUP BY REP_FANT');
//      SQL.Add('ORDER BY REP_FANT');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   USU_DUSU');
//      SQL.Add('FROM     CAD_USU,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_USU.USU_CUSU = PED_VEN_CAB.ROM_CVEN');
//      SQL.Add('GROUP BY USU_DUSU');
//      SQL.Add('ORDER BY USU_DUSU');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
//      SQL.Add('ORDER BY VEN_TIPO');
//      Open;
//
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_STCO.Values.Add(fields[0].AsString);
//        frmrelatorio_geral.cbCAI_MOV_STCO.Descriptions.Add(fields[0].AsString);
//        next;
//      end;
//    end;
//
//    frmrelatorio_geral.ShowModal;
//  finally
//    freeAndNil(frmrelatorio_geral);
//  end;
end;

procedure Tfrmcai_mov.siBANClick(Sender: TObject);
begin
//  frmrelatorio_geral := TFrmrelatorio_geral.Create(Nil);
//  try
//    frmrelatorio_geral.tsCAI_MOV.TabVisible := true;
//    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAI_MOV;
//    frmrelatorio_geral.cbCAI_MOV_DATA.Text  := '';
//    frmrelatorio_geral.cbCAI_MOV_TREL.Text  := 'FLUXO DE CAIXA BANCÁRIO';
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Clear;
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Clear;
//    frmrelatorio_geral.cbCAI_MOV_TREL.Values.Add('FLUXO DE CAIXA BANCÁRIO');
//    frmrelatorio_geral.cbCAI_MOV_TREL.Descriptions.Add('FLUXO DE CAIXA BANCÁRIO');
//    frmrelatorio_geral.cbCAI_MOV_STCO.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_DFOR.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_CPRO.Enabled := false;
//    frmrelatorio_geral.cbCAI_MOV_TIPO.Enabled := false;    
//
//    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Clear;
//    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Clear;
//    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('PENDENTE');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('PENDENTE');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('PAGO');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('PAGO');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Values.Add('CANCELADO');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Descriptions.Add('CANCELADO');
//    frmrelatorio_geral.cbCAI_MOV_STFI.Text  := 'PENDENTE';
//
//    with consulta do
//    begin
//      SQL.Clear;
//      SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
//      SQL.Add('WHERE    CAI_CDEP = '''+RECParametros.EP_ID+'''');
//      SQL.Add('ORDER BY ID DESC');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_CDCX.Text := 'TODOS';
//
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_CDCX.Values.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
//        frmrelatorio_geral.cbCAI_MOV_CDCX.Descriptions.Add(fields[1].AsString+' ('+fields[0].AsString+') '+formatDateTime('dd/mm/yy',fields[2].AsDateTime));
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   CLI_FANT');
//      SQL.Add('FROM     CAD_CLI,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_CLI.ID = PED_VEN_CAB.ROM_CCLI');
//      SQL.Add('GROUP BY CLI_FANT');
//      SQL.Add('ORDER BY CLI_FANT');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DCLI.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   REP_FANT');
//      SQL.Add('FROM     CAD_REP,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_REP.ID = PED_VEN_CAB.ROM_CREP');
//      SQL.Add('GROUP BY REP_FANT');
//      SQL.Add('ORDER BY REP_FANT');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DREP.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   USU_DUSU');
//      SQL.Add('FROM     CAD_USU,'+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3)+' "PED_VEN_CAB"');
//      SQL.Add('WHERE    CAD_USU.USU_CUSU = PED_VEN_CAB.ROM_CVEN');
//      SQL.Add('GROUP BY USU_DUSU');
//      SQL.Add('ORDER BY USU_DUSU');
//      Open;
//
//      frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add('TODOS');
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_DVEN.Items.Add(fields[0].AsString);
//        next;
//      end;
//
//      SQL.Clear;
//      SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
//      SQL.Add('ORDER BY VEN_TIPO');
//      Open;
//
//      while not eof do
//      begin
//        frmrelatorio_geral.cbCAI_MOV_STCO.Values.Add(fields[0].AsString);
//        frmrelatorio_geral.cbCAI_MOV_STCO.Descriptions.Add(fields[0].AsString);
//        next;
//      end;
//    end;
//
//    frmrelatorio_geral.ShowModal;
//  finally
//    freeAndNil(frmrelatorio_geral);
//  end;
end;

end.
