unit pCAD_PRO_PSQ;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_PSQ, dxExEdtr, DB, IBQuery, dxDockControl, IBEvents,
  IBCustomDataSet, IBStoredProc, IBSQL, IBDatabase, dxCntner, ImgList,
  ActnList, dxBar, dxsbar, dxBarExtItems, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, dxDockPanel, dxDBTLCl, dxGrClms, math, StrUtils, DBCtrls,
  dxEditor, dxEdLib, dxDBELib;

type
  TFrmCAD_PRO_PSQ = class(TFrmSHE_DEF_PSQ)
    ConsultaID: TLargeintField;
    ConsultaEP_ID: TSmallintField;
    ConsultaEP_NO: TIBStringField;
    ConsultaEP_NO_ABREV: TIBStringField;
    ConsultaEP_NO_SIGLA: TIBStringField;
    ConsultaEP_GP_NO: TIBStringField;
    ConsultaEP_GC: TSmallintField;
    ConsultaEP_GV: TSmallintField;
    ConsultaEP_GE: TSmallintField;
    ConsultaEP_GR: TSmallintField;
    ConsultaEP_GF: TSmallintField;
    ConsultaCF_ID: TSmallintField;
    ConsultaCF_NO: TIBStringField;
    ConsultaCF_NO_ABREV: TIBStringField;
    ConsultaCF_NO_SIGLA: TIBStringField;
    ConsultaCF_RZ_NO: TIBStringField;
    ConsultaCF_GP_NO: TIBStringField;
    ConsultaIDEV: TLargeintField;
    ConsultaCDEV: TSmallintField;
    ConsultaDTEV: TDateTimeField;
    ConsultaDEEV: TIBStringField;
    ConsultaIDCA: TSmallintField;
    ConsultaIDED: TSmallintField;
    ConsultaIDST: TSmallintField;
    ConsultaCDST: TSmallintField;
    ConsultaREST: TIBStringField;
    ConsultaDEST: TIBStringField;
    ConsultaST_NO_ABREV: TIBStringField;
    ConsultaAK_ID: TLargeintField;
    ConsultaARTIGO: TIBStringField;
    ConsultaCP_ID: TLargeintField;
    ConsultaIMG_ID: TLargeintField;
    ConsultaEK_ID: TLargeintField;
    ConsultaSKU: TIBStringField;
    ConsultaCEAN: TIBStringField;
    ConsultaCF_SKU: TIBStringField;
    ConsultaCF_CEAN: TIBStringField;
    ConsultaFIS_NCM: TIBStringField;
    ConsultaFIS_PIPI: TIBBCDField;
    ConsultaFIS_EXTIPI: TIBStringField;
    ConsultaFIS_CEST: TIBStringField;
    ConsultaCP_NO: TIBStringField;
    ConsultaCP_NO_TLO: TIBStringField;
    ConsultaCMP_NO: TIBStringField;
    ConsultaGRD_ID: TLargeintField;
    ConsultaGRD_NO: TIBStringField;
    ConsultaGRD_NO_SIGLA: TIBStringField;
    ConsultaCOR_ID: TSmallintField;
    ConsultaCOR_CD: TIBStringField;
    ConsultaCOR_RF: TIBStringField;
    ConsultaCOR_NO: TIBStringField;
    ConsultaCOR_NO_SIGLA: TIBStringField;
    ConsultaCOR_SISTEMA: TIBStringField;
    ConsultaCOR_ESCALA: TIBStringField;
    ConsultaVAR_ID: TSmallintField;
    ConsultaVAR_CD: TIBStringField;
    ConsultaVAR_RF: TIBStringField;
    ConsultaVAR_NO: TIBStringField;
    ConsultaVAR_NO_SIGLA: TIBStringField;
    ConsultaUCOM: TIBStringField;
    ConsultaUTRIB: TIBStringField;
    ConsultaUCON: TIBStringField;
    ConsultaUCDBE: TIBStringField;
    ConsultaUCDBE_NO: TIBStringField;
    ConsultaUQTDE: TIBBCDField;
    ConsultaUQTDE_EST_MIN: TSmallintField;
    ConsultaUQTDE_VEN_MIN: TSmallintField;
    ConsultaUQTDE_VEN_MUL: TSmallintField;
    ConsultaUQVOL: TSmallintField;
    ConsultaUESP: TIBStringField;
    ConsultaUPSBR: TIBBCDField;
    ConsultaUPSLQ: TIBBCDField;
    ConsultaUPSCN: TIBBCDField;
    ConsultaPPSBR: TIBBCDField;
    ConsultaMPESO: TIBBCDField;
    ConsultaMMETRO: TIBBCDField;
    ConsultaMMETRO2: TIBBCDField;
    ConsultaMMETRO3: TIBBCDField;
    ConsultaMGRAMA: TIBBCDField;
    ConsultaMGRAMA_NO: TIBStringField;
    ConsultaMREND: TIBBCDField;
    ConsultaMLGRU: TIBBCDField;
    ConsultaMLGRT: TIBBCDField;
    ConsultaMELAL: TIBBCDField;
    ConsultaMELAC: TIBBCDField;
    ConsultaMELA_NO: TIBStringField;
    ConsultaMENCL: TIBBCDField;
    ConsultaMENCC: TIBBCDField;
    ConsultaMENC_NO: TIBStringField;
    ConsultaMABNT_NO: TIBStringField;
    ConsultaMESP: TIBBCDField;
    ConsultaMESP_NO: TIBStringField;
    ConsultaMCALT: TIBBCDField;
    ConsultaMCLGR: TIBBCDField;
    ConsultaMCCTO: TIBBCDField;
    ConsultaMCPVM: TIBBCDField;
    ConsultaLJV_UCOM: TIBStringField;
    ConsultaLJV_UCON: TIBStringField;
    ConsultaLJV_UCDBE: TIBStringField;
    ConsultaLJV_UCDBE_NO: TIBStringField;
    ConsultaLJV_UQTDE: TIBBCDField;
    ConsultaLJV_UQTDE_EST_MIN: TSmallintField;
    ConsultaLJV_UQTDE_VEN_MIN: TSmallintField;
    ConsultaLJV_UQTDE_VEN_MUL: TSmallintField;
    ConsultaLJV_UQVOL: TIBBCDField;
    ConsultaLJV_UESP: TIBStringField;
    ConsultaLJV_UPSBR: TIBBCDField;
    ConsultaLJV_UPSLQ: TIBBCDField;
    ConsultaLJV_UPSCN: TIBBCDField;
    ConsultaLJV_MPESO: TIBBCDField;
    ConsultaLJV_MMETRO: TIBBCDField;
    ConsultaLJV_MMETRO2: TIBBCDField;
    ConsultaLJV_MMETRO3: TIBBCDField;
    ConsultaLJV_MGRAMA: TIBBCDField;
    ConsultaLJV_MGRAMA_NO: TIBStringField;
    ConsultaLJV_MREND: TIBBCDField;
    ConsultaLJV_MLGRU: TIBBCDField;
    ConsultaLJV_MLGRT: TIBBCDField;
    ConsultaLJV_MELAL: TIBBCDField;
    ConsultaLJV_MELAC: TIBBCDField;
    ConsultaLJV_MELA_NO: TIBStringField;
    ConsultaLJV_MENCL: TIBBCDField;
    ConsultaLJV_MENCC: TIBBCDField;
    ConsultaLJV_MENC_NO: TIBStringField;
    ConsultaLJV_MABNT_NO: TIBStringField;
    ConsultaLJV_MESP: TIBBCDField;
    ConsultaLJV_MESP_NO: TIBStringField;
    ConsultaLJV_MCALT: TIBBCDField;
    ConsultaLJV_MCLGR: TIBBCDField;
    ConsultaLJV_MCCTO: TIBBCDField;
    ConsultaLJV_MCPVM: TIBBCDField;
    ConsultaVPRC_PAD_INI: TFloatField;
    ConsultaVPRC_PAD_FIM: TFloatField;
    ConsultaVPRC_ORIG: TIBStringField;
    ConsultaVPRC_PAD: TFloatField;
    ConsultaVPRC_PRZ: TFloatField;
    ConsultaVPRC_PRO: TFloatField;
    ConsultaVPRC_MKP: TIBBCDField;
    ConsultaVPRC_DSC: TIBBCDField;
    ConsultaVPRC_ACR: TIBBCDField;
    ConsultaATJ_VPRC_PAD: TFloatField;
    ConsultaATJ_VPRC_PRZ: TFloatField;
    ConsultaATJ_VPRC_PRO: TFloatField;
    ConsultaATJ_VPRC_MKP: TIBBCDField;
    ConsultaATJ_VPRC_DSC: TIBBCDField;
    ConsultaATJ_VPRC_ACR: TIBBCDField;
    ConsultaLJV_VPRC_PAD: TFloatField;
    ConsultaLJV_VPRC_PRZ: TFloatField;
    ConsultaLJV_VPRC_PRO: TFloatField;
    ConsultaLJV_VPRC_MKP: TIBBCDField;
    ConsultaLJV_VPRC_DSC: TIBBCDField;
    ConsultaLJV_VPRC_ACR: TIBBCDField;
    ConsultaREP_VPRC_PAD: TFloatField;
    ConsultaREP_VPRC_PRZ: TFloatField;
    ConsultaREP_VPRC_PRO: TFloatField;
    ConsultaREP_VPRC_MKP: TIBBCDField;
    ConsultaREP_VPRC_DSC: TIBBCDField;
    ConsultaREP_VPRC_ACR: TIBBCDField;
    ConsultaVAR_VPRC_PAD: TFloatField;
    ConsultaVAR_VPRC_PRZ: TFloatField;
    ConsultaVAR_VPRC_PRO: TFloatField;
    ConsultaVAR_VPRC_MKP: TIBBCDField;
    ConsultaVAR_VPRC_DSC: TIBBCDField;
    ConsultaVAR_VPRC_ACR: TIBBCDField;
    ConsultaCF_VPRC_ORIG: TIBStringField;
    ConsultaCF_VPRC_PAD: TFloatField;
    ConsultaCF_VPRC_MKP: TIBBCDField;
    ConsultaCOL_ID: TSmallintField;
    ConsultaCOL_NO: TIBStringField;
    ConsultaSEG_ID: TSmallintField;
    ConsultaSEG_NO: TIBStringField;
    ConsultaGRP_ID: TSmallintField;
    ConsultaGRP_NO: TIBStringField;
    ConsultaSGP_ID: TSmallintField;
    ConsultaSGP_NO: TIBStringField;
    ConsultaCAT_ID: TSmallintField;
    ConsultaCAT_NO: TIBStringField;
    ConsultaSCT_ID: TSmallintField;
    ConsultaSCT_NO: TIBStringField;
    ConsultaMKP_MLV_ID: TSmallintField;
    ConsultaMKP_MSP_ID: TSmallintField;
    ConsultaMKP_MPG_ID: TSmallintField;
    ConsultaMKP_SHP_ID: TSmallintField;
    ConsultaMKP_AMZ_ID: TSmallintField;
    ConsultaMKP_BLG_ID: TSmallintField;
    ConsultaMKP_TRY_ID: TSmallintField;
    ConsultaCDNS_NO: TIBStringField;
    ConsultaCTFI_NO: TIBStringField;
    ConsultaCACB_NO: TIBStringField;
    ConsultaFIN_CAD_ID: TSmallintField;
    ConsultaFIN_EST_ID: TSmallintField;
    ConsultaFIS_ORIG: TSmallintField;
    ConsultaFIS_XORIG: TIBStringField;
    ConsultaFIS_FPAIS: TIBStringField;
    ConsultaFIS_CPAIS: TSmallintField;
    ConsultaFIS_XPAIS: TIBStringField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaINFADTEC: TIBStringField;
    ConsultaINFADPRN: TIBStringField;
    ConsultaIP: TIBStringField;
    ConsultaHOST: TIBStringField;
    ConsultaEPE_QTDE: TIBBCDField;
    ConsultaEPE_QTRL: TIntegerField;
    ConsultaEST_QTDE: TIBBCDField;
    ConsultaEST_QTRL: TIntegerField;
    ConsultaEAT_QTDE: TIBBCDField;
    ConsultaEAT_QTRL: TIntegerField;
    ConsultaERV_QTDE: TIBBCDField;
    ConsultaERV_QTRL: TIntegerField;
    ConsultaEAA_QTDE: TIBBCDField;
    ConsultaEAA_QTRL: TIntegerField;
    ConsultaEA_QTDE: TIBBCDField;
    ConsultaEA_QTRL: TIntegerField;
    ConsultaEB_QTDE: TIBBCDField;
    ConsultaEB_QTRL: TIntegerField;
    ConsultaEC_QTDE: TIBBCDField;
    ConsultaEC_QTRL: TIntegerField;
    ConsultaEPI_QTDE: TIBBCDField;
    ConsultaEPI_QTRL: TIntegerField;
    ConsultaESU_QTDE_ENT: TIBBCDField;
    ConsultaESU_QTRL_ENT: TIntegerField;
    ConsultaESU_QTDE_SAI: TIBBCDField;
    ConsultaESU_QTRL_SAI: TIntegerField;
    ConsultaEPC_QTDE: TIBBCDField;
    ConsultaEPC_QTRL: TIntegerField;
    ConsultaEPC_CTNR: TIBStringField;
    ConsultaEPP_QTDE: TIBBCDField;
    ConsultaEPP_QTRL: TIntegerField;
    ConsultaEPP_QTDE_CTNR: TIBBCDField;
    ConsultaEPP_QTRL_CTNR: TIntegerField;
    ConsultaEEP_QTDE: TIBBCDField;
    ConsultaEEP_QTRL: TIntegerField;
    ConsultaEPV_QTDE: TIBBCDField;
    ConsultaEPV_QTRL: TIntegerField;
    ConsultaESP_QTDE: TIBBCDField;
    ConsultaESP_QTRL: TIntegerField;
    DBGConsultaST_NO_ABREV: TdxDBGridMaskColumn;
    DBGConsultaSKU: TdxDBGridMaskColumn;
    DBGConsultaCP_NO: TdxDBGridMaskColumn;
    DBGConsultaGRD_NO: TdxDBGridMaskColumn;
    DBGConsultaUCOM: TdxDBGridMaskColumn;
    CAD_PRO_FIC: TIBQuery;
    CAD_PRO_FICCP_ID: TLargeintField;
    CAD_PRO_FICUCOM: TIBStringField;
    CAD_PRO_FICMPESO: TIBBCDField;
    CAD_PRO_FICUPSCN: TIBBCDField;
    CAD_PRO_FICPPSBR: TIBBCDField;
    CAD_PRO_FICMMETRO: TIBBCDField;
    CAD_PRO_FICMGRAMA: TIBBCDField;
    CAD_PRO_FICMREND: TIBBCDField;
    CAD_PRO_FICMLGRU: TIBBCDField;
    CAD_PRO_FICMLGRT: TIBBCDField;
    CAD_PRO_FICMELAL: TIBBCDField;
    CAD_PRO_FICMELAC: TIBBCDField;
    CAD_PRO_FICMENCL: TIBBCDField;
    CAD_PRO_FICMENCC: TIBBCDField;
    CAD_PRO_FICUCDBE_NO: TIBStringField;
    CAD_PRO_FICUQTDE: TIBBCDField;
    CAD_PRO_FICUQTDE_VEN_MUL: TSmallintField;
    CAD_PRO_FICMABNT_NO: TIBStringField;
    CAD_PRO_FICINFADCAD: TIBStringField;
    CAD_PRO_FICINFADCPL: TIBStringField;
    CAD_PRO_FICC_UQTDE: TStringField;
    DTSCAD_PRO_FIC: TDataSource;
    PNLDBGCAD_PRO_FIC: TPanel;
    DBGCAD_PRO_FIC: TdxDBGrid;
    DBGCAD_PRO_FICMMETRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMGRAMA: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMREND: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMPESO: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICUPSCN: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICPPSBR: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMLGRU: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMLGRT: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMENCC: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMENCL: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMELAC: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMELAL: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICUCDBE_NO: TdxDBGridColumn;
    DBGCAD_PRO_FICC_UQTDE: TdxDBGridColumn;
    CAD_PRO_IMG: TIBQuery;
    CAD_PRO_IMGIMG_ID: TLargeintField;
    CAD_PRO_IMGIMG_NO: TIBStringField;
    CAD_PRO_IMGIMG_PAD: TBlobField;
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
    IMG_PAD: TImage;
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
    DBCAD_PRO_INF: TdxDBMemo;
    ConsultaC_EST_QTDE: TFloatField;
    ConsultaC_EST_QTRL: TIntegerField;
    DBGConsultaC_EST_QTDE: TdxDBGridMaskColumn;
    DBGConsultaC_EST_QTRL: TdxDBGridMaskColumn;
    DBGConsultaEPE_QTDE: TdxDBGridCurrencyColumn;
    DBGConsultaEPE_QTRL: TdxDBGridMaskColumn;
    ConsultaEP_RZ_NO: TIBStringField;
    ConsultaCF_CNPJ: TIBStringField;
    ConsultaCF_IE: TIBStringField;
    ConsultaCF_ISUF: TIBStringField;
    ConsultaCF_IM: TIBStringField;
    ConsultaCF_CDST: TSmallintField;
    ConsultaCF_REST: TIBStringField;
    ConsultaCF_DEST: TIBStringField;
    ConsultaDTCA: TDateTimeField;
    ConsultaDTED: TDateTimeField;
    ConsultaDTST: TDateTimeField;
    ConsultaINFADETQ: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure FormPaint(Sender: TObject);
    procedure ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCAD_PRO_PSQ: TFrmCAD_PRO_PSQ;

implementation

{$R *.dfm}

procedure TFrmCAD_PRO_PSQ.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_PSQ.FPosition := Self.Position; { Posição }

  REC_SHE_PSQ.FMainArea := False; { Aplicativo }
  REC_SHE_PSQ.FWorkArea := False; { Windows    }

  { BAR MANAGER }
  BMPrincipal.Bars[1].BorderStyle := bbsNone; { Sistema }
  BMPrincipal.Bars[4].BorderStyle := bbsNone; { Pesquisa Período }

  { GRANT USER }
  REC_SHE_PSQ.GDescricao  := '';
  REC_SHE_PSQ.GReferencia := '';
  REC_SHE_PSQ.GRegra      := '';
  REC_SHE_PSQ.GAdmin      := True;
  inherited;
end;

procedure TFrmCAD_PRO_PSQ.ACTPesquisaExecute(Sender: TObject);
begin
  inherited;

  if not REC_SHE_PSQ.FInitialize then
  begin
    oCTransact(TConsulta);
    oOTransact(TConsulta);

    with Consulta do
    begin
      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.* FROM VW_PSQ_CAD_PRO AS PK');
      SQL.Add('),'); { RECURSIVE FIM }

      { CTE INI }
      SQL.Add('CTE_PSQ');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.* FROM PK');
      SQL.Add('WHERE  PK.SKU LIKE ''AU.%''');
      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT DISTINCT PK.*,');

      SQL.Add('       -- Estoque Pronta Entrega');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPE_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPE_QTDE,COALESCE(CAST(SUM(EF.EPE_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPE_QTRL,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EST_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EST_QTDE,COALESCE(CAST(SUM(EF.EST_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EST_QTRL,');

      SQL.Add('       -- Estoque Antecipado');
      SQL.Add('       COALESCE(CAST(SUM(EF.EAT_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EAT_QTDE,COALESCE(CAST(SUM(EF.EAT_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EAT_QTRL,');

      SQL.Add('       -- Estoque Revisado');
      SQL.Add('       COALESCE(CAST(SUM(EF.ERV_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ERV_QTDE,COALESCE(CAST(SUM(EF.ERV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ERV_QTRL,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EAA_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EAA_QTDE,COALESCE(CAST(SUM(EF.EAA_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EAA_QTRL,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EA_QTDE ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EA_QTDE ,COALESCE(CAST(SUM(EF.EA_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EA_QTRL ,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EB_QTDE ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EB_QTDE ,COALESCE(CAST(SUM(EF.EB_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EB_QTRL ,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EC_QTDE ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EC_QTDE ,COALESCE(CAST(SUM(EF.EC_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EC_QTRL ,');

      SQL.Add('       -- Pilotagem');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPI_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPI_QTDE,COALESCE(CAST(SUM(EF.EPI_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPI_QTRL,');

      SQL.Add('       -- Estoque Substituto');
      SQL.Add('       COALESCE(CAST(SUM(EF.ESU_QTDE_ENT) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ESU_QTDE_ENT,COALESCE(CAST(SUM(EF.ESU_QTRL_ENT) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ESU_QTRL_ENT,');
      SQL.Add('       COALESCE(CAST(SUM(EF.ESU_QTDE_SAI) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ESU_QTDE_SAI,COALESCE(CAST(SUM(EF.ESU_QTRL_SAI) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ESU_QTRL_SAI,');

      SQL.Add('       -- Compras');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPC_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPC_QTDE,COALESCE(CAST(SUM(EF.EPC_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPC_QTRL,');
      SQL.Add('       MAX(EF.EPC_CTNR) OVER(PARTITION BY PK.CP_ID) AS EPC_CTNR,');

      SQL.Add('       -- Vendas Programadas');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPP_QTDE     ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPP_QTDE     ,COALESCE(CAST(SUM(EF.EPP_QTRL     ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPP_QTRL     ,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPP_QTDE_CTNR) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPP_QTDE_CTNR,COALESCE(CAST(SUM(EF.EPP_QTRL_CTNR) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPP_QTRL_CTNR,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EEP_QTDE     ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EEP_QTDE     ,COALESCE(CAST(SUM(EF.EEP_QTRL     ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EEP_QTRL     ,');

      SQL.Add('       -- Vendas Pronta Entrega');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPV_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPV_QTDE,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER      ),0) AS EPV_QTRL,');

      SQL.Add('       -- Vendas Separadas');
      SQL.Add('       COALESCE(CAST(SUM(EF.ESP_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ESP_QTDE,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER      ),0) AS ESP_QTRL ');


      SQL.Add('FROM     CTE_PSQ AS PK');
      SQL.Add('LEFT     JOIN VW_PSQ_CAD_PRO_EST_SLD AS EF ON (EF.CP_ID = PK.CP_ID AND EF.EP_LG = :EP_LG)');
      SQL.Add('ORDER BY PK.ARTIGO,PK.GRD_NO');

      ParamByName('EP_LG').Value := RECParametros.EP_ID;
      Prepare;
      Open;
    end;
  end;

  //HCDSPrincipal1Consulta.Tag    := DSPrincipal1.Height        - LDSPrincipal1ConsultaINFADCAD.Tag;
  //HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag + IFThen(CAD_PRO_FICMABNT_NO.AsString <> EmptyStr,45,0);

  { DOCK MANAGER }
  { Rodapé }
  FDockControlPrincipal1RodapeLE := VCDSPrincipal1RodapeLE.Tag; { EST_EPE }
  VCDSPrincipal1RodapeLE.Tag     := IFThen(VCDSPrincipal1RodapeLE.Tag < 400,400,VCDSPrincipal1RodapeLE.Tag);

  if FDockControlPrincipal1RodapeLE <> VCDSPrincipal1RodapeLE.Tag then
  begin
    VCDSPrincipal1RodapeLE.HelpContext := 0;
    _SetDockControl(VCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,True ,True);

    TCDSPrincipal1RodapeLE.HelpContext := 0;
    _SetDockControl(TCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);
  end;

  { CONSULTA }
  DBGConsulta.Filter.Clear; { Filters }

  if Consulta.RecNo > 0 then
  begin
    PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGConsulta).SetFocus;
  end else
  begin
    { Pesquisa }
    DPPrincipal1Consulta1.Caption := 'Registro(s) não Encontrado(s)';
    BEPSQ_CAD.SetFocus(False);
  end;

  if TCDSPrincipal.Tag = 0 then
  begin
    TCDSPrincipal1Rodape.HelpContext := 0;
    _SetDockControl(TCDSPrincipal1Rodape,DSPrincipal1.Width - VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);
  end;
end;

procedure TFrmCAD_PRO_PSQ.ConsultaBeforeClose(DataSet: TDataSet);
begin
  inherited;
  if CAD_PRO_FIC.State <> dsInactive then
     CAD_PRO_FIC.Close;

  if CAD_PRO_IMG.State <> dsInactive then
     CAD_PRO_IMG.Close;
end;

procedure TFrmCAD_PRO_PSQ.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if CAD_PRO_FIC.State = dsInactive then
     CAD_PRO_FIC.Open;

  if CAD_PRO_IMG.State = dsInactive then
     CAD_PRO_IMG.Open;

  { FOCUSED }
  if ConsultaGRD_NO.AsString <> EmptyStr then
  DBGConsultaGRD_NO.Field.FocusControl else
  DBGConsultaCP_NO.Field.FocusControl;
end;

procedure TFrmCAD_PRO_PSQ.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
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

procedure TFrmCAD_PRO_PSQ.FormPaint(Sender: TObject);
begin
  inherited;
  _SetDockControl(DPPrincipal1RodapeLEB,DPPrincipal1RodapeLEB.Tag,lVertical,True,True);
  _SetDockControl(DPPrincipal1Rodape,DPPrincipal1Rodape.Tag,lVertical);
end;

procedure TFrmCAD_PRO_PSQ.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if REC_SHE_PSQ.PSQ_TFD_TP = 'EPC' then
  begin
    ConsultaC_EST_QTDE.Value := ConsultaEEP_QTDE.AsFloat;
    ConsultaC_EST_QTRL.Value := ConsultaEEP_QTRL.AsInteger;
  end else

  if REC_SHE_PSQ.PSQ_TFD_TP = 'EPP' then
  begin
    ConsultaC_EST_QTDE.Value := ConsultaEPP_QTDE.AsFloat;
    ConsultaC_EST_QTRL.Value := ConsultaEPP_QTRL.AsInteger;
  end else
  begin
    ConsultaC_EST_QTDE.Value := ConsultaEPE_QTDE.AsFloat;
    ConsultaC_EST_QTRL.Value := ConsultaEPE_QTRL.AsInteger;
  end;
end;

end.
