unit pctr_ped_fin;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner, dxPageControl, dxEditor,
  dxEdLib, StdCtrls, dxExEdtr, DAteUtils, math, rxSpeedbar, IBEvents, IBSQL;

type
  Tfrmctr_ped_fin = class(Tfrmpadr3)
    fin_rec_bai: TIBDataSet;
    fin_rec_baiID: TIntegerField;
    fin_rec_baiFIN_DOCT: TIBStringField;
    fin_rec_baiFIN_DVEN: TDateField;
    fin_rec_baiFIN_TIPO: TIBStringField;
    fin_rec_baiFIN_BANC: TIBStringField;
    fin_rec_baiFIN_AGEN: TIBStringField;
    fin_rec_baiFIN_CONT: TIBStringField;
    fin_rec_baiFIN_NCHQ: TIBStringField;
    fin_rec_baiFIN_OBSE: TMemoField;
    fin_rec_baiFIN_STA: TIBStringField;
    fin_rec_baiFIN_PRAZ: TSmallintField;
    fin_rec_baiFIN_DPAG: TDateField;
    fin_rec_baiFIN_DBAN: TIBStringField;
    fin_rec_baiFIN_STFI: TIBStringField;
    fin_rec_baiFIN_VALO: TIBBCDField;
    fin_rec_baiFIN_VPAG: TIBBCDField;
    fin_rec_baiFIN_VPEN: TIBBCDField;
    fin_rec_baiFIN_COBR: TIBStringField;
    fin_rec_baiFIN_STDO: TIBStringField;
    fin_rec_baiFIN_CCAB: TIntegerField;
    fin_rec_baiFIN_CDBX: TIntegerField;
    fin_rec_baiFIN_CDCX: TIntegerField;
    fin_rec_baiFIN_CCLI: TIntegerField;
    fin_rec_baiFIN_DCLI: TIBStringField;
    fin_rec_baiFIN_CVEN: TIntegerField;
    fin_rec_baiFIN_VEND: TIBStringField;
    fin_rec_baiFIN_CREP: TIntegerField;
    fin_rec_baiFIN_DREP: TIBStringField;
    fin_rec_baiFIN_ATRA: TSmallintField;
    fin_rec_baiFIN_CONC: TSmallintField;
    fin_rec_baiFIN_DCAD: TDateField;
    fin_rec_baiFIN_DMED: TDateField;
    fin_rec_baiFIN_DATR: TDateField;
    fin_rec_baiFIN_MCHQ: TSmallintField;
    fin_rec_baiFIN_STCO: TIBStringField;
    dtsfin_rec_bai: TDataSource;
    fin_rec: TIBDataSet;
    fin_recID: TIntegerField;
    fin_recFIN_CCLI: TIntegerField;
    fin_recFIN_CVEN: TIntegerField;
    fin_recFIN_CREP: TIntegerField;
    fin_recFIN_CDPD: TIntegerField;
    fin_recFIN_CDRO: TIntegerField;
    fin_recFIN_CDNF: TIntegerField;
    fin_recFIN_IPPL: TIntegerField;
    fin_recFIN_CPPL: TIBStringField;
    fin_recFIN_DPPL: TIBStringField;
    fin_recFIN_CCUS: TIntegerField;
    fin_recFIN_DCUS: TIBStringField;
    fin_recFIN_DROM: TDateField;
    fin_recFIN_DNFE: TDateField;
    fin_recFIN_DVEN: TDateField;
    fin_recFIN_DTCO: TDateField;
    fin_recFIN_VEND: TIBStringField;
    fin_recFIN_DREP: TIBStringField;
    fin_recFIN_VALO: TIBBCDField;
    fin_recFIN_DCLI: TIBStringField;
    fin_recFIN_CONC: TSmallintField;
    fin_recFIN_STCO: TIBStringField;
    fin_recFIN_STPD: TIBStringField;
    fin_recFIN_STDO: TIBStringField;
    fin_recFIN_DOCT: TIBStringField;
    fin_recFIN_COBR: TIBStringField;
    fin_recFIN_CDBX: TIntegerField;
    fin_recFIN_CDCX: TIntegerField;
    fin_recFIN_CBCO: TIntegerField;
    fin_recFIN_PRAZ: TSmallintField;
    fin_recFIN_ATRA: TSmallintField;
    fin_recFIN_DCAD: TDateField;
    fin_recFIN_DPAG: TDateField;
    fin_recFIN_DMED: TDateField;
    fin_recFIN_DATR: TDateField;
    fin_recFIN_PORT: TIBStringField;
    fin_recFIN_STFI: TIBStringField;
    fin_recFIN_VPAG: TIBBCDField;
    fin_recFIN_VPEN: TIBBCDField;
    fin_recFIN_VMUL: TIBBCDField;
    fin_recFIN_PMUL: TIBBCDField;
    fin_recFIN_VJUR: TIBBCDField;
    fin_recFIN_PJUR: TIBBCDField;
    fin_recFIN_VDES: TIBBCDField;
    fin_recFIN_PDES: TIBBCDField;
    fin_recFIN_OBSE: TMemoField;
    fin_recFIN_STA: TIBStringField;
    fin_recFIN_DPRA: TIBStringField;
    dtsfin_rec: TDataSource;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label4: TLabel;
    edcdcx: TdxEdit;
    edcdbx: TdxEdit;
    edvend: TdxEdit;
    eddrep: TdxEdit;
    gbPED: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    edtotr: TdxEdit;
    edtotb: TdxEdit;
    edtotd: TdxEdit;
    Label3: TLabel;
    eddcli: TdxEdit;
    pclan: TdxPageControl;
    tslan: TdxTabSheet;
    dbgprz1: TdxDBGrid;
    dbgprz1FIN_TIPO: TdxDBGridImageColumn;
    dbgprz1FIN_PRAZ: TdxDBGridMaskColumn;
    dbgprz1FIN_DVEN: TdxDBGridDateColumn;
    dbgprz1FIN_VALO: TdxDBGridMaskColumn;
    dbgprz1FIN_BANC: TdxDBGridMaskColumn;
    dbgprz1FIN_AGEN: TdxDBGridMaskColumn;
    dbgprz1FIN_CONT: TdxDBGridMaskColumn;
    dbgprz1FIN_NCHQ: TdxDBGridMaskColumn;
    dbgprz1FIN_OBSE: TdxDBGridBlobColumn;
    sblan: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    b1I: TSpeedItem;
    b1A: TSpeedItem;
    b1D: TSpeedItem;
    b1S: TSpeedItem;
    b1C: TSpeedItem;
    tscar: TdxTabSheet;
    dbgprz2: TdxDBGrid;
    dbgprz2FIN_TIPO: TdxDBGridImageColumn;
    dbgprz2FIN_PRAZ: TdxDBGridMaskColumn;
    dbgprz2FIN_DVEN: TdxDBGridDateColumn;
    dbgprz2FIN_VALO: TdxDBGridMaskColumn;
    dbgprz2FIN_BANC: TdxDBGridMaskColumn;
    dbgprz2FIN_AGEN: TdxDBGridMaskColumn;
    dbgprz2FIN_CONT: TdxDBGridMaskColumn;
    dbgprz2FIN_NCHQ: TdxDBGridMaskColumn;
    dbgprz2FIN_OBSE: TdxDBGridBlobColumn;
    SpeedBar3: TSpeedBar;
    SpeedbarSection9: TSpeedbarSection;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    c1I: TSpeedItem;
    c1A: TSpeedItem;
    c1D: TSpeedItem;
    c1S: TSpeedItem;
    c1C: TSpeedItem;
    edDBAI: TdxDateEdit;
    tSHEILD: TIBTransaction;
    ibSHEILD: TIBStoredProc;
    consulta_s: TIBQuery;
    aux_S: TIBQuery;
    edcdro: TdxEdit;
    edqtsp: TdxEdit;
    tab_pag: TIBQuery;
    tab_pagID: TIntegerField;
    tab_pagPAG_DPAG: TIBStringField;
    tab_pagPAG_D001: TIntegerField;
    tab_pagPAG_D002: TIntegerField;
    tab_pagPAG_D003: TIntegerField;
    tab_pagPAG_D004: TIntegerField;
    tab_pagPAG_D005: TIntegerField;
    tab_pagPAG_D006: TIntegerField;
    tab_pagPAG_D007: TIntegerField;
    tab_pagPAG_D008: TIntegerField;
    tab_pagPAG_D009: TIntegerField;
    tab_pagPAG_D010: TIntegerField;
    tab_pagPAG_STA: TIBStringField;
    tab_pagPAG_PARC: TSmallintField;
    aux: TIBQuery;
    fin_recFIN_RCLI: TIBStringField;
    fin_recFIN_RREP: TIBStringField;
    fin_recFIN_PCOM: TIBBCDField;
    fin_recFIN_DBAI: TDateField;
    fin_recFIN_VENC: TIBBCDField;
    fin_recFIN_CPF: TIBStringField;
    fin_recFIN_CTNR: TIBStringField;
    fin_rec_baiFIN_DFIN: TIBStringField;
    fin_rec_baiFIN_RCLI: TIBStringField;
    fin_rec_baiFIN_RREP: TIBStringField;
    fin_rec_baiFIN_DBAI: TDateField;
    fin_rec_baiFIN_CPPL: TIntegerField;
    fin_rec_baiFIN_CCUS: TIntegerField;
    fin_rec_baiFIN_CDCO: TIntegerField;
    fin_rec_baiFIN_CDBA: TIBStringField;
    fin_rec_baiFIN_DEBA: TIBStringField;
    fin_rec_baiFIN_VENC: TIBBCDField;
    fin_rec_baiFIN_CTNR: TIBStringField;
    edcdrd: TdxEdit;
    fin_recFIN_CDRD: TIntegerField;
    fin_recFIN_VCHQ: TIBBCDField;
    fin_recFIN_DERD: TIBStringField;
    fin_recFIN_DTST: TDateTimeField;
    fin_recTPCO: TSmallintField;
    fin_recRECO: TIBStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fin_rec_baiNewRecord(DataSet: TDataSet);
    procedure fin_rec_baiAfterCancel(DataSet: TDataSet);
    procedure fin_rec_baiAfterDelete(DataSet: TDataSet);
    procedure fin_rec_baiAfterEdit(DataSet: TDataSet);
    procedure fin_rec_baiAfterPost(DataSet: TDataSet);
    procedure fin_rec_baiBeforeCancel(DataSet: TDataSet);
    procedure fin_rec_baiBeforePost(DataSet: TDataSet);
    procedure fin_recAfterPost(DataSet: TDataSet);
    procedure b1IClick(Sender: TObject);
    procedure b1AClick(Sender: TObject);
    procedure b1DClick(Sender: TObject);
    procedure b1SClick(Sender: TObject);
    procedure b1CClick(Sender: TObject);
    procedure c1IClick(Sender: TObject);
    procedure c1AClick(Sender: TObject);
    procedure c1DClick(Sender: TObject);
    procedure c1SClick(Sender: TObject);
    procedure c1CClick(Sender: TObject);
    procedure siVALClick(Sender: TObject);
    procedure fin_recBeforePost(DataSet: TDataSet);
    procedure dbgprz1FIN_TIPOChange(Sender: TObject);
    procedure dbgprz1FIN_VALOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgprz1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure siSAIRClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure LANCA_CAIXA(cobr: string;conc: word);
    procedure BAIXA_CARTEIRA(cdbx: integer);
    procedure BAIXA_BANCARIO(cdbx: integer);
    procedure ABRE_TABELA;
    procedure TOTAL;
  public
    { Public declarations }
  end;

var
  frmctr_ped_fin: Tfrmctr_ped_fin;

implementation

uses uPrincipal, pven_nfe, pven_ped;

{$R *.dfm}

procedure Tfrmctr_ped_fin.ABRE_TABELA;
begin
  if not tSHEILD.Active then
         tSHEILD.StartTransaction;

  with fin_rec do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_REC');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with fin_rec_bai do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_REC_BAI');
    SelectSQL.Add('WHERE FIN_COBR = ''0''');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('WHERE    VEN_STA  = ''1''');
    SQL.Add('ORDER BY ID');
    Open;

    while not eof do
    begin
      dbgprz1FIN_TIPO.Descriptions.Add(fields[0].AsString);
      dbgprz1FIN_TIPO.Values.Add(fields[0].AsString);
      dbgprz2FIN_TIPO.Descriptions.Add(fields[0].AsString);
      dbgprz2FIN_TIPO.Values.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmctr_ped_fin.FormDestroy(Sender: TObject);
begin
  frmctr_ped_fin := nil;
end;

procedure Tfrmctr_ped_fin.FormCreate(Sender: TObject);
begin
  ABRE_TABELA;
end;

procedure Tfrmctr_ped_fin.fin_rec_baiNewRecord(DataSet: TDataSet);
begin
  frmctr_ped_fin.fin_rec_baiID.Value := 0;

  if fin_recFIN_STCO.AsString = 'BANCÁRIO' then
     fin_rec_baiFIN_TIPO.Value := 'BANCÁRIO'
  else
  begin
    if (tab_pagPAG_DPAG.AsString = 'A VISTA') then
    fin_rec_baiFIN_TIPO.Value := 'DINHEIRO'
    else
    fin_rec_baiFIN_TIPO.Value := 'CARTEIRA';
  end;

  if copy(fin_rec_baiFIN_TIPO.AsString,1,2) = 'CH' then
  fin_rec_baiFIN_VALO.Value := 0;
end;

procedure Tfrmctr_ped_fin.fin_rec_baiAfterCancel(DataSet: TDataSet);
begin
  case pclan.ActivePageIndex of
     0 : begin
           b1I.Enabled := true;
           b1A.Enabled := true;
           b1D.Enabled := true;
           b1S.Enabled := false;
           b1C.Enabled := false;
         end;
     1 : begin
           c1I.Enabled := true;
           c1A.Enabled := true;
           c1D.Enabled := true;
           c1S.Enabled := false;
           c1C.Enabled := false;
         end;
  end;
end;

procedure Tfrmctr_ped_fin.fin_rec_baiAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  TOTAL;
end;

procedure Tfrmctr_ped_fin.fin_rec_baiAfterEdit(DataSet: TDataSet);
begin
  case pclan.ActivePageIndex of
     0 : begin
           b1I.Enabled := false;
           b1A.Enabled := false;
           b1D.Enabled := false;
           b1S.Enabled := true;
           b1C.Enabled := true;
         end;
     1 : begin
           c1I.Enabled := false;
           c1A.Enabled := false;
           c1D.Enabled := false;
           c1S.Enabled := true;
           c1C.Enabled := true;
         end;
  end;
end;

procedure Tfrmctr_ped_fin.fin_rec_baiAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  case pclan.ActivePageIndex of
     0 : begin
           b1I.Enabled := true;
           b1A.Enabled := true;
           b1D.Enabled := true;
           b1S.Enabled := false;
           b1C.Enabled := false;
         end;
     1 : begin
           c1I.Enabled := true;
           c1A.Enabled := true;
           c1D.Enabled := true;
           c1S.Enabled := false;
           c1C.Enabled := false;
         end;
  end;

  wRec := fin_rec_bai.GetBookmark;
  tSHEILD.CommitRetaining;

  fin_rec_bai.Close;
  fin_rec_bai.Open;
  if (wRec = Nil) or (fin_rec_bai.Fields[0].IsNull) then fin_rec_bai.last
     else fin_rec_bai.GotoBookmark(wRec);
  fin_rec_bai.FreeBookmark(wRec);

  TOTAL;
end;

procedure Tfrmctr_ped_fin.fin_rec_baiBeforeCancel(DataSet: TDataSet);
begin
  case pclan.ActivePageIndex of
     0 : begin
           b1I.Enabled := true;
           b1A.Enabled := true;
           b1D.Enabled := true;
           b1S.Enabled := false;
           b1C.Enabled := false;
         end;
     1 : begin
           c1I.Enabled := true;
           c1A.Enabled := true;
           c1D.Enabled := true;
           c1S.Enabled := false;
           c1C.Enabled := false;
         end;
  end;

  if fin_rec_bai.RecordCount = 0 then
  begin
    fin_rec_bai.Close;
    fin_rec_bai.Open;
    ABORT;
  end;
end;

procedure Tfrmctr_ped_fin.fin_rec_baiBeforePost(DataSet: TDataSet);
begin
  if fin_rec_baiFIN_DVEN.AsDateTime < edDBAI.Date then
     DataBaseError('Data de Venciamento menor que Data da Baixa !');

  if fin_rec_baiFIN_TIPO.AsString = '' then
     DataBaseError('Tipo de Recebimento não Selecionado !');

  if fin_rec_baiFIN_VALO.AsFloat = 0 then
     DataBaseError('Valor de Recebimento não Informado !');

  if (fin_rec_baiFIN_TIPO.AsString = 'CHEQUE PRE-DATADO') and (fin_rec_baiFIN_DVEN.AsDateTime = edDBAI.Date) then
     fin_rec_baiFIN_TIPO.AsString := 'CHEQUE A VISTA';

  if (fin_rec_baiFIN_TIPO.AsString = 'CHEQUE A VISTA') and (fin_rec_baiFIN_DVEN.AsDateTime <> edDBAI.Date) then
     fin_rec_baiFIN_TIPO.AsString := 'CHEQUE PRE-DATADO';

  if (copy(fin_rec_baiFIN_TIPO.AsString,1,2) = 'CH') and (Length(fin_rec_baiFIN_NCHQ.AsString) < 3) then
     DataBaseError('Número do cheque em branco ou digitado incorretamente !');

  if fin_rec_baiFIN_DVEN.AsDateTime = edDBAI.Date then
  fin_rec_baiFIN_STFI.Value := 'PAGO'
  else
  fin_rec_baiFIN_STFI.Value := 'PENDENTE';

  if (fin_rec_baiFIN_TIPO.AsString = 'DEVOLUÇÃO') or (fin_rec_baiFIN_TIPO.AsString = 'ABATIMENTO') then
  fin_rec_baiFIN_STFI.Value := 'PENDENTE';
  
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_NCHQ = '''+fin_rec_baiFIN_NCHQ.AsString+'''');
    Open;
    if (not fields[0].IsNull) and (fields[0].AsInteger <> fin_rec_baiID.AsInteger) then
       DataBaseError('Número do cheque já cadastrado !');
  end;

  fin_rec_baiFIN_COBR.Value := inttostr(pclan.ActivePageIndex);
end;

procedure Tfrmctr_ped_fin.fin_recAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := fin_rec.GetBookmark;
  tSHEILD.CommitRetaining;

  fin_rec.Close;
  fin_rec.Open;
  if (wRec = Nil) or (fin_rec.Fields[0].IsNull) then fin_rec.last
     else fin_rec.GotoBookmark(wRec);
  fin_rec.FreeBookmark(wRec);
end;

procedure Tfrmctr_ped_fin.b1IClick(Sender: TObject);
begin
  fin_rec_bai.Append;
end;

procedure Tfrmctr_ped_fin.b1AClick(Sender: TObject);
begin
  fin_rec_bai.Edit;
end;

procedure Tfrmctr_ped_fin.b1DClick(Sender: TObject);
begin
  fin_rec_bai.Delete;
end;

procedure Tfrmctr_ped_fin.b1SClick(Sender: TObject);
begin
  fin_rec_bai.Post;
end;

procedure Tfrmctr_ped_fin.b1CClick(Sender: TObject);
begin
  fin_rec_bai.Cancel;
end;

procedure Tfrmctr_ped_fin.c1IClick(Sender: TObject);
begin
  fin_rec_bai.Append;
end;

procedure Tfrmctr_ped_fin.c1AClick(Sender: TObject);
begin
  fin_rec_bai.Edit;
end;

procedure Tfrmctr_ped_fin.c1DClick(Sender: TObject);
begin
  fin_rec_bai.Delete;
end;

procedure Tfrmctr_ped_fin.c1SClick(Sender: TObject);
begin
  fin_rec_bai.Post;
end;

procedure Tfrmctr_ped_fin.c1CClick(Sender: TObject);
begin
  fin_rec_bai.Cancel;
end;

procedure Tfrmctr_ped_fin.TOTAL;
begin
  edtotr.Text := '0,00';
  edtotd.Text := '0,00';
  edtotb.Text := '0,00';

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC');
    Open;
    edtotr.Text := formatfloat('#,0.00###',fields[0].AsFloat);

    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_COBR = ''0''');
    Open;
    edtotb.Text := formatfloat('#,0.00###',fields[0].AsFloat);
  end;

  if (fin_rec.RecNo = 1) and (fin_recFIN_STPD.AsString = 'DEVOLUÇÃO') then
  edtotd.Text   := formatfloat('#,0.00###',0)
  else if (fin_rec.RecNo = 1) and (fin_recFIN_STPD.AsString = 'ABATIMENTO') then
  edtotd.Text   := formatfloat('#,0.00###',0) else
  edtotd.Text   := formatfloat('#,0.00###',oTextToValor(edtotr.Text)-oTextToValor(edtotb.Text));
end;

procedure Tfrmctr_ped_fin.siVALClick(Sender: TObject);
var
  cdbx: integer;
begin
  activecontrol := nil;
  fin_rec.First;
  if fin_recID.IsNull then
     abort;

  if fin_rec_bai.State in [dsEdit,dsInsert] then
  begin
    if fin_rec_baiFIN_VALO.AsFloat > 0 then
    fin_rec_bai.Post
    else
    fin_rec_bai.Cancel;
  end;

  fin_rec_bai.First;
  if fin_rec_baiID.IsNull then
  begin
    messageBox(handle,'Pedido (s) sem lançamento de baixas !',PChar(caption),MB_ICONERROR+MB_OK);
    abort;
  end;  

  if oTextToValor(edtotd.Text) <> 0 then
  begin
    if oYesNo(handle,'Total de Pedidos Diferente do Total Recebido !'+#13+'Confirma os Valores Digitados ?') = mrno then
       abort;
  end;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
    Open;
    IBtra.CommitRetaining;
    
    cdbx        := fields[0].AsInteger;
    edcdbx.Text := fields[0].AsString;
  end;

  if copy(fin_recFIN_STDO.AsString,1,1) = 'C' then
  BAIXA_CARTEIRA(cdbx)
  else
  BAIXA_BANCARIO(cdbx);

  close;
end;

procedure Tfrmctr_ped_fin.LANCA_CAIXA(cobr: string;conc: word);
var
  doct: string;
  valo: double;
  ctsr: integer;
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
    Open;

    ctsr := fields[0].AsInteger;
  end;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO FROM FIN_REC_BAI');
    SQL.Add('WHERE    FIN_COBR = '''+inttostr(pclan.ActivePageIndex)+'''');
    SQL.Add('GROUP BY FIN_TIPO');
    Open;
  end;

  while not consulta_S.Eof do
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = '''+consulta_S.Fields[0].AsString+'''');
      Open;

      if fields[0].IsNull then
      doct := '1'
      else
      doct := fields[0].AsString;
      doct := inttostr(conc)+oStrZero(strtoint(doct),19);

      SQL.Clear;
      SQL.Add('DELETE FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = '''+edcdcx.Text+'''');
      SQL.Add('AND    CAI_DESC = '''+consulta_S.Fields[0].AsString+'''');
      SQL.Add('AND    CAI_DOCT = '''+doct+'''');
      ExecSQL;

      SQL.Clear;
      if cobr = 'B' then
      SQL.Add('SELECT SUM(FIN_VALO) FROM '+SLPrincipal.Values['fin_rec_ban_bai'])
      else
      SQL.Add('SELECT SUM(FIN_VALO) FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE  FIN_CDCX = '''+edcdcx.Text+'''');
      SQL.Add('AND    FIN_TIPO = '''+consulta_S.Fields[0].AsString+'''');
      SQL.Add('AND    FIN_CONC = '''+inttostr(conc)+'''');
      Open;
      valo := Fields[0].AsFloat;
    end;

    ibSP.StoredProcName := 'SP_CAI_MOV';
    ibSP.Prepare;
    ibSP.ParamByName('ID').Value   := 0;
    ibSP.ParamByName('CCAB').Value := edcdcx.Text;
    ibSP.ParamByName('CTSR').Value := ctsr;
    ibSP.ParamByName('CDBX').Value := 0;
    ibSP.ParamByName('CONC').Value := conc;
    ibSP.ParamByName('DESC').Value := consulta_S.Fields[0].AsString;
    ibSP.ParamByName('DOCT').Value := doct;
    ibSP.ParamByName('DCAD').Value := edDBAI.Date;
    ibSP.ParamByName('HCAD').Value := time;
    ibSP.ParamByName('SANT').Value := 0;
    ibSP.ParamByName('CRED').Value := valo;
    ibSP.ParamByName('DEBI').Value := 0;
    ibSP.ParamByName('SATU').Value := 0;
    ibSP.ParamByName('BCON').Value := 0;
    ibSP.ParamByName('DCON').Value := '';
    ibSP.ExecProc;
    consulta_S.Next;
  end;
  IBTra.CommitRetaining;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = '''+edcdcx.Text+'''');
    Open;
  end;


  with Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+oStrTran(consulta.Fields[0].AsString,',','.')+''',');
    SQL.Add('       CAI_DEBI = '''+oStrTran(consulta.Fields[1].AsString,',','.')+''',');
    SQL.Add('       CAI_SATU = '''+oStrTran(consulta.Fields[2].AsString,',','.')+'''');
    SQL.Add('WHERE  ID       = '''+edcdcx.Text+'''');
    ExecSQL;
  end;
end;

procedure Tfrmctr_ped_fin.BAIXA_CARTEIRA(cdbx: integer);
var
  doct,stfi: string;
  cdpd,cdro: Array of Integer;
  i: word;
  conc,ccab: integer;

const
  aParc : array [1..24] of string = ('A','B','C','D','E','F','G',
                                     'H','I','J','K','L','M','N',
                                     'O','P','Q','R','S','T','U',
                                     'V','X','Z');
begin
  conc := fin_recFIN_CONC.AsInteger;
  if (fin_rec.RecordCount > 1) or (conc = 0) then
  conc := 1;

  SetLength(cdpd,10);
  SetLength(cdro,10);  

  with consulta_s do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_STFI <> ''PAGO''');
    SQL.Add('AND    FIN_COBR = ''0''');
    Open;

    if Fields[0].IsNull then
    stfi := 'PAGO'
    else
    stfi := 'PENDENTE';

    SQL.Clear;
    SQL.Add('SELECT   FIN_CDPD FROM FIN_REC');
    SQL.Add('GROUP BY FIN_CDPD');
    SQL.Add('ORDER BY FIN_CDPD');
    Open;

    i := 0;
    while not eof do
    begin
      cdpd[i] := fields[0].AsInteger;
      inc(i);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   FIN_CDRO FROM FIN_REC');
    SQL.Add('GROUP BY FIN_CDRO');
    SQL.Add('ORDER BY FIN_CDRO');
    Open;

    i := 0;
    while not eof do
    begin
      cdro[i] := fields[0].AsInteger;
      inc(i);
      next;
    end;
  end;

  doct := '';
  for i := 0 to 9 do
  begin
    if cdpd[i] = 0 then
       break;
    doct := doct + inttostr(cdpd[i]);
    if cdpd[i+1] > 0 then
       doct := doct + '/' else break;
  end;

  ccab := 0;
  i    := 0;

  with aux_s do
  begin
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM FIN_REC_BAI');
    Open;
  end;

  try
    fin_rec_bai.DisableControls;
    fin_rec_bai.First;
    while not fin_rec_bai.Eof do
    begin
      inc(i);
      try
        ibSP.StoredProcName := 'SP_FIN_REC_BAI';
        ibSP.Prepare;

        ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_BAI';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_BAI_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value   := 0;
        ibSP.ParamByName('CCAB').Value := ccab;
        ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
        ibSP.ParamByName('CDBX').Value := cdbx;
        ibSP.ParamByName('CDCX').Value := edcdcx.Text;
        ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
        ibSP.ParamByName('CONC').Value := conc;
        ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
        ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
        ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
        ibSP.ParamByName('DCAD').Value := edDBAI.Date;
        ibSP.ParamByName('DBAI').Value := edDBAI.Date;
        ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
        if aux_S.Fields[0].AsInteger = 1 then
        ibSP.ParamByName('DOCT').Value := doct else
        ibSP.ParamByName('DOCT').Value := doct+'-'+aParc[i];
        ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
        ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
        ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
        ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
        ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
        ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
        ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
        ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
        ibSP.ParamByName('CDCO').Value := 0;
        ibSP.ParamByName('CDBA').Value := 0;
        ibSP.ParamByName('DEBA').Value := '';
        ibSP.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
        ibSP.ParamByName('BCON').Value := 0;
        ibSP.ParamByName('DCON').Value := '';
        ibSP.ParamByName('LOTE').Value := 0;
        ibSP.ParamByName('DLOT').Value := 0;
        ibSP.ParamByName('CDCH').Value := 0;

        if stfi = 'PAGO' then
        begin
          ibSP.ParamByName('STFI').Value := 'PAGO';
          ibSP.ParamByName('DPAG').Value := edDBAI.Date;
          ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPEN').Value := 0;
        end
        else
        begin
          ibSP.ParamByName('STFI').Value := stfi;
          ibSP.ParamByName('DPAG').Value := 0;
          ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPAG').Value := 0;
          ibSP.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
        end;

        ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
        ibSP.ParamByName('STA').Value  := '0';
        ibSP.ExecProc;

        if stfi = 'PAGO' then
        begin
          ibSP.StoredProcName := 'SP_FIN_REC_REC';
          ibSP.Prepare;

          ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('CCAB').Value := ccab;
          ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
          ibSP.ParamByName('CDBX').Value := cdbx;
          ibSP.ParamByName('CDCX').Value := edcdcx.Text;
          ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
          ibSP.ParamByName('CONC').Value := conc;
          ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
          ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
          ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
          ibSP.ParamByName('DCAD').Value := edDBAI.Date;
          ibSP.ParamByName('DBAI').Value := edDBAI.Date;
          ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
          if aux_S.Fields[0].AsInteger = 1 then
          ibSP.ParamByName('DOCT').Value := doct else
          ibSP.ParamByName('DOCT').Value := doct+'-'+aParc[i];
          ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
          ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
          ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
          ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
          ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
          ibSP.ParamByName('TIPO').Value := 'PAGO';
          ibSP.ParamByName('STFI').Value := fin_rec_baiFIN_STFI.AsString;
          ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
          ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
          ibSP.ParamByName('CDCO').Value := 0;
          ibSP.ParamByName('CDBA').Value := 0;
          ibSP.ParamByName('DEBA').Value := '';
          ibSP.ParamByName('DPAG').Value := edDBAI.Date;
          ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPEN').Value := 0;
          ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
          ibSP.ParamByName('STA').Value  := '0';
          ibSP.ParamByName('BCON').Value := 0;
          ibSP.ParamByName('DCON').Value := '';
          ibSP.ParamByName('LOTE').Value := 0;
          ibSP.ParamByName('DLOT').Value := 0;
          ibSP.ParamByName('CDCH').Value := 0;
          ibSP.ExecProc;
        end;

        IBTra.CommitRetaining;
      except
        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na gravação da carteira !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;
      fin_rec_bai.Next;
    end;
  finally
    fin_rec_bai.EnableControls;
  end;
  LANCA_CAIXA('C',conc);

  if stfi <> 'PAGO' then
  stfi := 'FATURADO';

  for i := 0 to 9 do
  begin
    if cdpd[i] = 0 then
       break;

    with Consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_STFI = '''+stfi+''',');
      SQL.Add('       ROM_DBAI = '''+formatDateTime('mm/dd/yy',edDBAI.Date)+''',');
      SQL.Add('       ROM_CDBX = '''+inttostr(cdbx)+''',');
      SQL.Add('       ROM_CBAI = '''+RECUsuarios.ID+''',');
      SQL.Add('       ROM_TBAI = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');
      SQL.Add('WHERE  ID       = '''+inttostr(cdpd[i])+'''');
      ExecSQL;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
      SQL.Add('SET    ROM_CDBX = '''+inttostr(cdbx)+''',');
      SQL.Add('       ROM_STFI = ''FATURADO''');
      SQL.Add('WHERE  ID = '''+inttostr(cdro[i])+'''');
      ExecSQL;

      IBTra.CommitRetaining;
    end;
  end;
  siVAL.Enabled := false;
end;

procedure Tfrmctr_ped_fin.BAIXA_BANCARIO(cdbx: integer);
var
  stfi: string;
  ccab: integer;
begin
  ccab := 0;

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM FIN_REC_BAI');
    SQL.Add('WHERE  FIN_STFI <> ''PAGO''');
    SQL.Add('AND    FIN_COBR = ''0''');
    Open;

    if Fields[0].IsNull then
    stfi := 'PAGO'
    else
    stfi := 'PENDENTE';
  end;

  try
    tslan.Show;

    fin_rec_bai.DisableControls;
    fin_rec_bai.First;
    while not fin_rec_bai.Eof do
    begin
      try
        ibSP.StoredProcName := 'SP_FIN_REC_BAI';
        ibSP.Prepare;

        ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_BAI';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_BAI_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value   := 0;
        ibSP.ParamByName('CCAB').Value := ccab;
        ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
        ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
        ibSP.ParamByName('CDBX').Value := cdbx;
        ibSP.ParamByName('CDCX').Value := strtoint(edcdcx.Text);
        ibSP.ParamByName('CONC').Value := 1;
        ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
        ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
        ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
        ibSP.ParamByName('DCAD').Value := edDBAI.Date;
        ibSP.ParamByName('DBAI').Value := edDBAI.Date;
        ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
        ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;
        ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
        ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
        ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
        ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
        ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
        ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
        ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
        ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
        ibSP.ParamByName('CDCO').Value := 0;
        ibSP.ParamByName('CDBA').Value := 0;
        ibSP.ParamByName('DEBA').Value := '';
        ibSP.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
        ibSP.ParamByName('BCON').Value := 0;
        ibSP.ParamByName('DCON').Value := '';
        ibSP.ParamByName('LOTE').Value := 0;
        ibSP.ParamByName('DLOT').Value := 0;
        ibSP.ParamByName('CDCH').Value := 0;

        if stfi = 'PAGO' then
        begin
          ibSP.ParamByName('STFI').Value := 'PAGO';
          ibSP.ParamByName('DPAG').Value := edDBAI.Date;
          ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPEN').Value := 0;
        end
        else
        begin
          ibSP.ParamByName('STFI').Value := stfi;
          ibSP.ParamByName('DPAG').Value := 0;
          ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPAG').Value := 0;
          ibSP.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
        end;

        ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
        ibSP.ParamByName('STA').Value  := '0';
        ibSP.ExecProc;

        if stfi = 'PAGO' then
        begin
          ibSP.StoredProcName := 'SP_FIN_REC_REC';
          ibSP.Prepare;

          ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_REC';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('fin').Value  := 'FIN_REC_BAN_REC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('CCAB').Value := ccab;
          ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
          ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
          ibSP.ParamByName('CDBX').Value := cdbx;
          ibSP.ParamByName('CDCX').Value := strtoint(edcdcx.Text);
          ibSP.ParamByName('CONC').Value := 1;
          ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
          ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
          ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
          ibSP.ParamByName('DCAD').Value := edDBAI.Date;
          ibSP.ParamByName('DBAI').Value := edDBAI.Date;
          ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
          ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;
          ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
          ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
          ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
          ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
          ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
          ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
          ibSP.ParamByName('STFI').Value := 'PAGO';
          ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
          ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
          ibSP.ParamByName('CDCO').Value := 0;
          ibSP.ParamByName('CDBA').Value := 0;
          ibSP.ParamByName('DEBA').Value := '';
          ibSP.ParamByName('DPAG').Value := edDBAI.Date;
          ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
          ibSP.ParamByName('VPEN').Value := 0;
          ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
          ibSP.ParamByName('STA').Value  := '0';
          ibSP.ParamByName('BCON').Value := 0;
          ibSP.ParamByName('DCON').Value := '';
          ibSP.ParamByName('LOTE').Value := 0;
          ibSP.ParamByName('DLOT').Value := 0;
          ibSP.ParamByName('CDCH').Value := 0;
          ibSP.ExecProc;
        end;

        IBTra.CommitRetaining;
      except
        IBTra.RollbackRetaining;
        messageBox(handle,'Problemas na gravação da bancário !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      fin_rec_bai.Next;
    end;
  finally
    fin_rec_bai.First;
    fin_rec_bai.EnableControls;
  end;
  LANCA_CAIXA('B',1);

  if fin_recFIN_CONC.AsInteger > 1 then
  begin
    try
      tscar.Show;

      fin_rec_bai.DisableControls;
      fin_rec_bai.First;
      while not fin_rec_bai.Eof do
      begin
        try
          ibSP.StoredProcName := 'SP_FIN_REC_BAI';
          ibSP.Prepare;

          ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_BAI';
          if frmprincipal.parametrosID.AsInteger > 1 then
          ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_BAI_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

          ibSP.ParamByName('id').Value   := 0;
          ibSP.ParamByName('CCAB').Value := ccab;
          ibSP.ParamByName('CDBX').Value := cdbx;
          ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
          ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
          ibSP.ParamByName('CDCX').Value := edcdcx.Text;
          ibSP.ParamByName('CONC').Value := fin_recFIN_CONC.AsInteger-1;
          ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
          ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
          ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
          ibSP.ParamByName('DCAD').Value := edDBAI.Date;
          ibSP.ParamByName('DBAI').Value := edDBAI.Date;
          ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
          ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;
          ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
          ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
          ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
          ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
          ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
          ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
          ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
          ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
          ibSP.ParamByName('CDCO').Value := 0;
          ibSP.ParamByName('CDBA').Value := 0;
          ibSP.ParamByName('DEBA').Value := '';
          ibSP.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
          ibSP.ParamByName('BCON').Value := 0;
          ibSP.ParamByName('DCON').Value := '';
          ibSP.ParamByName('LOTE').Value := 0;
          ibSP.ParamByName('DLOT').Value := 0;
          ibSP.ParamByName('CDCH').Value := 0;

          if stfi = 'PAGO' then
          begin
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('DPAG').Value := edDBAI.Date;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPEN').Value := 0;
          end
          else
          begin
            ibSP.ParamByName('STFI').Value := stfi;
            ibSP.ParamByName('DPAG').Value := edDBAI.Date;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := 0;
            ibSP.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
          end;

          ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
          ibSP.ParamByName('STA').Value  := '0';
          ibSP.ExecProc;

          if stfi = 'PAGO' then
          begin
            ibSP.StoredProcName := 'SP_FIN_REC_REC';
            ibSP.Prepare;

            ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC';
            if frmprincipal.parametrosID.AsInteger > 1 then
            ibSP.ParamByName('fin').Value  := 'FIN_REC_CAR_REC_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

            ibSP.ParamByName('id').Value   := 0;
            ibSP.ParamByName('CCAB').Value := ccab;
            ibSP.ParamByName('CDBX').Value := cdbx;
            ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
            ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
            ibSP.ParamByName('CDCX').Value := edcdcx.Text;
            ibSP.ParamByName('CONC').Value := fin_recFIN_CONC.AsInteger-1;
            ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
            ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
            ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
            ibSP.ParamByName('DCAD').Value := edDBAI.Date;
            ibSP.ParamByName('DBAI').Value := edDBAI.Date;
            ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
            ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;
            ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
            ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
            ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
            ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
            ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
            ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
            ibSP.ParamByName('STFI').Value := 'PAGO';
            ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
            ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
            ibSP.ParamByName('CDCO').Value := 0;
            ibSP.ParamByName('CDBA').Value := 0;
            ibSP.ParamByName('DEBA').Value := '';
            ibSP.ParamByName('DPAG').Value := edDBAI.Date;
            ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
            ibSP.ParamByName('VPEN').Value := 0;
            ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
            ibSP.ParamByName('STA').Value  := '0';
            ibSP.ParamByName('BCON').Value := 0;
            ibSP.ParamByName('DCON').Value := '';
            ibSP.ParamByName('LOTE').Value := 0;
            ibSP.ParamByName('DLOT').Value := 0;
            ibSP.ParamByName('CDCH').Value := 0;
            ibSP.ExecProc;
          end;
          IBTra.CommitRetaining;
        except
          IBTra.RollbackRetaining;
          messageBox(handle,'Problemas na gravação da carteira !'+#13+'Favor entrar em contato com o administrador do sistema.',PChar(caption),MB_ICONERROR+MB_OK);
          Abort;
        end;

        fin_rec_bai.Next;
      end;
    finally
      fin_rec_bai.First;
      fin_rec_bai.EnableControls;
    end;
    LANCA_CAIXA('C',fin_recFIN_CONC.AsInteger-1);
  end;

  if stfi <> 'PAGO' then
     stfi := 'FATURADO';

  with Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('SET    ROM_STFI = '''+stfi+''',');
    SQL.Add('       ROM_DBAI = '''+formatDateTime('mm/dd/yy',edDBAI.Date)+''',');
    SQL.Add('       ROM_CDBX = '''+inttostr(cdbx)+''',');
    SQL.Add('       ROM_CBAI = '''+RECUsuarios.ID+''',');
    SQL.Add('       ROM_TBAI = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');

    if fin_recFIN_CDRO.AsInteger > 0 then
    SQL.Add('WHERE  ID       = '''+fin_recFIN_CDRO.AsString+'''') else
    SQL.Add('WHERE  ID       = '''+fin_recFIN_CDPD.AsString+'''');
    ExecSQL;

    Close;
    SQL.Clear;
    SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
    SQL.Add('SET    ROM_CDBX = '''+inttostr(cdbx)+''',');
    SQL.Add('       ROM_STFI = ''FATURADO''');
    SQL.Add('WHERE  ID = '''+fin_recFIN_CDRO.AsString+'''');
    ExecSQL;

    IBTra.CommitRetaining;
  end;
  siVAL.Enabled := false;
end;

procedure Tfrmctr_ped_fin.fin_recBeforePost(DataSet: TDataSet);
begin
  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_CPPL,FIN_DFIN FROM FIN_PPL');
    SQL.Add('WHERE  FIN_DFIN = '''+fin_recFIN_STPD.AsString+'''');
    Open;
    FIN_RECFIN_IPPL.Value := fields[0].AsInteger;
    FIN_RECFIN_CPPL.Value := fields[1].AsString;
    FIN_RECFIN_DPPL.Value := fields[2].AsString;

    SQL.Clear;
    SQL.Add('SELECT ID,FIN_DCUS FROM FIN_CUS');
    SQL.Add('WHERE  FIN_DCUS = ''VENDAS''');
    Open;
    FIN_RECFIN_CCUS.Value := fields[0].AsInteger;
    FIN_RECFIN_DCUS.Value := fields[1].AsString;
  end;
end;

procedure Tfrmctr_ped_fin.dbgprz1FIN_TIPOChange(Sender: TObject);
begin
  if not (fin_rec_bai.State in [dsInsert,dsEdit]) then
  exit;

  fin_rec_baiFIN_TIPO.Value := dbgprz1.EditingText;
  if copy(fin_rec_baiFIN_TIPO.AsString,1,6) = 'CHEQUE' then
  fin_rec_baiFIN_VALO.Value := 0;
end;

procedure Tfrmctr_ped_fin.dbgprz1FIN_VALOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var
  NewString: string;
  ClickedOK: Boolean;
begin
  if dbgprz1.EditingText <> '' then
  fin_rec_baiFIN_VALO.Value := strtofloat(dbgprz1.EditingText);

  if copy(fin_rec_baiFIN_TIPO.AsString,1,6) <> 'CHEQUE' then
  exit;
  
  if not (fin_rec_bai.State in [dsInsert,dsEdit]) then
  exit;

  ClickedOK := InputQuery('Passe o cheque pela leitora', 'Cheque', NewString);
  if (ClickedOK) and (length(NewString) > 30) then
  begin
    fin_rec_baiFIN_BANC.Value := copy(NewString,02,03);
    fin_rec_baiFIN_AGEN.Value := copy(NewString,05,04);
    fin_rec_baiFIN_CONT.Value := copy(NewString,22,12);
    fin_rec_baiFIN_NCHQ.Value := copy(NewString,14,06);
  end;
end;

procedure Tfrmctr_ped_fin.dbgprz1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if ((dbgprz1.FocusedColumn = 3) and (fin_rec_baiFIN_NCHQ.AsString <> '')) or (dbgprz1.FocusedColumn = 7) then
                 begin
                   fin_rec_bai.Next;
                   if fin_rec_bai.Eof then
                   begin
                     if oTextToValor(edtotb.Text) < oTextToValor(edtotr.Text) then
                        fin_rec_bai.Append;
                     dbgprz1.FocusedColumn := 1;
                   end;
                 end
                 else
                   dbgprz1.FocusedColumn := dbgprz1.FocusedColumn + 1;
               end;
    VK_DELETE: if fin_rec_bai.State = dsBrowse then
                  b1D.Click;
    VK_ESCAPE: if fin_rec_bai.State = dsBrowse then close else fin_rec_bai.Cancel;
    VK_INSERT: if not b1S.Enabled then b1I.Click;
  end;
end;

procedure Tfrmctr_ped_fin.siSAIRClick(Sender: TObject);
begin
  if siVAL.Tag = 1 then
  raise exception.Create('Clique no botão validar antes de sair.');
  inherited;
end;

procedure Tfrmctr_ped_fin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  siVAL.Click;
end;

end.
