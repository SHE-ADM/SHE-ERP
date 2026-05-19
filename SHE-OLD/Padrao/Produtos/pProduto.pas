unit pProduto;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, dxExEdtr, dxsbar, ActnList,
  dxDockControl, dxBar, dxBarExtItems, ImgList, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDockPanel, ExtCtrls, dxPageControl, cxControls, dxStatusBar,
  dxDBTLCl, dxGrClms, StdCtrls, math, StrUtils, DBCtrls, dxEditor, dxEdLib,
  dxDBELib, IDGlobal, dxGrClEx, pDefaultConsultaOld;

type
  TFrmProduto = class(TFrmDefaultConsultaOld)
    PNLCabecalho: TPanel;
    Artigos: TIBQuery;
    DTSArtigos: TDataSource;
    PMPesquisa: TdxBarPopupMenu;
    Produtos: TIBQuery;
    DTSProdutos: TDataSource;
    PS: TIBQuery;
    DTSPS: TDataSource;
    PSID: TIntegerField;
    PSDEPS: TIBStringField;
    PSDTPV: TDateTimeField;
    PSCLPS: TIBStringField;
    PSCVPS: TIBStringField;
    PSCRPS: TIBStringField;
    PSQTDE: TIBBCDField;
    PSQTRL: TIntegerField;
    PSCDET: TIBStringField;
    PSDESP: TIBStringField;
    PSDTCA: TDateTimeField;
    PR: TIBQuery;
    DTSPR: TDataSource;
    PP: TIBQuery;
    DTSPP: TDataSource;
    PCA: TIBQuery;
    DTSPCA: TDataSource;
    PCAID: TIntegerField;
    PCADEPC: TIBStringField;
    PCADTCA: TDateTimeField;
    PCAFOPC: TIBStringField;
    PCACCPC: TIBStringField;
    PCAQTDE: TIBBCDField;
    PCAQTRL: TIntegerField;
    PCASTFI: TIBStringField;
    PCADTDE: TDateField;
    PCADTPR: TDateField;
    LF: TIBQuery;
    DTSLF: TDataSource;
    DTSLS: TDataSource;
    LS: TIBQuery;
    BSPesquisa: TdxBarStatic;
    BEPesquisa: TdxBarEdit;
    PCACTNR: TIBStringField;
    PCF: TIBQuery;
    DTSPCF: TDataSource;
    PCFID: TIntegerField;
    PCFCTNR: TIBStringField;
    PCFDTCA: TDateTimeField;
    PCFFOPC: TIBStringField;
    PCFCCPC: TIBStringField;
    PCFQTDE: TIBBCDField;
    PCFQTRL: TIntegerField;
    PCFQTFI: TIBBCDField;
    PCFRLFI: TIntegerField;
    PCFSTFI: TIBStringField;
    PCFDTDE: TDateField;
    PCFDTBX: TDateField;
    PSARTIGO: TIBStringField;
    PSPRODUTO: TIBStringField;
    PCAARTIGO: TIBStringField;
    PCAPRODUTO: TIBStringField;
    PCFARTIGO: TIBStringField;
    PCFPRODUTO: TIBStringField;
    PSCDSP: TLargeintField;
    PSIDSP: TSmallintField;
    BLBArmarinhos: TdxBarLargeButton;
    ACTArmarinhos: TAction;
    ACTProduto_Estoque: TAction;
    ACTProduto_Estoque_Etiqueta: TAction;
    ACTProduto_Ficha_Tecnica: TAction;
    BLBProduto_Estoque: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    BLBProduto_Estoque_Etiqueta: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    BLBAtivo: TdxBarLargeButton;
    BLBInativo: TdxBarLargeButton;
    BLBPreCadastro: TdxBarLargeButton;
    ACTAtivo: TAction;
    ACTInativo: TAction;
    ACTPreCadastro: TAction;
    PNLConsulta_Produtos: TPanel;
    PNLEstoque: TPanel;
    GBPosicao: TGroupBox;
    DBGPosicao: TdxDBGrid;
    DBGPosicaoEA_QTDE: TdxDBGridCurrencyColumn;
    DBGPosicaoEA_QTRL: TdxDBGridMaskColumn;
    DBGPosicaoEB_QTDE: TdxDBGridCurrencyColumn;
    DBGPosicaoEB_QTRL: TdxDBGridMaskColumn;
    DBGPosicaoEC_QTDE: TdxDBGridCurrencyColumn;
    DBGPosicaoEC_QTRL: TdxDBGridMaskColumn;
    DBGPosicaoEPI_QTDE: TdxDBGridCurrencyColumn;
    DBGPosicaoEPI_QTRL: TdxDBGridMaskColumn;
    GBEstoque: TGroupBox;
    DBGProdutos: TdxDBGrid;
    DBGProdutosRGCP: TdxDBGridMaskColumn;
    DBGProdutosDGCP: TdxDBGridMaskColumn;
    DBGProdutosEEP_QTDE: TdxDBGridCurrencyColumn;
    DBGProdutosEEP_QTRL: TdxDBGridMaskColumn;
    DBGProdutosEPE_QTDE: TdxDBGridCurrencyColumn;
    DBGProdutosEPE_QTRL: TdxDBGridMaskColumn;
    DBGProdutosDEST: TdxDBGridMaskColumn;
    DBGProdutosCEAN: TdxDBGridMaskColumn;
    DBGProdutosCEANCF: TdxDBGridMaskColumn;
    DBGProdutosCDCF: TdxDBGridMaskColumn;
    PNLMovimentos: TPanel;
    GBMovimentos: TGroupBox;
    PCMOV: TdxPageControl;
    TSPR: TdxTabSheet;
    DBGPR: TdxDBGrid;
    TSPS: TdxTabSheet;
    DBGPS: TdxDBGrid;
    DBGPSPRODUTO: TdxDBGridMaskColumn;
    DBGPSQTDE: TdxDBGridCurrencyColumn;
    DBGPSQTRL: TdxDBGridMaskColumn;
    DBGPSCDET: TdxDBGridMaskColumn;
    DBGPSDESP: TdxDBGridMaskColumn;
    DBGPSDTCA: TdxDBGridDateColumn;
    DBGPSDEPS: TdxDBGridMaskColumn;
    DBGPSDTPV: TdxDBGridDateColumn;
    DBGPSCVPS: TdxDBGridMaskColumn;
    DBGPSCLPS: TdxDBGridMaskColumn;
    DBGPSCRPS: TdxDBGridMaskColumn;
    TSPP: TdxTabSheet;
    DBGPP: TdxDBGrid;
    DBGPPDGCP: TdxDBGridMaskColumn;
    DBGPPQTRL: TdxDBGridMaskColumn;
    TSCO: TdxTabSheet;
    PCCO: TdxPageControl;
    TSCOA: TdxTabSheet;
    DBGPCA: TdxDBGrid;
    DBGPCAPRODUTO: TdxDBGridMaskColumn;
    DBGPCAQTDE: TdxDBGridCurrencyColumn;
    DBGPCAQTRL: TdxDBGridMaskColumn;
    DBGPCACTNR: TdxDBGridMaskColumn;
    DBGPCADEPC: TdxDBGridMaskColumn;
    DBGPCADTCA: TdxDBGridDateColumn;
    DBGPCADTDE: TdxDBGridDateColumn;
    DBGPCADTPR: TdxDBGridDateColumn;
    DBGPCAFOPC: TdxDBGridMaskColumn;
    DBGPCACCPC: TdxDBGridMaskColumn;
    DBGPCASTFI: TdxDBGridMaskColumn;
    TSCOF: TdxTabSheet;
    DBGPCF: TdxDBGrid;
    DBGPCFPRODUTO: TdxDBGridMaskColumn;
    DBGPCFQTDE: TdxDBGridCurrencyColumn;
    DBGPCFQTRL: TdxDBGridMaskColumn;
    DBGPCFQTFI: TdxDBGridCurrencyColumn;
    DBGPCFRLFI: TdxDBGridMaskColumn;
    DBGPCFCTNR: TdxDBGridMaskColumn;
    DBGPCFDEPC: TdxDBGridMaskColumn;
    DBGPCFDTCA: TdxDBGridDateColumn;
    DBGPCFDTDE: TdxDBGridDateColumn;
    DBGPCFDTBX: TdxDBGridDateColumn;
    DBGPCFFOPC: TdxDBGridMaskColumn;
    DBGPCFCCPC: TdxDBGridMaskColumn;
    DBGPCFSTFI: TdxDBGridMaskColumn;
    TSLE: TdxTabSheet;
    LSID: TIntegerField;
    LSIDEP: TSmallintField;
    LSDERO: TIBStringField;
    LSCDRO: TIntegerField;
    LSDTEMI: TDateField;
    LSCTNR: TIBStringField;
    LSFAVORECIDO: TIBStringField;
    LSIDCP: TIntegerField;
    LSARTIGO: TIBStringField;
    LSPRODUTO: TIBStringField;
    LSDGCP: TIBStringField;
    LSCDET: TLargeintField;
    LSQTDE: TIBBCDField;
    LSQTRL: TIntegerField;
    LSUNIT: TFloatField;
    PSDGCP: TIBStringField;
    PCADGCP: TIBStringField;
    PCFDGCP: TIBStringField;
    PCFDEPC: TIBStringField;
    DBGPSDGCP: TdxDBGridMaskColumn;
    DBGPCADGCP: TdxDBGridMaskColumn;
    DBGPCFDGCP: TdxDBGridMaskColumn;
    TSRV: TdxTabSheet;
    DBGRV: TdxDBGrid;
    RV: TIBQuery;
    DTSRV: TDataSource;
    RVID: TIntegerField;
    RVIDEP: TSmallintField;
    RVDEEP: TIBStringField;
    RVIDPK: TLargeintField;
    RVIDCA: TIntegerField;
    RVDECA: TIBStringField;
    RVDTCA: TDateTimeField;
    RVCDET: TLargeintField;
    RVCTNR: TIBStringField;
    RVLOTE: TIBStringField;
    RVIDCP: TIntegerField;
    RVARTIGO: TIBStringField;
    RVSKU: TIBStringField;
    RVDECP: TIBStringField;
    RVDGCP: TIBStringField;
    RVUCOM: TIBStringField;
    RVUCON: TIBStringField;
    RVQTDE: TIBBCDField;
    RVQTRL: TIntegerField;
    RVROLO: TIBStringField;
    RVCDOP: TSmallintField;
    RVDEOP: TIBStringField;
    RVCDTP: TSmallintField;
    RVDETP: TIBStringField;
    RVCDDF: TSmallintField;
    RVDEDF: TIBStringField;
    RVINFADETQ: TIBStringField;
    RVCDPD: TIntegerField;
    RVIDDV: TSmallintField;
    RVCDDV: TLargeintField;
    RVDTDV: TDateTimeField;
    RVPK_CDET: TLargeintField;
    RVPK_DTCA: TDateTimeField;
    RVDEPV: TIBStringField;
    RVDTPV: TDateField;
    RVDECL: TIBStringField;
    RVDECV: TIBStringField;
    RVDECR: TIBStringField;
    DBGRVDEEP: TdxDBGridColumn;
    DBGRVDECA: TdxDBGridColumn;
    DBGRVDTCA: TdxDBGridColumn;
    DBGRVCDET: TdxDBGridColumn;
    DBGRVCTNR: TdxDBGridColumn;
    DBGRVSKU: TdxDBGridMaskColumn;
    DBGRVDGCP: TdxDBGridColumn;
    DBGRVROLO: TdxDBGridColumn;
    DBGRVDETP: TdxDBGridMaskColumn;
    DBGRVDEDF: TdxDBGridColumn;
    DBGRVDEPV: TdxDBGridMaskColumn;
    DBGRVDTPV: TdxDBGridDateColumn;
    DBGRVDECL: TdxDBGridMaskColumn;
    DBGRVDECV: TdxDBGridMaskColumn;
    DBGRVDECR: TdxDBGridMaskColumn;
    DBGRVQTDE: TdxDBGridColumn;
    PNLINFADETQ: TPanel;
    DBINFADETQ: TdxDBMemo;
    RVDEPK: TIBStringField;
    DBGRVDEPK: TdxDBGridColumn;
    DBGRVLOTE: TdxDBGridColumn;
    LE: TIBQuery;
    DTSLE: TDataSource;
    LSLOTE: TIBStringField;
    TSLS: TdxTabSheet;
    DBGLS: TdxDBGrid;
    DBGLSPRODUTO: TdxDBGridMaskColumn;
    DBGLSDGCP: TdxDBGridColumn;
    DBGLSQTDE: TdxDBGridMaskColumn;
    DBGLSQTRL: TdxDBGridMaskColumn;
    DBGLSCDET: TdxDBGridColumn;
    DBGLSCTNR: TdxDBGridMaskColumn;
    DBGLSLOTE: TdxDBGridMaskColumn;
    DBGLSDERO: TdxDBGridMaskColumn;
    DBGLSDTEMI: TdxDBGridDateColumn;
    DBGLSUNIT: TdxDBGridMaskColumn;
    DBGLSFAVORECIDO: TdxDBGridMaskColumn;
    TSLF: TdxTabSheet;
    DBGLF: TdxDBGrid;
    DBGLFSKU: TdxDBGridMaskColumn;
    DBGLFDGCP: TdxDBGridColumn;
    DBGLFCDET: TdxDBGridColumn;
    DBGLFQTDE: TdxDBGridColumn;
    DBGLFCDRO: TdxDBGridColumn;
    DBGLFDETP: TdxDBGridMaskColumn;
    DBGLFD_DEDF: TdxDBGridMaskColumn;
    DBGLFD_DEOP: TdxDBGridMaskColumn;
    DBGLFCTNR: TdxDBGridMaskColumn;
    DBGLFLGET: TdxDBGridMaskColumn;
    DBGLFDTET: TdxDBGridDateColumn;
    PNLLF_INFADCAD: TPanel;
    DBLF_INFDCAD: TdxDBMemo;
    PNLINFADETQLE: TPanel;
    DBINFADETQLE: TdxDBMemo;
    PNLINFADETQLS: TPanel;
    DBINFADETQLS: TdxDBMemo;
    PRID: TIntegerField;
    PRDGCP: TIBStringField;
    PRDEPK: TIBStringField;
    PRDECV: TIBStringField;
    PRDECR: TIBStringField;
    PRQTDE: TIBBCDField;
    PRQTRL: TIntegerField;
    DBGPRD_DTCA: TdxDBGridDateColumn;
    DBGPRSKU: TdxDBGridMaskColumn;
    DBGPRDGCP: TdxDBGridMaskColumn;
    DBGPRDEPK: TdxDBGridMaskColumn;
    DBGPRDECD: TdxDBGridMaskColumn;
    DBGPRDECV: TdxDBGridMaskColumn;
    DBGPRDECR: TdxDBGridMaskColumn;
    DBGPRQTDE: TdxDBGridCurrencyColumn;
    DBGPRQTRL: TdxDBGridMaskColumn;
    LSDESP: TIBStringField;
    LSDTSP: TDateTimeField;
    DBGLSDESP: TdxDBGridColumn;
    DBGLSDTSP: TdxDBGridColumn;
    ProdutosID: TIntegerField;
    ProdutosCEAN: TIBStringField;
    ProdutosCDCF: TIBStringField;
    ProdutosCEANCF: TIBStringField;
    ProdutosDGCP: TIBStringField;
    ProdutosSISTEMA: TIBStringField;
    ProdutosESCALA: TIBStringField;
    ProdutosEPE_QTDE: TIBBCDField;
    ProdutosEPE_QTRL: TIntegerField;
    ProdutosEAA_QTDE: TIBBCDField;
    ProdutosEAA_QTRL: TIntegerField;
    ProdutosEA_QTDE: TIBBCDField;
    ProdutosEA_QTRL: TIntegerField;
    ProdutosEB_QTDE: TIBBCDField;
    ProdutosEB_QTRL: TIntegerField;
    ProdutosEC_QTDE: TIBBCDField;
    ProdutosEC_QTRL: TIntegerField;
    ProdutosEPI_QTDE: TIBBCDField;
    ProdutosEPI_QTRL: TIntegerField;
    ProdutosESU_QTDE: TIBBCDField;
    ProdutosESU_QTRL: TIntegerField;
    ProdutosEPP_QTDE: TIBBCDField;
    ProdutosEPP_QTRL: TIntegerField;
    ProdutosEPR_QTDE: TIBBCDField;
    ProdutosEPR_QTRL: TIntegerField;
    ProdutosEPS_QTDE: TIBBCDField;
    ProdutosEPS_QTRL: TIntegerField;
    ProdutosECO_QTDE: TIBBCDField;
    ProdutosECO_QTRL: TIntegerField;
    ProdutosEEP_QTDE: TIBBCDField;
    ProdutosEEP_QTRL: TIntegerField;
    ProdutosECO_DECO: TIBStringField;
    ProdutosCDST: TSmallintField;
    ProdutosREST: TIBStringField;
    ProdutosDEST: TIBStringField;
    DBGProdutosREST: TdxDBGridMaskColumn;
    DBGPPSKU: TdxDBGridMaskColumn;
    ArtigosID: TIntegerField;
    ArtigosREST: TIBStringField;
    ArtigosIDAK: TLargeintField;
    ArtigosIDEP: TSmallintField;
    ArtigosDEEP: TIBStringField;
    ArtigosARTIGO: TIBStringField;
    ArtigosIDCF: TSmallintField;
    ArtigosDECP: TIBStringField;
    ArtigosDECF: TIBStringField;
    ArtigosDECOL: TIBStringField;
    ArtigosDESEG: TIBStringField;
    ArtigosDEGRP: TIBStringField;
    ArtigosDESGP: TIBStringField;
    ArtigosDECAT: TIBStringField;
    ArtigosFIN_CAD_NO: TIBStringField;
    ArtigosFIN_EST_NO: TIBStringField;
    ProdutosSKU: TIBStringField;
    ArtigosD_DESCT: TIBStringField;
    ProdutosVPRC_COM_NAC: TFloatField;
    ProdutosVPRC_COM_IMP: TFloatField;
    ProdutosVPRC_PAD: TFloatField;
    ProdutosVPRC_PAD_PRZ: TFloatField;
    ProdutosVPRC_PAD_PRO: TFloatField;
    ProdutosVPRC_ATV: TFloatField;
    ProdutosVPRC_ATV_PRZ: TFloatField;
    ProdutosVPRC_ATV_PRO: TFloatField;
    ProdutosVPRC_VAR: TFloatField;
    ProdutosVPRC_VAR_PRZ: TFloatField;
    ProdutosVPRC_VAR_PRO: TFloatField;
    ProdutosVPRC_REP: TFloatField;
    ProdutosVPRC_REP_PRZ: TFloatField;
    ProdutosVPRC_REP_PRO: TFloatField;
    ProdutosVPRC_LJV: TFloatField;
    ProdutosPMKP_LJV: TIBBCDField;
    PCAIDEP: TSmallintField;
    PCADEEP: TIBStringField;
    DBGPCADEEP: TdxDBGridMaskColumn;
    LSSEPARADOR: TIBStringField;
    DBGProdutosDTEV: TdxDBGridDateColumn;
    PRIDPK: TLargeintField;
    PRDECD: TIBStringField;
    PRITEM: TIntegerField;
    PRVPRC_COM: TFloatField;
    PRSKU: TIBStringField;
    PRIDCP: TIntegerField;
    PRIDFK: TLargeintField;
    PRDTCA: TDateTimeField;
    PRD_DTCA: TIBStringField;
    ProdutosRGCP: TIBStringField;
    LSIDAK: TLargeintField;
    PSIDAK: TLargeintField;
    PRIDAK: TLargeintField;
    LFID: TLargeintField;
    LFIDEP: TSmallintField;
    LFCDRO: TLargeintField;
    LFDTRO: TDateField;
    LFDEPD: TIBStringField;
    LFDTPD: TDateField;
    LFCDNF: TLargeintField;
    LFDTNF: TDateField;
    LFCDET: TLargeintField;
    LFCTNR: TIBStringField;
    LFLOTE: TIBStringField;
    LFCDI: TSmallintField;
    LFDETP: TIBStringField;
    LFDGCP: TIBStringField;
    LFQTDE: TIBBCDField;
    LFQTRL: TIntegerField;
    LFINFADCAD: TIBStringField;
    DBGLFDEPD: TdxDBGridMaskColumn;
    DBGLFDTPD: TdxDBGridDateColumn;
    DBGLFCDNF: TdxDBGridColumn;
    DBGLFDTNF: TdxDBGridDateColumn;
    DBGLFLOTE: TdxDBGridMaskColumn;
    LEID: TLargeintField;
    LELGCA: TIBStringField;
    LEDTCA: TDateTimeField;
    LEIDEP: TSmallintField;
    LECDRO: TLargeintField;
    LEDTRO: TDateField;
    LEDECE: TIBStringField;
    LEDEPD: TIBStringField;
    LEDTPD: TDateField;
    LECDNF: TLargeintField;
    LEDTNF: TDateField;
    LECDET: TLargeintField;
    LECTNR: TIBStringField;
    LELOTE: TIBStringField;
    LECDI: TSmallintField;
    LEDEOP: TIBStringField;
    LEDETP: TIBStringField;
    LED_SKU: TIBStringField;
    LEDGCP: TIBStringField;
    LEQTDE: TIBBCDField;
    LEQTRL: TIntegerField;
    LEDEDF: TIBStringField;
    LEINFADCAD: TIBStringField;
    DBGLE: TdxDBGrid;
    DBGLED_SKU: TdxDBGridMaskColumn;
    DBGLEDGCP: TdxDBGridColumn;
    DBGLEQTDE: TdxDBGridColumn;
    DBGLEQTRL: TdxDBGridMaskColumn;
    DBGLECDET: TdxDBGridColumn;
    DBGLECDRO: TdxDBGridColumn;
    DBGLEDTCA: TdxDBGridDateColumn;
    DBGLEDETP: TdxDBGridMaskColumn;
    DBGLEDEOP: TdxDBGridMaskColumn;
    DBGLECTNR: TdxDBGridMaskColumn;
    DBGLELOTE: TdxDBGridMaskColumn;
    DBGLEDEDF: TdxDBGridMaskColumn;
    DBGLEDECE: TdxDBGridColumn;
    DBGLELGCA: TdxDBGridMaskColumn;
    DBGLEDEPD: TdxDBGridMaskColumn;
    DBGLEDTPD: TdxDBGridDateColumn;
    DBGLECDNF: TdxDBGridColumn;
    DBGLEDTNF: TdxDBGridDateColumn;
    LEIDPK: TLargeintField;
    LEDTPK: TDateTimeField;
    LEDEPK: TIBStringField;
    DBGLEIDPK: TdxDBGridColumn;
    CAD_PRO_IMG: TIBQuery;
    DTSCAD_PRO_IMG: TDataSource;
    PNLAmostra: TPanel;
    PCAmostra: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
    EDIMG_PAD: TdxEdit;
    TSILA: TdxTabSheet;
    PNLILA_BMP: TPanel;
    BILA_BMP1: TBevel;
    BILA_BMP2: TBevel;
    BILA_BMP3: TBevel;
    BILA_BMP4: TBevel;
    BILA_BMP5: TBevel;
    BILA_BMP6: TBevel;
    BILA_BMP7: TBevel;
    BILA_BMP8: TBevel;
    DBILA_BMP1: TDBImage;
    DBILA_BMP2: TDBImage;
    DBILA_BMP3: TDBImage;
    DBILA_BMP4: TDBImage;
    DBILA_BMP5: TDBImage;
    DBILA_BMP6: TDBImage;
    DBILA_BMP7: TDBImage;
    DBILA_BMP8: TDBImage;
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
    ProdutosIDCP: TIntegerField;
    LFIDET: TSmallintField;
    LFDTET: TDateTimeField;
    LFLGET: TIBStringField;
    LFD_DEOP: TIBStringField;
    LFDECE: TIBStringField;
    LFD_DEDF: TIBStringField;
    DBGLFDECE: TdxDBGridColumn;
    PNLMAINTOP: TPanel;
    PNLCME: TPanel;
    GBArtigo: TGroupBox;
    DBGArtigos: TdxDBGrid;
    DBGArtigosARTIGO: TdxDBGridMaskColumn;
    DBGArtigosDECP: TdxDBGridMaskColumn;
    DBGArtigosDECF: TdxDBGridMaskColumn;
    DBGArtigosDEEP: TdxDBGridMaskColumn;
    DBGArtigosFIN_CAD_NO: TdxDBGridMaskColumn;
    DBGArtigosDECOL: TdxDBGridMaskColumn;
    DBGArtigosDESEG: TdxDBGridMaskColumn;
    DBGArtigosDEGRP: TdxDBGridMaskColumn;
    DBGArtigosDESGP: TdxDBGridMaskColumn;
    DBGArtigosDECAT: TdxDBGridMaskColumn;
    DBGArtigosD_DESCT: TdxDBGridMaskColumn;
    DBGArtigosFIN_EST_NO: TdxDBGridMaskColumn;
    DBGArtigosREST: TdxDBGridMaskColumn;
    PNLINFADCPL: TPanel;
    GBFicha: TGroupBox;
    DBGFicha: TdxDBGrid;
    DBGFichaNCM: TdxDBGridMaskColumn;
    DBGFichaPIPI: TdxDBGridMaskColumn;
    DBGFichaUCOM: TdxDBGridMaskColumn;
    DBGFichaUCON: TdxDBGridMaskColumn;
    DBGFichaPESO: TdxDBGridMaskColumn;
    DBGFichaPSCN: TdxDBGridMaskColumn;
    DBGFichaMETRO: TdxDBGridMaskColumn;
    DBGFichaGRAM: TdxDBGridMaskColumn;
    DBGFichaREND: TdxDBGridMaskColumn;
    DBGFichaLARU: TdxDBGridMaskColumn;
    DBGFichaLART: TdxDBGridMaskColumn;
    DBGFichaENCL: TdxDBGridMaskColumn;
    DBGFichaENCC: TdxDBGridMaskColumn;
    DBGFichaELAL: TdxDBGridMaskColumn;
    DBGFichaELAC: TdxDBGridMaskColumn;
    DBGFichaUVEN_MUL: TdxDBGridMaskColumn;
    DBGFichaUVEN_MIN: TdxDBGridMaskColumn;
    GBPRC: TGroupBox;
    DBGPRC: TdxDBGrid;
    DBGPRCVPRC_COM_NAC: TdxDBGridMaskColumn;
    DBGPRCVPRC_COM_IMP: TdxDBGridMaskColumn;
    DBGPRCVPRC_PAD: TdxDBGridMaskColumn;
    DBGPRCVPRC_PAD_PRZ: TdxDBGridMaskColumn;
    DBGPRCVPRC_PAD_PRO: TdxDBGridMaskColumn;
    DBGPRCVPRC_ATV: TdxDBGridMaskColumn;
    DBGPRCVPRC_ATV_PRZ: TdxDBGridMaskColumn;
    DBGPRCVPRC_ATV_PRO: TdxDBGridMaskColumn;
    DBGPRCVPRC_VAR: TdxDBGridMaskColumn;
    DBGPRCVPRC_VAR_PRZ: TdxDBGridMaskColumn;
    DBGPRCVPRC_VAR_PRO: TdxDBGridMaskColumn;
    DBGPRCVPRC_REP: TdxDBGridMaskColumn;
    DBGPRCVPRC_REP_PRZ: TdxDBGridMaskColumn;
    DBGPRCVPRC_REP_PRO: TdxDBGridMaskColumn;
    DBGPRCVPRC_LJV: TdxDBGridMaskColumn;
    DBGPRCPMKP_LJV: TdxDBGridMaskColumn;
    PNLINFADCAD: TPanel;
    BVInfadPed: TBevel;
    DBINFADCAD: TdxDBMemo;
    ArtigosD_ORIG: TIBStringField;
    ArtigosINFADCAD: TIBStringField;
    DBGLFCDI: TdxDBGridCheckColumn;
    LSIDCA: TSmallintField;
    LSDTCA: TDateTimeField;
    DBGPPCTNR: TdxDBGridPickColumn;
    PPID: TIntegerField;
    PPIDEP: TSmallintField;
    PPARTIGO: TIBStringField;
    PPSKU: TIBStringField;
    PPDGCP: TIBStringField;
    PPIDPK: TLargeintField;
    PPDEPK: TIBStringField;
    PPDTPK: TDateField;
    PPIDCD: TIntegerField;
    PPDECD: TIBStringField;
    PPUF: TIBStringField;
    PPIDCV: TSmallintField;
    PPDECV: TIBStringField;
    PPIDCR: TSmallintField;
    PPDECR: TIBStringField;
    PPQTDE: TIBBCDField;
    PPQTRL: TIntegerField;
    PPCTNR: TIBStringField;
    PPCTNR_QTDE: TIBBCDField;
    PPCTNR_QTRL: TIntegerField;
    PPCTNR_QTSD: TIBBCDField;
    DBGPPDEPK: TdxDBGridMaskColumn;
    DBGPPDECD: TdxDBGridMaskColumn;
    DBGPPUF: TdxDBGridMaskColumn;
    DBGPPDECV: TdxDBGridMaskColumn;
    DBGPPDECR: TdxDBGridMaskColumn;
    PPIDCA: TSmallintField;
    PPDTCA: TDateTimeField;
    PPD_DTCA: TIBStringField;
    DBGPPD_DTCA: TdxDBGridMaskColumn;
    DBGPPQTDE: TdxDBGridMaskColumn;
    DBGPPCTNR_QTDE: TdxDBGridMaskColumn;
    DBGPPCTNR_QTRL: TdxDBGridMaskColumn;
    DBGPPCTNR_QTSD: TdxDBGridMaskColumn;
    DBGLFITDF: TdxDBGridMaskColumn;
    LFSKU: TIBStringField;
    LFITDF: TIntegerField;
    ProdutosDTEV: TDateTimeField;
    LFC_QTDE: TFloatField;
    LFC_QTRL: TIntegerField;
    LFCDTP: TSmallintField;
    DBGLFC_QTDE: TdxDBGridColumn;
    ProdutosNCM: TIBStringField;
    ProdutosPIPI: TIBBCDField;
    ProdutosUCOM: TIBStringField;
    ProdutosUCON: TIBStringField;
    ProdutosPESO: TIBBCDField;
    ProdutosPSCN: TIBBCDField;
    ProdutosMETRO: TIBBCDField;
    ProdutosGRAM: TIBBCDField;
    ProdutosREND: TIBBCDField;
    ProdutosLARU: TIBBCDField;
    ProdutosLART: TIBBCDField;
    ProdutosENCL: TIBBCDField;
    ProdutosENCC: TIBBCDField;
    ProdutosELAL: TIBBCDField;
    ProdutosELAC: TIBBCDField;
    ProdutosUVEN_MUL: TSmallintField;
    ProdutosUVEN_MIN: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ArtigosAfterOpen(DataSet: TDataSet);
    procedure DBGFichaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGPosicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGProdutosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSProdutosDataChange(Sender: TObject; Field: TField);
    procedure DBGPCACustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSArtigosDataChange(Sender: TObject; Field: TField);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure DBGPCFCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSPRDataChange(Sender: TObject; Field: TField);
    procedure DTSLFDataChange(Sender: TObject; Field: TField);
    procedure DTSLSDataChange(Sender: TObject; Field: TField);
    procedure DTSPSDataChange(Sender: TObject; Field: TField);
    procedure DTSPPDataChange(Sender: TObject; Field: TField);
    procedure DTSPCADataChange(Sender: TObject; Field: TField);
    procedure DTSPCFDataChange(Sender: TObject; Field: TField);
    procedure ACTArmarinhosExecute(Sender: TObject);
    procedure ACTProduto_EstoqueExecute(Sender: TObject);
    procedure ACTProduto_Estoque_EtiquetaExecute(Sender: TObject);
    procedure ACTProduto_Ficha_TecnicaExecute(Sender: TObject);
    procedure ACTAtivoExecute(Sender: TObject);
    procedure ACTInativoExecute(Sender: TObject);
    procedure ACTPreCadastroExecute(Sender: TObject);
    procedure DBGArtigosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ArtigosAfterClose(DataSet: TDataSet);
    procedure TSLEShow(Sender: TObject);
    procedure DTSRVDataChange(Sender: TObject; Field: TField);
    procedure DBGRVCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ArtigosBeforeScroll(DataSet: TDataSet);
    procedure ProdutosAfterScroll(DataSet: TDataSet);
    procedure LSAfterScroll(DataSet: TDataSet);
    procedure DTSLEDataChange(Sender: TObject; Field: TField);
    procedure TSLFShow(Sender: TObject);
    procedure TSLSShow(Sender: TObject);
    procedure DBGLFCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGLECustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGPRCCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ProdutosAfterClose(DataSet: TDataSet);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure ArtigosBeforeOpen(DataSet: TDataSet);
    procedure ProdutosAfterOpen(DataSet: TDataSet);
    procedure LFAfterOpen(DataSet: TDataSet);
    procedure LEAfterOpen(DataSet: TDataSet);
    procedure LSAfterOpen(DataSet: TDataSet);
    procedure PRAfterOpen(DataSet: TDataSet);
    procedure PSAfterOpen(DataSet: TDataSet);
    procedure PPAfterOpen(DataSet: TDataSet);
    procedure PCAAfterOpen(DataSet: TDataSet);
    procedure PCFAfterOpen(DataSet: TDataSet);
    procedure DBGPPCTNRCloseUp(Sender: TObject; var Value: Variant;
      var Accept: Boolean);
    procedure PPAfterScroll(DataSet: TDataSet);
    procedure DBGPPCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure LFBeforeOpen(DataSet: TDataSet);
    procedure LFAfterScroll(DataSet: TDataSet);
    procedure ACTEAppendExecute(Sender: TObject);
    procedure ACTEEditExecute(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure EEventAdminEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure LFCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    APSQ_DG: String;

    procedure _Pesquisa;
    procedure _Relatorios(ANome: String);
  public
    { Public declarations }
    procedure _WM_AFTER_ACTIVATE(var Msg: TMessage); message WM_AFTER_ACTIVATE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;
  end;

var
  FrmProduto: TFrmProduto;

implementation

uses uPrincipal, bPrincipal

  {$IF NOT DEFINED(DEF_PCP)}
     ,qFicha_Tecnica, pCAD_PRO_EDI, pRelatorios_OLD
  {$IFEND}
  ;

{$R *.dfm}

procedure TFrmProduto._WM_AFTER_ACTIVATE(var Msg: TMessage);
begin
  inherited;

  { Focused }
  if (BEPesquisa.Visible <> ivNever) and (_FormPesquisa) then
  BEPesquisa.SetFocus(False);

  _Pesquisa;
end;

procedure TFrmProduto._WM_AFTER_RESIZE(var Message: TMessage);
begin
  inherited;

  { Focused }
  if (BEPesquisa.Visible <> ivNever) then
      BEPesquisa.SetFocus(False);
end;

procedure TFrmProduto.FormCreate(Sender: TObject);
var
  REC_SHE_DEF_ETQ: TREC_SHE_DEF;
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  DBGProdutosEPE_QTRL.Visible := (RECParametros.EST_QTRL);
  DBGProdutosEEP_QTRL.Visible := (RECParametros.EST_QTRL);

  DBGPRQTRL.Visible := (RECParametros.EST_QTRL);
  DBGPSQTRL.Visible := (RECParametros.EST_QTRL);
  DBGPPQTRL.Visible := (RECParametros.EST_QTRL);
  DBGLSQTRL.Visible := (RECParametros.EST_QTRL);
  DBGLEQTRL.Visible := (RECParametros.EST_QTRL);

  TSLF.TabVisible  := (RECParametros.EST_QTRL);
  PCMOV.ActivePage := TSPR;
  PCCO.ActivePage  := TSCOA;
  ACTEEdit.Enabled := True;

  { GRANT ETIQUETAS }
  REC_SHE_DEF_ETQ.GDescricao  := 'Produtos';
  REC_SHE_DEF_ETQ.GReferencia := 'Cadastro';
  REC_SHE_DEF_ETQ.GRegra      := 'Visualizar Etiquetas';
  REC_SHE_DEF_ETQ.GAdmin      := False;
  oUSER(REC_SHE_DEF_ETQ);

  DBGLF.Bands[1].Visible := REC_SHE_DEF_ETQ.GView;
  DBGLECDET.Visible      := REC_SHE_DEF_ETQ.GView;
  DBGLSCDET.Visible      := REC_SHE_DEF_ETQ.GView;
end;

procedure TFrmProduto.BEPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    ActiveControl := Nil;

    REC_SHE_DEF.FB_VD_ED_PK  := TRIM(BEPesquisa.Text);
    REC_SHE_DEF.FB_PSQ_WHERE := 'LIKE';
    REC_SHE_DEF.FB_PSQ_LKPK  := '' ;
    REC_SHE_DEF.FB_PSQ_LKFK  := '%' ;
    REC_SHE_DEF.FB_PSQ_CPL   := 'TODOS';

    if ((Length(REC_SHE_DEF.FB_VD_ED_PK) <= 2) or (Pos('.',REC_SHE_DEF.FB_VD_ED_PK) > 0)) then
       REC_SHE_DEF.FB_FD_ED_PK := 'ARTIGO'
    else
       REC_SHE_DEF.FB_PSQ_WHERE := 'CONTAINING';

    if not oEmpty(BEPesquisa.Text) then
       _Pesquisa;
  end;
end;

procedure TFrmProduto._Pesquisa;
var
  APSQ_SL: TStringList;
  APSQ_VL,
  APSQ_FD: String;

  i: Word;
begin
  if not TConsulta.InTransaction then
     oOTransact(TConsulta);

  { String List de Pesquisa }
  APSQ_SL := TStringList.Create;
  APSQ_SL.Clear;

  if REC_SHE_DEF.FB_VD_ED_PK <> EmptyStr then
  try
    APSQ_DG := EmptyStr; { Grade }
    APSQ_FD := EmptyStr; { Campo }
    APSQ_VL := REC_SHE_DEF.FB_VD_ED_PK; { Texto Pesquisa }

    if (APSQ_VL <> EmptyStr) and (APSQ_VL <> '0') then
    begin
      { Capturar as palavras separadamente }
      While Length(APSQ_VL) > 0 do
      begin
        APSQ_FD := Fetch(APSQ_VL,' ');

        if Length(APSQ_FD) > 0 then
           APSQ_SL.Add(Trim(APSQ_FD));
      end;

      { Captura grade indicada na segunda posição }
      if APSQ_SL.Count > 0 then
      begin
        for i := 0 to APSQ_SL.Count - 1 do
        begin
          APSQ_DG := APSQ_DG + APSQ_SL.Strings[i] + ' ';

          with SQLConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM TAB_COR WHERE DESCRICAO CONTAINING ''' + Trim(APSQ_SL.Strings[i]) + '''');
            ExecQuery;

            if Eof then
               APSQ_DG := oStrTran(APSQ_DG,APSQ_SL.Strings[i],'') + ' ';
          end;
        end;
        APSQ_DG := Trim(APSQ_DG);

        { Retira as cores individuais da pesquisa }
        if APSQ_DG <> EmptyStr then
        begin
          for i := APSQ_SL.Count - 1 downto 0 do
              if Pos(APSQ_SL.Strings[i],APSQ_DG) > 0 then
                 APSQ_SL.Delete(i);

          APSQ_SL.Add(APSQ_DG);
        end;
      end;
    end;

    with Artigos do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(CP.ID)   AS ID  ,CP.IDEP,CP.DEEP,');
      SQL.Add('       MIN(CP.REST) AS REST,');
      SQL.Add('       CP.ARTIGO    ,CP.DECP,CP.IDAK,');
      SQL.Add('       CP.IDCF      ,CP.DECF,');
      SQL.Add('       CP.DECOL     ,CP.DESEG,CP.DEGRP,CP.DESGP,CP.DECAT,CP.D_DESCT,');
      SQL.Add('       CP.FIN_CAD_NO,CP.FIN_EST_NO,');
      SQL.Add('       CP.D_ORIG || ASCII_CHAR(13) ||ASCII_CHAR(10) AS D_ORIG,');
      SQL.Add('       NULLIF(TRIM(CAST(');
      SQL.Add('       TRIM(COALESCE(CP.CMP_PAD ,'''')) || IIF(NOT FEMPTY(CP.CMP_PAD),ASCII_CHAR(13) || ASCII_CHAR(10),'''') ||');
      SQL.Add('       TRIM(COALESCE(CP.INFADCAD,'''')) AS VARCHAR(1064))),'''') AS INFADCAD');

      SQL.Add('FROM VW_CAD_PRO AS CP');

      if APSQ_SL.Count = 0 then
         SQL.Add('WHERE CP.ID = 0') else

      for i := 0 to APSQ_SL.Count - 1 do
      begin
        SQL.Add(IFThen(Pos('WHERE',Artigos.SQL.Text) = 0,'WHERE','AND'));

        { Pesquisa Artigo \ SKU }
        if (i = 0) and (Pos('.',APSQ_SL.Strings[i]) > 0) then
        SQL.Add('CP.SKU  LIKE ''' + APSQ_SL.Strings[i] + '%''') else

        { Pesquisa Grade }
        if APSQ_SL.Strings[i] = APSQ_DG then
        SQL.Add('CP.DGCP LIKE '''         + APSQ_SL.Strings[i] + '%''') else

        { Pesquisa Genérica }
        SQL.Add('CP.FT_KEY CONTAINING ''' + APSQ_SL.Strings[i] + '''' );
      end;

      if ACTAtivo.Tag       = 1 then SQL.Add('AND CP.CDST = 030');
      if ACTInativo.Tag     = 1 then SQL.Add('AND CP.CDST = 085');
      if ACTPreCadastro.Tag = 1 then SQL.Add('AND CP.CDST = 123');

      SQL.Add('GROUP BY IDEP      ,DEEP,');
      SQL.Add('         ARTIGO    ,DECP,IDAK,NCM,PIPI,');
      SQL.Add('         IDCF      ,DECF,');
      SQL.Add('         UCOM      ,UCOM_LJV  ,UTRIB,UCON ,UVEN_MIN,UVEN_MUL,');
      SQL.Add('         PESO      ,PSCN      ,METRO,REND ,GRAM    ,');
      SQL.Add('         LARU      ,LART      ,ELAL ,ELAC ,ENCL    ,ENCC,');
      SQL.Add('         DECOL     ,DESEG     ,DEGRP,DESGP,DECAT   ,D_DESCT,');
      SQL.Add('         FIN_CAD_NO,FIN_EST_NO,');
      SQL.Add('         D_ORIG    ,INFADCAD');
      SQL.Add('ORDER BY ARTIGO');

      Open; Tag := 0;
    end;
  finally
    { Libera Objetos }
    APSQ_SL.Free;

    { Limpa Filtros }
    DBGArtigos.Filter.Clear;  { Artigos  }
    DBGProdutos.Filter.Clear; { Produtos }

    DBGPR.Filter.Clear; { Reservados }
    DBGPS.Filter.Clear; { Separados }
    DBGPP.Filter.Clear; { Programados }

    DBGLF.Filter.Clear; { Físico }
    DBGLE.Filter.Clear; { Entradas }
    DBGLS.Filter.Clear; { Saídas }

    DBGPCA.Filter.Clear; { Compras Aberto  }
    DBGPCF.Filter.Clear; { Compras Fechado }

    DBGRV.Filter.Clear; { Revisados }

    if (REC_SHE_DEF.FB_VD_ED_PK = '0') or (Artigos.RecNo = 0) then
        BEPesquisa.SetFocus(False) else
    if Produtos.RecNo > 0 then
    begin
      PostMessage(DBGProdutos.Handle, WM_SETFOCUS, 0, 0);
      DBGProdutos.SetFocus;
    end;
  end;  
end;

procedure TFrmProduto.DBGProdutosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGProdutosREST.Index] = 'PRÉ' then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end else
    if ANode.Values[DBGProdutosREST.Index] = 'I' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if LeftStr(ANode.Values[DBGProdutosREST.Index],1) = 'F' then
    begin
      AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
      AFont.Color := clWindowText;
    end else
    begin
      if (AColumn = DBGProdutosEPE_QTDE) or (AColumn = DBGProdutosEPE_QTRL) then
      begin
        AColor      := $00B9FFB9;
        AFont.Color := clBlack;

        if ANode.Values[DBGProdutosEPE_QTDE.Index] < 0 then
        begin
          AColor      := $000024B3;
          AFont.Color := clWhite;
        end;

        if ANode.Values[DBGProdutosEPE_QTDE.Index] <> 0 then
           AFont.Style := [fsBold];
      end;

      if (AColumn = DBGProdutosEEP_QTDE) or (AColumn = DBGProdutosEEP_QTRL) then
      begin
        AColor      := $009FFF9F;
        AFont.Color := clBlack;

        if ANode.Values[DBGProdutosEEP_QTDE.Index] < 0 then
        begin
          AColor      := $000024B3;
          AFont.Color := clWhite;
        end;

        if ANode.Values[DBGProdutosEEP_QTDE.Index] <> 0 then
           AFont.Style := [fsBold];
      end;
    end;
  end;
end;

procedure TFrmProduto.DBGPosicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ((AColumn = DBGPosicaoEA_QTDE) or (AColumn = DBGPosicaoEA_QTRL)) then
         if not oEmpty(ANode.Values[DBGPosicaoEA_QTDE.Index]) then
         begin
           AColor      := clInfoBk;
           AFont.Color := clBlack;
           AFont.Style := [fsBold];
         end;

    if ((AColumn = DBGPosicaoEB_QTDE) or (AColumn = DBGPosicaoEB_QTRL)) then
         if not oEmpty(ANode.Values[DBGPosicaoEB_QTDE.Index]) then
         begin
           AColor      := $000024B3;
           AFont.Color := clWhite;
           AFont.Style := [fsBold];
         end;

    if ((AColumn = DBGPosicaoEC_QTDE) or (AColumn = DBGPosicaoEC_QTRL)) then
         if not oEmpty(ANode.Values[DBGPosicaoEC_QTDE.Index]) then
         begin
           AColor      := clRed;
           AFont.Color := clWhite;
           AFont.Style := [fsBold];
         end;

    if ((AColumn = DBGPosicaoEPI_QTDE) or (AColumn = DBGPosicaoEPI_QTRL)) then
         if not oEmpty(ANode.Values[DBGPosicaoEPI_QTDE.Index]) then
         begin
           AColor      := $00E1AD40;
           AFont.Color := clWhite;
           AFont.Style := [fsBold];
         end;
  end;
end;

procedure TFrmProduto.DTSProdutosDataChange(Sender: TObject; Field: TField);
begin
  DBGProdutos.ApplyBestFit(DBGProdutosRGCP);
  DBGProdutos.ApplyBestFit(DBGProdutosDGCP);
end;

procedure TFrmProduto.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  EDIMG_PAD.Text  := _oLoadJPG(CAD_PRO_IMGIMG_ID,CAD_PRO_IMGIMG_PAD,IMG_PAD,True);

  DBILA_BMP1.Hint := CAD_PRO_IMGILA_INS1.AsString;
  DBILA_BMP2.Hint := CAD_PRO_IMGILA_INS2.AsString;
  DBILA_BMP3.Hint := CAD_PRO_IMGILA_INS3.AsString;
  DBILA_BMP4.Hint := CAD_PRO_IMGILA_INS4.AsString;
  DBILA_BMP5.Hint := CAD_PRO_IMGILA_INS5.AsString;
  DBILA_BMP6.Hint := CAD_PRO_IMGILA_INS6.AsString;
  DBILA_BMP7.Hint := CAD_PRO_IMGILA_INS7.AsString;
  DBILA_BMP8.Hint := CAD_PRO_IMGILA_INS8.AsString;

  BILA_BMP1.Hint  := DBILA_BMP1.Hint;
  BILA_BMP2.Hint  := DBILA_BMP2.Hint;
  BILA_BMP3.Hint  := DBILA_BMP3.Hint;
  BILA_BMP4.Hint  := DBILA_BMP4.Hint;
  BILA_BMP5.Hint  := DBILA_BMP5.Hint;
  BILA_BMP6.Hint  := DBILA_BMP6.Hint;
  BILA_BMP7.Hint  := DBILA_BMP7.Hint;
  BILA_BMP8.Hint  := DBILA_BMP8.Hint;
end;

procedure TFrmProduto.DBGPCACustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ((AColumn = DBGPCAQTDE) or (AColumn = DBGPCAQTRL) or (AColumn = DBGPCACTNR)) then
    begin
      AFont.Color := clBlack;
      AColor      := $0080FFFF;
    end;
  end;
end;

procedure TFrmProduto.DBGPCFCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ((AColumn = DBGPCFQTDE) or (AColumn = DBGPCFQTRL)) then
    begin
      AFont.Color := clBlack;
      AColor      := $0080FFFF;
    end;

    if ((AColumn = DBGPCFQTFI) or (AColumn = DBGPCFRLFI) or (AColumn = DBGPCFCTNR)) then
    begin
      AFont.Color := clBlack;
      AColor      := $00B9FFB9;
    end
  end;
end;


procedure TFrmProduto.DTSArtigosDataChange(Sender: TObject; Field: TField);
begin
  DBGPPCTNR.Items.Clear;
  DBGPPCTNR.Items.Add('');

  if RECParametros.EP_ID = 1 then
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.CTNR,PK.SKU,FTIMESTAMP(MAX(PK.DTCA)) AS DTCA,FFMTINT(SUM(PK.QTDE)) AS QTDE,SUM(PK.QTDE)');
    SQL.Add('FROM (');
    SQL.Add('SELECT   PK.CTNR,CP.SKU,MAX(PK.DTCA) AS DTCA,SUM(PK.QTDE) AS QTDE');
    SQL.Add('FROM     CAD_PRO_ENI AS PK');
    SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('WHERE    PK.IDEP   = ''' + RECParametros.EP_ID       + '''');
    SQL.Add('AND      CP.ARTIGO = ''' + ArtigosARTIGO.AsString + '''');
    SQL.Add('AND      PK.REST   = ''E''');
    SQL.Add('GROUP BY 1,2');
    SQL.Add('UNION');
    SQL.Add('SELECT   PK.CTNR,CP.SKU,MIN(PK.DTCA) AS DTCA,SUM(PK.QTDE * -1) AS QTDE');
    SQL.Add('FROM     CAD_PRO_PRG AS PK');
    SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('WHERE    PK.IDEP   = ''' + RECParametros.EP_ID       + '''');
    SQL.Add('AND      CP.ARTIGO = ''' + ArtigosARTIGO.AsString + '''');
    SQL.Add('AND      PK.CTNR IS NOT NULL');
    SQL.Add('GROUP BY 1,2 ) AS PK');
    SQL.Add('GROUP BY 1,2');
    ExecQuery;
    
    while not SQLConsulta.Eof do
    begin
      if Current.Vars[0].AsString <> EmptyStr then
         DBGPPCTNR.Items.Add(TRIM(SQLConsulta.Current.Vars[0].AsString + ' | ' + SQLConsulta.Current.Vars[1].AsString + ' | Revisado: ' + SQLConsulta.Current.Vars[3].AsString + ' em ' + SQLConsulta.Current.Vars[2].AsString));

      SQLConsulta.Next;
    end;

  end;

  PNLINFADCAD.Height := IFThen(DBINFADCAD.Lines.Count = 0,00,
                        IFThen(DBINFADCAD.Lines.Count = 1,35,
                        IFThen(DBINFADCAD.Lines.Count = 2,40,
                        IFThen(DBINFADCAD.Lines.Count = 3,55,
                        IFThen(DBINFADCAD.Lines.Count = 4,65,75)))));
end;

procedure TFrmProduto.DBGArtigosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if ANode.Values[DBGArtigosREST.Index] = 'PRÉ' then
     begin
       AFont.Color := clBlack;
       AColor      := clInfoBk;
     end else
     if ANode.Values[DBGArtigosREST.Index] = 'I' then
     begin
       AFont.Color := clWhite;
       AColor      := $000024B3;
     end;
end;

procedure TFrmProduto.DBGPRCCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGPRCVPRC_COM_NAC)  and (ANode.Values[DBGPRCVPRC_COM_NAC.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGPRCVPRC_COM_IMP)  and (ANode.Values[DBGPRCVPRC_COM_IMP.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGPRCVPRC_PAD)     and (ANode.Values[DBGPRCVPRC_PAD.Index]     > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGPRCVPRC_PAD_PRZ) and (ANode.Values[DBGPRCVPRC_PAD_PRZ.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_PAD_PRO) and (ANode.Values[DBGPRCVPRC_PAD_PRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGPRCVPRC_ATV)     and (ANode.Values[DBGPRCVPRC_ATV.Index]     > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_ATV_PRZ) and (ANode.Values[DBGPRCVPRC_ATV_PRZ.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_ATV_PRO) and (ANode.Values[DBGPRCVPRC_ATV_PRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGPRCVPRC_VAR)     and (ANode.Values[DBGPRCVPRC_VAR.Index]     > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_VAR_PRZ) and (ANode.Values[DBGPRCVPRC_VAR_PRZ.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_VAR_PRO) and (ANode.Values[DBGPRCVPRC_VAR_PRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGPRCVPRC_REP)     and (ANode.Values[DBGPRCVPRC_REP.Index]     > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_REP_PRZ) and (ANode.Values[DBGPRCVPRC_REP_PRZ.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCVPRC_REP_PRO) and (ANode.Values[DBGPRCVPRC_REP_PRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGPRCVPRC_LJV)  and (ANode.Values[DBGPRCVPRC_LJV.Index] > 0) then
        AFont.Style := [fsBold];
    if (AColumn = DBGPRCPMKP_LJV)  and (ANode.Values[DBGPRCPMKP_LJV.Index] > 0) then
        AFont.Style := [fsBold];
  end;
end;

procedure TFrmProduto.DBGFichaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGFichaPIPI)  and (ANode.Values[DBGFichaPIPI.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;
    
    if (AColumn = DBGFichaPESO) and (ANode.Values[DBGFichaPESO.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGFichaMETRO) and (ANode.Values[DBGFichaMETRO.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaGRAM) and (ANode.Values[DBGFichaGRAM.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaREND) and (ANode.Values[DBGFichaREND.Index] > 0) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;  

    if (AColumn = DBGFichaLARU) and (ANode.Values[DBGFichaLARU.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaLART) and (ANode.Values[DBGFichaLART.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaENCL) and (ANode.Values[DBGFichaENCL.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaENCC) and (ANode.Values[DBGFichaENCC.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaELAL) and (ANode.Values[DBGFichaELAL.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaELAC) and (ANode.Values[DBGFichaELAC.Index] > 0) then
        AFont.Style := [fsBold];

    if (AColumn = DBGFichaUVEN_MUL)  and (ANode.Values[DBGFichaUVEN_MUL.Index] > 1) then
        AFont.Style := [fsBold];
        
    if (AColumn = DBGFichaUVEN_MIN)  and (ANode.Values[DBGFichaUVEN_MIN.Index] > 1) then
        AFont.Style := [fsBold];
  end;
end;

procedure TFrmProduto._Relatorios(ANome: String);
begin
  {$IF NOT DEFINED(DEF_PCP)}

  FrmRelatorios_OLD := TFrmRelatorios_OLD.Create(Nil,ANome,1);
  if ArtigosArtigo.AsString <> EmptyStr then
     FrmRelatorios_OLD.PEC1Consulta.Text := ArtigosArtigo.AsString;

  Try     FrmRelatorios_OLD.ShowModal;
  Finally FreeAndNil(FrmRelatorios_OLD);
  End;

  {$IFEND}
end;

procedure TFrmProduto.ACTRelatoriosExecute(Sender: TObject);
begin
  {$IF NOT DEFINED(DEF_PCP)}

  _Relatorios('Estoque de Produtos');

  {$IFEND}
end;

procedure TFrmProduto.ACTProduto_EstoqueExecute(Sender: TObject);
begin
  {$IF NOT DEFINED(DEF_PCP)}

  _Relatorios('Estoque de Produtos');

  {$IFEND}
end;

procedure TFrmProduto.ACTProduto_Estoque_EtiquetaExecute(Sender: TObject);
begin
  {$IF NOT DEFINED(DEF_PCP)}

  _Relatorios('Estoque de Produtos Etiquetados');

  {$IFEND}
end;

procedure TFrmProduto.ACTProduto_Ficha_TecnicaExecute(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  {$IF NOT DEFINED(DEF_PCP)}

  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

  RECRelatorios.PrintTAG := 0;
  RECRelatorios.Handle   := Self.Handle;

  RECRelatorios.PEC1CodigoText    := 'TODOS';
  RECRelatorios.PEC2CodigoText    := 'TODOS';
  RECRelatorios.IEC1ConsultaField := 'CP.ARTIGO';
  RECRelatorios.PEC1ConsultaText  := ArtigosArtigo.AsString;
  RECRelatorios.IEC1ConsultaWhere := '=';
  RECRelatorios.PEC2ConsultaText  := 'TODOS';
  RECRelatorios.PEC3ConsultaText  := 'TODOS';
  RECRelatorios.PEC4ConsultaText  := 'TODOS';
  RECRelatorios.IEDataField       := '';

  if qrpFicha_Tecnica = Nil then
  begin
    qrpFicha_Tecnica := TqrpFicha_Tecnica.Create(Self,RECRelatorios);
    qrpFicha_Tecnica.WinControlFormCreate(qrpFicha_Tecnica);
  end;

  {$IFEND}
end;

procedure TFrmProduto.ACTEAppendExecute(Sender: TObject);
begin
  {$IF NOT DEFINED(DEF_PCP)}

  inherited;
  FrmCAD_PRO_EDI := TFrmCAD_PRO_EDI.Create(Nil);
  FrmCAD_PRO_EDI.ShowModal;

  {$IFEND}
end;

procedure TFrmProduto.ACTEEditExecute(Sender: TObject);
begin
  {$IF NOT DEFINED(DEF_PCP)}

  inherited;
  FrmCAD_PRO_EDI := TFrmCAD_PRO_EDI.Create(Nil,ArtigosIDAK.AsInteger);
  FrmCAD_PRO_EDI.ShowModal;

  {$IFEND}
end;

procedure TFrmProduto.DTSPRDataChange(Sender: TObject; Field: TField);
begin
  { Colunas }
  DBGPR.ApplyBestFit(DBGPRSKU   );
  DBGPR.ApplyBestFit(DBGPRDGCP  );
  DBGPR.ApplyBestFit(DBGPRD_DTCA);
  DBGPR.ApplyBestFit(DBGPRDEPK  );
  DBGPR.ApplyBestFit(DBGPRDECD  );
  DBGPR.ApplyBestFit(DBGPRDECR  );
end;

procedure TFrmProduto.DTSPSDataChange(Sender: TObject; Field: TField);
begin
  { Colunas }
  DBGPS.ApplyBestFit(DBGPSPRODUTO);
  DBGPS.ApplyBestFit(DBGPSDGCP   );
  DBGPS.ApplyBestFit(DBGPSCLPS   );
  DBGPS.ApplyBestFit(DBGPSCDET   );
end;

procedure TFrmProduto.DTSPPDataChange(Sender: TObject; Field: TField);
begin
  { Colunas }
  DBGPP.ApplyBestFit(DBGPPSKU );
  DBGPP.ApplyBestFit(DBGPPDGCP);
  DBGPP.ApplyBestFit(DBGPPDECR);
end;

procedure TFrmProduto.DTSPCADataChange(Sender: TObject; Field: TField);
begin
  { Colunas }
  DBGPCA.ApplyBestFit(DBGPCAPRODUTO);
  DBGPCA.ApplyBestFit(DBGPCADGCP   );
end;

procedure TFrmProduto.DTSPCFDataChange(Sender: TObject; Field: TField);
begin
  { Colunas }
  DBGPCF.ApplyBestFit(DBGPCFPRODUTO);
  DBGPCF.ApplyBestFit(DBGPCFDGCP   );
end;

procedure TFrmProduto.LFBeforeOpen(DataSet: TDataSet);
begin
  DBGLFCTNR.Visible   := False;
  DBGLFLOTE.Visible   := False;
  DBGLFD_DEDF.Visible := False;
  DBGLFDEPD.Visible   := False;
  DBGLFDTPD.Visible   := False;
  DBGLFCDNF.Visible   := False;
  DBGLFDTNF.Visible   := False;
  DBGLFDECE.Visible   := False;
  DBGLFCDI.Visible    := False;
end;

procedure TFrmProduto.DTSLFDataChange(Sender: TObject; Field: TField);
var
  PosCount: Word;
begin
  { Lote }
  DBGLFLOTE.Visible := (LFLOTE.AsString <> EmptyStr);

  { Pedido }
  if LFDEPD.AsString <> EmptyStr then
  begin
    DBGLFDEPD.Visible := True;
    DBGLFDTPD.Visible := True;
  end;

  { Nota Fiscal }
  if LFCDNF.AsInteger > 0 then
  begin
    DBGLFCDNF.Visible := True;
    DBGLFDTNF.Visible := True;
  end;

  { Emitente }
  if LFDECE.AsString <> EmptyStr then
     DBGLFDECE.Visible := True;

  { CDI }
  if LFCDI.AsString <> EmptyStr then
     DBGLFCDI.Visible := True;

  { Colunas }
  DBGLF.ApplyBestFit(DBGLFSKU );
  DBGLF.ApplyBestFit(DBGLFDGCP);
  DBGLF.ApplyBestFit(DBGLFDETP);

  { Informações Adicionais }
               PosCount := oPosCount(''#$D'',LFINFADCAD.AsString);
  PNLLF_INFADCAD.Height := IFThen((PosCount = 0) and (LFINFADCAD.AsString =  EmptyStr) ,00,
                           IFThen((PosCount = 0) and (LFINFADCAD.AsString <> EmptyStr) ,30,
                           IFThen((PosCount = 1),040,
                           IFThen((PosCount = 2),055,
                           IFThen((PosCount = 3),075,
                           IFThen((PosCount = 4),090,
                           IFThen((PosCount = 5),105,
                           IFThen((PosCount = 6),130,
                           IFThen((PosCount = 7),145,
                           IFThen((PosCount = 8),160,180))))))))));
end;

procedure TFrmProduto.DTSLEDataChange(Sender: TObject; Field: TField);
begin
  { Colunas }
  DBGLE.ApplyBestFit(DBGLED_SKU);
  DBGLE.ApplyBestFit(DBGLEDGCP );
  DBGLE.ApplyBestFit(DBGLEDEDF );

  PNLINFADETQLE.Height := IFThen(DBINFADETQLE.Lines.Count = 0,00,
                          IFThen(DBINFADETQLE.Lines.Count = 1,25,
                          IFThen(DBINFADETQLE.Lines.Count = 2,40,
                          IFThen(DBINFADETQLE.Lines.Count = 3,55,
                          IFThen(DBINFADETQLE.Lines.Count = 4,65,
                          IFThen(DBINFADETQLE.Lines.Count = 5,80,
                          IFThen(DBINFADETQLE.Lines.Count = 6,90,
                          IFThen(DBINFADETQLE.Lines.Count = 7,110,130))))))));

  DBGLEDEOP.Visible := (not oEmpty(LEDEOP.AsString)) and (LEDEOP.AsString <> RECParametros.EST_DEOPERACAO);
  DBGLEDETP.Visible := (not oEmpty(LEDETP.AsString)) and (LEDETP.AsString <> RECParametros.EST_DETIPO    );
end;

procedure TFrmProduto.DTSLSDataChange(Sender: TObject; Field: TField);
begin
  { Colunas }
  DBGLS.ApplyBestFit(DBGLSPRODUTO);
  DBGLS.ApplyBestFit(DBGLSDGCP   );
  DBGLS.ApplyBestFit(DBGLSCDET   );

  DBGLS.Bands[1].Visible := (LSCDET.AsInteger > 0);
  DBGLSLOTE.Visible      := (LSLOTE.AsString <> EmptyStr);
  DBGLSDESP.Visible      := (LSDESP.AsString <> EmptyStr);
  DBGLSDTSP.Visible      := (LSDESP.AsString <> EmptyStr);
end;

procedure TFrmProduto.DBGLFCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGLFDETP) or (AColumn = DBGLFLOTE) or (AColumn = DBGLFD_DEDF) then
    if ANode.Values[DBGLFDETP.Index] = '1º QUALIDADE A' then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end else
    if ANode.Values[DBGLFDETP.Index] = '1º QUALIDADE B' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGLFDETP.Index] = '2º QUALIDADE C' then
    begin
      AColor      := clRed;
      AFont.Color := clWhite;
    end else
    if ANode.Values[DBGLFDETP.Index] = 'PILOTAGEM' then
    begin
      AColor      := $00E1AD40;
      AFont.Color := clWhite;
    end;

    if (AColumn = DBGLFCDI) and (ANode.Values[DBGLFCDI.Index] = 1)  then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TFrmProduto.DBGLECustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (((AColumn = DBGLEDETP) or (AColumn = DBGLELOTE)  or (AColumn = DBGLEDEDF)) and (ANode.Values[DBGLEDETP.Index] = '1º QUALIDADE A')) then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
      AFont.Style := [fsBold];
    end;

    if (((AColumn = DBGLEDETP) or (AColumn = DBGLELOTE)  or (AColumn = DBGLEDEDF)) and (ANode.Values[DBGLEDETP.Index] = '1º QUALIDADE B')) then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;

    if (((AColumn = DBGLEDETP) or (AColumn = DBGLELOTE)  or (AColumn = DBGLEDEDF)) and (ANode.Values[DBGLEDETP.Index] = '2º QUALIDADE C')) then
    begin
      AColor      := clRed;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;

    if (((AColumn = DBGLEDETP) or (AColumn = DBGLELOTE)  or (AColumn = DBGLEDEDF)) and (ANode.Values[DBGLEDETP.Index] = 'PILOTAGEM')) then
    begin
      AColor      := $00E1AD40;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;
  end;
end;

procedure TFrmProduto.ACTArmarinhosExecute(Sender: TObject);
begin
  {if oYesNo(handle,'Confirma atualização ?') = mrNo then
     Abort;

  if oEmpty(ArtigosArtigo.AsString) then
     oException(DBGConsulta,'Artigo para atualização não informado !');

  with FBird do
  try
    EArmarin.Connected := True;
    EArmarin.Open;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,ARTIGO,PRODUTO,PRO_TITU,EPE_QTDE,');
      SQL.Add('       CAST(VUSITE AS DECIMAL(15,2)) AS VUSITE');
      SQL.Add('FROM   SP_CAD_PRO_PSQ(0,'''+ArtigosArtigo.AsString+''')');
      ExecQuery;

      if Eof then
         oException(DBGConsulta,'Artigo não Encontrado !');
    end;

    try
      while not SQLConsulta.Eof do
      begin
        with SQLEArmarin do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE scj6BObky_posts');
          SQL.Add('SET    post_title = '''+oStrToUTF8(SQLConsulta.Current.ByName('PRO_TITU').AsString)+'''');
          SQL.Add('WHERE  id         = '''+SQLConsulta.Current.ByName('ID').AsString+'''');
          SQL.Add('AND    post_type  = ''product''');
          ExecSQL;
        end;

        with SQLEArmarin do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE scj6BObky_wc_product_meta_lookup');
          SQL.Add('SET    stock_quantity = '''+oStrTran(SQLConsulta.Current.ByName('EPE_QTDE').AsString,',','.')+''',');
          SQL.Add('       stock_status   = REPLACE(stock_status  ,'instock','outofstock')	,
          SQL.Add('       min_price      = REPLACE(min_price     ,'9.19','8.88'),
          SQL.Add('       max_price      = REPLACE(max_price     ,'9.19','8.88')
          SQL.Add('WHERE  PRODUCT_ID = '55341'

          ExecSQL;
        end;

        SQLConsulta.Next;
      end;
      oAviso(Application.Handle,'Base de dados da e-armarinhos atualizado com Sucesso !');
    except
      on E: Exception do
      begin
        oException(Nil,'Falha ao tentar atualizar base de dados da e-armarinhos !'+#13+
                       'Favor entrar em contato com o administrador do sistema.' +#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    EArmarin.Connected := False;
    EArmarin.Close;
  end;  }
end;

procedure TFrmProduto.ACTAtivoExecute(Sender: TObject);
begin
  ACTAtivo.Tag       := IFThen(ACTAtivo.Tag = 0,1,0);
  ACTInativo.Tag     := 0;
  ACTPreCadastro.Tag := 0;

  if BLBAtivo.AutoGrayScale then BLBAtivo.AutoGrayScale := False else BLBAtivo.AutoGrayScale := True;
  BLBInativo.AutoGrayScale     := True;
  BLBPreCadastro.AutoGrayScale := True;

  _Pesquisa;
end;

procedure TFrmProduto.ACTInativoExecute(Sender: TObject);
begin
  ACTAtivo.Tag       := 0;
  ACTInativo.Tag     := IFThen(ACTInativo.Tag = 0,1,0);
  ACTPreCadastro.Tag := 0;

  BLBAtivo.AutoGrayScale       := True;
  if BLBInativo.AutoGrayScale then BLBInativo.AutoGrayScale := False else BLBInativo.AutoGrayScale := True;
  BLBPreCadastro.AutoGrayScale := True;

  _Pesquisa;
end;

procedure TFrmProduto.ACTPreCadastroExecute(Sender: TObject);
begin
  ACTAtivo.Tag       := 0;
  ACTInativo.Tag     := 0;
  ACTPreCadastro.Tag := IFThen(ACTPreCadastro.Tag = 0,1,0);

  BLBAtivo.AutoGrayScale       := True;
  BLBInativo.AutoGrayScale     := True;
  if BLBPreCadastro.AutoGrayScale then BLBPreCadastro.AutoGrayScale := False else BLBPreCadastro.AutoGrayScale := True;

  _Pesquisa;
end;

procedure TFrmProduto.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Artigos);
end;

procedure TFrmProduto.TSLFShow(Sender: TObject);
begin
  if LF.State = dsInactive then LF.Open;
end;

procedure TFrmProduto.TSLEShow(Sender: TObject);
begin
  if LE.State = dsInactive then LE.Open;
end;

procedure TFrmProduto.TSLSShow(Sender: TObject);
begin
  if LS.State = dsInactive then LS.Open;
end;

procedure TFrmProduto.ArtigosAfterClose(DataSet: TDataSet);
begin
  if Produtos.State    = dsBrowse then Produtos.Close;
  if CAD_PRO_IMG.State = dsBrowse then CAD_PRO_IMG.Close;
  if LF.State          = dsBrowse then LF.Close;
  if LE.State          = dsBrowse then LE.Close;
  if LS.State          = dsBrowse then LS.Close;
  if RV.State          = dsBrowse then RV.Close;
  if PS.State          = dsBrowse then PS.Close;
  if PR.State          = dsBrowse then PR.Close;
  if PP.State          = dsBrowse then PP.Close;
  if PCA.State         = dsBrowse then PCA.Close;
  if PCF.State         = dsBrowse then PCF.Close;

  if (PCMOV.ActivePage  = TSLE) or (PCMOV.ActivePage = TSLS) then
      PCMOV.ActivePage := TSPR;
end;

procedure TFrmProduto.DTSRVDataChange(Sender: TObject; Field: TField);
begin
  DBGRV.ApplyBestFit(DBGRVSKU );
  DBGRV.ApplyBestFit(DBGRVDGCP);
  DBGRV.ApplyBestFit(DBGRVCDET);
  DBGRV.ApplyBestFit(DBGRVDETP);
  DBGRV.ApplyBestFit(DBGRVDEDF);
  DBGRV.ApplyBestFit(DBGRVDECA);

  PNLINFADETQ.Height := IFThen(DBINFADETQ.Lines.Count = 0,00,
                        IFThen(DBINFADETQ.Lines.Count = 1,25,
                        IFThen(DBINFADETQ.Lines.Count = 2,40,
                        IFThen(DBINFADETQ.Lines.Count = 3,55,
                        IFThen(DBINFADETQ.Lines.Count = 4,65,
                        IFThen(DBINFADETQ.Lines.Count = 5,80,
                        IFThen(DBINFADETQ.Lines.Count = 6,90,
                        IFThen(DBINFADETQ.Lines.Count = 7,110,130))))))));
end;

procedure TFrmProduto.DBGRVCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
     if  AColumn = DBGRVDEDF then
         if not oEmpty(ANode.Values[DBGRVDEDF.Index]) then
            if ANode.Values[DBGRVDETP.Index] = '1º QUALIDADE A' then
            begin
              AColor      := $00E1AD40;
              AFont.Color := clWhite;
            end else
            if ANode.Values[DBGRVDETP.Index] = '1º QUALIDADE B' then
            begin
              AColor      := clYellow;
              AFont.Color := clBlack;
            end else
            begin
              AColor      := $000024B3;
              AFont.Color := clWhite;
            end;
end;

procedure TFrmProduto.ArtigosBeforeScroll(DataSet: TDataSet);
begin
  DBGProdutos.Bands[2].Visible := False;
  DBGProdutos.Bands[5].Visible := False;

  { Estoque Físico }
  DBGLFCTNR.Visible   := False;
  DBGLFLOTE.Visible   := False;
  DBGLFD_DEDF.Visible := False;
  DBGLFDEPD.Visible   := False;
  DBGLFDTPD.Visible   := False;
  DBGLFCDNF.Visible   := False;
  DBGLFDTNF.Visible   := False;
  DBGLFDECE.Visible   := False;
  DBGLFCDI.Visible    := False;

  { Pedidos }
  DBGLFDEPD.Visible := False;
  DBGLFDTPD.Visible := False;

  { Nota Fiscal }
  DBGLFCDNF.Visible := False;
  DBGLFDTNF.Visible := False;

  { Emitentes }
  DBGLFDECE.Visible := False;

  DBGLECTNR.Visible := False;
  DBGLELOTE.Visible := False;
  DBGLEDEDF.Visible := False;

  DBGLSCDET.Visible := False;

  { Programados }
  DBGPPQTRL.Visible := False; { Rolos }

  { Container }
  DBGPP.Bands[1].Visible := False;
  DBGPPCTNR_QTRL.Visible := False;
end;

procedure TFrmProduto.ProdutosAfterClose(DataSet: TDataSet);
begin
  IMG_PAD.Tag := 0;
end;

procedure TFrmProduto.ProdutosAfterScroll(DataSet: TDataSet);
begin
  if ProdutosEEP_QTDE.AsFloat > 0 then
     DBGProdutos.Bands[2].Visible := True;

  if (ProdutosCDCF.AsString <> EmptyStr) or (ProdutosCEANCF.AsString <> EmptyStr) then
      DBGProdutos.Bands[5].Visible := True;
end;

procedure TFrmProduto.LSAfterScroll(DataSet: TDataSet);
begin
  if LSCDET.AsInteger > 0 then
     DBGLSCDET.Visible := True;
end;

procedure TFrmProduto.ArtigosBeforeOpen(DataSet: TDataSet);
begin
  { Estoque }
  with Produtos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CP.ID ,CP.IDCP,CP.CDST,CP.REST,CP.DEST,E.DTEV,');
    SQL.Add('       CP.SKU,CP.CEAN,');
    SQL.Add('       CP.NCM,CP.PIPI,CP.UCOM,CP.UCON,CP.PESO,CP.PSCN ,CP.METRO,CP.GRAM,CP.REND,');
    SQL.Add('       CP.LARU,CP.LART,CP.ENCL,CP.ENCC,CP.ELAL,CP.ELAC,CP.UVEN_MUL,CP.UVEN_MIN,');

    SQL.Add('       IIF(CP.RGCP IS NOT NULL,CP.RGCP,CP.SKU) AS RGCP,CP.DGCP,');
    SQL.Add('       CP.SISTEMA,CP.ESCALA,CP.CDCF,CP.CEANCF,');
    SQL.Add('       CP.VPRC_COM_NAC,CP.VPRC_COM_IMP,');
    SQL.Add('       CP.VPRC_PAD,CP.VPRC_PAD_PRZ,CP.VPRC_PAD_PRO,');
    SQL.Add('       CP.VPRC_ATV,CP.VPRC_ATV_PRZ,CP.VPRC_ATV_PRO,');
    SQL.Add('       CP.VPRC_VAR,CP.VPRC_VAR_PRZ,CP.VPRC_VAR_PRO,');
    SQL.Add('       CP.VPRC_REP,CP.VPRC_REP_PRZ,CP.VPRC_REP_PRO,');
    SQL.Add('       CP.VPRC_LJV,CP.PMKP_LJV,');

    SQL.Add('       COALESCE(E.EPE_QTDE ,0)    AS EPE_QTDE,COALESCE(E.EPE_QTRL,0) AS EPE_QTRL,');
    SQL.Add('       COALESCE(E.EAA_QTDE ,0)    AS EAA_QTDE,COALESCE(E.EAA_QTRL,0) AS EAA_QTRL,');
    SQL.Add('       COALESCE(E.EA_QTDE  ,0)    AS EA_QTDE ,COALESCE(E.EA_QTRL ,0) AS EA_QTRL ,');
    SQL.Add('       COALESCE(E.EB_QTDE  ,0)    AS EB_QTDE ,COALESCE(E.EB_QTRL ,0) AS EB_QTRL ,');
    SQL.Add('       COALESCE(E.EC_QTDE  ,0)    AS EC_QTDE ,COALESCE(E.EC_QTRL ,0) AS EC_QTRL ,');
    SQL.Add('       COALESCE(E.EPI_QTDE ,0)    AS EPI_QTDE,COALESCE(E.EPI_QTRL,0) AS EPI_QTRL,');
    SQL.Add('       COALESCE(E.ESU_QTDE ,0)    AS ESU_QTDE,COALESCE(E.ESU_QTRL,0) AS ESU_QTRL,');
    SQL.Add('       COALESCE(E.EPP_QTDE ,0)    AS EPP_QTDE,COALESCE(E.EPP_QTRL,0) AS EPP_QTRL,');
    SQL.Add('       COALESCE(E.EPR_QTDE ,0)    AS EPR_QTDE,COALESCE(E.EPR_QTRL,0) AS EPR_QTRL,');
    SQL.Add('       COALESCE(E.EPS_QTDE ,0)    AS EPS_QTDE,COALESCE(E.EPS_QTRL,0) AS EPS_QTRL,');
    SQL.Add('       COALESCE(E.ECO_QTDE ,0)    AS ECO_QTDE,COALESCE(E.ECO_QTRL,0) AS ECO_QTRL,');
    SQL.Add('       COALESCE(E.EEP_QTDE ,0)    AS EEP_QTDE,COALESCE(E.EEP_QTRL,0) AS EEP_QTRL,');
    SQL.Add('       COALESCE(E.ECO_DECO ,'''') AS ECO_DECO');

    SQL.Add('FROM VW_CAD_PRO AS CP');
    SQL.Add('JOIN SP_CAD_PRO_EST_PSQ(:IDEP,CP.IDEK) AS E ON (1 = 1)');

    SQL.Add('WHERE CP.IDAK = :IDAK');

    if ACTAtivo.Tag       = 1 then SQL.Add('AND CP.CDST = 030');
    if ACTInativo.Tag     = 1 then SQL.Add('AND CP.CDST = 085');
    if ACTPreCadastro.Tag = 1 then SQL.Add('AND CP.CDST = 123');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      CP.DGCP  LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY E.DTEV DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Físico - Pronta Entrega }
  with LF do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID    ,PK.IDEP,');
    SQL.Add('       PK.IDET  ,PK.DTET,PK.LGET,');
    SQL.Add('       PK.CDRO  ,PK.DTRO,PK.DEPD,PK.DTPD,PK.CDNF,PK.DTNF,PK.DECE,');
    SQL.Add('       PK.CDET  ,PK.CTNR,PK.LOTE,PK.CDI ,');
    SQL.Add('       PK.D_DEOP,PK.CDTP,PK.DETP,');
    SQL.Add('       PK.SKU   ,PK.DGCP,PK.QTDE,PK.QTRL,');
    SQL.Add('       COALESCE(CAST(IIF(PK.CDDF > 0,1,0) AS INTEGER),0) AS ITDF,PK.D_DEDF,PK.INFADCAD');

    SQL.Add('FROM VW_CAD_PRO_EST      AS PK');
    SQL.Add('JOIN TAB_PAR_SIS_EST_EMP AS EP_EST_EMP ON (EP_EST_EMP.ID = :IDEP AND EP_EST_EMP.IDEP_LOG = PK.IDEP)');
    SQL.Add('JOIN TAB_PAR_SIS_EST     AS EP_EST     ON (EP_EST.ID     = :IDEP)');
    SQL.Add('JOIN SP_CAD_PRO_EST_PSQ(:IDEP,PK.IDEK) AS FK ON (1 = 1)');

    SQL.Add('WHERE PK.IDAK = :IDAK');
    SQL.Add('AND   PK.IDPK = 0'    );
    SQL.Add('AND   PK.REOP = ''E''');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Físico - Entradas }
  with LE do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID   ,PK.LGCA,PK.DTCA,PK.IDEP,');
    SQL.Add('       PK.CDRO ,PK.DTRO,PK.DECE,PK.DEPD,PK.DTPD,PK.CDNF,PK.DTNF,');
    SQL.Add('       PK.CDET ,PK.CTNR,PK.LOTE,PK.CDI ,');
    SQL.Add('       PK.DEOP ,IIF(PK.CDTP <>  EP_EST.IDTIPO,PK.DETP,NULL) AS DETP,');
    SQL.Add('       PK.IDPK ,PK.DTPK,PK.DEPK,');
    SQL.Add('       PK.D_SKU,PK.DGCP,PK.QTDE,PK.QTRL,');
    SQL.Add('       PK.DEDF ,PK.INFADCAD');

    SQL.Add('FROM VW_CAD_PRO_EST      AS PK');
    SQL.Add('JOIN TAB_PAR_SIS_EST_EMP AS EP_EST_EMP ON (EP_EST_EMP.ID = :IDEP AND EP_EST_EMP.IDEP_LOG = PK.IDEP)');
    SQL.Add('JOIN TAB_PAR_SIS_EST     AS EP_EST     ON (EP_EST.ID     = :IDEP)');
    SQL.Add('JOIN SP_CAD_PRO_EST_PSQ(:IDEP,PK.IDEK) AS FK ON (1 = 1)');

    SQL.Add('WHERE PK.IDAK = :IDAK');
    SQL.Add('AND   PK.REOP = ''E''');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Físico - Saídas }
  with LS do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.*');

    SQL.Add('FROM ' + IFThen(RECParametros.EST_QTRL,'VW_CAD_PRO_EST_LSP_TMP','VW_CAD_PRO_EST_LSQ_TMP') + ' AS PK');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   PK.IDAK = :IDAK');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Pedidos Programados }
  PP.ParamByName('IDEP').Value := RECParametros.EP_ID;
  PP.Prepare;

  { Pedidos Reservados }
  with PR do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID  ,PK.DTCA,TRIM(CAST(FTIMESTAMP(PK.DTCA)||'' ''||PK.DECV AS VARCHAR(40))) AS D_DTCA,');
    SQL.Add('       PK.IDPK,PK.DEPK,PK.DECD,PK.DECV,PK.DECR,');
    SQL.Add('       PK.IDFK,PK.ITEM,PK.IDCP,PK.IDAK,PK.SKU ,PK.DGCP,PK.QTDE,PK.QTRL,PK.VPRC_COM');

    SQL.Add('FROM VW_CAD_PRO_EST_RES AS PK');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   PK.IDAK = :IDAK');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_VW_ID;
    Prepare;
  end;

  { Pedidos Separados }
  with PS do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,CP.IDAK,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,');
    SQL.Add('       TRIM(COALESCE(CP.DEGRD,'''')||'' ''||TRIM(COALESCE(CP.DECOR,'''')||'' ''||TRIM(COALESCE(CP.CDGRD,'''')||'' ''||TRIM(COALESCE(CP.REGRD,''''))))) AS DGCP,');
    SQL.Add('       PK.EST_DOCU AS DEPS,PK.EST_DTPV AS DTPV,PK.EST_DFAV AS CLPS,PK.EST_DUSU AS CVPS,PK.EST_DREP AS CRPS,');
    SQL.Add('       PK.EST_CRED AS QTDE,PK.EST_PCRE AS QTRL,');
    SQL.Add('       PK.EST_CDET AS CDET,PK.EST_CDSP AS CDSP,PK.IDCA AS IDSP,CS.USU_DUSU AS DESP,PK.EST_DTCA AS DTCA');

    SQL.Add('FROM CAD_PRO_SEP AS PK');
    SQL.Add('JOIN CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('JOIN CAD_USU     AS CS ON (CS.ID = PK.IDCA)');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   CP.IDAK = :IDAK');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      CP.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.DTCA DESC');

    ParamByName('IDEP').Value := RECParametros.EP_VW_ID;
    Prepare;
  end;

  { Pedidos de Compras em aberto }
  with PCA do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.IDEP,EP.FANTASIA AS DEEP,');
    SQL.Add('       CP.IDAK,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,CP.DGCP,');
    SQL.Add('       PK.EST_DOCU AS DEPC  ,PK.EST_CTNR AS CTNR,PK.EST_DTCA AS DTCA,PK.EST_DFAV AS FOPC,PK.EST_DUSU AS CCPC,');
    SQL.Add('       PK.EST_CRED AS QTDE  ,PK.EST_PCRE AS QTRL,');
    SQL.Add('       PK.EST_STFI AS STFI  ,PK.EST_RDES AS DTDE,PK.EST_DEXP AS DTPR');

    SQL.Add('FROM CAD_PRO_PRC AS PK');
    SQL.Add('JOIN CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
    SQL.Add('JOIN TAB_PAR_SIS AS EP ON (EP.ID = PK.IDEP)');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   CP.IDAK = :IDAK');

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      CP.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.EST_DEXP DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Pedidos de Compras Finalizadas }
  with PCF do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FK.ID,CP.IDAK,CP.PRO_CART AS ARTIGO,CP.PRO_CPRO AS PRODUTO,FK.DGCP,');
    SQL.Add('       PK.ROM_DERO AS DEPC,FK.ROM_CTNR AS CTNR,PK.ROM_DTCA AS DTCA,');
    SQL.Add('       CF.FOR_FANT AS FOPC,CC.USU_DUSU AS CCPC,');
    SQL.Add('       FK.ROM_QTDE AS QTDE,FK.ROM_QTRL AS QTRL,FK.ROM_QTPD AS QTFI,FK.ROM_RLPD AS RLFI,');
    SQL.Add('       PK.ROM_STFI AS STFI,FK.ROM_RDES AS DTDE,FK.ROM_DBAI AS DTBX');

    SQL.Add('FROM ' + SLPrincipal.Values['ped_com_cab'] + ' AS PK');
    SQL.Add('JOIN     CAD_FOR AS CF ON (CF.ID = PK.IDCD)');
    SQL.Add('JOIN     CAD_USU AS CC ON (CC.ID = PK.IDCC)');
    SQL.Add('JOIN ' + SLPrincipal.Values['ped_com_ite'] + ' AS FK ON (FK.IDPK = PK.ID)');
    SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = FK.IDCP)');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   CP.IDAK = :IDAK');
    SQL.Add('AND   FK.ROM_DBAI IS NOT NULL');
    SQL.Add('AND   PK.DEST <> ''CANCELADO''' );

    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      FK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY FK.ROM_DBAI DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;

  { Etiquetas Revisadas }
  with RV do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.*,');
    SQL.Add('       PV.ROM_DERO AS DEPV,PV.ROM_DROM AS DTPV,');
    SQL.Add('       CL.CLI_FANT AS DECL,CV.LOGIN    AS DECV,CR.REP_FANT AS DECR');

    SQL.Add('FROM VW_CAD_PRO_EST_REV AS PK');
    SQL.Add('LEFT JOIN ' + SLPrincipal.Values['ped_ven_cab']+' AS PV ON (PV.IDEP = PK.IDEP AND PV.ID = PK.CDPD)');
    SQL.Add('LEFT JOIN CAD_CLI       AS CL ON (CL.ID   = PV.IDCD)');
    SQL.Add('LEFT JOIN TAB_USER      AS CV ON (CV.ID   = PV.IDCV)');
    SQL.Add('LEFT JOIN CAD_REP       AS CR ON (CR.ID   = PV.IDCR)');

    SQL.Add('WHERE PK.IDEP = :IDEP');
    SQL.Add('AND   PK.IDAK = :IDAK');

    
    { Grade }
    if APSQ_DG <> EmptyStr then
    SQL.Add('AND      PK.DGCP LIKE ''' + APSQ_DG + '%''');
    SQL.Add('ORDER BY PK.ID DESC');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
  end;
end;

procedure TFrmProduto.ArtigosAfterOpen(DataSet: TDataSet);
begin
  IMG_PAD.Tag := 0;

  if Produtos.State    = dsInactive then Produtos.Open; { Produtos }
  if CAD_PRO_IMG.State = dsInactive then CAD_PRO_IMG.Open; { Imagens }

  if LF.State   = dsInactive then LF.Open; { Físico }

  if PR.State   = dsInactive then PR.Open; { Reservados  }
  if PS.State   = dsInactive then PS.Open; { Separados   }
  if PP.State   = dsInactive then PP.Open; { Programados }

  if PCA.State  = dsInactive then PCA.Open; { Compras Aberto  }
  if PCF.State  = dsInactive then PCF.Open; { Compras Fechado }

  if RV.State = dsInactive then RV.Open; { Revisados }

  if RECUsuarios.Grupo = 'PCP' then PCMOV.ActivePage := TSLF else
  if PS.RecNo > 0              then PCMOV.ActivePage := TSPS else

  if ProdutosEPP_QTDE.AsFloat > ProdutosEPR_QTDE.AsFloat then
     PCMOV.ActivePage := TSPP else

  if (ProdutosEPE_QTDE.AsFloat < 900) and (PP.RecNo > 0) then { DROPAR }
     PCMOV.ActivePage := TSPP else

  if PR.RecNo > 0 then PCMOV.ActivePage := TSPR else
  if LF.RecNo > 0 then PCMOV.ActivePage := TSLF else

  if PCA.RecNo > 0 then
  begin
    PCMOV.ActivePage := TSCO;
    PCCO.ActivePage  := TSCOA;
  end else

  if PCF.RecNo > 0 then
  begin
    PCMOV.ActivePage := TSCO;
    PCCO.ActivePage  := TSCOF;
  end;
end;

procedure TFrmProduto.ProdutosAfterOpen(DataSet: TDataSet);
begin
  if ProdutosDGCP.AsString <> EmptyStr then DBGProdutosDGCP.Field.FocusControl else
     DBGProdutosRGCP.Field.FocusControl;
end;

procedure TFrmProduto.LFAfterOpen(DataSet: TDataSet);
begin
  if LFDGCP.AsString <> EmptyStr then DBGLFDGCP.Field.FocusControl else
     DBGLFSKU.Field.FocusControl;
end;

procedure TFrmProduto.LEAfterOpen(DataSet: TDataSet);
begin
  if LEDGCP.AsString <> EmptyStr then DBGLEDGCP.Field.FocusControl else
     DBGLED_SKU.Field.FocusControl;
end;

procedure TFrmProduto.LSAfterOpen(DataSet: TDataSet);
begin
  if LSDGCP.AsString <> EmptyStr then DBGLSDGCP.Field.FocusControl else
     DBGLSPRODUTO.Field.FocusControl;
end;

procedure TFrmProduto.PRAfterOpen(DataSet: TDataSet);
begin
  if PRDGCP.AsString <> EmptyStr then DBGPRDGCP.Field.FocusControl else
     DBGPRSKU.Field.FocusControl;
end;

procedure TFrmProduto.PSAfterOpen(DataSet: TDataSet);
begin
  if PSDGCP.AsString <> EmptyStr then DBGPSDGCP.Field.FocusControl else
     DBGPSPRODUTO.Field.FocusControl;
end;

procedure TFrmProduto.PPAfterOpen(DataSet: TDataSet);
begin
  if PPDGCP.AsString <> EmptyStr then DBGPPDGCP.Field.FocusControl else
     DBGPPSKU.Field.FocusControl;
end;

procedure TFrmProduto.PCAAfterOpen(DataSet: TDataSet);
begin
  if PCADGCP.AsString <> EmptyStr then DBGPCADGCP.Field.FocusControl else
     DBGPCAPRODUTO.Field.FocusControl;
end;

procedure TFrmProduto.PCFAfterOpen(DataSet: TDataSet);
begin
  if PCFDGCP.AsString <> EmptyStr then DBGPCFDGCP.Field.FocusControl else
     DBGPCFPRODUTO.Field.FocusControl;
end;

procedure TFrmProduto.DBGPPCTNRCloseUp(Sender: TObject;
  var Value: Variant; var Accept: Boolean);
  var
    AID: Integer;
begin
  AID := PPID.AsInteger;
  if Accept then
  try
    try
      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_PRG');
        SQL.Add('SET  CTNR = ''' + TRIM(LeftStr(Value,Pos('|',Value) - 1)) + '''');
        SQL.Add('WHERE  ID = ''' + PPID.AsString + '''');
        ExecQuery;
      end;
      oCTransact(TEdicao);
      BLBRefresh.Click;
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil,'Falha ao tentar incluir container na programação !'      + #13 +
                       'Favor entrar em contato com o administrador do sistema.' + #13 + #13 +
                        E.Message);
      end;
    end;
  finally
    if (AID > 0) and (AID <> PPID.AsInteger) then
    begin
      PCMOV.ActivePage := TSPP;
      PP.Locate('ID',AID,[]);
    end;
  end;
end;

procedure TFrmProduto.PPAfterScroll(DataSet: TDataSet);
begin
  { Rolos }
  if PPQTRL.AsInteger > 1 then
     DBGPPQTRL.Visible := True;

  { Container }
   if (PPCTNR.AsString <> EmptyStr) or (DBGPPCTNR.Items.Count > 1) then
     DBGPP.Bands[1].Visible := True;

  if PPCTNR_QTRL.AsInteger > 1 then
     DBGPPCTNR_QTRL.Visible := True;
end;

procedure TFrmProduto.DBGPPCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ((AColumn = DBGPPCTNR) or (AColumn = DBGPPCTNR_QTDE) or (AColumn = DBGPPCTNR_QTRL)) and
        (ANode.Values[DBGPPCTNR.Index] <> NULL) then
    begin
      AColor      := $000000FD;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TFrmProduto.LFAfterScroll(DataSet: TDataSet);
begin
  { Container }
  if LFCTNR.AsString <> EmptyStr then
     DBGLFCTNR.Visible := True;

  { Defaitos }
  if LFD_DEDF.AsString <> EmptyStr then
     DBGLFD_DEDF.Visible := True;
end;

procedure TFrmProduto.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Artigos);
end;

procedure TFrmProduto.EEventAdminEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if RECUsuarios.IS_EVE_ADM then
  oRefresh(Artigos);
end;

procedure TFrmProduto.LFCalcFields(DataSet: TDataSet);
begin
  LFC_QTDE.Value := LFQTDE.Value;
  LFC_QTRL.Value := LFQTRL.Value;
end;

end.
