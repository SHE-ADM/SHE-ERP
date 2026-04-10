unit pven_nfe;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  ImgList, dxCntner, dxEditor, dxEdLib, StrUtils,
  StdCtrls, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxPageControl, IBDatabase, DB, IBCustomDataSet, IBQuery, dxDBELib,
  DBCtrls, Grids, DBGrids, math, dateutils, IBStoredProc, ComCtrls,
  Registry, jpeg, rxSpeedbar, IBEvents,
  StrInt, StrIntImp, XMLDom, XMLIntf, MSXMLDom, XMLDoc, XMLXForm,
  IDGlobal, IBSQL {Unit do componente Indy para usar Fetch() };

type
  Tfrmven_nfe = class(TForm)
    imageOPC: TImageList;
    imageITEM: TImageList;
    SBMenuPrincipal: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    SpeedbarSection9: TSpeedbarSection;
    BSair: TSpeedItem;
    BFAV: TSpeedItem;
    BVal: TSpeedItem;
    BTra: TSpeedItem;
    BAss: TSpeedItem;
    BVis: TSpeedItem;
    BPri: TSpeedItem;
    BEnv: TSpeedItem;
    BImp: TSpeedItem;
    PNLPrincipal: TPanel;
    Consulta: TIBQuery;
    IBTra: TIBTransaction;
    TSheild: TIBTransaction;
    nfe_001: TIBDataSet;
    dtsnfe_001: TDataSource;
    nfe_001ID: TIntegerField;
    nfe_001NFE_CCAB: TIntegerField;
    nfe_001NFE_CDNF: TIntegerField;
    nfe_001NFE_INDTOT: TIntegerField;
    nfe_001NFE_CFOP: TIBStringField;
    nfe_001NFE_CART: TIBStringField;
    nfe_001NFE_CPROD: TIBStringField;
    nfe_001NFE_CEAN: TIBStringField;
    nfe_001NFE_NCM: TIBStringField;
    nfe_001NFE_EXTIPI: TIBStringField;
    nfe_001NFE_DCOR: TIBStringField;
    nfe_001NFE_XPROD: TIBStringField;
    nfe_001NFE_UCOM: TIBStringField;
    nfe_001NFE_QCOM: TIBBCDField;
    nfe_001NFE_RCOM: TIntegerField;
    nfe_001NFE_VPROD: TIBBCDField;
    nfe_001NFE_VFRETE: TIBBCDField;
    nfe_001NFE_VSEG: TIBBCDField;
    nfe_001NFE_VDESC: TIBBCDField;
    nfe_001NFE_VOUTRO: TIBBCDField;
    nfe_001NFE_XLOCEMBARQ: TIBStringField;
    nfe_001NFE_UFEMBARQ: TIBStringField;
    nfe_001NFE_NDI: TIBStringField;
    nfe_001NFE_DDI: TDateField;
    nfe_001NFE_XLOCDESEMB: TIBStringField;
    nfe_001NFE_UFDESEMB: TIBStringField;
    nfe_001NFE_DDESEMB: TDateField;
    nfe_001NFE_CEXPORTADOR: TIBStringField;
    nfe_001NFE_NADICAO: TSmallintField;
    nfe_001NFE_NSEQADIC: TSmallintField;
    nfe_001NFE_CFABRICANTE: TIBStringField;
    nfe_001NFE_VDESCDI: TIBBCDField;
    nfe_001NFE_XPED: TIBStringField;
    nfe_001NFE_ORIG: TIBStringField;
    nfe_001NFE_CST: TIBStringField;
    nfe_001NFE_MODBC: TIBStringField;
    nfe_001NFE_PREDBC: TIBBCDField;
    nfe_001NFE_VBC: TIBBCDField;
    nfe_001NFE_PICMS: TIBBCDField;
    nfe_001NFE_VICMS: TIBBCDField;
    nfe_001NFE_MODBCST: TIBStringField;
    nfe_001NFE_MVAST: TIBBCDField;
    nfe_001NFE_PREDBCST: TIBBCDField;
    nfe_001NFE_VBCST: TIBBCDField;
    nfe_001NFE_VBCSTRET: TIBBCDField;
    nfe_001NFE_VICMSSTRET: TIBBCDField;
    nfe_001NFE_PICMSST: TIBBCDField;
    nfe_001NFE_VICMSST: TIBBCDField;
    nfe_001NFE_PCREDSN: TIBBCDField;
    nfe_001NFE_VCREDICMSSN: TIBBCDField;
    nfe_001NFE_CSTIPI: TIBStringField;
    nfe_001NFE_VBCIPI: TIBBCDField;
    nfe_001NFE_PIPI: TIBBCDField;
    nfe_001NFE_VIPI: TIBBCDField;
    nfe_001NFE_VBCIMP: TIBBCDField;
    nfe_001NFE_VDESPADU: TIBBCDField;
    nfe_001NFE_VIIIMP: TIBBCDField;
    nfe_001NFE_VIOFIMP: TIBBCDField;
    nfe_001NFE_CSTPIS: TIBStringField;
    nfe_001NFE_VBCPIS: TIBBCDField;
    nfe_001NFE_PPIS: TIBBCDField;
    nfe_001NFE_VPIS: TIBBCDField;
    nfe_001NFE_VBCPISST: TIBBCDField;
    nfe_001NFE_PPISST: TIBBCDField;
    nfe_001NFE_VPISST: TIBBCDField;
    nfe_001NFE_CSTCOFINS: TIBStringField;
    nfe_001NFE_VBCOFINS: TIBBCDField;
    nfe_001NFE_PCOFINS: TIBBCDField;
    nfe_001NFE_VCOFINS: TIBBCDField;
    nfe_001NFE_VBCOFINSST: TIBBCDField;
    nfe_001NFE_PCOFINSST: TIBBCDField;
    nfe_001NFE_VCOFINSST: TIBBCDField;
    nfe_001NFE_VBCISSQN: TIBBCDField;
    nfe_001NFE_VALIQISSQN: TIBBCDField;
    nfe_001NFE_VISSQN: TIBBCDField;
    nfe_001NFE_CMUNFGISSQN: TIBStringField;
    nfe_001NFE_CLISTSERV: TIntegerField;
    tab_nat: TIBQuery;
    consulta_S: TIBQuery;
    nfe_001NFE_VNF: TIBBCDField;
    tab_alq: TIBQuery;
    dtsdup_001: TDataSource;
    dup_001: TIBDataSet;
    dup_001ID: TIntegerField;
    dup_001NFE_CDRO: TIntegerField;
    dup_001NFE_CCAB: TIntegerField;
    dup_001NFE_CFAV: TIntegerField;
    dup_001NFE_DROM: TDateField;
    dup_001NFE_CDNF: TIntegerField;
    dup_001NFE_DNFE: TDateField;
    dup_001NFE_TITU: TIBStringField;
    dup_001NFE_DVEN: TDateField;
    dup_001NFE_PARC: TIntegerField;
    dup_001NFE_VDUP: TIBBCDField;
    dup_001NFE_DPAG: TDateField;
    dup_001NFE_VPAG: TIBBCDField;
    dup_001NFE_VPEN: TIBBCDField;
    dup_001NFE_OBSE: TMemoField;
    dup_001NFE_STA: TIBStringField;
    tab_pag: TIBQuery;
    dup_001NFE_STPD: TIBStringField;
    dup_001NFE_STCO: TIBStringField;
    dup_001NFE_STFI: TIBStringField;
    ibSP: TIBStoredProc;
    sbMAIN: TStatusBar;
    nfe_001NFE_METR: TIBBCDField;
    nfe_001NFE_PESO: TIBBCDField;
    nfe_001NFE_REND: TIBBCDField;
    nfe_001NFE_PSCN: TIBBCDField;
    nfe_001NFE_PSMR: TIBBCDField;
    psq_for: TIBQuery;
    cli_001: TIBDataSet;
    dtscli_001: TDataSource;
    cli_001ID: TIntegerField;
    cli_001NFE_CCAB: TIntegerField;
    cli_001NFE_CDNF: TIntegerField;
    cli_001NFE_DCAD: TDateField;
    cli_001NFE_VNF: TIBBCDField;
    nfe_001NFE_FRET: TIBStringField;
    nfe_001NFE_TIPO: TIBStringField;
    nfe_001NFE_REPR: TIBStringField;
    nfe_001NFE_FLAG: TIBStringField;
    ConsultaAux: TIBQuery;
    nfe_001NFE_IPRO: TIntegerField;
    aux_S: TIBQuery;
    nfe_001NFE_VUNCOM: TFloatField;
    nfe_001NFE_VMULTA: TIBBCDField;
    nfe_001NFE_PIMP: TIBBCDField;
    nfe_001NFE_VAFRMM: TIBBCDField;
    nfe_001NFE_CNPJ: TIBStringField;
    nfe_001NFE_UFTERCEIRO: TIBStringField;
    nfe_001NFE_VI04: TIBBCDField;
    nfe_001NFE_VI07: TIBBCDField;
    nfe_001NFE_VI12: TIBBCDField;
    nfe_001NFE_VBCSTDEST: TIBBCDField;
    nfe_001NFE_VICMSSTDEST: TIBBCDField;
    nfe_001NFE_VBCUFDEST: TIBBCDField;
    nfe_001NFE_PFCPUFDEST: TIBBCDField;
    nfe_001NFE_PICMSUFDEST: TIBBCDField;
    nfe_001NFE_PICMSINTER: TIBBCDField;
    nfe_001NFE_PICMSINTERPART: TIBBCDField;
    nfe_001NFE_VFCPUFDEST: TIBBCDField;
    nfe_001NFE_VICMSUFDEST: TIBBCDField;
    nfe_001NFE_VICMSUFREMET: TIBBCDField;
    nfe_001NFE_PREC: TFloatField;
    nfe_001NFE_GRAM: TIBBCDField;
    nfe_001NFE_LARG: TIBBCDField;
    PNLMargemE: TPanel;
    PNLMargemD: TPanel;
    PNLDestinatario: TPanel;
    PNLDestinatarioMargemE: TPanel;
    GBDestinatario: TGroupBox;
    LACFav: TLabel;
    edcfav: TdxMaskEdit;
    eddfav: TdxMaskEdit;
    GBCFOP: TGroupBox;
    LACFOP: TLabel;
    edtnat: TdxMaskEdit;
    edtpnf: TdxMaskEdit;
    edcna1: TdxMaskEdit;
    edcna2: TdxMaskEdit;
    cbcnat: TdxPickEdit;
    cbdnat: TdxPickEdit;
    GBTranslado: TGroupBox;
    PNLDestinatarioMargemD: TPanel;
    PNLRodape: TPanel;
    GBEdicao: TGroupBox;
    PCEdicao: TdxPageControl;
    TSProduto: TdxTabSheet;
    TSDuplicata: TdxTabSheet;
    dbgdup: TdxDBGrid;
    dbgdupNFE_CDNF: TdxDBGridMaskColumn;
    dbgdupNFE_DNFE: TdxDBGridDateColumn;
    dbgdupNFE_TITU: TdxDBGridMaskColumn;
    dbgdupNFE_DVEN: TdxDBGridDateColumn;
    dbgdupNFE_VDUP: TdxDBGridMaskColumn;
    SpeedBar2: TSpeedBar;
    SpeedbarSection10: TSpeedbarSection;
    siIDU: TSpeedItem;
    siDDU: TSpeedItem;
    siSDU: TSpeedItem;
    siCDU: TSpeedItem;
    siADU: TSpeedItem;
    TSServico: TdxTabSheet;
    dbgcli: TdxDBGrid;
    dbgcliNFE_CDNF: TdxDBGridMaskColumn;
    dbgcliNFE_DCAD: TdxDBGridDateColumn;
    dbgcliNFE_VNF: TdxDBGridMaskColumn;
    SpeedBar3: TSpeedBar;
    SpeedbarSection14: TSpeedbarSection;
    siICL: TSpeedItem;
    siDCL: TSpeedItem;
    siSCL: TSpeedItem;
    siCCL: TSpeedItem;
    siACL: TSpeedItem;
    TSDestinatario: TdxTabSheet;
    TSTransporte: TdxTabSheet;
    TSEXImporta: TdxTabSheet;
    BVEXImporta: TBevel;
    LAnDI: TLabel;
    LAdDI: TLabel;
    LAdDesemb: TLabel;
    LAcFabricante: TLabel;
    LAnAdicao: TLabel;
    LAnSeqAdic: TLabel;
    EDnDI: TdxEdit;
    DEdDI: TdxDateEdit;
    DEdDesemb: TdxDateEdit;
    EDcFabricante: TdxEdit;
    sbeditu: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    siINC: TSpeedItem;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    siALT: TSpeedItem;
    nfe_001NFE_ITEMPED: TSmallintField;
    nfe_001NFE_NVE: TIBStringField;
    nfe_001NFE_CEST: TIBStringField;
    nfe_001NFE_PSBR: TIBBCDField;
    nfe_001NFE_PSLQ: TIBBCDField;
    pTRA: TIBTransaction;
    pSP: TIBStoredProc;
    pEVE: TIBEvents;
    nfe_001NFE_INDESCALA: TIBStringField;
    nfe_001NFE_TIPI: TSmallintField;
    nfe_001NFE_CLENQ: TIBStringField;
    nfe_001NFE_CENQ: TIBStringField;
    nfe_001NFE_CBENEF: TIBStringField;
    nfe_001NFE_NFCI: TIBStringField;
    nfe_001NFE_CNPJFAB: TLargeintField;
    nfe_001NFE_CBPRODUTO: TLargeintField;
    nfe_001NFE_CBUNIDADE: TLargeintField;
    nfe_001NFE_VALIQPROD: TIBBCDField;
    nfe_001NFE_VICMSOP: TIBBCDField;
    nfe_001NFE_PDIF: TIBBCDField;
    nfe_001NFE_VICMSDIF: TIBBCDField;
    nfe_001NFE_VBCFCP: TIBBCDField;
    nfe_001NFE_PFCP: TIBBCDField;
    nfe_001NFE_VFCP: TIBBCDField;
    nfe_001NFE_PST: TIBBCDField;
    nfe_001NFE_VBCFCPST: TIBBCDField;
    nfe_001NFE_PFCPST: TIBBCDField;
    nfe_001NFE_VFCPST: TIBBCDField;
    nfe_001NFE_VBCFCPSTRET: TIBBCDField;
    nfe_001NFE_PFCPSTRET: TIBBCDField;
    nfe_001NFE_VFCPSTRET: TIBBCDField;
    nfe_001NFE_VBCFCPUFDEST: TIBBCDField;
    nfe_001NFE_VICMSDESON: TIBBCDField;
    nfe_001NFE_MOTDESICMS: TSmallintField;
    nfe_001NFE_NDRAW: TIBStringField;
    nfe_001NFE_NRE: TIBStringField;
    nfe_001NFE_NRECOPI: TIBStringField;
    nfe_001NFE_CHNFE: TIBStringField;
    nfe_001NFE_QEXPORT: TIBBCDField;
    nfe_001NFE_VTOTTRIB: TIBBCDField;
    nfe_001NFE_CNPJPROD: TIBStringField;
    nfe_001NFE_INFADPROD: TIBStringField;
    nfe_001NFE_COMP: TIBStringField;
    nfe_001NFE_CSTA: TIBStringField;
    nfe_001NFE_CSTS: TIBStringField;
    GBNotaFiscal: TGroupBox;
    LANotaFiscal: TLabel;
    LAdhSaiEnt: TLabel;
    LAXPed: TLabel;
    LAFinNFe: TLabel;
    LATDesc: TLabel;
    LATDesc2: TLabel;
    LAVDesc: TLabel;
    LADesc: TLabel;
    LATPNF: TLabel;
    DEdhEmi: TdxDateEdit;
    edcdro: TdxMaskEdit;
    edcrep: TdxMaskEdit;
    edcven: TdxMaskEdit;
    eddrep: TdxMaskEdit;
    eddven: TdxMaskEdit;
    edconc: TdxMaskEdit;
    edcdnf: TdxMaskEdit;
    DEdhSaiEnt: TdxDateEdit;
    IEFinNFe: TdxImageEdit;
    EDXPed: TdxMaskEdit;
    EDTDesc: TdxMaskEdit;
    EDVDesc: TdxMaskEdit;
    IETPNF: TdxImageEdit;
    GBDuplicatas: TGroupBox;
    LADupl: TLabel;
    LADPag: TLabel;
    LAPrz: TLabel;
    cbdupl: TdxPickEdit;
    cbdpag: TdxImageEdit;
    cbprz: TdxPickEdit;
    GBTotais: TGroupBox;
    LAVBC: TLabel;
    LAVICMS: TLabel;
    LAVIPI: TLabel;
    LAVPIS: TLabel;
    LAVCOFINS: TLabel;
    LAVNF: TLabel;
    LAQTDE: TLabel;
    LAVCREDICMSSN: TLabel;
    LAVPROD: TLabel;
    LAVTotTrib: TLabel;
    EDVII: TdxMaskEdit;
    EDTRCom: TdxMaskEdit;
    EDVOutro: TdxMaskEdit;
    EDVST: TdxMaskEdit;
    EDVBCST: TdxMaskEdit;
    EDVCREDICMSSN: TdxMaskEdit;
    EDVProd: TdxMaskEdit;
    EDVBC: TdxMaskEdit;
    EDVICMS: TdxMaskEdit;
    EDVIPI: TdxMaskEdit;
    EDVPIS: TdxMaskEdit;
    EDVCOFINS: TdxMaskEdit;
    EDVNF: TdxMaskEdit;
    EDTQCom: TdxMaskEdit;
    EDVICMSDeson: TdxMaskEdit;
    EDVTotTrib: TdxMaskEdit;
    GBInfCplNF: TGroupBox;
    PCInfoA: TdxPageControl;
    TSInfoNF: TdxTabSheet;
    EDInfAdNF: TdxMemo;
    TSInfoFisco: TdxTabSheet;
    EDInfAdFisco: TdxMemo;
    GBInfoPedido: TGroupBox;
    EDInfAdPed: TdxMemo;
    EDVDup: TdxMaskEdit;
    PNLConsulta: TPanel;
    dbgnfe: TdxDBGrid;
    dbgnfeNFE_ITEMPED: TdxDBGridMaskColumn;
    dbgnfeNFE_CFOP: TdxDBGridMaskColumn;
    dbgnfeNFE_CPROD: TdxDBGridMaskColumn;
    dbgnfeNFE_NCM: TdxDBGridMaskColumn;
    dbgnfeNFE_XPROD: TdxDBGridMaskColumn;
    dbgnfeNFE_ORIG: TdxDBGridPickColumn;
    dbgnfeNFE_CST: TdxDBGridPickColumn;
    dbgnfeNFE_UCOM: TdxDBGridPickColumn;
    dbgnfeNFE_QCOM: TdxDBGridMaskColumn;
    dbgnfeNFE_VUNCOM: TdxDBGridMaskColumn;
    dbgnfeNFE_VPROD: TdxDBGridMaskColumn;
    dbgnfeNFE_VDESC: TdxDBGridMaskColumn;
    dbgnfeNFE_VNF: TdxDBGridMaskColumn;
    dbgnfeNFE_VBC: TdxDBGridMaskColumn;
    dbgnfeNFE_PREDBC: TdxDBGridMaskColumn;
    dbgnfeNFE_PICMS: TdxDBGridMaskColumn;
    dbgnfeNFE_VICMS: TdxDBGridMaskColumn;
    dbgnfeNFE_CSTIPI: TdxDBGridMaskColumn;
    dbgnfeNFE_CENQ: TdxDBGridMaskColumn;
    dbgnfeNFE_VBCIPI: TdxDBGridMaskColumn;
    dbgnfeNFE_PIPI: TdxDBGridMaskColumn;
    dbgnfeNFE_VIPI: TdxDBGridMaskColumn;
    dbgnfeNFE_CSTPIS: TdxDBGridMaskColumn;
    dbgnfeNFE_VBCPIS: TdxDBGridMaskColumn;
    dbgnfeNFE_PPIS: TdxDBGridMaskColumn;
    dbgnfeNFE_VPIS: TdxDBGridMaskColumn;
    dbgnfeNFE_CSTCOFINS: TdxDBGridMaskColumn;
    dbgnfeNFE_VBCOFINS: TdxDBGridMaskColumn;
    dbgnfeNFE_PCOFINS: TdxDBGridMaskColumn;
    dbgnfeNFE_VCOFINS: TdxDBGridMaskColumn;
    GBInfoComp: TGroupBox;
    DBInfoComp: TdxDBMemo;
    dbgnfeNFE_FLAG: TdxDBGridMaskColumn;
    siCGE: TSpeedItem;
    TSEXExporta: TdxTabSheet;
    LAxLocDespacho: TLabel;
    EDxLocDespacho: TdxEdit;
    LAxLocExporta: TLabel;
    EDxLocExporta: TdxEdit;
    LAUFSaidaPais: TLabel;
    EDUFSaidaPais: TdxEdit;
    BVEXExporta: TBevel;
    EDCNPJProd: TdxMaskEdit;
    LACNPJProd: TLabel;
    LAnDraw: TLabel;
    LAnRE: TLabel;
    LAqExport: TLabel;
    LAchNFe: TLabel;
    CEqExport: TdxCurrencyEdit;
    EDxLocDesemb: TdxEdit;
    LAxLocDesemb: TLabel;
    LAUFDesemb: TLabel;
    EDCNPJTerceiro: TdxMaskEdit;
    LACNPJAdq: TLabel;
    IEtpIntermedio: TdxImageEdit;
    LAtpIntermedio: TLabel;
    IETpViaTransp: TdxImageEdit;
    LATpViaTransp: TLabel;
    LAUFTerceiro: TLabel;
    EDcExportador: TdxEdit;
    LAcExportador: TLabel;
    CEvAFRMM: TdxCurrencyEdit;
    LAvAFRMM: TLabel;
    CEnAdicao: TdxCurrencyEdit;
    CEnSeqAdic: TdxCurrencyEdit;
    EDchNFe: TdxEdit;
    EDnDraw: TdxEdit;
    EDnRE: TdxEdit;
    PNLFavorecido: TPanel;
    PEUFDesemb: TdxPickEdit;
    PEUFTerceiro: TdxPickEdit;
    nfe_001NFE_XPROX: TIBStringField;
    nfe_001NFE_QVOL: TIBBCDField;
    nfe_001NFE_ESP: TIBStringField;
    nfe_001NFE_QTUN: TIBBCDField;
    nfe_001NFE_CNPJTERCEIRO: TIBStringField;
    nfe_001NFE_TPINTERMEDIO: TIBStringField;
    nfe_001NFE_TPVIATRANSP: TIBStringField;
    nfe_001NFE_XLOCDESPACHO: TIBStringField;
    nfe_001NFE_UFSAIDAPAIS: TIBStringField;
    nfe_001NFE_UTRIB: TIBStringField;
    nfe_001NFE_UEXP: TIBStringField;
    nfe_001NFE_TRIBFEDNACIONAL: TIBBCDField;
    nfe_001NFE_TRIBFEDIMPORTADO: TIBBCDField;
    nfe_001NFE_TRIBESTADUAL: TIBBCDField;
    nfe_001NFE_TRIBMUNICIPAL: TIBBCDField;
    nfe_001NFE_TRIBIPI: TIBBCDField;
    nfe_001NFE_MVA: TIBBCDField;
    nfe_001NFE_QTRIB: TIBBCDField;
    nfe_001NFE_VUNTRIB: TFloatField;
    dbgnfeNFE_UTRIB: TdxDBGridMaskColumn;
    dbgnfeNFE_QTRIB: TdxDBGridCurrencyColumn;
    dbgnfeNFE_VUNTRIB: TdxDBGridMaskColumn;
    dbgnfeNFE_VFRETE: TdxDBGridCurrencyColumn;
    dbgnfeNFE_VSEG: TdxDBGridCurrencyColumn;
    dbgnfeNFE_VOUTRO: TdxDBGridCurrencyColumn;
    GBDescricao: TGroupBox;
    DBDescricao: TdxDBEdit;
    GBFavEnd: TGroupBox;
    PCEndereco: TdxPageControl;
    TSEC: TdxTabSheet;
    BVEC: TBevel;
    LAxLgr: TLabel;
    LACep: TLabel;
    LAcMun: TLabel;
    LANRO: TLabel;
    LAxMun: TLabel;
    LAxBairro: TLabel;
    LAUF: TLabel;
    PETxLgr: TdxPickEdit;
    EDxLgr: TdxMaskEdit;
    EDCep: TdxMaskEdit;
    PEcMun: TdxPickEdit;
    EDNRO: TdxMaskEdit;
    EDxCpl: TdxMaskEdit;
    EDxMun: TdxMaskEdit;
    EDxBairro: TdxMaskEdit;
    PEUF: TdxPickEdit;
    IExPais: TdxImageEdit;
    TSEE: TdxTabSheet;
    BVEE: TBevel;
    TSER: TdxTabSheet;
    BVER: TBevel;
    LAxCpl: TLabel;
    PNLFavFicha: TPanel;
    GBFicha: TGroupBox;
    LAxNome: TLabel;
    LACNPJ: TLabel;
    Label5: TLabel;
    LARegime: TLabel;
    LAindFinal: TLabel;
    LACredICMS: TLabel;
    LAIE: TLabel;
    LACPF: TLabel;
    LAISUF: TLabel;
    LAidEstrangeiro: TLabel;
    EDxNome: TdxMaskEdit;
    EDCNPJ: TdxMaskEdit;
    PEIE: TdxPickEdit;
    IEindIEDest: TdxImageEdit;
    IERegime: TdxImageEdit;
    IEindFinal: TdxImageEdit;
    IECredICMS: TdxImageEdit;
    EDCPF: TdxMaskEdit;
    EDISUF: TdxMaskEdit;
    EDidEstrangeiro: TdxMaskEdit;
    LAExLgr: TLabel;
    PEETxLgr: TdxPickEdit;
    EDExLgr: TdxMaskEdit;
    LAENRO: TLabel;
    EDENRO: TdxMaskEdit;
    LAExCpl: TLabel;
    EDExCpl: TdxMaskEdit;
    LAECep: TLabel;
    EDECep: TdxMaskEdit;
    LAEcMun: TLabel;
    PEEcMun: TdxPickEdit;
    LAExBairro: TLabel;
    EDExBairro: TdxMaskEdit;
    LAExMun: TLabel;
    EDExMun: TdxMaskEdit;
    LAEUF: TLabel;
    PEEUF: TdxPickEdit;
    IEExPais: TdxImageEdit;
    LARxLgr: TLabel;
    PERTxLgr: TdxPickEdit;
    EDRxLgr: TdxMaskEdit;
    LARNRO: TLabel;
    EDRNRO: TdxMaskEdit;
    LARxCpl: TLabel;
    EDRxCpl: TdxMaskEdit;
    LARCep: TLabel;
    EDRCep: TdxMaskEdit;
    LARcMun: TLabel;
    PERcMun: TdxPickEdit;
    LARxBairro: TLabel;
    EDRxBairro: TdxMaskEdit;
    LARxMun: TLabel;
    EDRxMun: TdxMaskEdit;
    LARUF: TLabel;
    PERUF: TdxPickEdit;
    IERxPais: TdxImageEdit;
    EDRCNPJOUCPF: TdxMaskEdit;
    LARCNPJOUCPF: TLabel;
    EDECNPJOUCPF: TdxMaskEdit;
    LAECNPJOUCPF: TLabel;
    PNLTFicha: TPanel;
    GBTravEnd: TGroupBox;
    Label17: TLabel;
    PETTxLgr: TdxPickEdit;
    EDTxLgr: TdxMaskEdit;
    Label20: TLabel;
    EDTNRO: TdxMaskEdit;
    Label26: TLabel;
    EDTxCpl: TdxMaskEdit;
    Label18: TLabel;
    EDTCep: TdxMaskEdit;
    Label22: TLabel;
    EDTxBairro: TdxMaskEdit;
    Label21: TLabel;
    EDTxMun: TdxMaskEdit;
    Label25: TLabel;
    PETUF: TdxPickEdit;
    GBTFicha: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    EDTxNome: TdxMaskEdit;
    EDTCNPJ: TdxMaskEdit;
    PETIE: TdxPickEdit;
    EDTCPF: TdxMaskEdit;
    EDTRG: TdxMaskEdit;
    GBTInfAd: TGroupBox;
    cad_cli: TIBQuery;
    cad_cliID: TIntegerField;
    cad_cliCLI_FANT: TIBStringField;
    cad_cliCLI_RAZA: TIBStringField;
    cad_cliCLI_CNPJ: TIBStringField;
    cad_cliCLI_INSC: TIBStringField;
    cad_cliCLI_CPF: TIBStringField;
    cad_cliCLI_RG: TIBStringField;
    cad_cliCLI_CCM: TIBStringField;
    cad_cliCLI_MAIL: TIBStringField;
    cad_cliCLI_RICM: TIBStringField;
    cad_cliCLI_CICM: TIBStringField;
    cad_cliCLI_DDD: TIBStringField;
    cad_cliCLI_TEL1: TIBStringField;
    cad_cliCLI_TLOG: TIBStringField;
    cad_cliCLI_LOGR: TIBStringField;
    cad_cliCLI_NUME: TIBStringField;
    cad_cliCLI_COMP: TIBStringField;
    cad_cliCLI_CEP: TIBStringField;
    cad_cliCLI_BAI: TIBStringField;
    cad_cliCLI_CID: TIBStringField;
    cad_cliCLI_ESTA: TIBStringField;
    cad_cliCLI_CMUN: TIBStringField;
    cad_cliCLI_TLOV: TIBStringField;
    cad_cliCLI_LOGV: TIBStringField;
    cad_cliCLI_NUMV: TIBStringField;
    cad_cliCLI_COMV: TIBStringField;
    cad_cliCLI_CEPV: TIBStringField;
    cad_cliCLI_BAIV: TIBStringField;
    cad_cliCLI_CIDV: TIBStringField;
    cad_cliCLI_ESTV: TIBStringField;
    cad_cliCLI_CMUV: TIBStringField;
    cad_cliCLI_DPAG: TIBStringField;
    dtscad_cli: TDataSource;
    psq_cli: TIBQuery;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_LOGR: TIBStringField;
    psq_cliCLI_NUME: TIBStringField;
    psq_cliCLI_CEP: TIBStringField;
    psq_cliCLI_COMP: TIBStringField;
    psq_cliCLI_ESTA: TIBStringField;
    psq_cliCLI_STA: TIBStringField;
    psq_cliCLI_STAV: TIBStringField;
    psq_cliCLI_DPAG: TIBStringField;
    psq_cliCLI_VDSC: TIBBCDField;
    psq_cliCLI_DCAD: TDateField;
    psq_cliCLI_DFUN: TDateField;
    psq_cliCLI_DALT: TDateField;
    psq_cliCLI_DULT: TDateField;
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliREP_FANT: TIBStringField;
    psq_cliUSU_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_VULT: TIBBCDField;
    psq_cliCLI_DUSU: TIBStringField;
    cad_for: TIBQuery;
    cad_forID: TIntegerField;
    cad_forFOR_FANT: TIBStringField;
    cad_forFOR_RAZA: TIBStringField;
    cad_forFOR_CNPJ: TIBStringField;
    cad_forFOR_INSC: TIBStringField;
    cad_forFOR_CPF: TIBStringField;
    cad_forFOR_RG: TIBStringField;
    cad_forFOR_MAIL: TIBStringField;
    cad_forFOR_RICM: TIBStringField;
    cad_forFOR_CICM: TIBStringField;
    cad_forFOR_DDD: TIBStringField;
    cad_forFOR_TEL1: TIBStringField;
    cad_forFOR_TLOG: TIBStringField;
    cad_forFOR_LOGR: TIBStringField;
    cad_forFOR_NUME: TIBStringField;
    cad_forFOR_COMP: TIBStringField;
    cad_forFOR_CEP: TIBStringField;
    cad_forFOR_BAI: TIBStringField;
    cad_forFOR_CID: TIBStringField;
    cad_forFOR_ESTA: TIBStringField;
    cad_forFOR_CMUN: TIBStringField;
    cad_forFOR_TLOV: TIBStringField;
    cad_forFOR_LOGV: TIBStringField;
    cad_forFOR_NUMV: TIBStringField;
    cad_forFOR_COMV: TIBStringField;
    cad_forFOR_CEPV: TIBStringField;
    cad_forFOR_BAIV: TIBStringField;
    cad_forFOR_CIDV: TIBStringField;
    cad_forFOR_ESTV: TIBStringField;
    cad_forFOR_CMUV: TIBStringField;
    dtscad_for: TDataSource;
    cad_cliCLI_CONT: TIBStringField;
    cad_cliCLI_OBSE: TIBStringField;
    cad_cliCLI_OBSO: TIBStringField;
    cad_forFOR_CCM: TIBStringField;
    cad_forFOR_CONT: TIBStringField;
    cad_forFOR_DPAG: TIBStringField;
    cad_forFOR_OBSE: TIBStringField;
    cad_forFOR_OBSO: TIBStringField;
    GBContatos: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    EDFone: TdxMaskEdit;
    EDDDD: TdxMaskEdit;
    PEEmail: TdxPickEdit;
    EDContato: TdxMaskEdit;
    GBTContatos: TGroupBox;
    Label7: TLabel;
    Label13: TLabel;
    EDTFone: TdxMaskEdit;
    EDTDDD: TdxMaskEdit;
    PETEmail: TdxPickEdit;
    EDTContato: TdxMaskEdit;
    EDTInfAd: TdxMemo;
    GBTVeiculo: TGroupBox;
    PETCarro: TdxPickEdit;
    Label8: TLabel;
    EDTRNTC: TdxMaskEdit;
    LARNTC: TLabel;
    PETPlaca: TdxPickEdit;
    Label39: TLabel;
    LAUFPlaca: TLabel;
    PETUFPlaca: TdxPickEdit;
    EDTFantasia: TdxMaskEdit;
    Label15: TLabel;
    GBInfAdC: TGroupBox;
    EDInfAdC: TdxMemo;
    GBInfAdF: TGroupBox;
    EDInfAdF: TdxMemo;
    EDvICMSUFDest: TdxMaskEdit;
    nfe_001NFE_STAV: TIBStringField;
    nfe_001NFE_INFADTRIB: TIBStringField;
    psq_forID: TIntegerField;
    psq_forFOR_FANT: TIBStringField;
    psq_forFOR_RAZA: TIBStringField;
    psq_forFOR_CNPJ: TIBStringField;
    psq_forFOR_CPF: TIBStringField;
    psq_forFOR_CRED: TIBBCDField;
    psq_forFOR_CID: TIBStringField;
    psq_forFOR_BAI: TIBStringField;
    psq_forFOR_TLOG: TIBStringField;
    psq_forFOR_LOGR: TIBStringField;
    psq_forFOR_NUME: TIBStringField;
    psq_forFOR_CEP: TIBStringField;
    psq_forFOR_COMP: TIBStringField;
    psq_forFOR_ESTA: TIBStringField;
    psq_forFOR_STA: TIBStringField;
    psq_forFOR_STAV: TIBStringField;
    psq_forFOR_DPAG: TIBStringField;
    psq_forFOR_VDSC: TIBBCDField;
    psq_forFOR_DCAD: TDateField;
    psq_forFOR_DFUN: TDateField;
    psq_forFOR_DALT: TDateField;
    psq_forFOR_DULT: TDateField;
    psq_forFOR_VULT: TIBBCDField;
    psq_forFOR_DDD: TIBStringField;
    psq_forFOR_TEL1: TIBStringField;
    psq_forREP_FANT: TIBStringField;
    psq_forUSU_DUSU: TIBStringField;
    psq_forFOR_STPD: TSmallintField;
    psq_forFOR_DTRA: TIBStringField;
    psq_forFOR_DUSU: TIBStringField;
    PCTransporte: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    Label23: TLabel;
    Label24: TLabel;
    Label51: TLabel;
    Label85: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label87: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edctra: TdxMaskEdit;
    cbdtra: TdxPickEdit;
    edesp: TdxEdit;
    edqvol: TdxEdit;
    edmarca: TdxEdit;
    ednvol: TdxEdit;
    IEModFrete: TdxImageEdit;
    CEPesoB: TdxCurrencyEdit;
    CEPesoL: TdxCurrencyEdit;
    EDNLacres1: TdxEdit;
    EDNLacres2: TdxEdit;
    CEVFrete: TdxCurrencyEdit;
    CEVSeg: TdxCurrencyEdit;
    DBGSFrete: TdxDBGrid;
    DBGSFreteLOG_TRANSPORTADORA: TdxDBGridMaskColumn;
    DBGSFreteLOG_DESTINO: TdxDBGridMaskColumn;
    DBGSFreteLOG_PRAZO: TdxDBGridMaskColumn;
    DBGSFreteLOG_VFRETE: TdxDBGridCurrencyColumn;
    psq_cliCLI_OBSO: TIBStringField;
    psq_forFOR_OBSO: TIBStringField;
    edfatu: TdxMaskEdit;
    Label16: TLabel;
    edvFCPUFDest: TdxMaskEdit;
    IEEnvMail: TdxImageEdit;
    Label19: TLabel;
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
    tab_pagPAG_D011: TIntegerField;
    tab_pagPAG_D012: TIntegerField;
    tab_pagPAG_D013: TIntegerField;
    tab_pagPAG_D014: TIntegerField;
    tab_pagPAG_D015: TIntegerField;
    tab_pagPAG_D016: TIntegerField;
    tab_pagPAG_D017: TIntegerField;
    tab_pagPAG_D018: TIntegerField;
    tab_pagPAG_D019: TIntegerField;
    tab_pagPAG_D020: TIntegerField;
    tab_pagPAG_PARC: TSmallintField;
    tab_pagPAG_PRAZ: TSmallintField;
    tab_pagPAG_DUPL: TIBStringField;
    tab_pagPAG_STA: TIBStringField;
    nfe_001NFE_CDEP: TSmallintField;
    nfe_001NFE_VI18: TIBBCDField;
    dbgnfeNFE_VBCST: TdxDBGridCurrencyColumn;
    dbgnfeNFE_PICMSST: TdxDBGridCurrencyColumn;
    dbgnfeNFE_VICMSST: TdxDBGridCurrencyColumn;
    dbgnfeNFE_EXTIPI: TdxDBGridMaskColumn;
    dbgnfeNFE_CEST: TdxDBGridMaskColumn;
    dbgnfeNFE_NFCI: TdxDBGridMaskColumn;
    tab_alqID: TIntegerField;
    tab_alqUF: TIBStringField;
    tab_alqDESCRICAO: TIBStringField;
    tab_alqPICMS: TIBBCDField;
    tab_alqPFCP: TIBBCDField;
    tab_alqALQ_ESTA: TIBStringField;
    tab_alqALQ_DESC: TIBStringField;
    tab_alqALQ_MEI: TSmallintField;
    tab_alqALQ_UFORIGEM: TIBStringField;
    tab_alqALQ_UFDESTINO: TIBStringField;
    tab_alqALQ_ICMS: TIBBCDField;
    tab_alqALQ_ICMO: TIBBCDField;
    tab_alqALQ_ICMD: TIBBCDField;
    tab_alqALQ_ICMI: TIBBCDField;
    tab_alqALQ_ICME: TIBBCDField;
    tab_alqALQ_STMENSAGEM: TIBStringField;
    tab_alqALQ_STARTIGO: TIBStringField;
    tab_alqALQ_STPROTOCOLO: TIBStringField;
    tab_alqALQ_FCP: TIBBCDField;
    tab_alqFLAG: TSmallintField;
    tab_natID: TIntegerField;
    tab_natCFOP: TIBStringField;
    tab_natCFOP_CONTRA: TIBStringField;
    tab_natDESCRICAO: TIBStringField;
    tab_natFINALIDADE: TIBStringField;
    tab_natFAPD: TSmallintField;
    tab_natTIPO: TIBStringField;
    tab_natTPNF: TSmallintField;
    tab_natCSOSN: TIBStringField;
    tab_natCST_ICMS: TIBStringField;
    tab_natCST_IPI_ENT: TIBStringField;
    tab_natCST_IPI_SAI: TIBStringField;
    tab_natCENQ: TIBStringField;
    tab_natCST_PIS: TIBStringField;
    tab_natPPIS: TIBBCDField;
    tab_natPPIS_REAL: TIBBCDField;
    tab_natCST_COFINS: TIBStringField;
    tab_natPCOFINS: TIBBCDField;
    tab_natPCOFINS_REAL: TIBBCDField;
    tab_natINFADCAD: TMemoField;
    tab_natIP: TIBStringField;
    tab_natHOST: TIBStringField;
    tab_natFLAG: TSmallintField;
    tab_natNAT_CNAT: TIBStringField;
    tab_natNAT_DNAT: TIBStringField;
    tab_natNAT_TIPO: TIBStringField;
    tab_natNAT_OPER: TIBStringField;
    tab_natNAT_CCST: TIBStringField;
    tab_natNAT_CSTS: TIBStringField;
    tab_natNAT_CSTA: TIBStringField;
    tab_natNAT_BIPI: TIBStringField;
    tab_natNAT_FRET: TIBStringField;
    tab_natNAT_MATE: TIBStringField;
    tab_natNAT_PENF: TIBBCDField;
    tab_natNAT_CSTI: TIBStringField;
    tab_natNAT_CSTP: TIBStringField;
    tab_natNAT_PIPP: TIBBCDField;
    tab_natNAT_CSTC: TIBStringField;
    tab_natNAT_PIPC: TIBBCDField;
    tab_natNAT_STA: TIBStringField;
    tab_natNAT_INDT: TIBStringField;
    tab_natNAT_CFOP: TIBStringField;
    tab_natNAT_INV: TIBStringField;
    tab_natNAT_FATU: TIBStringField;
    tab_natIPISEME: TIBStringField;
    tab_natIPISEMS: TIBStringField;
    tab_natNAT_OBSE: TMemoField;
    tab_natNAT_TPNF: TIBStringField;
    tab_natNAT_REDBC: TIBBCDField;
    SQLSEdicao: TIBSQL;
    SQLSPKEdicao: TIBSQL;
    SQLConsulta: TIBSQL;
    SQLPKConsulta: TIBSQL;
    nfe_001NFE_VBCCREDICMSSN: TIBBCDField;
    nfe_001NFE_CDRO: TLargeintField;
    nfe_001NFE_DERO: TIBStringField;
    nfe_001NFE_CDBX: TLargeintField;
    nfe_001CP_IDEP: TSmallintField;
    nfe_001IDAK: TLargeintField;
    nfe_001IDEK: TLargeintField;
    nfe_001UCDBE: TIBStringField;
    nfe_001UQTRL: TSmallintField;
    nfe_001UQTMD: TIBBCDField;
    nfe_001UPSBR: TIBBCDField;
    nfe_001UPSLQ: TIBBCDField;
    nfe_001IP: TIBStringField;
    nfe_001HOST: TIBStringField;
    nfe_001FLAG: TIntegerField;
    nfe_001COL_ID: TSmallintField;
    nfe_001COL_DESC: TIBStringField;
    nfe_001CAT_ID: TSmallintField;
    nfe_001CAT_DESC: TIBStringField;
    nfe_001CF_ID: TSmallintField;
    nfe_001CF_FANTASIA: TIBStringField;
    nfe_001CF_RAZAO: TIBStringField;
    nfe_001CF_CNPJ: TIBStringField;
    nfe_001CF_CDPD: TLargeintField;
    nfe_001CF_DEPD: TIBStringField;
    nfe_001CF_CDNF: TLargeintField;
    nfe_001CF_SKU: TIBStringField;
    nfe_001CF_CEAN: TIBStringField;
    nfe_001CF_DECP: TIBStringField;
    nfe_001CF_UCOM: TIBStringField;
    nfe_001CF_UESP_RF: TIBStringField;
    nfe_001CF_UESP_QT: TIBBCDField;
    nfe_001CF_VPRC_PAD_ORI: TIBStringField;
    nfe_001CF_VPRC_PAD: TFloatField;
    nfe_001CF_VPRC_COM: TFloatField;
    nfe_001CF_PIPI: TIBBCDField;
    nfe_001IS_PDSC: TSmallintField;
    nfe_001UPRC_PAD: TIBBCDField;
    nfe_001IDEV: TLargeintField;
    nfe_001CDEV: TSmallintField;
    nfe_001MAO_OBRA: TSmallintField;
    dbgnfeMAO_OBRA: TdxDBGridMaskColumn;
    nfe_001NFE_IS_CSTIS: TIBStringField;
    nfe_001NFE_IS_CCLASSTRIBIS: TIBStringField;
    nfe_001NFE_IS_VBCIS: TIBBCDField;
    nfe_001NFE_IS_PIS: TIBBCDField;
    nfe_001NFE_IS_PISESPEC: TIBBCDField;
    nfe_001NFE_IS_VIS: TIBBCDField;
    nfe_001NFE_IS_UTRIB: TIBStringField;
    nfe_001NFE_IS_QTRIB: TIBBCDField;
    nfe_001NFE_IBSCBS_CSTIS: TIBStringField;
    nfe_001NFE_IBSCBS_CCLASSTRIBIS: TIBStringField;
    nfe_001NFE_IBSCBS_INDDOACAO: TIBStringField;
    nfe_001NFE_IBSCBS_VBCIBSCBS: TIBBCDField;
    nfe_001NFE_IBSCBS_VIBSCBS: TIBBCDField;
    nfe_001NFE_IBSUF_VBCIBSUF: TIBBCDField;
    nfe_001NFE_IBSUF_PIBSUF: TIBBCDField;
    nfe_001NFE_IBSUF_VIBSUF: TIBBCDField;
    nfe_001NFE_IBSUF_PDIF: TIBBCDField;
    nfe_001NFE_IBSUF_VDIF: TIBBCDField;
    nfe_001NFE_IBSUF_VDEVTRIB: TIBBCDField;
    nfe_001NFE_IBSMUN_VBCIBSMUN: TIBBCDField;
    nfe_001NFE_IBSMUN_PIBSMUN: TIBBCDField;
    nfe_001NFE_IBSMUN_VIBSMUN: TIBBCDField;
    nfe_001NFE_IBSMUN_PDIF: TIBBCDField;
    nfe_001NFE_IBSMUN_VDIF: TIBBCDField;
    nfe_001NFE_IBSMUN_VDEVTRIB: TIBBCDField;
    nfe_001NFE_IBSMUN_VCREDPRES: TIBBCDField;
    nfe_001NFE_IBSMUN_VCREDPRESCONDSUS: TIBBCDField;
    nfe_001NFE_CBS_VBCCBS: TIBBCDField;
    nfe_001NFE_CBS_PCBS: TIBBCDField;
    nfe_001NFE_CBS_VCBS: TIBBCDField;
    nfe_001NFE_CBS_PDIF: TIBBCDField;
    nfe_001NFE_CBS_VDIF: TIBBCDField;
    nfe_001NFE_CBS_VDEVTRIB: TIBBCDField;
    nfe_001NFE_CBS_VCREDPRES: TIBBCDField;
    nfe_001NFE_CBS_VCREDPRESCONDSUS: TIBBCDField;
    Label27: TLabel;
    EDNFE_CBS_VBCCBS: TdxMaskEdit;
    Label28: TLabel;
    EDNFE_CBS_VCBS: TdxMaskEdit;
    Label32: TLabel;
    EDNFE_IBSMUN_VBCMUN: TdxMaskEdit;
    Label33: TLabel;
    EDNFE_IBSMUN_VIBSMUN: TdxMaskEdit;
    Label34: TLabel;
    EDNFE_IBSCBS_VBCIBSCBS: TdxMaskEdit;
    EDNFE_IBSUF_VBCIBSUF: TdxMaskEdit;
    Label36: TLabel;
    Label37: TLabel;
    EDNFE_IBSUF_VIBSUF: TdxMaskEdit;
    tab_natNAT_CSTI0: TIBStringField;
    tab_natCSTIS: TIBStringField;
    tab_natCCLASSTRIBIS: TIBStringField;
    tab_natPIS: TIBBCDField;
    tab_natPISESPEC: TIBBCDField;
    tab_natCSTCBS: TIBStringField;
    tab_natCCLASSTRIBCBS: TIBStringField;
    tab_natPCBS: TIBBCDField;
    tab_natINDDOACAO: TIBStringField;
    nfe_001NFE_VSERV: TIBBCDField;
    nfe_001NFE_VII: TIBBCDField;
    nfe_001NFE_VICMSMONO: TIBBCDField;
    nfe_001NFE_VNFTOT: TIBBCDField;
    nfe_001NFE_ISSQN_VISSQN: TIBBCDField;
    EDNFE_VNFTOT: TdxMaskEdit;
    tab_natCBENEF: TIBStringField;
    tab_natCBENEF_RBC: TIBStringField;
    nfe_001NFE_CBENEF_RBC: TIBStringField;
    dbgnfeNFE_CBENEF: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure LACFavClick(Sender: TObject);
    procedure siINCClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siCANClick(Sender: TObject);
    procedure siSAVClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure nfe_001AfterCancel(DataSet: TDataSet);
    procedure nfe_001AfterDelete(DataSet: TDataSet);
    procedure nfe_001AfterOpen(DataSet: TDataSet);
    procedure nfe_001AfterPost(DataSet: TDataSet);
    procedure nfe_001BeforeCancel(DataSet: TDataSet);
    procedure nfe_001NewRecord(DataSet: TDataSet);
    procedure edcfavValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure cad_cliAfterOpen(DataSet: TDataSet);
    procedure cbduplChange(Sender: TObject);
    procedure dup_001AfterPost(DataSet: TDataSet);
    procedure dup_001AfterDelete(DataSet: TDataSet);
    procedure dup_001AfterEdit(DataSet: TDataSet);
    procedure dup_001NewRecord(DataSet: TDataSet);
    procedure BValClick(Sender: TObject);
    procedure cbdpagExit(Sender: TObject);
    procedure BFAVClick(Sender: TObject);
    procedure dbgnfeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTraClick(Sender: TObject);
    procedure BVisClick(Sender: TObject);
    procedure BPriClick(Sender: TObject);
    procedure BEnvClick(Sender: TObject);
    procedure eddfavValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDidEstrangeiroValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cli_001AfterCancel(DataSet: TDataSet);
    procedure cli_001AfterDelete(DataSet: TDataSet);
    procedure cli_001AfterEdit(DataSet: TDataSet);
    procedure cli_001AfterInsert(DataSet: TDataSet);
    procedure cli_001AfterOpen(DataSet: TDataSet);
    procedure cli_001AfterPost(DataSet: TDataSet);
    procedure cli_001BeforeCancel(DataSet: TDataSet);
    procedure cli_001NewRecord(DataSet: TDataSet);
    procedure cli_001BeforePost(DataSet: TDataSet);
    procedure siICLClick(Sender: TObject);
    procedure siDCLClick(Sender: TObject);
    procedure siSCLClick(Sender: TObject);
    procedure siCCLClick(Sender: TObject);
    procedure siACLClick(Sender: TObject);
    procedure siIDUClick(Sender: TObject);
    procedure siDDUClick(Sender: TObject);
    procedure siSDUClick(Sender: TObject);
    procedure siCDUClick(Sender: TObject);
    procedure siADUClick(Sender: TObject);
    procedure dup_001BeforeCancel(DataSet: TDataSet);
    procedure nfe_001NFE_CFOPValidate(Sender: TField);
    procedure nfe_001BeforePost(DataSet: TDataSet);
    procedure dbgnfeDblClick(Sender: TObject);
    procedure dbgnfeCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BNFeClick(Sender: TObject);
    procedure cbdtraValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure BAssClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IEFinNFeChange(Sender: TObject);
    procedure IEModFreteExit(Sender: TObject);
    procedure LATDescClick(Sender: TObject);
    procedure EDTDescValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edespValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcdnfValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcdnfKeyPress(Sender: TObject; var Key: Char);
    procedure nfe_001NFE_CSTIPIValidate(Sender: TField);
    procedure CEPesoBChange(Sender: TObject);
    procedure CEPesoBEnter(Sender: TObject);
    procedure CEPesoBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CEPesoBKeyPress(Sender: TObject; var Key: Char);
    procedure CEPesoBValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEPesoLChange(Sender: TObject);
    procedure CEPesoLEnter(Sender: TObject);
    procedure CEPesoLKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CEPesoLKeyPress(Sender: TObject; var Key: Char);
    procedure CEPesoLValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbcnatValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DEdhSaiEntDblClick(Sender: TObject);
    procedure dbgnfeNFE_QCOMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgnfeNFE_VUNCOMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure nfe_001AfterEdit(DataSet: TDataSet);
    procedure nfe_001AfterInsert(DataSet: TDataSet);
    procedure dbgnfeNFE_VICMSValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgnfeNFE_VBCValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dbgnfeNFE_PICMSValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgnfeNFE_VBCIPIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgnfeNFE_PIPIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure dbgnfeNFE_VIPIValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure siCGEClick(Sender: TObject);
    procedure dbgnfeNFE_VPRODValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure IEindIEDestChange(Sender: TObject);
    procedure cbcnatChange(Sender: TObject);
    procedure cad_forAfterOpen(DataSet: TDataSet);
    procedure nfe_001NFE_UCOMValidate(Sender: TField);
    procedure nfe_001NFE_NCMValidate(Sender: TField);
    procedure nfe_001NFE_VPRODValidate(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CEVFreteValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVSegValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDInfAdFKeyPress(Sender: TObject; var Key: Char);
    procedure EDTQComKeyPress(Sender: TObject; var Key: Char);
    procedure LAXPedClick(Sender: TObject);
    procedure IEindFinalChange(Sender: TObject);
    procedure nfe_001NFE_PIPIValidate(Sender: TField);
    procedure edcdroValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dtsnfe_001DataChange(Sender: TObject; Field: TField);
    procedure dbgcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FrmStyle   : TFormStyle;
    FrmPosition: TPosition;
    InfAd      : TStringList;

    procedure ATUALIZA_MENSAGENS;

    procedure SALVA_NF;

    function  GERA_LOTE: boolean;
    function  GERA_NFE: Boolean;
  public
    { Public declarations }
    NewORIG,NewNCM,NewPICMS,NewVBC,NewCSTIPI,NewPIPI,NewVBCIPI,NewVBCPIS,NewVBCCOFINS,NewCST,NewString,NewNota,NewData: string;
    ClickedOK: Boolean;
    procedure PESQUISA_PRODUTO(campo,cpro:string);
    procedure ENVIA_EMAIL;
    procedure GERA_DANFE;
    procedure PESQUISA_TRANSPORTADORA(pesq,chave: string);
    procedure PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
    procedure PESQUISA_FORNECEDOR(pesq,chave: string;cdsc: double);
    procedure PESQUISA_NATUREZA(pesq,chave: string);
    procedure CALCULA_NF;
    procedure CALCULA_MAO_OBRA;
    procedure CALCULA_FRETE;
    procedure CALCULA_SEGURO;
    procedure DUPLICATAS;
    procedure EDITAR;
    procedure VALIDAR;
    function  RETORNA_TITULO: string;
  end;

var
  frmven_nfe: Tfrmven_nfe;
  pathRet,chave,protocolo: ShortString;
  BCalc: boolean;

implementation

uses uPrincipal, bDados,
  pcad_cli, pcad_for, pven_npr, pemail, pctr_rom, pven_rom,
  pctr_nfe, pimporta_geral, qrom_con_001, pcad_pro_con;

{$R *.dfm}

procedure Tfrmven_nfe.FormCreate(Sender: TObject);
begin
  if Screen.Width <= 1366 then
  begin
    FrmPrincipal.pnCustomize.Visible := False;
    if FrmPrincipal.pnbot.Visible then
    begin
      FrmPrincipal.pnbot.Visible := False;
      FrmPrincipal.pnbot.Tag     := 1;
    end;
  end;

  Screen.Cursor  := crAppStart;
  InfAd := TStringList.Create;

  edcdnf.Tag  := bRETNotaFiscal;
  edcdnf.Text := oStrZero(edcdnf.Tag,6);
  BCalc       := True;

  DEdhEmi.Date    := RECParametros.DTServidor;
  DEdhSaiEnt.Date := RECParametros.DTServidor;

  oOTransact(TSheild);
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_ITE');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM NFE_DUP');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM NFE_CLI');
    ExecSQL;
  end;
  oRTransact(TSheild);

  oOTransact(IBTra);
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CPAIS,XPAIS FROM TAB_PAIS');
    SQL.Add('ORDER BY 2');
    Open;
    while not eof do
    begin
      IExPais.Values.Add(Fields[0].AsString);
      IExPais.Descriptions.Add(Fields[1].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   NAT_CNAT FROM TAB_NAT');
    SQL.Add('ORDER BY NAT_CNAT');
    Open;
    while not eof do
    begin
      cbcnat.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   TRA_FANT FROM CAD_TRA');
    SQL.Add('WHERE    TRA_STAV = ''A''');
    SQL.Add('ORDER BY TRA_FANT');
    Open;
    while not eof do
    begin
      cbdtra.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   PAG_DPAG FROM TAB_PAG');
    SQL.Add('ORDER BY PAG_DPAG');
    Open;
    while not eof do
    begin
      cbdpag.Descriptions.Add(fields[0].AsString);
      cbdpag.Values.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmven_nfe.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  { Herança }
  FrmStyle    := FormStyle;
  FrmPosition := Position;
end;

procedure Tfrmven_nfe.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
  try
    with pEVE do
    begin
      UnregisterEvents;
      Events.Add('NFE_CAB');
      Events.Add(oREPZero('CTR_PED','_',RECParametros.Id,3));
      RegisterEvents;
    end;
  except
    on E: Exception do
    oErro(Handle,'Falha ao tentar registrar evento: Pedidos !' +#13+
                 'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                 'Erro: '+E.Message);
  end;

  edcfav.Enabled := not (edcdro.Text <> '0');
  eddfav.Enabled := not (edcdro.Text <> '0');
  cbcnat.Enabled := not (edcdro.Text <> '0');
end;

procedure Tfrmven_nfe.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if edcdro.Text = '0' then
  begin
    if (nfe_001.State in [dsInsert,dsEdit]) and (not oEmpty(nfe_001NFE_VPROD.AsFloat)) then
    nfe_001.Post;

    if nfe_001.RecNo > 0 then
    case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                           'Confirma Saída ?',
                           PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
         mrCancel: Abort;
         mrNo    : Abort;
    end;
  end;
end;

procedure Tfrmven_nfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  pEVE.UnRegisterEvents;
  
  try oFTransact(IBTra);
  finally Action := caFree;
  end;
end;

procedure Tfrmven_nfe.FormDestroy(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  Frmven_nfe    := Nil;
  InfAd.Free;

  if Assigned(frmven_rom) then
     frmven_rom.Close;
end;

procedure Tfrmven_nfe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TDBMemo)   and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdbGrid)   and
                      not (ActiveControl is TMemo)) then
                  SelectNext(ActiveControl, true, true);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TDBMemo)      and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TdbGrid)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, true, true);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TDBMemo)      and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TdbGrid)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, false, true);
  end;
end;

procedure Tfrmven_nfe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  {[Ctrl+I]} else
  if key = #19 then
  begin
    if oYesNo(handle,'Salvar NF ?') = mrYes then
    SALVA_NF;

    oAviso(self.handle,'NF Salva com Sucesso !');
    Close;
  end else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure Tfrmven_nfe.FormPaint(Sender: TObject);
var
  R: TRect;
begin
  if (Showing) and ((HelpContext = 0) or (HelpContext = 1)) then
  begin
    { Definição sobre o Painel de utilitários do form principal }
    FrmPrincipal.PNBot.Visible := (Screen.Height > 768);
    HelpContext := IFThen((Screen.Width > 1280),0,1);

    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,R);

    if Screen.Width <= 1280 then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
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

procedure Tfrmven_nfe.FormResize(Sender: TObject);
begin
  if frmven_nfe <> Nil then
  Paint;
end;

procedure Tfrmven_nfe.BValClick(Sender: TObject);
var
  sWarning: String;
begin
  if bval.ImageIndex = 0 then
  begin
    if IEFinNFe.Text <> '2' then
    begin
      if dup_001.State in [dsEdit,dsInsert] then
         if dup_001NFE_VDUP.AsFloat > 0 then
         dup_001.Post else dup_001.Cancel;
      dup_001.First;

      if nfe_001.State in [dsEdit,dsInsert] then
         if nfe_001NFE_VPROD.AsFloat > 0 then
         nfe_001.Post else nfe_001.Cancel;

      sWarning := '';
      try
        nfe_001.DisableControls;
        nfe_001.First;
        while not nfe_001.Eof do
        begin
          if nfe_001NFE_QCOM.AsFloat   = 0 then sWarning := 'Quantidade não Informada !';
          if nfe_001NFE_VUNCOM.AsFloat = 0 then sWarning := 'Valor Unitário não Informado !';
          if (oEmpty(nfe_001NFE_NFCI.AsString)) and
             (nfe_001NFE_ORIG.AsString = '5') and (nfe_001NFE_CST.AsString = '00') then sWarning := 'FCI não Informado !';

          if not oEmpty(sWarning) then
          begin
            sWarning := sWarning +#13+'Item: '+nfe_001NFE_ITEMPED.AsString;
            Break;
          end;

          nfe_001.Next;
        end;
      finally

        nfe_001.EnableControls;
        if not oEmpty(sWarning) then
           if (nfe_001NFE_ORIG.AsString = '5') and (nfe_001NFE_CST.AsString = '00') then
               oErro(handle,sWarning)
           else
               oException(DBGNFE,sWarning);
        nfe_001.First;

      end;

      ActiveControl := Nil;

      if oEmpty(cbdnat.Text) then
      begin
        Editar;
        oException(cbcnat,'CFOP não Informado ou Incorreto !');
      end;

      if not uPSQNotaFiscal(edcdnf.Text) then
      begin
        Editar;
        oException(cbdupl,'Novo Número Selecionado !'+#13+
                          'Nota Fiscal: '+IntToStr(bRETNotaFiscal));
      end;

      if not dup_001.Fields[0].IsNull then
         if dup_001NFE_CDNF.AsInteger <> strtoint(edcdnf.Text) then
         begin
           Editar;
           oException(edcdnf,'Número da duplicata incorreto !'+#13+
                             'Favor refazer a duplicata.');
         end;

      if edcdro.Text <> '0' then
      with Consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ROM_STCO FROM '+SLPrincipal.Values['rom_cab']);
        SQL.Add('WHERE  ID = '''+edcdro.Text+'''');
        Open;
        if (fields[0].AsString = 'BANCÁRIO') and (dup_001.Fields[0].IsNull) then
        begin
          Editar;
          oException(cbdupl,'Nota Fiscal sem Duplicata(s) Registrada(s) !');
        end;
      end;

      if IEFinNFe.Text <> '1' then
      begin
        ClickedOK := InputQuery('Entre com a chave de acesso da NFe Referenciada', 'Chave', NewString);
        if (not ClickedOK) or (NewString = '') then
        begin
          Editar;
          oException(Nil,'Chave (código de barras) nao informada !');
        end;

        if Length(trim(NewString)) < 44 then
        begin
          Editar;
          oException(Nil,'Chave (Código de Barras) informada incorretamente !');
        end;
      end;

      if oEmpty(EDxNome.Text) then
      begin
        Editar;
        oException(eddfav,'Favorecido não Selecionado !');
      end;

      if oEmpty(EDFone.Text) then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(EDFone,'Fone não Informado !');
      end;

      if length(TRIM(edcep.Text)) <> 8 then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(edcep,'Cep não Informado !');
      end;

      if oEmpty(EDNRO.Text) then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(EDNRO,'Número do logradouro do favorecido não informado !');
      end;

      if oEmpty(PEcMun.Text) then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(PEcMun,'Código Municipal não Informado !');
      end;

      if oEmpty(IExPais.Text) then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(IExPais,'País não Informado ou Incorreto !');
      end;

      if (oEmpty(EDTxNome.Text)) and ((IEFinNFe.Text <> '2') and (IEFinNFe.Text <> '3')) then
      begin
        PCEdicao.ActivePage := TSDestinatario;
        Editar;
        oException(EDTxNome,'Transportadora não Cadastrada !');
      end;

      if BCalc then
      try
        Tag := 1;
        nfe_001.DisableControls;
        nfe_001.First;
        if LeftStr(cbcnat.Text,1) = '3' then
        begin
          if (oEmpty(CEnAdicao.Text)) or (CEnAdicao.Text = '0') then
          begin
            Editar;
            oException(Nil,'Número da adição não informado !');
          end;
          while not nfe_001.Eof do
          begin
            nfe_001.Edit;
            nfe_001NFE_NDI.Value          := oRETNumero(EDnDI.Text);
            nfe_001NFE_DDI.Value          := IFThen(not oEmpty(DEdDI.Date),DEdDI.Date,varNull);
            nfe_001NFE_XLOCDESEMB.Value   := edxLocDesemb.Text;
            nfe_001NFE_UFDESEMB.Value     := PEUFDesemb.Text;
            nfe_001NFE_DDESEMB.Value      := IFThen(not oEmpty(DEdDesemb.Date),DEdDesemb.Date,varNull);
            nfe_001NFE_TPVIATRANSP.Value  := IETpViaTransp.Text;
            nfe_001NFE_NADICAO.Value      := StrToInt(CEnAdicao.Text);
            nfe_001NFE_NSEQADIC.Value     := StrToInt(CEnSeqAdic.Text);
            nfe_001NFE_CNPJTerceiro.Value := EDCNPJTerceiro.Text;
            nfe_001NFE_UFTerceiro.Value   := PEUFTerceiro.Text;
            nfe_001NFE_TPIntermedio.Value := IETPIntermedio.Text;
            nfe_001NFE_CEXPORTADOR.Value  := EDcExportador.Text;
            nfe_001NFE_CFABRICANTE.Value  := EDcFabricante.Text;
            nfe_001.Post;
            nfe_001.Next;
          end;
        end else
        if LeftStr(cbcnat.Text,1) = '3' then
        while not nfe_001.Eof do
        begin
          nfe_001.Edit;
          nfe_001NFE_CNPJProd.Value     := EDCNPJProd.Text;
          nfe_001NFE_NDRAW.Value        := EDnDraw.Text;
          nfe_001NFE_NRE.Value          := EDnRE.Text;
          nfe_001NFE_XLOCDESPACHO.Value := EDxLocDespacho.Text;
          nfe_001NFE_UFSAIDAPAIS.Value  := EDUFSaidaPais.Text;
          nfe_001NFE_CHNFE.Value        := EDChNFE.Text;
          nfe_001NFE_QExport.Value      := CEQExport.Value;
          nfe_001.Post;
          nfe_001.Next;
        end;
      finally
        Tag := 0;
        nfe_001.EnableControls;
        oRTransact(TSheild);
      end;

      if oTextToValor(edvst.Text) > 0 then
         if oYesNo(Handle,'Atenção, NFe com substituição tributária !'        +#13+#13+
                          'É necessário a emissão e envio da guia tributária.'+#13+
                          'Dúvidas, favor entrar em contato com a contabilidade.') = mrno then
         Abort;
    end;
    
    cursor := crDefault;
    Screen.Cursor         := crAppStart;
    sbMAIN.Panels[0].Text := 'Aguarde...';
    sbMAIN.Panels[1].Text := NfeStatusServico;
    sbMAIN.Panels[1].Text := trim(sbMAIN.Panels[1].Text);
    Screen.Cursor := crDefault;

    if (sbMAIN.Panels[1].Text = '') then
    begin
      sbMAIN.Panels[0].Text := 'Pronto';
      sbMAIN.Panels[1].Text := 'Não obteve retorno.';
      Screen.Cursor:=crDefault;
      Abort;
    end;

    if copy(sbMaIN.Panels[1].Text,1,3) <> '107' then
    Abort;

    sbMAIN.Panels[0].Text := 'Pronto';

    if not GERA_NFE then
    Abort;

    VALIDAR;
  end else
  EDITAR;
end;

procedure Tfrmven_nfe.BAssClick(Sender: TObject);
var
  BRet: boolean;
begin
  ActiveControl := Nil;
  if not uPSQNotaFiscal(edcdnf.Text) then
  oException(Nil,'Novo Número Selecionado !'+#13+
                 'Nota Fiscal: '+IntToStr(bRETNotaFiscal));

  sbMAIN.Panels[0].Text := AssinaArquivoXML(PChar('C:\Sheild\NotaFiscal\NFe\arquivos\'+chave+'.xml'),'infNFe');

  if (copy(sbMAIN.Panels[0].Text,1,1) = 'A') then
  begin
    BRet := true;
    sbMAIN.Panels[1].Text := sbMAIN.Panels[0].Text;
    sbMAIN.Panels[0].Text := 'Pronto';
  end else
  begin
    BRet := false;
    sbMAIN.Panels[1].Text := sbMAIN.Panels[0].Text;
    sbMAIN.Panels[0].Text := 'Falha na assinatura do XML';
  end;

  if BRet then
  begin
    sbMAIN.Panels[0].Text := 'Validando NF-e';
    sbMAIN.Refresh;

    SleepEx(100,False);
    if (ValidarArquivoXML(PChar('C:\Sheild\NotaFiscal\NFe\arquivos\assinado\'+chave+'-assinado.xml'),'nfe_v4.00.xsd',True) = 'OK') then
    begin
      bRet := true;
      sbMAIN.Panels[0].Text := 'Pronto';
      sbMAIN.Panels[1].Text := 'Arquivo Validado. Nenhum erro identificado.';
    end else
    begin
      sbMAIN.Panels[0].Text := 'Falha';
      sbMAIN.Panels[1].Text := 'Problemas na validação.';
      bRet := false;
    end;
  end;

  if BRet then
  begin
    SleepEx(1000,False);
    BAss.Enabled := false;
    BTra.Enabled := GERA_LOTE;
  end else
  Validar;
end;

procedure Tfrmven_nfe.BTraClick(Sender: TObject);
var
  x: word;
begin
  ActiveControl := Nil;
  if not uPSQNotaFiscal(edcdnf.Text) then
  begin
    Validar;
    oException(edcdnf,'Novo Número Selecionado !'+#13+
                      'Nota Fiscal: '+IntToStr(bRETNotaFiscal));
  end;

  sbMAIN.Panels[1].Text := NFeAutorizacao(PChar('C:\Sheild\NotaFiscal\NFe\lotes\'+oStrZero(strtoint(edcdnf.Text),12)+'-env-lot.xml'));

  for x := 1 to length(sbMAIN.Panels[1].Text) do
  begin
    if copy(sbMAIN.Panels[1].Text,x,1) = '#' then
    break;
  end;
  inc(x);
  protocolo := TRIM(copy(sbMAIN.Panels[1].Text,x,length(sbMAIN.Panels[1].Text)));

  if (copy(sbMAIN.Panels[1].Text,1,3) <> '103') or (protocolo = '') then
  begin
    EDITAR;
    oException(Nil,'Falha no recebimento do lote !'+#13+
                   'Tente Novamente.');
  end;

  SleepEx(500,False);
  frmven_npr                 := Tfrmven_npr.Create(self);
  frmven_npr.Caption         := 'Transmissão de NFe';
  frmven_npr.edchv.Text      := copy(chave,4,100);
  frmven_npr.edpro.Text      := TRIM(protocolo);
  frmven_npr.edConsulta.Text := NfeRetAutorizacao(PChar(frmven_npr.edpro.Text));

  try
    frmven_npr.ShowModal;
  finally
    protocolo := frmven_npr.edpro.Text;
    if (copy(frmven_npr.edConsulta.Text,1,3) <> '100') and (copy(frmven_npr.edConsulta.Text,1,3) <> '105') then
    protocolo := '';

    if (pos('REJ',uppercase(frmven_npr.edConsulta.Text)) > 0) or (pos('DUP',uppercase(frmven_npr.edConsulta.Text)) > 0) then
    protocolo := '';

    if pos('DENEG',uppercase(frmven_npr.edConsulta.Text)) > 0 then
    protocolo := 'D';
    
    BTra.Enabled := false;

    freeAndNil(frmven_npr);
  end;

  if protocolo <> '' then
  begin
    try
      sbMAIN.Panels[1].Text := 'Aguarde... Salvando a Nota Fiscal.';
      SALVA_NF;
    finally
      sbMAIN.Panels[1].Text := '';
    end;

    try
      sbMAIN.Panels[1].Text := 'Aguarde... Gerando a Danfe.';
      GERA_DANFE;
    finally
      sbMAIN.Panels[1].Text := '';
    end;

    BVal.Enabled := false;
    BVis.Enabled := true;
    BPri.Enabled := true;
    BEnv.Enabled := true;
  end else EDITAR;
end;

procedure Tfrmven_nfe.BVisClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  ActiveControl := Nil;

  Screen.cursor:=crAppStart;

  edcdnf.Text := oStrZero(strtoint(edcdnf.Text),6);
  NOME_ARQ    := 'C:\Sheild\NotaFiscal\PDF\'+edcdnf.Text+'.PDF';

  if protocolo <> '' then
  begin
    DecodeDate(DEdhEmi.Date, Ano, Mes, Dia);
    NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+copy(chave,4,100)+'-procNFe.xml';

    if not fileexists(NOME_FIL) then
       raise exception.Create('Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor Consultar a nota fiscal.');

    if not fileexists(NOME_ARQ) then
       raise exception.Create('Arquivo '+NOME_ARQ+' não encontrado !'+#13+'Favor Consultar a nota fiscal.');

    ImprimeDanfe(NOME_FIL,NOME_ARQ,3,false);
  end;

  Screen.cursor:=crDefault;
end;

procedure Tfrmven_nfe.BPriClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  ActiveControl := Nil;

  Screen.cursor:=crAppStart;

  edcdnf.Text := oStrZero(strtoint(edcdnf.Text),6);
  NOME_ARQ    := 'C:\Sheild\NotaFiscal\PDF\'+edcdnf.Text+'.PDF';

  if protocolo <> '' then
  begin
    DecodeDate(DEdhEmi.Date, Ano, Mes, Dia);
    NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+copy(chave,4,100)+'-procNFe.xml';

    if not fileexists(NOME_FIL) then
       raise exception.Create('Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor Consultar a nota fiscal.');

    if not fileexists(NOME_ARQ) then
       raise exception.Create('Arquivo '+NOME_ARQ+' não encontrado !'+#13+'Favor Consultar a nota fiscal.');

    ImprimeDanfe(NOME_FIL,NOME_ARQ,1,false);
  end;

  Screen.cursor:=crDefault;
end;

procedure Tfrmven_nfe.BEnvClick(Sender: TObject);
var
  NOME_ARQ: string;
  NOME_FIL: string;
begin
  ActiveControl := Nil;

  if protocolo = '' then
  exit;

  DecodeDate(DEdhEmi.Date, Ano, Mes, Dia);

  edcdnf.Text := oStrZero(strtoint(edcdnf.Text),6);
  
  NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+copy(chave,4,100)+'-procNFe.xml';
  NOME_ARQ := 'C:\Sheild\NotaFiscal\PDF\'+edcdnf.Text+'.PDF';

  if not fileexists(NOME_FIL) then
     raise exception.Create('Arquivo '+NOME_FIL+' não encontrado !'+#13+'Favor Consultar a nota fiscal.');

  if not fileexists(NOME_ARQ) then
     raise exception.Create('Arquivo '+NOME_ARQ+' não encontrado !'+#13+'Favor Consultar a nota fiscal.');

  frmemail := TFrmemail.Create(self);
  try
    frmemail.cbemail.Text  := PEEmail.Text;
    frmemail.edtitulo.Text := RECParametros.Fantasia+' - NF.: '+edcdnf.Text;
    frmemail.Memo1.Lines.Add('Segue em anexo...') ;

    frmemail.cbarqs.Items.Add(NOME_FIL);
    frmemail.cbarqs.Items.Add(NOME_ARQ);

    frmemail.ShowModal;
  finally
    freeAndNil(frmemail);
  end;
end;

procedure Tfrmven_nfe.BFAVClick(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure Tfrmven_nfe.BNFeClick(Sender: TObject);
begin
  FrmImporta_Geral := TFrmImporta_Geral.Create(Self);
  FrmImporta_Geral.Documento := IntToStr(StrToInt(edcdnf.Text));
  with FrmImporta_Geral do
  try
    ShowModal;
    if Editado then
    try
      frmven_nfe.Tag := 1;
      oOTransact(DMDados.TFBConsulta);
      oRTransact(frmven_nfe.TSheild);

      nfe_001.DisableControls;
      nfe_001.First;

      if cbTIPO.Text = 'XML' then
      begin
        BCalc := False;

        if lacfav.Caption = 'Fornecedor' then
        PESQUISA_FORNECEDOR('I',imp_ncaNFE_CFAV.AsString,0) else
        if lacfav.Caption = 'Cliente' then
        PESQUISA_CLIENTE('I',imp_ncaNFE_CFAV.AsString,0);

        cbcnat.Text := imp_nitNFE_CFOP.AsString;
        PESQUISA_NATUREZA(cbcnat.Text,'C');

        edctra.Text := XMLIDTra;
        PESQUISA_TRANSPORTADORA(edctra.Text,'C');

        IEModFrete.Text := XMLModFrete;
        edqvol.Text     := XMLQVol;
        edesp.Text      := XMLEsp;
        ednvol.Text     := XMLNVol;
        edmarca.Text    := XMLMarca;
        CEPesoB.Value   := oTextToValor(XMLPSBR);
        CEPesoL.Value   := oTextToValor(XMLPSLQ);
        edvdesc.Text    := formatfloat('#,0.00',imp_ncaNFE_VDESC.AsFloat);
        edvprod.Text    := formatfloat('#,0.00',imp_ncaNFE_VPROD.AsFloat);
        CEVFrete.Value  := imp_ncaNFE_VFRETE.AsFloat;
        CEVSeg.Value    := imp_ncaNFE_VSEG.AsFloat;
        edvbc.Text      := formatfloat('#,0.00',imp_ncaNFE_VBC.AsFloat);
        edvicms.Text    := formatfloat('#,0.00',imp_ncaNFE_VICMS.AsFloat);
        edvipi.Text     := formatfloat('#,0.00',imp_ncaNFE_VIPI.AsFloat);
        edvpis.Text     := formatfloat('#,0.00',imp_ncaNFE_VPIS.AsFloat);
        edvcofins.Text  := formatfloat('#,0.00',imp_ncaNFE_VCOFINS.AsFloat);
        edvoutro.Text   := formatfloat('#,0.00',imp_ncaNFE_VOUTRO.AsFloat);
        edvII.Text      := formatfloat('#,0.00',imp_ncaNFE_VII.AsFloat);
        edvnf.Text      := formatfloat('#,0.00',imp_ncaNFE_VNF.AsFloat);
        IExPais.Text    := XMLcPais;

        EDInfAdNF.Lines.Clear;
        EDInfAdNF.Lines.Add(MemoINFCPL.Lines.Text);

        while not nfe_001.Eof do
        begin
          EDXPed.Text := nfe_001NFE_XPED.AsString;
          if nfe_001NFE_CCAB.AsInteger = 99999 then
          begin
            nfe_001.Edit;
            nfe_001NFE_CPROD.Value  := IntToStr(StrToInt(edcdnf.Text))+'/'+nfe_001NFE_ITEMPED.AsString;
            nfe_001NFE_VUNCOM.Value := IFThen(nfe_001NFE_VUNCOM.AsFloat <> nfe_001NFE_VPROD.AsFloat / nfe_001NFE_QCOM.AsFloat,nfe_001NFE_VPROD.AsFloat / nfe_001NFE_QCOM.AsFloat,nfe_001NFE_VUNCOM.AsFloat);
            nfe_001.Post;
          end;
          nfe_001.Next;
        end;
      end else
      begin
        BImp.Tag := IFThen(cbTIPO.Text = 'CDI',1,0);

        if imp_cabROM_CCLI.AsInteger > 0 then
           if lacfav.Caption = 'Fornecedor' then
              PESQUISA_FORNECEDOR('I',imp_cabROM_CCLI.AsString,0) else
           if lacfav.Caption = 'Cliente' then
              PESQUISA_CLIENTE('I',imp_cabROM_CCLI.AsString,0);

        if not oEmpty(cbcnat.Text) then
           PESQUISA_NATUREZA(cbcnat.Text,'C');

        BCalc := True;
        imp_ite.First;
        while not imp_ite.Eof do
        begin
          nfe_001.Append;

          PESQUISA_PRODUTO('Código',frmimporta_geral.imp_iteROM_IPRO.AsString);

          nfe_001NFE_QCOM.Value   := imp_iteROM_QTDE.AsFloat;
          nfe_001NFE_VUNCOM.Value := imp_iteROM_UNIT.AsFloat;
          nfe_001.Post;
          imp_ite.Next;
        end;
      end;
    finally
      oCTransact(DMDados.TFBConsulta);
      nfe_001.EnableControls;
      BCalc := (LeftStr(cbcnat.Text,1) <> '3');

      DBDescricao.Width         := GBDescricao.Width - DBDescricao.Left;
      GBDescricao.Visible       := (LeftStr(cbcnat.Text,1) = '3');
      dbgnfeNFE_UTRIB.Visible   := (LeftStr(nfe_001NFE_CFOP.AsString,1) = '7');
      dbgnfeNFE_QTRIB.Visible   := dbgnfeNFE_UTRIB.Visible;
      dbgnfeNFE_VUNTRIB.Visible := dbgnfeNFE_UTRIB.Visible;

      PCEdicao.ActivePage := TSProduto;
      DBGNFe.SetFocus;

      oRTransact(frmven_nfe.TSheild);
      Calcula_NF;
    end;
  Finally
    FreeAndNil(frmimporta_geral);
  end;
end;

procedure Tfrmven_nfe.BSairClick(Sender: TObject);
begin
  Close;
end;

function Tfrmven_nfe.GERA_LOTE: Boolean;
var
 x: integer;
 bret: boolean;
begin
  try
    bret := false;
    Screen.cursor:=crAppStart;
    Randomize;

    x:=GerarLote(StrToInt(edcdnf.Text),'',false);
    if (x=1) then
    begin
      bret := true;
      sbMAIN.Panels[0].Text := 'Pronto';
      sbMAIN.Panels[1].Text := 'Lote gerado com sucesso!'
    end
    else
    begin
      sbMAIN.Panels[0].Text := 'Falha';
      if (x=-1) then
         sbMAIN.Panels[1].Text := 'Erro desconhecido'
      else
         if (x=0) then
         sbMAIN.Panels[1].Text := 'Operação cancelada'
      else
         if (x=2) then
         sbMAIN.Panels[1].Text := 'Não existe(m) arquivo(s) assinado(s)!';
    end;
  finally
    Screen.cursor:=crDefault;
  end;

  sbMAIN.Refresh;
  result := bret;
end;

function Tfrmven_nfe.RETORNA_TITULO: string;
var i:word;
    titu: string;
begin
  titu := dup_001NFE_CDNF.AsString;
  for i := 1 to length(titu) do
  begin
    if copy(dup_001NFE_TITU.AsString,i,1) = '-' then
       break;
  end;
  titu := titu + copy(dup_001NFE_TITU.AsString,i,3);

  result := titu;
end;

procedure Tfrmven_nfe.EDITAR;
begin
  BVal.ImageIndex := 0;
  BVal.BtnCaption := 'Validar';

  PNLPrincipal.Enabled := true;

  BAss.Enabled    := false;
  BTra.Enabled    := false;
  BVis.Enabled    := false;
  BPri.Enabled    := false;
  BEnv.Enabled    := false;
  BFav.Enabled    := true;
  BImp.Enabled    := true;
  BVal.Enabled    := true;

  sbMAIN.Panels[1].Text := '';
  PCInfoA.ActivePageIndex := 0;
end;

procedure Tfrmven_nfe.VALIDAR;
begin
  BVal.ImageIndex := 1;
  BVal.BtnCaption := 'Editar';

  PNLPrincipal.Enabled := false;

  BAss.Enabled    := true;
  BVis.Enabled    := false;
  BPri.Enabled    := false;
  BEnv.Enabled    := false;
  BFav.Enabled    := false;
  BImp.Enabled    := false;

  PCInfoA.ActivePageIndex := 1;
end;

procedure Tfrmven_nfe.ATUALIZA_MENSAGENS;
var
  i: Word;
  TXTCFOP,
  TXTInfad: String;
begin
  try
    EDInfAdFisco.Lines.BeginUpdate;
    EDInfAdFisco.Lines.Clear;

    InfAd.BeginUpdate;
    InfAd.Clear;

    if EDInfAdNF.Lines.Count > 0 then
    for i := 0 to EDInfAdNF.Lines.Count - 1 do
        if Length(EDInfAdNF.Lines[i]) > 109 then
        begin
          TXTInfAd := EDInfAdNF.Text;
          EDInfAdNF.Lines.Clear;
        end;

    while Length(TXTInfAd) > 0 do
    begin
      EDInfAdNF.Lines.Add(Trim(LeftStr(TXTInfAd,109)));
      TXTInfAd := Trim(Copy(TXTInfAd,110,2000));
    end;

    InfAd.Clear;
    InfAd.Add('');

    if RECParametros.RegimeTributario = '1' then
    begin
      InfAd.Add('I  - DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL.|');
      InfAd.Add('II - NAO GERA DIREITO A CREDITO FISCAL DE IPI.|');
    end;

    if EDInfAdNF.Lines.Count > 0 then
    begin
      for i := 0 to EDInfAdNF.Lines.Count - 1 do
      InfAd.Add(oREPAcentos(oREPPrimeiraLetraMaiuscula(EDInfAdNF.Lines[i]))+'|');
      InfAd.Add('|');
    end;  

    if Pos(IEFinNFe.Text,'23') > 0 then
    Exit;

    { Retira todo o texto encontrado em TXTCFOP e move para TXTInfAd }
    TXTCFOP := oREPPrimeiraLetraMaiuscula(tab_natNAT_OBSE.AsString);
    While Length(TXTCFOP) > 0 do
    begin
      TXTInfAd := oREPAcentos(Fetch(TXTCFOP,#$D#$A));
      if Length(TXTInfAd) > 0 then
      InfAd.Add(TXTInfAd+'|');
    end;

    if oTextToValor(edvcredicmssn.Text) > 0 then
    begin
      InfAd.Add(Trim('Permite o aproveitamento do credito de ICMS no valor de '+FormatFloat('R$ #,0.00',oTextToValor(edvcredicmssn.Text)))          +'|');
      InfAd.Add(Trim('Correspondente a aliquota de '+FormatFloat('#,0.00%%',RECParametros.PCreditoICMS)+' nos termos do Art. 23 DA LC 123, de 2006')+'|');
    end;

    if oTextToValor(edvst.Text) > 0 then
    InfAd.Add('ICMS calculado por substituicao tributaria conforme Artigo 313-Y'+'|');

    if EDISUF.Text <> '' then
    begin
      InfAd.Add('ICMS Isento conforme Art. 84 do Anexo I do RICMS/SP|');
      InfAd.Add('IPI suspenso conforme Art. 84 do Decreto 7.212/2010|');
      InfAd.Add('PIS/COFINS aliquota zero conforme Art. 2o da Lei 10.996/04|');
      InfAd.Add(Trim('Desconto de 7% - ICMS: '+FormatFloat('R$ #,0.00',oTextToValor(edvdesc.Text)))+'|');
      InfAd.Add(Trim('Codigo SUFRAMA: '+EDISUF.Text)+'|');
    end;

    if (IERegime.Text = '1') and (IECredICMS.Text = '1') and (Pos(cbcnat.Text,'51016101') > 0)  then
    begin
      InfAd.Add('Reducao da base de calculo do ICMS nos termos do anexo II artigo 52 do RICMS|');
      InfAd.Add(Trim('Decreto No 62.560/2017 (DOE de 06.05.2017) = '+FormatFloat('#,0.00%',nfe_001NFE_PREDBC.AsFloat))+'|');
    end;

    try
      cli_001.DisableControls;
      cli_001.First;
      while not cli_001.Eof do
      begin
        if cli_001.RecNo = 1 then
        InfAd.Add('NF de Retorno ('+RightStr(cbcnat.Text,4)+') Ref. a(s) NF(s).: |');
        InfAd.Add(cli_001NFE_CDNF.AsString+' de '+cli_001NFE_DCAD.AsString+' '+FormatFloat('Valor de R$ #,0.00',cli_001NFE_VNF.AsFloat)+'  ');
        cli_001.Next;
      end;
    finally
      cli_001.EnableControls;
    end;

    if oTrimValor(EDvICMSUFDest.Text) > 0 then
    InfAd.Add('Valor Total ICMS Interestadual UF Destino: '+FormatFloat('Valor de R$ #,0.00',oTrimValor(EDvICMSUFDest.Text))+'|');

    if EDXPed.Text <> '' then
    InfAd.Add(Trim(LAXPed.Caption+' '+EDXPed.Text)+'|');

    if EDidEstrangeiro.Text <> '' then
    InfAd.Add(Trim('|Passaporte '+EDidEstrangeiro.Text)+'|');
  finally
    InfAd.EndUpdate;
    EDInfAdFisco.Text := InfAd.Text;
    EDInfAdFisco.Lines.EndUpdate;
  end;
end;

procedure Tfrmven_nfe.GERA_DANFE;
var
  NOME_ARQ: string;
  NOME_FIL: string;
  procnfe: string;
begin
  Screen.cursor:=crAppStart;

  edcdnf.Text := oStrZero(strtoint(edcdnf.Text),6);
  NOME_ARQ    := 'C:\Sheild\NotaFiscal\PDF\'+edcdnf.Text+'.PDF';

  if (protocolo <> '') and (protocolo <> 'D') then
  begin
    DecodeDate(DEdhEmi.Date, Ano, Mes, Dia);
    procnfe  := ArquivoDistribuicaoNFe(copy(chave,4,100));
    NOME_FIL := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+copy(chave,4,100)+'-procNFe.xml';

    ImprimeDanfe(NOME_FIL,NOME_ARQ,2,false);
    SleepEx(500,False);
  end;
  Screen.cursor:=crDefault;
end;

procedure Tfrmven_nfe.ENVIA_EMAIL;
var
  TSEmail, TSAssunto, TSMensagem, TSPath: TStringList;
  ISEmail, ISAssunto, ISMensagem, ISPath: IString;
  Assunto,Mensagem,Anexo: String;
begin
  DecodeDate(DEdhEmi.Date, Ano, Mes, Dia);

  TSEmail    := TStringList.Create;
  TSAssunto  := TStringList.Create;
  TSMensagem := TStringList.Create;
  TSPath     := TStringList.Create;

  try
    Screen.Cursor := crAppStart;

    if ((protocolo <> '') and (protocolo <> 'D') and
        (IEEnvMail.Text = '1') and (not oEmpty(PEEmail.Text)) and  (oEmail(PEEmail.Text)) and (RECParametros.EnvMail) and
        (FileExists('C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+copy(chave,4,100)+'-procNFe.xml')) and (FileExists('C:\Sheild\NotaFiscal\PDF\'+edcdnf.Text+'.PDF'))) then
    begin
      sbMAIN.Panels[1].Text := 'Aguarde... Enviando Email.';
      sbMAIN.Refresh;

      Assunto  := RECParametros.Fantasia+' - Nota Fiscal Eletrônica Nº '+edcdnf.Text;
      Anexo    := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\'+oStrZero(ano,4)+oStrZero(mes,2)+'\'+copy(chave,4,100)+'-procNFe.xml' + ';C:\Sheild\NotaFiscal\PDF\'+edcdnf.Text+'.PDF' ;

      Mensagem := '<p>Prezado Cliente,'+
                  '<br>Anexo Nota Fiscal e XML referentes a fatura '+edcdnf.Text+'.</p>'+
                  '<p>Qualquer dúvida estamos à sua disposição.</p>'+
                  '<p>'+RECUsuarios.Login+' - Departamento Comercial'+
                  '<br>'+RECParametros.Fantasia+'</p>';

      TSEmail.Append(PEEmail.Text);
      TSAssunto.Append(Assunto);
      TSMensagem.Append(Mensagem);
      TSPath.Append(Anexo);

      ISEmail    := TString.Create(TSEMail.Text);
      ISAssunto  := TString.Create(TSAssunto.Text);
      ISMensagem := TString.Create(TSMensagem.Text);
      ISPath     := TString.Create(TSPath.Text);

      {obs.: para enviar mais de 1 anexo, concatenar separados por ";" no parâmetro caminhoText }
      if EnviaEmail(ISEmail,ISAssunto,ISMensagem,ISPath) then
         sbMAIN.Panels[1].Text := 'Email enviado com sucesso.'
      else
         sbMAIN.Panels[1].Text := 'Falha ao tentar enviar email';
      sbMAIN.Refresh;   
    end;
  finally
    Screen.Cursor := crDefault;

    TSEmail.Free;
    TSAssunto.Free;
    TSMensagem.Free;
    TSPath.Free;
  end;
end;

function RetornaString(pathArquivo : ShortString) : TStrings;
var
 r : TextFile;
 linha : string;
 reta : TStrings;
begin
  try
   AssignFile(r,pathArquivo);
   Reset(r);
   reta:=TStringList.Create;

   while not Eof(r) do
   begin
    ReadLn(r,linha);
    reta.Add(linha);
   end;
  finally
   CloseFile(r);
  end;

  result:=reta;
end;

procedure Tfrmven_nfe.PESQUISA_PRODUTO(campo,cpro:string);
var
  nRecNo: integer;
begin
  if cpro = '' then
  abort;

   nRecNo := frmprincipal.PESQUISA_PRODUTO(campo,cpro);

   if nRecNo = 0 then
   begin
     messageBox(handle,PChar(campo+' não cadastrado !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
     Exit;
   end
   else if nRecNo  > 1 then
   begin
     frmcad_pro_con := Tfrmcad_pro_con.Create(self);
     with frmcad_pro_con.cadastro do
     begin
       SQL.Clear;
       SQL.Add(frmprincipal.psq_pro.Text);
       Open;
     end;
     try
       frmcad_pro_con.ShowModal;
     finally
       try
         if frmcad_pro_con.Editado then
         PESQUISA_PRODUTO('CAD_PRO.ID',INTTOSTR(frmcad_pro_con.CadastroID.AsInteger));
       finally
         FreeAndNil(frmcad_pro_con);
       end;  
     end;
   end
   else if nRecNo = 1 then
   begin
     if frmprincipal.psq_proPRO_STAV.AsString = 'I' then
     begin
       messageBox(handle,'Produto inativo !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     if frmprincipal.psq_proPRO_STAV.AsString = 'P' then
     begin
       messageBox(handle,'Produto em desenvolvimento !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     if frmprincipal.psq_proPRO_STA.AsString <> '0' then
     begin
       messageBox(handle,'Produto enviado para a lixeira !',PChar(self.Caption),MB_ICONERROR+MB_OK);
       Abort;
     end;

     if nRecNo > 0 then
     begin
       nfe_001NFE_IPRO.Value   := FrmPrincipal.psq_proID.AsInteger;
       nfe_001NFE_CPROD.Value  := FrmPrincipal.psq_proPRO_CPRO.AsString;
       nfe_001NFE_XPROD.Value  := FrmPrincipal.psq_proPRO_DPRO.AsString;
       nfe_001NFE_UCOM.Value   := FrmPrincipal.psq_proPRO_DUNI.AsString;
       nfe_001NFE_VUNCOM.Value := FrmPrincipal.psq_proPRO_PREC.AsFloat;
       nfe_001NFE_PREC.Value   := FrmPrincipal.psq_proPRO_PREC.AsFloat;
       nfe_001NFE_NCM.Value    := FrmPrincipal.psq_proPRO_CCLF.AsString;
       nfe_001NFE_REPR.Value   := FrmPrincipal.psq_proPRO_REPR.AsString;
       nfe_001NFE_PIPI.Value   := FrmPrincipal.psq_proPRO_PIPI.AsFloat;
       nfe_001NFE_ORIG.Value   := FrmPrincipal.psq_proPRO_CCST.AsString;
       nfe_001NFE_CEAN.Value   := FrmPrincipal.psq_proPRO_CBAR.AsString;
       nfe_001NFE_PESO.Value   := FrmPrincipal.psq_proPRO_PESO.AsFloat;
       nfe_001NFE_PSCN.Value   := FrmPrincipal.psq_proPRO_PSCN.AsFloat;
       nfe_001NFE_METR.Value   := FrmPrincipal.psq_proPRO_METR.AsFloat;
       nfe_001NFE_REND.Value   := FrmPrincipal.psq_proPRO_REND.AsFloat;
       nfe_001NFE_STAV.Value   := FrmPrincipal.psq_proPRO_STAV.AsString;

       nfe_001NFE_COMP.Value      := FrmPrincipal.psq_proPRO_COMP.AsString;
       nfe_001NFE_INFADPROD.Value := FrmPrincipal.psq_proPRO_COMP.AsString;
       if not oEmpty(nfe_001NFE_INFADPROD.AsString) then
          nfe_001NFE_INFADPROD.Value := 'COMPOSICAO: '+nfe_001NFE_INFADPROD.AsString;

       if Pos(LeftStr(FrmPrincipal.psq_proPRO_DUNI.AsString,1),'KMY') = 0 then
          if FrmPrincipal.psq_proPRO_METR.AsFloat > 0 then
             nfe_001NFE_INFADPROD.Value := nfe_001NFE_INFADPROD.AsString+#13+'CONTEUDO: '+FormatFloat('0.00M',FrmPrincipal.psq_proPRO_METR.AsFloat);

       nfe_001NFE_INFADPROD.Value := Trim(nfe_001NFE_INFADPROD.AsString);
     end;
   end;
end;

procedure Tfrmven_nfe.SALVA_NF;
var
  ccab: integer;
begin
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['nfe_cab']+',0) FROM RDB$DATABASE');
    Open;
    ccab := fields[0].AsInteger + 1;

    SQL.Clear;
    SQL.Add('DELETE FROM '+oREPZero('NFE_DUP','_',RECParametros.Id,3));
    SQL.Add('WHERE  NFE_CDNF = '''+edcdnf.Text+'''');
    ExecSQL;
  end;

  try
    ibSP.StoredProcName := 'SP_NFE_CAB';
    ibSP.Prepare;
    ibSP.ParamByName('nfe').Value          := oREPZero('NFE_CAB','_',RECParametros.Id,3);
    ibSP.ParamByName('id').Value           := 0;
    ibSP.ParamByName('CONC').Value         := edconc.Text;
    ibSP.ParamByName('CDNF').Value         := edcdnf.Text;
    ibSP.ParamByName('AAMM').Value         := '0';
    ibSP.ParamByName('DEMI').Value         := DEdhEmi.Date;
    ibSP.ParamByName('DSAI').Value         := IFThen(DEdhSaiEnt.Date < 0,DEdhEmi.Date,DEdhSaiEnt.Date);
    ibSP.ParamByName('HRSE').Value         := time;
    ibSP.ParamByName('CVEN').Value         := edcven.Text;
    ibSP.ParamByName('DVEN').Value         := eddven.Text;
    ibSP.ParamByName('CREP').Value         := edcrep.Text;
    ibSP.ParamByName('DREP').Value         := eddrep.Text;
    ibSP.ParamByName('CFAV').Value         := edcfav.Text;
    ibSP.ParamByName('DFAV').Value         := eddfav.Text;
    ibSP.ParamByName('CTRA').Value         := edctra.Text;
    ibSP.ParamByName('DTRA').Value         := cbdtra.Text;
    ibSP.ParamByName('CNAT').Value         := cbcnat.Text;
    ibSP.ParamByName('INDPAG').Value       := IFThen(tab_pagPAG_PARC.AsInteger > 1,'0','1');
    ibSP.ParamByName('TPNF').Value         := IFThen(edtpnf.Text = 'ENTRADA','0','1');
    ibSP.ParamByName('NFREF').Value        := '0';
    ibSP.ParamByName('REFNFE').Value       := '';
    ibSP.ParamByName('CUFREF').Value       := FrmPrincipal.ParametrosPAR_UF.AsString;
    ibSP.ParamByName('AAMMREF').Value      := '';
    ibSP.ParamByName('CNPJREF').Value      := FrmPrincipal.ParametrosPAR_CNPJ.AsString;
    ibSP.ParamByName('MODREF').Value       := '01';
    ibSP.ParamByName('SERIEREF').Value     := FrmPrincipal.ParametrosPAR_SERI.AsString;
    ibSP.ParamByName('NNFREF').Value       := '0';
    ibSP.ParamByName('TPEMIS').Value       := '1';
    ibSP.ParamByName('FINNFE').Value       := IEFinNFe.Text;
    ibSP.ParamByName('CHAV').Value         := TRIM(copy(chave,4,100));
    ibSP.ParamByName('PROT').Value         := TRIM(PROTOCOLO);
    ibSP.ParamByName('PROCEMI').Value      := '0';
    ibSP.ParamByName('VERPROC').Value      := '3.10';
    ibSP.ParamByName('DHCONT').Value       := now;
    ibSP.ParamByName('XJUST').Value        := '';
    ibSP.ParamByName('ISUF').Value         := '';
    ibSP.ParamByName('QCOM').Value         := oTextToValor(EDTQCom.Text);
    ibSP.ParamByName('VBC').Value          := oTextToValor(edvbc.Text);
    ibSP.ParamByName('VICMS').Value        := oTextToValor(edvicms.Text);
    ibSP.ParamByName('VBCST').Value        := 0;
    ibSP.ParamByName('VST').Value          := 0;
    ibSP.ParamByName('VPROD').Value        := oTextToValor(edvprod.Text);
    ibSP.ParamByName('VFRETE').Value       := CEVFrete.Value;
    ibSP.ParamByName('VSEG').Value         := CEVSeg.Value;
    ibSP.ParamByName('VDESC').Value        := oTextToValor(edvdesc.Text);
    ibSP.ParamByName('VII').Value          := oTextToValor(edvII.Text);
    ibSP.ParamByName('VIPI').Value         := oTextToValor(edvipi.Text);
    ibSP.ParamByName('VPIS').Value         := oTextToValor(edvpis.Text);
    ibSP.ParamByName('VCOFINS').Value      := oTextToValor(edvcofins.Text);
    ibSP.ParamByName('VOUTRO').Value       := oTextToValor(edvoutro.Text);
    ibSP.ParamByName('VNF').Value          := oTextToValor(edvnf.Text);
    ibSP.ParamByName('VSERVISSQN').Value   := 0;
    ibSP.ParamByName('VBCISSQN').Value     := 0;
    ibSP.ParamByName('VISS').Value         := 0;
    ibSP.ParamByName('VPISISSQN').Value    := 0;
    ibSP.ParamByName('VCOFINSISSQN').Value := 0;
    ibSP.ParamByName('VRETPIS').Value      := 0;
    ibSP.ParamByName('VRETCOFINS').Value   := 0;
    ibSP.ParamByName('VRETCSLL').Value     := 0;
    ibSP.ParamByName('VBCIRRF').Value      := 0;
    ibSP.ParamByName('VIRRF').Value        := 0;
    ibSP.ParamByName('VBCRETPREV').Value   := 0;
    ibSP.ParamByName('VRETPREV').Value     := 0;
    ibSP.ParamByName('VRETPREV').Value     := 0;
    ibSP.ParamByName('VRETPREV').Value     := 0;
    ibSP.ParamByName('OBSE').Value         := EDInfAdNF.Text;
    ibSP.ParamByName('STA').Value          := IFThen(protocolo <> 'D',0,1);
    ibSP.ParamByName('CLFO').Value         := IFThen(lacfav.Caption = 'Cliente','0',IFThen(lacfav.Caption = 'Fornecedor','1','2'));
    ibSP.ParamByName('ESTO').Value         := '0';
    ibSP.ExecProc;

    ibSP.StoredProcName := 'SP_NFE_TRA';
    ibSP.Prepare;
    ibSP.ParamByName('nfe').Value       := oREPZero('NFE_TRA','_',RECParametros.Id,3);
    ibSP.ParamByName('id').Value        := 0;
    ibSP.ParamByName('CCAB').Value      := ccab;
    ibSP.ParamByName('CTRA').Value      := edctra.Text;
    ibSP.ParamByName('MODFRETE').Value  := IEModFrete.Text;
    ibSP.ParamByName('RETTRANSP').Value := '';
    ibSP.ParamByName('VSERV').Value     := 0;
    ibSP.ParamByName('VBCRET').Value    := 0;
    ibSP.ParamByName('PICMSRET').Value  := 0;
    ibSP.ParamByName('VICMSRET').Value  := 0;
    ibSP.ParamByName('CFOP').Value      := 0;
    ibSP.ParamByName('CMUNFG').Value    := 0;
    ibSP.ParamByName('PLACA').Value     := PETPlaca.Text ;
    ibSP.ParamByName('UF').Value        := PETUFPlaca.Text;
    ibSP.ParamByName('RNTC').Value      := EDTRNTC.Text;
    ibSP.ParamByName('QVOL').Value      := EDQVol.Text;
    ibSP.ParamByName('ESP').Value       := EDEsp.Text;
    ibSP.ParamByName('MARCA').Value     := EDMarca.Text;
    ibSP.ParamByName('NVOL').Value      := EDNVol.Text;
    ibSP.ParamByName('PSBR').Value      := CEPesoB.Text;
    ibSP.ParamByName('PSLQ').Value      := CEPesoL.Text;
    ibSP.ParamByName('NLACRE').Value    := EDNLacres1.Text+EDNLacres2.Text;
    ibSP.ExecProc;

    if protocolo <> 'D' then
    try
      dup_001.DisableControls;
      dup_001.First;
      while not dup_001.Eof do
      begin
        ibSP.StoredProcName := 'SP_NFE_DUP';
        ibSP.Prepare;
        ibSP.ParamByName('nfe').Value   := oREPZero('NFE_DUP','_',RECParametros.Id,3);
        ibSP.ParamByName('id').Value    := 0;
        ibSP.ParamByName('CCAB').Value  := ccab;
        ibSP.ParamByName('CDRO').Value  := dup_001NFE_CDRO.AsInteger;
        ibSP.ParamByName('CFAV').Value  := dup_001NFE_CFAV.AsInteger;
        ibSP.ParamByName('DROM').Value  := dup_001NFE_DROM.AsDateTime;
        ibSP.ParamByName('CDNF').Value  := dup_001NFE_CDNF.AsInteger;
        ibSP.ParamByName('DNFE').Value  := dup_001NFE_DNFE.AsDateTime;
        ibSP.ParamByName('TITU').Value  := dup_001NFE_TITU.AsString;
        ibSP.ParamByName('STPD').Value  := dup_001NFE_STPD.AsString;
        ibSP.ParamByName('STCO').Value  := dup_001NFE_STCO.AsString;
        ibSP.ParamByName('STFI').Value  := dup_001NFE_STFI.AsString;
        ibSP.ParamByName('PARC').Value  := dup_001NFE_PARC.AsInteger;
        ibSP.ParamByName('DVEN').Value  := dup_001NFE_DVEN.AsDateTime;
        ibSP.ParamByName('VDUP').Value  := dup_001NFE_VDUP.AsFloat;
        ibSP.ParamByName('DPAG').Value  := dup_001NFE_DPAG.AsDateTime;
        ibSP.ParamByName('VPAG').Value  := dup_001NFE_VPAG.AsFloat;
        ibSP.ParamByName('VPEN').Value  := dup_001NFE_VPEN.AsFloat;
        ibSP.ParamByName('OBSE').Value  := dup_001NFE_OBSE.Value;
        ibSP.ParamByName('STA').Value   := '0';
        ibSP.ExecProc;

        dup_001.Next;
      end;
    finally
      dup_001.First;
      dup_001.EnableControls;
    end;

    if protocolo <> 'D' then
    try
      cli_001.DisableControls;
      cli_001.First;
      while not cli_001.Eof do
      begin
        ibSP.StoredProcName := 'SP_NFE_CLI';
        ibSP.Prepare;
        ibSP.ParamByName('nfe').Value  := oREPZero('NFE_CLI','_',RECParametros.Id,3);
        ibSP.ParamByName('id').Value   := 0;
        ibSP.ParamByName('CCAB').Value := ccab;
        ibSP.ParamByName('CDNF').Value := cli_001NFE_CDNF.AsInteger;
        ibSP.ParamByName('DCAD').Value := cli_001NFE_DCAD.AsDateTime;
        ibSP.ParamByName('VNF').Value  := cli_001NFE_VNF.AsFloat;
        ibSP.ExecProc;

        cli_001.Next;
      end;
    finally
      cli_001.First;
      cli_001.EnableControls;
    end;

    try
      nfe_001.DisableControls;
      nfe_001.First;
      while not nfe_001.Eof do
      begin
        ibSP.StoredProcName := 'SP_NFE_ITE';
        ibSP.Prepare;
        ibSP.ParamByName('nfe').Value            := oREPZero('NFE_ITE','_',RECParametros.Id,3);
        ibSP.ParamByName('id').Value             := 0;
        ibSP.ParamByName('CCAB').Value           := ccab;
        ibSP.ParamByName('CDNF').Value           := edcdnf.Text;
        ibSP.ParamByName('INDTOT').Value         := nfe_001NFE_INDTOT.AsInteger;
        ibSP.ParamByName('CFOP').Value           := nfe_001NFE_CFOP.AsString;
        ibSP.ParamByName('CART').Value           := nfe_001NFE_CART.AsString;
        ibSP.ParamByName('CPROD').Value          := nfe_001NFE_CPROD.AsString;
        ibSP.ParamByName('CEAN').Value           := nfe_001NFE_CEAN.AsString;
        ibSP.ParamByName('NCM').Value            := nfe_001NFE_NCM.AsString;
        ibSP.ParamByName('EXTIPI').Value         := nfe_001NFE_EXTIPI.AsString;
        ibSP.ParamByName('DCOR').Value           := nfe_001NFE_DCOR.AsString;
        ibSP.ParamByName('XPROD').Value          := nfe_001NFE_XPROD.AsString;
        ibSP.ParamByName('INFADPROD').Value      := nfe_001NFE_INFADPROD.AsString;
        ibSP.ParamByName('UCOM').Value           := nfe_001NFE_UCOM.AsString;
        ibSP.ParamByName('QCOM').Value           := nfe_001NFE_QCOM.AsFloat;
        ibSP.ParamByName('RCOM').Value           := nfe_001NFE_RCOM.AsInteger;
        ibSP.ParamByName('VUNCOM').Value         := nfe_001NFE_VUNCOM.AsFloat;
        ibSP.ParamByName('VPROD').Value          := nfe_001NFE_VPROD.AsFloat;
        ibSP.ParamByName('VFRETE').Value         := nfe_001NFE_VFRETE.AsFloat;
        ibSP.ParamByName('VSEG').Value           := nfe_001NFE_VSEG.AsFloat;
        ibSP.ParamByName('VDESC').Value          := nfe_001NFE_VDESC.AsFloat;
        ibSP.ParamByName('VOUTRO').Value         := nfe_001NFE_VOUTRO.AsFloat;
        ibSP.ParamByName('XLOCEMBARQ').Value     := nfe_001NFE_XLOCEMBARQ.AsString;
        ibSP.ParamByName('UFEMBARQ').Value       := nfe_001NFE_UFEMBARQ.AsString;
        ibSP.ParamByName('NDI').Value            := nfe_001NFE_NDI.AsString;
        ibSP.ParamByName('DDI').Value            := Date;
        ibSP.ParamByName('XLOCDESEMB').Value     := nfe_001NFE_XLOCDESEMB.AsString;
        ibSP.ParamByName('UFDESEMB').Value       := nfe_001NFE_UFDESEMB.AsString;
        ibSP.ParamByName('DDESEMB').Value        := Date;
        ibSP.ParamByName('CEXPORTADOR').Value    := nfe_001NFE_CEXPORTADOR.AsString;
        ibSP.ParamByName('NADICAO').Value        := nfe_001NFE_NADICAO.AsInteger;
        ibSP.ParamByName('NSEQADIC').Value       := nfe_001NFE_NSEQADIC.AsInteger;
        ibSP.ParamByName('CFABRICANTE').Value    := nfe_001NFE_CFABRICANTE.AsString;
        ibSP.ParamByName('VDESCDI').Value        := nfe_001NFE_VDESCDI.AsFloat;
        ibSP.ParamByName('XPED').Value           := nfe_001NFE_XPED.AsString;
        ibSP.ParamByName('ITEMPED').Value        := nfe_001NFE_ITEMPED.AsString;
        ibSP.ParamByName('ORIG').Value           := nfe_001NFE_ORIG.AsString;
        ibSP.ParamByName('CST').Value            := nfe_001NFE_CST.AsString;
        ibSP.ParamByName('MODBC').Value          := nfe_001NFE_MODBC.AsString;
        ibSP.ParamByName('PREDBC').Value         := nfe_001NFE_PREDBC.AsFloat;
        ibSP.ParamByName('VBC').Value            := nfe_001NFE_VBC.AsFloat;
        ibSP.ParamByName('PICMS').Value          := nfe_001NFE_PICMS.AsFloat;
        ibSP.ParamByName('VICMS').Value          := nfe_001NFE_VICMS.AsFloat;
        ibSP.ParamByName('MODBCST').Value        := nfe_001NFE_MODBCST.AsString;
        ibSP.ParamByName('MVAST').Value          := nfe_001NFE_MVAST.AsFloat;
        ibSP.ParamByName('PREDBCST').Value       := nfe_001NFE_PREDBCST.AsFloat;
        ibSP.ParamByName('VBCST').Value          := nfe_001NFE_VBCST.AsFloat;
        ibSP.ParamByName('VBCSTRET').Value       := nfe_001NFE_VBCSTRET.AsFloat;
        ibSP.ParamByName('VICMSSTRET').Value     := nfe_001NFE_VICMSSTRET.AsFloat;
        ibSP.ParamByName('PICMSST').Value        := nfe_001NFE_PICMSST.AsFloat;
        ibSP.ParamByName('VICMSST').Value        := nfe_001NFE_VICMSST.AsFloat;
        ibSP.ParamByName('PCREDSN').Value        := nfe_001NFE_PCREDSN.AsFloat;
        ibSP.ParamByName('VCREDICMSSN').Value    := nfe_001NFE_VCREDICMSSN.AsFloat;
        ibSP.ParamByName('CSTIPI').Value         := nfe_001NFE_CSTIPI.AsString;
        ibSP.ParamByName('VBCIPI').Value         := nfe_001NFE_VBCIPI.AsFloat;
        ibSP.ParamByName('PIPI').Value           := nfe_001NFE_PIPI.AsFloat;
        ibSP.ParamByName('VIPI').Value           := nfe_001NFE_VIPI.AsFloat;
        ibSP.ParamByName('VBCIMP').Value         := nfe_001NFE_VBCIMP.AsFloat;
        ibSP.ParamByName('VDESPADU').Value       := nfe_001NFE_VDESPADU.AsFloat;
        ibSP.ParamByName('VIIIMP').Value         := nfe_001NFE_VIIIMP.AsFloat;
        ibSP.ParamByName('VIOFIMP').Value        := nfe_001NFE_VIOFIMP.AsFloat;
        ibSP.ParamByName('CSTPIS').Value         := nfe_001NFE_CSTPIS.AsString;
        ibSP.ParamByName('VBCPIS').Value         := nfe_001NFE_VBCPIS.AsFloat;
        ibSP.ParamByName('PPIS').Value           := nfe_001NFE_PPIS.AsFloat;
        ibSP.ParamByName('VPIS').Value           := nfe_001NFE_VPIS.AsFloat;
        ibSP.ParamByName('VBCPISST').Value       := nfe_001NFE_VBCPISST.AsFloat;
        ibSP.ParamByName('PPISST').Value         := nfe_001NFE_PPISST.AsFloat;
        ibSP.ParamByName('VPISST').Value         := nfe_001NFE_VPISST.AsFloat;
        ibSP.ParamByName('CSTCOFINS').Value      := nfe_001NFE_CSTCOFINS.AsString;
        ibSP.ParamByName('VBCOFINS').Value       := nfe_001NFE_VBCOFINS.AsFloat;
        ibSP.ParamByName('PCOFINS').Value        := nfe_001NFE_PCOFINS.AsFloat;
        ibSP.ParamByName('VCOFINS').Value        := nfe_001NFE_VCOFINS.AsFloat;
        ibSP.ParamByName('VBCOFINSST').Value     := nfe_001NFE_VBCOFINSST.AsFloat;
        ibSP.ParamByName('PCOFINSST').Value      := nfe_001NFE_PCOFINSST.AsFloat;
        ibSP.ParamByName('VCOFINSST').Value      := nfe_001NFE_VCOFINSST.AsFloat;
        ibSP.ParamByName('VBCISSQN').Value       := nfe_001NFE_VBCISSQN.AsFloat;
        ibSP.ParamByName('VALIQISSQN').Value     := nfe_001NFE_VALIQISSQN.AsFloat;
        ibSP.ParamByName('VISSQN').Value         := nfe_001NFE_VISSQN.AsFloat;
        ibSP.ParamByName('CMUNFGISSQN').Value    := nfe_001NFE_CMUNFGISSQN.AsString;
        ibSP.ParamByName('CLISTSERV').Value      := nfe_001NFE_CLISTSERV.AsInteger;
        ibSP.ParamByName('VNF').Value            := nfe_001NFE_VNF.AsFloat;
        ibSP.ParamByName('CEST').Value           := IFThen(oEmpty(nfe_001NFE_CEST.AsString),'0',nfe_001NFE_CEST.AsString);
        ibSP.ParamByName('VBCSTDEST').Value      := nfe_001NFE_VBCSTDEST.AsFloat;
        ibSP.ParamByName('VICMSSTDEST').Value    := nfe_001NFE_VICMSSTDEST.AsFloat;
        ibSP.ParamByName('VBCUFDEST').Value      := nfe_001NFE_VBCUFDEST.AsFloat;
        ibSP.ParamByName('PFCPUFDEST').Value     := nfe_001NFE_PFCPUFDEST.AsFloat;
        ibSP.ParamByName('PICMSUFDEST').Value    := nfe_001NFE_PICMSUFDEST.AsFloat;
        ibSP.ParamByName('PICMSINTER').Value     := nfe_001NFE_PICMSINTER.AsFloat;
        ibSP.ParamByName('PICMSINTERPART').Value := nfe_001NFE_PICMSINTERPART.AsFloat;
        ibSP.ParamByName('VFCPUFDEST').Value     := nfe_001NFE_VFCPUFDEST.AsFloat;
        ibSP.ParamByName('VICMSUFDEST').Value    := nfe_001NFE_VICMSUFDEST.AsFloat;
        ibSP.ParamByName('VICMSUFREMET').Value   := nfe_001NFE_VICMSUFREMET.AsFloat;
        ibSP.ParamByName('NFCI').Value           := nfe_001NFE_NFCI.AsString;
        ibSP.ExecProc;

        nfe_001.Next;
      end;
    finally
      nfe_001.EnableControls;
    end;
    IBTra.CommitRetaining;
    
    with Consulta do
    begin
      if (edcdro.Text <> '0') and (protocolo <> 'D') then
      begin
        SQL.Clear;
        SQL.Add('SELECT ROM_STCO FROM '+SLPrincipal.Values['rom_cab']);
        SQL.Add('WHERE  ID = '''+edcdro.Text+'''');
        Open;
        edcdro.Hint := fields[0].AsString;

        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
        SQL.Add('SET   ROM_CDNF = '''+edcdnf.Text+''',');
        SQL.Add('      ROM_DNFS = '''+formatDateTime('mm/dd/yy',DEdhEmi.Date)+'''');
        SQL.Add('WHERE ID = '''+edcdro.Text+'''');
        ExecSQL;

        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('SET   ROM_CDNF = '''+edcdnf.Text+''',');
        SQL.Add('      ROM_DNFS = '''+formatDateTime('mm/dd/yy',DEdhEmi.Date)+'''');
        SQL.Add('WHERE ROM_CDRO = '''+edcdro.Text+'''');
        ExecSQL;
        IBTra.CommitRetaining;
      end;

      if lacfav.Caption = 'Cliente' then
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAD_CLI');
        SQL.Add('SET    CLI_RAZA = '''+EDxNome.Text+''',');
        SQL.Add('       CLI_INSC = '''+PEIE.Text+''',');
        SQL.Add('       CLI_CPF  = '''+edcpf.Text +''',');
        SQL.Add('       CLI_RICM = '''+IERegime.Text+''',');
        SQL.Add('       CLI_DDD  = '''+edDDD .Text+''',');
        SQL.Add('       CLI_TEL1 = '''+oRetNumero(EDFone.Text)+''',');
        SQL.Add('       CLI_TLOG = '''+PETxLgr.Text+''',');
        SQL.Add('       CLI_LOGR = '''+EDxLgr.Text+''',');
        SQL.Add('       CLI_NUME = '''+EDNRO.Text+''',');
        SQL.Add('       CLI_COMP = '''+EDxCpl.Text+''',');
        SQL.Add('       CLI_CEP  = '''+edCEP .Text+''',');
        SQL.Add('       CLI_BAI  = '''+EDxBairro.Text+''',');
        SQL.Add('       CLI_CID  = '''+oDELCharEsp(EDxMun.Text)+''',');
        SQL.Add('       CLI_ESTA = '''+PEUF.Text+''',');
        SQL.Add('       CLI_CMUN = '''+PEcMun.Text+''',');
        SQL.Add('       CLI_TLOV = '''+PEETxLgr.Text+''',');
        SQL.Add('       CLI_LOGV = '''+EDExLgr.Text+''',');
        SQL.Add('       CLI_NUMV = '''+EDENRO.Text+''',');
        SQL.Add('       CLI_COMV = '''+EDExCpl.Text+''',');
        SQL.Add('       CLI_CEPV = '''+EDECep.Text+''',');
        SQL.Add('       CLI_BAIV = '''+EDExBairro.Text+''',');
        SQL.Add('       CLI_CIDV = '''+oDELCharEsp(EDExMun.Text)+''',');
        SQL.Add('       CLI_ESTV = '''+PEEUF.Text+''',');
        SQL.Add('       CLI_CMUV = '''+PEEcMun.Text+''',');
        SQL.Add('       CLI_CTRA = '''+edCTRA.Text +''',');
        SQL.Add('       CLI_MAIL = '''+IFThen(oEmail(PEEmail.Text),PEEmail.Text,EmptyStr)+''',');
        SQL.Add('       CLI_DTRA = '''+cbDTRA.Text+'''');
        SQL.Add('WHERE ID = '''+edcfav.Text+'''');
        ExecSQL;
      end else
      if lacfav.Caption = 'Fornecedor' then
      begin
        SQL.Clear;
        SQL.Add('UPDATE CAD_FOR');
        SQL.Add('SET    FOR_RAZA = '''+EDxNome.Text+''',');
        SQL.Add('       FOR_INSC = '''+PEIE.Text+''',');
        SQL.Add('       FOR_CPF  = '''+edcpf.Text +''',');
        SQL.Add('       FOR_RICM = '''+IERegime.Text+''',');
        SQL.Add('       FOR_DDD  = '''+edDDD .Text+''',');
        SQL.Add('       FOR_TEL1 = '''+oRetNumero(EDFone.Text)+''',');
        SQL.Add('       FOR_TLOG = '''+PETxLgr.Text+''',');
        SQL.Add('       FOR_LOGR = '''+EDxLgr.Text+''',');
        SQL.Add('       FOR_NUME = '''+EDNRO.Text+''',');
        SQL.Add('       FOR_COMP = '''+EDxCpl.Text+''',');
        SQL.Add('       FOR_CEP  = '''+edCEP .Text+''',');
        SQL.Add('       FOR_BAI  = '''+EDxBairro.Text+''',');
        SQL.Add('       FOR_CID  = '''+oDELCharEsp(EDxMun .Text)+''',');
        SQL.Add('       FOR_ESTA = '''+PEUF.Text+''',');
        SQL.Add('       FOR_CMUN = '''+PEcMun.Text+''',');
        SQL.Add('       FOR_TLOV = '''+PEETxLgr.Text+''',');
        SQL.Add('       FOR_LOGV = '''+EDExLgr.Text+''',');
        SQL.Add('       FOR_NUMV = '''+EDENRO.Text+''',');
        SQL.Add('       FOR_COMV = '''+EDExCpl.Text+''',');
        SQL.Add('       FOR_CEPV = '''+EDECep.Text+''',');
        SQL.Add('       FOR_BAIV = '''+EDExBairro.Text+''',');
        SQL.Add('       FOR_CIDV = '''+oDELCharEsp(EDExMun.Text)+''',');
        SQL.Add('       FOR_ESTV = '''+PEEUF.Text+''',');
        SQL.Add('       FOR_MAIL = '''+IFThen(oEmail(PEEmail.Text),PEEmail.Text,EmptyStr)+''',');
        SQL.Add('       FOR_CMUV = '''+PEEcMun.Text+'''');
        SQL.Add('WHERE ID = '''+edcfav.Text+'''');
        ExecSQL;
      end;
    end;

    oRTransact(IBTra);
    edcdro.Text := 'x';

    try
      oOTransact(pTra);
      pSP.StoredProcName     := 'SP_EVENT';
      pSP.Prepare;
      pSP.Params[0].AsString := oREPZero('CTR_PED','_',RECParametros.Id,3);
      pSP.ExecProc;
      pTra.Commit;
    except
      pTra.Rollback;
    end;


    try
      oOTransact(pTra);
      pSP.StoredProcName     := 'SP_EVENT';
      pSP.Prepare;
      pSP.Params[0].AsString := 'NFE_CAB';
      pSP.ExecProc;
      pTra.Commit;
    except
      pTra.Rollback;
    end;
  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollback);
      oException(Nil,'Falha ao tentar salvar cadastro !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure Tfrmven_nfe.DUPLICATAS;
var
  i: word;
  valNFE,valDUP,valTOT: double;
  stpd,stco,stfi: string;
const
  aDup : array [1..24] of string = ('A','B','C','D','E','F','G',
                                    'H','I','J','K','L','M','N',
                                    'O','P','Q','R','S','T','U',
                                    'V','X','Z');
begin
  if cbdpag.Text = '' then cbdpag.Text := 'A VISTA';
  with tab_pag do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_PAG');
    SQL.Add('WHERE  PAG_DPAG = '''+cbdpag.Text+'''');
    Open;
  end;

  valNFE := oTextToValor(edvnf.text);
  cli_001.First;
  if cli_001.RecNo > 0 then
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(NFE_VNF) FROM NFE_ITE');
    SQL.Add('WHERE  NFE_CFOP = '''+copy(cbcnat.Text,1,4)+'''');
    Open;
    valNFE := fields[0].AsFloat;
  end;
  EDVDup.Text := FloatToStr(valNFE);

  with dup_001 do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM NFE_DUP');
    ExecSQL;
    TSheild.CommitRetaining;

    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM NFE_DUP');
    SelectSQL.Add('ORDER BY ID');
    Open;
  end;

  if (cbdupl.Text = 'NÃO') or (edcfav.Text = '') or (oTextToValor(edvnf.Text) = 0) then
  Exit;

  if edcdro.Text <> '0' then
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ROM_STPD,ROM_STCO,ROM_STFI FROM '+SLPrincipal.Values['rom_cab']);
    SQL.Add('WHERE ID = '''+edcdro.Text+'''');
    Open;
    stpd := fields[0].AsString;
    stco := fields[1].AsString;
    stfi := fields[2].AsString;
  end;

  valDUP := RoundTO(valNFE/tab_pagPAG_PARC.AsInteger,-2);
  valTOT := 0;
  for i  := 1 to tab_pagPAG_PARC.AsInteger do
  begin
    valTOT := valTOT + valDUP;
    dup_001.Append;
    if edcdro.Text <> '0' then
    begin
      dup_001NFE_CDRO.Value := strtoint(edcdro.Text);
      dup_001NFE_DROM.Value := DEdhEmi.Date;
    end;
    dup_001NFE_CFAV.Value := strtoint(edcfav.Text);
    dup_001NFE_CDNF.Value := strtoint(edcdnf.Text);
    if tab_pagPAG_PARC.AsInteger > 1 then
    dup_001NFE_TITU.Value := dup_001NFE_CDNF.AsString+'-'+aDUP[i] else
    dup_001NFE_TITU.Value := dup_001NFE_CDNF.AsString;
    if cbprz.Text = 'EMISSÃO NF' then
    begin
      dup_001NFE_DNFE.Value := DEdhEmi.Date;
      dup_001NFE_DVEN.Value := incDay(DEdhEmi.Date,tab_pag.Fields[i+1].Value);
    end else
    begin
      dup_001NFE_DNFE.Value := DEdhEmi.Date;
      dup_001NFE_DVEN.Value := incDay(DEdhSaiEnt.Date,tab_pag.Fields[i+1].Value)
    end;
    dup_001NFE_STPD.Value := stpd;
    dup_001NFE_STCO.Value := stco;
    dup_001NFE_STFI.Value := stfi;
    dup_001NFE_PARC.Value := i;
    dup_001NFE_VDUP.Value := valDUP;
    dup_001.Post;
  end;
  TSheild.CommitRetaining;
  dup_001.Close;
  dup_001.Open;

  if valTOT > valNFE then
     valDUP := valDUP - (valTOT - valNFE) else
  if valNFE > valTOT then
     valDUP := valDUP + (valNFE - valTOT) else
     valDUP := 0;
  if valDUP > 0 then
  begin
    dup_001.Last;
    dup_001.Edit;
    dup_001NFE_VDUP.Value := valDUP;
    dup_001.Post;

    TSheild.CommitRetaining;
    dup_001.Close;
    dup_001.Open;
  end;
end;

procedure Tfrmven_nfe.PESQUISA_NATUREZA(pesq,chave: string);
begin
  if pesq = '' then
  exit;

  ActiveControl := Nil;
  with tab_nat do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_NAT');
    if chave = 'F' then
    SQL.Add('WHERE  NAT_DNAT = '''+pesq+'''') else if chave = 'C' then
    SQL.Add('WHERE  NAT_CNAT = '''+pesq+'''');
    Open;
  end;

  if tab_nat.RecNo > 0 then
  begin
    edtnat.Text := tab_natNAT_TIPO.AsString;
    edtpnf.Text := tab_natNAT_OPER.AsString;
    cbcnat.Text := tab_natNAT_CNAT.AsString;
    cbdnat.Text := tab_natNAT_DNAT.AsString;
    IETPNF.Text := tab_natNAT_TPNF.AsString;

    if edtnat.Text = 'DEVOLUÇÃO' then
    IEFinNFe.Text := '4' else
    IEFinNFe.Text := '1';

    if BCalc then
    begin
      nfe_001.First;
      while not nfe_001.Eof do
      begin
        nfe_001.Edit;
        nfe_001NFE_CFOP.Value := tab_natNAT_CNAT.AsString;
        nfe_001.Post;
        nfe_001.Next;
      end;
    end;  
  end;
end;

procedure Tfrmven_nfe.PESQUISA_CLIENTE(pesq,chave: string;cdsc: double);
begin
  try
    with psq_cli do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP ,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
      SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,CLI_MAIL,');
      SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 512) AS VARCHAR(512))) CLI_OBSO');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');

      if pesq = 'I' then
         SQL.Add('WHERE  CAD_CLI.ID = '''+chave+'''')
      else if pesq = 'C' then
         SQL.Add('WHERE  CLI_CNPJ LIKE ''%'+edcnpj.Text+'%''')
      else if pesq = 'F' then
         SQL.Add('WHERE  CLI_FANT LIKE ''%'+chave+'%''')
      else if pesq = 'R' then
         SQL.Add('WHERE  CLI_RAZA LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;

    if psq_cli.recordcount = 0 then
    begin
      if pesq = 'I' then
      begin
        edcfav.SetFocus;
        messageBox(handle,'Código do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'C' then
      begin
        edcnpj.SetFocus;
        messageBox(handle,'C.N.P.J. do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'F' then
      begin
        eddfav.SetFocus;
        messageBox(handle,'Nome fantasia do cliente não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;
      Abort;
    end
    else if psq_cli.recordcount = 1 then
    begin
      if psq_cliCLI_STA.AsString <> '0' then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus;

        messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (psq_cliCLI_STAV.AsString <> 'A') and (psq_cliCLI_STAV.AsString <> 'S') then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus;

        if psq_cliCLI_STAV.AsString = 'I' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_cliCLI_STAV.AsString = 'P' then
           messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);

        Abort;
      end;

      if (psq_cliCLI_ESTA.AsString <> 'EX') and (psq_cliID.AsString <> FrmPrincipal.ParametrosPAR_CCLI.AsString) then
      begin
        if (Length(psq_cliCLI_CNPJ.AsString) < 5) and (Length(psq_cliCLI_CPF.AsString) < 5) then
        begin
          if pesq = 'I' then
             edcfav.SetFocus
          else if pesq = 'C' then
            edcnpj.SetFocus
          else if pesq = 'F' then
            eddfav.SetFocus;
          messageBox(handle,PChar('Cliente '+psq_cliCLI_FANT.AsString+' sem C.N.P.J. e C.P.F cadastrado. '+#13+'Verifique !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
          Abort;
        end;
      end;

      cad_cli.Close;
      cad_cli.Params[0].Value := psq_cliID.AsString;
      cad_cli.Open;

      cbcnat.SetFocus;
    end else
    begin
      FRMCAD_CLI := TFRMCAD_CLI.Create(Self);

      with frmcad_cli.cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP ,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
        SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,CLI_MAIL,');
        SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) CLI_OBSO');
        SQL.Add('FROM   CAD_CLI');
        SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
        SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');

        if pesq = 'C' then
           SQL.Add('WHERE  CLI_CNPJ LIKE ''%'+edcnpj.Text+'%''')
        else if pesq = 'F' then
           SQL.Add('WHERE  CLI_FANT LIKE ''%'+eddfav.Text+'%''');
        SQL.Add('AND    CLI_STA  = 0');
        SQL.Add('AND    CLI_STAV = ''A''');

        SQL.Add('ORDER BY CLI_FANT');
        Prepare;
        Open;
      end;

      try
        frmcad_cli.FormStyle := fsNormal;
        frmcad_cli.Visible   := false;
        frmcad_cli.ShowModal;
      finally
        if frmcad_cli.Editado then
        PESQUISA_CLIENTE('I',frmcad_cli.cadastroID.AsString,0);
      end;
    end;
  finally
    if psq_cli.RecNo = 0 then
    begin
      edcfav.Text := '0';
      eddfav.Text := '';
    end;

    PCEdicao.ActivePageIndex := 0;
    dbgnfe.SetFocus;
  end;
end;

procedure Tfrmven_nfe.PESQUISA_FORNECEDOR(pesq,chave: string;cdsc: double);
begin
  try
    with psq_for do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP ,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,');
      SQL.Add('       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR_DDD,FOR_TEL1,REP_FANT,USU_DUSU,FOR_STPD,FOR_DTRA,FOR_DUSU,FOR_MAIL,');
      SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 512) AS VARCHAR(512))) FOR_OBSO');
      SQL.Add('FROM   CAD_FOR');
      SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_FOR.FOR_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_FOR.FOR_CREP = CAD_REP.ID');

      if pesq = 'I' then
         SQL.Add('WHERE  CAD_FOR.ID = '''+chave+'''')
      else if pesq = 'C' then
         SQL.Add('WHERE  FOR_CNPJ LIKE ''%'+edcnpj.Text+'%''')
      else if pesq = 'F' then
         SQL.Add('WHERE  FOR_FANT LIKE ''%'+chave+'%''')
      else if pesq = 'R' then
         SQL.Add('WHERE  FOR_RAZA LIKE ''%'+chave+'%''');

      Open;
      Last;
    end;

    if psq_for.recordcount = 0 then
    begin
      if pesq = 'I' then
      begin
        edcfav.SetFocus;
        messageBox(handle,'Código do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'C' then
      begin
        edcnpj.SetFocus;
        messageBox(handle,'C.N.P.J. do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end
      else if pesq = 'F' then
      begin
        eddfav.SetFocus;
        messageBox(handle,'Nome fantasia do fornecedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      end;
      Abort;
    end
    else if psq_for.recordcount = 1 then
    begin
      if psq_forFOR_STA.AsString <> '0' then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus;
        messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if psq_forFOR_STAV.AsString <> 'A' then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus;

        if psq_forFOR_STAV.AsString = 'I' then
           messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if psq_forFOR_STAV.AsString = 'P' then
           messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' aguardando autorização de compra !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if (Length(psq_forFOR_CNPJ.AsString) < 5) and (Length(psq_forFOR_CPF.AsString) < 5) then
      begin
        if pesq = 'I' then
           edcfav.SetFocus
        else if pesq = 'C' then
          edcnpj.SetFocus
        else if pesq = 'F' then
          eddfav.SetFocus;

        messageBox(handle,PChar('Fornecedor '+psq_forFOR_FANT.AsString+' sem C.N.P.J. e C.P.F cadastrado. '+#13+'Verifique !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      cad_for.Close;
      cad_for.Params[0].Value := psq_forID.AsString;
      cad_for.Open;
    end else
    begin
      FRMCAD_FOR := TFRMCAD_FOR.Create(Self);
      with frmcad_for.cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_FOR.ID,FOR_FANT,FOR_RAZA,FOR_CNPJ,FOR_CPF,FOR_CRED,FOR_CID,FOR_BAI,FOR_TLOG,FOR_LOGR,FOR_NUME,FOR_CEP,FOR_COMP,FOR_ESTA,FOR_STA,FOR_STAV,FOR_DPAG,');
        SQL.Add('       FOR_VDSC,FOR_DCAD,FOR_DFUN,FOR_DALT,FOR_DULT,FOR_VULT,FOR_DDD,FOR_TEL1,FOR_DTRA,FOR_CDEP,FOR_MAIL,');
        SQL.Add('       TRIM(CAST(SUBSTRING(FOR_OBSO FROM 1 FOR 8192) AS VARCHAR(8192))) FOR_OBSO');

        if pesq = 'C' then
        SQL.Add('WHERE  FOR_CNPJ LIKE ''%'+edcnpj.Text+'%''')
        else if pesq = 'F' then
        SQL.Add('WHERE  FOR_FANT LIKE ''%'+eddfav.Text+'%''');
        SQL.Add('AND    FOR_STA  = 0');
        SQL.Add('AND    FOR_STAV = ''A''');

        SQL.Add('ORDER BY FOR_FANT');
        Prepare;
        Open;
      end;

      try
        frmcad_for.FormStyle := fsNormal;
        frmcad_for.Visible   := false;
        frmcad_for.ShowModal;
      finally
        if frmcad_for.Editado then
        PESQUISA_FORNECEDOR('I',frmcad_cli.cadastroID.AsString,0);
      end;
    end;
  finally
    PCEdicao.ActivePageIndex := 0;
    dbgnfe.SetFocus;
  end;
end;

procedure Tfrmven_nfe.LACFavClick(Sender: TObject);
begin
  if lacfav.Caption = 'Cliente' then
     lacfav.Caption := 'Fornecedor' else
  if lacfav.Caption = 'Fornecedor' then
     lacfav.Caption := 'Representante' else
  if lacfav.Caption = 'Representante' then
     lacfav.Caption := 'Cliente';

  lacfav.Refresh;
  eddfav.SetFocus;
end;

procedure Tfrmven_nfe.siINCClick(Sender: TObject);
begin
  if nfe_001.State = dsBrowse then
  nfe_001.Append;
end;

procedure Tfrmven_nfe.siALTClick(Sender: TObject);
begin
  if nfe_001.State = dsBrowse then
  nfe_001.Edit;
end;

procedure Tfrmven_nfe.siDELClick(Sender: TObject);
begin
  if (nfe_001.State in [dsEdit,dsInsert]) or (nfe_001.Fields[0].IsNull) then
  Abort;

  nfe_001.Delete;
end;

procedure Tfrmven_nfe.siSAVClick(Sender: TObject);
begin
  if nfe_001.State in [dsEdit,dsInsert] then
     nfe_001.Post;
end;

procedure Tfrmven_nfe.siCANClick(Sender: TObject);
begin
  if nfe_001.State in [dsEdit,dsInsert] then
     nfe_001.Cancel;
end;

procedure Tfrmven_nfe.nfe_001AfterCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
end;

procedure Tfrmven_nfe.nfe_001AfterDelete(DataSet: TDataSet);
begin
  oRTransact(TSheild);
  Calcula_NF;
end;

procedure Tfrmven_nfe.nfe_001AfterOpen(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
end;

procedure Tfrmven_nfe.nfe_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;

    wRec := nfe_001.GetBookmark;
    oRTransact(TSheild);
    Calcula_NF;

    if (wRec = Nil) or (nfe_001.Fields[0].IsNull) then nfe_001.last else
    nfe_001.GotoBookmark(wRec);
    nfe_001.FreeBookmark(wRec);
  end;
end;

procedure Tfrmven_nfe.nfe_001BeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
  
  if nfe_001.RecordCount = 0 then
  begin
    nfe_001.Close;
    nfe_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_nfe.nfe_001NewRecord(DataSet: TDataSet);
begin
  with Aux_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(NFE_ITEMPED),0) FROM NFE_ITE');
    Open;
  end;
  nfe_001ID.Value          := 0;
  nfe_001NFE_IPRO.Value    := 0;
  nfe_001NFE_ITEMPED.Value := Aux_S.Fields[0].AsInteger + 1;
  nfe_001NFE_QCOM.Value    := 0;
  nfe_001NFE_RCOM.Value    := 1;
  nfe_001NFE_VUNCOM.Value  := 0;
  nfe_001NFE_VPROD.Value   := 0;
  nfe_001NFE_VNF.Value     := 0;
  nfe_001NFE_PIPI.Value    := 0;
  nfe_001NFE_MODBC.Value   := '3';
  nfe_001NFE_VDESC.Value   := 0;
  nfe_001NFE_VSEG.Value    := 0;
  nfe_001NFE_VFRETE.Value  := 0;
  nfe_001NFE_CEST.Value    := '';
  nfe_001NFE_MODBCST.Value := '';
  nfe_001NFE_REPR.Value    := 'R';
  nfe_001NFE_CDNF.Value    := StrToInt(edcdnf.Text);
  nfe_001NFE_CFOP.Value    := LeftStr(cbcnat.Text,4);
  nfe_001NFE_CBENEF.Value  := 'SEM CBENEF';
end;

procedure Tfrmven_nfe.edcfavValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcfav.Text <> '0' then
  try
    Tag := 1;
    cad_cli.Close;
    cad_for.Close;

    if lacfav.Caption = 'Cliente'    then
    PESQUISA_CLIENTE('I',edcfav.Text,0) else
    if lacfav.Caption = 'Fornecedor' then
    PESQUISA_FORNECEDOR('I',edcfav.Text,0);
  finally
    CALCULA_NF;
    if edcfav.Text = '0' then
    edcfav.SetFocus else
    begin
      PCEdicao.ActivePage := TSDestinatario;
      if oEmpty(cbcnat.Text) then cbcnat.SetFocus else
      if oEmpty(cbdtra.Text) then
         if PCTransporte.ActivePageIndex = 0 then
            cbdtra.SetFocus;
    end;
  end;
end;


procedure Tfrmven_nfe.eddfavValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if eddfav.Text <> '' then
  try
    Tag := 1;
    cad_cli.Close;
    cad_for.Close;

    if lacfav.Caption = 'Cliente'    then
    PESQUISA_CLIENTE('F',eddfav.Text,0) else
    if lacfav.Caption = 'Fornecedor' then
    PESQUISA_FORNECEDOR('F',eddfav.Text,0);
  finally
    CALCULA_NF;
    if eddfav.Text = '' then
    eddfav.SetFocus else

    if oEmpty(cbcnat.Text) then cbcnat.SetFocus else
    if oEmpty(cbdtra.Text) then
    cbdtra.SetFocus else
    if PCEdicao.ActivePage = TSProduto then
    DBGNFE.SetFocus;
  end;
end;

procedure Tfrmven_nfe.cad_cliAfterOpen(DataSet: TDataSet);
begin
  edcfav.Text      := cad_cliID.AsString;
  eddfav.Text      := cad_cliCLI_FANT.AsString;
  EDxNome.Text     := cad_cliCLI_RAZA.AsString;
  PEEmail.Text     := cad_cliCLI_MAIL.AsString;
  edCNPJ.Text      := cad_cliCLI_CNPJ.AsString;
  edCPF.Text       := cad_cliCLI_CPF.AsString;
  EDISUF.Text      := cad_cliCLI_CCM.AsString;
  PETxLgr.Text     := cad_cliCLI_TLOG.AsString;
  EDxLgr.Text      := cad_cliCLI_LOGR.AsString;
  EDNRO.Text       := cad_cliCLI_NUME.AsString;
  EDxCpl.Text      := cad_cliCLI_COMP.AsString;
  edCEP.Text       := cad_cliCLI_CEP.AsString;
  EDxBairro.Text   := cad_cliCLI_BAI.AsString;
  EDxMun.Text      := cad_cliCLI_CID.AsString;
  PEUF.Text        := cad_cliCLI_ESTA.AsString;
  PEcMun.Text      := cad_cliCLI_CMUN.AsString;
  PEETxLgr.Text    := cad_cliCLI_TLOV.AsString;
  EDExLgr.Text     := cad_cliCLI_LOGV.AsString;
  EDENRO.Text      := cad_cliCLI_NUMV.AsString;
  EDExCpl.Text     := cad_cliCLI_COMV.AsString;
  EDECep.Text      := cad_cliCLI_CEPV.AsString;
  EDExBairro.Text  := cad_cliCLI_BAIV.AsString;
  EDExMun.Text     := cad_cliCLI_CIDV.AsString;
  PEEUF.Text       := cad_cliCLI_ESTV.AsString;
  PEEcMun.Text     := cad_cliCLI_CMUV.AsString;
  IERegime.Text    := cad_cliCLI_RICM.AsString;
  IECredICMS.Text  := cad_cliCLI_CICM.AsString;

  edDDD.Text       := cad_cliCLI_DDD.AsString;
  EDFone.Text      := oRETNumero(cad_cliCLI_TEL1.AsString);
  EDContato.Text   := cad_cliCLI_CONT.AsString;
  IF not oEmpty(EDContato.Text) then
  EDContato.Visible := True else
  EDContato.Visible := False;

  EDInfAdC.Text    := cad_cliCLI_OBSE.AsString;
  EDInfAdF.Text    := cad_cliCLI_OBSO.AsString;
  if ((GBInfAdF.Height > 40) and (not oEmpty(EDInfAdF.Text))) then
  GBInfAdF.Visible := True else
  GBInfAdF.Visible := False;

  PEIE.Items.Clear;
  PEIE.Items.Add('');
  PEIE.Items.Add('ISENTO');
  PEIE.Items.Add(cad_cliCLI_INSC.AsString);
  PEIE.Text := cad_cliCLI_INSC.AsString;

  if (not oEmpty(EDCnpj.Text)) and (not oEmpty(PEIE.Text)) and (PEIE.Text <> 'ISENTO') then
  IEindIEDest.Text := '1' else
  begin
    if (PEUF.Text = 'EX') or (oEmpty(PEIE.Text)) then
    IEindIEDest.Text := '9' else
    IEindIEDest.Text := '2';
  end;
  IEIndFinal.Text := IFThen(IEIndIEDest.Text = '1','0','1');

  if PEUF.Text <> 'EX' then
  IExPais.Text := '1058';
  
  if (BCalc) then
  begin
    if edcdro.Text = '0' then
    with Consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FIRST 1 NFE_CNAT,NFE_DEMI,NFE_DTRA');
      SQL.Add('FROM '  +SLPrincipal.Values['nfe_cab']);
      SQL.Add('WHERE    NFE_CFAV = '''+edcfav.Text+'''');
      SQL.Add('ORDER BY 2 DESC');
      Open;
      if not Fields[0].IsNull then
      begin
        cbcnat.Text := Fields[0].AsString;
        cbdtra.Text := Fields[2].AsString;
      end;
    end else
    if (PEUF.Text = FrmPrincipal.ParametrosPAR_UF.AsString) then
    cbcnat.Text := edcna1.Text else
    cbcnat.Text := edcna2.Text;

    if oEmpty(cbcnat.Text) then
       if (PEUF.Text = FrmPrincipal.ParametrosPAR_UF.AsString) then
       cbcnat.Text := FrmPrincipal.ParametrosPAR_CNA1.AsString else
       cbcnat.Text := FrmPrincipal.ParametrosPAR_CNA2.AsString;

    if PEUF.Text = 'EX' then
       cbcnat.Text := '710'+RightStr(FrmPrincipal.ParametrosPAR_CNA1.AsString,1);

    with tab_alq do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM TAB_ALQ');
      SQL.Add('WHERE  ALQ_ESTA = '''+PEUF.Text+'''');
      Open;
    end;
  end;

  PESQUISA_NATUREZA(cbcnat.Text,'C');
  PESQUISA_TRANSPORTADORA(cbdtra.Text,'F');
end;

procedure Tfrmven_nfe.cad_forAfterOpen(DataSet: TDataSet);
begin
  edcfav.Text     := cad_forID.AsString;
  eddfav.Text     := cad_forFOR_FANT.AsString;
  EDxNome.Text    := cad_forFOR_RAZA.AsString;
  PEEmail.Text    := cad_forFOR_MAIL.AsString;
  edCNPJ.Text     := cad_forFOR_CNPJ.AsString;
  edCPF.Text      := cad_forFOR_CPF.AsString;
  edDDD.Text      := cad_forFOR_DDD.AsString;
  EDFone.Text     := oRETNumero(cad_forFOR_TEL1.AsString);
  PETxLgr.Text    := cad_forFOR_TLOG.AsString;
  EDxLgr.Text     := cad_forFOR_LOGR.AsString;
  EDNRO.Text      := cad_forFOR_NUME.AsString;
  EDxCpl.Text     := cad_forFOR_COMP.AsString;
  edCEP.Text      := cad_forFOR_CEP.AsString;
  EDxBairro.Text  := cad_forFOR_BAI.AsString;
  EDxMun.Text     := cad_forFOR_CID.AsString;
  PEUF.Text       := cad_forFOR_ESTA.AsString;
  PEcMun.Text     := cad_forFOR_CMUN.AsString;
  PEETxLgr.Text   := cad_forFOR_TLOV.AsString;
  EDExLgr.Text    := cad_forFOR_LOGV.AsString;
  EDENRO.Text     := cad_forFOR_NUMV.AsString;
  EDExCpl.Text    := cad_forFOR_COMV.AsString;
  EDECep.Text     := cad_forFOR_CEPV.AsString;
  EDExBairro.Text := cad_forFOR_BAIV.AsString;
  EDExMun.Text    := cad_forFOR_CIDV.AsString;
  PEEUF.Text      := cad_forFOR_ESTV.AsString;
  PEEcMun.Text    := cad_forFOR_CMUV.AsString;
  IERegime.Text   := cad_forFOR_RICM.AsString;
  IECredICMS.Text := cad_forFOR_CICM.AsString;

  PEIE.Items.Clear;
  PEIE.Items.Add('');
  PEIE.Items.Add('ISENTO');
  PEIE.Items.Add(cad_forFOR_INSC.AsString);
  PEIE.Text := cad_forFOR_INSC.AsString;

  if (not oEmpty(EDCnpj.Text)) and (not oEmpty(PEIE.Text)) and (PEIE.Text <> 'ISENTO') then
  IEindIEDest.Text := '1' else
  begin
    if (PEUF.Text = 'EX') or (oEmpty(PEIE.Text)) then
    IEindIEDest.Text := '9' else
    IEindIEDest.Text := '2';
  end;
  IEIndFinal.Text := IFThen(IEIndIEDest.Text = '1','0','1');

  if PEUF.Text <> 'EX' then
  IExPais.Text := '1058';
  
  if (BCalc) then
  begin
    if edcdro.Text = '0' then
    with Consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FIRST 1 NFE_CNAT,NFE_DEMI,NFE_DTRA');
      SQL.Add('FROM '  +SLPrincipal.Values['nfe_cab']);
      SQL.Add('WHERE    NFE_CFAV = '''+edcfav.Text+'''');
      SQL.Add('ORDER BY 2 DESC');
      Open;
      if not Fields[0].IsNull then
      begin
        cbcnat.Text := Fields[0].AsString;
        cbdtra.Text := Fields[2].AsString;
      end;
    end else
    if (PEUF.Text = FrmPrincipal.ParametrosPAR_UF.AsString) then
    cbcnat.Text := edcna1.Text else
    cbcnat.Text := edcna2.Text;

    if oEmpty(cbcnat.Text) then
       if (PEUF.Text = FrmPrincipal.ParametrosPAR_UF.AsString) then
       cbcnat.Text := FrmPrincipal.ParametrosPAR_CNA1.AsString else
       cbcnat.Text := FrmPrincipal.ParametrosPAR_CNA2.AsString;

    with tab_alq do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM TAB_ALQ');
      SQL.Add('WHERE  ALQ_ESTA = '''+PEUF.Text+'''');
      Open;
    end;
  end;

  PESQUISA_NATUREZA(cbcnat.Text,'C');
  PESQUISA_TRANSPORTADORA(cbdtra.Text,'F');
end;

procedure Tfrmven_nfe.cbduplChange(Sender: TObject);
begin
  DUPLICATAS;
end;

procedure Tfrmven_nfe.cbdpagExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  if cbdpag.Modified then
  try
    DUPLICATAS;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := Nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_nfe.dup_001AfterPost(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siIDU.Enabled := true;
    siADU.Enabled := true;
    siDDU.Enabled := true;
    siSDU.Enabled := false;
    siCDU.Enabled := false;
  end;
end;

procedure Tfrmven_nfe.dup_001BeforeCancel(DataSet: TDataSet);
begin
  siIDU.Enabled := true;
  siADU.Enabled := true;
  siDDU.Enabled := true;
  siSDU.Enabled := false;
  siCDU.Enabled := false;

  if dup_001.RecordCount = 0 then
  begin
    dup_001.Close;
    dup_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_nfe.dup_001AfterDelete(DataSet: TDataSet);
begin
  TSheild.CommitRetaining;
end;

procedure Tfrmven_nfe.dup_001AfterEdit(DataSet: TDataSet);
begin
  siIDU.Enabled := false;
  siADU.Enabled := false;
  siDDU.Enabled := false;
  siSDU.Enabled := true;
  siCDU.Enabled := true;
end;

procedure Tfrmven_nfe.dup_001NewRecord(DataSet: TDataSet);
begin
  dup_001ID.Value := 0;
end;

procedure Tfrmven_nfe.dbgnfeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if nfe_001.State in [dsInsert,dsEdit] then
                 begin
                   if (dbgnfe.FocusedColumn = 2) or (dbgnfe.FocusedColumn = 4) then
                       PESQUISA_PRODUTO(IFThen(dbgnfe.FocusedColumn = 2,'Produto','Descrição'),oRETCodigo(DBGNFE.EditingText));

                   if ((dbgnfe.FocusedColumn >= 8) and (nfe_001NFE_VUNCOM.AsFloat > 0)) or
                       (dbgnfe.FocusedColumn  = 9) then
                   begin
                     nfe_001.Next;
                     if nfe_001.Eof then
                     nfe_001.Append;
                     dbgnfe.FocusedColumn := 2;
                   end else
                   begin
                     dbgnfe.FocusedColumn := dbgnfe.FocusedColumn + 1;
                     if dbgnfe.FocusedColumn < 8 then
                        if oEmpty(nfe_001NFE_CFOP.AsString) then
                        dbgnfe.FocusedColumn := 1 else
                        if oEmpty(nfe_001NFE_NCM.AsString) then
                        dbgnfe.FocusedColumn := 3 else
                        if oEmpty(nfe_001NFE_XPROD.AsString) then
                        dbgnfe.FocusedColumn := 4 else
                        if oEmpty(nfe_001NFE_ORIG.AsString) then
                        dbgnfe.FocusedColumn := 5 else
                        if oEmpty(nfe_001NFE_CST.AsString) then
                        dbgnfe.FocusedColumn := 6 else
                        if oEmpty(nfe_001NFE_UCOM.AsString) then
                        dbgnfe.FocusedColumn := 7 else
                        dbgnfe.FocusedColumn := 8;
                   end;
                 end else
                 nfe_001.Edit;
               end;
    VK_DELETE: if nfe_001.State = dsBrowse then siDEL.Click;
    VK_ESCAPE: if nfe_001.State = dsBrowse then close else nfe_001.Cancel;
  end;
end;

procedure Tfrmven_nfe.EDidEstrangeiroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDInfAdNF.Text    := trim(EDInfAdNF.Text)+EDidEstrangeiro.Text;
end;

procedure Tfrmven_nfe.cli_001AfterCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siICL.Enabled := true;
    siACL.Enabled := true;
    siDCL.Enabled := true;
    siSCL.Enabled := false;
    siCCL.Enabled := false;
  end;
end;

procedure Tfrmven_nfe.cli_001AfterDelete(DataSet: TDataSet);
begin
  oRTransact(TSheild);
  CALCULA_NF;
end;

procedure Tfrmven_nfe.cli_001AfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siICL.Enabled := false;
    siACL.Enabled := false;
    siDCL.Enabled := false;
    siSCL.Enabled := true;
    siCCL.Enabled := true;
  end;

  if PCEdicao.ActivePage = TSServico then
  DBGCLI.SetFocus;
end;

procedure Tfrmven_nfe.cli_001AfterInsert(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siICL.Enabled := false;
    siACL.Enabled := false;
    siDCL.Enabled := false;
    siSCL.Enabled := true;
    siCCL.Enabled := true;

    dbgcli.FocusedColumn := 0;
  end;

  if PCEdicao.ActivePage = TSServico then
  DBGCLI.SetFocus;
end;

procedure Tfrmven_nfe.cli_001AfterOpen(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siICL.Enabled := true;
    siACL.Enabled := true;
    siDCL.Enabled := true;
    siSCL.Enabled := false;
    siCCL.Enabled := false;
  end;
end;

procedure Tfrmven_nfe.cli_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  if tag = 0 then
  begin
    siICL.Enabled := true;
    siACL.Enabled := true;
    siDCL.Enabled := true;
    siSCL.Enabled := false;
    siCCL.Enabled := false;

    dbgnfeNFE_QCOM.Tag := 0; 
    wRec := cli_001.GetBookmark;
    oRTransact(TSheild);

    if Pos('/',CBCNAT.Text) > 0 then
    CALCULA_MAO_OBRA;
    Calcula_NF;

    if (wRec = Nil) or (cli_001.Fields[0].IsNull) then cli_001.last else
    cli_001.GotoBookmark(wRec);
    cli_001.FreeBookmark(wRec);
  end;
end;

procedure Tfrmven_nfe.cli_001BeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siACL.Enabled := true;
    siDCL.Enabled := true;
    siSCL.Enabled := false;
    siCCL.Enabled := false;
  end;
  
  if cli_001.RecordCount = 0 then
  begin
    cli_001.Close;
    cli_001.Open;
    ABORT;
  end;
end;

procedure Tfrmven_nfe.cli_001NewRecord(DataSet: TDataSet);
begin
  cli_001ID.Value       := 0;
  cli_001NFE_DCAD.Value := DEdhEmi.Date;
end;

procedure Tfrmven_nfe.cli_001BeforePost(DataSet: TDataSet);
begin
  if cli_001NFE_CDNF.AsInteger = 0 then
     DataBaseError('Número da nota fiscal de serviço não informado !');

  if cli_001NFE_DCAD.IsNull then
     DataBaseError('Data de emissão da nota fiscal de serviço não informado !');

  if cli_001NFE_VNF.AsFloat = 0 then
     DataBaseError('Valor total da nota fiscal de serviço não informado !');
end;

procedure Tfrmven_nfe.siICLClick(Sender: TObject);
begin
  cli_001.Append;
end;

procedure Tfrmven_nfe.siACLClick(Sender: TObject);
begin
  cli_001.Edit;
end;

procedure Tfrmven_nfe.siDCLClick(Sender: TObject);
begin
  cli_001.Delete;
end;

procedure Tfrmven_nfe.siSCLClick(Sender: TObject);
begin
  cli_001.Post;
end;

procedure Tfrmven_nfe.siCCLClick(Sender: TObject);
begin
  cli_001.Cancel;
end;

procedure Tfrmven_nfe.siIDUClick(Sender: TObject);
begin
  dup_001.Append;
end;

procedure Tfrmven_nfe.siDDUClick(Sender: TObject);
begin
  dup_001.Delete;
end;

procedure Tfrmven_nfe.siSDUClick(Sender: TObject);
begin
  dup_001.Post;
end;

procedure Tfrmven_nfe.siCDUClick(Sender: TObject);
begin
  dup_001.Cancel;
end;

procedure Tfrmven_nfe.siADUClick(Sender: TObject);
begin
  dup_001.Edit;
end;

procedure Tfrmven_nfe.nfe_001NFE_CFOPValidate(Sender: TField);
begin
  if tab_natNAT_CNAT.AsString <> nfe_001NFE_CFOP.AsString then
  with tab_nat do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_NAT');
    SQL.Add('WHERE  NAT_CNAT = '''+nfe_001NFE_CFOP.AsString+'''');
    Open;
  end;
  if not tab_nat.Fields[0].IsNull then
  begin
    nfe_001NFE_CSTIPI.Value    := tab_natNAT_CSTI.AsString;
    nfe_001NFE_CSTPIS.Value    := tab_natNAT_CSTP.AsString;
    nfe_001NFE_PPIS.Value      := tab_natNAT_PIPP.AsFloat;
    nfe_001NFE_CSTCOFINS.Value := tab_natNAT_CSTC.AsString;
    nfe_001NFE_PCOFINS.Value   := tab_natNAT_PIPC.AsFloat;
    nfe_001NFE_INDTOT.Value    := tab_natNAT_INDT.AsInteger;
    nfe_001NFE_FRET.Value      := tab_natNAT_FRET.AsString;
    nfe_001NFE_TIPO.Value      := tab_natNAT_TIPO.AsString;
    if RECParametros.RegimeTributario = '3' then
    nfe_001NFE_CST.Value := tab_natNAT_CCST.AsString else
    begin
      nfe_001NFE_CST.Value := tab_natNAT_CSTS.AsString;
      if (IECredICMS.Text = '1') and (FrmPrincipal.ParametrosPAR_CICM.AsFloat > 0) then
         if (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5101') or (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5102') or
            (LeftStr(nfe_001NFE_CFOP.AsString,4) = '6101') or (LeftStr(nfe_001NFE_CFOP.AsString,4) = '6102') or
            (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5124') or (LeftStr(nfe_001NFE_CFOP.AsString,4) = '6124') or
            (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5125') or (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5925') then
            nfe_001NFE_CST.Value := tab_natNAT_CSTA.AsString;
    end;
  end;

  dbgnfeNFE_UTRIB.Visible   := (LeftStr(nfe_001NFE_CFOP.AsString,1) = '7');
  dbgnfeNFE_QTRIB.Visible   := dbgnfeNFE_UTRIB.Visible;
  dbgnfeNFE_VUNTRIB.Visible := dbgnfeNFE_UTRIB.Visible;
  if (LeftStr(nfe_001NFE_CFOP.AsString,1) <> '7') or (nfe_001NFE_QTRIB.AsFloat = 0) then
  begin
    nfe_001NFE_UTRIB.Value   := nfe_001NFE_UCOM.AsString;
    nfe_001NFE_QTRIB.Value   := nfe_001NFE_QCOM.AsFloat;
    nfe_001NFE_VUNTRIB.Value := nfe_001NFE_VUNCOM.AsFloat;
  end;
end;

procedure Tfrmven_nfe.nfe_001NFE_NCMValidate(Sender: TField);
begin
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT NCM,CEST,EXTIPI,UTRIB FROM TAB_NCM');
    SQL.Add('WHERE  NCM = '''+nfe_001NFE_CFOP.AsString+'''');
    Open;
    if not Fields[0].IsNull then
    begin
      nfe_001NFE_CEST.Value   := Fields[1].AsString;
      nfe_001NFE_EXTIPI.Value := Fields[2].AsString;
      if LeftStr(nfe_001NFE_CFOP.AsString,1) = '7' then
      nfe_001NFE_UTRIB.Value  := Fields[3].AsString;
    end;
  end;
end;

procedure Tfrmven_nfe.nfe_001NFE_UCOMValidate(Sender: TField);
begin
  if ((BCalc) and (IEFinNFe.Text <> '2')) then
  begin
    if (LeftStr(nfe_001NFE_CFOP.AsString,1) <> '7') or (nfe_001NFE_QTRIB.AsFloat = 0) then
    begin
      nfe_001NFE_UTRIB.Value   := nfe_001NFE_UCOM.AsString;
      nfe_001NFE_QTRIB.Value   := nfe_001NFE_QCOM.AsFloat;
      nfe_001NFE_VUNTRIB.Value := nfe_001NFE_VUNCOM.AsFloat;
    end;
    nfe_001NFE_VPROD.Value := RoundTO(nfe_001NFE_QCOM.AsFloat * nfe_001NFE_VUNCOM.AsFloat,-2);
  end;
end;

procedure Tfrmven_nfe.nfe_001NFE_PIPIValidate(Sender: TField);
begin
  if IEFinNFe.Text <> '2' then
     nfe_001NFE_CSTIPI.Value := tab_natNAT_CSTI.AsString;
end;

procedure Tfrmven_nfe.nfe_001NFE_VPRODValidate(Sender: TField);
begin
  if IEFinNFe.Text <> '2' then
     if ((nfe_001NFE_QTRIB.AsFloat > 0) and (nfe_001NFE_VPROD.AsFloat > 0) and (nfe_001NFE_QTRIB.AsFloat <> nfe_001NFE_QCOM.AsFloat)) then
          nfe_001NFE_VUNTRIB.Value := nfe_001NFE_VPROD.AsFloat / nfe_001NFE_QTRIB.AsFloat;
end;

procedure Tfrmven_nfe.nfe_001NFE_CSTIPIValidate(Sender: TField);
begin
  if IEFinNFe.Text <> '2' then
  begin
    if (nfe_001NFE_CSTIPI.AsString = '02') or (nfe_001NFE_CSTIPI.AsString = '52') then
    nfe_001NFE_CENQ.Value := '301' else
    if (nfe_001NFE_CSTIPI.AsString = '04') or (nfe_001NFE_CSTIPI.AsString = '54') then
    nfe_001NFE_CENQ.Value := '001' else
    if nfe_001NFE_CSTIPI.AsString = '05' then
    nfe_001NFE_CENQ.Value := '101' else
    if nfe_001NFE_CSTIPI.AsString = '55' then
    nfe_001NFE_CENQ.Value := '109' else
    nfe_001NFE_CENQ.Value := '999';
  end;  
end;

procedure Tfrmven_nfe.nfe_001BeforePost(DataSet: TDataSet);
begin
  if IEFinNFe.Text <> '2' then
  begin
    if BImp.Tag = 0 then
    begin
      if nfe_001NFE_STAV.AsString = 'I' then DataBaseError('Produto '+nfe_001NFE_CPROD.AsString+' Inativo !');
      if nfe_001NFE_STAV.AsString = 'P' then DataBaseError('Produto '+nfe_001NFE_CPROD.AsString+' em Desenvolvimento !');
    end;

    if (IEFinNFe.Text <> '2') and (IEFinNFe.Text <> '3') then
    begin
      if LeftStr(nfe_001NFE_CEAN.AsString,3) <> '789' then nfe_001NFE_CEAN.Value := '';

      if nfe_001NFE_CCAB.AsInteger <> 99999 then
      nfe_001NFE_PICMS.Value := IFThen((nfe_001NFE_CST.AsString <> '900') and (RECParametros.RegimeTributario = '1'),0,
                                IFThen(PEUF.Text = 'EX',RECParametros.PICMS,
                                IFThen((Pos(nfe_001NFE_ORIG.AsString,'123') > 0) and (PEUF.Text <> RECParametros.UnidadeFederada),4,tab_alqALQ_ICMS.AsFloat)));


      if nfe_001NFE_REPR.AsString <> 'M' then
      begin
        if ((not oEmpty(nfe_001NFE_NCM.AsString)) and (not oEmpty(PEUF.Text)) and (PEUF.Text <> 'EX')) then
        with Consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT CLF_VI04,CLF_VI07,CLF_VI12,CLF_VISP,CLF_PROT FROM TAB_CLF');
          SQL.Add('WHERE  CLF_CCLF = '''+nfe_001NFE_NCM.AsString +'''');
          SQL.Add('AND    CLF_UF   = '''+PEUF.Text+'''');
          Open;

          if not Eof then
             if (nfe_001NFE_VI04.AsFloat <> fields[0].AsFloat) or
                (nfe_001NFE_VI07.AsFloat <> fields[1].AsFloat) or
                (nfe_001NFE_VI12.AsFloat <> fields[2].AsFloat) or
                (nfe_001NFE_VI18.AsFloat <> fields[3].AsFloat) then
                 nfe_001NFE_INFADPROD.Value := nfe_001NFE_INFADPROD.AsString + trim(fields[4].AsString);

          nfe_001NFE_VI04.Value := fields[0].AsFloat;
          nfe_001NFE_VI07.Value := fields[1].AsFloat;
          nfe_001NFE_VI12.Value := fields[2].AsFloat;
          nfe_001NFE_VI18.Value := fields[3].AsFloat;
        end;

        nfe_001NFE_PSBR.Value := 0;
        nfe_001NFE_PSLQ.Value := 0;
        if (Pos(LeftStr(nfe_001NFE_UCOM.AsString,1),'KMY') = 0) and (nfe_001NFE_PESO.AsFloat > 0) then
        begin
          nfe_001NFE_PSBR.Value := nfe_001NFE_QCOM.AsFloat * nfe_001NFE_PESO.AsFloat;
          nfe_001NFE_PSLQ.Value := nfe_001NFE_PSBR.AsFloat;
          if nfe_001NFE_PSCN.AsFloat > 0 then
          nfe_001NFE_PSLQ.Value := nfe_001NFE_PSLQ.Value - (nfe_001NFE_QCOM.AsFloat * nfe_001NFE_PSCN.AsFloat);
        end else
        if LeftStr(nfe_001NFE_UCOM.AsString,1) = 'K' then
        begin
          nfe_001NFE_PSBR.Value := nfe_001NFE_QCOM.AsFloat;
          nfe_001NFE_PSLQ.Value := nfe_001NFE_PSBR.AsFloat;
          if ((nfe_001NFE_PESO.AsFloat > 0) and (nfe_001NFE_PSCN.AsFloat > 0)) then
          nfe_001NFE_PSLQ.Value := nfe_001NFE_PSLQ.AsFloat - ((nfe_001NFE_QCOM.AsFloat * nfe_001NFE_PSCN.AsFloat) / nfe_001NFE_PESO.AsFloat);
        end else
        if nfe_001NFE_REND.AsFloat > 0 then
        begin
          nfe_001NFE_PSBR.Value := (nfe_001NFE_QCOM.AsFloat / nfe_001NFE_REND.AsFloat);
          If ((nfe_001NFE_METR.AsFloat > 0) and (nfe_001NFE_PSCN.AsFloat > 0)) then
          nfe_001NFE_PSBR.Value := nfe_001NFE_PSBR.Value + ((nfe_001NFE_QCOM.AsFloat * nfe_001NFE_PSCN.AsFloat) / nfe_001NFE_METR.AsFloat);
          nfe_001NFE_PSLQ.Value := (nfe_001NFE_QCOM.AsFloat / nfe_001NFE_REND.AsFloat);
        end else
        if (nfe_001NFE_METR.AsFloat > 0) and (nfe_001NFE_PESO.AsFloat > 0) then
        begin
          nfe_001NFE_PSBR.Value := (nfe_001NFE_QCOM.AsFloat * nfe_001NFE_PESO.AsFloat)  / nfe_001NFE_METR.AsFloat;
          nfe_001NFE_PSLQ.Value := nfe_001NFE_PSBR.AsFloat;
          if nfe_001NFE_PSCN.AsFloat > 0 then
          nfe_001NFE_PSLQ.Value := nfe_001NFE_PSLQ.AsFloat - ((nfe_001NFE_QCOM.AsFloat * nfe_001NFE_PSCN.AsFloat) / nfe_001NFE_METR.AsFloat);
        end;
      end;
    end else
    begin
      nfe_001NFE_CSTIPI.Value := NewCSTIPI;
      nfe_001NFE_VNF.Value    := nfe_001NFE_VIPI.AsFloat;
    end;

    dbgnfeNFE_UTRIB.Visible   := (LeftStr(nfe_001NFE_CFOP.AsString,1) = '7');
    dbgnfeNFE_QTRIB.Visible   := dbgnfeNFE_UTRIB.Visible;
    dbgnfeNFE_VUNTRIB.Visible := dbgnfeNFE_UTRIB.Visible;
    if (LeftStr(nfe_001NFE_CFOP.AsString,1) <> '7') or (nfe_001NFE_QTRIB.AsFloat = 0) then
    begin
      nfe_001NFE_UTRIB.Value   := nfe_001NFE_UCOM.AsString;
      nfe_001NFE_QTRIB.Value   := nfe_001NFE_QCOM.AsFloat;
      nfe_001NFE_VUNTRIB.Value := nfe_001NFE_VUNCOM.AsFloat;
    end;
  end;  
end;

procedure Tfrmven_nfe.CALCULA_FRETE;
var
  i: Word;
begin
  Tag := 1;
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM NFE_ITE');
    Open;
    i := Consulta_S.Fields[0].AsInteger;
  end;

  nfe_001.First;
  while not nfe_001.Eof do
  begin
    nfe_001.Edit;
    nfe_001NFE_VFRETE.Value := RoundTO(CEVFrete.Value / i,-2);
    nfe_001.Post;
    nfe_001.Next;
  end;
  nfe_001.Last;

  if (RoundTO(nfe_001NFE_VFRETE.AsFloat,-2)*i) <> (CEVFrete.Value) then
  begin
    nfe_001.Edit;
    if (RoundTO(nfe_001NFE_VFRETE.AsFloat,-2)*i) > (CEVFrete.Value) then
       nfe_001NFE_VFRETE.Value := nfe_001NFE_VFRETE.AsFloat - ((RoundTO(nfe_001NFE_VFRETE.AsFloat,-2)*i)-CEVFrete.Value)
    else
       nfe_001NFE_VFRETE.Value := nfe_001NFE_VFRETE.AsFloat + (CEVFrete.Value-(RoundTO(nfe_001NFE_VFRETE.AsFloat,-2)*i));
    nfe_001.Post;
  end;
end;

procedure Tfrmven_nfe.CALCULA_SEGURO;
var
  i: Word;
begin
  Tag := 1;
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) FROM NFE_ITE');
    Open;
    i := Consulta_S.Fields[0].AsInteger;
  end;
  nfe_001.First;
  while not nfe_001.Eof do
  begin
    nfe_001.Edit;
    nfe_001NFE_VSEG.Value := RoundTO(CEVSeg.Value / i,-2);
    nfe_001.Post;
    nfe_001.Next;
  end;
  nfe_001.Last;

  if (RoundTO(nfe_001NFE_VSEG.AsFloat,-2)*i) <> (CEVSeg.Value) then
  begin
    nfe_001.Edit;
    if (RoundTO(nfe_001NFE_VSEG.AsFloat,-2)*i) > (CEVSeg.Value) then
      nfe_001NFE_VSEG.Value := nfe_001NFE_VSEG.AsFloat - ((RoundTO(nfe_001NFE_VSEG.AsFloat,-2)*i)-CEVSeg.Value)
    else
      nfe_001NFE_VSEG.Value := nfe_001NFE_VSEG.AsFloat + (CEVSeg.Value-(RoundTO(nfe_001NFE_VSEG.AsFloat,-2)*i));
    nfe_001.Post;
  end;
end;

procedure Tfrmven_nfe.dbgnfeDblClick(Sender: TObject);
begin
  if not nfe_001.Fields[0].IsNull then
  begin
    if nfe_001NFE_FLAG.AsString = '1' then
    begin
      if oYesNo(handle,'Desejar [des]marcar esse registro como livre de apuração fiscal ?') = mrno then
         abort;

      nfe_001.Edit;
      nfe_001NFE_FLAG.Value := '0';
      nfe_001.Post;
    end
    else
    begin
      if oYesNo(handle,'Desejar marcar esse registro como livre de apuração fiscal ?') = mrno then
         abort;

      nfe_001.Edit;
      nfe_001NFE_FLAG.Value := '1';
      nfe_001.Post;
    end;
  end;  
end;

procedure Tfrmven_nfe.dbgnfeCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra
    if (ANode.Values[DBGNFEMAO_OBRA.Index] <> Null) then
    if (ANode.Values[DBGNFEMAO_OBRA.Index]  = 1   ) then
    AColor := $00F3F3F3 else
    AColor := clHighLightText; }

    if  (ANode.Values[DBGNFENFE_ITEMPED.Index] <> Null) then
    if ((ANode.Values[DBGNFENFE_ITEMPED.Index] >= 04) and (ANode.Values[DBGNFENFE_ITEMPED.Index] <= 06)) or
       ((ANode.Values[DBGNFENFE_ITEMPED.Index] >= 10) and (ANode.Values[DBGNFENFE_ITEMPED.Index] <= 12)) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clWindowText;
    end;

    if (ANode.Values[DBGNFeMAO_OBRA.Index] <> Null) then
    if (ANode.Values[DBGNFeMAO_OBRA.Index] = 1    ) then

    if (AColumn = DBGNFENFE_ITEMPED) or (AColumn = DBGNFENFE_CFOP ) or (AColumn = DBGNFENFE_NCM) or
       (AColumn = DBGNFENFE_CPROD  ) or (AColumn = DBGNFENFE_XPROD) then
    begin
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGNFENFE_CST) or (AColumn = DBGNFENFE_VBC) or (AColumn = DBGNFENFE_PICMS) or (AColumn = DBGNFENFE_VICMS) then
    if (ANode.Values[DBGNFENFE_VICMS.Index] <> Null) then
    if (ANode.Values[DBGNFeNFE_VICMS.Index]  > 0   ) then
    begin
      AFont.Style := [fsBold];
    end;

    if (ANode.Values[DBGNFENFE_FLAG.Index] <> Null) then
    if (ANode.Values[DBGNFeNFE_FLAG.Index] = '1'  ) then
    begin
      AColor      := $00E1AD40;
      AFont.Color := clwhite;
    end;
  end;
end;

procedure Tfrmven_nfe.dbgnfeNFE_QCOMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  dbgnfeNFE_QCOM.Tag := IFThen(Length(cbcnat.Text) > 4,1,0);
end;

procedure Tfrmven_nfe.dbgnfeNFE_VUNCOMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  dbgnfeNFE_QCOM.Tag := IFThen(Length(cbcnat.Text) > 4,1,0);
end;

procedure Tfrmven_nfe.cbdtraValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if cbdtra.Text <> '' then
  try
    PESQUISA_TRANSPORTADORA(cbdtra.Text,'F');
  finally
    if cbdtra.Text = '' then
    oException(cbdtra,'Transportadora não Encontrada !') else
    begin
      PCEdicao.ActivePage := TSTransporte;
      EDEsp.SetFocus;
    end;
  end;  
end;

function Tfrmven_nfe.GERA_NFE: Boolean;
var
  tIde,
  tEmit,
  tDest,
  tTotal,
  tTransp,
  tCobr,
  tPag,
  tInfAdic,
  autXML: array of ShortString;

  tProd : ANFe;
  x: word;
  BRet: Boolean;
begin
  try
    nfe_001.First;

    Screen.cursor:=crAppStart;
    sbMAIN.Panels[0].Text := 'Gerando NF-e';
    sbMAIN.Refresh;

    SetLength(tIde    ,46);              //ide
    SetLength(tEmit   ,15);              //emit
    SetLength(tDest   ,56);              //dest
    SetLength(tProd   ,EDTRCom.Tag,297); //prod
    SetLength(tTotal  ,71);              //total
    SetLength(tTransp ,28);              //transp
    SetLength(tCobr   ,11);              //cobr
    SetLength(tPag    ,14);              //pag
    SetLength(tInfAdic,27);              //infAdic
    SetLength(autXML  ,1);               //autXML

    {Tag do Grupo das informações de identificação da NFe }
    tIde[00] := FrmPrincipal.ParametrosPAR_CUF.AsString;  //<cUF> Código da UF do emitente do Documento Fiscal
//  tIde[01] := IntToStr(Random(StrToInt(edcdnf.Text))+1); //<cNF> Código Numérico que compõe a Chave de Acesso - Numero aleatorio: apenas 8 digitos: NF-e 2.00
    tIde[01] := oStrZero(DayOf(DEdhEmi.Date),8-Length(IntToStr(StrToInt(edcdnf.Text))))+IntToStr(StrToInt(edcdnf.Text));        //<cNF> Código Numérico que compõe a Chave de Acesso - Numero aleatorio: apenas 8 digitos: NF-e 2.00
    tIde[02] := oREPAcentos(cbdnat.Text);               //<natOp> Descrição da Natureza da Operação
    tIde[03] := '';                                     //<indPag> Indicador da forma de pagamento - Retirado na versão 4.00
    tIde[04] := '55';                                   //<mod>  Código do Modelo do Documento Fiscal
    tIde[05] := FrmPrincipal.ParametrosPAR_SERI.AsString; //<serie> Série do Documento Fiscal
    tIde[06] := IntToStr(StrToInt(edcdnf.Text));        //<nNF> Número do Documento Fiscal

    tIde[07] := FormatDatetime('yyyy-mm-dd',DEdhEmi.Date)    + 'T' + FormatDateTime('hh:nn:ss',now) + RECParametros.TimeZone; //<dhEmi>  Data e hora de emissão do Documento Fiscal
    tIde[08] := FormatDatetime('yyyy-mm-dd',DEdhSaiEnt.Date) + 'T' + FormatDateTime('hh:nn:ss',now) + RECParametros.TimeZone; //<dhSaiEnt>  Data e hora de Saída ou da Entrada da Mercadoria/Produto

    tIde[09] := IETPNF.Text;                            //<tpNF> Tipo de Operação - 0=Entrada; 1=Saída
    tIde[10] := FrmPrincipal.ParametrosPAR_CCID.AsString; //<cMunFG> Código do Município de Ocorrência do Fato Gerador - composto de 7 dígitos numéricos
    tIde[11] := '1';                                    //<tpEmis> Tipo de Emissão da NF-e
    tIde[12] := IEFinNFe.Text;                          //<finNFe> Finalidade de emissão da NF-e - 1=NF-e Normal; 2=NF-e Complementar; 3=NF-e Ajuste; 4=Devolução de mercadoria

    { NRT - NOVA REFORMA TRIBUTÁRIA }
    tIde[42] := '';  // <cMunFGIBS> Código do Município de ocorrência do fato gerador do IBS / CBS
                    {
                     Preencher somente quando “indPres = 5 (Operação
                     presencial, fora do estabelecimento)”, e não tiver endereço do
                     destinatário (Grupo: E05) ou local de entrega (Grupo: G01)*
                    }

    tIde[43] := ''; // <tpNFDebito> Tipo de Nota de Débito
                    {
                     01 = Transferência de créditos para Cooperativas;
                     02 = Anulação de Crédito por Saídas Imunes/Isentas;
                     03 = Débitos de notas fiscais não processadas na apuração;
                     04 = Multa e juros;
                     05 = Transferência de crédito de sucessão.
                    }

    tIde[44] := '';  // <tpNFCredito> Tipo de Nota de Crédito
                     {
                      01 = Multa e juros
                      02 = Apropriação de crédito presumido de IBS sobre o saldo devedor na ZFM
                      03 = Retorno
                     }

    { Tag Grupo de informação das NF-e´s referenciadas. Informar ";" no final de cada ocorrência do grupo.}
    tIde[13] := ''; //<refNFe>  - chave da nfe referenciada  (Grupo 1/5: até 5 chaves de NF-e)
    tIde[34] := ''; //<refNFe>  - chave da nfe referenciada  (Grupo 2/5: até 5 chaves de NF-e)
    tIde[37] := ''; //<refNFe>  - chave da nfe referenciada  (Grupo 3/5: até 5 chaves de NF-e)
    tIde[38] := ''; //<refNFe>  - chave da nfe referenciada  (Grupo 4/5: até 5 chaves de NF-e)
    tIde[39] := ''; //<refNFe>  - chave da nfe referenciada  (Grupo 5/5: até 5 chaves de NF-e)

    if IEFinNFe.Text <> '1' then
    tIde[13] := NewString;
    
    { Grupo de informação de NF´s modelo 1/1A referenciadas. Se for informar, informar todos os dados pois todas as tags são obrigatórias(1-1).  Informar ";" no final de cada ocorrência do grupo.}
    tIde[19] := ''; //cUF    --> Utilizar a Tabela do IBGE
    tIde[20] := ''; //AAMM   --> AAMM da emissão da NF
    tIde[21] := ''; //CNPJ   --> CNPJ do emitente da NF
    tIde[22] := ''; //mod    --> Informar o código do modelo do Documento fiscal: 01 – modelo 01
    tIde[23] := ''; //serie  --> nformar a série do documento fiscal
    tIde[24] := IntToStr(StrToInt(edcdnf.Text)); //nNF    --> 1 – 999999999

     { Grupo de informação de cupons fiscais referenciados.  Informar ";" no final de cada ocorrência do grupo.}
    tIde[17] := ''; //<mod>  (2 dígitos. Valores possíveis: 2B - para cupom fiscal emitido por máquina registradora, 2C - para cupom PDV ou 2D - para cupom emitido por ECF)
    tIde[18] := ''; //<nECF> (1-3 dígitos)
    tIde[25] := ''; //<nCOO>

    { Tag Grupo de informação de NF´S de produtor rural referenciada. Se for informar, informar todos os dados pois todas as tags são obrigatórias(1-1)}
    tIde[26] := ''; //cUF   --> Utilizar a Tabela do IBGE
    tIde[27] := ''; //AAMM  --> AAMM da emissão da NF
    tIde[28] := ''; //CNPJ OU CPF do Produtor Rural emitente da NF. Se for informado CNPJ (14 dígitos) será gerada tag <CNPJ> e se for informado cpf (11 dígitos) será gerada tag <CPF>
    tIde[29] := ''; //IE
    tIde[30] := ''; //mod   2 dígitos, valores: 04 - para nf de produtor ou 01 - para nf avulsa.
    tIde[31] := ''; //serie   1-3 caracteres
    tIde[32] := ''; //nNF da nota fiscal - Informar para gerar esse grupo de tags.

    { Grupo de informação de CTe´S referenciadas.  Informar ";" no final de cada ocorrência do grupo.}
    tide[33] := '';  // refCTe informar aqui a Chave de acesso do CT-e referenciado. Para não informar nenhuma Cte referenciada, deixar vazio.

    tIde[14] := IEIndFinal.Text; //<indFinal> Indica operação com Consumidor final - 0=Normal; 1=Consumidor final; -> A Tag hSaiEnt foi removida, por isso, em sua posição, foi adicionada a tag indFinal
    tIde[15] := '';              //<dhCont> Data da entrada em contingência - Formado -> AAAA-MM-DDTHH:MM:SSTZD
    tIde[16] := '';              //<xJust> Justificativa da entrada em contingência

    tIde[35] := IFThen(PEUF.Text = 'EX','3',IFThen(PEUF.Text = FrmPrincipal.ParametrosPAR_UF.AsString,'1','2')); //<idDest> Identificador de local de destino da operação
    tIde[36] := '9'; //<indPres> Indicador de presença do comprador no estabelecimento comercial no momento da operação
    tIde[40] := 'Sheild v4.00.5';

    tIde[41] := '0'; //indIntermed; 0 - Operação sem intermediador (em site ou plataforma própria); 1 - Operação em site ou plataforma de terceiros (intermediadores/marketplace)
    tIde[42] := '';  //CNPJ - Informar o CNPJ do Intermediador da Transação (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.
    tIde[43] := '';  //idCadIntTran  - Nome do usuário ou identificação do perfil do vendedor no site do intermediador (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.

    tIde[45] := ''; //<refNFe> Chave de acesso da NF-e de antecipação de pagamento

    { Tag de Grupo de identificação do emitente da NF-e }
    tEmit[00] := FrmPrincipal.ParametrosPAR_RAZA.AsString;     //<xNome>
    tEmit[01] := FrmPrincipal.ParametrosPAR_RAZA.AsString;     //<xFant>
    tEmit[02] := FrmPrincipal.ParametrosPAR_TLOG.AsString+' '+ //<xLgr>
                 FrmPrincipal.ParametrosPAR_LOGR.AsString;
    tEmit[03] := FrmPrincipal.ParametrosPAR_NUME.AsString;     //<nro>
    tEmit[04] := FrmPrincipal.ParametrosPAR_COMP.AsString;     //<xCpl>
    tEmit[05] := FrmPrincipal.ParametrosPAR_BAI.AsString;      //<xBairro>
    tEmit[06] := FrmPrincipal.ParametrosPAR_CCID.AsString;     //<cMun> composto de 7 dígitos numéricos
    tEmit[07] := FrmPrincipal.ParametrosPAR_CID.AsString;      //<xMun>
    tEmit[08] := FrmPrincipal.ParametrosPAR_CEP.AsString;      //<CEP>
    tEmit[09] := FrmPrincipal.ParametrosPAR_FONE.AsString;     //<fone>
    tEmit[10] := FrmPrincipal.ParametrosPAR_INSC.AsString;     //<IE>
    tEmit[11] := '';                                           //<IM> Inscrição Municipal do Prestador de Serviço
    tEmit[12] := FrmPrincipal.ParametrosPAR_CNAE.AsString;     //<CNAE> CNAE fiscal
    tEmit[13] := '';                                           //<IEST> IE do Substituto Tributário
    tEmit[14] := RECParametros.RegimeTributario;               //<CRT> Código de Regime Tributário -> 1 – Simples Nacional; 2 – Simples Nacional – excesso de sublimite de receita bruta; 3 – Regime Normal

    { Tag de grupo de identificação do Destinatário da NF-e }
    tDest[00] := IFThen(not oEmpty(edcnpj.Text),edcnpj.Text,edcpf.Text);     //<CNPJ> ou <CPF>
    tDest[41] := eddfav.Text;                                                //<xFant>
    tDest[01] := oREPAcentos(EDxNome.Text);                                  //<xNome>
    tDest[02] := oREPAcentos(PETxLgr.Text+' '+EDxLgr.Text);                   //<xLgr>
    tDest[03] := oREPAcentos(EDNRO.Text);                                    //<nro>
    tDest[04] := oREPAcentos(EDxCpl.Text);                                   //<xCpl>
    tDest[05] := oREPAcentos(EDxBairro.Text);                                //<xBairro>
    tDest[06] := oREPAcentos(PEcMun.Text);                                   //<cMun>
    tDest[07] := oREPAcentos(EDxMun.Text);                                   //<xMun>
    tDest[08] := oREPAcentos(PEUF.Text);                                     //<UF>
    tDest[09] := oREPAcentos(edcep.Text);                                    //<CEP>
    tDest[10] := IExPais.Text;                                               //<cPais>
    tDest[11] := IExPais.Descriptions[IExPais.Values.IndexOf(IExPais.Text)]; //<xPais>
    tDest[12] := Trim(edDDD.Text+oRETNumero(EDFone.Text));                   //<fone>
    tDest[13] := PEIE.Text;                                                  //<IE>
    tDest[14] := EDISUF.Text;                                                //<ISUF>
    tDest[40] := '';                                                         //<IM>

    { Tag Exporta }
    tDest[15] := EDUFSaidaPais.Text;  //<UFSaidaPais>  Sigla da UF de Embarque ou de transposição de fronteira
    tDest[16] := EDxLocExporta.Text;  //<xLocExporta>  Descrição do Local de Embarque ou de transposição de fronteira
    tDest[39] := EDxLocDespacho.Text; //<xLocDespacho> Descrição do local de despacho

    { Tag Compras }
    tDest[17] := ''; //<xNEmp> Nota de Empenho
    tDest[18] := ''; //<xPed> Pedido
    tDest[19] := ''; //<xCont> Contrato
    tDest[20] := ''; //<email> Email do Emitente

    { Tag Grupo de identificação do Local de RETIRADA
      Informar apenas quando for diferente do endereço do remetente. }
    tDest[21] := ''; //RETIRADA <CNPJ> ou <CPF>
    tDest[22] := ''; //RETIRADA <xLgr>
    tDest[23] := ''; //RETIRADA <nro>
    tDest[24] := ''; //RETIRADA <xCpl>
    tDest[25] := ''; //RETIRADA <xBairro>
    tDest[26] := ''; //RETIRADA <cMun>
    tDest[27] := ''; //RETIRADA <xMun>
    tDest[28] := ''; //RETIRADA <UF>

    tDest[42] := ''; //RETIRADA <xNome>
    tDest[43] := ''; //RETIRADA <CEP>
    tDest[44] := ''; //RETIRADA <cPais>
    tDest[45] := ''; //RETIRADA <xPais>
    tDest[46] := ''; //RETIRADA <fone>
    tDest[47] := ''; //RETIRADA <email>
    tDest[48] := ''; //RETIRADA <IE>


    { Tag Grupo de identificação do Local de ENTREGA
      Informar apenas quando for diferente do endereço do destinatário. }
    if (PEETxLgr.Text <> '')         and (EDExLgr.Text <> '') and (EDENRO.Text <> '') and (Length(EDECep.Text) = 8) and
       (EDExBairro.Text <> '')       and (EDExMun.Text <> '') and (PEEUF.Text <> '')  and (PEEcMun.Text <> '') and
       (EDxLgr.Text <> EDExLgr.Text) and (EDNRO.Text <> EDENRO.Text) then
    begin
      tDest[29] := '';                                          //ENTREGA <CNPJ> ou <CPF>
      tDest[30] := oREPAcentos(PEETxLgr.Text+' '+EDExLgr.Text); //ENTREGA <xLgr>
      tDest[31] := oREPAcentos(EDENRO.Text);                    //ENTREGA <nro>
      tDest[32] := oREPAcentos(EDExCpl.Text);                   //ENTREGA <xCpl>
      tDest[33] := oREPAcentos(EDExBairro.Text);                //ENTREGA <xBairro>
      tDest[34] := oREPAcentos(PEEcMun.Text);                   //ENTREGA <cMun>
      tDest[35] := oREPAcentos(EDExMun.Text);                   //ENTREGA <xMun>
      tDest[36] := oREPAcentos(PEEUF.Text);                     //ENTREGA <UF>

      tDest[49] := ''; //ENTREGA <xNome>
      tDest[50] := ''; //ENTREGA <CEP>
      tDest[51] := ''; //ENTREGA <cPais>
      tDest[52] := ''; //ENTREGA <xPais>
      tDest[53] := ''; //ENTREGA <fone>
      tDest[54] := ''; //ENTREGA <email>
      tDest[55] := ''; //ENTREGA <IE>
    end;

    tDest[37] := IEindIEDest.Text;     //<indIEDest> Indicador da IE do Destinatário -> 1=Contribuinte ICMS (informar a IE do destinatário);2=Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS; 9=Não Contribuinte, que pode ou não possuir Inscrição
    tDest[38] := EDidEstrangeiro.Text; //<idEstrangeiro>

    autXML[0] := ''; //<autXML>  Pessoas autorizadas a acessar o XML da NF-e CNPJ ou CPF

    { Tag de grupo do detalhamento de Produtos e Serviços da NFe }
    x := 0;
    nfe_001.First;
    while not nfe_001.Eof do
    begin
      tProd[x,000] := oREPAcentos(nfe_001NFE_CPROD.AsString); //<cProd> Código do produto ou serviço
      tProd[x,001] := oREPTxt(nfe_001NFE_CEAN.AsString);      //<cEAN> GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
      tProd[x,002] := oREPAcentos(nfe_001NFE_XPROD.AsString); //<xProd> Descrição do produto ou serviço
      tProd[x,003] := oREPAcentos(nfe_001NFE_NCM.AsString);   //<NCM> Código NCM com 8 dígitos
      tProd[x,109] := oREPAcentos(nfe_001NFE_NVE.AsString);   //<NVE> Codificação NVE - Nomenclatura de Valor Aduaneiro e Estatística
      tProd[x,146] := oREPAcentos(nfe_001NFE_CEST.AsString);  //<CEST>
      tProd[x,156] := '';                                     //<indEscala> Indicador de Escala Relevante - S - Produzido em Escala Relevante; N – Produzido em Escala NÃO Relevante. -> Campo Novo Obrigatorio NFE 4.0
      tProd[x,157] := '';                                     //<CNPJFab> CNPJ do Fabricante da Mercadoria, obrigatório para produto em escala NÃO relevante -> Campo Novo NFE 4.0
      tProd[x,158] := nfe_001NFE_CBENEF.AsString;             //<cBenef> Código de Benefício Fiscal utilizado pela UF, aplicado ao item. -> Campo Novo NFE 4.0
      tProd[x,004] := nfe_001NFE_EXTIPI.AsString;                                                                      //<EXTIPI>
      tProd[x,005] := nfe_001NFE_CFOP.AsString;                                                                        //<CFOP> Código Fiscal de Operações e Prestações
      tProd[x,006] := nfe_001NFE_UCOM.AsString;                                                                        //<uCom> Uniade Comercial
      tProd[x,007] := oTextToValor(nfe_001NFE_QCOM.AsFloat  ,2,True);                                                  //<qCom> Quantidade Comercial
      tProd[x,008] := oTextToValor(nfe_001NFE_VUNCOM.AsFloat,9,True);                                                  //<vUnCom> Valor Unitário de Comercialização
      tProd[x,009] := oTextToValor(nfe_001NFE_VPROD.AsFloat ,2,True);                                                  //<vProd> Valor Total Bruto do Produto ou Serviço
      tProd[x,010] := oREPTxt(nfe_001NFE_CEAN.AsString);                                                               //<cEANTrib> GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras
      tProd[x,011] := nfe_001NFE_UTRIB.AsString;                                                                       //<uTrib> Unidade Tributável
      tProd[x,012] := oTextToValor(nfe_001NFE_QTRIB.AsFloat  ,2,True);                                                 //<qTrib#,0.00> Quantidade Tributável
      tProd[x,013] := oTextToValor(nfe_001NFE_VUNTRIB.AsFloat,9,True);                                                 //<vUnTrib> Valor Unitário de tributação
      tProd[x,014] := IFThen(not oEmpty(nfe_001NFE_VFRETE.AsFloat),oTextToValor(nfe_001NFE_VFRETE.AsFloat,2,True),''); //<vFrete> Valor Total do Frete
      tProd[x,015] := IFThen(not oEmpty(nfe_001NFE_VSEG.AsFloat  ),oTextToValor(nfe_001NFE_VSEG.AsFloat  ,2,True),''); //<vSeg> Valor Total do Seguro
      tProd[x,016] := IFThen(not oEmpty(nfe_001NFE_VDESC.AsFloat ),oTextToValor(nfe_001NFE_VDESC.AsFloat ,2,True),''); //<vDesc> Valor do Desconto
      tProd[x,086] := IFThen(not oEmpty(nfe_001NFE_VOUTRO.AsFloat),oTextToValor(nfe_001NFE_VOUTRO.AsFloat,2,True),''); //<voutro> Outras despesas acessórias

      { Tag Grupo do ISSQN 
        Se ISSQN for informado os grupos ICMS, IPI e II não serão informados e vice-versa (NF-e v2.0) }
      tProd[x,039] := ''; //ISSQN <vBC> Valor da Base de Cálculo ISSQN
      tProd[x,040] := ''; //ISSQN <vAliq> Valor da Aliquota ISSQN
      tProd[x,041] := ''; //ISSQN <vISSQN> Valor do ISSQN
      tProd[x,042] := ''; //ISSQN <cMunFG> Código do município de ocorrência do fato gerador do ISSQN
      tProd[x,043] := ''; //ISSQN <cListServ>  Item da Lista de Serviços
      tProd[x,070] := ''; //ISSQN <cSitTrib> Código da tributação do ISSQN: N – NORMAL; R – RETIDA; S –SUBSTITUTA; I – ISENTA. (v.2.0)

      //NF-e 3.10
      tprod[x,119] := ''; //ISSQN <vDeducao> Valor dedução para redução da Base de Cálculo
      tprod[x,120] := ''; //ISSQN <vOutro> Valor outras retenções
      tprod[x,121] := ''; //ISSQN <vDescIncond> Valor desconto incondicionado
      tprod[x,122] := ''; //ISSQN <vDescCond> Valor desconto condicionado
      tprod[x,123] := ''; //ISSQN <vISSRet> Valor retenção ISS
      tprod[x,124] := ''; //ISSQN <indISS> Indicador da exigibilidade do ISS
      tprod[x,125] := ''; //ISSQN <cMun> Código do Município de incidência do imposto
      tprod[x,126] := ''; //ISSQN <cPais> Código do País onde o serviço foi prestado
      tprod[x,127] := ''; //ISSQN <nProcesso> Número do processo judicial ou administrativo de suspensão da exigibilidade
      tprod[x,128] := ''; //ISSQN <indIncentivo> Indicador de incentivo Fiscal
      tprod[x,136] := ''; //ISSQN <cServico> Código do serviço prestado dentro do município

      { Tag ICMS e CSOSN }
      tProd[x,017] := nfe_001NFE_ORIG.AsString;                      //<orig> Origem da mercadoria
      tProd[x,018] := nfe_001NFE_CST.AsString;                       //<CST> ou <CSOSN> Tributação do ICMS
      tProd[x,019] := nfe_001NFE_MODBC.AsString;                     //<modBC> Modalidade de determinação da BC do ICMS
      tProd[x,020] := oTextToValor(nfe_001NFE_VBC.AsFloat  ,2,True); //<vBC> Valor da BC do ICMS
      tProd[x,021] := oTextToValor(nfe_001NFE_PICMS.AsFloat,2,True); //<pICMS> Alíquota do imposto ICMS
      tProd[x,022] := oTextToValor(nfe_001NFE_VICMS.AsFloat,2,True); //<vICMS> Valor do ICMS

      { Tag ICMS 51 }
      tProd[x,137] := oTextToValor(nfe_001NFE_VICMSOP.AsFloat ,2,True); //<vICMSOp> Valor do ICMS da Operação
      tProd[x,138] := oTextToValor(nfe_001NFE_PDif.AsFloat    ,2,True); //<pDif> Percentual do diferimento
      tProd[x,139] := oTextToValor(nfe_001NFE_VICMSDIF.AsFloat,2,True); //<vICMSDif> Valor do ICMS diferido

      { Tag ICMSST para gerar o ICMSST todos os indices do vetor devem conter dados }
      tProd[x,140] := oTextToValor(nfe_001NFE_VBCSTRET.AsFloat,2,True);    //<vBCSTRet> Valor da BC do ICMS Retido Anteriormente
      tProd[x,141] := oTextToValor(nfe_001NFE_VICMSSTRET.AsFloat,2,True);  //<vICMSSTRet> Valor do ICMS Retido Anteriormente
      tProd[x,142] := oTextToValor(nfe_001NFE_VBCSTDEST.AsFloat,2,True);   //<vBCSTDest> Valor da BC do ICMS ST da UF destino
      tProd[x,143] := oTextToValor(nfe_001NFE_VICMSSTDEST.AsFloat,2,True); //<vICMSSTDest> Valor do ICMS ST da UF destino

      //ICMSUFDest
      // Para gerar o ICMSUFDest todos os indices do vetor devem conter dados
      if oTrimValor(EDvICMSUFDest.Text) > 0 then
      begin
        tProd[x,147] := oTextToValor(nfe_001NFE_vBCUFDest.AsFloat,2,True);      //<vBCUFDest> Valor da BC do ICMS na UF de destino
        tProd[x,148] := oTextToValor(nfe_001NFE_pFCPUFDest.AsFloat,2,True);     //<pFCPUFDest> Percentual do ICMS relativo ao Fundo de Combate à Pobreza (FCP) na UF de destino
        tProd[x,149] := oTextToValor(nfe_001NFE_pICMSUFDest.AsFloat,2,True);    //<pICMSUFDest> Alíquota interna da UF de destino
        tProd[x,150] := oTextToValor(nfe_001NFE_pICMSInter.AsFloat,2,True);     //<pICMSInter> Alíquota interestadual das UF envolvidas
        tProd[x,151] := oTextToValor(nfe_001NFE_pICMSInterPart.AsFloat,2,True); //<pICMSInterPart> Percentual provisório de partilha do ICMS Interestadual
        tprod[x,152] := oTextToValor(nfe_001NFE_vFCPUFDest.AsFloat,2,True);     //<vFCPUFDest> alor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino
        tProd[x,153] := oTextToValor(nfe_001NFE_vICMSUFDest.AsFloat,2,True);    //<vICMSUFDest> Valor do ICMS Interestadual para a UF de destino
        tProd[x,154] := oTextToValor(nfe_001NFE_vICMSUFRemet.AsFloat,2,True);   //<vICMSUFRemet> Valor do ICMS Interestadual para a UF do remetente
        tProd[x,176] := oTextToValor(nfe_001NFE_vBCFCPUFDest.AsFloat,2,True);   //<vBCFCPUFDest> Valor da BC FCP na UF de destino
      end;
      
    	{ NT 2016.002 v1.60 - Jun/2018}
    	tProd[x, 200] := ''; //pRedBCEfet
    	tProd[x, 201] := ''; //vBCEfet
    	tProd[x, 202] := ''; //pICMSEfet
    	tProd[x, 203] := ''; //vICMSEfet

      { NT 2018_005 v1.20 mar/2019}
    	tProd[x, 204] := ''; //vICMSSubstituto NT 2018_005 v1.20
    	tProd[x, 205] := ''; //<xMotivoIsencao> CMotivo da isenção da ANVISA   NT 2018_005 v1.20

      {Tags NFE4.00}
      tProd[x,166] := ''; //<pFCP> Percentual do Fundo de Combate à Pobreza (FCP)
      tProd[x,167] := ''; //<vFCP> Valor do Fundo de Combate à Pobreza (FCP)
      tProd[x,168] := ''; //<vBCFCP> Valor da Base de Cálculo do FCP
      tProd[x,169] := ''; //<vBCFCPST> Valor da Base de Cálculo do FCP retido por Substituição Tributária
      tProd[x,170] := ''; //<pFCPST> Percentual do FCP retido por Substituição Tributária
      tProd[x,171] := ''; //<vFCPST> Valor do FCP retido por Substituição Tributária
      tProd[x,172] := ''; //<pST> Alíquota suportada pelo Consumidor Final
      tProd[x,173] := ''; //<vBCFCPSTRet> Valor da Base de Cálculo do FCP retido anteriormente
      tProd[x,174] := ''; //<pFCPSTRet> Percentual do FCP retido anteriormente por Substituição Tributária
      tProd[x,175] := ''; //<vFCPSTRet> Valor do FCP retido anteriormente por Substituição Tributária

      tProd[x,046] := '0';
      tProd[x,047] := '0';
      tProd[x,048] := '0';
      tProd[x,049] := '0';
      tProd[x,050] := '0';
      tProd[x,051] := '0';
      tProd[x,052] := '0';

      if NFE_001NFE_MODBCST.AsString <> EmptyStr then
      begin
        tProd[x,046] := NFE_001NFE_MODBCST.AsString;          //<modBCST> Modalidade de determinação da BC do ICMS ST
        tProd[x,047] := oTextToValor(NFE_001NFE_MVAST.AsFloat   ,4,True); //<pMVAST> Percentual da margem de valor Adicionado do ICMS ST
        tProd[x,048] := oTextToValor(NFE_001NFE_PREDBCST.AsFloat,4,True); //<pRedBCST> Percentual da Redução de BC do ICMS ST
        tProd[x,049] := oTextToValor(NFE_001NFE_VBCST.AsFloat   ,2,True); //<vBCST>    //icms60, icmspart, ICMSSN500: <vBCSTRet>
        tProd[x,050] := oTextToValor(NFE_001NFE_pICMSST.AsFloat ,2,True); //<pICMSST>
        tProd[x,051] := oTextToValor(NFE_001NFE_VICMSST.AsFloat ,2,True); //<vICMSST>  //icms60,ICMSSN500: <vICMSSTRet>
      end;

      if NFE_001NFE_PREDBC.AsFloat > 0 then
      tProd[x,052] := oTextToValor(NFE_001NFE_PREDBC.AsFloat,2,True); //<pRedBC>

      tProd[x,080] := IFThen(not oEmpty(nfe_001NFE_PCREDSN.AsFloat    ),oTextToValor(nfe_001NFE_PCREDSN.AsFloat    ,2,True),''); //<pCredSN> Alíquota aplicável de cálculo do crédito (Simples Nacional).
      tProd[x,081] := IFThen(not oEmpty(nfe_001NFE_VCREDICMSSN.AsFloat),oTextToValor(nfe_001NFE_VCREDICMSSN.AsFloat,2,True),''); //<vCredICMSSN> Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional)

      { Tag Desoneração }
      tProd[x,085] := nfe_001NFE_MOTDESICMS.AsString; //<motDesICMS> Informar o motivo da desoneração: 0 a 9, ver tabela no manual do contribuinte NF-e.
      tProd[x,096] := '';                             //<pBCOp> informar apenas para gerar o grupo ICMSPART - Grupo de partilha do ICMS entre a UF de origem e UF de destino ou a UF definida na legislação.
      tProd[x,097] := '';                             //<UFST> informar apenas para o grupo ICMSPAR

      { Tag IPI }
      tProd[x,023] := nfe_001NFE_CSTIPI.AsString;                                                                          //IPI <CST> Código da situação tributária do IPI
      tProd[x,078] := '';                                                                                                  //IPI <qUnid> Quantidade total na unidade padrão para tributação (somente para os produtos tributados por unidade)
      tProd[x,079] := '';                                                                                                  //IPI <vUnid> Valor por Unidade Tributável
      tProd[x,024] := IFThen(not oEmpty(nfe_001NFE_VBCIPI.AsFloat),oTextToValor(nfe_001NFE_VBCIPI.AsFloat,2,True),'0,00'); //IPI <vBC> Valor da BC do IPI
      tProd[x,025] := IFThen(not oEmpty(nfe_001NFE_PIPI.AsFloat)  ,oTextToValor(nfe_001NFE_PIPI.AsFloat  ,2,True),'0,00'); //IPI <pIPI> Alíquota do IPI
      tProd[x,026] := IFThen(not oEmpty(nfe_001NFE_VIPI.AsFloat)  ,oTextToValor(nfe_001NFE_VIPI.AsFloat  ,2,True),'0.00'); //IPI <vIPI> Valor do IPI
      tProd[x,087] := nfe_001NFE_CLENQ.AsString;                                                                           //IPI <clEnq> Classe de enquadramento do IPI para Cigarros e Bebidas
      tProd[x,088] := nfe_001NFE_CNPJPROD.AsString;                                                                        //IPI <CNPJProd> CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exportação direta ou indireta.
      tProd[x,089] := '';                                                                                                  //IPI <cSelo> Código do selo de controle IPI
      tProd[x,090] := '';                                                                                                  //IPI <qSelo> Quantidade de selo de controle
      tProd[x,091] := nfe_001NFE_CENQ.AsString;                                                                            //IPI <cEnq> Código de Enquadramento Legal do IPI

      { Tag PIS }
      tProd[x,031] := nfe_001NFE_CSTPIS.AsString;                                                                      //<CST> Código de Situação Tributária do PIS
      tProd[x,032] := IFThen(not oEmpty(nfe_001NFE_VBCPIS.AsFloat),oTextToValor(nfe_001NFE_VBCPIS.AsFloat,2,True),''); //<vBC> Valor da Base de Cálculo do PIS
      tProd[x,033] := IFThen(not oEmpty(nfe_001NFE_PPIS.AsFloat)  ,oTextToValor(nfe_001NFE_PPIS.AsFloat  ,2,True),''); //<pPIS> Alíquota do PIS (em percentual)
      tProd[x,034] := IFThen(not oEmpty(nfe_001NFE_VPIS.AsFloat)  ,oTextToValor(nfe_001NFE_VPIS.AsFloat  ,2,True),''); //<vPis> Valor do PIS
      tProd[x,045] := '';                                                                                              //<vAliqProd> Alíquota do PIS (em reais)

      { Tag PISST }
      tProd[x,054] := IFThen(not oEmpty(nfe_001NFE_VBCPISST.AsFloat),oTextToValor(nfe_001NFE_VBCPISST.AsFloat,2,True),''); //<vBC>  Valor da Base de Cálculo do PIS
      tProd[x,055] := IFThen(not oEmpty(nfe_001NFE_PPISST.AsFloat)  ,oTextToValor(nfe_001NFE_PPISST.AsFloat  ,2,True),''); //<pPIS> Alíquota do PIS (em percentual)
      tProd[x,056] := IFThen(not oEmpty(nfe_001NFE_VPISST.AsFloat)  ,oTextToValor(nfe_001NFE_VPISST.AsFloat  ,2,True),''); //<vPIS> Valor do PIS

      { Tag COFINS }
      tProd[x,035] := nfe_001NFE_CSTCOFINS.AsString;                                                                        //<CST>       Código de Situação Tributária do Cofins
      tProd[x,036] := IFThen(not oEmpty(nfe_001NFE_VBCOFINS.AsFloat ),oTextToValor(nfe_001NFE_VBCOFINS.AsFloat,2,True),''); //<vBC>       Valor da Base de Cálculo da COFINS
      tProd[x,037] := IFThen(not oEmpty(nfe_001NFE_PCOFINS.AsFloat ) ,oTextToValor(nfe_001NFE_PCOFINS.AsFloat ,2,True),''); //<pCOFINS>   Alíquota da COFINS (em percentual)
      tProd[x,038] := IFThen(not oEmpty(nfe_001NFE_VCOFINS.AsFloat ) ,oTextToValor(nfe_001NFE_VCOFINS.AsFloat ,2,True),''); //<vCOFINS>   Valor da COFINS
      tProd[x,044] := '';                                                                                                   //<vAliqProd> Alíquota da COFINS (em reais)

      { Tag COFINSST }
      tProd[x,057] := IFThen(not oEmpty(nfe_001NFE_VBCOFINSST.AsFloat),oTextToValor(nfe_001NFE_VBCOFINSST.AsFloat,2,True),''); //<vBC>     Valor da Base de Cálculo da COFINS
      tProd[x,058] := IFThen(not oEmpty(nfe_001NFE_PCOFINSST.AsFloat ),oTextToValor(nfe_001NFE_PCOFINSST.AsFloat ,2,True),''); //<pCOFINS> Alíquota da COFINS (em percentual)
      tProd[x,059] := IFThen(not oEmpty(nfe_001NFE_VCOFINSST.AsFloat ),oTextToValor(nfe_001NFE_VCOFINSST.AsFloat ,2,True),''); //<vCOFINS> Valor da COFINS

      { Tag da Declaração de Importação }
      tProd[x,027] := IFThen(LeftStr(nfe_001NFE_CFOP.AsString,1) = '3',oTextToValor(nfe_001NFE_VBCIMP.AsFloat  ,2,True),'');     //II   <vBC>         Valor BC do Imposto de Importação
      tProd[x,028] := IFThen(LeftStr(nfe_001NFE_CFOP.AsString,1) = '3',oTextToValor(nfe_001NFE_VDESPADU.AsFloat,2,True),'');     //II   <vDespAdu>    Valor despesas aduaneiras
      tProd[x,029] := IFThen(LeftStr(nfe_001NFE_CFOP.AsString,1) = '3',oTextToValor(nfe_001NFE_VIIIMP.AsFloat  ,2,True),'');     //II   <vII>         Valor Imposto de Importação
      tProd[x,030] := IFThen(LeftStr(nfe_001NFE_CFOP.AsString,1) = '3',oTextToValor(nfe_001NFE_VIOFIMP.AsFloat ,2,True),'');     //II   <vIOF>        Valor Imposto sobre Operações Financeiras
      tProd[x,060] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_NDI.AsString+';');                                    //     <nDI>         Número do Documento de Importação (DI, DSI, DIRE, ...)
      tProd[x,061] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',FormatDateTime('yyyy-mm-dd',nfe_001NFE_DDI.AsDateTime)+';');     //     <dDI>         Data de RegEdit do documento - Formato: “AAAA-MM-DD”
      tProd[x,062] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_XLOCDESEMB.AsString+';');                             //     <xLocDesemb>  Local de desembaraço
      tProd[x,063] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_UFDESEMB.AsString+';');                               //     <UFDesemb>    Sigla da UF onde ocorreu o Desembaraço Aduaneiro
      tProd[x,064] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',FormatDateTime('yyyy-mm-dd',nfe_001NFE_DDESEMB.AsDateTime)+';'); //     <dDesemb>     Data do Desembaraço Aduaneiro
      tProd[x,065] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_CEXPORTADOR.Value+';');                               //     <cExportador> Código do Exportador
      tProd[x,066] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_NADICAO.AsString +';');                               //adi: <nAdicao>     Numero da Adição (1-1)
      tProd[x,067] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_NSEQADIC.AsString+';');                               //adi: <nSeqAdic>    Numero sequencial do item dentro da Adição (1-1)
      tProd[x,068] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_CFABRICANTE.AsString+';');                            //adi: <cFabricante> Código do fabricante estrangeiro (1-1)
      tProd[x,069] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',                                                                 //adi: <vDescDI>     Valor do desconto do item da DI – Adição (0-1)
                      IFThen(oEmpty(nfe_001NFE_VDESCDI.AsFloat),'',oTextToValor(nfe_001NFE_VDESCDI.AsFloat,2,True))+';');
      tProd[x,155] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_NDRAW.AsString+';');                                  //adi: <nDraw>        Número do ato concessório de Drawback
      tProd[x,106] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_TPVIATRANSP.AsString +';');                           //     <tpViaTransp>  NT 2013.005 1=Marítima; 2=Fluvial; 3=Lacustre; 4=Aérea; 5=Postal 6=Ferroviária; 7=Rodoviária;  8=Conduto / Rede Transmissão; 9=Meios Próprios; 10=Entrada / Saída ficta
      tProd[x,107] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_TPINTERMEDIO.AsString+';');                           //     <tpIntermedio> 1=Importação por conta própria; 2=Importação por conta e ordem; 3=Importação por encomenda;
      tprod[x,133] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',oTextToValor(nfe_001NFE_VAFRMM.AsFloat,2,True)+';');             //     <vAFRMM>       Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante
      tprod[x,134] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_CNPJTERCEIRO.AsString+';');                           //     <CNPJ>         CNPJ do adquirente ou do encomendante
      tprod[x,135] := IFThen(LeftStr(cbcnat.Text,1) <> '3','',nfe_001NFE_UFTERCEIRO.AsString+';');                             //     <UFTerceiro>   Sigla da UF do adquirente ou do encomendante

      { Grupo do detalhamento de Medicamentos e de matérias primas farmacêuticas.
      Atenção! Separe por ";" para informar mais de 1 grupo de Medicamentos.
      Neste exemplo abaixo temos 3 grupos por produto. Deve-se inserir ; no final de cada RegEdit, inclusive no final do último, como no exemplo}
      tProd[x,071] := ''; //<nLote> Número do Lote do produto. Ex: [x,71]:='123' ou [x,71]:='123;124;125;'
      tProd[x,072] := ''; //<qLote> Quantidade de produto no Lote. Ex: [x,72]:='1.000' ou [x,72]:='1.000;1.200;1.300;'
      tProd[x,073] := ''; //<dFab> Data de fabricação/ Produção. Ex: [x,73]:='2018-06-01' ou [x,73]:='2018-06-01;2018-06-01;2018-06-01;'
      tProd[x,074] := ''; //<dVal> Data de validade. Ex: [x,74]:='2019-06-01' ou [x,74]:='2019-06-01;2019-06-01;2019-06-01;'
      tProd[x,075] := ''; //<vPMC> Preço máximo consumidor
      tProd[x,160] := ''; //<cProdANVISA> Código de Produto da ANVISA -> Novo campo da versão 4.0

      //NOTA: Caso este item nao possua dados de meedicamentos, informe: tProd[x,71]:='';
      tProd[x,159] := ''; //<cAgreg> Código de Agregação

      { Tag Grupo do detalhamento de Combustíveis. Informar apenas para operações com combustíveis líquidos e lubrificantes }
      //NOTA: Caso este item nao possua dados de combustíveis ou lubrificantes, informe: tProd[x,92]:='';
      tProd[x,092] := ''; //<cProdANP> Código de produto da ANP (ocorrência 1-1) --> Nota: se não for informada essa posição, não será gerado o grupo <comb>
      tProd[x,093] := ''; //<CODIF> Código de autorização / RegEdit do CODIF    (ocorrência 0-1)
      tProd[x,094] := ''; //<qTemp> Quantidade de combustível faturada à temperatura ambiente.   (ocorrência 0-1)
      tProd[x,095] := ''; //<UFCons> Sigla da UF de consumo  (ocorrência 1-1)
      tProd[x,132] := ''; //<pMixGN> Percentual de Gás Natural para o produto GLP (cProdANP=210203001)
      tProd[x,161] := ''; //<descANP> Descrição do Produto v4.00
      tProd[x,162] := ''; //<pGLP> Percentual do GLP derivado do petróleo v4.00
      tProd[x,163] := ''; //<pGNn> Percentual do Gás Natural Nacional v4.00
      tProd[x,164] := ''; //<pGNi> Percentual de Gás Natural Importado v4.00
      tProd[x,165] := ''; //<vPart> Valor de Partida v4.00

      { Tag <infAdProd - 2 posicoes p/ completar 500 caracteres }
      tProd[x,053] := '';//'REFERÊNCIA index primeiro '+IntToStr(x+1);
      tProd[x,077] := '';//oREPAcentos(RightStr(nfe_001NFE_INFADPROD.AsString,250)); //'REFERÊNCIA index segundo '+IntToStr(x+1);
      if (not oEmpty(nfe_001NFE_COMP.AsString)) or (not oEmpty(oREPMemoEsp(nfe_001NFE_INFADProd.AsString))) then
         if oEmpty(nfe_001NFE_COMP.AsString) then
         tProd[x,053] := LeftStr(oREPAcentos(oREPMemoEsp(nfe_001NFE_INFADPROD.AsString)),250) else
         begin
           tProd[x,053] := LeftStr(oREPAcentos(oREPMemoEsp(nfe_001NFE_COMP.AsString)),250);
           tProd[x,077] := LeftStr(oREPAcentos(oREPMemoEsp(nfe_001NFE_INFADPROD.AsString)),250);
         end;

      if not oEmpty(Trim(nfe_001NFE_INFADTRIB.AsString)) then
         if oEmpty(tProd[x,053]) then
            tProd[x,053] := Trim(nfe_001NFE_INFADTRIB.AsString)
         else
            tProd[x,077] := Trim(nfe_001NFE_INFADTRIB.AsString);

      tProd[x,076] := nfe_001NFE_INDTOT.AsString; //<indTot> Indica se valor do Item (vProd) entra no valor total da NF-e (vProd) - 0 = Valor do item (vProd) não compõe o valor total da NF-e; 1 = Valor do item (vProd) compõe o valor total da NF-e (vProd) (v2.0);
      { Grupo do detalhamento de Veículos novos }
      { Informar apenas quando se tratar de veículos novos
        ATENCAO! Informe sempre o delimitador ";" para este grupo }
      tProd[x,082] := ''; {'1'         +';'+ //<tpOp> Tipo da operação - 1=Venda concessionária; 2=Faturamento direto para consumidor final; 3=Venda direta para grandes consumidores (frotista, governo, ...); 0=Outros
                   '12345678901234567' +';'+ //<chassi> Chassi do veículo
                   '123'               +';'+ //<cCor> Cor - Código de cada montadora
                   'PRETO'             +';'+ //<xCor> Descrição da Cor
                   '220'               +';'+ //<pot> Potência Motor (CV)
                   '220'               +';'+ //<cilin> Cilindradas
                   '2'                 +';'+ //<pesoL> Peso Líquido
                   '2'                 +';'+ //<pesoB> Peso Bruto
                   '21311213'          +';'+ //<nSerie> Serial (série)
                   '02'                +';'+ //<tpComb> Tipo de combustível - Utilizar Tabela RENAVAM (v2.0); 01=Álcool, 02=Gasolina, 03=Diesel, (...); 16=Álcool/Gasolina; 17=Gasolina/Álcool/GNV; 18=Gasolina/Elétrico
                   '123'               +';'+ //<nMotor> Número de Motor
                   '500'               +';'+ //<CMT> Capacidade Máxima de Tração
                   '15'                +';'+ //<dist> Distância entre eixos
                   '2011'              +';'+ //<anoMod> Ano Modelo de Fabricação
                   '2010'              +';'+ //<anoFab> Ano de Fabricação
                   '1'                 +';'+ //<tpPint> Tipo de Pintura
                   '06'                +';'+ //<tpVeic> Tipo de Veículo
                   '1'                 +';'+ //<espVeic> Espécie de Veículo - 1=PASSAGEIRO; 2=CARGA; 3=MISTO; 4 = CORRIDA; 5 = TRAÇÃO; 6 = ESPECIAL;
                   'N'                 +';'+ //<VIN> Condição do VIN(chassi) - R=Remarcado; N=Normal
                   '1'                 +';'+ //<condVeic> Condição do Veículo - 1=Acabado; 2=Inacabado; 3=Semiacabado
                   '1234'              +';'+ //<cMod> Código Marca Modelo
                   '11'                +';'+ //<cCorDENATRAN> Código da Cor - 01=AMARELO, 02=AZUL, 03=BEGE, 04=BRANCA, 05=CINZA, 06=-DOURADA, 07=GRENÁ, 08=LARANJA, 09=MARROM, 10=PRATA, 11=PRETA, 12=ROSA, 13=ROXA, 14=VERDE, 15=VERMELHA, 16=FANTASIA
                   '5'                 +';'+ //<lota> Capacidade máxima de lotação
                   '0'                 +';'; //<tpRest> Restrição - 0=Não há; 1=Alienação Fiduciária; 2=Arrendamento Mercantil; 3=Reserva de Domínio; 4=Penhor de Veículos; 9=Outras. (v2.0)
                     }

      tProd[x,099] := IFThen(not oEmpty(nfe_001NFE_VTOTTRIB.AsFloat  ),oTextToValor(nfe_001NFE_VTOTTRIB.AsFloat  ),''); //<vtotTrib>    NT 2013 003 tag opcional ref. ao valor aproximado dos tributos do produto
      tProd[x,105] := nfe_001NFE_NFCI.AsString;                                                                         //<nFCI>  Número de controle da FCI - Ficha de Conteúdo de Importação
      tProd[x,108] := IFThen(not oEmpty(nfe_001NFE_VICMSDESON.AsFloat),oTextToValor(nfe_001NFE_VICMSDESON.AsFloat),''); //<vICMSDeson> (ocorrência 1-1) Nota:2013/005 Informar apenas nos motivos de desoneração documentados abaixo.

      //<detExport> - Tag destinada a Exportação
      tprod[x,110] := ''; //<nDraw> Número do ato concessório de Drawback - Tag destinada a Exportação
      tprod[x,111] := ''; //<chNFe> Chave de Acesso da NF-e recebida para exportação - Tag destinada a Exportação
      tprod[x,112] := ''; //<nRE> Número do RegEdit de Exportação - Tag destinada a Exportação
      tprod[x,113] := ''; //<qExport> Quantidade do item realmente exportado - Tag destinada a Exportação
      tprod[x,114] := ''; //<nRECOPI> Número do RECOPI - Tag para operações com Papel Imune.

      //Grupo do detalhamento de Armas */
      tprod[x,115] := ''; //<tpArma> Indicador do tipo de arma de fogo - 0=Uso permitido; 1=Uso restrito;
      tprod[x,116] := ''; //<nSerie> Número de série da arma        
      tprod[x,117] := ''; //<nCano> Número de série do cano
      tprod[x,118] := ''; //<desc> Descrição completa da arma, compreendendo: calibre, marca, capacidade, tipo de funcionamento, comprimento e demais elementos que permitam a sua perfeita identificação

      //Gruno para detalhamento de Devolução. <finNFe> igual a 4.
      tprod[x,129] := ''; //<pDevol> Percentual da mercadoria devolvida
      tprod[x,130] := ''; //<IPI> Informação do IPI devolvido
      tprod[x,131] := ''; //<vIPIDevol> Valor do IPI devolvido
      tProd[x,132] := ''; //<pMixGN> Percentual de Gás Natural para o produto GLP (cProdANP=210203001)

      { NRT - NOVA REFORMA TRIBUTÁRIA }
      // Informações dos tributos IBS / CBS e Imposto Seletivo
      // tag IS
      tProd[x,241] := ''; // <CSTIS> Código da Situação Tributária do Imposto Seletivo
      tProd[x,242] := ''; // <cClassTribIS> Código de Classificação Tributária do Imposto Seletivo
      tProd[x,243] := ''; // <vBCIS> Valor da Base de Cálculo do Imposto Seletivo
      tProd[x,244] := ''; // <pIS> Alíquota do Imposto Seletivo
      tProd[x,245] := ''; // <pISEspec> Alíquota específica por unidade de medida apropriada
      tProd[x,246] := ''; // <uTrib> Unidade de Medida Tributável
      tProd[x,247] := ''; // <qTrib> Quantidade Tributável
      tProd[x,248] := ''; // <vIS> Valor do Imposto Seletivo
      tProd[x,249] := '';        // IBSCBS <CST> Código de Situação Tributária do IBS e CBS
      tProd[x,250] := ''; // IBSCBS <cClassTrib> Código de Classificação Tributária do IBS e CBS
      tProd[x,251] := ''; //gIBSCBS <vBC> Base de Cálculo do IBS e da CBS
      tProd[x,252] := ''; // <pIBSUF> Alíquota vigente do IBS da UF
      tProd[x,253] := ''; // <pDif> Percentual do Diferimento
      tProd[x,254] := ''; // <vDif> Valor do Diferimento
      tProd[x,255] := ''; //<vDevTrib> Valor do tributo devolvido
      tProd[x,256] := ''; // <pRedAliq> Percentual de redução da alíquota do cClassTrib
      tProd[x,257] := ''; // <pAliqEfet> Alíquota Efetiva do IBS de competência da UF que será aplicada a Base de Cálculo
      tProd[x,258] := ''; // <vIBSUF> gIBSUF Valor do IBS de competência da UF
      tProd[x,259] := ''; // <pIBSMun> gIBSMun Alíquota do IBS de competência do Município
      tProd[x,260] := ''; // <pDif> Percentual do Diferimento
      tProd[x,261] := ''; // <vDif> Valor do Diferimento
      tProd[x,262] := ''; // <vDevTrib> Valor do tributo devolvido
      tProd[x,263] := ''; // <pRedAliq> Percentual de redução da alíquota do cClassTrib
      tProd[x,264] := ''; // <pAliqEfet> Alíquota Efetiva do IBS de competência do Município que será aplicada a Base de Cálculo
      tProd[x,266] := ''; //gIBSCBS <vIBS> Valor do IBS
      tProd[x,267] := ''; // <pCBS> gCBS Alíquota da CBS
      tProd[x,268] := ''; // <pDif> Percentual do Diferimento
      tProd[x,269] := ''; // <vDif> Valor do Diferimento
      tProd[x,270] := ''; // <vDevTrib> Valor do tributo devolvido
      tProd[x,271] := ''; // <pRedAliq> Percentual de redução da alíquota do cClassTrib
      tProd[x,272] := ''; // <pAliqEfet> Alíquota Efetiva da CBS que será aplicada a Base de Cálculo
      tProd[x,273] := ''; // <vCBS> Valor da CBS

      //tag IBSCBS
      tProd[x,249] := NFE_001NFE_IBSCBS_CSTIS.AsString;        // IBSCBS <CST> Código de Situação Tributária do IBS e CBS
      tProd[x,250] := NFE_001NFE_IBSCBS_CCLASSTRIBIS.AsString; // IBSCBS <cClassTrib> Código de Classificação Tributária do IBS e CBS

      if NFE_001NFE_IBSCBS_CSTIS.AsString = '000' then
      begin
        {Grupo de Informações do IBS e da CBS <gIBSCBS>}
        {Indexes obrigatórios: 251, 252, 258, 259, 265, 266, 267, 273}
        tProd[x,251] := oTextToValor(NFE_001NFE_IBSCBS_VBCIBSCBS.AsFloat,2,True); //gIBSCBS <vBC> Base de Cálculo do IBS e da CBS

        {Grupo de Informações do IBS para a UF <gIBSCBS/gIBSUF>}
        tProd[x,252] := oTextToValor(NFE_001NFE_IBSUF_PIBSUF.ASFloat,4,True); // <pIBSUF> Alíquota vigente do IBS da UF
        tProd[x,258] := oTextToValor(NFE_001NFE_IBSUF_VIBSUF.ASFloat,2,True); // <vIBSUF> gIBSUF Valor do IBS de competência da UF

        {Grupo de Informações do Diferimento <gIBSCBS/gIBSUF/gDif>}
        tProd[x,253] := ''; // <pDif> Percentual do Diferimento
        tProd[x,254] := ''; // <vDif> Valor do Diferimento

        {Grupo de Informações da devolução de tributos <gIBSCBS/gIBSUF/gDevTrib>}
        tProd[x,255] := ''; //<vDevTrib> Valor do tributo devolvido

        {Grupo de informações da redução da alíquota <gIBSCBS/gIBSUF/gRed>}
        tProd[x,256] := ''; // <pRedAliq> Percentual de redução da alíquota do cClassTrib
        tProd[x,257] := ''; // <pAliqEfet> Alíquota Efetiva do IBS de competência da UF que será aplicada a Base de Cálculo

        {Grupo de Informações do IBS para o município <gIBSCBS/gIBSMun>}
        tProd[x,259] := '0.0000'; // <pIBSMun> gIBSMun Alíquota do IBS de competência do Município
        tProd[x,265] := '0.00';   // <vIBSMun> gIBSMun Valor do IBS de competência do Município

        {Grupo de Informações do Diferimento <gIBSCBS/gIBSMun/gDif>}
        tProd[x,260] := ''; // <pDif> Percentual do Diferimento
        tProd[x,261] := ''; // <vDif> Valor do Diferimento

        {Grupo de Informações da devolução de tributos <gIBSCBS/gIBSMun/gDevTrib>}
        tProd[x,262] := ''; // <vDevTrib> Valor do tributo devolvido

        {Grupo de informações da redução da alíquota <gIBSCBS/gIBSMun/gRed>}
        tProd[x,263] := ''; // <pRedAliq> Percentual de redução da alíquota do cClassTrib
        tProd[x,264] := ''; // <pAliqEfet> Alíquota Efetiva do IBS de competência do Município que será aplicada a Base de Cálculo

        tProd[x,266] := oTextToValor(NFE_001NFE_IBSUF_VIBSUF.ASFloat,2,True); //gIBSCBS <vIBS> Valor do IBS

        {Grupo de informações da CBS}
        tProd[x,267] := oTextToValor(NFE_001NFE_CBS_PCBS.AsFloat,4,True); // <pCBS> gCBS Alíquota da CBS
        tProd[x,273] := oTextToValor(NFE_001NFE_CBS_VCBS.AsFloat,2,True); // <vCBS> Valor da CBS
      end;
      
      {Grupo de Informações do Diferimento <gIBSCBS/gCBS/gDif>}
      tProd[x,268] := ''; // <pDif> Percentual do Diferimento
      tProd[x,269] := ''; // <vDif> Valor do Diferimento

      {Grupo de Informações da devolução de tributos <gIBSCBS/gCBS/gDevTrib>}
      tProd[x,270] := ''; // <vDevTrib> Valor do tributo devolvido

      {Grupo de informações da redução da alíquota <gIBSCBS/gCBS/gRed>}
      tProd[x,271] := ''; // <pRedAliq> Percentual de redução da alíquota do cClassTrib
      tProd[x,272] := ''; // <pAliqEfet> Alíquota Efetiva da CBS que será aplicada a Base de Cálculo

      {Grupo de Informações do IBS e CBS monofásico <gIBSCBSMono>}
      {Indexes obrigatórios: 293 e 294}

      {Grupo de informações da Tributação Monofásica Padrão <gMonoPadrao>}
      {Informar todas as tags do grupo se for gerá-lo}
      tProd[x,274] := ''; //<qBCMono> Quantidade tributada na monofasia
      tProd[x,275] := ''; //<adRemIBS> Alíquota ad rem do IBS
      tProd[x,276] := ''; //<adRemCBS> Alíquota ad rem do CBS
      tProd[x,277] := ''; //<vIBSMono> Valor do IBS monofásico
      tProd[x,278] := ''; //<vCBSMono> Valor do CBS monofásico

      {Grupo de informações da Tributação Monofásica Sujeita a retenção <gMonoReten>}
      {Informar todas as tags do grupo se for gerá-lo}
      tProd[x,279] := ''; //<qBCMonoReten> Quantidade tributada sujeita a retenção na monofasia
      tProd[x,280] := ''; //<adRemIBSReten> Alíquota ad rem do IBS sujeito a retenção
      tProd[x,281] := ''; //<vIBSMonoReten> Valor do IBS monofásico sujeito a retenção
      tProd[x,282] := ''; //<adRemCBSReten> Alíquota ad rem do CBS sujeito a retenção
      tProd[x,283] := ''; //<vCBSMonoReten> Valor da CBS monofásica sujeita a retenção

      {Grupo de informações da Tributação Monofásica Retida Anteriormente <gMonoRet>}
      {Informar todas as tags do grupo se for gerá-lo}
      tProd[x,284] := ''; //<qBCMonoRet> Quantidade tributada retida anteriormente
      tProd[x,285] := ''; //<adRemIBSRet> Alíquota ad rem do IBS retido anteriormente
      tProd[x,286] := ''; //<vIBSMonoRet> Valor do IBS monofásico retido anteriormente
      tProd[x,287] := ''; //<adRemCBSRet> Alíquota ad rem do CBS retida anteriormente
      tProd[x,288] := ''; //<vCBSMonoRet> Valor da CBS monofásica retida anteriormente

      {Grupo de informações do Diferimento da Tributação Monofásica <gMonoDif>}
      {Informar todas as tags do grupo se for gerá-lo}
      tProd[x,289] := ''; //<pDifIBS> Percentual do diferimento do IBS monofásico
      tProd[x,290] := ''; //<vIBSMonoDif> Valor do IBS monofásico diferido
      tProd[x,291] := ''; //<pDifCBS> Percentual do diferimento da CBS monofásica
      tProd[x,292] := ''; //<vCBSMonoDif> Alíquota ad rem do CBS retida anteriormente

      tProd[x,293] := ''; //gIBSCBSMono <vTotIBSMonoItem> Total de IBS monofásico
      tProd[x,294] := ''; //gIBSCBSMono <vTotCBSMonoItem> Total da CBS monofásica

      {Tranferências de Crédito <gTransfCred>}
      tProd[x,295] := ''; //<vIBS> Valor do IBS a ser transferido
      tProd[x,296] := ''; //<vCBS> Valor da CBS a ser transferida

  		{ NT 2016.002 v1.60 - Jun/2018}
  		tProd[x,200] := '';	//pRedBCEfet
  		tProd[x,201] := '';	//vBCEfet
  		tProd[x,202] := '';	//pICMSEfet
  		tProd[x,203] := '';	//vICMSEfet

  		{ NT 2018_005 v1.20 mar/2019}
  		tProd[x,204] := '';	//vICMSSubstituto NT 2018_005 v1.20
  		tProd[x,205] := ''; //<xMotivoIsencao> CMotivo da isenção da ANVISA   NT 2018_005 v1.20

      tProd[x,206] := ''; //<cBarra> Código de barras diferente do padrão GTIN NT 2017_001 v1.40
      tProd[x,207] := ''; //<cBarraTrib> Código de Barras da unidade tributável que seja diferente do padrão GTIN. NT 2017_001 v1.40
      tProd[x,208] := ''; //<indSomaPISST> Indica se o valor do PISST compõe o valor total da NF-e. NT 2017_001 v1.40
      tProd[x,209] := ''; //<indSomaCOFINSST> Indica se o valor da COFINS ST compõe o valor total da NFe. NT 2017_001 v1.40

      tProd[x,210] := ''; //<pFCPDif> Percentual do diferimento do ICMS relativo ao FCP
      tProd[x,211] := ''; //<vFCPDif> Valor do ICMS relativo ao FCP
      tProd[x,212] := ''; //<vFCPEfet> Valor efetivo do ICMS relativo ao FCP

      tProd[x,213] := ''; //<vICMSSTDeson> Valor do ICMS- ST desonerado
      tProd[x,214] := ''; //<motDesICMSST> Motivo da desoneração do ICMS-ST

      tProd[x,215] := ''; //pBCOp
      tProd[x,216] := ''; //UFST

      { Combustíveis Ticket #515270 }
      tProd[x,217] := ''; //pBio
      tProd[x,218] := ''; //indImport
      tProd[x,219] := ''; //cUFOrig
      tProd[x,220] := ''; //pOrig

      tProd[x,221] := ''; //adRemICMS
      tProd[x,222] := ''; //adRemICMSReten
      tProd[x,223] := ''; //adRemICMSRet

      tProd[x,224] := ''; //vICMSMono
      tProd[x,225] := ''; //vICMSMonoOp
      tProd[x,226] := ''; //vICMSMonoDif
      tProd[x,227] := ''; //vICMSMonoReten
      tProd[x,228] := ''; //vICMSMonoRet

      tProd[x,229] := ''; //qBCMono
      tProd[x,230] := ''; //qBCMonoReten
      tProd[x,231] := ''; //qBCMonoRet

      tProd[x,232] := ''; //pRedAdRem
      tProd[x,233] := ''; //pDif
      tProd[x,234] := ''; //motRedAdRem

      tProd[x,235] := ''; //indDeduzDeson
      //if (EDISUF.Text <> EmptyStr) and (RECRomaneio.ZFM_CMUN) and (NFE_001NFE_MOTDESICMS.AsInteger = 7) then
      //tProd[x,235] := '1'; //indDeduzDeson

      tProd[x,236] := nfe_001NFE_CBENEF_RBC.AsString; //cBenefRBC
      tProd[x,238] := oTextToValor(NFE_001NFE_VUNCOM.AsFloat,9,True); //<vItem> Valor total do Item, correspondente à sua participação no total da nota. A soma dos itens deverá corresponder ao total da nota.

      //Referenciamento de item de outro Documento Fiscal Eletrônico
      tProd[x,239] := ''; //<chaveAcesso> Chave de acesso do DF-e referenciado
      tProd[x,240] := ''; //<nItem> Número do item do documento referenciado

      inc(x);
      nfe_001.Next;
    end;

    { Tag de Informações do Transporte da NF-e }
    tTransp[00] := IEModFrete.Text;                                                     //<modFrete>
    tTransp[01] := oREPTxt(IFThen(Length(EDTCNPJ.Text) = 14,EDTCNPJ.Text,EDTCPF.Text)); //<CNPJ> ou <CPF>
    tTransp[02] := oREPAcentos(EDTxNome.Text);                                          //<xNome>
    tTransp[03] := IFThen(Length(EDTCNPJ.Text) = 14,PETIE.Text,'ISENTO');               //<IE>

    if ((not oEmpty(PETTxLgr.Text)) and  (not oEmpty(EDTxLgr.Text)) and (not oEmpty(EDTNRO.Text))) then
    tTransp[04] := Trim(LeftStr(IFThen(oEmpty(PETTxLgr.Text),'.',oREPAcentos(PETTxLgr.Text  ))+' '  +
                                IFThen(oEmpty(EDTxLgr.Text ),'.',oREPAcentos(EDTxLgr.Text   ) +', ')+
                                IFThen(oEmpty(EDTNRO.Text  ),'.',oREPAcentos(EDTNRO.Text    ))+' '  +
                                IFThen(oEmpty(EDTxCpl.Text ),'.',oREPAcentos(EDTxCpl.Text   ))+' '  +
                                IFThen(oEmpty(EDTCep.Text  ),'.','Cep: '+oREPTxt(EDTCep.Text)),60));

    tTransp[05] := oREPAcentos(EDTxMun.Text); //<xMun>
    tTransp[06] := PETUF.Text;                //<UF>
    tTransp[07] := PETPlaca.Text;             //<placa>
    tTransp[08] := PETUFPlaca.Text;           //<UFPlaca>

    { Tag do Grupo Volumes
      Atenção! Separe por ";" para informar mais de 1 grupo de volume.
      Neste exemplo abaixo temos 3 grupos de volumes. }
    tTransp[09] := edqvol.Text;  //<qVol>
    tTransp[10] := oREPAcentos(edesp.Text);   //<esp>
    tTransp[11] := edmarca.Text; //<marca>
    tTransp[12] := ednvol.Text;  //<nVol>
    tTransp[13] := oTextToValor(CEPesoL.Text,3,True); //<pesoL>
    tTransp[14] := oTextToValor(CEPesoB.Text,3,True); //<pesoB>
    tTransp[15] := ''; //<RNTC>
    tTransp[16] := ''; //vServ
    tTransp[17] := ''; //vBCRet
    tTransp[18] := ''; //pICMSRet
    tTransp[19] := ''; //vICMSRet
    tTransp[20] := ''; //CFOP
    tTransp[21] := ''; //cMunFG
    tTransp[25] := ''; //<Vagao>
    tTransp[26] := ''; //<Balsa>
    tTransp[27] := ''; //<nLacre>

    { Tag cobrança }
    if cbdupl.Text = 'SIM' then
    try
      tCobr[00] := edcdnf.Text;                      //fat <nFat>
      tCobr[01] := oTextToValor(EDVDup.Text,2,True); //fat <vOrig>
      tCobr[02] := oTextToValor(EDVDup.Text,2,True); //fat <vLiq>

      x := 0;
      dup_001.DisableControls;
      dup_001.First;
      while not dup_001.Eof do
      begin
        inc(x);
        tCobr[03] := tCobr[03] + oStrZero(x,3)+';';                                           //dup <nDup>
        tCobr[04] := tCobr[04] + FormatDateTime('yyyy-mm-dd',dup_001NFE_DVEN.AsDateTime)+';'; //dup <dVenc>
        tCobr[05] := tCobr[05] + oTextToValor(dup_001NFE_VDUP.AsFloat,2,True)+';';            //dup <vDup>
        dup_001.Next;
      end;

      //Posições 6,7 e 8 para atender a parcelas grandes, maiores que 24. Sol.: 1071 - Em: 11/11/2014
      //Só preencher caso as posições 3,4 e 5 não sejam suficientes.
      //Atentar para, se tiverem 24 nDups (na posição tCobr[3]) terão que ter 24 datas e 24 valores, para então preencher as posições abaixo.
      //Lembrar de finalizar cada posição [6], [7] e [8] com um ponto e vírgula (;).
      tCobr[06] := ''; //dup <nDup>
      tCobr[07] := ''; //dup <dVenc>
      tCobr[08] := ''; //dup <vDup>
      tCobr[09] := ''; //dup <vDup>
      tCobr[10] := '0.00'; //<vDesc>
    finally
      dup_001.EnableControls;
    end;

    {Grupo de Informações de Pagamento}
    {*01=Dinheiro
     *02=Cheque
     *03=Cartão de Crédito
     *04=Cartão de Débito
     *05=Crédito Loja
     *10=Vale Alimentação
     *11=Vale Refeição
     *12=Vale Presente
     *13=Vale Combustível
     *15=Boleto Bancário
     *16=Depósito Bancário
     *17=Pagamento Instantâneo (PIX)
     *18=Transferência bancária, Carteira Digital
     *19=Programa de fidelidade, Cashback, Crédito Virtual
     *90= Sem pagamento
     *99=Outros *}

    if cbdupl.Text = 'SIM' then
    begin
      tPag[0] := '15;';                                   //<tPag>   Forma de Pagamento
      tPag[1] := oTextToValor(IFThen(cbdupl.Text = 'SIM',EDVDup.Text,EDVNF.Text),2,True)+';'; //<vPag>   Valor do Pagamento
      tPag[7] := IFThen(cbdpag.Text = 'A VISTA','0','1')+';';                                 //<indPag> Indicador de pgto 0|1
    end else
    begin
      tPag[0] := '90;';   //<tPag>   Forma de Pagamento
      tPag[1] := '0.00;'; //<vPag>   Valor do Pagamento
      tPag[7] := '';      //<indPag> Indicador de pgto 0|1
    end;

    {* 1=Pagamento integrado com o sistema de automação da empresa (Ex.: equipamento TEF, Comércio Eletrônico);
     * 2= Pagamento não integrado com o sistema de automação da empresa (Ex.: equipamento POS); }
    tPag[2]:= '';//'01;';            //<tpIntegra> Tipo de Integração do processo de pagamento com o sistema de automação da empresa
    tPag[3]:= '';//'9999999999999;'; //<CNPJ> CNPJ da Credenciadora do Cartão
    tPag[4]:= '';//'visa;';          //<tBand> Bandeira da Operadora do Cartão
    tPag[5]:= '';//'1234;';          //<cAut> Numero de Autorização da Operação
    tPag[6]:= '';//'0.00';           //<vTroco> Valor do Troco
    tPag[8]:= IFThen(tPag[0] = '99;','Outras formas de pagamento','')+';'; //<xPag> 'descrição do meio de pagamento' (xPag) - NT 2020.006 v1.20

    { Tag de grupo de Valores Totais da NFe }
    tTotal[00] := oTextToValor(edvbc.Text    ,2,True); //<vBC>
    tTotal[01] := oTextToValor(edvicms.Text  ,2,True); //<vICMS>
    tTotal[02] := oTextToValor(edvbcst.Text  ,2,True); //<vBCST>
    tTotal[03] := oTextToValor(edvst.Text    ,2,True); //<vST>
    tTotal[04] := oTextToValor(edvprod.Text  ,2,True); //<vProd>
    tTotal[05] := oTextToValor(CEVFrete.Value,2,True); //<vFrete>
    tTotal[06] := oTextToValor(CEVSeg.Value  ,2,True); //<vSeg>
    tTotal[07] := oTextToValor(edvdesc.Text  ,2,True); //<vDesc>
    tTotal[08] := oTextToValor(edvII.Text    ,2,True); //<vII>
    tTotal[09] := oTextToValor(edvipi.Text   ,2,True); //<vIPI>
    tTotal[10] := oTextToValor(edvpis.Text   ,2,True); //<vPIS>
    tTotal[11] := oTextToValor(edvcofins.Text,2,True); //<vCOFINS>
    tTotal[12] := oTextToValor(edvoutro.Text ,2,True); //<vOutro>
    tTotal[13] := oTextToValor(edvnf.Text    ,2,True); //<vNF>

    tTotal[39] := '0.00'; //ICMSTot <vFCPST> Valor Total do FCP (Fundo de Combate à Pobreza) retido por substituição tributária
    tTotal[40] := '0.00'; //ICMSTot <vFCPSTRet> Valor Total do FCP retido anteriormente por Substituição Tributária
    tTotal[41] := '0.00'; //ICMSTot <vIPIDevol> Valor Total do IPI devolvido

    tTotal[26] := '0.00'; // <vTotTrib>

    { Totais ICMSUF }
    tTotal[37] := '0.00'; //oTextToValor(FIS_NFE_SUMNFE_VFCPUFDEST.AsFloat,2,True);  //ICMSTot <vFCPUFDest>

    //if FIS_NFE_SUMNFE_VICMSUFDEST.AsFloat > 0 then
    //tTotal[35] := oTextToValor(FIS_NFE_SUMNFE_VICMSUFDEST.AsFloat,2,True); //ICMSTot <vICMSUFDest>

    tTotal[36] := '0.00'; //ICMSTot <vICMSUFRemet>
    tTotal[38] := '0.00'; //ICMSTot <vFCP> Valor Total do FCP (Fundo de Combate à Pobreza)

    { grupo ISSQN }
    tTotal[14] := ''; //ISSQNtot <vServ>
    tTotal[15] := ''; //ISSQNtot <vBC>
    tTotal[16] := ''; //ISSQNtot <vISS>
    tTotal[17] := ''; //ISSQNtot <vPIS>
    tTotal[18] := ''; //ISSQNtot <vCOFINS>

    tTotal[28] := FormatDateTime('yyyy-mm-dd',DEdhEmi.Date); //ISSQNtot <dCompet>
    tTotal[29] := ''; //ISSQNtot <vDeducao>
    tTotal[30] := ''; //ISSQNtot <vOutro>
    tTotal[31] := ''; //ISSQNtot <vDescIncond>
    tTotal[32] := ''; //ISSQNtot <vDescCond>
    tTotal[33] := ''; //ISSQNtot <vISSRet>
    tTotal[34] := ''; //ISSQNtot <cRegTrib>

    { retTrib: Grupo de Retenções de Tributos }
    tTotal[19] := ''; //retTrib  <vRetPIS>
    tTotal[20] := ''; //retTrib  <vRetCOFINS>
    tTotal[21] := ''; //retTrib  <vRetCSLL>
    tTotal[22] := ''; //retTrib  <vBCIRRF>
    tTotal[23] := ''; //retTrib  <vIRRF>
    tTotal[24] := ''; //retTrib  <vBCRetPrev>
    tTotal[25] := ''; //retTrib  <vRetPrev>

    { <ICMSTot> Tributacao ICMS monofásico. Ticket #515270 }
    tTotal[42] := ''; //qBCMono
    tTotal[43] := ''; //vICMSMono
    tTotal[44] := ''; //qBCMonoReten
    tTotal[45] := ''; //vICMSMonoReten
    tTotal[46] := ''; //qBCMonoRet
    tTotal[47] := ''; //vICMSMonoRet

    { NRT - NOVA REFORMA TRIBUTÁRIA }
    //<ISTot> Grupo total do imposto seletivo
    tTotal[48] := ''; //<vIS> Total do Imposto Seletivo

    //<IBSCBSTot> Totais da NF-e com IBS e CBS
    tTotal[49] := oTextToValor(EDNFE_IBSCBS_VBCIBSCBS.Text,2,True); //<vBCIBSCBS> Valor total da BC do IBS e da CBS

    {<gIBS> Grupo Total do IBS}
    {Para gerar este grupo todas tags abaixo devem ser informadas}

    {<gIBSUF> Grupo Total do IBS da UF}
    tTotal[50] := '0.00'; //<vDif> Valor total do diferimento
    tTotal[51] := '0.00'; //<vDevTrib> Valor total de devolução de tributos
    tTotal[52] := oTextToValor(EDNFE_IBSUF_VIBSUF.Text,2,True); //<vIBSUF> Valor total do IBS da UF

    {<gIBSMun> Grupo Total do IBS do Município}
    tTotal[53] := '0.00'; //<vDif> Valor total do diferimento
    tTotal[54] := '0.00'; //<vDevTrib> Valor total de devolução de tributos
    tTotal[55] := '0.00'; //<vIBSMun> Valor total do IBS da UF

    tTotal[56] := oTextToValor(EDNFE_IBSUF_VIBSUF.Text,2,True); //<vIBS> Valor total do IBS
    tTotal[57] := '0.00'; //<vCredPres> Valor total do crédito presumido
    tTotal[58] := '0.00'; //<vCredPresCondSus> Valor total do crédito presumido em condição suspensiva

    {<gCBS> Grupo Total da CBS}
    {Para gerar este grupo todas tags abaixo devem ser informadas}
    tTotal[59] := '0.00'; //<vDif> Valor total do diferimento
    tTotal[60] := '0.00'; //<vDevTrib> Valor total de devolução de tributos
    tTotal[61] := oTextToValor(EDNFE_CBS_VCBS.Text,2,True); //<vCBS> Valor total da CBS
    tTotal[62] := '0.00'; //<vCredPres> Valor total do crédito presumido
    tTotal[63] := '0.00'; //<vCredPresCondSus> Valor total do crédito presumido em condição suspensiva

    {<gMono> Grupo Total da Monofasia}
    {Para gerar este grupo todas tags abaixo devem ser informadas}
    tTotal[64] := ''; //<vIBSMono> Valor total do IBS Monofásico
    tTotal[65] := ''; //<vCBSMono> Valor total da CBS Monofásica
    tTotal[66] := ''; //<vIBSMonoReten> Valor total do IBS Monofásico sujeito a retenção
    tTotal[67] := ''; //<vCBSMonoReten> Valor total da CBS Monofásica sujeito a retenção
    tTotal[68] := ''; //<vIBSMonoRet> Valor total do IBS Monofásico retido anteriormente
    tTotal[69] := ''; //<vCBSMonoRet> Valor total da CBS Monofásica retida anteriormente

    tTotal[70] := ''; //<vNFTot> Valor total da NF-e com IBS / CBS / IS

    if NFE_001NFE_VNFTOT.AsFloat > 0 then
    tTotal[70] := oTextToValor(NFE_001NFE_VNFTOT.AsFloat,2,True);

    tTotal[14] := '';     //ISSQNtot <vServ>
    tTotal[15] := '';     //ISSQNtot <vBC>
    tTotal[16] := '';     //ISSQNtot <vISS>
    tTotal[17] := '';     //ISSQNtot <vPIS>
    tTotal[18] := '';     //ISSQNtot <vCOFINS>
    tTotal[19] := '';     //retTrib  <vRetPIS>
    tTotal[20] := '';     //retTrib  <vRetCOFINS>
    tTotal[21] := '';     //retTrib  <vRetCSLL>
    tTotal[22] := '';     //retTrib  <vBCIRRF>
    tTotal[23] := '';     //retTrib  <vIRRF>
    tTotal[24] := '';     //retTrib  <vBCRetPrev>
    tTotal[25] := '';     //retTrib  <vRetPrev>
    tTotal[26] := '0.00'; //         <vTotTrib>
    tTotal[27] := '0.00'; //ICMSTot  <vICMSDeson>
    tTotal[28] := FormatDateTime('yyyy-mm-dd',DEdhEmi.Date); //ISSQNtot <dCompet>
    tTotal[29] := '';      //ISSQNtot <vDeducao>
    tTotal[30] := '';      //ISSQNtot <vOutro>
    tTotal[31] := '';      //ISSQNtot <vDescIncond>
    tTotal[32] := '';      //ISSQNtot <vDescCond>
    tTotal[33] := '';      //ISSQNtot <vISSRet>
    tTotal[34] := '';      //ISSQNtot <cRegTrib>
    if oTrimValor(EDvICMSUFDest.Text) > 0 then
       tTotal[35] := oTextToValor(EDvICMSUFDest.Text,2,True)
    else  //ICMSTot <vICMSUFDest>
       tTotal[35] := '';
    tTotal[36] := '0.00';  //ICMSTot <vICMSUFRemet>
    tTotal[37] := oTextToValor(edvFCPUFDest.Text,2,True);  //ICMSTot <vFCPUFDest>
    tTotal[38] := '0.00';  //ICMSTot <vFCP> Valor Total do FCP (Fundo de Combate à Pobreza)
    tTotal[39] := '0.00';  //ICMSTot <vFCPST> Valor Total do FCP (Fundo de Combate à Pobreza) retido por substituição tributária
    tTotal[40] := '0.00';  //ICMSTot <vFCPSTRet> Valor Total do FCP retido anteriormente por Substituição Tributária
    tTotal[41] := '0.00';  //ICMSTot <vIPIDevol> Valor Total do IPI devolvido

    { Tag de informações adicionais da NFe }
    ATUALIZA_MENSAGENS;

//    tInfAdic[0] := 'Informacoes Adicionais de Interesse do Fisco - Informacoes Adicionais de Interesse do Fisco'; //infAdFisco

    if InfAd.Count > 0 then
    begin
      for x := 0 to InfAd.Count - 1 do
      tInfAdic[x]             := Trim(InfAd.Strings[x]);
      tInfAdic[InfAd.Count-1] := LeftStr(tInfAdic[InfAd.Count-1],Length(tInfAdic[InfAd.Count-1])-1);
    end;

    if edcdro.Text <> '0' then
    begin
      tInfAdic[21] := 'Romaneio;Vendedor;Representante';
      tInfAdic[22] := edXPED.Text+';'+oREPAcentos(eddven.Text)+';'+oREPAcentos(eddrep.Text);
    end else
    if not oEmpty(edXPED.Text) then
    begin
      tInfAdic[21] := 'Romaneio';
      tInfAdic[22] := oREPAcentos(edXPED.Text);
    end;

    if ((edcven.Text <> '0') and (StrToInt(edcven.Text) <> RECUsuarios.Id)) then
    begin
      tInfAdic[21] := Trim(tInfAdic[21] + IFThen(not oEmpty(tInfAdic[21]),';','') + 'Operador');
      tInfAdic[22] := Trim(tInfAdic[22] + IFThen(not oEmpty(tInfAdic[22]),';','') + oREPAcentos(RECUsuarios.Login));
    end;

    tInfAdic[23] := ''; //ProcRef <nProc>
    tInfAdic[24] := ''; //ProcRef <indProc>

    tInfAdic[25] := ''; //infIntermed <CNPJ> - Informar o CNPJ do Intermediador da Transação (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.
    tInfAdic[26] := ''; //infIntermed <idCadIntTran>  - Nome do usuário ou identificação do perfil do vendedor no site do intermediador (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.

    Chave := GeraNFe(tIde,tEmit,tDest,tProd,tTotal,tTransp,tCobr,tPag,tInfAdic,autXML,True);

    if Length(chave) > 44 then
    begin
      BRet := true;

      sbMAIN.Panels[0].Text := 'Pronto';
      sbMAIN.Panels[1].Text := 'NF-e Gerada: '+chave;
    end else
    begin
      BRet := false;

      sbMAIN.Panels[0].Text := 'Erro';
      sbMAIN.Panels[1].Text := 'Falha na geração NF-e';
    end;
  finally
   Screen.cursor:=crDefault;
  end;
  sbMAIN.Refresh;
  result := bREt;
end;

procedure Tfrmven_nfe.IEFinNFeChange(Sender: TObject);
begin
  if (IEFinNFe.Text <> '2') and (IEFinNFe.Text <> '3') then
  Exit;

  EDInfAdNF.Clear;
  EDInfAdNF.Lines.Add('NOTA FISCAL COMPLEMENTAR DE (ICMS OU IPI), REFERENTE A NOSSA NF-E DE No: '+NewNota+' EMITIDA EM '+NewData);

  IEModFrete.Text := '9';
  edctra.Text     := '0';
  cbdtra.Text     := '';
  edesp.Text      := '';
  edqvol.Text     := '0';
  CEPesoB.Value   := 0;
  CEPesoL.Value   := 0;
  cbdupl.Text     := 'NÃO';

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_DUP');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DELETE FROM NFE_CLI');
    ExecSQL;
  end;
  oRTransact(TSheild);

  nfe_001.First;
  while not nfe_001.Eof do
  begin
    nfe_001.Edit;
    nfe_001NFE_XPROD.Value     := 'NOTA FISCAL COMPLEMENTAR';
    nfe_001NFE_INFADPROD.Value := EmptyStr;
    nfe_001NFE_COMP.Value      := EmptyStr;
    nfe_001NFE_QCOM.Value      := 0;
    nfe_001NFE_VUNCOM.Value    := 0;
    nfe_001NFE_QTRIB.Value     := 0;
    nfe_001NFE_VUNTRIB.Value   := 0;
    nfe_001NFE_VPROD.Value     := 0;
    nfe_001NFE_VDESC.Value     := 0;

    nfe_001NFE_VBCIPI.Value  := 0;
    nfe_001NFE_PIPI.Value    := 0;
    nfe_001NFE_VIPI.Value    := 0;

    nfe_001NFE_VBCPIS.Value := 0;
    nfe_001NFE_PPIS.Value   := 0;
    nfe_001NFE_VPIS.Value   := 0;

    nfe_001NFE_VBCOFINS.Value  := 0;
    nfe_001NFE_PCOFINS.Value   := 0;
    nfe_001NFE_VCOFINS.Value   := 0;

    nfe_001NFE_VFRETE.Value := 0;

    nfe_001.Post;
    nfe_001.Next;
  end;  
end;

procedure Tfrmven_nfe.IEModFreteExit(Sender: TObject);
var
  Ctrl: TWinControl;
begin
  try
    DUPLICATAS;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := Nil;
    if ctrl <> Nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_nfe.LATDescClick(Sender: TObject);
begin
  LATDesc.Caption := IFThen(LATDesc.Caption = '%','$','%');
  EDTDesc.ValidateEdit;
end;

procedure Tfrmven_nfe.EDTDescValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  LATDesc.Tag  := 1;
  EDTDesc.Text := IFThen(EDTDesc.Text = '','0,00',EDTDesc.Text);

  CALCULA_NF;
  PCEdicao.ActivePageIndex := 0;
  DBGNFe.SetFocus;
  DBGNFe.FocusedColumn := DBGNFeNFE_VDESC.ColIndex;
end;

procedure Tfrmven_nfe.edcdnfKeyPress(Sender: TObject; var Key: Char);
begin
  key := oEditNumero(key,edcdnf.Text);
end;

procedure Tfrmven_nfe.edcdnfValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (oEmpty(edcdnf.Text)) or (edcdnf.Text = '0') then
  oException(edcdnf,'Número da Nota Fiscal não Informado !');

  if edcdnf.Tag <> StrToInt(edcdnf.Text) then
  try
    Tag := 1;
    if StrToInt(edcdnf.Text) - edcdnf.Tag > 1 then
       if oYesNo(handle,'Número de nota fiscal inválido !'+#13+
                        'Você apenas pode aumentar o número conforme a sequencia.'+#13+
                        'Tem certeza que deseja fazer essa alteração ?') = mrno then
       edcdnf.Text := oStrZero(edcdnf.Tag,6);

    if not uPSQNotaFiscal(edcdnf.Text) then
    begin
      edcdnf.Text := oStrZero(bRETNotaFiscal,6);
      oAviso(handle,'Novo número selecionado !'+#13+
                    'Nota Fiscal: '+ edcdnf.Text);
    end;

    edcdnf.Tag := StrToInt(edcdnf.Text);

    if cbdupl.Text = 'SIM' then
    try
      dup_001.DisableControls;
      dup_001.First;
      while not dup_001.Eof do
      begin
        dup_001.Edit;
        dup_001NFE_CDNF.Value := StrToInt(edcdnf.Text);
        dup_001NFE_TITU.Value := RETORNA_TITULO;
        dup_001.Post;
        dup_001.Next;
      end;
    finally
      dup_001.EnableControls;
    end;

    if (LeftStr(cbcnat.Text,1) = '3') and (FrmPrincipal.ParametrosPAR_DIOR.AsString <> '1') then
    try
      nfe_001.DisableControls;
      nfe_001.First;
      while not nfe_001.Eof do
      begin
        nfe_001.Edit;
        nfe_001NFE_CPROD.AsString := IntToStr(edcdnf.Tag)+'/'+nfe_001NFE_ITEMPED.AsString;
        nfe_001.Post;
        nfe_001.Next;
      end;
    finally
      nfe_001.EnableControls;
    end;
  finally
    Tag := 0;
    oRTransact(TSheild);

    eddfav.SetFocus;
  end;
end;

procedure Tfrmven_nfe.edcdroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if oEmpty(edcdro.Text) then
     edcdro.Text := '0';
end;

procedure Tfrmven_nfe.edespValidate(Sender: TObject; var ErrorText: String;
  var Accept: Boolean);
begin
  TdxEdit(Sender).Tag := 1;
end;

procedure Tfrmven_nfe.CEPesoBChange(Sender: TObject);
begin
  { Ricardo - ver decimais diferentes de 2 casas }
//  oFormatValor(Sender);
end;

procedure Tfrmven_nfe.CEPesoBEnter(Sender: TObject);
begin
//  oFormatValorEnter(Sender);
end;

procedure Tfrmven_nfe.CEPesoBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  oFormatValorKeyDown(Sender,key);
end;

procedure Tfrmven_nfe.CEPesoBKeyPress(Sender: TObject; var Key: Char);
begin
//  oFormatValorKeyPress(Sender,Key);
end;

procedure Tfrmven_nfe.CEPesoBValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEPesoB.Tag  := 1;
//  CEPesoL.Text := FormatFloat('#,0.00',oTextToValor(CEPesoB.Text) - ((oTextToValor(CEPesoB.Text) * 3) / 100));
end;

procedure Tfrmven_nfe.CEPesoLChange(Sender: TObject);
begin
//  oFormatValorEnter(Sender);
end;

procedure Tfrmven_nfe.CEPesoLEnter(Sender: TObject);
begin
//  oFormatValorEnter(Sender);
end;

procedure Tfrmven_nfe.CEPesoLKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  oFormatValorKeyDown(Sender,key);
end;

procedure Tfrmven_nfe.CEPesoLKeyPress(Sender: TObject; var Key: Char);
begin
//  oFormatValorKeyPress(Sender,Key);
end;

procedure Tfrmven_nfe.CEPesoLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEPesoL.Tag := 1;
end;

procedure Tfrmven_nfe.cbcnatChange(Sender: TObject);
begin
  if LeftStr(cbcnat.Text,1) = '3' then
  begin
    EDCNPJTerceiro.Text    := RECParametros.Cnpj;
    PEUFTerceiro.Text      := RECParametros.UnidadeFederada;
    EDcExportador.Text     := oStrZero(RECParametros.Id,4);
    EDcFabricante.Text     := oStrZero(RECParametros.Id,4);
    TSEXImporta.TabVisible := True;
    TSEXExporta.TabVisible := False;
  end else
  if LeftStr(cbcnat.Text,1) = '7' then
  begin
    EDCNPJProd.Text := RECParametros.Cnpj;
    TSEXImporta.TabVisible := False;
    TSEXExporta.TabVisible := True;
  end else
  begin
    EDnDI.Text          := '';
    DEdDI.Text          := '';
    EDxLocDesemb.Text   := '';
    PEUFDesemb.Text     := '';
    DEdDesemb.Text      := '';
    IETpViaTransp.Text  := '';
    CEvAFRMM.Text       := '';
    CEnAdicao.Text      := '';
    CEnSeqAdic.Text     := '';
    EDCNPJTerceiro.Text := '';
    PEUFTerceiro.Text   := '';
    IEtpIntermedio.Text := '';
    EDcExportador.Text  := '';
    EDcFabricante.Text  := '';
    EDCNPJProd.Text     := '';
    EDnDraw.Text        := '';
    EDnRE.Text          := '';
    EDxLocDespacho.Text := '';
    EDxLocExporta.Text  := '';
    EDUFSaidaPais.Text  := '';
    EDchNFe.Text        := '';
    CEqExport.Text      := '';
  end;
end;

procedure Tfrmven_nfe.cbcnatValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    Tag   := 1;
    BCalc := True;
    PESQUISA_NATUREZA(cbcnat.Text,'C');
  finally
    oRTransact(TSheild);
    Calcula_NF;
  end;
end;

procedure Tfrmven_nfe.DEdhSaiEntDblClick(Sender: TObject);
begin
  if RECUsuarios.Id = 0 then
  DEdhEmi.Date := DEdhSaiEnt.Date;
end;

procedure Tfrmven_nfe.nfe_001AfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := false;
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;

    if (PCEdicao.ActivePageIndex = 0)    and (PNLPrincipal.Enabled) and
       (ActiveControl <> DBInfoComp) then
    dbgnfe.SetFocus;
  end;
end;

procedure Tfrmven_nfe.nfe_001AfterInsert(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := false;
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;

    dbgnfe.FocusedColumn := 2;
    if (PCEdicao.ActivePageIndex = 0) and (PNLPrincipal.Enabled) then
    dbgnfe.SetFocus;
  end;
end;

procedure Tfrmven_nfe.dbgnfeNFE_VBCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    nfe_001NFE_VBC.Value := StrToFloat(dbgnfe.EditingText);
    if nfe_001NFE_VBC.AsFloat > 0 then
    begin
      nfe_001NFE_PICMS.Value := IFThen(nfe_001NFE_PICMS.Value = 0,StrToFloat(NewPICMS),nfe_001NFE_PICMS.AsFloat);
      nfe_001NFE_VICMS.Value := RoundTO((nfe_001NFE_VBC.AsFloat*nfe_001NFE_PICMS.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.dbgnfeNFE_PICMSValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    nfe_001NFE_PICMS.Value := StrToFloat(dbgnfe.EditingText);
    if nfe_001NFE_PICMS.AsFloat > 0 then
    begin
      nfe_001NFE_VBC.Value   := IFThen(nfe_001NFE_VBC.AsFloat = 0,StrToFloat(NewVBC),nfe_001NFE_VBC.AsFloat);
      nfe_001NFE_VICMS.Value := RoundTO((nfe_001NFE_PICMS.AsFloat*nfe_001NFE_VBC.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.dbgnfeNFE_VICMSValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    nfe_001NFE_VICMS.Value := StrToFloat(dbgnfe.EditingText);
    if nfe_001NFE_VICMS.AsFloat > 0 then
    begin
      nfe_001NFE_PICMS.Value := IFThen(nfe_001NFE_PICMS.AsFloat = 0,StrToFloat(NewVBC),nfe_001NFE_PICMS.AsFloat);
      nfe_001NFE_VBC.AsFloat := RoundTO((nfe_001NFE_VICMS.AsFloat/nfe_001NFE_PICMS.AsFloat)*100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.dbgnfeNFE_VBCIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    nfe_001NFE_VBCIPI.Value := StrToFloat(dbgnfe.EditingText);
    if nfe_001NFE_VBCIPI.AsFloat > 0 then
    begin
      nfe_001NFE_PIPI.Value   := IFThen(nfe_001NFE_PIPI.Value = 0,StrToFloat(NewPIPI),nfe_001NFE_PIPI.AsFloat);
      nfe_001NFE_VIPI.Value   := RoundTO((nfe_001NFE_VBCIPI.AsFloat*nfe_001NFE_PIPI.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.dbgnfeNFE_PIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    nfe_001NFE_PIPI.Value   := StrToFloat(dbgnfe.EditingText);
    if nfe_001NFE_PIPI.AsFloat > 0 then
    begin
      nfe_001NFE_VBCIPI.Value := IFThen(nfe_001NFE_VBCIPI.AsFloat = 0,StrToFloat(NewVBCIPI),nfe_001NFE_VBCIPI.AsFloat);
      nfe_001NFE_VIPI.Value   := RoundTO((nfe_001NFE_PIPI.AsFloat*nfe_001NFE_VBCIPI.AsFloat)/100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.dbgnfeNFE_VIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    nfe_001NFE_VIPI.Value   := StrToFloat(dbgnfe.EditingText);
    if nfe_001NFE_VIPI.AsFloat > 0 then
    begin
      nfe_001NFE_PIPI.Value     := IFThen(nfe_001NFE_PIPI.AsFloat = 0,StrToFloat(NewVBCIPI),nfe_001NFE_PIPI.AsFloat);
      nfe_001NFE_VBCIPI.AsFloat := RoundTO((nfe_001NFE_VIPI.AsFloat/nfe_001NFE_PIPI.AsFloat)*100,-2);
    end;
  end;
end;

procedure Tfrmven_nfe.siCGEClick(Sender: TObject);
begin
  if siCGE.ImageIndex = 7 then
  begin
    siCGE.Hint       := 'Destravar Cálculo Automático';
    siCGE.ImageIndex := 8;
    BCalc     := False;
    siCGE.Tag := 1;
  end else
  begin
    siCGE.Hint       := 'Travar Cálculo Automático';
    siCGE.ImageIndex := 7;
    BCalc     := True;
    siCGE.Tag := 0;
  end;
end;

procedure Tfrmven_nfe.dbgnfeNFE_VPRODValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  nfe_001NFE_VPROD.Value := oTextToValor(dbgnfe.EditingText);
end;

procedure Tfrmven_nfe.IEindIEDestChange(Sender: TObject);
begin
  if IEindIEDest.Text = '1' then
  IEindIEDest.Hint := 'Contribuinte de ICMS (obrigatório informar a IE do destinatário).' else
  if IEindIEDest.Text = '2' then
  IEindIEDest.Hint := 'Contribuinte isento de IE no cadastro de contribuintes do ICMS.' else
  if IEindIEDest.Text = '9' then
  IEindIEDest.Hint := 'Não Contribuinte, que pode ou não possuir IE no cadastro de contribuintes do ICMS.' else
  IEindIEDest.Hint := 'Indicador da IE do destinatário';

  if Pos(IEIndIEDest.Text,'29') > 0 then
  PEIE.Text := '';

  if Tag = 0 then Calcula_NF;
end;

procedure Tfrmven_nfe.IEindFinalChange(Sender: TObject);
begin
  if Tag = 0 then Calcula_NF;
end;

procedure Tfrmven_nfe.PESQUISA_TRANSPORTADORA(pesq,chave: string);
begin
  pesq := IFThen((oEmpty(pesq)) or (pesq = '0'),RECParametros.IDTransportadora,pesq);
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,TRA_FANT,TRA_RAZA,TRA_CNPJ,TRA_INSC,TRA_CPF,TRA_TLOG,TRA_LOGR,TRA_CEP,TRA_NUME,TRA_COMP,TRA_BAI,TRA_CID,TRA_ESTA,');
    SQL.Add('          TRA_DDD ,TRA_TEL1,TRA_CONT,TRA_MAIL,');
    SQL.Add('          TRA_VTCARRO,TRA_VTPLACA,TRA_VTUF,TRA_VTRNTC,');
    SQL.Add('          TRIM(CAST(SUBSTRING(TRA_OBSE FROM 1 FOR 512) AS VARCHAR(512))) TRA_OBSE');
    SQL.Add('FROM   CAD_TRA');
    SQL.Add('WHERE '+IFThen(chave = 'C','ID','TRA_FANT')+' = '''+pesq+'''');
    Open;
    cbdtra.Text := Fields[01].AsString;

    if not Fields[0].IsNull then
    begin
      edctra.Text := Fields[00].AsString;
      cbdtra.Text := Fields[01].AsString;
      EDTFantasia.Text := Fields[01].AsString;
      EdTxNome.Text    := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxNome.Text  ,Fields[02].AsString);
      EdTCNPJ.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdCNPJ.Text   ,Fields[03].AsString);
      PETIE.Text       := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,PEIE.Text     ,Fields[04].AsString);
      EdTCPF.Text      := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdCPF.Text    ,Fields[05].AsString);
      PETTxLgr.Text    := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,PETxLgr.Text  ,Fields[06].AsString);
      EdTxLgr.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxLgr.Text   ,Fields[07].AsString);
      EdTCep.Text      := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdCep.Text    ,Fields[08].AsString);
      EdTNRO.Text      := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdNRO.Text    ,Fields[09].AsString);
      EdTxCpl.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxCpl.Text   ,Fields[10].AsString);
      EdTxBairro.Text  := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxBairro.Text,Fields[11].AsString);
      EdTxMun.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EdxMun.Text   ,Fields[12].AsString);
      PETUF.Text       := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,PEUF.Text     ,Fields[13].AsString);
      EDTDDD.Text      := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EDDDD.Text    ,Fields[14].AsString);
      EDTFone.Text     := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EDFone.Text   ,Fields[15].AsString);
      EDTContato.Text  := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,EDContato.Text,Fields[16].AsString);
      PETEmail.Text    := IFThen(Pos('CLIENTE RETIRA',pesq) > 0,PEEmail.Text  ,Fields[17].AsString);
      PETCarro.Text    := Fields[18].AsString;
      PETPlaca.Text    := Fields[19].AsString;
      PETUFPlaca.Text  := Fields[20].AsString;
      EDTRNTC.Text     := Fields[21].AsString;
      EDTInfAd.Text    := Fields[22].AsString;

      if ((Length(EDTCNPJ.Text) < 14) or (Length(PETIE.Text) < 7)) then
      begin
        EDTCNPJ.Text := '';
        PETIE.Text   := '';
      end;

      if Pos('SEM FRETE',cbdtra.Text) > 0 then
      IEModFrete.Text := '9' else
      if (Pos('CLIENTE RETIRA',cbdtra.Text) > 0) or (Pos('O PRÓPRIO',cbdtra.Text) > 0) then
      IEModFrete.Text := '4' else
      if Pos('NOSSO CARRO (' ,cbdtra.Text) > 0 then
      IEModFrete.Text := '3' else
      if Pos('CARRETOS'    ,cbdtra.Text) > 0 then
      IEModFrete.Text := '2' else
      if Pos(IEModFrete.Text,'01') = 0 then
      IEModFrete.Text := '0';
    end;
  end;
end;

procedure Tfrmven_nfe.CEVFreteValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CALCULA_FRETE;
  CALCULA_NF;
end;

procedure Tfrmven_nfe.CEVSegValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CALCULA_SEGURO;
  CALCULA_NF;
end;

procedure Tfrmven_nfe.EDInfAdFKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure Tfrmven_nfe.EDTQComKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_nfe.LAXPedClick(Sender: TObject);
begin
  LAXPed.Caption := IFThen(LAXPed.Caption = 'Romaneio','Pedido','Romaneio');
  LAXPed.Refresh;
end;

procedure Tfrmven_nfe.CALCULA_NF;
begin
  try
    Tag := 1;

    if ((cbcnat.Text = '6102') and ((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (PEUF.Text <> RECParametros.UnidadeFederada) and (PEUF.Text <> 'EX')) then
         PESQUISA_NATUREZA('6108','C');

    nfe_001.DisableControls;
    nfe_001.First;
    cli_001.First;

    if (BCalc) and ((IEFinNFe.Text <> '2') and (IEFinNFe.Text <> '3')) then
    begin
      if (oTextToValor(EDTDesc.Text) > 0) or (LATDesc.Tag = 1) then
      begin
        LATDesc.Tag := 0;
        EDTDesc.Tag := nfe_001.RecordCount;
        while not nfe_001.Eof do
        begin
          nfe_001.Edit;
          if LATDesc.Caption = '%' then
          nfe_001NFE_VDESC.Value := RoundTO((nfe_001NFE_VPROD.AsFloat * oTextToValor(EDTDesc.Text,2))/100,-2) else
          nfe_001NFE_VDESC.Value := RoundTO(oTextToValor(EDTDesc.Text,2)/EDTDesc.Tag,-2);
          nfe_001.Post;
          nfe_001.Next;
        end;
        oRTransact(TSheild);
      end;

      if IEFinNFe.Text <> '2' then
      while not nfe_001.Eof do
      begin
        nfe_001.Edit;
        if nfe_001NFE_CFOP.AsString <> tab_natNAT_CNAT.AsString then
        with tab_nat do
        begin
          SQL.Clear;
          SQL.Add('SELECT * FROM TAB_NAT');
          SQL.Add('WHERE  NAT_CNAT = '''+nfe_001NFE_CFOP.AsString+'''');
          Open;
        end;

        if nfe_001NFE_FLAG.AsString <> '1' then
        begin
          nfe_001NFE_VBC.Value            := 0;
          nfe_001NFE_VICMS.Value          := 0;
          nfe_001NFE_VBCIPI.Value         := 0;
          nfe_001NFE_VIPI.Value           := 0;
          nfe_001NFE_VBCPIS.Value         := 0;
          nfe_001NFE_VPIS.Value           := 0;
          nfe_001NFE_VBCOFINS.Value       := 0;
          nfe_001NFE_VCOFINS.Value        := 0;
          nfe_001NFE_PCREDSN.Value        := 0;
          nfe_001NFE_VCREDICMSSN.Value    := 0;
          nfe_001NFE_VICMSST.Value        := 0;
          nfe_001NFE_PICMSST.Value        := 0;
          nfe_001NFE_VBCST.Value          := 0;
          nfe_001NFE_MVAST.Value          := 0;
          nfe_001NFE_MODBCST.Value        := '';
          nfe_001NFE_vBCUFDest.Value      := 0;
          nfe_001NFE_vBCFCPUFDest.Value   := 0;
          nfe_001NFE_pFCPUFDest.Value     := 0;
          nfe_001NFE_pICMSUFDest.Value    := 0;
          nfe_001NFE_pICMSInter.Value     := 0;
          nfe_001NFE_pICMSInterPart.Value := 0;
          nfe_001NFE_vFCPUFDest.Value     := 0;
          nfe_001NFE_vICMSUFDest.Value    := 0;
          nfe_001NFE_vICMSUFRemet.Value   := 0;
          nfe_001NFE_INFADTRIB.Value      := '';

          if nfe_001NFE_INDTOT.AsString = '1' then
          begin
            if (RECParametros.RegimeTributario = '3') or (nfe_001NFE_CST.AsString = '900') then
            begin
              nfe_001NFE_VBC.Value := (nfe_001NFE_VPROD.AsFloat - nfe_001NFE_VDESC.AsFloat);

              if LeftStr(nfe_001NFE_CFOP.AsString,1) <> '3' then
              begin
                nfe_001NFE_VBC.Value      := nfe_001NFE_VBC.AsFloat + nfe_001NFE_VFRETE.AsFloat + nfe_001NFE_VSEG.AsFloat;
                nfe_001NFE_VBCIPI.Value   := IFThen(nfe_001NFE_PIPI.AsFloat > 0,nfe_001NFE_VBC.AsFloat,0);
                nfe_001NFE_VBCPIS.Value   := nfe_001NFE_VBC.AsFloat;
                nfe_001NFE_VBCOFINS.Value := nfe_001NFE_VBC.AsFloat;
              end else
              begin
                nfe_001NFE_VBCIPI.Value   := IFThen(nfe_001NFE_PIPI.AsFloat > 0,nfe_001NFE_VBCIMP.AsFloat,0);
                nfe_001NFE_VBCPIS.Value   := nfe_001NFE_VBCIMP.AsFloat;
                nfe_001NFE_VBCOFINS.Value := nfe_001NFE_VBCIMP.AsFloat;
              end;

              nfe_001NFE_VIPI.Value    := RoundTO((nfe_001NFE_VBCIPI.AsFloat   * nfe_001NFE_PIPI.AsFloat)    / 100,-2);
              nfe_001NFE_VPIS.Value    := RoundTO((nfe_001NFE_VBCPIS.AsFloat   * nfe_001NFE_PPIS.AsFloat)    / 100,-2);
              nfe_001NFE_VCOFINS.Value := RoundTO((nfe_001NFE_VBCOFINS.AsFloat * nfe_001NFE_PCOFINS.AsFloat) / 100,-2);

              if LeftStr(nfe_001NFE_CFOP.AsString,1) = '3' then
              begin
                nfe_001NFE_VBC.Value := RoundTO((nfe_001NFE_VBC.AsFloat + nfe_001NFE_VIPI.AsFloat + nfe_001NFE_VPIS.AsFloat + nfe_001NFE_VCOFINS.AsFloat) / 0.82,-2);
                nfe_001NFE_VNF.Value := nfe_001NFE_VBC.AsFloat;
              end else
              if IEindFinal.Text = '1' then
              nfe_001NFE_VBC.Value := nfe_001NFE_VBC.AsFloat + nfe_001NFE_VIPI.AsFloat;

              if (nfe_001NFE_CFOP.AsString = '5101')            and (edcnpj.Text <> '') and
                 (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5402') and
                 (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5404') and (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5405') and
                 (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5406') and
                 (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5501') and (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5502') and
                 (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5503') and (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5504') and
                 (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5505') and (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5506') and
                 (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5507') and
                 (LeftStr(nfe_001NFE_NCM.AsString,4) <> '5601') and (LeftStr(nfe_001NFE_NCM.AsString,4) <> '6309') and
                 (nfe_001NFE_NCM.AsString <> '59011000') then
                 if (LeftStr(nfe_001NFE_NCM.AsString,2) = '50')     or (LeftStr(nfe_001NFE_NCM.AsString,2) = '51') or
                    (LeftStr(nfe_001NFE_NCM.AsString,2) = '52')     or (LeftStr(nfe_001NFE_NCM.AsString,2) = '53') or
                    (LeftStr(nfe_001NFE_NCM.AsString,2) = '54')     or (LeftStr(nfe_001NFE_NCM.AsString,2) = '55') or
                    (LeftStr(nfe_001NFE_NCM.AsString,2) = '56')     or (LeftStr(nfe_001NFE_NCM.AsString,2) = '57') or
                    (LeftStr(nfe_001NFE_NCM.AsString,2) = '58')     or
                    (LeftStr(nfe_001NFE_NCM.AsString,2) = '60')     or (LeftStr(nfe_001NFE_NCM.AsString,2) = '61') or
                    (LeftStr(nfe_001NFE_NCM.AsString,2) = '62')     or (LeftStr(nfe_001NFE_NCM.AsString,2) = '63') or
                    (LeftStr(nfe_001NFE_NCM.AsString,4) = '5901')   or
                    (LeftStr(nfe_001NFE_NCM.AsString,5) = '96071')  or
                    (LeftStr(nfe_001NFE_NCM.AsString,6) = '560130') or
                    (copy(nfe_001NFE_NCM.AsString,1,7) = '6505001') or
                    (copy(nfe_001NFE_NCM.AsString,1,7) = '6505002') or
                    (copy(nfe_001NFE_NCM.AsString,1,7) = '6505003') or
                    (nfe_001NFE_NCM.AsString = '94049000') then
                    begin
                      nfe_001NFE_CST.Value    := '20';
                      nfe_001NFE_PREDBC.Value := 33.33;
                      nfe_001NFE_VBC.Value    := nfe_001NFE_VBC.AsFloat - ((nfe_001NFE_VBC.AsFloat * nfe_001NFE_PREDBC.AsFloat)/100);
                    end;

              { ICMS }
              nfe_001NFE_VICMS.Value := RoundTO((nfe_001NFE_VBC.AsFloat * nfe_001NFE_PICMS.AsFloat) / 100,-2);

              { REDUÇÃO DE PIS / COFINS }
              if nfe_001NFE_CST.AsString = '20' then
              begin
                { PIS }
                nfe_001NFE_VBCPIS.Value := nfe_001NFE_VPROD.AsFloat - nfe_001NFE_VDESC.AsFloat - nfe_001NFE_VICMS.AsFloat;
                nfe_001NFE_VPIS.Value   := RoundTO((nfe_001NFE_VBCPIS.AsFloat * nfe_001NFE_PPIS.AsFloat) / 100,-2);

                { COFINS }
                nfe_001NFE_VBCOFINS.Value := nfe_001NFE_VPROD.AsFloat - nfe_001NFE_VDESC.AsFloat - nfe_001NFE_VICMS.AsFloat;
                nfe_001NFE_VCOFINS.Value  := RoundTO((nfe_001NFE_VBCOFINS.AsFloat * nfe_001NFE_PCOFINS.AsFloat) / 100,-2);
              end else
              nfe_001NFE_PREDBC.Value := 0;

              if nfe_001NFE_CST.AsString = '90' then
              begin
                nfe_001NFE_VBC.Value   := 0;
                nfe_001NFE_PICMS.Value := 0;
                nfe_001NFE_VICMS.Value := 0;
              end;

              if (nfe_001NFE_PICMS.AsFloat = 4)  and (nfe_001NFE_VI04.AsFloat > 0) and (nfe_001NFE_CFOP.AsString <> '6108') then
              begin
                nfe_001NFE_VBCST.Value := nfe_001NFE_VPROD.AsFloat + nfe_001NFE_VIPI.AsFloat    + nfe_001NFE_VFRETE.AsFloat + nfe_001NFE_VSEG.AsFloat;
                nfe_001NFE_VBCST.Value := nfe_001NFE_VBCST.AsFloat + ((nfe_001NFE_VBCST.AsFloat * nfe_001NFE_VI04.AsFloat)/100);
              end else
              if (nfe_001NFE_PICMS.AsFloat = 7) and (nfe_001NFE_VI07.AsFloat > 0) and (nfe_001NFE_CFOP.AsString <> '6108') then
              begin
                nfe_001NFE_VBCST.Value := nfe_001NFE_VPROD.AsFloat + nfe_001NFE_VIPI.AsFloat    + nfe_001NFE_VFRETE.AsFloat + nfe_001NFE_VSEG.AsFloat;
                nfe_001NFE_VBCST.Value := nfe_001NFE_VBCST.AsFloat + ((nfe_001NFE_VBCST.AsFloat * nfe_001NFE_VI07.AsFloat)/100);
              end else
              if (nfe_001NFE_PICMS.AsFloat = 12) and (nfe_001NFE_VI12.AsFloat > 0) and (nfe_001NFE_CFOP.AsString <> '6108') then
              begin
                nfe_001NFE_VBCST.Value := nfe_001NFE_VPROD.AsFloat + nfe_001NFE_VIPI.AsFloat    + nfe_001NFE_VFRETE.AsFloat + nfe_001NFE_VSEG.AsFloat;
                nfe_001NFE_VBCST.Value := nfe_001NFE_VBCST.AsFloat + ((nfe_001NFE_VBCST.AsFloat * nfe_001NFE_VI12.AsFloat)/100);
              end else
              if (nfe_001NFE_PICMS.AsFloat = 18) and (nfe_001NFE_VI18.AsFloat > 0) and (nfe_001NFE_CFOP.AsString <> '6108') then
              begin
                nfe_001NFE_VBCST.Value := nfe_001NFE_VPROD.AsFloat + nfe_001NFE_VIPI.AsFloat    + nfe_001NFE_VFRETE.AsFloat + nfe_001NFE_VSEG.AsFloat;
                nfe_001NFE_VBCST.Value := nfe_001NFE_VBCST.AsFloat + ((nfe_001NFE_VBCST.AsFloat * nfe_001NFE_VI18.AsFloat)/100);
              end;

              if nfe_001NFE_VBCST.AsFloat > 0 then
              begin
                nfe_001NFE_CFOP.Value    := IFThen(IETPNF.Text = '0','2411',
                                            IFThen(PEUF.Text   = RECParametros.UnidadeFederada,'5403','6404'));
                nfe_001NFE_pICMSST.Value := tab_alqALQ_ICMI.AsFloat + tab_alqALQ_FCP.AsFloat;
                nfe_001NFE_VICMSST.Value := ((nfe_001NFE_VBCST.AsFloat*nfe_001NFE_pICMSST.AsFloat)/100) - nfe_001NFE_VICMS.AsFloat;
                nfe_001NFE_MVAST.Value   := 50;
                nfe_001NFE_CST.Value     := '10';
                nfe_001NFE_MODBCST.Value := '4';
              end;

              if (nfe_001NFE_ORIG.AsString = '0') and (EDISUF.Text <> '') then
              begin
                nfe_001NFE_CFOP.Value     := '6110';
                nfe_001NFE_VBCPIS.Value   := 0;
                nfe_001NFE_VPIS.Value     := 0;
                nfe_001NFE_PPIS.Value     := 0;
                nfe_001NFE_VBCOFINS.Value := 0;
                nfe_001NFE_VCOFINS.Value  := 0;
                nfe_001NFE_PCOFINS.Value  := 0;
                nfe_001NFE_VNF.Value      := nfe_001NFE_VPROD.AsFloat;
                nfe_001NFE_VUNCOM.Value   := nfe_001NFE_VUNCOM.AsFloat + ((nfe_001NFE_VUNCOM.AsFloat*7)/100);
                nfe_001NFE_VUNCOM.AsString:= oTextToValor(nfe_001NFE_VUNCOM.AsString,9);
                nfe_001NFE_VDESC.Value    := nfe_001NFE_VPROD.AsFloat - nfe_001NFE_VNF.AsFloat;
              end;

              if (nfe_001NFE_CST.AsString = '40') or (nfe_001NFE_CST.AsString = '41') or (nfe_001NFE_CST.AsString = '50') then
              begin
                nfe_001NFE_VBCIPI.Value   := 0;
                nfe_001NFE_VIPI.Value     := 0;
                nfe_001NFE_PIPI.Value     := 0;
                nfe_001NFE_VBCPIS.Value   := 0;
                nfe_001NFE_VPIS.Value     := 0;
                nfe_001NFE_PPIS.Value     := 0;
                nfe_001NFE_VBCOFINS.Value := 0;
                nfe_001NFE_VCOFINS.Value  := 0;
                nfe_001NFE_PCOFINS.Value  := 0;
                nfe_001NFE_VBC.Value      := 0;
                nfe_001NFE_VICMS.Value    := 0;
                nfe_001NFE_PICMS.Value    := 0;
              end;

              if nfe_001NFE_CST.AsString = '51' then
              begin
                nfe_001NFE_VBC.Value      := 0;
                nfe_001NFE_VICMS.Value    := 0;
                nfe_001NFE_PICMS.Value    := 0;
                nfe_001NFE_PDIF.Value     := 100.00;
                nfe_001NFE_VICMSOP.Value  := 0;
                nfe_001NFE_VICMSDIF.Value := 0;
                { Ricardo - Calculo para diferimento <> 100% - Criar/Colocar no grid o campo PDIF - Fazer o mesmo para Cadastro de Produtos
                  nfe_001NFE_PDIF.Value     := 33.33;
                  nfe_001NFE_VICMSOP.Value  := oTextToValor((nfe_001NFE_VBC.AsFloat *nfe_001NFE_PICMS.AsFloat)   / 100);
                  nfe_001NFE_VICMSDIF.Value := oTextToValor((nfe_001NFE_PDIF.AsFloat*nfe_001NFE_VICMSOP.AsFloat) / 100);
                  nfe_001NFE_VICMS.Value    := nfe_001NFE_VICMS.AsFloat - nfe_001NFE_VICMSDIF.AsFloat; }
              end;

              if (((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (PEUF.Text <> RECParametros.UnidadeFederada) and (PEUF.Text <> 'EX')) then
              begin
                nfe_001NFE_vBCUFDest.Value      := nfe_001NFE_VBC.AsFloat;
                nfe_001NFE_vBCFCPUFDest.Value   := IFThen(tab_alqALQ_FCP.AsFloat = 0,0,nfe_001NFE_VBC.AsFloat);
                nfe_001NFE_pFCPUFDest.Value     := tab_alqALQ_FCP.AsFloat;
                nfe_001NFE_pICMSUFDest.Value    := tab_alqALQ_ICMI.AsFloat + tab_alqALQ_FCP.AsFloat;
                nfe_001NFE_pICMSInter.Value     := nfe_001NFE_PICMS.AsInteger;
                nfe_001NFE_pICMSInterPart.Value := 100;
                nfe_001NFE_vFCPUFDest.Value     := IFThen(tab_alqALQ_FCP.AsFloat = 0,0,(nfe_001NFE_vBCFCPUFDest.AsFloat*nfe_001NFE_pFCPUFDest.AsFloat)/100);
                nfe_001NFE_vICMSUFDest.Value    := RoundTo((nfe_001NFE_vBCUFDest.AsFloat * (nfe_001NFE_pICMSUFDest.AsFloat - nfe_001NFE_pICMSInter.AsFloat)) / 100,-2);
                nfe_001NFE_vICMSUFRemet.Value   := 0;
                nfe_001NFE_INFADTRIB.Value      := Trim('% Partilha UF Dest.: '     +FormatFloat(',##,0.00',nfe_001NFE_pICMSInterPart.AsFloat)+' - '+
                                                        '% ICMS Inter. UF Dest.: '  +FormatFloat(',##,0.00',nfe_001NFE_pICMSUFDest.AsFloat)   +' - '+
                                                        'Vlr.ICMS Inter. UF Dest.: '+FormatFloat(',##,0.00',nfe_001NFE_vICMSUFDest.AsFloat)   +' - '+
                                                        '% ICMS Part. UF Remet.: '  +FormatFloat(',##,0.00',0.00)                             +' - '+
                                                        'Vlr.ICMS Part. UF Remet.: '+FormatFloat(',##,0.00',nfe_001NFE_vICMSUFRemet.AsFloat));
              end;
            end;

            { NRT - NOVA REFORMA TRIBUTÁRIA }
            { CBENEF }
            NFE_001NFE_CBENEF.Value := TAB_NATCBENEF.AsString;
            
            { IS }
            //NFE_001NFE_CSTIS_UB02.Value        := TAB_NATCSTIS.AsString;
            //NFE_001NFE_CCLASSTRIBIS_UB03.Value := TAB_NATCCLASSTRIBIS.AsString;

            { IBS CBS }
            NFE_001NFE_IBSCBS_CSTIS.Value        := TAB_NATCSTCBS.AsString;
            NFE_001NFE_IBSCBS_CCLASSTRIBIS.Value := TAB_NATCCLASSTRIBCBS.AsString;

            if NFE_001NFE_IBSCBS_CSTIS.AsString = '000' then
            begin
              NFE_001NFE_IBSCBS_VBCIBSCBS.Value :=

              NFE_001NFE_VPROD.AsFloat      + NFE_001NFE_VSERV.AsFloat     + NFE_001NFE_VFRETE.AsFloat       + NFE_001NFE_VSEG.AsFloat  + NFE_001NFE_VOUTRO.AsFloat      + NFE_001NFE_VII.AsFloat  -
              NFE_001NFE_VDESC.AsFloat      - NFE_001NFE_VPIS.AsFloat      - NFE_001NFE_VCOFINS.AsFloat      - NFE_001NFE_VICMS.AsFloat - NFE_001NFE_VICMSUFDEST.AsFloat - NFE_001NFE_VFCP.AsFloat -
              NFE_001NFE_VFCPUFDEST.AsFloat - NFE_001NFE_VICMSMONO.AsFloat - NFE_001NFE_ISSQN_VISSQN.AsFloat +
              NFE_001NFE_IS_VIS.AsFloat;

              { REDUÇÃO DE PIS / COFINS }
              if nfe_001NFE_CST.AsString = '20' then
              NFE_001NFE_IBSCBS_VBCIBSCBS.Value := NFE_001NFE_VBCPIS.AsFloat - NFE_001NFE_VPIS.AsFloat - NFE_001NFE_VCOFINS.AsFloat;

              { CBS }
              NFE_001NFE_CBS_VBCCBS.Value := NFE_001NFE_IBSCBS_VBCIBSCBS.AsFloat;
              NFE_001NFE_CBS_PCBS.Value   := TAB_NATPCBS.AsFloat;
              NFE_001NFE_CBS_VCBS.Value   := RoundTO((NFE_001NFE_CBS_PCBS.AsFloat / 100) * NFE_001NFE_CBS_VBCCBS.AsFloat,-2);

              { IBS }
              NFE_001NFE_IBSUF_VBCIBSUF.Value := NFE_001NFE_IBSCBS_VBCIBSCBS.AsFloat;
              NFE_001NFE_IBSUF_PIBSUF.Value   := TAB_NATPIS.AsCurrency;
              NFE_001NFE_IBSUF_VIBSUF.Value   := RoundTo((NFE_001NFE_IBSUF_PIBSUF.AsFloat / 100) * NFE_001NFE_IBSCBS_VBCIBSCBS.AsFloat,-2);
            end else
            begin
              NFE_001NFE_IBSCBS_VBCIBSCBS.Value := 0;
              NFE_001NFE_CBS_VBCCBS.Value       := 0;
              NFE_001NFE_CBS_VCBS.Value         := 0;
              NFE_001NFE_IBSUF_VBCIBSUF.Value   := 0;
              NFE_001NFE_IBSUF_VIBSUF.Value     := 0;
              NFE_001NFE_VNFTOT.Value           := 0;
            end;

            { Ricardo - Como a planilha do renato, já está embutido o valor do frete, tive q isolar o VNF para importações }
            if LeftStr(nfe_001NFE_CFOP.AsString,1) <> '3' then
            nfe_001NFE_VNF.Value := (nfe_001NFE_VPROD.AsFloat  - nfe_001NFE_VDESC.AsFloat  - nfe_001NFE_VICMSDeson.AsFloat) +
                                    (nfe_001NFE_VIPI.AsFloat   + nfe_001NFE_VFRETE.AsFloat + nfe_001NFE_VSEG.AsFloat +
                                     nfe_001NFE_VOUTRO.AsFloat + nfe_001NFE_VICMSST.AsFloat);

            if RECParametros.RegimeTributario = '1' then
            begin
              nfe_001NFE_VNF.Value       := nfe_001NFE_VNF.AsFloat;
              nfe_001NFE_CST.Value       := tab_natNAT_CSTS.AsString;
              nfe_001NFE_CSTIPI.Value    := '99';
              nfe_001NFE_VBCIPI.Value    := 0;
              nfe_001NFE_PIPI.Value      := 0;
              nfe_001NFE_VIPI.Value      := 0;
              nfe_001NFE_VBCPIS.Value    := 0;
              nfe_001NFE_CSTPIS.Value    := '49';
              nfe_001NFE_PPIS.Value      := 0;
              nfe_001NFE_VPIS.Value      := 0;
              nfe_001NFE_VBCOFINS.Value  := 0;
              nfe_001NFE_CSTCOFINS.Value := '49';
              nfe_001NFE_PCOFINS.Value   := 0;
              nfe_001NFE_VCOFINS.Value   := 0;

              if (RECParametros.PCreditoICMS > 0) and (IECredICMS.Text = '1') then
                 if (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5101') or (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5102') or
                    (LeftStr(nfe_001NFE_CFOP.AsString,4) = '6101') or (LeftStr(nfe_001NFE_CFOP.AsString,4) = '6102') or
                    (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5124') or (LeftStr(nfe_001NFE_CFOP.AsString,4) = '6124') or
                    (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5125') or (LeftStr(nfe_001NFE_CFOP.AsString,4) = '5925') or
                    (LeftStr(nfe_001NFE_CFOP.AsString,4) = '6107') or (LeftStr(nfe_001NFE_CFOP.AsString,4) = '6108') then
                 begin
                   nfe_001NFE_CST.Value         := tab_natNAT_CSTA.AsString;
                   nfe_001NFE_PCREDSN.Value     := RECParametros.PCreditoICMS;
                   nfe_001NFE_VCREDICMSSN.Value := RoundTO((nfe_001NFE_PCREDSN.AsFloat * nfe_001NFE_VNF.AsFloat) / 100,-2);
                 end;

                 if LeftStr(nfe_001NFE_CFOP.AsString,1) = '3' then nfe_001NFE_CST.Value := '900';
            end;
          end;
        end;

        if nfe_001NFE_VBC.AsFloat  = 0 then
           nfe_001NFE_PICMS.Value := 0;
           
        nfe_001.Post;
        nfe_001.Next;
      end;
    end;
  finally
    Tag := 0;
    nfe_001.EnableControls;
    oRTransact(TSheild);

    with Consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT SUM(NFE_QCOM)    ,SUM(NFE_RCOM)   ,COUNT(*)        ,SUM(NFE_PSBR)  ,SUM(NFE_PSLQ),');
      SQL.Add('       SUM(NFE_VPROD)   ,SUM(NFE_VDESC)  ,SUM(NFE_VBC)    ,SUM(NFE_VICMS) ,SUM(NFE_VCREDICMSSN),SUM(NFE_VICMSDESON),');
      SQL.Add('       SUM(NFE_VBCST)   ,SUM(NFE_VICMSST),');
      SQL.Add('       SUM(NFE_VIPI)    ,SUM(NFE_VPIS)   ,SUM(NFE_VCOFINS),SUM(NFE_VIIIMP)     ,SUM(NFE_VOUTRO),');
      SQL.Add('       SUM(NFE_VTOTTRIB),SUM(NFE_VFRETE) ,SUM(NFE_VSEG)   ,SUM(NFE_vICMSUFDest),SUM(NFE_VNF),SUM(NFE_vFCPUFDest),');

      { NRT - NOVA REFORMA TRIBUTÁRIA }
      SQL.Add('       SUM(NFE_IBSCBS_VBCIBSCBS),');
      SQL.Add('       SUM(NFE_CBS_VBCCBS),');
      SQL.Add('       SUM(NFE_CBS_VCBS),');
      SQL.Add('       SUM(NFE_IBSUF_VBCIBSUF),');
      SQL.Add('       SUM(NFE_IBSUF_VIBSUF),');
      SQL.Add('       SUM(NFE_VNFTOT)');

      SQL.Add('FROM NFE_ITE');
      Open;

      { Volume }
      EDTRCom.Tag  := IFThen(not oEmpty(Fields[02].AsInteger),Fields[02].AsInteger,1);
      EDTQCom.Text := FormatFloat('#,0.00',Fields[00].AsFloat);
      EDTRCom.Text := FormatFloat('0'     ,Fields[01].AsInteger);

      if BCalc then
      begin
        if Fields[01].AsInteger <> Fields[02].AsInteger then
        if EDQVol.Tag = 0 then EDQVol.Text := FormatFloat('0',Fields[01].AsInteger) else
        if EDQVol.Tag = 0 then EDQVol.Text := FormatFloat('0',Fields[02].AsInteger);
        if EDEsp.Tag  = 0 then EDEsp.Text  := RECParametros.Volume;

        { Peso }
        if CEPesoB.Tag = 0 then CEPesoB.Text := FormatFloat('#,0.000',Fields[03].AsFloat);
        if CEPesoL.Tag = 0 then CEPesoL.Text := FormatFloat('#,0.000',Fields[04].AsFloat);

        edvprod.Text       := FormatFloat('#,0.00' ,Fields[05].AsFloat);
        edvdesc.Text       := FormatFloat('#,0.00' ,Fields[06].AsFloat);

        edvbc.Text         := FormatFloat('#,0.00',Fields[07].AsFloat);
        edvicms.Text       := FormatFloat('#,0.00',Fields[08].AsFloat);
        edvcredicmssn.Text := FormatFloat('#,0.00',Fields[09].AsFloat);
        edvicmsdeson.Text  := FormatFloat('#,0.00',Fields[10].AsFloat);

        edvbcst.Text       := FormatFloat('#,0.00',Fields[11].AsFloat);
        edvst.Text         := FormatFloat('#,0.00',Fields[12].AsFloat);

        edvipi.Text        := FormatFloat('#,0.00',Fields[13].AsFloat);
        edvpis.Text        := FormatFloat('#,0.00',Fields[14].AsFloat);
        edvcofins.Text     := FormatFloat('#,0.00',Fields[15].AsFloat);
        edvII.Text         := FormatFloat('#,0.00',Fields[16].AsFloat);
        edvoutro.Text      := FormatFloat('#,0.00',Fields[17].AsFloat);
        edvtottrib.Text    := FormatFloat('#,0.00',Fields[18].AsFloat);
        CEVFrete.Value     := Fields[19].AsFloat;
        CEVSeg.Value       := Fields[20].AsFloat;
        EDvICMSUFDest.Text := FormatFloat('#,0.00',Fields[21].AsFloat);
        edvnf.Text         := FormatFloat('#,0.00',Fields[22].AsFloat);
        edvFCPUFDest.Text  := FormatFloat('#,0.00',Fields[23].AsFloat);

        { NRT - NOVA REFORMA TRIBUTÁRIA }
        EDNFE_IBSCBS_VBCIBSCBS.Text := FormatFloat('#,0.00',Fields[24].AsFloat);
        EDNFE_CBS_VBCCBS.Text       := FormatFloat('#,0.00',Fields[25].AsFloat);
        EDNFE_CBS_VCBS.Text         := FormatFloat('#,0.00',Fields[26].AsFloat);
        EDNFE_IBSUF_VBCIBSUF.Text   := FormatFloat('#,0.00',Fields[27].AsFloat);
        EDNFE_IBSUF_VIBSUF.Text     := FormatFloat('#,0.00',Fields[28].AsFloat);
        EDNFE_VNFTOT.Text           := FormatFloat('#,0.00',Fields[29].AsFloat);

        SQL.Clear;
        SQL.Add('SELECT SUM(NFE_VDUP) FROM NFE_DUP');
        Open;
        if (oTextToValor(edvnf.Text) <> fields[0].AsFloat) and (cbdupl.Text = 'SIM') then
        DUPLICATAS;
      end;
    end;

    ATUALIZA_MENSAGENS;
  end;
end;

procedure Tfrmven_nfe.CALCULA_MAO_OBRA;
var
  AITEMPED: Integer;
  AVPRC_COM,
  ATCDE,
  APICMS: Double;
begin
  AITEMPED := 0;

  { Excluindo itens 2 e 3 - MÃO DE OBRA + TECIDO }
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_ITE');
    SQL.Add('WHERE  NFE_REPR = ''M''');
    ExecQuery;
  end;
  oRTransact(TSheild);

  { CFOP }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CFOP,CST_ICMS,IIF(TPNF = 1,CST_IPI_SAI,CST_IPI_ENT) AS CST_IPI,CST_PIS,PPIS,CST_COFINS,PCOFINS');
    SQL.Add('FROM   TAB_NAT');
    SQL.Add('WHERE  CFOP = ''' + LEFTSTR(CBCNAT.Text,4) + '''');
    ExecQuery;
  end;

  nfe_001.First;
  while not nfe_001.Eof do
  begin
    AITEMPED := AITEMPED + 1;

    { ITEM - MÃO DE OBRA }
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE NFE_ITE');
      SQL.Add('SET    NFE_ITEMPED = ''' + INTTOSTR(AITEMPED) + '''');
      SQL.Add('WHERE  ID          = ''' + NFE_001ID.AsString + '''');
      ExecQuery;
    end;

    { % ICMS }
    APICMS := IFThen((nfe_001NFE_CST.AsString <> '900') and (RECParametros.RegimeTributario = '1'),0,
              IFThen(PEUF.Text = 'EX',RECParametros.PICMS,
              IFThen((Pos(nfe_001NFE_ORIG.AsString,'123') > 0) and (PEUF.Text <> RECParametros.UnidadeFederada),4,tab_alqALQ_ICMS.AsFloat)));

    { ITEM 2 - TINTA APLICADA }
    AITEMPED  := AITEMPED + 1;
    AVPRC_COM := nfe_001NFE_PREC.AsFloat * 0.20;
    ATCDE     := nfe_001NFE_QCOM.AsFloat * AVPRC_COM;

    { TINTAS DIVERSAS }
    with SQLPKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT IDCP,SKU,CEAN,NCM,PIPI,CEST,ORIG,PRO_STAV,');
      SQL.Add('       DECP,DCCP,');
      SQL.Add('       UCOM,PRO_PESO,PRO_PSCN,PRO_METR,PRO_REND');

      SQL.Add('FROM   CAD_PRO');
      SQL.Add('WHERE  SKU = ''919929''');
      ExecQuery;
    end;

    with SQLSPKEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO NFE_ITE');

      SQL.Add('(ID,');
      SQL.Add('NFE_ITEMPED,NFE_PREC   ,NFE_VUNCOM,NFE_VPROD,NFE_VNF ,NFE_REPR,');
      SQL.Add('NFE_IPRO   ,NFE_CEAN   ,NFE_CPROD ,NFE_XPROD,NFE_COMP,NFE_STAV,');
      SQL.Add('NFE_NCM    ,NFE_PIPI   ,NFE_CEST  ,NFE_ORIG ,');
      SQL.Add('NFE_UCOM   ,NFE_UTRIB  ,');
      SQL.Add('NFE_PESO   ,NFE_PSCN   ,NFE_METR ,NFE_REND,');
      SQL.Add('NFE_QCOM   ,NFE_RCOM   ,');
      SQL.Add('NFE_VDESC  ,NFE_VSEG   ,NFE_VFRETE,');
      SQL.Add('NFE_NFCI   ,NFE_CENQ   ,');
      SQL.Add('NFE_CFOP   ,NFE_INDTOT ,NFE_CST,NFE_PICMS,NFE_CSTIPI,NFE_CSTPIS,NFE_PPIS,NFE_CSTCOFINS,NFE_PCOFINS,');
      SQL.Add('NFE_MODBC  ,NFE_MODBCST');
      SQL.Add(')');

      SQL.Add('VALUES');
      SQL.Add('(0,');

      { Itens }
      SQL.Add('''' + INTTOSTR(AITEMPED)                      + ''',');
      SQL.Add('''' + oSTRTRAN(FLOATTOSTR(AVPRC_COM),',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(FLOATTOSTR(AVPRC_COM),',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(FLOATTOSTR(ATCDE)    ,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(FLOATTOSTR(ATCDE)    ,',','.') + ''',');
      SQL.Add('''M'',');

      { Produtos }
      SQL.Add('''' + SQLPKConsulta.Current.ByName('IDCP').AsString + ''',');
      SQL.Add('''' + SQLPKConsulta.Current.ByName('CEAN').AsString + ''',');
      SQL.Add('''' + SQLPKConsulta.Current.ByName('SKU' ).AsString + ''',');
      SQL.Add('''' + SQLPKConsulta.Current.ByName('DECP').AsString + ''',');
      SQL.Add('''' + SQLPKConsulta.Current.ByName('DCCP').AsString + ''',');

      SQL.Add('''' + SQLPKConsulta.Current.ByName('PRO_STAV').AsString + ''',');

      { NCM }
      SQL.Add('''' + SQLPKConsulta.Current.ByName('NCM').AsString                    + ''',');
      SQL.Add('''' + oSTRTRAN(SQLPKConsulta.Current.ByName('PIPI').AsString,',','.') + ''',');

      SQL.Add('''' + SQLPKConsulta.Current.ByName('CEST').AsString + ''',');
      SQL.Add('''' + SQLPKConsulta.Current.ByName('ORIG').AsString + ''',');

      { Unidades }
      SQL.Add('''' + SQLPKConsulta.Current.ByName('UCOM').AsString + ''','); { Comercial  }
      SQL.Add('''' + SQLPKConsulta.Current.ByName('UCOM').AsString + ''','); { Tributária }

      SQL.Add('''' + oSTRTRAN(SQLPKConsulta.Current.ByName('PRO_PESO').AsString,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(SQLPKConsulta.Current.ByName('PRO_PSCN').AsString,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(SQLPKConsulta.Current.ByName('PRO_METR').AsString,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(SQLPKConsulta.Current.ByName('PRO_REND').AsString,',','.') + ''',');

      { NOTA FISCAL }
      { Pedido }
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_QCOM.AsString  ,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_RCOM.AsString  ,',','.') + ''',');

      SQL.Add('''' + oSTRTRAN(nfe_001NFE_VDESC.AsString ,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_VSEG.AsString  ,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_VFRETE.AsString,',','.') + ''',');

      SQL.Add('''' + nfe_001NFE_NFCI.AsString + ''',');
      SQL.Add('''' + nfe_001NFE_CENQ.AsString + ''',');

      { CFOP }
      SQL.Add('''' + SQLConsulta.Current.ByName('CFOP').AsString + ''',');
      SQL.Add('''' + INTTOSTR(nfe_001NFE_INDTOT.AsInteger)       + ''',');

      { CST }
      SQL.Add('''00'',');
      SQL.Add('''' + OSTRTRAN(FLOATTOSTR(APICMS),',','.') + ''',');

      SQL.Add('''' + SQLConsulta.Current.ByName('CST_IPI').AsString                   + ''',');
      SQL.Add('''' + SQLConsulta.Current.ByName('CST_PIS').AsString                   + ''',');
      SQL.Add('''' + oSTRTRAN(SQLConsulta.Current.ByName('PPIS').AsString   ,',','.') + ''',');

      SQL.Add('''' + SQLConsulta.Current.ByName('CST_COFINS').AsString                + ''',');
      SQL.Add('''' + oSTRTRAN(SQLConsulta.Current.ByName('PCOFINS').AsString,',','.') + ''',');

      { BASE CALCULO }
      SQL.Add('''' + nfe_001NFE_MODBC.AsString   + ''',');
      SQL.Add('''' + nfe_001NFE_MODBCST.AsString + '''' );
      SQL.Add(')');

      ExecQuery;
    end;

    { ITEM 3 - TECIDO BENEFICIADO }
    AITEMPED  := AITEMPED + 1;
    AVPRC_COM := nfe_001NFE_PREC.AsFloat * 0.80;
    ATCDE     := nfe_001NFE_QCOM.AsFloat * AVPRC_COM;

    with SQLSPKEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO NFE_ITE');

      SQL.Add('(ID,');
      SQL.Add('NFE_ITEMPED,NFE_PREC   ,NFE_VUNCOM,NFE_VPROD,NFE_VNF ,NFE_REPR,');
      SQL.Add('NFE_IPRO   ,NFE_CEAN   ,NFE_CPROD ,NFE_XPROD,NFE_COMP,NFE_STAV,');
      SQL.Add('NFE_NCM    ,NFE_PIPI   ,NFE_CEST  ,NFE_ORIG ,');
      SQL.Add('NFE_UCOM   ,NFE_UTRIB  ,');
      SQL.Add('NFE_PESO   ,NFE_PSCN   ,NFE_METR ,NFE_REND,');
      SQL.Add('NFE_QCOM   ,NFE_RCOM   ,');
      SQL.Add('NFE_VDESC  ,NFE_VSEG   ,NFE_VFRETE,');
      SQL.Add('NFE_NFCI   ,NFE_CENQ   ,');
      SQL.Add('NFE_CFOP   ,NFE_INDTOT ,NFE_CST,NFE_PICMS,NFE_CSTIPI,NFE_CSTPIS,NFE_PPIS,NFE_CSTCOFINS,NFE_PCOFINS,');
      SQL.Add('NFE_MODBC  ,NFE_MODBCST');
      SQL.Add(')');

      SQL.Add('VALUES');
      SQL.Add('(0,');

      { Itens }
      SQL.Add('''' + INTTOSTR(AITEMPED)                      + ''',');
      SQL.Add('''' + oSTRTRAN(FLOATTOSTR(AVPRC_COM),',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(FLOATTOSTR(AVPRC_COM),',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(FLOATTOSTR(ATCDE)    ,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(FLOATTOSTR(ATCDE)    ,',','.') + ''',');
      SQL.Add('''M'',');

      { Produtos }
      SQL.Add('''' + nfe_001NFE_IPRO.AsString  + ''',');
      SQL.Add('''' + nfe_001NFE_CEAN.AsString  + ''',');
      SQL.Add('''' + nfe_001NFE_CPROD.AsString + ''',');
      SQL.Add('''' + nfe_001NFE_XPROD.AsString + ''',');
      SQL.Add('''' + nfe_001NFE_COMP.AsString  + ''',');
      SQL.Add('''' + nfe_001NFE_STAV.AsString  + ''',');

      { NCM }
      SQL.Add('''' + nfe_001NFE_NCM.AsString                    + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_PIPI.AsString,',','.') + ''',');
      SQL.Add('''' + nfe_001NFE_CEST.AsString                   + ''',');
      SQL.Add('''' + nfe_001NFE_ORIG.AsString                   + ''',');

      { Unidades }
      SQL.Add('''' + nfe_001NFE_UCOM.AsString + ''','); { Comercial  }
      SQL.Add('''' + nfe_001NFE_UCOM.AsString + ''','); { Tributária }

      SQL.Add('''' + oSTRTRAN(nfe_001NFE_PESO.AsString,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_PSCN.AsString,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_METR.AsString,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_REND.AsString,',','.') + ''',');

      { NOTA FISCAL }
      { Pedido }
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_QCOM.AsString  ,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_RCOM.AsString  ,',','.') + ''',');

      SQL.Add('''' + oSTRTRAN(nfe_001NFE_VDESC.AsString ,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_VSEG.AsString  ,',','.') + ''',');
      SQL.Add('''' + oSTRTRAN(nfe_001NFE_VFRETE.AsString,',','.') + ''',');

      SQL.Add('''' + nfe_001NFE_NFCI.AsString + ''',');
      SQL.Add('''' + nfe_001NFE_CENQ.AsString + ''',');

      { CFOP }
      SQL.Add('''' + SQLConsulta.Current.ByName('CFOP').AsString + ''',');
      SQL.Add('''' + INTTOSTR(nfe_001NFE_INDTOT.AsInteger)       + ''',');

      { CST }
      SQL.Add('''' + IFThen(IERegime.Text =  '1','00',SQLConsulta.Current.ByName('CST_ICMS').AsString) + ''',');
      SQL.Add('''' + IFThen(IERegime.Text <> '1','00',OSTRTRAN(FLOATTOSTR(APICMS),',','.'))            + ''',');

      SQL.Add('''' + SQLConsulta.Current.ByName('CST_IPI' ).AsString                  + ''',');
      SQL.Add('''' + SQLConsulta.Current.ByName('CST_PIS').AsString                   + ''',');
      SQL.Add('''' + oSTRTRAN(SQLConsulta.Current.ByName('PPIS').AsString   ,',','.') + ''',');

      SQL.Add('''' + SQLConsulta.Current.ByName('CST_COFINS').AsString                + ''',');
      SQL.Add('''' + oSTRTRAN(SQLConsulta.Current.ByName('PCOFINS').AsString,',','.') + ''',');

      { BASE CALCULO }
      SQL.Add('''' + nfe_001NFE_MODBC.AsString   + ''',');
      SQL.Add('''' + nfe_001NFE_MODBCST.AsString + '''' );
      SQL.Add(')');

      ExecQuery;
    end;

    nfe_001.Next;
  end;

  { ITEM 1 - REMESSA }
  { CFOP }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CFOP,CST_ICMS,CST_ICMS,IIF(TPNF = 1,CST_IPI_SAI,CST_IPI_ENT) AS CST_IPI,CST_PIS,PPIS,CST_COFINS,PCOFINS');
    SQL.Add('FROM   TAB_NAT');
    SQL.Add('WHERE  CFOP = ''' + RIGHTSTR(CBCNAT.Text,4) + '''');
    ExecQuery;
  end;

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE NFE_ITE');
    SQL.Add('SET');

    { CFOP }
    SQL.Add('NFE_CFOP       = ''' + SQLConsulta.Current.ByName('CFOP').AsString + ''',');
    SQL.Add('NFE_INDTOT     = ''' + INTTOSTR(nfe_001NFE_INDTOT.AsInteger)       + ''',');

    { CST }
    SQL.Add('NFE_CST        = ''' + SQLConsulta.Current.ByName('CST_ICMS').AsString + ''',');
    SQL.Add('NFE_CSTIPI     = ''' + SQLConsulta.Current.ByName('CST_IPI' ).AsString + ''',');

    SQL.Add('NFE_CSTPIS     = ''' + SQLConsulta.Current.ByName('CST_PIS').AsString                   + ''',');
    SQL.Add('NFE_PPIS       = ''' + oSTRTRAN(SQLConsulta.Current.ByName('PPIS').AsString   ,',','.') + ''',');

    SQL.Add('NFE_CSTCOFINS  = ''' + SQLConsulta.Current.ByName('CST_COFINS').AsString                + ''',');
    SQL.Add('NFE_PCOFINS    = ''' + oSTRTRAN(SQLConsulta.Current.ByName('PCOFINS').AsString,',','.') + ''',');
    SQL.Add('MAO_OBRA = 1');
    
    SQL.Add('WHERE NFE_REPR = ''R''');
    ExecQuery;
  end;

  oRTransact(TSheild);
  BCalc := True;
end;

procedure Tfrmven_nfe.dtsnfe_001DataChange(Sender: TObject; Field: TField);
begin
  if nfe_001.State = dsBrowse then
  begin
    DBGNFENFE_VDESC.Visible  := (nfe_001NFE_VDESC.AsFloat  > 0);
    DBGNFENFE_PREDBC.Visible := (nfe_001NFE_PREDBC.AsFloat > 0);
  end;  
end;

procedure Tfrmven_nfe.dbgcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if cli_001.State in [dsInsert,dsEdit] then
                 begin
                   if DBGCLI.FocusedColumn >= 2 then
                   begin
                     cli_001.Next;
                     if cli_001.Eof then
                     cli_001.Append;
                     DBGCLI.FocusedColumn := 0      ;
                   end;
                 end;
               end;
  end;               
end;

end.
