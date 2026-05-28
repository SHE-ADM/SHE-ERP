unit pEXP_SEP_MAN;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, math, StrUtils, dxDBTLCl, dxGrClms, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  DBCtrls, Grids, DBGrids, StdCtrls, dxPageControl, IBEvents, rxSpeedbar,
  IBSQL, ActnList;

type
  TFrmEXP_SEP_MAN = class(TFrmPadr3)
    DTSEdicao: TDataSource;
    TSEdicao: TIBTransaction;
    consulta_s: TIBQuery;
    Edicao: TIBDataSet;
    CAD_PRO_EST: TIBQuery;
    Pedidos: TIBQuery;
    FKPedidos: TIBQuery;
    DTSFKPedidos: TDataSource;
    CAD_PRO_EST_SEP: TIBQuery;
    DTSCAD_PRO_EST_SEP: TDataSource;
    siVIS: TSpeedItem;
    PNLPrincipal: TPanel;
    GBEtiqueta: TGroupBox;
    LACDET: TLabel;
    Label1: TLabel;
    lanlan: TLabel;
    Label5: TLabel;
    laqlan: TLabel;
    ladpro: TLabel;
    GBPedido: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    LADECV: TLabel;
    LADECD: TLabel;
    edfatu: TdxMaskEdit;
    EDDEPK: TdxMaskEdit;
    PNLRodape: TPanel;
    GBExpedicao: TGroupBox;
    pcite: TdxPageControl;
    tsLAN: TdxTabSheet;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoROM_CART: TdxDBGridMaskColumn;
    DBGEdicaoROM_CPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_CDET: TdxDBGridMaskColumn;
    DBGEdicaoROM_QTSP: TdxDBGridMaskColumn;
    SpeedBar3: TSpeedBar;
    SpeedbarSection9: TSpeedbarSection;
    SpeedbarSection10: TSpeedbarSection;
    SpeedbarSection11: TSpeedbarSection;
    SpeedbarSection12: TSpeedbarSection;
    pINC: TSpeedItem;
    pALT: TSpeedItem;
    pDEL: TSpeedItem;
    pSAV: TSpeedItem;
    pCAN: TSpeedItem;
    tsSEP: TdxTabSheet;
    DBGSEP: TdxDBGrid;
    DBGSEPSKU: TdxDBGridMaskColumn;
    DBGSEPUCOM: TdxDBGridMaskColumn;
    DBGSEPEST_CRED: TdxDBGridMaskColumn;
    DBGSEPCDET: TdxDBGridMaskColumn;
    tsPED: TdxTabSheet;
    DBGPED: TdxDBGrid;
    DBGPEDSKU: TdxDBGridMaskColumn;
    DBGPEDQTDE: TdxDBGridMaskColumn;
    Label3: TLabel;
    LAEPET: TLabel;
    DBGEdicaoROM_DGCP: TdxDBGridMaskColumn;
    DBGSEPDGCP: TdxDBGridMaskColumn;
    DBGPEDDGCP: TdxDBGridMaskColumn;
    SQLSEdicao: TIBSQL;
    EdicaoID: TIntegerField;
    EdicaoROM_ITEM: TIBStringField;
    EdicaoROM_IPRO: TIntegerField;
    EdicaoROM_CART: TIBStringField;
    EdicaoROM_CPRO: TIBStringField;
    EdicaoROM_DPRO: TIBStringField;
    EdicaoROM_DGCP: TIBStringField;
    EdicaoROM_DUNI: TIBStringField;
    EdicaoROM_UCON: TIBStringField;
    EdicaoROM_UNIT: TFloatField;
    EdicaoROM_CDET: TIBStringField;
    EdicaoROM_CTNR: TIBStringField;
    EdicaoROM_LOTE: TIBStringField;
    EdicaoROM_IDSP: TIntegerField;
    EdicaoROM_DSEP: TIBStringField;
    EdicaoROM_QTSP: TIBBCDField;
    EdicaoROM_RLSP: TIntegerField;
    EdicaoROM_NFCI: TIBStringField;
    EdicaoROM_CDDF: TSmallintField;
    EdicaoROM_OBSE: TMemoField;
    DBGEdicaoROM_RLSP: TdxDBGridMaskColumn;
    EdicaoROM_CDEP: TSmallintField;
    FKPedidosIDEP: TSmallintField;
    FKPedidosDEEP: TIBStringField;
    FKPedidosIDCA: TSmallintField;
    FKPedidosDTCA: TDateTimeField;
    FKPedidosIDPK: TLargeintField;
    FKPedidosIDFK: TLargeintField;
    FKPedidosITEM: TIntegerField;
    FKPedidosIDSP: TSmallintField;
    FKPedidosCDSP: TLargeintField;
    FKPedidosDTSP: TDateTimeField;
    FKPedidosIDCP: TIntegerField;
    FKPedidosCP_IDEP: TSmallintField;
    FKPedidosIDAK: TLargeintField;
    FKPedidosARTIGO: TIBStringField;
    FKPedidosSKU: TIBStringField;
    FKPedidosCEAN: TIBStringField;
    FKPedidosDGCP: TIBStringField;
    FKPedidosDECP: TIBStringField;
    FKPedidosUCOM: TIBStringField;
    FKPedidosUCON: TIBStringField;
    FKPedidosQTDE: TIBBCDField;
    FKPedidosQTRL: TIntegerField;
    FKPedidosQTSP: TIBBCDField;
    FKPedidosRLSP: TIntegerField;
    FKPedidosVPRC_PAD_INI: TFloatField;
    FKPedidosVPRC_PAD_FIM: TFloatField;
    FKPedidosVPRC_PAD: TFloatField;
    FKPedidosVPRC_COM: TFloatField;
    FKPedidosPDSC: TIBBCDField;
    FKPedidosVDSC: TFloatField;
    FKPedidosTSDE: TIBBCDField;
    FKPedidosTCDE: TIBBCDField;
    FKPedidosVTSP: TIBBCDField;
    FKPedidosPPSP: TIBBCDField;
    FKPedidosORIG: TSmallintField;
    FKPedidosNCM: TIBStringField;
    FKPedidosPIPI: TIBBCDField;
    FKPedidosVIPI: TFloatField;
    CECDET: TdxCurrencyEdit;
    CAD_PRO_ESTID: TIntegerField;
    CAD_PRO_ESTIDEP: TSmallintField;
    CAD_PRO_ESTDEEP: TIBStringField;
    CAD_PRO_ESTIDCA: TSmallintField;
    CAD_PRO_ESTDTCA: TDateTimeField;
    CAD_PRO_ESTDECA: TIBStringField;
    CAD_PRO_ESTCDRO: TLargeintField;
    CAD_PRO_ESTDTRO: TDateField;
    CAD_PRO_ESTCDET: TLargeintField;
    CAD_PRO_ESTCTNR: TIBStringField;
    CAD_PRO_ESTLOTE: TIBStringField;
    CAD_PRO_ESTIDSP: TSmallintField;
    CAD_PRO_ESTCDSP: TLargeintField;
    CAD_PRO_ESTDTSP: TDateTimeField;
    CAD_PRO_ESTDESP: TIBStringField;
    CAD_PRO_ESTIDPK: TLargeintField;
    CAD_PRO_ESTDEPK: TIBStringField;
    CAD_PRO_ESTDTPK: TDateTimeField;
    CAD_PRO_ESTIDCD: TIntegerField;
    CAD_PRO_ESTDECD: TIBStringField;
    CAD_PRO_ESTIDCV: TSmallintField;
    CAD_PRO_ESTDECV: TIBStringField;
    CAD_PRO_ESTIDCR: TSmallintField;
    CAD_PRO_ESTDECR: TIBStringField;
    CAD_PRO_ESTIDCP: TIntegerField;
    CAD_PRO_ESTCP_IDEP: TSmallintField;
    CAD_PRO_ESTIDAK: TLargeintField;
    CAD_PRO_ESTARTIGO: TIBStringField;
    CAD_PRO_ESTSKU: TIBStringField;
    CAD_PRO_ESTCEAN: TIBStringField;
    CAD_PRO_ESTDECP: TIBStringField;
    CAD_PRO_ESTDGCP: TIBStringField;
    CAD_PRO_ESTUCOM: TIBStringField;
    CAD_PRO_ESTUCON: TIBStringField;
    CAD_PRO_ESTQTDE: TIBBCDField;
    CAD_PRO_ESTQTRL: TIntegerField;
    CAD_PRO_ESTREOP: TIBStringField;
    CAD_PRO_ESTVPRC_COM: TFloatField;
    CAD_PRO_ESTCDDF: TSmallintField;
    CAD_PRO_ESTDEDF: TIBStringField;
    CAD_PRO_ESTDTDF: TDateTimeField;
    CAD_PRO_ESTNFCI: TIBStringField;
    CAD_PRO_ESTINFADCAD: TIBStringField;
    CAD_PRO_EST_SEPID: TIntegerField;
    CAD_PRO_EST_SEPIDEP: TSmallintField;
    CAD_PRO_EST_SEPDEEP: TIBStringField;
    CAD_PRO_EST_SEPIDCA: TSmallintField;
    CAD_PRO_EST_SEPDTCA: TDateTimeField;
    CAD_PRO_EST_SEPDECA: TIBStringField;
    CAD_PRO_EST_SEPCDRO: TLargeintField;
    CAD_PRO_EST_SEPDTRO: TDateField;
    CAD_PRO_EST_SEPCDET: TLargeintField;
    CAD_PRO_EST_SEPCTNR: TIBStringField;
    CAD_PRO_EST_SEPLOTE: TIBStringField;
    CAD_PRO_EST_SEPIDSP: TSmallintField;
    CAD_PRO_EST_SEPCDSP: TLargeintField;
    CAD_PRO_EST_SEPDTSP: TDateTimeField;
    CAD_PRO_EST_SEPDESP: TIBStringField;
    CAD_PRO_EST_SEPIDPK: TLargeintField;
    CAD_PRO_EST_SEPDEPK: TIBStringField;
    CAD_PRO_EST_SEPDTPK: TDateTimeField;
    CAD_PRO_EST_SEPIDCD: TIntegerField;
    CAD_PRO_EST_SEPDECD: TIBStringField;
    CAD_PRO_EST_SEPIDCV: TSmallintField;
    CAD_PRO_EST_SEPDECV: TIBStringField;
    CAD_PRO_EST_SEPIDCR: TSmallintField;
    CAD_PRO_EST_SEPDECR: TIBStringField;
    CAD_PRO_EST_SEPIDCP: TIntegerField;
    CAD_PRO_EST_SEPCP_IDEP: TSmallintField;
    CAD_PRO_EST_SEPIDAK: TLargeintField;
    CAD_PRO_EST_SEPARTIGO: TIBStringField;
    CAD_PRO_EST_SEPSKU: TIBStringField;
    CAD_PRO_EST_SEPCEAN: TIBStringField;
    CAD_PRO_EST_SEPDECP: TIBStringField;
    CAD_PRO_EST_SEPDGCP: TIBStringField;
    CAD_PRO_EST_SEPUCOM: TIBStringField;
    CAD_PRO_EST_SEPUCON: TIBStringField;
    CAD_PRO_EST_SEPQTDE: TIBBCDField;
    CAD_PRO_EST_SEPQTRL: TIntegerField;
    CAD_PRO_EST_SEPREOP: TIBStringField;
    CAD_PRO_EST_SEPVPRC_COM: TFloatField;
    CAD_PRO_EST_SEPCDDF: TSmallintField;
    CAD_PRO_EST_SEPDEDF: TIBStringField;
    CAD_PRO_EST_SEPDTDF: TDateTimeField;
    CAD_PRO_EST_SEPNFCI: TIBStringField;
    CAD_PRO_EST_SEPINFADCAD: TIBStringField;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    PedidosIDPK: TLargeintField;
    PedidosIDCA: TSmallintField;
    PedidosDTCA: TDateTimeField;
    PedidosIDPK1: TLargeintField;
    PedidosDEPK: TIBStringField;
    PedidosCTNR: TIBStringField;
    PedidosCDRO: TLargeintField;
    PedidosDTRO: TDateField;
    PedidosCDNF: TLargeintField;
    PedidosDTNF: TDateField;
    PedidosCDBX: TLargeintField;
    PedidosDTBX: TDateField;
    PedidosIDCD: TIntegerField;
    PedidosDECD: TIBStringField;
    PedidosIDCV: TSmallintField;
    PedidosDECV: TIBStringField;
    PedidosIDCR: TSmallintField;
    PedidosDECR: TIBStringField;
    PedidosTCDE: TIBBCDField;
    PedidosSTPD: TIBStringField;
    PedidosLQPD: TSmallintField;
    PedidosSTCO: TIBStringField;
    PedidosTPCO: TSmallintField;
    PedidosRECO: TIBStringField;
    PedidosCDPG: TSmallintField;
    PedidosINFADCAD: TIBStringField;
    PedidosCDST: TSmallintField;
    PedidosREST: TIBStringField;
    PedidosDEST: TIBStringField;
    PedidosAPST: TSmallintField;
    PedidosFPST: TSmallintField;
    PedidosBQST: TSmallintField;
    PedidosIDEP: TSmallintField;
    FKPedidosID: TLargeintField;
    FKPedidosUQTDE: TIBBCDField;
    FKPedidosUPSBR: TIBBCDField;
    FKPedidosUPSLQ: TIBBCDField;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    SQLFKEdicao: TIBSQL;
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pALTClick(Sender: TObject);
    procedure pSAVClick(Sender: TObject);
    procedure pCANClick(Sender: TObject);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure PedidosAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure pDELClick(Sender: TObject);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure PedidosAfterClose(DataSet: TDataSet);
    procedure PedidosBeforeOpen(DataSet: TDataSet);
    procedure EDDEPKValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CECDETValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CAD_PRO_ESTAfterOpen(DataSet: TDataSet);
    procedure CAD_PRO_ESTBeforeOpen(DataSet: TDataSet);
    procedure ACTMPostExecute(Sender: TObject);
    procedure ACTMCancelExecute(Sender: TObject);
  private
    { Private declarations }
    RECEstoque: TRECPedidos;

    procedure _CAD_PRO_EST_LAN_UPD;
  public
    { Public declarations }
    procedure ABRE_TABELA;
  end;

var
  FrmEXP_SEP_MAN: TFrmEXP_SEP_MAN;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmEXP_SEP_MAN.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_EST'; { Eventos }

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Estoque';
  REC_SHE_DEF.GReferencia := 'Expedição';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  oIRECPedidos(RECEstoque);
  RECEstoque.ASPEdicao := SPEdicao;

  oCTransact(IBTRA);
  oOTransact(TConsulta);
  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.IDPK,PK.IDEP,PK.IDCA,PK.DTCA,');
    SQL.Add('       PK.IDPK,PK.DEPK,PK.CTNR,');
    SQL.Add('       PK.CDRO,PK.DTRO,PK.CDNF,PK.DTNF,');
    SQL.Add('       PK.CDBX,PK.DTBX,');
    SQL.Add('       PK.IDCD,PK.DECD,PK.IDCV,PK.DECV,');
    SQL.Add('       PK.IDCR,PK.DECR,');
    SQL.Add('       PK.TCDE,');
    SQL.Add('       PK.STPD,PK.LQPD,');
    SQL.Add('       PK.STCO,PK.TPCO,');
    SQL.Add('       PK.RECO,PK.CDPG,');
    SQL.Add('       PK.CDST,PK.REST,PK.DEST,');
    SQL.Add('       PK.APST,PK.FPST,PK.BQST,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('VW_PED_VEN_CAB_NEW','_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('WHERE  PK.DEPK = :DEPK');

    Prepare;
  end;

  with FKPedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.ID  ,PK.IDEP,PK.DEEP,');
    SQL.Add('         PK.IDCA,PK.DTCA,');
    SQL.Add('         PK.IDPK,PK.IDFK,PK.ITEM,');
    SQL.Add('         PK.IDSP,PK.CDSP,PK.DTSP,');
    SQL.Add('         PK.IDCP,PK.CP_IDEP,');
    SQL.Add('         PK.IDAK,PK.ARTIGO,');
    SQL.Add('         PK.SKU ,PK.CEAN,');
    SQL.Add('         PK.DGCP,PK.DECP,');
    SQL.Add('         PK.UCOM,PK.UCON,PK.UQTDE,PK.UPSBR,PK.UPSLQ,');
    SQL.Add('         PK.QTDE,PK.QTRL,');
    SQL.Add('         PK.QTSP,PK.RLSP,');
    SQL.Add('         PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
    SQL.Add('         PK.VPRC_PAD,PK.VPRC_COM,');
    SQL.Add('         PK.PDSC,PK.VDSC,');
    SQL.Add('         PK.TSDE,PK.TCDE,PK.VTSP,PK.PPSP,');
    SQL.Add('         PK.ORIG,PK.NCM ,PK.PIPI,PK.VIPI');

    SQL.Add('FROM ' + oREPZero('VW_PED_VEN_ITE_NEW','_',RECParametros.EP_ID,3) + ' AS PK');
    
    SQL.Add('WHERE    PK.IDPK = :IDPK ');
    SQL.Add('ORDER BY PK.VPRC_COM DESC');

    Prepare;
  end;  

  ABRE_TABELA;
end;

procedure TFrmEXP_SEP_MAN.FormDestroy(Sender: TObject);
begin
  inherited;
  frmEXP_SEP_MAN := Nil;
end;

procedure TFrmEXP_SEP_MAN.ABRE_TABELA;
begin
  if not TSEdicao.Active then TSEdicao.StartTransaction;

  pcITE.ActivePage := tsLAN;

  with consulta_s do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM ROM_ITE');
    ExecSQL;
  end;
  oRTransact(TSEdicao);
end;

procedure TFrmEXP_SEP_MAN.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;

  if ((ssCtrl in Shift) and (Key in [83])) then
     siSAV.Click;
end;

procedure TFrmEXP_SEP_MAN.pALTClick(Sender: TObject);
begin
  if Edicao.State = dsBrowse then
     Edicao.Edit;
end;

procedure TFrmEXP_SEP_MAN.pSAVClick(Sender: TObject);
begin
  if Edicao.State in [dsedit,dsinsert] then
     Edicao.Post;
end;

procedure TFrmEXP_SEP_MAN.pCANClick(Sender: TObject);
begin
  Edicao.Cancel;
end;

procedure TFrmEXP_SEP_MAN.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if Edicao.RecordCount = 0 then
  begin
    Edicao.Close;
    Edicao.Open;
    ABORT;
  end;
end;

procedure TFrmEXP_SEP_MAN.EdicaoAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  TSEdicao.CommitRetaining;

  wRec := Edicao.GetBookmark;
  Edicao.Close;
  Edicao.Open;
  if (wRec = Nil) or (Edicao.Fields[0].IsNull) then Edicao.last
     else Edicao.GotoBookmark(wRec);
  Edicao.FreeBookmark(wRec);
end;

procedure TFrmEXP_SEP_MAN.pDELClick(Sender: TObject);
begin
  inherited;

  if oYesNo(handle,'Excluir Etiqueta ?') = mrNo then
     Abort;

  Edicao.Delete;
end;

procedure TFrmEXP_SEP_MAN.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value       := 0;
  EdicaoROM_IDSP.Value := RECUsuarios.Id;
  EdicaoROM_DSEP.Value := RECUsuarios.Login;
end;

procedure TFrmEXP_SEP_MAN.DTSEdicaoDataChange(Sender: TObject;
  Field: TField);
begin
  if Edicao.State = dsBrowse then
  begin
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_CART);
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_CPRO);
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_DGCP);
  end;
end;

procedure TFrmEXP_SEP_MAN.PedidosBeforeOpen(DataSet: TDataSet);
begin
  LADECD.Caption := EmptyStr;
  LADECD.Refresh;

  LADECV.Caption := EmptyStr;
  LADECV.Refresh;
end;

procedure TFrmEXP_SEP_MAN.PedidosAfterOpen(DataSet: TDataSet);
begin
  if PedidosIDPK.AsInteger = 0 then
     oException(EDDEPK,'Pedido não Encontrado !');

  if PedidosREST.AsString = 'C' then
     oException(EDDEPK,'Pedido Cancelado !');

  if PedidosCDNF.AsInteger > 0 then
     oException(EDDEPK,'Pedido já Faturado !' + #13 +
                       'Nota Fiscal Nº ' + PedidosCDNF.AsString + ' - ' + FormatDateTime('dd.mm.yy hh:mm',PedidosDTNF.AsDateTime) + '.');

  if PedidosCDBX.AsInteger > 0 then
     oException(EDDEPK,'Pedido já Faturado !');

  if PedidosCDRO.AsInteger > 0 then
     oException(EDDEPK,'Pedido já Romaneado !' + #13 +
                       'Romaneio Nº ' + PedidosCDRO.AsString + ' - ' + FormatDateTime('dd.mm.yy hh:mm',PedidosDTRO.AsDateTime) + '.');

  FKPedidos.Close;
  FKPedidos.ParamByName('IDPK').Value := PedidosIDPK.AsInteger;
  FKPedidos.Prepare;
  FKPedidos.Open;

  if FKPedidosIDPK.AsInteger = 0 then
     oException(EDDEPK,'Itens do pedido não encontrados !');

  CAD_PRO_EST_SEP.Close;
  CAD_PRO_EST_SEP.ParamByName('IDPK').Value := PedidosIDPK.AsInteger;
  CAD_PRO_EST_SEP.ParamByName('IDEP').Value := PedidosIDEP.AsInteger;
  CAD_PRO_EST_SEP.Prepare;
  CAD_PRO_EST_SEP.Open;

  LADECD.Caption := FormatDateTime('dd.mm.yy hh:mm',PedidosDTCA.AsDateTime) + ' - ' + PedidosDECD.AsString;
  LADECD.Refresh;

  LADECV.Caption := PedidosDECV.AsString + ' - ' + PedidosDECR.AsString;
  LADECV.Refresh;
end;

procedure TFrmEXP_SEP_MAN.PedidosAfterClose(DataSet: TDataSet);
begin
  FKPedidos.Close;
  CAD_PRO_EST_SEP.Close;
end;

procedure TFrmEXP_SEP_MAN.EDDEPKValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if EDDEPK.Text <> EmptyStr then
  begin
    Pedidos.Close;
    Pedidos.ParamByName('DEPK').Value := EDDEPK.Text;
    Pedidos.Prepare;
    Pedidos.Open;

    if CAD_PRO_EST_SEPIDPK.AsInteger = 0 then
    pcITE.ActivePage := tsPED else
    pcITE.ActivePage := tsSEP;
  end;
end;

procedure TFrmEXP_SEP_MAN.CECDETValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if CECDET.Value = 0 then
     Exit;

  if EDDEPK.Text = EmptyStr then
  oException(EDDEPK,'Número do pedido não informado !');

  if Edicao.Locate('ROM_CDET',CECDET.Text,[]) then
  oException(CECDET,'Etiqueta já Utilizada !');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID FROM CAD_PRO_SEP AS PK');
    SQL.Add('WHERE  PK.CDET = ''' + CECDET.Text + '''');
    ExecQuery;

    if not Eof then
    oException(CECDET,'Etiqueta já Utilizada !');

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.IDPK,PK.IDCP FROM CAD_PRO_EST AS PK');
    SQL.Add('WHERE  PK.CDET = ''' + CECDET.Text + '''');
    ExecQuery;

    if Eof then
    oException(CECDET,'Etiqueta não Encontrada !');

    if Current.Vars[0].AsInteger > 0 then
    oException(CECDET,'Etiqueta já Utilizada !');

    if not FKPedidos.Locate('IDCP',Current.Vars[1].AsString,[]) then
    oException(CECDET,'Etiqueta não pertence ao pedido !');
  end;

  CAD_PRO_EST.Close;
  CAD_PRO_EST.ParamByName('CDET').Value := CECDET.Value;
  CAD_PRO_EST.Prepare;
  CAD_PRO_EST.Open;

  CECDET.Value := 0;
  CECDET.SetFocus;

  Application.ProcessMessages;
end;

procedure TFrmEXP_SEP_MAN.CAD_PRO_ESTBeforeOpen(DataSet: TDataSet);
begin
  ladpro.Caption := 'NADA CONSTA';
  lanlan.Caption := 'NADA CONSTA';
  laqlan.Caption := 'NADA CONSTA';
end;

procedure TFrmEXP_SEP_MAN.CAD_PRO_ESTAfterOpen(DataSet: TDataSet);
begin
  if cad_pro_est.Fields[0].IsNull then
     oException(CECDET,'Número de etiqueta não encontrado !');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FIRST 1 PK.IDPK,PK.DTCA AS DTPK,PK.DEPK,PK.DVPD');
    SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('JOIN ' + oREPZero('ROM_ITE'    ,'_',RECParametros.EP_ID,3) + ' AS FK ON (FK.IDPK = PK.CDRO)');

    SQL.Add('WHERE FK.CDET = ''' + CECDET.Text + '''');
    SQL.Add('ORDER BY PK.ID DESC');
    ExecQuery;

    if (not Eof) and (Current.Vars[3].AsInteger = 0) then
    oException(CECDET,'Etiqueta já Utilizada !' + #13 +
                      'Pedido ' + Current.ByName('DEPK').AsString + ' - ' + FormatDateTime('dd.mm.yy hh:mm',Current.ByName('DTPK').AsDateTime) + '.');
  end;

  CAD_PRO_EST_SEP.First;
  if CAD_PRO_EST_SEP.Locate('CDET',CECDET.Value,[]) then
  begin
    pcite.ActivePage := tsSEP;
    oException(CECDET,'Número da etiqueta já utilizada para essa separação !');
  end;

  ladpro.Caption := cad_pro_estSKU.AsString+' '   +IFThen(not oEmpty(cad_pro_estDGCP.AsString),'( '+cad_pro_estDGCP.AsString+' )','')+' '+cad_pro_estDECP.AsString;
  lanlan.Caption := cad_pro_estCDRO.AsString+' de '+FormatDateTime('dd/mm/yy hh:mm',cad_pro_estDTCA.AsDateTime)+' Responsável: '+cad_pro_estDECA.AsString;
  laqlan.Caption := formatFloat('#,0.00',cad_pro_estQTDE.AsFloat);

  FKPedidos.First;
  if not FKPedidos.Locate('IDCP',cad_pro_estIDCP.AsInteger,[]) then
     oException(CECDET,'Pedido não possui o produto informado na etiqueta !');

  Edicao.Append;
  EdicaoROM_CDEP.Value := cad_pro_estIDEP.AsInteger;
  EdicaoROM_ITEM.Value := FKPedidosITEM.AsString;
  EdicaoROM_IPRO.Value := FKPedidosIDCP.AsInteger;
  EdicaoROM_CART.Value := cad_pro_estARTIGO.AsString;
  EdicaoROM_CPRO.Value := cad_pro_estSKU.AsString;
  EdicaoROM_DPRO.Value := FKPedidosDECP.AsString;
  EdicaoROM_DGCP.Value := FKPedidosDGCP.AsString;
  EdicaoROM_DUNI.Value := FKPedidosUCOM.AsString;

  EdicaoROM_UNIT.AsFloat := FKPedidosVPRC_COM.AsFloat;

  EdicaoROM_CDET.Value := cad_pro_estCDET.AsString;
  EdicaoROM_CTNR.Value := cad_pro_estCTNR.AsString;
  EdicaoROM_LOTE.Value := cad_pro_estLOTE.AsString;
  EdicaoROM_QTSP.Value := cad_pro_estQTDE.AsFloat;
  EdicaoROM_RLSP.Value := cad_pro_estQTRL.AsInteger;
  EdicaoROM_NFCI.Value := cad_pro_estNFCI.AsString;
  EdicaoROM_CDDF.Value := cad_pro_estCDDF.AsInteger;
  EdicaoROM_OBSE.Value := cad_pro_estINFADCAD.AsString;
  Edicao.Post;

  cad_pro_est.First;
  pcITE.ActivePage := tsLAN;
end;

procedure TFrmEXP_SEP_MAN.ACTMPostExecute(Sender: TObject);
begin
  inherited;
  if oYesNo(handle,'Confirma separação do pedido ?') = mrno then
  Abort;

  Edicao.First;
  CAD_PRO_EST_SEP.First;
  Pedidos.First;
  FKPedidos.First;

  if ((EdicaoId.AsInteger = 0) and (CAD_PRO_EST_SEPId.AsInteger = 0)) or (PedidosIDPK.AsInteger = 0) or (FKPedidosID.AsInteger = 0) then
  oException(CECDET,'Separação de Pedido sem etiquetas cadastradas !');

  if (PedidosIDPK.AsInteger <> FKPedidosIDPK.AsInteger) then
  oException(CECDET,'Pedido Nº '+PedidosDEPK.AsString+' inválido para separação de estoque !');

  try
    try
      oOTransact(TEdicao);

      if Edicao.RecNo > 0 then
      begin
        Edicao.DisableControls;
        Edicao.First;
        while not Edicao.Eof do
        begin
          FKPedidos.Locate('IDCP',EdicaoROM_IPRO.AsInteger,[]);

          SPEdicao.Close;
          SPEdicao.StoredProcName := 'SP_CAD_PRO_SEP';
          SPEdicao.Prepare;

          SPEdicao.ParamByName('AIDEP').Value := RECParametros.EP_ID;
          SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

          SPEdicao.ParamByName('ACDPK').Value := PedidosIDPK.AsInteger;
          SPEdicao.ParamByName('ADEPK').Value := PedidosDEPK.AsString;
          SPEdicao.ParamByName('ADTPK').Value := PedidosDTCA.AsDateTime;

          SPEdicao.ParamByName('AIDCL').Value := PedidosIDCD.AsInteger;
          SPEdicao.ParamByName('ADECL').Value := PedidosDECD.AsString;
          SPEdicao.ParamByName('AIDCV').Value := PedidosIDCV.AsInteger;
          SPEdicao.ParamByName('ADECV').Value := PedidosDECV.AsString;
          SPEdicao.ParamByName('AIDCR').Value := PedidosIDCR.AsInteger;
          SPEdicao.ParamByName('ADECR').Value := PedidosDECR.AsString;

          SPEdicao.ParamByName('ACDET').Value := EdicaoROM_CDET.AsString;
          SPEdicao.ParamByName('ACTNR').Value := EdicaoROM_CTNR.AsString;
          SPEdicao.ParamByName('ALOTE').Value := EdicaoROM_LOTE.AsString;
          SPEdicao.ParamByName('ANFCI').Value := EdicaoROM_NFCI.AsString;

          SPEdicao.ParamByName('AIDSP').Value := EdicaoROM_IDSP.AsInteger;
          SPEdicao.ParamByName('ADESP').Value := EdicaoROM_DSEP.AsString;

          SPEdicao.ParamByName('AIDFK').Value := FKPedidosID.AsInteger;
          SPEdicao.ParamByName('AITEM').Value := FKPedidosITEM.AsInteger;

          SPEdicao.ParamByName('AIDCP').Value := EdicaoROM_IPRO.AsInteger;
          SPEdicao.ParamByName('ADECP').Value := FKPedidosDECP.AsString;
          SPEdicao.ParamByName('ADGCP').Value := FKPedidosDGCP.AsString;

          SPEdicao.ParamByName('AUCOM').Value := FKPedidosUCOM.AsString;
          SPEdicao.ParamByName('AUCON').Value := FKPedidosUCON.AsString;

          SPEdicao.ParamByName('AQTDE').Value := EdicaoROM_QTSP.AsFloat;
          SPEdicao.ParamByName('AQTRL').Value := EdicaoROM_RLSP.AsInteger;

          SPEdicao.ParamByName('APSBR').Value := FKPedidosUPSBR.AsFloat * CAD_PRO_EST_SEPQTDE.AsFloat;
          SPEdicao.ParamByName('APSLQ').Value := FKPedidosUPSLQ.AsFloat * CAD_PRO_EST_SEPQTDE.AsFloat;

          SPEdicao.ParamByName('AVPRC_PAD_INI').Value := FKPedidosVPRC_PAD_INI.AsFloat;
          SPEdicao.ParamByName('AVPRC_PAD_FIM').Value := FKPedidosVPRC_PAD_FIM.AsFloat;
          SPEdicao.ParamByName('AVPRC').Value := FKPedidosVPRC_COM.AsFloat;

          SPEdicao.ParamByName('ANCM').Value  := FKPedidosNCM.AsString;
          SPEdicao.ParamByName('APIPI').Value := FKPedidosPIPI.AsFloat;
          SPEdicao.ExecProc;

          Edicao.Next;
        end;
      end else
      begin
        CAD_PRO_EST_SEP.DisableControls;
        while not CAD_PRO_EST_SEP.Eof do
        begin
          FKPedidos.Locate('IDCP',CAD_PRO_EST_SEPIDCP.AsInteger,[]);

          SPEdicao.Close;
          SPEdicao.StoredProcName := 'SP_CAD_PRO_SEP';
          SPEdicao.Prepare;

          SPEdicao.ParamByName('AIDEP').Value := RECParametros.EP_ID;
          SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

          SPEdicao.ParamByName('ACDPK').Value := PedidosIDPK.AsInteger;
          SPEdicao.ParamByName('ADEPK').Value := PedidosDEPK.AsString;
          SPEdicao.ParamByName('ADTPK').Value := PedidosDTCA.AsDateTime;

          SPEdicao.ParamByName('AIDCL').Value := PedidosIDCD.AsInteger;
          SPEdicao.ParamByName('ADECL').Value := PedidosDECD.AsString;
          SPEdicao.ParamByName('AIDCV').Value := PedidosIDCV.AsInteger;
          SPEdicao.ParamByName('ADECV').Value := PedidosDECV.AsString;
          SPEdicao.ParamByName('AIDCR').Value := PedidosIDCR.AsInteger;
          SPEdicao.ParamByName('ADECR').Value := PedidosDECR.AsString;

          SPEdicao.ParamByName('ACDET').Value := CAD_PRO_EST_SEPCDET.AsString;
          SPEdicao.ParamByName('ACTNR').Value := CAD_PRO_EST_SEPCTNR.AsString;
          SPEdicao.ParamByName('ALOTE').Value := CAD_PRO_EST_SEPLOTE.AsString;
          SPEdicao.ParamByName('ANFCI').Value := CAD_PRO_EST_SEPNFCI.AsString;

          SPEdicao.ParamByName('AIDSP').Value := CAD_PRO_EST_SEPIDSP.AsInteger;
          SPEdicao.ParamByName('ADESP').Value := CAD_PRO_EST_SEPDESP.AsString;

          SPEdicao.ParamByName('AIDFK').Value := FKPedidosID.AsInteger;
          SPEdicao.ParamByName('AITEM').Value := FKPedidosITEM.AsInteger;

          SPEdicao.ParamByName('AIDCP').Value := CAD_PRO_EST_SEPIDCP.AsInteger;
          SPEdicao.ParamByName('ADECP').Value := FKPedidosDECP.AsString;
          SPEdicao.ParamByName('ADGCP').Value := FKPedidosDGCP.AsString;

          SPEdicao.ParamByName('AUCOM').Value := FKPedidosUCOM.AsString;
          SPEdicao.ParamByName('AUCON').Value := FKPedidosUCON.AsString;

          SPEdicao.ParamByName('AQTDE').Value := CAD_PRO_EST_SEPQTDE.AsFloat;
          SPEdicao.ParamByName('AQTRL').Value := CAD_PRO_EST_SEPQTRL.AsInteger;

          SPEdicao.ParamByName('APSBR').Value := FKPedidosUPSBR.AsFloat * CAD_PRO_EST_SEPQTDE.AsFloat;
          SPEdicao.ParamByName('APSLQ').Value := FKPedidosUPSLQ.AsFloat * CAD_PRO_EST_SEPQTDE.AsFloat;

          SPEdicao.ParamByName('AVPRC_PAD_INI').Value := FKPedidosVPRC_PAD_INI.AsFloat;
          SPEdicao.ParamByName('AVPRC_PAD_FIM').Value := FKPedidosVPRC_PAD_FIM.AsFloat;
          SPEdicao.ParamByName('AVPRC').Value         := FKPedidosVPRC_COM.AsFloat;

          SPEdicao.ParamByName('ANCM').Value  := FKPedidosNCM.AsString;
          SPEdicao.ParamByName('APIPI').Value := FKPedidosPIPI.AsFloat;
          SPEdicao.ExecProc;

          CAD_PRO_EST_SEP.Next;
        end;
      end;

      { Separa Preços }
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.IDEP,PK.IDPK,PK.IDCP,PK.ITEM,PK.QTDE,PK.VPRC_COM');
        SQL.Add('FROM (');

        SQL.Add('SELECT   PK.IDEP,PK.IDPK,PK.IDCP,MIN(PK.VPRC_COM) AS VPRC_COM');
        SQL.Add('FROM ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS PK');

        SQL.Add('WHERE PK.IDEP = ''' + PedidosIDEP.AsString + '''');
        SQL.Add('AND   PK.IDPK = ''' + PedidosIDPK.AsString + '''');
        SQL.Add('AND   EXISTS (SELECT SP.ID FROM CAD_PRO_SEP AS SP WHERE SP.IDPK = PK.IDPK AND SP.IDEP = PK.IDEP AND SP.IDCP = PK.IDCP)');

        SQL.Add('GROUP BY 1,2,3');
        SQL.Add('HAVING COUNT(*) > 1) AS FK');

        SQL.Add('JOIN ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS PK ON (PK.IDPK = FK.IDPK AND PK.IDEP = FK.IDEP AND PK.IDCP = FK.IDCP AND PK.VPRC_COM = FK.VPRC_COM)');
        ExecQuery;
      end;
      
      while not SQLEdicao.Eof do
      begin
        while true do
        begin
          with SQLFKEdicao do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT SUM(QTDE) AS QTDE FROM CAD_PRO_SEP');
            SQL.Add('WHERE  IDPK     = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''');
            SQL.Add('AND    IDEP     = ''' + SQLEdicao.Current.ByName('IDEP').AsString + '''');
            SQL.Add('AND    IDCP     = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''');
            SQL.Add('AND    VPRC_COM = ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
            ExecQuery;

            if SQLFKEdicao.Current.ByName('QTDE').AsFloat < SQLEdicao.Current.ByName('QTDE').AsFloat then
            begin
              { Busca pela maior etiqueta com mesma quantidade }
              Close;
              SQL.Clear;
              SQL.Add('SELECT MAX(CDET) FROM CAD_PRO_SEP');
              SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''');
              SQL.Add('AND    IDEP      = ''' + SQLEdicao.Current.ByName('IDEP').AsString + '''');
              SQL.Add('AND    IDCP      = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''' );
              SQL.Add('AND    QTDE      = ''' + oStrTran(SQLEdicao.Current.ByName('QTDE').AsString    ,',','.') + '''');
              SQL.Add('AND    VPRC_COM <> ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
              ExecQuery;

              if SQLFKEdicao.Current.Vars[0].AsInteger = 0 then
              begin
                { Busca pela maior etiqueta + menor quantidade }
                Close;
                SQL.Clear;
                SQL.Add('SELECT MAX(CDET) FROM CAD_PRO_SEP');
                SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''');
                SQL.Add('AND    IDEP      = ''' + SQLEdicao.Current.ByName('IDEP').AsString + '''');
                SQL.Add('AND    IDCP      = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''' );
                SQL.Add('AND    QTDE     <= ''' + oStrTran(SQLEdicao.Current.ByName('QTDE').AsString    ,',','.') + '''');
                SQL.Add('AND    VPRC_COM <> ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
                ExecQuery;
              end;

              if SQLFKEdicao.Current.Vars[0].AsInteger = 0 then
              begin
                { Busca Maior Etiqueta }
                Close;
                SQL.Clear;
                SQL.Add('SELECT MAX(CDET) FROM CAD_PRO_SEP');
                SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''');
                SQL.Add('AND    IDEP      = ''' + SQLEdicao.Current.ByName('IDEP').AsString + '''');
                SQL.Add('AND    IDCP      = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''');
                SQL.Add('AND    VPRC_COM <> ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
                ExecQuery;
              end;

                 SQLFKEdicao.Tag := SQLFKEdicao.Current.Vars[0].AsInteger;
              if SQLFKEdicao.Tag  = 0 then
                 Break;

              Close;
              SQL.Clear;
              SQL.Add('UPDATE CAD_PRO_SEP');
              SQL.Add('SET    ITEM     = ''' + SQLEdicao.Current.ByName('ITEM').AsString + ''',');
              SQL.Add('       EST_UNIT = ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
              
              SQL.Add('WHERE  CDET     = ''' + IntToStr(SQLFKEdicao.Tag) + '''');
              ExecQuery;
            end else
            Break;
          end;
        end;
        SQLEdicao.Next;
      end;

      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ITEM,PK.IDCP,COALESCE(SUM(QTDE),0) AS QTDE,COALESCE(SUM(QTRL),0) AS QTRL,MAX(DTCA) AS DTCA');
        SQL.Add('FROM   CAD_PRO_SEP AS PK');

        SQL.Add('WHERE  PK.IDPK = ''' + PedidosIDPK.AsString + '''');
        SQL.Add('AND    PK.IDEP = ''' + PedidosIDEP.AsString + '''');

        SQL.Add('GROUP BY 1,2');
        SQL.Add('ORDER BY 1  ');
        ExecQuery;
      end;
      while not SQLEdicao.Eof do
      begin
        with SQLFKEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3));
          SQL.Add('SET');

          SQL.Add('ROM_IDSP = ''' + RECUsuarios.ID + ''',');
          SQL.Add('DTSP     = ''' + FormatDateTime('mm/dd/yy hh:mm',SQLEdicao.Current.Vars[4].AsDateTime) + ''',');

          SQL.Add('ROM_QTPD = ''' + oStrTran(SQLEdicao.Current.Vars[2].AsString,',','.') + ''',');
          SQL.Add('ROM_RLPD = ''' + oStrTran(SQLEdicao.Current.Vars[3].AsString,',','.') + ''' ');

          SQL.Add('WHERE IDPK = ''' + PedidosIDPK.AsString + '''');
          SQL.Add('AND   IDEP = ''' + PedidosIDEP.AsString + '''');

          SQL.Add('AND   ITEM = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
          SQL.Add('AND   IDCP = ''' + SQLEdicao.Current.Vars[1].AsString + '''');
          ExecQuery;
        end;
        SQLEdicao.Next;
      end;

      oCTransact(TEdicao);
      oAviso(handle,'Pedido Separado com Sucesso !');

      SISav.Enabled       := False;
      REC_SHE_DEF.Editing := False;

      ACTExecEvent.Execute;
    except
      on E: Exception do
      try     oException(Nil,'Erro: ' + oFBException(E.Message));
      finally
      oCTransact(TEdicao,ltRollback);
      end;
    end;
  finally
    Edicao.EnableControls;
    CAD_PRO_EST_SEP.EnableControls;
    FKPedidos.EnableControls;
  end;

  _CAD_PRO_EST_LAN_UPD; { Estoque }
  Close;
end;

procedure TFrmEXP_SEP_MAN.ACTMCancelExecute(Sender: TObject);
begin
  inherited;
  ActiveControl := Nil;
  if EDDEPK.Text = '' then
     Abort;

  if oYesNo(handle,'Confirma o cancelamento de toda a separação ?') = mrno then
     Abort;

  if PedidosIDPK.AsInteger = 0 then
     oException(EDDEPK,'Pedido não Encontrado !');

  if (PedidosCDBX.AsInteger > 0) or (PedidosCDNF.AsInteger > 0) then
      oException(EDDEPK,'Pedido já Faturado !'+#13+'Nota Fiscal No '+PedidosCDNF.AsString);

  if PedidosCDRO.AsInteger > 0 then
     oException(EDDEPK,'Pedido em processo de faturamento !'+#13+'Romaneio No '+PedidosCDRO.AsString);

  try
    oOTransact(TEdicao);

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_SEP');
      SQL.Add('WHERE  IDPK = ''' + PedidosIDPK.AsString + '''');
      SQL.Add('AND    IDEP = ''' + PedidosIDEP.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_EST');
      SQL.Add('SET    IDSP = NULL,');
      SQL.Add('       CDSP = NULL,');
      SQL.Add('       DTSP = NULL,');

      SQL.Add('       EST_CDPD = NULL,');
      SQL.Add('       EST_DOCU = NULL,');
      SQL.Add('       EST_DTPV = NULL ');

      SQL.Add('WHERE  IDPK = ''' + PedidosIDPK.AsString + '''');
      SQL.Add('AND    IDEP = ''' + PedidosIDEP.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3));
      SQL.Add('SET ');

      SQL.Add('ROM_IDSP = NULL,');
      SQL.Add('CDSP = NULL,');
      SQL.Add('DTSP = NULL,');

      SQL.Add('ROM_QTPD = NULL,');
      SQL.Add('ROM_RLPD = NULL ');

      SQL.Add('WHERE IDPK = ''' + PedidosIDPK.AsString + '''');
      SQL.Add('AND   IDEP = ''' + PedidosIDEP.AsString + '''');
      ExecQuery;
    end;

    if PedidosSTPD.AsString <> 'DEVOLUÇÃO' then
    begin
      FKPedidos.First;
      while not FKPedidos.Eof do
      begin
        with RECEstoque do
        begin
          IDEP := RECParametros.EP_ID;
          IDCA := RECUsuarios.Id;

          IDPK := FKPedidosIDPK.AsInteger;
          DEPK := PedidosDEPK.AsString;
          DTPK := PedidosDTCA.AsDateTime;
          CTNR := PedidosCTNR.AsString;

          IDCD := PedidosIDCD.AsInteger;
          IDCV := PedidosIDCV.AsInteger;
          IDCR := PedidosIDCR.AsInteger;

          TPCO := PedidosTPCO.AsInteger;
          RECO := PedidosRECO.AsString;
          CDPG := PedidosCDPG.AsInteger;

          IDFK := FKPedidosID.AsInteger;
          ITEM := FKPedidosITEM.AsInteger;

          IDCP := FKPedidosIDCP.AsInteger;
          CEAN := FKPedidosCEAN.AsString;
          DECP := FKPedidosDECP.AsString;
          DGCP := FKPedidosDGCP.AsString;

          UCOM := FKPedidosUCOM.AsString;
          UCON := FKPedidosUCON.AsString;

          QTDE := FKPedidosQTDE.AsFloat;
          QTRL := FKPedidosQTRL.AsInteger;
          PSBR := FKPedidosQTDE.AsFloat * FKPedidosUPSBR.AsFloat;
          PSLQ := FKPedidosQTDE.AsFloat * FKPedidosUPSLQ.AsFloat;

          VPRC_PAD_INI := FKPedidosVPRC_PAD_INI.AsFloat;
          VPRC_PAD_FIM := FKPedidosVPRC_PAD_FIM.AsFloat;
          VPRC_PAD := FKPedidosVPRC_PAD.AsFloat;
          VPRC_COM := FKPedidosVPRC_COM.AsFloat;

          PDSC := FKPedidosPDSC.AsFloat;
          VDSC := FKPedidosVDSC.AsFloat;

          TSDE := FKPedidosTSDE.AsFloat;
          TCDE := FKPedidosTCDE.AsFloat;

          NCM  := FKPedidosNCM.AsString;
          PIPI := FKPedidosPIPI.AsFloat;
          VIPI := FKPedidosVIPI.AsFloat;

          INFADCAD := PedidosINFADCAD.AsString;

          IDEV := 0;
          FLAG := 0;
          oSP_CAD_PRO_EST_RES(RECEstoque);
        end;
        FKPedidos.Next;
      end;
    end;

    oCTransact(TEdicao);
    oAviso(handle,'Cancelamento total de separação realizado com sucesso !');
    ACTExecEvent.Execute;
  except
    on E: Exception do
    begin
      oRTransact(TEdicao,ltRollback);
      raise exception.Create('Falha ao tentar salvar cadastro !'+#13+
                             'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                             'Erro: '+E.Message);
    end;
  end;

  SICAN.Enabled := False;
  _CAD_PRO_EST_LAN_UPD; { Estoque }
  Close;
end;

procedure TFrmEXP_SEP_MAN._CAD_PRO_EST_LAN_UPD;
begin
  if PedidosIDPK.AsInteger > 0 then

  uCAD_PRO_EST_LAN_UPD(oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3),
                       RECParametros.EP_ID ,
                       PedidosIDPK.AsString,

                       'EP_ID',
                       'IDPK' ,
                       'CP_ID');
end;
                          
end.
