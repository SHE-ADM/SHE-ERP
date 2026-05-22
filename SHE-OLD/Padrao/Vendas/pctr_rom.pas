unit pctr_rom;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, StrUtils, dxDBELib, FMTBcd, rxSpeedbar, IBSQL, ActnList, pPadr2,
  dxBar, dxDockControl, dxDockPanel, cxGraphics, cxControls, dxStatusBar,
  rxAnimate, rxGIFCtrl;

type
  Tfrmctr_rom = class(TFrmPadr2)
    siCRO: TSpeedItem;
    rom_ite: TIBQuery;
    dtsrom_ite: TDataSource;
    dbgConsultaROM_STPD: TdxDBGridMaskColumn;
    dbgConsultaROM_DROM: TdxDBGridDateColumn;
    dbgConsultaROM_TSDE: TdxDBGridMaskColumn;
    dbgConsultaROM_TCDE: TdxDBGridMaskColumn;
    dbgConsultaDECV: TdxDBGridMaskColumn;
    dbgConsultaDECR: TdxDBGridMaskColumn;
    dbgConsultaPAG_DPAG: TdxDBGridMaskColumn;
    siNFE: TSpeedItem;
    dbgConsultaROM_CDNF: TdxDBGridMaskColumn;
    dbgConsultaROM_DNFS: TdxDBGridDateColumn;
    dbgConsultaROM_DERO: TdxDBGridMaskColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    DBGConsultaROM_PDSC: TdxDBGridCurrencyColumn;
    PNLItens: TPanel;
    GBItens: TGroupBox;
    DBGItem: TdxDBGrid;
    DBGItemROM_ITEM: TdxDBGridMaskColumn;
    DBGItemPRO_CPRO: TdxDBGridMaskColumn;
    DBGItemROM_DPRO: TdxDBGridMaskColumn;
    DBGItemROM_DUNI: TdxDBGridMaskColumn;
    DBGItemROM_CDET: TdxDBGridMaskColumn;
    DBGItemROM_QTDE: TdxDBGridMaskColumn;
    DBGItemROM_UNIT: TdxDBGridMaskColumn;
    DBGItemROM_TOTA: TdxDBGridMaskColumn;
    PNLInfAdProd: TPanel;
    DBGItemPRO_PTABI: TdxDBGridMaskColumn;
    DBGItemPRO_PTABF: TdxDBGridMaskColumn;
    DBGConsultaROM_STFI: TdxDBGridMaskColumn;
    DBGConsultaROM_DTRA: TdxDBGridMaskColumn;
    DBGConsultaROM_CTNR: TdxDBGridMaskColumn;
    rom_iteID: TIntegerField;
    rom_iteROM_CCAB: TIntegerField;
    rom_iteROM_CDOC: TIntegerField;
    rom_iteROM_CDPR: TIntegerField;
    rom_iteROM_CDPD: TIntegerField;
    rom_iteROM_CDRO: TIntegerField;
    rom_iteROM_CDRD: TIntegerField;
    rom_iteROM_CDNF: TIntegerField;
    rom_iteROM_ITEM: TIBStringField;
    rom_iteROM_CPRO: TIntegerField;
    rom_iteROM_CPR2: TIntegerField;
    rom_iteROM_CDET: TIBStringField;
    rom_iteROM_QTDE: TIBBCDField;
    rom_iteROM_QTRL: TIntegerField;
    rom_iteROM_QTSP: TIBBCDField;
    rom_iteROM_RLSP: TIntegerField;
    rom_iteROM_QTPD: TIBBCDField;
    rom_iteROM_RLPD: TIntegerField;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_VDSC: TIBBCDField;
    rom_iteROM_TOTA: TIBBCDField;
    rom_iteROM_FLAG: TIBStringField;
    rom_iteROM_DPRO: TIBStringField;
    rom_iteROM_COMI: TIBBCDField;
    rom_iteROM_TPRC: TIBStringField;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_PCOR: TIBStringField;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    rom_iteROM_DSEP: TIBStringField;
    rom_iteROM_DUNI: TIBStringField;
    rom_iteROM_PESO: TIBBCDField;
    rom_iteROM_OBSE: TMemoField;
    rom_iteROM_PSBR: TIBBCDField;
    rom_iteROM_PSLQ: TIBBCDField;
    rom_itePRO_CART: TIBStringField;
    rom_itePRO_CPRO: TIBStringField;
    rom_itePRO_CCOR: TIntegerField;
    rom_itePRO_QVOL: TIBBCDField;
    rom_itePRO_ESP: TIBStringField;
    rom_itePRO_PTABI: TFloatField;
    rom_itePRO_PTABF: TFloatField;
    CadastroID: TIntegerField;
    CadastroROM_CDCX: TIntegerField;
    CadastroROM_CDPR: TIntegerField;
    CadastroROM_CDRD: TIntegerField;
    CadastroROM_CDRO: TIntegerField;
    CadastroROM_CDNF: TIntegerField;
    CadastroROM_CDBX: TIntegerField;
    CadastroROM_CONC: TSmallintField;
    CadastroROM_DERO: TIBStringField;
    CadastroROM_CTNR: TIBStringField;
    CadastroROM_DROM: TDateField;
    CadastroROM_DNFS: TDateField;
    CadastroROM_DBAI: TDateField;
    CadastroROM_DCAN: TDateField;
    CadastroPAG_DPAG: TIBStringField;
    CadastroPAG_PARC: TSmallintField;
    CadastroPAG_PRAZ: TSmallintField;
    CadastroROM_CTRA: TIntegerField;
    CadastroROM_DTRA: TIBStringField;
    CadastroROM_MFRT: TSmallintField;
    CadastroROM_VFRT: TIBBCDField;
    CadastroROM_TSDE: TIBBCDField;
    CadastroROM_TDSC: TIBStringField;
    CadastroROM_PDSC: TIBBCDField;
    CadastroROM_TCDE: TIBBCDField;
    CadastroROM_VNF: TIBBCDField;
    CadastroROM_STPD: TIBStringField;
    CadastroROM_STCO: TIBStringField;
    CadastroROM_STFI: TIBStringField;
    CadastroVEN_FATU: TIBStringField;
    CadastroVEN_QTSP: TIBStringField;
    CadastroVEN_BEST: TIBStringField;
    CadastroVEN_AGRP: TIBStringField;
    CadastroVEN_CNA1: TIBStringField;
    CadastroVEN_CNA2: TIBStringField;
    CadastroROM_TOTA: TFloatField;
    CadastroROM_RLVE: TIntegerField;
    DBGItemROM_QTRL: TdxDBGridMaskColumn;
    rom_iteROM_CDSP: TIntegerField;
    rom_iteROM_IDSP: TIntegerField;
    rom_iteROM_DTSP: TDateTimeField;
    rom_iteROM_VUPC: TFloatField;
    rom_iteROM_VUPCIPI: TFloatField;
    rom_iteROM_VUCU: TFloatField;
    rom_iteROM_VULB: TFloatField;
    rom_iteROM_VUICMS: TFloatField;
    rom_iteROM_VUIPI: TFloatField;
    rom_iteROM_VUPIS: TFloatField;
    rom_iteROM_VUCOFINS: TFloatField;
    rom_iteROM_PUPCIPI: TFloatField;
    rom_iteROM_CTNR: TIBStringField;
    rom_iteROM_VFRT: TIBBCDField;
    rom_iteROM_NFCI: TIBStringField;
    CadastroCLI_ESTA: TIBStringField;
    rom_iteEMPRESA: TIBStringField;
    rom_iteDGCP: TIBStringField;
    DBGItemDGCP: TdxDBGridMaskColumn;
    CadastroROM_VDSC: TIBBCDField;
    DBGConsultaROM_VDSC: TdxDBGridCurrencyColumn;
    CadastroFIN_CSPD: TSmallintField;
    CadastroCFRT: TIBStringField;
    SQLFKEdicao: TIBSQL;
    SQLFKConsulta: TIBSQL;
    rom_iteIDEP: TSmallintField;
    rom_iteIDCA: TSmallintField;
    rom_iteDTCA: TDateTimeField;
    rom_iteIDED: TSmallintField;
    rom_iteDTED: TDateTimeField;
    rom_iteIDPK: TLargeintField;
    rom_iteIDFK: TLargeintField;
    rom_iteITEM: TIntegerField;
    rom_iteIDCP: TIntegerField;
    rom_iteCP_IDEP: TSmallintField;
    rom_iteIDCOL: TSmallintField;
    rom_iteIDSCT: TSmallintField;
    rom_iteARTIGO: TIBStringField;
    rom_iteSKU: TIBStringField;
    rom_iteCEAN: TIBStringField;
    rom_iteDECP: TIBStringField;
    rom_iteUCOM: TIBStringField;
    rom_iteUCON: TIBStringField;
    rom_iteQTDE: TIBBCDField;
    rom_iteQTRL: TIntegerField;
    rom_itePSBR: TIBBCDField;
    rom_itePSLQ: TIBBCDField;
    rom_iteVPRC_PAD_ORI: TIBStringField;
    rom_iteVPRC_PAD_INI: TFloatField;
    rom_iteVPRC_PAD_FIM: TFloatField;
    rom_iteVPRC_PAD: TFloatField;
    rom_itePDSC: TIBBCDField;
    rom_iteVDSC: TIBBCDField;
    rom_iteVPRC_COM: TFloatField;
    rom_iteTSDE: TIBBCDField;
    rom_iteTCDE: TIBBCDField;
    rom_iteNCM: TIBStringField;
    rom_iteORIG: TSmallintField;
    rom_itePIPI: TIBBCDField;
    rom_iteVIPI: TIBBCDField;
    rom_iteRCOM: TIBStringField;
    rom_itePCOM: TIBBCDField;
    rom_iteVCOM: TIBBCDField;
    rom_iteCDET: TLargeintField;
    rom_iteCTNR: TIBStringField;
    rom_iteLOTE: TIBStringField;
    rom_iteIDSP: TSmallintField;
    rom_iteCDSP: TLargeintField;
    rom_iteDTSP: TDateTimeField;
    rom_iteIDEV: TLargeintField;
    rom_iteIP: TIBStringField;
    rom_iteHOST: TIBStringField;
    rom_iteFLAG: TSmallintField;
    rom_iteINFADETQ: TMemoField;
    rom_iteSCOM: TSmallintField;
    rom_iteTDSC: TIBBCDField;
    rom_iteTIPI: TIBBCDField;
    rom_iteTCOM: TIBBCDField;
    CadastroRECO: TIBStringField;
    DBGConsultaRECO: TdxDBGridMaskColumn;
    CadastroINFADCAD: TIBStringField;
    SICAD_CLI_CRD: TSpeedItem;
    SICAD_CLI_EDI: TSpeedItem;
    CadastroDECD: TIBStringField;
    CadastroDECV: TIBStringField;
    CadastroDECR: TIBStringField;
    CadastroDEPG: TIBStringField;
    CadastroIDPK: TLargeintField;
    CadastroIDEP: TSmallintField;
    CadastroIDCD: TIntegerField;
    CadastroVCRD: TIBBCDField;
    CadastroIDCV: TSmallintField;
    CadastroIDCR: TSmallintField;
    CadastroCDPG: TSmallintField;
    DBGConsultaDECD: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    CAD_PRO_IMG: TIBQuery;
    CAD_PRO_IMGIMG_ID: TLargeintField;
    CAD_PRO_IMGIMG_NO: TIBStringField;
    CAD_PRO_IMGIMG_PAD: TBlobField;
    CAD_PRO_IMGPDF_NO: TIBStringField;
    CAD_PRO_IMGILA_BMP1: TBlobField;
    CAD_PRO_IMGILA_INS1: TIBStringField;
    CAD_PRO_IMGD_ILA_INS1: TIBStringField;
    CAD_PRO_IMGILA_BMP2: TBlobField;
    CAD_PRO_IMGILA_INS2: TIBStringField;
    CAD_PRO_IMGD_ILA_INS2: TIBStringField;
    CAD_PRO_IMGILA_BMP3: TBlobField;
    CAD_PRO_IMGILA_INS3: TIBStringField;
    CAD_PRO_IMGD_ILA_INS3: TIBStringField;
    CAD_PRO_IMGILA_BMP4: TBlobField;
    CAD_PRO_IMGILA_INS4: TIBStringField;
    CAD_PRO_IMGD_ILA_INS4: TIBStringField;
    CAD_PRO_IMGILA_BMP5: TBlobField;
    CAD_PRO_IMGILA_INS5: TIBStringField;
    CAD_PRO_IMGD_ILA_INS5: TIBStringField;
    CAD_PRO_IMGILA_BMP6: TBlobField;
    CAD_PRO_IMGILA_INS6: TIBStringField;
    CAD_PRO_IMGD_ILA_INS6: TIBStringField;
    CAD_PRO_IMGILA_BMP7: TBlobField;
    CAD_PRO_IMGILA_INS7: TIBStringField;
    CAD_PRO_IMGD_ILA_INS7: TIBStringField;
    CAD_PRO_IMGILA_BMP8: TBlobField;
    CAD_PRO_IMGILA_INS8: TIBStringField;
    CAD_PRO_IMGD_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG: TDataSource;
    PNLIMG_PAD: TPanel;
    GBIMG_PAD: TGroupBox;
    IMG_PAD: TImage;
    GBIMG_ILA: TGroupBox;
    BVILA_BMP1: TBevel;
    BVILA_BMP2: TBevel;
    BVILA_BMP3: TBevel;
    BVILA_BMP4: TBevel;
    BVILA_BMP5: TBevel;
    BVILA_BMP6: TBevel;
    BVILA_BMP7: TBevel;
    BVILA_BMP8: TBevel;
    DBILA_BMP1: TDBImage;
    DBILA_BMP2: TDBImage;
    DBILA_BMP3: TDBImage;
    DBILA_BMP4: TDBImage;
    DBILA_BMP5: TDBImage;
    DBILA_BMP6: TDBImage;
    DBILA_BMP7: TDBImage;
    DBILA_BMP8: TDBImage;
    DBGItemROM_PSBR: TdxDBGridMaskColumn;
    DBGItemROM_PSLQ: TdxDBGridMaskColumn;
    DBGItemNCM: TdxDBGridMaskColumn;
    DBGItemPIPI: TdxDBGridMaskColumn;
    DBGItemVIPI: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroBeforeEdit(DataSet: TDataSet);
    procedure CadastroBeforeInsert(DataSet: TDataSet);
    procedure dtsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure siCROClick(Sender: TObject);
    procedure siNFEClick(Sender: TObject);
    procedure dtsrom_iteDataChange(Sender: TObject; Field: TField);
    procedure FormDestroy(Sender: TObject);
    procedure DTSCadastroStateChange(Sender: TObject);
    procedure SICAD_CLI_CRDClick(Sender: TObject);
    procedure rom_iteAfterOpen(DataSet: TDataSet);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
  private
    { Private declarations }
     RECEstoque: TRECPedidos;
     procedure _DTSCadastro;
     procedure _DTSItem;
  public
    { Public declarations }
    procedure _WM_AFTER_SHOW(var Msg: TMessage); message WM_AFTER_SHOW;
  end;

var
  frmctr_rom: Tfrmctr_rom;

implementation

uses uPrincipal, bPrincipal,

  {$IF DEFINED(DEF_EXP) OR DEFINED(DEF_QLD)}
    pPesquisa_OLD

  {$ELSE}
    pPesquisa_OLD, prelatorio_geral, pven_nfe
  {$IFEND} ;


{$R *.dfm}

procedure TFrmCTR_ROM._WM_AFTER_SHOW(var Msg: TMessage); 
begin
  inherited;
  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PS.FANTASIA AS EMPRESA,');
    SQL.Add('         PK.*,');
    SQL.Add('         CP.ARTIGO AS PRO_CART,CP.PRO_CPRO,CP.PRO_CCOR,');
    SQL.Add('         CP.PRO_QVOL ,CP.PRO_ESP, ');
    SQL.Add('         CP.PRO_PTABI,CP.PRO_PTABF');

    SQL.Add('FROM ' + oREPZero('ROM_ITE','_',RECParametros.EP_VW_ID,3) + ' AS PK');

    SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('JOIN     TAB_PAR_SIS AS PS ON (PS.ID = CP.IDEP)');

    SQL.Add('WHERE    PK.CDRO = :IDPK');
    SQL.Add('ORDER BY PK.ITEM');
    Prepare;
  end;

  with cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.IDPK,PK.IDEP,');
    SQL.Add('       PK.ROM_CDCX,PK.ROM_CDPR,PK.ROM_CDRD,PK.ROM_CDRO,PK.ROM_CDNF,PK.ROM_CDBX,PK.ROM_CONC,');
    SQL.Add('       PK.ROM_DERO,PK.ROM_CTNR,');
    SQL.Add('       PK.ROM_DROM,PK.ROM_DNFS,PK.ROM_DBAI,PK.ROM_DCAN,');
    SQL.Add('       PK.IDCD,CD.FANTASIA AS DECD,CRD.CSCD AS FIN_CSPD,CRD.VCRD,CD.CLI_ESTA,');
    SQL.Add('       PK.IDCV,CV.LOGIN    AS DECV,');
    SQL.Add('       PK.IDCR,CR.FANTASIA AS DECR,');
    SQL.Add('       PK.CDPG,PAG_DPAG,PAG_PARC,PAG_PRAZ,PAG_DPAG AS DEPG,PK.RECO,');
    SQL.Add('       PK.ROM_CTRA,PK.ROM_DTRA,PK.ROM_MFRT,PK.CFRT    ,PK.ROM_VFRT,PK.ROM_RLVE,');
    SQL.Add('       PK.ROM_TSDE,PK.ROM_TDSC,PK.ROM_PDSC,PK.ROM_VDSC,PK.ROM_TCDE,PK.ROM_VNF ,');
    SQL.Add('       PK.ROM_STPD,PK.ROM_STCO,PK.ROM_STFI,');
    SQL.Add('       VEN_FATU,VEN_QTSP,VEN_BEST,VEN_AGRP,VEN_CNA1,VEN_CNA2,');
    SQL.Add('       TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 1064) AS VARCHAR(1064))) AS INFADCAD');

    SQL.Add('FROM ' + oREPZero('ROM_CAB','_',RECParametros.EP_ID,3) + ' AS PK');

    SQL.Add('JOIN CAD_CLI     AS CD    ON (CD.ID    = PK.IDCD)');
    SQL.Add('JOIN CAD_CLI_CRD AS CRD   ON (CRD.IDEP = PK.IDEP AND CRD.IDCD = PK.IDCD)');
    SQL.Add('JOIN CAD_REP     AS CR    ON (CAST(CR.ID AS SMALLINT) = PK.IDCR)');

    SQL.Add('JOIN TAB_USER    AS CV    ON (CV.ID    = PK.IDCV)');
    SQL.Add('JOIN TAB_PED     AS TB_PD ON (TB_PD.ID = PK.CDPD)');
    SQL.Add('JOIN TAB_PAG     AS TB_PG ON (CAST(TB_PG.ID AS SMALLINT) = PK.CDPG)');

    SQL.Add('WHERE (CAST(PK.DTCA AS DATE) BETWEEN '''+FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA_MES_PK)+''' AND '''+FormatDateTime('mm/dd/yy',endOfTheMonth(RECParametros.SHE_DATA_MES_FK))+'''');
    SQL.Add('OR     CAST(PK.DTNF AS DATE) BETWEEN '''+FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA_MES_PK)+''' AND '''+FormatDateTime('mm/dd/yy',endOfTheMonth(RECParametros.SHE_DATA_MES_FK))+''')');

    if RECUsuarios.Grupo = 'VEN' then
    SQL.Add('AND      PK.IDCV = ''' + RECUsuarios.Id + '''');
    SQL.Add('ORDER BY PK.DTCA DESC');
    Prepare;
    Open;
  end;
end;

procedure Tfrmctr_rom.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { EVENTOS }
  REC_SHE_DEF.FB_Event   := 'PED_PDV_ADM'; { Evento Principal }
  REC_SHE_DEF.FB_EVE_EDT := 'FIS_NFE_ADM'; { Evento Edição }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Romaneios';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  Cadastro.SQL.Text := oStrTran(Cadastro.SQL.Text,'ROM_CAB',oREPZero('ROM_CAB','_',RECParametros.EP_ID,3));

  DBGItemROM_QTRL.Visible := (RECParametros.EST_QTRL);

  oIRECPedidos(RECEstoque);
  RECEstoque.ASPEdicao := SPEdicao;
end;

procedure Tfrmctr_rom.FormDestroy(Sender: TObject);
begin
  inherited;

  try oFRECPedidos(RECEstoque);
  finally frmctr_rom := nil;
  end;
end;

procedure Tfrmctr_rom.siCROClick(Sender: TObject);
begin
  if oYesNo(handle,'Cancelar Romaneio No '+CadastroIDPK.AsString+' ?') = mrno then
  Abort;

  if oEmpty(CadastroIDPK.AsInteger) then
  oException(DBGConsulta,'Romaneio não Selecionado !');

  { Pedido }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID   AS IDPK,PK.DEPV AS DEPK,PK.DTCA AS DTPK,PK.CTNR,');
    SQL.Add('       PK.IDCL AS IDCD,CD.CLI_FANT AS DECD,PK.IDCV,CV.LOGIN AS DECV,PK.IDCR,CR.REP_FANT AS DECR,');
    SQL.Add('       PK.TPCO,PK.RECO,PK.CDPG,');
    SQL.Add('       PK.INFADPED');

    SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PK');

    SQL.Add('JOIN CAD_CLI  AS CD ON (CD.ID = PK.IDCD)');
    SQL.Add('JOIN TAB_USER AS CV ON (CV.ID = PK.IDCV)');
    SQL.Add('JOIN CAD_REP  AS CR ON (CAST(CR.ID AS SMALLINT) = PK.IDCR)');

    SQL.Add('WHERE PK.CDRO = ''' + CadastroIDPK.AsString + '''');
    ExecQuery;
  end;

  try
    oOTransact(TEdicao);
    if SQLConsulta.Current.ByName('IDPK').AsInteger > 0 then
    begin
      { CAD_PRO_SEP }
      if (CadastroVEN_BEST.AsString = '1') and (CadastroVEN_QTSP.AsString = '1') then
      begin
        try
          rom_ite.DisableControls;
          rom_ite.First;
          while not rom_ite.Eof do
          begin
            { Itens }
            with SQLFKConsulta do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT   PK.IDPK,PK.ID AS IDFK,PK.ITEM,');
              SQL.Add('         PK.IDCP,PK.CP_IDEP,');
              SQL.Add('         PK.CEAN,PK.DECP,PK.DGCP,');
              SQL.Add('         PK.UCOM,PK.UCON,');
              SQL.Add('         PK.QTDE,PK.QTRL,PK.PSBR,PK.PSLQ,');
              SQL.Add('         PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
              SQL.Add('         PK.VPRC_PAD,PK.VPRC_COM,');
              SQL.Add('         PK.PDSC,PK.VDSC,');
              SQL.Add('         PK.TSDE,PK.TCDE,');
              SQL.Add('         PK.ORIG,PK.NCM ,PK.PIPI,PK.VIPI');

              SQL.Add('FROM ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS PK');

              SQL.Add('WHERE    PK.IDPK = ''' + SQLConsulta.Current.ByName('IDPK').AsString + '''');
              SQL.Add('AND      PK.IDCP = ''' + rom_iteIDCP.AsString + '''');
              SQL.Add('AND      PK.ITEM = ''' + rom_iteITEM.AsString + '''');
              SQL.Add('ORDER BY PK.ITEM');
              ExecQuery;
            end;

            if SQLFKConsulta.Current.Vars[0].AsInteger > 0 then
            begin
              SPEdicao.StoredProcName := 'SP_CAD_PRO_SEP';
              SPEdicao.Prepare;

              SPEdicao.ParamByName('AIDEP').Value := RECParametros.EP_ID;
              SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

              SPEdicao.ParamByName('ACDPK').Value := SQLConsulta.Current.ByName('IDPK').AsString;
              SPEdicao.ParamByName('ADEPK').Value := SQLConsulta.Current.ByName('DEPK').AsString;
              SPEdicao.ParamByName('ADTPK').Value := SQLConsulta.Current.ByName('DTPK').AsDateTime;

              SPEdicao.ParamByName('AIDCL').Value := SQLConsulta.Current.ByName('IDCD').AsInteger;
              SPEdicao.ParamByName('ADECL').Value := SQLConsulta.Current.ByName('DECD').AsString;
              SPEdicao.ParamByName('AIDCV').Value := SQLConsulta.Current.ByName('IDCV').AsInteger;
              SPEdicao.ParamByName('ADECV').Value := SQLConsulta.Current.ByName('DECV').AsString;
              SPEdicao.ParamByName('AIDCR').Value := SQLConsulta.Current.ByName('IDCR').AsInteger;
              SPEdicao.ParamByName('ADECR').Value := SQLConsulta.Current.ByName('DECR').AsString;

              SPEdicao.ParamByName('ACDET').Value := oStrZero(rom_iteROM_CDET.AsInteger,10);
              SPEdicao.ParamByName('ACTNR').Value := rom_iteROM_CTNR.AsString;
              SPEdicao.ParamByName('ALOTE').Value := rom_iteLOTE.AsString;
              SPEdicao.ParamByName('ANFCI').Value := rom_iteROM_NFCI.AsString;

              SPEdicao.ParamByName('AIDSP').Value := RECUsuarios.Id;
              SPEdicao.ParamByName('ADESP').Value := RECUsuarios.Login;

              SPEdicao.ParamByName('AIDFK').Value := SQLFKConsulta.Current.ByName('IDFK').AsInteger;
              SPEdicao.ParamByName('AITEM').Value := SQLFKConsulta.Current.ByName('ITEM').AsInteger;

              SPEdicao.ParamByName('AIDCP').Value := SQLFKConsulta.Current.ByName('IDCP').AsInteger;
              SPEdicao.ParamByName('ADECP').Value := SQLFKConsulta.Current.ByName('DECP').AsString;
              SPEdicao.ParamByName('ADGCP').Value := SQLFKConsulta.Current.ByName('DGCP').AsString;

              SPEdicao.ParamByName('AUCOM').Value := SQLFKConsulta.Current.ByName('UCOM').AsString;
              SPEdicao.ParamByName('AUCON').Value := SQLFKConsulta.Current.ByName('UCON').AsString;

              SPEdicao.ParamByName('AQTDE').Value := rom_iteROM_QTDE.AsFloat;
              SPEdicao.ParamByName('AQTRL').Value := rom_iteROM_QTRL.AsInteger;

              SPEdicao.ParamByName('APSBR').Value := SQLFKConsulta.Current.ByName('PSBR').AsFloat;
              SPEdicao.ParamByName('APSLQ').Value := SQLFKConsulta.Current.ByName('PSLQ').AsFloat;

              SPEdicao.ParamByName('AVPRC_PAD_INI').Value := SQLFKConsulta.Current.ByName('VPRC_PAD_INI').AsCurrency;
              SPEdicao.ParamByName('AVPRC_PAD_FIM').Value := SQLFKConsulta.Current.ByName('VPRC_PAD_FIM').AsCurrency;
              SPEdicao.ParamByName('AVPRC').Value := SQLFKConsulta.Current.ByName('VPRC_COM').AsFloat;

              SPEdicao.ParamByName('ANCM').Value  := SQLFKConsulta.Current.ByName('NCM' ).AsString;
              SPEdicao.ParamByName('APIPI').Value := SQLFKConsulta.Current.ByName('PIPI').AsFloat;
              SPEdicao.ExecProc;
              SPEdicao.UnPrepare;
            end;

            rom_ite.Next;
          end;
        finally
          rom_ite.DisableControls;
        end;
      end;

      { Itens }
      with SQLFKConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.IDPK,PK.ID AS IDFK,PK.ITEM,');
        SQL.Add('         PK.IDCP,PK.CP_IDEP,');
        SQL.Add('         PK.CEAN,PK.DECP,PK.DGCP,');
        SQL.Add('         PK.UCOM,PK.UCON,');
        SQL.Add('         PK.QTDE,PK.QTRL,PK.PSBR,PK.PSLQ,');
        SQL.Add('         PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
        SQL.Add('         PK.VPRC_PAD,PK.VPRC_COM,');
        SQL.Add('         PK.PDSC,PK.VDSC,');
        SQL.Add('         PK.TSDE,PK.TCDE,');
        SQL.Add('         PK.ORIG,PK.NCM ,PK.PIPI,PK.VIPI');

        SQL.Add('FROM ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS PK');

        SQL.Add('WHERE    PK.IDPK = ''' + SQLConsulta.Current.ByName('IDPK').AsString + '''');
        SQL.Add('ORDER BY PK.ITEM');
        ExecQuery;
      end;

      { CAD_PRO_RES }
      if (CadastroVEN_BEST.AsString = '1') and (CadastroVEN_QTSP.AsString = '0') and (CadastroROM_STPD.AsString <> 'DEVOLUÇÃO') then
      begin
        while not SQLFKConsulta.Eof do
        begin
          with RECEstoque do
          begin
            IDEP := RECParametros.EP_ID;
            IDCA := RECUsuarios.Id;

            IDPK := SQLConsulta.Current.ByName('IDPK').AsString;
            DEPK := SQLConsulta.Current.ByName('DEPK').AsString;
            DTPK := SQLConsulta.Current.ByName('DTPK').AsDateTime;
            CTNR := SQLConsulta.Current.ByName('CTNR').AsString;

            IDCD := SQLConsulta.Current.ByName('IDCD').AsString;
            IDCV := SQLConsulta.Current.ByName('IDCV').AsString;
            IDCR := SQLConsulta.Current.ByName('IDCR').AsString;

            TPCO := SQLConsulta.Current.ByName('TPCO').AsInteger;
            RECO := SQLConsulta.Current.ByName('RECO').AsString;
            CDPG := SQLConsulta.Current.ByName('CDPG').AsString;

            IDFK := SQLFKConsulta.Current.ByName('IDFK').AsInteger;
            ITEM := SQLFKConsulta.Current.ByName('ITEM').AsInteger;

            IDCP := SQLFKConsulta.Current.ByName('IDCP').AsInteger;
            CEAN := SQLFKConsulta.Current.ByName('CEAN').AsString;
            DECP := SQLFKConsulta.Current.ByName('DECP').AsString;
            DGCP := SQLFKConsulta.Current.ByName('DGCP').AsString;

            UCOM := SQLFKConsulta.Current.ByName('UCOM').AsString;
            UCON := SQLFKConsulta.Current.ByName('UCON').AsString;

            QTDE := SQLFKConsulta.Current.ByName('QTDE').AsFloat;
            QTRL := SQLFKConsulta.Current.ByName('QTRL').AsInteger;
            PSBR := SQLFKConsulta.Current.ByName('PSBR').AsFloat;
            PSLQ := SQLFKConsulta.Current.ByName('PSLQ').AsFloat;

            VPRC_PAD_INI := SQLFKConsulta.Current.ByName('VPRC_PAD_INI').AsCurrency;
            VPRC_PAD_FIM := SQLFKConsulta.Current.ByName('VPRC_PAD_FIM').AsCurrency;
            VPRC_PAD := SQLFKConsulta.Current.ByName('VPRC_PAD').AsFloat;
            VPRC_COM := SQLFKConsulta.Current.ByName('VPRC_COM').AsFloat;

            PDSC := SQLFKConsulta.Current.ByName('PDSC').AsFloat;
            VDSC := SQLFKConsulta.Current.ByName('VDSC').AsFloat;

            TSDE := SQLFKConsulta.Current.ByName('TSDE').AsFloat;
            TCDE := SQLFKConsulta.Current.ByName('TCDE').AsFloat;

            NCM  := SQLFKConsulta.Current.ByName('NCM' ).AsString;
            PIPI := SQLFKConsulta.Current.ByName('PIPI').AsFloat;
            VIPI := SQLFKConsulta.Current.ByName('VIPI').AsFloat;

            INFADCAD := SQLConsulta.Current.ByName('INFADPED').AsString;

            IDEV := 0;
            FLAG := 0;
            oSP_CAD_PRO_EST_RES(RECEstoque);
          end;
          SQLFKConsulta.Next;
        end;
      end;

      { Separa Preços }
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.IDPK,PK.IDCP,PK.ITEM,PK.QTDE,PK.VPRC_COM');
        SQL.Add('FROM (');
        SQL.Add('SELECT   PK.IDPK,PK.IDCP,MIN(PK.VPRC_COM) AS VPRC_COM');
        SQL.Add('FROM '  +oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3)+' AS PK');
        SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = PK.IDCP)');
        SQL.Add('WHERE    PK.IDPK = ''' + SQLConsulta.Current.ByName('IDPK').AsString + '''');
        SQL.Add('AND      EXISTS (SELECT SP.ID FROM CAD_PRO_SEP AS SP WHERE SP.IDPK = PK.IDPK AND SP.IDCP = PK.IDCP)');
        SQL.Add('GROUP BY 1,2');
        SQL.Add('HAVING COUNT(*) > 1)  AS FK');
        SQL.Add('JOIN ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3)+' AS PK ON (PK.IDPK = FK.IDPK AND PK.IDCP = FK.IDCP AND PK.VPRC_COM = FK.VPRC_COM)');
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
            SQL.Add('AND    IDCP     = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''');
            SQL.Add('AND    VPRC_COM = ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
            ExecQuery;

            if SQLFKEdicao.Current.ByName('QTDE').AsFloat < SQLEdicao.Current.ByName('QTDE').AsFloat then
            begin
              { Busca pela maior etiqueta com mesma quantidade }
              Close;
              SQL.Clear;
              SQL.Add('SELECT MAX(CDET) FROM CAD_PRO_SEP');
              SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''' );
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
                SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''' );
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
                SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''' );
                SQL.Add('AND    IDCP      = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''' );
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

      { Sumário - Itens}
      oFirst(SQLFKConsulta);
      while not SQLFKConsulta.Eof do
      begin
        with SQLEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(QTDE),SUM(QTRL) FROM CAD_PRO_SEP');
          SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID        +'''');
          SQL.Add('AND    IDPK = '''+SQLFKConsulta.Current.ByName('IDPK').AsString+'''');
          SQL.Add('AND    IDCP = '''+SQLFKConsulta.Current.ByName('IDCP').AsString+'''');
          SQL.Add('AND    ITEM = '''+SQLFKConsulta.Current.ByName('ITEM').AsString+'''');
          ExecQuery;
        end;

        with SQLFKEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE '+oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3));
          SQL.Add('SET   ROM_QTPD = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[0].AsFloat  ),',','.')+''',');
          SQL.Add('      ROM_RLPD = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[1].AsInteger),',','.')+''',');
          SQL.Add('      ROM_IDSP = '''+RECUsuarios.Id   +''',');
          SQL.Add('      ROM_DSEP = '''+RECUsuarios.Login+''',');
          SQL.Add('      ROM_DTPD = '''+FormatDateTime('mm/dd/yy hh:mm',Now)+'''' );

          SQL.Add('WHERE IDEP     = '''+RECParametros.EP_ID +'''');
          SQL.Add('AND   IDPK     = '''+SQLFKConsulta.Current.ByName('IDPK').AsString+'''');
          SQL.Add('AND   IDCP     = '''+SQLFKConsulta.Current.ByName('IDCP').AsString+'''');
          SQL.Add('AND   ITEM     = '''+SQLFKConsulta.Current.ByName('ITEM').AsString+'''');
          ExecQuery;

          { Reservados }
          if SQLEdicao.Current.Vars[0].AsFloat > 0 then
          begin
            { Excluir da reserva apenas os produtos separados }
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM CAD_PRO_RES');
            SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID        +'''');
            SQL.Add('AND    IDPK = '''+SQLFKConsulta.Current.ByName('IDPK').AsString+'''');
            SQL.Add('AND    IDCP = '''+SQLFKConsulta.Current.ByName('IDCP').AsString+'''');
            ExecQuery;
          end;
        end;
        SQLFKConsulta.Next;
      end;

      { Sumário - Cabeçalho }
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT  SUM(QTDE),SUM(QTRL),SUM(QTSP),SUM(RLSP),SUM(VTSP)');
        SQL.Add('FROM ' +oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3));
        SQL.Add('WHERE   IDEP = '''+RECParametros.EP_ID+'''');
        SQL.Add('AND     IDPK = '''+SQLConsulta.Current.ByName('IDPK').AsString+'''');
        ExecQuery;
      end;
      with SQLFKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
        SQL.Add('SET    ROM_QTVE = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[0].AsFloat  ),',','.')+''',');
        SQL.Add('       ROM_RLVE = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[1].AsInteger),',','.')+''',');
        SQL.Add('       ROM_QTPD = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[2].AsFloat  ),',','.')+''',');
        SQL.Add('       ROM_RLPD = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[3].AsInteger),',','.')+''',');
        SQL.Add('       VTSP     = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[4].AsFloat  ),',','.')+'''' );
        SQL.Add('WHERE  IDEP     = '''+RECParametros.EP_ID+'''');
        SQL.Add('AND    IDPK     = '''+SQLConsulta.Current.ByName('IDPK').AsString+'''');
        ExecQuery;
      end;
    end;

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+oREPZero('ROM_CAB','_',RECParametros.EP_ID,3));
      SQL.Add('WHERE  CDRO = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+oREPZero('ROM_ITE','_',RECParametros.EP_ID,3));
      SQL.Add('WHERE  CDRO = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
      SQL.Add('SET   ROM_CDRO = 0');
      SQL.Add('WHERE CDRO     = ''' + CadastroIDPK.AsString + '''');
      ExecQuery;
    end;

    oCTransact(TEdicao);

    { ATUALIZA ESTOQUE }
    uCAD_PRO_EST_LAN_UPD(oREPZero('ROM_ITE'  ,'_',RECParametros.EP_ID,3),
                         RECParametros.EP_ID ,
                         CadastroID.AsString ,

                         'EP_ID',
                         'CDRO' ,
                         'CP_ID');

    oAviso(Self.Handle,'Romaneio Cancelado com Sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar cancelar romaneio !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  ACTEveExecute.Execute;
end;

procedure Tfrmctr_rom.siNFEClick(Sender: TObject);
begin
  if Pos('AGUA',CadastroROM_STFI.AsString) > 0 then
     oException(Nil,'Emissão de Nota Fiscal não Permitida !' +#13+
                     CadastroROM_STFI.AsString);

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.DEPD FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('WHERE  PK.CDRO  = ''' + CadastroIDPK.AsString + '''');
    ExecQuery;

    if Eof then
       oException(Nil,'Pedido não Encontrado !' + #13+
                      'Favor cancelar e refazer romaneio.');

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.CDET,COUNT(*) FROM ' + oREPZero('ROM_ITE','_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('WHERE  PK.IDPK = ''' + CadastroIDPK.AsString + '''');
    SQL.Add('AND    PK.CDET > 0');
    SQL.Add('GROUP  BY 1');
    SQL.Add('HAVING COUNT(*) > 1');
    ExecQuery;

    if Current.Vars[0].AsInteger > 0 then
       oException(Nil,'Falha ao tentar salvar romaneio !' + #13 +
                      'Etiqueta Nº ' + Current.Vars[0].AsString + ' em duplicidade.' + #13 + #13 +
                      'Favor entrar em contato com o responsável pela separação.');
  end;

  if Assigned(frmven_nfe) then frmven_nfe.BringToFront else
  begin
    TFrmVEN_NFE._ExecForm(

    Nil,        { Owner    }
    FrmVEN_NFE, { Form     }
    False,      { Pesquisa }
    fsMDIChild, { Tipo     }

    CadastroID.AsInteger, { Código Principal }
    '', { Descrição Principal }

    0, { Evento Principal }
    1, { Código Evento - 0: Triangular 1: Normal 2: Complementar 3: Ajustes 4:Devolução }
    2, { Tipo   Evento - 0: Copiado    1: Vazio  2: Romaneado }

    oREPZero('ROM_CAB','_',RECParametros.EP_ID,3), { Tabela }
    '' { Get }
    );
  end;
end;

procedure Tfrmctr_rom.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaROM_CDNF.Index] <> Null then
    if ANode.Values[DBGConsultaROM_CDNF.Index]  > 0 then
    begin
      AColor      := $00C4FFC4;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure Tfrmctr_rom.CadastroBeforeEdit(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_rom.CadastroBeforeInsert(DataSet: TDataSet);
begin
  {};
end;

procedure Tfrmctr_rom.dtsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  _DTSCadastro;
end;

procedure Tfrmctr_rom.DTSCadastroStateChange(Sender: TObject);
begin
  _DTSCadastro;
end;

procedure Tfrmctr_rom._DTSCadastro;
var
  PosCount: Word;
begin
  DBGConsultaDECV.Visible := (CadastroIDCV.AsInteger <> RECUsuarios.Id);
  DBGConsultaDECR.Visible := (CadastroIDCR.AsInteger <> RECParametros.CR_ID);

  if DBGConsultaROM_CTNR.Tag = 0 then
  begin
    DBGConsultaROM_CTNR.Visible := (not oEmpty(CadastroROM_CTNR.AsString));
    DBGConsultaROM_CTNR.Tag     := IFThen(DBGConsultaROM_CTNR.Visible,1,0);
  end;

  siCRO.Enabled  := ((CadastroIDPK.AsInteger > 0) and (CadastroROM_CDNF.AsInteger = 0)) or (RECUsuarios.Id = 0) ;
  siNFE.Enabled  := ((CadastroIDPK.AsInteger > 0) and (CadastroROM_CDNF.AsInteger = 0)) or (RECUsuarios.Id = 0);

  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen((PosCount = 00) and (CadastroINFADCAD.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (CadastroINFADCAD.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 01),040,
                        IFThen((PosCount = 02),055,
                        IFThen((PosCount = 03),070,
                        IFThen((PosCount = 04),080,
                        IFThen((PosCount = 05),090,
                        IFThen((PosCount = 06),100,
                        IFThen((PosCount = 07),110,
                        IFThen((PosCount = 08),120,
                        IFThen((PosCount = 09),130,
                        IFThen((PosCount = 10),140,140))))))))))));

  DBGConsulta.ApplyBestFit(DBGConsultaROM_DERO);
end;

procedure Tfrmctr_rom.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  PNLINFADCAD.Height := IFThen((DBINFADCAD.Lines.Count = 0) and (CadastroINFADCAD.AsString = EmptyStr),0,45);
  
  if rom_ite.State = dsInactive then
     rom_ite.Open;
end;

procedure Tfrmctr_rom.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroROM_TOTA.Value := CadastroROM_TCDE.AsFloat * IFThen(CadastroROM_CONC.AsInteger > 0,CadastroROM_CONC.AsInteger,1);
end;

procedure Tfrmctr_rom.dtsrom_iteDataChange(Sender: TObject; Field: TField);
begin
  _DTSItem;
end;

procedure Tfrmctr_rom._DTSItem;
begin
  DBGITEM.ApplyBestFit(DBGITEMPRO_CPRO);
  DBGITEM.ApplyBestFit(DBGITEMROM_DPRO);
  DBGITEM.ApplyBestFit(DBGITEMDGCP    );

  DBGItemDGCP.Visible := (not oEmpty(rom_iteDGCP.AsString));

  PNLInfAdProd.Caption := IFThen(oEmpty(rom_itePRO_QVOL.AsFloat),'','Conteúdo: '+FormatFloat('#,0.00 '+rom_itePRO_ESP.AsString+'.   ',rom_itePRO_QVOL.AsFloat));
  if (not oEmpty(rom_iteROM_UNIT.AsFloat)) and (not oEmpty(rom_itePRO_PTABI.AsFloat)) and (rom_iteROM_UNIT.AsFloat <> rom_itePRO_PTABI.AsFloat) then
  PNLInfAdProd.Caption := PNLInfAdProd.Caption + IFThen(rom_iteROM_UNIT.AsFloat < rom_itePRO_PTABI.AsFloat,'Preço de Venda ABAIXO da Tabela ! ','Preço de Venda ACIMA da Tabela ! ') +
                          FormatFloat(' Variante Menor ( R$ #,0.00 )  - ',rom_itePRO_PTABI.AsFloat)+
                          FormatFloat(' Variante Maior ( R$ #,0.00 ).'   ,rom_itePRO_PTABF.AsFloat);

  if Cadastro.State = dsBrowse then
     PNLInfAdProd.Visible := (not oEmpty(PNLInfAdProd.Caption));
end;

procedure Tfrmctr_rom.SICAD_CLI_CRDClick(Sender: TObject);
begin
  if CadastroIDPK.AsInteger = 0 then
     oException(DBGConsulta,'Cliente não Selecionado !');

  {$IF DEFINED(DEF_EXP) OR DEFINED(DEF_QLD)}
     FrmPrincipal.ACTLOG_DENIED.Execute;

  {$ELSE}
     uPSQSCORE(self,CadastroIDCD.AsString,EmptyStr);
  {$IFEND}
end;

procedure Tfrmctr_rom.rom_iteAfterOpen(DataSet: TDataSet);
begin
  { Catálogo }
  if CAD_PRO_IMG.State = dsInactive then
  begin
    CAD_PRO_IMG.Prepare;
    CAD_PRO_IMG.Open;
  end;
end;

procedure Tfrmctr_rom.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  _oLoadJPG(CAD_PRO_IMGIMG_ID,CAD_PRO_IMGIMG_PAD,IMG_PAD,True);

  DBILA_BMP1.Hint := CAD_PRO_IMGILA_INS1.AsString;
  DBILA_BMP2.Hint := CAD_PRO_IMGILA_INS2.AsString;
  DBILA_BMP3.Hint := CAD_PRO_IMGILA_INS3.AsString;
  DBILA_BMP4.Hint := CAD_PRO_IMGILA_INS4.AsString;
  DBILA_BMP5.Hint := CAD_PRO_IMGILA_INS5.AsString;
  DBILA_BMP6.Hint := CAD_PRO_IMGILA_INS6.AsString;
  DBILA_BMP7.Hint := CAD_PRO_IMGILA_INS7.AsString;
  DBILA_BMP8.Hint := CAD_PRO_IMGILA_INS8.AsString;

  BVILA_BMP1.Hint := DBILA_BMP1.Hint;
  BVILA_BMP2.Hint := DBILA_BMP2.Hint;
  BVILA_BMP3.Hint := DBILA_BMP3.Hint;
  BVILA_BMP4.Hint := DBILA_BMP4.Hint;
  BVILA_BMP5.Hint := DBILA_BMP5.Hint;
  BVILA_BMP6.Hint := DBILA_BMP6.Hint;
  BVILA_BMP7.Hint := DBILA_BMP7.Hint;
  BVILA_BMP8.Hint := DBILA_BMP8.Hint;
end;

procedure Tfrmctr_rom.ACTConsultaExecute(Sender: TObject);
begin
  inherited;

  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PS.FANTASIA AS EMPRESA,');
    SQL.Add('         PK.*,');
    SQL.Add('         CP.ARTIGO AS PRO_CART,CP.PRO_CPRO,CP.PRO_CCOR,');
    SQL.Add('         CP.PRO_QVOL ,CP.PRO_ESP, ');
    SQL.Add('         CP.PRO_PTABI,CP.PRO_PTABF');

    SQL.Add('FROM ' + oREPZero('ROM_ITE','_',RECParametros.EP_VW_ID,3) + ' AS PK');

    SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('JOIN     TAB_PAR_SIS AS PS ON (PS.ID = CP.IDEP)');

    SQL.Add('WHERE    PK.CDRO = :IDPK');
    SQL.Add('ORDER BY PK.ITEM');
    Prepare;
  end;
end;

procedure Tfrmctr_rom.ACTRelatoriosExecute(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(Nil);
  try
    frmrelatorio_geral.CDRO                 := CadastroIDPK.AsString;
    frmrelatorio_geral.CDNF                 := CadastroROM_CDNF.AsString;
    frmrelatorio_geral.tsROM_CAB.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsROM_CAB;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
  end;
end;

procedure Tfrmctr_rom.ACTPesquisaExecute(Sender: TObject);
begin
  inherited;

  if not REC_SHE_DEF.FInitialize then
  try
    FrmPesquisa_OLD := TFrmPesquisa_OLD.Create(Nil);
    FrmPesquisa_OLD.Tag := 8;
    FrmPesquisa_OLD.ShowModal;
  finally
    if   FrmPesquisa_OLD.Editado then
    with Cadastro do
    begin
      oCTransact(TConsulta);
      oOTransact(TConsulta);

      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.ID,PK.IDPK,PK.IDEP,');
      SQL.Add('       PK.ROM_CDCX,PK.ROM_CDPR,PK.ROM_CDRD,PK.ROM_CDRO,PK.ROM_CDNF,PK.ROM_CDBX,PK.ROM_CONC,');
      SQL.Add('       PK.ROM_DERO,PK.ROM_CTNR,');
      SQL.Add('       PK.ROM_DROM,PK.ROM_DNFS,PK.ROM_DBAI,PK.ROM_DCAN,');
      SQL.Add('       PK.IDCD,CD.FANTASIA AS DECD,CRD.CSCD AS FIN_CSPD,CRD.VCRD,CD.CLI_ESTA,');
      SQL.Add('       PK.IDCV,CV.LOGIN    AS DECV,');
      SQL.Add('       PK.IDCR,CR.FANTASIA AS DECR,');
      SQL.Add('       PK.CDPG,PAG_DPAG,PAG_PARC,PAG_PRAZ,PAG_DPAG AS DEPG,PK.RECO,');
      SQL.Add('       PK.ROM_CTRA,PK.ROM_DTRA,PK.ROM_MFRT,PK.CFRT    ,PK.ROM_VFRT,PK.ROM_RLVE,');
      SQL.Add('       PK.ROM_TSDE,PK.ROM_TDSC,PK.ROM_PDSC,PK.ROM_VDSC,PK.ROM_TCDE,PK.ROM_VNF ,');
      SQL.Add('       PK.ROM_STPD,PK.ROM_STCO,PK.ROM_STFI,');
      SQL.Add('       VEN_FATU,VEN_QTSP,VEN_BEST,VEN_AGRP,VEN_CNA1,VEN_CNA2,');
      SQL.Add('       TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 1064) AS VARCHAR(1064))) AS INFADCAD');

      SQL.Add('FROM ' + oREPZero('ROM_CAB','_',RECParametros.EP_ID,3) + ' AS PK');

      SQL.Add('JOIN CAD_CLI     AS CD    ON (CD.ID    = PK.IDCD)');
      SQL.Add('JOIN CAD_CLI_CRD AS CRD   ON (CRD.IDEP = PK.IDEP AND CRD.IDCD = PK.IDCD)');
      SQL.Add('JOIN CAD_REP     AS CR    ON (CAST(CR.ID AS SMALLINT) = PK.IDCR)');

      SQL.Add('JOIN TAB_USER    AS CV    ON (CV.ID    = PK.IDCV)');
      SQL.Add('JOIN TAB_PED     AS TB_PD ON (TB_PD.ID = PK.CDPD)');
      SQL.Add('JOIN TAB_PAG     AS TB_PG ON (CAST(TB_PG.ID AS SMALLINT) = PK.CDPG)');

      SQL.Add('),'); { RECURSIVE FIM }

      { CTE INI }
      SQL.Add('CTE_PSQ');
      SQL.Add('AS (');

      { RECURSIVE SQL }
      SQL.Add('SELECT PK.* FROM PK');

      { PESQUISA TEXTO PRINCIPAL }
      if (FrmPesquisa_OLD.EDTXT.Text <> EmptyStr) and (LeftStr(FrmPesquisa_OLD.CField,2) = 'PK') then
      SQL.Add('WHERE ' + FrmPesquisa_OLD.CField + ' ' + FrmPesquisa_OLD.cPesquisaWhere + ' ''' + FrmPesquisa_OLD.EDTXT.Text + FrmPesquisa_OLD.cPesquisaLike + '''');
      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT DISTINCT PK.* FROM CTE_PSQ AS PK');

      { SUB QUERY }
      if (FrmPesquisa_OLD.EDTXT.Text <> EmptyStr) and (LeftStr(FrmPesquisa_OLD.CField,2) <> 'PK') then
      begin
        { INÍCIO }
        SQL.Add('WHERE EXISTS');
        SQL.Add('(');

        { PEDIDOS }
        if Pos('PV_PK.',FrmPesquisa_OLD.CField) > 0 then
        begin
          FrmPesquisa_OLD.CField     := oStrTran(FrmPesquisa_OLD.CField,'PV_PK.','FK.');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS FK');
        end;

        { FINANCEIRO BANCÁRIO }
        if Pos('FN_PK.',FrmPesquisa_OLD.CField) > 0 then
        begin
          FrmPesquisa_OLD.CField     := oStrTran(FrmPesquisa_OLD.CField,'FN_PK.','FK.');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('VW_PSQ_FIN_REC_BAN','_',RECParametros.EP_ID,3) + ' AS FK');
        end;

        { PESQUISA TEXTO SECUNDÁRIO }
        SQL.Add('WHERE FK.CD_ID = PK.CD_ID');
        SQL.Add('AND ' + FrmPesquisa_OLD.CField + ' ' + FrmPesquisa_OLD.cPesquisaWhere + ' ''' + FrmPesquisa_OLD.EDTXT.Text + FrmPesquisa_OLD.cPesquisaLike + '''');
        SQL.Add(')'); { FIM }

        { FINANCEIRO CARTEIRA }
        if Pos('FIN_REC_BAN',Cadastro.SQL.Text) > 0 then
        begin
          SQL.Add('OR EXISTS');
          SQL.Add('(');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('VW_PSQ_FIN_REC_CAR','_',RECParametros.EP_ID,3) + ' AS FK');

          { PESQUISA TEXTO SECUNDÁRIO }
          SQL.Add('WHERE FK.CD_ID = PK.CD_ID');
          SQL.Add('AND ' + FrmPesquisa_OLD.CField + ' ' + FrmPesquisa_OLD.cPesquisaWhere + ' ''' + FrmPesquisa_OLD.EDTXT.Text + FrmPesquisa_OLD.cPesquisaLike + '''');
          SQL.Add(')'); { FIM }
        end;
      end;

      SQL.Add('ORDER BY ' + IFThen(LeftStr(FrmPesquisa_OLD.CField,2) = 'PK',FrmPesquisa_OLD.CField,'PK.CD_NO'));
    end;

    if FrmPesquisa_OLD.EDTXT.Text <> EmptyStr then
    begin
      APSQ_PED_RDV := FrmPesquisa_OLD.cbCAMPO.Text;
      SBRodape.Panels[1].Text := SBRodape.Panels[1].Text + ' Pesquisado ' + FrmPesquisa_OLD.cbCampo.Text + ' ' + FrmPesquisa_OLD.EDTXT.Text;
    end;

    FreeAndNil(FrmPesquisa_OLD);
  end;

  if Cadastro.State = dsInactive then
  begin
    Cadastro.Prepare;
    Cadastro.Open;
  end;

  DBGConsulta.Filter.Clear;
  DBGConsultaROM_DERO.Field.FocusControl;

  if (Showing) then
  if (PNLDBG.Enabled) and (PNLDBG.Visible) then
  if (GBDET.Enabled ) and (GBDET.Visible ) then
  if (DBGConsulta.Enabled) and (DBGConsulta.Visible) then
  if (Cadastro.RecNo > 0) then
  oSetFocus(DBGConsulta);
end;

end.
