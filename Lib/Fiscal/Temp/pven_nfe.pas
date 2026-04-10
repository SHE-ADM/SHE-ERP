unit pven_nfe;

interface

uses
  oPrincipal, StrInt, StrIntImp,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  ImgList, dxCntner, dxEditor, dxEdLib, StrUtils,
  StdCtrls, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxPageControl, IBDatabase, DB, IBCustomDataSet, IBQuery, dxDBELib,
  DBCtrls, Grids, DBGrids, math, dateutils, IBStoredProc, ComCtrls,
  Registry, jpeg, rxSpeedbar, IBEvents,
  XMLDom, XMLIntf, MSXMLDom, XMLDoc, XMLXForm,
  IDGlobal, IBSQL, ActnList, cxGraphics, cxControls, dxStatusBar,
  Clipbrd, rxAnimate, rxGIFCtrl {Unit do componente Indy para usar Fetch() };

Type
  TFrmVEN_NFE = class(TForm)
    PNLPrincipal: TPanel;
    TSEdicao: TIBTransaction;
    DTSEdicao: TDataSource;
    
    PNLME: TPanel;
    PNLMargemD: TPanel;
    PNLDestinatario: TPanel;
    PNLDestinatarioMargemE: TPanel;
    GBDestinatario: TGroupBox;
    LAIDCD: TLabel;
    GBCFOP: TGroupBox;
    PNLDestinatarioMargemD: TPanel;
    PNLRodape: TPanel;
    GBEdicao: TGroupBox;
    PCEdicao: TdxPageControl;
    TSProduto: TdxTabSheet;
    TSDuplicata: TdxTabSheet;
    TSServico: TdxTabSheet;
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
    GBInfCplNF: TGroupBox;
    PCINFADCAD: TdxPageControl;
    TSInfoNF: TdxTabSheet;
    EDInfAdNF: TdxMemo;
    TSInfoFisco: TdxTabSheet;
    EDInfAdFisco: TdxMemo;
    GBInfoPedido: TGroupBox;
    EDInfAdPed: TdxMemo;
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
    IEUFDesemb: TdxPickEdit;
    IEUFTerceiro: TdxPickEdit;
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
    EDNRO: TdxMaskEdit;
    EDxCpl: TdxMaskEdit;
    EDxMun: TdxMaskEdit;
    EDxBairro: TdxMaskEdit;
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
    IEEnvMail: TdxImageEdit;
    Label19: TLabel;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    SQLFKConsulta: TIBSQL;
    BECMun: TdxButtonEdit;
    SQLSEdicao: TIBSQL;
    CEIDCD: TdxCurrencyEdit;
    EDDECD: TdxMaskEdit;
    GBFrete: TGroupBox;
    QConsulta: TIBQuery;
    TSNFTriangular: TdxTabSheet;
    EDR_DECD: TdxMaskEdit;
    Label76: TLabel;
    BRemessa: TBevel;
    Label77: TLabel;
    PER_TXLGR: TdxPickEdit;
    EDR_XLGR: TdxMaskEdit;
    Label78: TLabel;
    EDR_NRO: TdxMaskEdit;
    EDR_XCPL: TdxMaskEdit;
    EDR_CEP: TdxMaskEdit;
    Label79: TLabel;
    Label80: TLabel;
    EDR_xBAIRRO: TdxMaskEdit;
    EDR_XMUN: TdxMaskEdit;
    Label81: TLabel;
    Label82: TLabel;
    PER_UF: TdxPickEdit;
    Label83: TLabel;
    CER_CDNF: TdxCurrencyEdit;
    Label84: TLabel;
    Label86: TLabel;
    EDR_CNPJ: TdxMaskEdit;
    Label87: TLabel;
    PER_IE: TdxPickEdit;
    CER_IDCD: TdxCurrencyEdit;
    IEICMS_ST: TdxImageEdit;
    Label89: TLabel;
    CHK_XML: TdxCheckEdit;
    SQLPKSEdicao: TIBSQL;

    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTSaida: TAction;

    ACTConsulta: TAction;
    ACTPesquisa: TAction;
    ACTPSQ_PED_RDV: TAction;
    ACTPSQ_NFE_ADM: TAction;
    ACTPSQ_NFE_NUM: TAction;
    ACTPSQ_NFE_SEQ: TAction;
    ACTPSQ_TAB_CFOP: TAction;
    ACTPSQ_CAD_TRA: TAction;
    ACTPSQ_CAD_PRO: TAction;

    ACTEdicao: TAction;
    ACTEDI_CAD_PAD: TAction;
    ACTEDI_CAD_PRO: TAction;
    ACTEDI_CAD_PRO_EST: TAction;

    ACTMPAppend: TAction;
    ACTMPEdit: TAction;
    ACTMPDelete: TAction;
    ACTMPPost: TAction;
    ACTMPValidate: TAction;
    ACTMPCancel: TAction;
    ACTEmail: TAction;
    ACTImporta: TAction;

    ACTMEAppend: TAction;
    ACTMEEdit: TAction;
    ACTMEDelete: TAction;
    ACTMEPost: TAction;
    ACTMECancel: TAction;

    ACTCheckConstraints: TAction;
    ACTCheckErrors: TAction;

    ACTRelatorios: TAction;
    ACTVisualiza: TAction;

    ACTDashboards: TAction;
    ACTProgressBar: TAction;

    ACTEveRegister: TAction;
    ACTEveExecute: TAction;
    ACTEveExpress: TAction;

    ACTNFeCalculate: TAction;
    ACTNFeICMS: TAction;
    ACTNFeCST: TAction;

    ACTNFeDesconto: TAction;
    ACTNFeFrete: TAction;
    ACTNFeSeguro: TAction;
    ACTNFeCFOP: TAction;

    ACTNFeTriangular: TAction;
    ACTNFeBoleto: TAction;
    ACTNFeINFADCAD: TAction;
    ACTNFePDF: TAction;

    ACTNFeEdicao: TAction;
    ACTNFeValidate: TAction;

    ACTXMLCreate: TAction;
    ACTXMLValidate: TAction;
    ACTXMLLoteCreate: TAction;
    ACTXMLLoteRetorno: TAction;
    ACTXMLSend: TAction;
    ACTXMLImporta: TAction;

    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;

    LACFOP: TLabel;
    Label70: TLabel;
    EDCFOP_TPNF_NO: TdxMaskEdit;
    PECFOP_NO: TdxPickEdit;
    IECFOP_TPNF: TdxImageEdit;
    Label23: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label51: TLabel;
    Label85: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    PEDECT: TdxPickEdit;
    IEModFrete: TdxImageEdit;
    CEVFRT: TdxCurrencyEdit;
    CEQVOL: TdxCurrencyEdit;
    CEPSBR: TdxCurrencyEdit;
    CEPSLQ: TdxCurrencyEdit;
    CEVSEG: TdxCurrencyEdit;
    CENVOL: TdxCurrencyEdit;
    EDMarca: TdxEdit;
    CEIDCT: TdxCurrencyEdit;
    PEESP: TdxPickEdit;
    Label2: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    PENLacres1: TdxPickEdit;
    PENLacres2: TdxPickEdit;
    Label3: TLabel;
    SQLPKConsulta: TIBSQL;
    PNLMETOP: TPanel;
    GBNF: TGroupBox;
    LANotaFiscal: TLabel;
    LAFinNFe: TLabel;
    Label69: TLabel;
    Label73: TLabel;
    DEdhEmi: TdxDateEdit;
    DEdhSaiEnt: TdxDateEdit;
    IEFinNFe: TdxImageEdit;
    IETPAG: TdxImageEdit;
    IEINDPAG: TdxImageEdit;
    CECDNF: TdxCurrencyEdit;
    GBPED: TGroupBox;
    LACDPV: TLabel;
    LACDRO: TLabel;
    Label88: TLabel;
    CETSDE: TdxCurrencyEdit;
    EDCDPD: TdxMaskEdit;
    CECDRO: TdxCurrencyEdit;
    CEVTPV: TdxCurrencyEdit;
    CEVTRO: TdxCurrencyEdit;
    IEITEMPED: TdxImageEdit;
    PNLDuplicataSelect: TPanel;
    IECDPG: TdxImageEdit;
    IEPRAZO: TdxPickEdit;
    LAPrz: TLabel;
    IEBOLETO: TdxImageEdit;
    Label1: TLabel;
    Label16: TLabel;
    PNLPKSumario: TPanel;
    GBFKSumario: TGroupBox;
    DBGFKSumario: TdxDBGrid;
    DBGFKSumarioLBL_VDUP: TdxDBGridMaskColumn;
    DBGFKSumarioNFE_VDUP: TdxDBGridCurrencyColumn;
    DBGFKSumarioLBL_VNF: TdxDBGridMaskColumn;
    DBGFKSumarioNFE_VNF: TdxDBGridCurrencyColumn;
    DBGFKSumarioLBL_VTOTTRIB: TdxDBGridMaskColumn;
    DBGFKSumarioNFE_VTOTTRIB: TdxDBGridCurrencyColumn;
    PNLFKSumario: TPanel;
    GBPKSumario: TGroupBox;
    DBGPKSumario: TdxDBGrid;
    DBGPKSumarioLBL_VPROD: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VPROD: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VDESC: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VDESC: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VBC: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VBC: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_CBS_VCBS: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_CBS_VCBS: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_IBSUF_VIBSUF: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_IBSUF_VIBSUF: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_IBSMUN_VIBSMUN: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_IBSMUN_VIBSMUN: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VICMS: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VICMS: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VICMSUFDEST: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VICMSUFDEST: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VICMSDESON: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VICMSDESON: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VCREDICMSSN: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VCREDICMSSN: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VBCST: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VBCST: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VST: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VST: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VIPI: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VIPI: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VPIS: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VPIS: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VCOFINS: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VCOFINS: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VFRETE: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VFRETE: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VSEG: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VSEG: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VII: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VII: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VOUTRO: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VOUTRO: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VSERV: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VSERV: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VFCPUFDEST: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VFCPUFDEST: TdxDBGridCurrencyColumn;
    ILMenuEdicao: TImageList;
    GBMEFIS_NFE_DUP: TGroupBox;
    SBFIS_NFE_DUP: TSpeedBar;
    SSFIS_NFE_DUP: TSpeedbarSection;
    SIMDAppend: TSpeedItem;
    SIMDEdit: TSpeedItem;
    SIMDDelete: TSpeedItem;
    SIMDPost: TSpeedItem;
    SIMDCancel: TSpeedItem;
    SIMDRefresh: TSpeedItem;
    GBFIS_NFE_DUP: TGroupBox;
    GBMEFIS_NFE_MAO: TGroupBox;
    SBMEFIS_NFE_MAO: TSpeedBar;
    SSMEFIS_NFE_MAO: TSpeedbarSection;
    SpeedItem1: TSpeedItem;
    SpeedItem2: TSpeedItem;
    SpeedItem3: TSpeedItem;
    SpeedItem4: TSpeedItem;
    SpeedItem5: TSpeedItem;
    GBFIS_NFE_MAO: TGroupBox;
    DBGFIS_NFE_MAO: TdxDBGrid;
    GBMenuEdicao: TGroupBox;
    SBMenuEdicao: TSpeedBar;
    SSMenuEdicao: TSpeedbarSection;
    SIMEAppend: TSpeedItem;
    SIMEEdit: TSpeedItem;
    SIMEDelete: TSpeedItem;
    SIMEPost: TSpeedItem;
    SIMECancel: TSpeedItem;
    GBConsulta: TGroupBox;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoNFE_NITEMPED: TdxDBGridMaskColumn;
    DBGEdicaoNFE_XPED: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_NCM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_XPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CFOP: TdxDBGridMaskColumn;
    DBGEdicaoNFE_ORIG: TdxDBGridPickColumn;
    DBGEdicaoNFE_CST: TdxDBGridPickColumn;
    DBGEdicaoNFE_UCOM: TdxDBGridPickColumn;
    DBGEdicaoNFE_QCOM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VUNCOM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_UTRIB: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VUNTRIB: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VDESC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VNF: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VICMS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PICMS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_MODBCST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PREDBC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CSTIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_EXTIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CEST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CENQ: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CSTPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CSTCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_NFCI: TdxDBGridMaskColumn;
    DBGEdicaoFLAG_CTRL: TdxDBGridMaskColumn;
    DBGEdicaoC_ID: TdxDBGridColumn;
    DBGEdicaoNFE_MODBC: TdxDBGridMaskColumn;
    ILMenuPrincipal: TImageList;
    SBMenuPrincipal: TSpeedBar;
    SSMenuPrincipal: TSpeedbarSection;
    SIRefresh: TSpeedItem;
    SIPesquisa: TSpeedItem;
    SIRelatorios: TSpeedItem;
    SISaida: TSpeedItem;
    SIXMLCreate: TSpeedItem;
    SIXMLValidate: TSpeedItem;
    SIXMLSefaz: TSpeedItem;
    SIEmail: TSpeedItem;
    SIImporta: TSpeedItem;
    PNLINFADTEC: TPanel;
    GBINFADTEC: TGroupBox;
    DBINFADTEC: TdxDBMemo;
    DBGFIS_NFE_DUP: TdxDBGrid;
    DBGPKSumarioLBL_VICMSUFREMET: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VICMSUFREMET: TdxDBGridCurrencyColumn;
    IEUF: TdxImageEdit;
    SPSEdicao: TIBStoredProc;

    TAB_ALQ: TIBQuery;
    TAB_ALQID: TIntegerField;
    TAB_ALQALQ_ESTA: TIBStringField;
    TAB_ALQALQ_ICMS: TIBBCDField;
    TAB_ALQALQ_ICME: TIBBCDField;
    TAB_ALQALQ_DESC: TIBStringField;
    TAB_ALQALQ_UFORIGEM: TIBStringField;
    TAB_ALQALQ_UFDESTINO: TIBStringField;
    TAB_ALQALQ_ICMO: TIBBCDField;
    TAB_ALQALQ_ICMD: TIBBCDField;
    TAB_ALQALQ_ICMI: TIBBCDField;
    TAB_ALQALQ_STMENSAGEM: TIBStringField;
    TAB_ALQALQ_STARTIGO: TIBStringField;
    TAB_ALQALQ_STPROTOCOLO: TIBStringField;
    TAB_ALQALQ_FCP: TIBBCDField;

    TAB_PAG: TIBQuery;
    TAB_PAGID: TIntegerField;
    TAB_PAGPAG_DPAG: TIBStringField;
    TAB_PAGPAG_D001: TIntegerField;
    TAB_PAGPAG_D002: TIntegerField;
    TAB_PAGPAG_D003: TIntegerField;
    TAB_PAGPAG_D004: TIntegerField;
    TAB_PAGPAG_D005: TIntegerField;
    TAB_PAGPAG_D006: TIntegerField;
    TAB_PAGPAG_D007: TIntegerField;
    TAB_PAGPAG_D008: TIntegerField;
    TAB_PAGPAG_D009: TIntegerField;
    TAB_PAGPAG_D010: TIntegerField;
    TAB_PAGPAG_D011: TIntegerField;
    TAB_PAGPAG_D012: TIntegerField;
    TAB_PAGPAG_D013: TIntegerField;
    TAB_PAGPAG_D014: TIntegerField;
    TAB_PAGPAG_D015: TIntegerField;
    TAB_PAGPAG_D016: TIntegerField;
    TAB_PAGPAG_D017: TIntegerField;
    TAB_PAGPAG_D018: TIntegerField;
    TAB_PAGPAG_D019: TIntegerField;
    TAB_PAGPAG_D020: TIntegerField;
    TAB_PAGPAG_PARC: TSmallintField;
    TAB_PAGPAG_PRAZ: TSmallintField;
    TAB_PAGPAG_DUPL: TIBStringField;
    TAB_PAGPAG_STA: TIBStringField;
    TAB_PAGPAG_ENVWEB: TSmallintField;

    TAB_CFOP: TIBQuery;
    TAB_CFOPCFOP: TIBStringField;
    TAB_CFOPCFOP_CONTRA: TIBStringField;
    TAB_CFOPCFOP_NO: TIBStringField;
    TAB_CFOPCFOP_TPNF: TSmallintField;
    TAB_CFOPCFOP_TPNF_NO: TIBStringField;
    TAB_CFOPCFOP_FAT: TSmallintField;
    TAB_CFOPCFOP_TPFN_NO: TIBStringField;
    TAB_CFOPCFOP_CSTICMS: TIBStringField;
    TAB_CFOPCFOP_CST_CSOSNCRED: TIBStringField;
    TAB_CFOPCFOP_PREDBC: TIBBCDField;
    TAB_CFOPCFOP_PREDBCST: TIBBCDField;
    TAB_CFOPCFOP_PREDBCEFET: TIBBCDField;
    TAB_CFOPCFOP_CSTIPI: TIBStringField;
    TAB_CFOPCFOP_CSTIPIENT: TIBStringField;
    TAB_CFOPCFOP_CSTIPISAI: TIBStringField;
    TAB_CFOPCFOP_CSTPIS: TIBStringField;
    TAB_CFOPCFOP_PPIS: TIBBCDField;
    TAB_CFOPCFOP_CSTCOFINS: TIBStringField;
    TAB_CFOPCFOP_PCOFINS: TIBBCDField;
    TAB_CFOPCFOP_INDTOT: TSmallintField;
    TAB_CFOPCFOP_CENQ: TIBStringField;
    TAB_CFOPCFOP_INFADCAD: TMemoField;
    TAB_CFOPCSTIS: TIBStringField;
    TAB_CFOPCCLASSTRIBIS: TIBStringField;
    TAB_CFOPPIS: TIBBCDField;
    TAB_CFOPPISESPEC: TIBBCDField;
    TAB_CFOPCSTCBS: TIBStringField;
    TAB_CFOPCCLASSTRIBCBS: TIBStringField;
    TAB_CFOPPCBS: TIBBCDField;
    TAB_CFOPINDDOACAO: TIBStringField;

    Edicao: TIBDataSet;
    EdicaoID: TLargeintField;
    EdicaoEP_ID: TSmallintField;
    EdicaoEP_NO: TIBStringField;
    EdicaoEP_CP_ID: TSmallintField;
    EdicaoEP_CP_NO: TIBStringField;
    EdicaoCF_ID: TSmallintField;
    EdicaoCF_NO: TIBStringField;
    EdicaoIDEV: TLargeintField;
    EdicaoCDEV: TSmallintField;
    EdicaoDEEV: TIBStringField;
    EdicaoDTEV: TDateTimeField;
    EdicaoIDCA: TSmallintField;
    EdicaoLGCA: TIBStringField;
    EdicaoDTCA: TDateTimeField;
    EdicaoIDPK: TLargeintField;
    EdicaoDEPK: TIBStringField;
    EdicaoIDFK: TLargeintField;
    EdicaoDEFK: TIBStringField;
    EdicaoCP_ID: TLargeintField;
    EdicaoCP_IMG_ID: TLargeintField;
    EdicaoCP_AK_ID: TLargeintField;
    EdicaoCP_ARTIGO: TIBStringField;
    EdicaoCP_SKU: TIBStringField;
    EdicaoCP_CF_SKU: TIBStringField;
    EdicaoCP_CMP_NO: TIBStringField;
    EdicaoCP_UQTDE: TIBBCDField;
    EdicaoCP_UCDBE: TIBStringField;
    EdicaoCP_UPSBR: TIBBCDField;
    EdicaoCP_UPSLQ: TIBBCDField;
    EdicaoNFE_CDNF: TLargeintField;
    EdicaoNFE_CFOP: TIBStringField;
    EdicaoNFE_ORIG: TSmallintField;
    EdicaoNFE_CST: TIBStringField;
    EdicaoNFE_NCM: TIBStringField;
    EdicaoNFE_CEST: TIBStringField;
    EdicaoNFE_EXTIPI: TIBStringField;
    EdicaoNFE_CENQ: TIBStringField;
    EdicaoNFE_CLENQ: TIBStringField;
    EdicaoNFE_NVE: TIBStringField;
    EdicaoNFE_INDESCALA: TIBStringField;
    EdicaoNFE_INDTOT: TSmallintField;
    EdicaoNFE_NITEMPED: TIntegerField;
    EdicaoNFE_XPED: TIBStringField;
    EdicaoNFE_CPROD: TIBStringField;
    EdicaoNFE_CEAN: TIBStringField;
    EdicaoNFE_CEANTRIB: TIBStringField;
    EdicaoNFE_XPROD: TIBStringField;
    EdicaoNFE_NFCI: TIBStringField;
    EdicaoNFE_UCOM: TIBStringField;
    EdicaoNFE_QCOM: TIBBCDField;
    EdicaoNFE_RCOM: TIntegerField;
    EdicaoNFE_UTRIB: TIBStringField;
    EdicaoNFE_QTRIB: TIBBCDField;
    EdicaoNFE_RTRIB: TIntegerField;
    EdicaoNFE_VUNMAOOBRA: TFloatField;
    EdicaoNFE_VUNPAD: TFloatField;
    EdicaoNFE_VUNCOM: TFloatField;
    EdicaoNFE_VUNTRIB: TFloatField;
    EdicaoNFE_VPROD: TIBBCDField;
    EdicaoNFE_VSERV: TIBBCDField;
    EdicaoNFE_VFRETE: TIBBCDField;
    EdicaoNFE_VSEG: TIBBCDField;
    EdicaoNFE_VDESC: TIBBCDField;
    EdicaoNFE_VOUTRO: TIBBCDField;
    EdicaoNFE_VTOTTRIB: TIBBCDField;
    EdicaoNFE_VNFTOT: TIBBCDField;
    EdicaoNFE_VNF: TIBBCDField;
    EdicaoNFE_PSBR: TIBBCDField;
    EdicaoNFE_PSLQ: TIBBCDField;
    EdicaoNFE_ISSQN_VBCISSQN: TIBBCDField;
    EdicaoNFE_ISSQN_VALIQ: TIBBCDField;
    EdicaoNFE_ISSQN_VISSQN: TIBBCDField;
    EdicaoNFE_CMUNFG: TIBStringField;
    EdicaoNFE_CLISTSERV: TIBStringField;
    EdicaoNFE_ISSQN_VDEDUCAO: TIBBCDField;
    EdicaoNFE_ISSQN_VOUTRO: TIBBCDField;
    EdicaoNFE_ISSQN_VDESCINCOND: TIBBCDField;
    EdicaoNFE_ISSQN_VDESCCOND: TIBBCDField;
    EdicaoNFE_ISSQN_VISSRET: TIBBCDField;
    EdicaoNFE_ISSQN_INDISS: TSmallintField;
    EdicaoNFE_ISSQN_CSERVICO: TIBStringField;
    EdicaoNFE_ISSQN_CMUN: TIBStringField;
    EdicaoNFE_ISSQN_CPAIS: TIBStringField;
    EdicaoNFE_ISSQN_NPROCESSO: TIBStringField;
    EdicaoNFE_INDINCENTIVO: TSmallintField;
    EdicaoNFE_MODBC: TSmallintField;
    EdicaoNFE_PREDBC: TIBBCDField;
    EdicaoNFE_VBC: TIBBCDField;
    EdicaoNFE_PICMS: TIBBCDField;
    EdicaoNFE_VICMS: TIBBCDField;
    EdicaoNFE_UF: TIBStringField;
    EdicaoNFE_MODBCST: TSmallintField;
    EdicaoNFE_PMVAST: TIBBCDField;
    EdicaoNFE_PREDBCST: TIBBCDField;
    EdicaoNFE_VBCST: TIBBCDField;
    EdicaoNFE_VICMSST: TIBBCDField;
    EdicaoNFE_PICMSST: TIBBCDField;
    EdicaoNFE_PST: TIBBCDField;
    EdicaoNFE_VST: TIBBCDField;
    EdicaoNFE_VBCCOFINSST: TIBBCDField;
    EdicaoNFE_PCOFINSST: TIBBCDField;
    EdicaoNFE_VCOFINSST: TIBBCDField;
    EdicaoNFE_UFST: TIBStringField;
    EdicaoNFE_PBCOP: TIBBCDField;
    EdicaoNFE_VBCSTRET: TIBBCDField;
    EdicaoNFE_VICMSSTRET: TIBBCDField;
    EdicaoNFE_MOTDESICMS: TSmallintField;
    EdicaoNFE_VBCSTDEST: TIBBCDField;
    EdicaoNFE_VICMSSTDEST: TIBBCDField;
    EdicaoNFE_VBCCREDICMSSN: TIBBCDField;
    EdicaoNFE_PCREDSN: TIBBCDField;
    EdicaoNFE_VCREDICMSSN: TIBBCDField;
    EdicaoNFE_VICMSDESON: TIBBCDField;
    EdicaoNFE_VICMSOP: TIBBCDField;
    EdicaoNFE_VICMSDIF: TIBBCDField;
    EdicaoNFE_PDIF: TIBBCDField;
    EdicaoNFE_VDIF: TIBBCDField;
    EdicaoNFE_VBCFCP: TIBBCDField;
    EdicaoNFE_PFCP: TIBBCDField;
    EdicaoNFE_VFCP: TIBBCDField;
    EdicaoNFE_VBCFCPST: TIBBCDField;
    EdicaoNFE_PFCPST: TIBBCDField;
    EdicaoNFE_VFCPST: TIBBCDField;
    EdicaoNFE_VBCFCPSTRET: TIBBCDField;
    EdicaoNFE_PFCPSTRET: TIBBCDField;
    EdicaoNFE_VFCPSTRET: TIBBCDField;
    EdicaoNFE_PFCPDIF: TIBBCDField;
    EdicaoNFE_VFCPDIF: TIBBCDField;
    EdicaoNFE_VFCPEFET: TIBBCDField;
    EdicaoNFE_VICMSSTDESON: TIBBCDField;
    EdicaoNFE_MOTDESICMSST: TSmallintField;
    EdicaoNFE_INDDEDUZDESON: TSmallintField;
    EdicaoNFE_CBENEFRBC: TIBStringField;
    EdicaoNFE_VBCUFDEST: TIBBCDField;
    EdicaoNFE_VBCFCPUFDEST: TIBBCDField;
    EdicaoNFE_PFCPUFDEST: TIBBCDField;
    EdicaoNFE_PICMSUFDEST: TIBBCDField;
    EdicaoNFE_PICMSINTER: TIBBCDField;
    EdicaoNFE_PICMSINTERPART: TIBBCDField;
    EdicaoNFE_VFCPUFDEST: TIBBCDField;
    EdicaoNFE_VICMSUFDEST: TIBBCDField;
    EdicaoNFE_VICMSUFREMET: TIBBCDField;
    EdicaoNFE_CSTIPI: TIBStringField;
    EdicaoNFE_VBCIPI: TIBBCDField;
    EdicaoNFE_PIPI: TIBBCDField;
    EdicaoNFE_VIPI: TIBBCDField;
    EdicaoNFE_VIPIDEVOL: TIBBCDField;
    EdicaoNFE_CSTPIS: TIBStringField;
    EdicaoNFE_VBCPIS: TIBBCDField;
    EdicaoNFE_PPIS: TIBBCDField;
    EdicaoNFE_VPIS: TIBBCDField;
    EdicaoNFE_VBCPISST: TIBBCDField;
    EdicaoNFE_PPISST: TIBBCDField;
    EdicaoNFE_VPISST: TIBBCDField;
    EdicaoNFE_CSTCOFINS: TIBStringField;
    EdicaoNFE_VBCCOFINS: TIBBCDField;
    EdicaoNFE_PCOFINS: TIBBCDField;
    EdicaoNFE_VCOFINS: TIBBCDField;
    EdicaoNFE_VBCIMP: TIBBCDField;
    EdicaoNFE_VDESCDI: TIBBCDField;
    EdicaoNFE_VDESPADU: TIBBCDField;
    EdicaoNFE_VII: TIBBCDField;
    EdicaoNFE_VIOF: TIBBCDField;
    EdicaoNFE_VMULTA: TIBBCDField;
    EdicaoNFE_VAFRMM: TIBBCDField;
    EdicaoNFE_IS_CSTIS: TIBStringField;
    EdicaoNFE_IS_CCLASSTRIBIS: TIBStringField;
    EdicaoNFE_IS_VBCIS: TIBBCDField;
    EdicaoNFE_IS_PIS: TIBBCDField;
    EdicaoNFE_IS_PISESPEC: TIBBCDField;
    EdicaoNFE_IS_VIS: TIBBCDField;
    EdicaoNFE_IS_UTRIB: TIBStringField;
    EdicaoNFE_IS_QTRIB: TIBBCDField;
    EdicaoNFE_IBSCBS_CSTIS: TIBStringField;
    EdicaoNFE_IBSCBS_CCLASSTRIBIS: TIBStringField;
    EdicaoNFE_IBSCBS_INDDOACAO: TIBStringField;
    EdicaoNFE_IBSCBS_VBCIBSCBS: TIBBCDField;
    EdicaoNFE_IBSCBS_VIBSCBS: TIBBCDField;
    EdicaoNFE_IBSUF_VBCIBSUF: TIBBCDField;
    EdicaoNFE_IBSUF_PIBSUF: TIBBCDField;
    EdicaoNFE_IBSUF_VIBSUF: TIBBCDField;
    EdicaoNFE_IBSUF_PDIF: TIBBCDField;
    EdicaoNFE_IBSUF_VDIF: TIBBCDField;
    EdicaoNFE_IBSUF_VDEVTRIB: TIBBCDField;
    EdicaoNFE_IBSMUN_VBCIBSMUN: TIBBCDField;
    EdicaoNFE_IBSMUN_PIBSMUN: TIBBCDField;
    EdicaoNFE_IBSMUN_VIBSMUN: TIBBCDField;
    EdicaoNFE_IBSMUN_PDIF: TIBBCDField;
    EdicaoNFE_IBSMUN_VDIF: TIBBCDField;
    EdicaoNFE_IBSMUN_VDEVTRIB: TIBBCDField;
    EdicaoNFE_IBSMUN_VCREDPRES: TIBBCDField;
    EdicaoNFE_IBSMUN_VCREDPRESCONDSUS: TIBBCDField;
    EdicaoNFE_CBS_VBCCBS: TIBBCDField;
    EdicaoNFE_CBS_PCBS: TIBBCDField;
    EdicaoNFE_CBS_VCBS: TIBBCDField;
    EdicaoNFE_CBS_PDIF: TIBBCDField;
    EdicaoNFE_CBS_VDIF: TIBBCDField;
    EdicaoNFE_CBS_VDEVTRIB: TIBBCDField;
    EdicaoNFE_CBS_VCREDPRES: TIBBCDField;
    EdicaoNFE_CBS_VCREDPRESCONDSUS: TIBBCDField;
    EdicaoNFE_QBCMONO: TIBBCDField;
    EdicaoNFE_VICMSMONO: TIBBCDField;
    EdicaoNFE_VIBSMONO: TIBBCDField;
    EdicaoNFE_VCBSMONO: TIBBCDField;
    EdicaoNFE_QBCMONORETEN: TIBBCDField;
    EdicaoNFE_VICMSMONORETEN: TIBBCDField;
    EdicaoNFE_VIBSMONORETEN: TIBBCDField;
    EdicaoNFE_VCBSMONORETEN: TIBBCDField;
    EdicaoNFE_ADREMIBSRETEN: TIBBCDField;
    EdicaoNFE_ADREMCBSRETEN: TIBBCDField;
    EdicaoNFE_QBCMONORET: TIBBCDField;
    EdicaoNFE_VICMSMONORET: TIBBCDField;
    EdicaoNFE_VIBSMONORET: TIBBCDField;
    EdicaoNFE_VCBSMONORET: TIBBCDField;
    EdicaoNFE_ADREMIBSRET: TIBBCDField;
    EdicaoNFE_ADREMCBSRET: TIBBCDField;
    EdicaoNFE_PDIFIBS: TIBBCDField;
    EdicaoNFE_VIBSMONODIF: TIBBCDField;
    EdicaoNFE_PDIFCBS: TIBBCDField;
    EdicaoNFE_VCBSMONODIF: TIBBCDField;
    EdicaoNFE_VTOTIBSMONOITEM: TIBBCDField;
    EdicaoNFE_VTOTCBSMONOITEM: TIBBCDField;
    EdicaoNFE_RED_PREDALIQ: TIBBCDField;
    EdicaoNFE_RED_PALIQEFET: TIBBCDField;
    EdicaoNFE_ADREMIBS: TIBBCDField;
    EdicaoNFE_ADREMCBS: TIBBCDField;
    EdicaoNFE_TRANSFCRED_VIBS: TIBBCDField;
    EdicaoNFE_TRANSFCRED_VCBS: TIBBCDField;
    EdicaoNFE_NDI: TIBStringField;
    EdicaoNFE_DDI: TDateField;
    EdicaoNFE_NADICAO: TSmallintField;
    EdicaoNFE_NSEQADIC: TSmallintField;
    EdicaoNFE_XLOCEMBARQ: TIBStringField;
    EdicaoNFE_UFEMBARQ: TIBStringField;
    EdicaoNFE_XLOCDESEMB: TIBStringField;
    EdicaoNFE_UFDESEMB: TIBStringField;
    EdicaoNFE_DDESEMB: TDateField;
    EdicaoNFE_TPVIATRANSP: TIBStringField;
    EdicaoNFE_XLOCDESPACHO: TIBStringField;
    EdicaoNFE_UFSAIDAPAIS: TIBStringField;
    EdicaoNFE_NDRAW: TIBStringField;
    EdicaoNFE_NRE: TIBStringField;
    EdicaoNFE_QEXPORT: TIBBCDField;
    EdicaoNFE_CEXPORTADOR: TIBStringField;
    EdicaoNFE_CFABRICANTE: TIBStringField;
    EdicaoNFE_TPINTERMEDIO: TIBStringField;
    EdicaoNFE_CNPJFAB: TIBStringField;
    EdicaoNFE_CNPJPROD: TIBStringField;
    EdicaoNFE_CNPJTERCEIRO: TIBStringField;
    EdicaoNFE_UFTERCEIRO: TIBStringField;
    EdicaoNFE_CHNFE: TIBStringField;
    EdicaoNFE_INFADCAD: TMemoField;
    EdicaoIP: TIBStringField;
    EdicaoHOST: TIBStringField;
    EdicaoFLAG: TSmallintField;
    EdicaoC_ID: TLargeintField;


    DTSFIS_NFE_DUP: TDataSource;
    FIS_NFE_DUP: TIBDataSet;
    FIS_NFE_DUPID: TLargeintField;
    FIS_NFE_DUPIDEV: TLargeintField;
    FIS_NFE_DUPNFE_NITEMPED: TSmallintField;
    FIS_NFE_DUPNFE_CDNF: TLargeintField;
    FIS_NFE_DUPNFE_DTNF: TDateField;
    FIS_NFE_DUPNFE_VNF: TIBBCDField;
    FIS_NFE_DUPNFE_NDUP: TIBStringField;
    FIS_NFE_DUPNFE_DTVC: TDateField;
    FIS_NFE_DUPNFE_VLIQ: TIBBCDField;
    FIS_NFE_DUPNFE_VDUP: TIBBCDField;
    FIS_NFE_DUPNFE_VDSC: TIBBCDField;
    FIS_NFE_DUPFLAG: TSmallintField;

    DTSFIS_NFE_MAO: TDataSource;
    FIS_NFE_MAO: TIBDataSet;
    FIS_NFE_MAOID: TLargeintField;
    FIS_NFE_MAOIDEV: TLargeintField;
    FIS_NFE_MAONFE_NITEMPED: TSmallintField;
    FIS_NFE_MAONFE_CDNF: TLargeintField;
    FIS_NFE_MAONFE_DTNF: TDateField;
    FIS_NFE_MAONFE_VNF: TIBBCDField;
    FIS_NFE_MAOFLAG: TSmallintField;


    DTSFIS_NFE_SUM: TDataSource;
    FIS_NFE_SUM: TIBQuery;
    DBGEdicaoNFE_VSERV: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VFRETE: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VSEG: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PREDBCST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VICMSST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PICMSST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCCOFINS: TdxDBGridMaskColumn;
    SIVisualiza: TSpeedItem;
    LAPDSC: TLabel;
    CEPDSC: TdxCurrencyEdit;
    CEVDSC: TdxCurrencyEdit;
    SIXMLImporta: TSpeedItem;
    EPrincipal: TOpenDialog;
    FIS_NFE_ADM: TIBDataSet;
    DSTFIS_NFE_ADM: TDataSource;
    FIS_NFE_ADMID: TLargeintField;
    FIS_NFE_ADMEP_ID: TSmallintField;
    FIS_NFE_ADMEP_NO: TIBStringField;
    FIS_NFE_ADMIDEV: TLargeintField;
    FIS_NFE_ADMCDEV: TSmallintField;
    FIS_NFE_ADMDEEV: TIBStringField;
    FIS_NFE_ADMDTEV: TDateTimeField;
    FIS_NFE_ADMIDCA: TSmallintField;
    FIS_NFE_ADMLGCA: TIBStringField;
    FIS_NFE_ADMDTCA: TDateTimeField;
    FIS_NFE_ADMCD_ID: TIntegerField;
    FIS_NFE_ADMCD_NO: TIBStringField;
    FIS_NFE_ADMCD_NO_ABREV: TIBStringField;
    FIS_NFE_ADMCD_NO_SIGLA: TIBStringField;
    FIS_NFE_ADMCR_ID: TSmallintField;
    FIS_NFE_ADMCR_NO: TIBStringField;
    FIS_NFE_ADMCR_NO_ABREV: TIBStringField;
    FIS_NFE_ADMCR_NO_SIGLA: TIBStringField;
    FIS_NFE_ADMCV_ID: TSmallintField;
    FIS_NFE_ADMCV_NO: TIBStringField;
    FIS_NFE_ADMNFE_CUF: TIBStringField;
    FIS_NFE_ADMNFE_CNF: TLargeintField;
    FIS_NFE_ADMNFE_CDNF: TLargeintField;
    FIS_NFE_ADMNFE_DHEMI: TDateTimeField;
    FIS_NFE_ADMNFE_DHSAIENT: TDateTimeField;
    FIS_NFE_ADMNFE_CFOP: TIBStringField;
    FIS_NFE_ADMNFE_NATOP: TIBStringField;
    FIS_NFE_ADMNFE_INDPAG: TSmallintField;
    FIS_NFE_ADMNFE_MOD: TSmallintField;
    FIS_NFE_ADMNFE_SERIE: TSmallintField;
    FIS_NFE_ADMNFE_TPNF: TSmallintField;
    FIS_NFE_ADMNFE_IDDEST: TSmallintField;
    FIS_NFE_ADMNFE_CMUNFG: TLargeintField;
    FIS_NFE_ADMNFE_TPIMP: TSmallintField;
    FIS_NFE_ADMNFE_TPEMIS: TSmallintField;
    FIS_NFE_ADMNFE_CDV: TSmallintField;
    FIS_NFE_ADMNFE_TPAMB: TSmallintField;
    FIS_NFE_ADMNFE_FINNFE: TSmallintField;
    FIS_NFE_ADMNFE_INDFINAL: TSmallintField;
    FIS_NFE_ADMNFE_INDPRES: TSmallintField;
    FIS_NFE_ADMNFE_PROCEMI: TSmallintField;
    FIS_NFE_ADMNFE_VERPROC: TIBStringField;
    FIS_NFE_ADMNFE_DHCONT: TDateTimeField;
    FIS_NFE_ADMNFE_XJUST: TIBStringField;
    FIS_NFE_ADMNFE_REF_NFE: TIBStringField;
    FIS_NFE_ADMNFE_REF_CUF: TIBStringField;
    FIS_NFE_ADMNFE_REF_AAMM: TIBStringField;
    FIS_NFE_ADMNFE_REF_CNPJ: TIBStringField;
    FIS_NFE_ADMNFE_REF_MOD: TSmallintField;
    FIS_NFE_ADMNFE_REF_SERIE: TSmallintField;
    FIS_NFE_ADMNFE_REF_NNF: TLargeintField;
    FIS_NFE_ADMNFE_REF_NFP_CTE: TIBStringField;
    FIS_NFE_ADMNFE_REF_NFP_CUF: TIBStringField;
    FIS_NFE_ADMNFE_REF_NFP_AAMM: TIBStringField;
    FIS_NFE_ADMNFE_REF_NFP_CNPJ: TIBStringField;
    FIS_NFE_ADMNFE_REF_NFP_CPF: TIBStringField;
    FIS_NFE_ADMNFE_REF_NFP_IE: TIBStringField;
    FIS_NFE_ADMNFE_REF_NFP_MOD: TSmallintField;
    FIS_NFE_ADMNFE_REF_NFP_SERIE: TSmallintField;
    FIS_NFE_ADMNFE_REF_NFP_NNF: TLargeintField;
    FIS_NFE_ADMNFE_REF_ECF_MOD: TIBStringField;
    FIS_NFE_ADMNFE_REF_ECF_NECF: TSmallintField;
    FIS_NFE_ADMNFE_REF_ECF_NCOO: TIntegerField;
    FIS_NFE_ADMNFE_EMIT_CNPJ: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_CPF: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_IE: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_IEST: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_IM: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_CNAE: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_CRT: TSmallintField;
    FIS_NFE_ADMNFE_EMIT_XNOME: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_XFANT: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_ENDER_XLGR: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_ENDER_NRO: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_ENDER_XCPL: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_ENDER_XBAIRRO: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_ENDER_CMUN: TLargeintField;
    FIS_NFE_ADMNFE_EMIT_ENDER_XMUN: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_ENDER_UF: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_ENDER_CEP: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_ENDER_CPAIS: TSmallintField;
    FIS_NFE_ADMNFE_EMIT_ENDER_XPAIS: TIBStringField;
    FIS_NFE_ADMNFE_EMIT_ENDER_FONE: TIBStringField;
    FIS_NFE_ADMNFE_AVULSA_CNPJ: TIBStringField;
    FIS_NFE_ADMNFE_AVULSA_XORGAO: TIBStringField;
    FIS_NFE_ADMNFE_AVULSA_MATR: TIBStringField;
    FIS_NFE_ADMNFE_AVULSA_XAGENTE: TIBStringField;
    FIS_NFE_ADMNFE_AVULSA_FONE: TIBStringField;
    FIS_NFE_ADMNFE_AVULSA_UF: TIBStringField;
    FIS_NFE_ADMNFE_AVULSA_NDAR: TIBStringField;
    FIS_NFE_ADMNFE_AVULSA_DEMI: TDateField;
    FIS_NFE_ADMNFE_AVULSA_VDAR: TIBBCDField;
    FIS_NFE_ADMNFE_AVULSA_REPEMI: TIBStringField;
    FIS_NFE_ADMNFE_AVULSA_DPAG: TDateField;
    FIS_NFE_ADMNFE_DEST_CNPJ: TIBStringField;
    FIS_NFE_ADMNFE_DEST_CPF: TIBStringField;
    FIS_NFE_ADMNFE_DEST_INDIEDEST: TSmallintField;
    FIS_NFE_ADMNFE_DEST_IE: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ISUF: TIBStringField;
    FIS_NFE_ADMNFE_DEST_IM: TIBStringField;
    FIS_NFE_ADMNFE_DEST_EMAIL: TIBStringField;
    FIS_NFE_ADMNFE_DEST_XNOME: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ENDER_XLGR: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ENDER_NRO: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ENDER_XCPL: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ENDER_XBAIRRO: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ENDER_CMUN: TLargeintField;
    FIS_NFE_ADMNFE_DEST_ENDER_XMUN: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ENDER_UF: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ENDER_CEP: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ENDER_CPAIS: TSmallintField;
    FIS_NFE_ADMNFE_DEST_ENDER_XPAIS: TIBStringField;
    FIS_NFE_ADMNFE_DEST_ENDER_FONE: TIBStringField;
    FIS_NFE_ADMNFE_RET_CNPJ: TIBStringField;
    FIS_NFE_ADMNFE_RET_CPF: TIBStringField;
    FIS_NFE_ADMNFE_RET_ENDER_XLGR: TIBStringField;
    FIS_NFE_ADMNFE_RET_ENDER_NRO: TIBStringField;
    FIS_NFE_ADMNFE_RET_ENDER_XCPL: TIBStringField;
    FIS_NFE_ADMNFE_RET_ENDER_XBAIRRO: TIBStringField;
    FIS_NFE_ADMNFE_RET_ENDER_CMUN: TLargeintField;
    FIS_NFE_ADMNFE_RET_ENDER_XMUN: TIBStringField;
    FIS_NFE_ADMNFE_RET_ENDER_UF: TIBStringField;
    FIS_NFE_ADMNFE_ENT_CNPJ: TIBStringField;
    FIS_NFE_ADMNFE_ENT_CPF: TIBStringField;
    FIS_NFE_ADMNFE_ENT_ENDER_XLGR: TIBStringField;
    FIS_NFE_ADMNFE_ENT_ENDER_NRO: TIBStringField;
    FIS_NFE_ADMNFE_ENT_ENDER_XCPL: TIBStringField;
    FIS_NFE_ADMNFE_ENT_ENDER_XBAIRRO: TIBStringField;
    FIS_NFE_ADMNFE_ENT_ENDER_CMUN: TLargeintField;
    FIS_NFE_ADMNFE_ENT_ENDER_XMUN: TIBStringField;
    FIS_NFE_ADMNFE_ENT_ENDER_UF: TIBStringField;
    FIS_NFE_ADMNFE_AUT_XML_CNPJ: TIBStringField;
    FIS_NFE_ADMNFE_AUT_XML_CPF: TIBStringField;
    FIS_NFE_SUMID: TLargeintField;
    FIS_NFE_SUMIDEV: TLargeintField;
    FIS_NFE_SUMNFE_NITEMPED: TIntegerField;
    FIS_NFE_SUMNFE_QCOM: TIBBCDField;
    FIS_NFE_SUMNFE_RCOM: TIntegerField;
    FIS_NFE_SUMLBL_VPROD: TIBStringField;
    FIS_NFE_SUMNFE_VPROD: TIBBCDField;
    FIS_NFE_SUMLBL_VDESC: TIBStringField;
    FIS_NFE_SUMNFE_VDESC: TIBBCDField;
    FIS_NFE_SUMLBL_VBC: TIBStringField;
    FIS_NFE_SUMNFE_VBC: TIBBCDField;
    FIS_NFE_SUMLBL_CBS_VBCCBS: TIBStringField;
    FIS_NFE_SUMNFE_CBS_VBCCBS: TIBBCDField;
    FIS_NFE_SUMLBL_CBS_VCBS: TIBStringField;
    FIS_NFE_SUMNFE_CBS_VCBS: TIBBCDField;
    FIS_NFE_SUMLBL_IBSMUN_VBCMUN: TIBStringField;
    FIS_NFE_SUMNFE_IBSMUN_VBCIBSMUN: TIBBCDField;
    FIS_NFE_SUMLBL_IBSMUN_VIBSMUN: TIBStringField;
    FIS_NFE_SUMNFE_IBSMUN_VIBSMUN: TIBBCDField;
    FIS_NFE_SUMLBL_IBSCBS_VBCIBSCBS: TIBStringField;
    FIS_NFE_SUMNFE_IBSCBS_VBCIBSCBS: TIBBCDField;
    FIS_NFE_SUMLBL_IBSUF_VBCIBSUF: TIBStringField;
    FIS_NFE_SUMNFE_IBSUF_VBCIBSUF: TIBBCDField;
    FIS_NFE_SUMLBL_IBSUF_VIBSUF: TIBStringField;
    FIS_NFE_SUMNFE_IBSUF_VIBSUF: TIBBCDField;
    FIS_NFE_SUMLBL_VICMS: TIBStringField;
    FIS_NFE_SUMNFE_VICMS: TIBBCDField;
    FIS_NFE_SUMLBL_VICMSUFDEST: TIBStringField;
    FIS_NFE_SUMNFE_VICMSUFDEST: TIBBCDField;
    FIS_NFE_SUMLBL_VICMSUFREMET: TIBStringField;
    FIS_NFE_SUMNFE_VICMSUFREMET: TIBBCDField;
    FIS_NFE_SUMLBL_VICMSDESON: TIBStringField;
    FIS_NFE_SUMNFE_VICMSDESON: TIBBCDField;
    FIS_NFE_SUMLBL_VBCCREDICMSSN: TIBStringField;
    FIS_NFE_SUMNFE_VBCCREDICMSSN: TIBBCDField;
    FIS_NFE_SUMLBL_VCREDICMSSN: TIBStringField;
    FIS_NFE_SUMNFE_VCREDICMSSN: TIBBCDField;
    FIS_NFE_SUMLBL_VBCST: TIBStringField;
    FIS_NFE_SUMNFE_VBCST: TIBBCDField;
    FIS_NFE_SUMLBL_VST: TIBStringField;
    FIS_NFE_SUMNFE_VST: TIBBCDField;
    FIS_NFE_SUMLBL_VIPI: TIBStringField;
    FIS_NFE_SUMNFE_VIPI: TIBBCDField;
    FIS_NFE_SUMLBL_VPIS: TIBStringField;
    FIS_NFE_SUMNFE_VPIS: TIBBCDField;
    FIS_NFE_SUMLBL_VCOFINS: TIBStringField;
    FIS_NFE_SUMNFE_VCOFINS: TIBBCDField;
    FIS_NFE_SUMLBL_VFRETE: TIBStringField;
    FIS_NFE_SUMNFE_VFRETE: TIBBCDField;
    FIS_NFE_SUMLBL_VSEG: TIBStringField;
    FIS_NFE_SUMNFE_VSEG: TIBBCDField;
    FIS_NFE_SUMLBL_VSERV: TIBStringField;
    FIS_NFE_SUMNFE_VSERV: TIBBCDField;
    FIS_NFE_SUMLBL_VII: TIBStringField;
    FIS_NFE_SUMNFE_VII: TIBBCDField;
    FIS_NFE_SUMLBL_VFCPUFDEST: TIBStringField;
    FIS_NFE_SUMNFE_VFCPUFDEST: TIBBCDField;
    FIS_NFE_SUMLBL_VOUTRO: TIBStringField;
    FIS_NFE_SUMNFE_VOUTRO: TIBBCDField;
    FIS_NFE_SUMLBL_VTOTTRIB: TIBStringField;
    FIS_NFE_SUMNFE_VTOTTRIB: TIBBCDField;
    FIS_NFE_SUMLBL_VDUP: TIBStringField;
    FIS_NFE_SUMNFE_VDUP: TIBBCDField;
    FIS_NFE_SUMLBL_VNF: TIBStringField;
    FIS_NFE_SUMNFE_VNF: TIBBCDField;
    EDXML: TdxMaskEdit;
    EDPDF: TdxMaskEdit;
    DBGFIS_NFE_DUPNFE_NITEMPED: TdxDBGridMaskColumn;
    DBGFIS_NFE_DUPNFE_DTNF: TdxDBGridDateColumn;
    DBGFIS_NFE_DUPNFE_NDUP: TdxDBGridMaskColumn;
    DBGFIS_NFE_DUPNFE_DTVC: TdxDBGridDateColumn;
    FIS_NFE_SUMLBL_VNFTOT: TIBStringField;
    FIS_NFE_SUMNFE_VNFTOT: TIBBCDField;
    EdicaoFLAG_SEQ: TIntegerField;
    EdicaoFLAG_CTRL: TSmallintField;
    DBGFIS_NFE_DUPNFE_VDUP: TdxDBGridMaskColumn;
    DBGFIS_NFE_DUPNFE_VDSC: TdxDBGridMaskColumn;
    ACTMDAppend: TAction;
    ACTMDEdit: TAction;
    ACTMDDelete: TAction;
    ACTMDPost: TAction;
    ACTMDCancel: TAction;
    ACTMDRefresh: TAction;
    DBGEdicaoNFE_PSBR: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_PSLQ: TdxDBGridCurrencyColumn;
    EDFINALIDADE_ABREV: TdxMaskEdit;
    TAB_CFOPFINALIDADE_ABREV: TIBStringField;
    DBGEdicaoNFE_RCOM: TdxDBGridMaskColumn;
    PECFOP: TdxPickEdit;
    DBGFIS_NFE_DUPNFE_CDNF: TdxDBGridColumn;
    DBGEdicaoNFE_VOUTRO: TdxDBGridMaskColumn;
    PNLSBRodape: TPanel;
    PNLSyncEvent: TPanel;
    PNLSyncAnimate: TPanel;
    GFASyncEvent: TRxGIFAnimator;
    PNLSyncRecords: TPanel;
    SBSyncRecords: TdxStatusBar;
    PNLMainEvent: TPanel;
    SBRodape: TdxStatusBar;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);

    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTPSQ_PED_RDVExecute(Sender: TObject);
    procedure ACTPSQ_NFE_ADMExecute(Sender: TObject);
    procedure ACTPSQ_NFE_NUMExecute(Sender: TObject);
    procedure ACTPSQ_NFE_SEQExecute(Sender: TObject);
    procedure ACTPSQ_TAB_CFOPExecute(Sender: TObject);
    procedure ACTPSQ_CAD_TRAExecute(Sender: TObject);
    procedure ACTPSQ_CAD_PROExecute(Sender: TObject);

    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTEDI_CAD_PADExecute(Sender: TObject);
    procedure ACTEDI_CAD_PROExecute(Sender: TObject);
    procedure ACTEDI_CAD_PRO_ESTExecute(Sender: TObject);

    procedure ACTMPAppendExecute(Sender: TObject);
    procedure ACTMPEditExecute(Sender: TObject);
    procedure ACTMPDeleteExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
    procedure ACTMPValidateExecute(Sender: TObject);
    procedure ACTMPCancelExecute(Sender: TObject);
    procedure ACTEmailExecute(Sender: TObject);
    procedure ACTImportaExecute(Sender: TObject);

    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure ACTMEDeleteExecute(Sender: TObject);
    procedure ACTMEPostExecute(Sender: TObject);
    procedure ACTMECancelExecute(Sender: TObject);

    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure ACTCheckErrorsExecute(Sender: TObject);

    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTVisualizaExecute(Sender: TObject);

    procedure ACTDashboardsExecute(Sender: TObject);
    procedure ACTProgressBarExecute(Sender: TObject);

    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTEveExpressExecute(Sender: TObject);

    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);

    procedure ACTNFeCalculateExecute(Sender: TObject);
    procedure ACTNFeICMSExecute(Sender: TObject);
    procedure ACTNFeCSTExecute(Sender: TObject);

    procedure ACTNFeDescontoExecute(Sender: TObject);
    procedure ACTNFeFreteExecute(Sender: TObject);
    procedure ACTNFeSeguroExecute(Sender: TObject);
    procedure ACTNFeCFOPExecute(Sender: TObject);

    procedure ACTNFeTriangularExecute(Sender: TObject);
    procedure ACTNFeBoletoExecute(Sender: TObject);
    procedure ACTNFeINFADCADExecute(Sender: TObject);

    procedure ACTNFeEdicaoExecute(Sender: TObject);
    procedure ACTNFeValidateExecute(Sender: TObject);

    procedure ACTNFePDFExecute(Sender: TObject);

    procedure ACTXMLCreateExecute(Sender: TObject);
    procedure ACTXMLValidateExecute(Sender: TObject);
    procedure ACTXMLLoteCreateExecute(Sender: TObject);
    procedure ACTXMLLoteRetornoExecute(Sender: TObject);
    procedure ACTXMLSendExecute(Sender: TObject);
    procedure ACTXMLImportaExecute(Sender: TObject);

    procedure EdicaoBeforeOpen(DataSet: TDataSet);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoAfterCancel(DataSet: TDataSet);
    procedure EdicaoAfterClose(DataSet: TDataSet);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure EdicaoBeforeClose(DataSet: TDataSet);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
    procedure EdicaoBeforeEdit(DataSet: TDataSet);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure EdicaoCalcFields(DataSet: TDataSet);
    procedure EdicaoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure EdicaoBeforeScroll(DataSet: TDataSet);
    procedure EdicaoAfterScroll(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure DBGEdicaoBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGEdicaoDblClick(Sender: TObject);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TAB_PAGAfterOpen(DataSet: TDataSet);
    procedure DBGEdicaoNFE_CPRODValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure FIS_NFE_DUPNewRecord(DataSet: TDataSet);
    procedure FIS_NFE_MAONewRecord(DataSet: TDataSet);
    procedure DBGPKSumarioCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGFKSumarioCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FIS_NFE_DUPNFE_VORIGValidate(Sender: TField);
    procedure EdicaoNFE_CFOPValidate(Sender: TField);
    procedure EdicaoNFE_ORIGValidate(Sender: TField);
    procedure EdicaoNFE_CSTValidate(Sender: TField);
    procedure EdicaoNFE_UCOMValidate(Sender: TField);
    procedure EdicaoNFE_QCOMValidate(Sender: TField);
    procedure EdicaoNFE_VPRODValidate(Sender: TField);
    procedure EdicaoNFE_CSTIPIValidate(Sender: TField);
    procedure EdicaoNFE_PIPIValidate(Sender: TField);
    procedure DBGEdicaoNFE_CFOPValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoNFE_QCOMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoNFE_VICMSValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CECDNFValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DEdhSaiEntDblClick(Sender: TObject);
    procedure IEFinNFeChange(Sender: TObject);
    procedure IETPAGChange(Sender: TObject);
    procedure EDCDPDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEPDSCValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEIDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEBOLETOChange(Sender: TObject);
    procedure EDISUFValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEindIEDestChange(Sender: TObject);
    procedure EDidEstrangeiroValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure BECMunValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEUFChange(Sender: TObject);
    procedure IExPaisChange(Sender: TObject);
    procedure CER_IDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEIDCTValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEindFinalValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IEICMS_STValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IECredICMSValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGEdicaoNFE_NCMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure FIS_NFE_ADMNewRecord(DataSet: TDataSet);
    procedure DEdhSaiEntChange(Sender: TObject);
    procedure ACTMDAppendExecute(Sender: TObject);
    procedure ACTMDEditExecute(Sender: TObject);
    procedure ACTMDDeleteExecute(Sender: TObject);
    procedure ACTMDPostExecute(Sender: TObject);
    procedure ACTMDCancelExecute(Sender: TObject);
    procedure ACTMDRefreshExecute(Sender: TObject);
    procedure FIS_NFE_DUPBeforeInsert(DataSet: TDataSet);
    procedure FIS_NFE_DUPAfterInsert(DataSet: TDataSet);
    procedure FIS_NFE_DUPBeforeEdit(DataSet: TDataSet);
    procedure FIS_NFE_DUPBeforeDelete(DataSet: TDataSet);
    procedure FIS_NFE_DUPAfterDelete(DataSet: TDataSet);
    procedure FIS_NFE_DUPAfterPost(DataSet: TDataSet);
    procedure FIS_NFE_DUPBeforeCancel(DataSet: TDataSet);
    procedure DTSFIS_NFE_DUPStateChange(Sender: TObject);
    procedure EDInfAdNFChange(Sender: TObject);
    procedure LAIDCDClick(Sender: TObject);
    procedure PECFOPValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    { Private declarations }
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    { ID }
    AID: Integer;
    
    { DESCONTOS }
    ADSC_NREG: Integer; { Nº Registros }
    ADSC_VREG,          { R$ Registros }
    ADSC_VSLD: Double;  { R$ Saldo }

    { FRETE }
    AFRT_NREG: Integer; { Nº Registros }
    AFRT_VREG,          { R$ Registros }
    AFRT_VSLD: Double;  { R$ Saldo }

    { SEGURO }
    ASEG_NREG: Integer; { Nº Registros }
    ASEG_VREG,          { R$ Registros }
    ASEG_VSLD: Double;  { R$ Saldo }

    AINFADTRIB: TStringList;

    RECRomaneio,
    RECNFTriangular: TRECPEdidos;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);

    procedure _DoCommitWait;
    procedure _DoCommitWaitProdutos;

  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    NewCHNFE,NewCDNF  ,NewDTNF  ,NewORIG     ,NewNCM,NewPICMS,NewVBC,NewCSTIPI,
    NewPIPI ,NewVBCIPI,NewVBCPIS,NewVBCCOFINS,NewCST: string;

    property _GetCurrentAlert: String  read FCurrentAlert write _SetCurrentAlert;
    property _GetCurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property _GetForceClose  : Boolean read FForceClose   write _SetForceClose;

    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;
    procedure _WM_AFTER_CREATE(var Msg: TMessage); message WM_AFTER_CREATE;

    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;

    procedure _WM_SHOW(var Msg: TMessage); message WM_SHOW;
    procedure _WM_AFTER_SHOW(var Msg: TMessage); message WM_AFTER_SHOW;

    procedure _WM_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    Constructor Create(AOwner: TComponent;
                 const AIDPK : LongInt = 0 ;
                       ADEPK : String  = '';
                       AIDEV : LongInt = 0 ;
                       ACDEV : Word    = 0 ;
                       ATPEV : Word    = 0 ;

                       AFB_SQL_TAB: String = '';
                       AFB_SQL_GET: String = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK : LongInt = 0 ;
                              ADEPK : String  = '';
                              AIDEV : LongInt = 0 ;
                              ACDEV : Word    = 0 ;
                              ATPEV : Word    = 0 ;

                              AFB_SQL_TAB: String = '';
                              AFB_SQL_GET: String = '');

    Destructor  Destroy; override;
  end;

var
  FrmVEN_NFE: TFrmVEN_NFE;                                       
  _Form: TStringList = Nil;

implementation

uses uPrincipal, bPrincipal, pemail, pNFeConsultaSefaz;

{$R *.dfm}

procedure TFrmVEN_NFE._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmVEN_NFE._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmVEN_NFE._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmVEN_NFE._WM_CREATE(var Msg: TMessage);
begin
  { INICIALIZA }
  Screen.Cursor := crAppStart;  { Cursor }
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
  oIRECPedidos(RECRomaneio    ,laNone);
  oIRECPedidos(RECNFTriangular,laNone);

  { Pega dados de origem }
  NewCHNFE     := EmptyStr;
  NewCDNF      := EmptyStr;
  NewDTNF      := EmptyStr;

  NewORIG      := EmptyStr;
  NewCST       := EmptyStr;

  NewVBC       := EmptyStr;
  NewPICMS     := EmptyStr;

  NewNCM       := EmptyStr;
  NewCSTIPI    := EmptyStr;
  NewPIPI      := EmptyStr;
  NewVBCIPI    := EmptyStr;

  NewVBCPIS    := EmptyStr;
  NewVBCCOFINS := EmptyStr;
end;

procedure TFrmVEN_NFE._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicativo }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Desktop }

  { CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;
end;

procedure TFrmVEN_NFE._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  ACTEveRegister.Execute; { Registro }
end;

procedure TFrmVEN_NFE._SW_SHOWNOACTIVATE(var Msg: TMessage);
          procedure _ProcessPaintMessages; // << not tested, pulled out of code
          var
            Msg: TMsg;
          begin
            while PeekMessage(msg, 0, WM_PAINT, WM_PAINT, PM_REMOVE) do
                  DispatchMessage(msg);
          end;
begin
  _ProcessPaintMessages;
end;

procedure TFrmVEN_NFE._WM_SHOW(var Msg: TMessage);
begin
  { BEFORE SHOWNING }
  Screen.Cursor := crHourGlass; { Cursor }
  REC_SHE_DEF.FResize := 0;     { Form Resize }

  { SQL INJECTION}
  ALockWindowUpdate := True; { Habilita }

  { CALCULO FISCAL }
  ACTNFeCalculate.Tag := 1; { Desabilita }

  ACTConsulta.Execute; { Tabelas }
  ACTEdicao.Execute;   { Edições }
end;

procedure TFrmVEN_NFE._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { INICIALIZAÇÃO DOS COMPONENTES }
  oPRN_EXE(Application.Handle,'Relatórios');
  
  try
    Screen.Cursor := crAppStart;
    SBMenuPrincipal.Enabled := False;
    PNLPrincipal.Enabled    := False;

    { AFTER SHOWNING }
    ACTPesquisa.Execute; { Pesquisa Principal }

  finally
    Screen.Cursor := crDefault;
    SBMenuPrincipal.Enabled := True;
    PNLPrincipal.Enabled    := True;

    { SQL INJECTION }
    ALockWindowUpdate := False; { Desabilita }
    REC_SHE_DEF.FInitialize := False; { Finaliza Inicialização }

    if Showing then
    if EDDECD.Enabled  then
    begin
      PostMessage(TWinControl(EDDECD).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(EDDECD).SetFocus;
    end else
    begin
      PostMessage(TWinControl(CEQVOL).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(CEQVOL).SetFocus;
    end;

    PCEdicao.ActivePage := TSProduto;
    oState(Edicao,SBMenuEdicao);
    Edicao.Last;
  end;
end;

procedure TFrmVEN_NFE._WM_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  REC_SHE_DEF.FResize := REC_SHE_DEF.FResize + 1;

  { FORM SCREEN }
  if REC_SHE_DEF.FMainArea then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FWorkArea := False;
  end else

  if REC_SHE_DEF.FWorkArea then
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FMainArea := False;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;
end;

procedure TFrmVEN_NFE._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if REC_SHE_DEF.FResize >= 2 then
     try
       oResize(DBGEdicao);
       Paint;
     finally
       Screen.Cursor := crDefault;
       REC_SHE_DEF.FResize := 0;
     end;
end;

Constructor TFrmVEN_NFE.Create(AOwner: TComponent;
                         const AIDPK : LongInt = 0 ;
                               ADEPK : String  = '';
                               AIDEV : LongInt = 0 ;
                               ACDEV : Word    = 0 ;
                               ATPEV : Word    = 0 ;

                               AFB_SQL_TAB: String = '';
                               AFB_SQL_GET: String = '');
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);
  REC_SHE_DEF.TPEV := INTTOSTR(ATPEV);

  REC_SHE_DEF.FB_SQL_TAB := TRIM(AFB_SQL_TAB);
  REC_SHE_DEF.FB_SQL_GET := TRIM(AFB_SQL_GET);

  inherited Create(AOwner);
end;

Class procedure TFrmVEN_NFE._ExecForm(AOwner : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                      AIDPK : LongInt = 0 ;
                                      ADEPK : String  = '';
                                      AIDEV : LongInt = 0 ;
                                      ACDEV : Word    = 0 ;
                                      ATPEV : Word    = 0 ;

                                      AFB_SQL_TAB: String = '';
                                      AFB_SQL_GET: String = '');
var
  idxForm: Integer;
begin
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (ACDEV = 1)) then
  TForm(AForm) := Self.Create (AOwner    ,
                               AIDPK     ,
                               ADEPK     ,
                               AIDEV     ,
                               ACDEV     ,
                               ATPEV     ,
                               AFB_SQL_TAB ,
                               AFB_SQL_GET);

  _Form.Objects[idxForm] := TObject(@AForm);

  if AFormStyle <> fsStayOnTop then
  begin
    TForm(AForm).FormStyle := AFormStyle;

    if TForm(AForm).FormStyle = fsNormal then
    begin
      TForm(AForm).Visible := False;
      TForm(AForm).ShowModal;
    end else
    begin
      TForm(AForm).Visible := True;
      TForm(AForm).Show;
    end;
  end;
end;

Destructor TFrmVEN_NFE.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  Screen.Cursor := crAppStart;
  try
    if TForm(Self).Name <> EmptyStr then
    if Assigned(_Form) and _Form.Find(ClassName,idxForm) and (_Form.Objects[idxForm] <> Nil) then

    try
      { Eventos }
      try
        try
          EEvent.UnRegisterEvents;
        except
          on E: Exception do
          begin
            oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                     'Error Code: '+E.Message+'.'      +#13+
                                      Caption+'.');
          end;
        end;

      finally
        try
          { Transação Principal }
          try
            oFTransact(TConsulta); { Consultas }
            oFTransact(TEvent   ); { Eventos }
            oFTransact(TSEdicao ); { Edições Temporárias }
          except
            on E: Exception do
            begin
              oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                       'Error Code: '+E.Message+'.'      +#13+
                                        Caption+'.');
            end;
          end;

        finally
          { record e afins }
          try
            oFREC_SHE_DEF(REC_SHE_DEF);
          except
            on E: Exception do
            begin
             oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                      'Error Code: '+E.Message+'.'        +#13+
                                       Caption+'.');
            end;
          end;

        end;
      end;

    finally
      PtrForm(_Form.Objects[idxForm])^ := Nil;
      _Form.Objects[idxForm] := Nil;
    end;

  finally
    Screen.Cursor := crDefault;
    inherited;
  end;
end;

procedure TFrmVEN_NFE.FormCreate(Sender: TObject);
begin
  Self.DoubleBuffered := True;

  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }
  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { EVENTOS }
  REC_SHE_DEF.FB_Event   := 'FIS_NFE_ADM'; { Evento Principal }
  REC_SHE_DEF.FB_EVE_EDT := 'PED_PDV_ADM'; { Evento Edição }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Fiscal';
  REC_SHE_DEF.GReferencia := 'NFe';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  { VALIDATE GRANT USER }
  REC_SHE_DEF.GAppend   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GEdit     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GDelete   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GPost     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GValidate := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GCancel   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GView     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GPrint    := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GControl  := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GAdmin    := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  if not REC_SHE_DEF.GAdmin then
  begin
    { SET GRANT USERT }
    oUSER(REC_SHE_DEF);

    { MANAGER ACCESS }
    ACTMPAppend.Enabled   := (REC_SHE_DEF.GPost and REC_SHE_DEF.GAppend);
    ACTMPEdit.Enabled     := (REC_SHE_DEF.GPost and REC_SHE_DEF.GEdit  );
    ACTMPDelete.Enabled   := (REC_SHE_DEF.GPost and REC_SHE_DEF.GDelete);

    ACTMPPost.Enabled     := (REC_SHE_DEF.GPost    );
    ACTMPValidate.Enabled := (REC_SHE_DEF.GValidate);
    ACTMPCancel.Enabled   := (REC_SHE_DEF.GCancel  );
  end;
  
  if not REC_SHE_DEF.GView then
  _GetForceClose := True else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  _GetForceClose := False;

  { ACCESS DENIED }
  if (FForceClose) and (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                        RECParametros.STCX ;
  end else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                       'Usuário não Autorizado';
  end;

  { ACCESS ABORT }
  if FForceClose then
  begin
    oErro(Application.Handle,FCurrentAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
    Exit;
  end else
  PostMessage( Handle, WM_AFTER_CREATE, 0, 0);
end;

procedure TFrmVEN_NFE.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmVEN_NFE.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmVEN_NFE.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
  if Edicao.State in [dsInsert,dsEdit] then
  Edicao.Post;

  if ((Edicao.RecNo > 0) and (CECDRO.Value = 0) and REC_SHE_DEF.Editing) then

  Case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                         'Sair mesmo assim ?',
                          PChar(Caption)  ,
                          MB_ICONQUESTION + MB_YESNOCANCEL) of
       mrCancel,
       mrNo: Abort;
  end;
end;

procedure TFrmVEN_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{ try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE NFE_EMI ');
      SQL.Add('SET    FLAG = 1');
      SQL.Add('WHERE  CDNF = ''' + CECDNF.Text + '''');
      SQL.Add('AND    CDNF_REM = 0');
      SQL.Add('AND    TIPO = ''NORMAL''');
      ExecQuery;
    end;
    oCTransact(TEdicao);
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);

      oErro(Application.Handle,
      'Falha ao tentar registrar disponibilidade de numerações !' + #13 +
      'Favor entrar em contato com o administrador do sistema.'   + #13 + #13 +
      'Error Code: ' + E.Message + '.');
    end;
  end; }

  Action := caFree;
end;

procedure TFrmVEN_NFE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
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
  end;
end;

procedure TFrmVEN_NFE.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  i: Word;
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  REC_SHE_DEF.FTop    := AMainFormScreen.Top;
  REC_SHE_DEF.FBottom := AMainFormScreen.Bottom;
  REC_SHE_DEF.FLeft   := AMainFormScreen.Left;
  REC_SHE_DEF.FRight  := AMainFormScreen.Right;
  REC_SHE_DEF.FHeight := AMainFormScreen.Bottom;

  if REC_SHE_DEF.FPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    Self.HelpContext := 95; { % }

    REC_SHE_DEF.FMainHeight := IFThen(Self.HelpContext     > 0,Trunc((REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop ) * (Self.HelpContext     / 100)),0);
    REC_SHE_DEF.FMainWidth  := IFThen(Self.AlphaBlendValue > 0,Trunc((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) * (Self.AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FMainTop > 0) and (REC_SHE_DEF.FMainLeft > 0) then
    begin
      Self.Top  := REC_SHE_DEF.FTop + 5;
      Self.Left := REC_SHE_DEF.FLeft;

      if Self.Top + Self.Height > REC_SHE_DEF.FBottom then
      begin
        Self.Top := Self.Top - ((Self.Top + Self.Height) - REC_SHE_DEF.FBottom);
      end;

      if Self.Left + Self.Width > REC_SHE_DEF.FRight then
      begin
        Self.Left := Self.Left - ((Self.Left + Self.Width) - REC_SHE_DEF.FRight);
      end;

    end else
    begin
      if REC_SHE_DEF.FMainHeight > 0 then Self.Height := REC_SHE_DEF.FMainHeight;
      if REC_SHE_DEF.FMainWidth  > 0 then Self.Width  := REC_SHE_DEF.FMainWidth;

      if FormStyle = fsNormal then
      begin
        Self.Top  := ( REC_SHE_DEF.FTop   + (REC_SHE_DEF.FHeight - Self.Height)) div 2;
        Self.Left := ((REC_SHE_DEF.FRight +  REC_SHE_DEF.FLeft)  - Self.Width)   div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Self.Top  := ((REC_SHE_DEF.FBottom - REC_SHE_DEF.FTop ) - Self.Height) div 2;
        Self.Left := ((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) - Self.Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := Screen.WorkAreaTop;
    Self.Left   := Screen.WorkAreaLeft;
    Self.Width  := Screen.WorkAreaWidth;
    Self.Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := 0;
    Self.Left   := 0;
    Self.Width  := REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5;
    Self.Height := REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5;
  end else
  if REC_SHE_DEF.FPosition = poDefault then
  begin
    Self.Top    := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FTop ,0);
    Self.Left   := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FLeft,0);
    Self.Width  := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5,0);
    Self.Height := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5,0);
  end;

  { RODAPÉ }
  REC_SHE_DEF.FMainWidth := Self.Width;
  for i  := 0 to SBRodape.Panels.Count - 1 do
  if  i  <> 2 then
  REC_SHE_DEF.FMainWidth   := REC_SHE_DEF.FMainWidth - SBRodape.Panels[i].Width;
  SBRodape.Panels[2].Width := REC_SHE_DEF.FMainWidth - 40;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FMainWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FMainHeight) + '. ' + Self.Caption;
end;

procedure TFrmVEN_NFE.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmVEN_NFE.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Edicao);
end;

procedure TFrmVEN_NFE.ACTSaidaExecute(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
  ACTMECancel.Execute else
  begin
    SBRodape.Panels[1].Text := 'Saindo ....';
    SBRodape.Update;
    
    Self.Close;
  end;  
end;

procedure TFrmVEN_NFE.ACTConsultaExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Principal }
  with SQLConsulta do
  begin
    if REC_SHE_DEF.IDEV = 0 then
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_FIS_NFE_EVE,1) FROM RDB$DATABASE');
      ExecQuery;

      REC_SHE_DEF.IDEV := Current.Vars[0].AsString;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   CFOP FROM TAB_NAT');
    SQL.Add('ORDER BY CFOP');
    ExecQuery;
    while not eof do
    begin
      PECFOP.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   FANTASIA FROM CAD_TRA');
    SQL.Add('WHERE    CDST = 30');
    SQL.Add('ORDER BY FANTASIA ');
    ExecQuery;
    while not eof do
    begin
      PEDECT.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   DESCRICAO FROM TAB_PAG');
    SQL.Add('ORDER BY PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IECDPG.Descriptions.Add(Current.Vars[0].AsString);
      IECDPG.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   UF FROM CEP_LOG_UF');
    SQL.Add('ORDER BY UF');
    ExecQuery;
    while not eof do
    begin
      IEUF.Descriptions.Add(Current.Vars[0].AsString);
      IEUF.Values.Add(Current.Vars[0].AsString);
      next;
    end;
    IEUF.Text := RECParametros.LOG_UF;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   CPAIS,XPAIS FROM TAB_PAIS');
    SQL.Add('ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IExPais.Descriptions.Add(Current.Vars[1].AsString);
      IExPais.Values.Add(Current.Vars[0].AsString);
      next;
    end;
    IExPais.Text := '1058';
  end;
end;

procedure TFrmVEN_NFE.ACTPesquisaExecute(Sender: TObject);
begin
  { INICIALIZA PARÂMETROS DA PESQUISA }
  with REC_SHE_DEF do
  begin
    { FIREBIRD PESQUISA PRIMÁRIA }
    { PADRÃO }
    FB_PSQ_ID  := '0';      { Identificador }
    FB_PSQ_CPL := EmptyStr; { Complemento }
    FB_PSQ_SBQ := False;    { Sub Query }
    PSQ_OK  := False;    { Validação }

    { TEXTO }
    FB_PSQ_FD_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_PK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_PK := 0;        { Valor  }

    { FIREBIRD PESQUISA SECUNDÁRIA }
    { TEXTO }
    FB_PSQ_FD_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_FK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_FK := 0;        { Valor  }

    { ÂNCORAS PRINCIPAIS }
    { Empresas }
    EP_NO := EmptyStr; { Empresa }
    CF_NO := EmptyStr; { Fabricante }

    { Situações }
    DEST := EmptyStr; { Descrição }
    STFI := EmptyStr; { Descrição Abreviada }

    { Produtos }
    ARTIGO     := EmptyStr; { Artigo }
    SKU        := EmptyStr; { SKU }
    NCM        := EmptyStr; { NCM }
    GRADE      := EmptyStr; { Grade }
    DESCRICAO  := EmptyStr; { Nome / Descrição }
    COMPOSICAO := EmptyStr; { Composição }

    { Lista Digitada }
    if FList = Nil then
    FList := TStringList.Create else
    FList.Clear;
  end;

  { DESTINATÁRIO }
  if REC_SHE_DEF.FB_SQL_TAB = '1' then
  begin
    LAIDCD.Caption := 'Fornecedor';
    LAIDCD.Tag     := 1;
  end else

  if REC_SHE_DEF.FB_SQL_TAB = '2' then
  begin
    LAIDCD.Caption := 'Representante';
    LAIDCD.Tag     := 2;
  end else

  if REC_SHE_DEF.FB_SQL_TAB = '3' then
  begin
    LAIDCD.Caption := 'Transportadora';
    LAIDCD.Tag     := 3;
  end else
  begin
    LAIDCD.Caption := 'Cliente';
    LAIDCD.Tag     := 0;
  end;

  { FRETE }
  CEQVOL.Value := 0;
  CEPSBR.Value := 0;
  CEPSLQ.Value := 0;

  { INICIALIZA FORM SCREEN }
  { CARREGA PRODUTOS }
  if REC_SHE_DEF.IDPK > 0 then

  try
    Screen.Cursor := crHourGlass;
    ALockWindowUpdate := True;  { Habilita SQL INJECTION }

    if (REC_SHE_DEF.IDPK > 0) then
    if (REC_SHE_DEF.CDEV = 0) and (REC_SHE_DEF.TPEV = 0) then  { Triangular }
    ACTPSQ_NFE_ADM.Execute else

    if (REC_SHE_DEF.CDEV = 1) and (REC_SHE_DEF.TPEV = 0) then  { Normal Copiado }
    ACTPSQ_NFE_ADM.Execute else

    ACTPSQ_PED_RDV.Execute;
    if ((REC_SHE_DEF.IDPK = 0)) or (SQLPKConsulta.Eof) then
    Exit;
    
    { PEDIDO }
    EDCDPD.Text     := SQLPKConsulta.Current.ByName('DEPK').AsString;
    CEVTPV.Value    := SQLPKConsulta.Current.ByName('PV_TCDE').AsFloat;
    EDCDPD.ReadOnly := True;

    { ROMANEIO }
    RECRomaneio.CDRO := SQLPKConsulta.Current.ByName('CDRO').AsInteger;
    CECDRO.Value     := SQLPKConsulta.Current.ByName('CDRO').AsInteger;
    CECDRO.ReadOnly  := True;

    { SUMÁRIO }
    CETSDE.Value     := SQLPKConsulta.Current.ByName('PK_TSDE').AsFloat;
    CEVTRO.Value     := SQLPKConsulta.Current.ByName('PK_TCDE').AsFloat;

    CEPDSC.Value    := SQLPKConsulta.Current.ByName('PK_PDSC').Value;
    CEPDSC.ReadOnly := True;
    CEVDSC.Value    := SQLPKConsulta.Current.ByName('PK_VDSC').Value;
    LAPDSC.Tag      := IFThen(SQLPKConsulta.Current.ByName('PK_PDSC').AsFloat > 0,1,0);

    CEIDCD.Value    := SQLPKConsulta.Current.ByName('CD_ID').AsInteger;
    CEIDCD.Modified := True;
    CEIDCD.ValidateEdit;

    LAIDCD.Enabled := (CECDRO.Value = 0);
    CEIDCD.Enabled := (CECDRO.Value = 0);
    EDDECD.Enabled := (CECDRO.Value = 0);

    RECRomaneio.IDCV := SQLPKConsulta.Current.ByName('CV_ID').AsInteger;
    RECRomaneio.DECV := SQLPKConsulta.Current.ByName('CV_NO').AsString;
    RECRomaneio.IDCR := SQLPKConsulta.Current.ByName('CR_ID').AsInteger;
    RECRomaneio.DECR := SQLPKConsulta.Current.ByName('CR_NO').AsString;

    RECRomaneio.STPD     :=  SQLPKConsulta.Current.ByName('TPD_NO').AsString;
    RECRomaneio.FAPD     := (SQLPKConsulta.Current.ByName('FAPD').AsInteger = 1) or (SQLPKConsulta.Current.ByName('LQPD').AsInteger = 1);
    RECRomaneio.FIN_CSPD := (SQLPKConsulta.Current.ByName('CSPD').AsInteger = 1);

    RECRomaneio.STCO := SQLPKConsulta.Current.ByName('TCO_NO').AsString;
    RECRomaneio.TPCO := SQLPKConsulta.Current.ByName('CRD_NU').AsString;

    RECRomaneio.CDPG := SQLPKConsulta.Current.ByName('PRZ_ID').AsString;;
    RECRomaneio.DEPG := SQLPKConsulta.Current.ByName('PRZ_NO').AsString;;

    IECDPG.Text      := RECRomaneio.DEPG;
    IEBOLETO.Text    := IFThen((RECRomaneio.FAPD) and (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0),'SIM','NÃO');
    IEBOLETO.Enabled := (RECRomaneio.FAPD) and (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0);

    RECRomaneio.PK_DEST :=  SQLPKConsulta.Current.ByName('DEST').AsString;

    { NATUREZA DE OPERAÇÃO }
    ACTPSQ_TAB_CFOP.Caption := 'NFE_CFOP'; { Field }
    PECFOP.Text             := SQLPKConsulta.Current.ByName('CFOP').AsString; { Value }

    { TRIANGULAR }
    if (REC_SHE_DEF.CDEV = 0) and (REC_SHE_DEF.TPEV = 0) then
    PECFOP.Text := IFThen(PECFOP.Text = '5123','5924',
                   IFThen(PECFOP.Text = '6123','6924',
                   PECFOP.Text));

    PECFOP.Modified := True;
    PECFOP.ValidateEdit;

    { TRANSPORTADORA }
    ACTPSQ_CAD_TRA.Caption     := 'CT_ID'; { Field }
    ACTPSQ_CAD_TRA.HelpKeyWord := SQLPKConsulta.Current.ByName('CT_ID').AsString; { Value }
    ACTPSQ_CAD_TRA.Execute;

    { FRETE }
    if (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('O PRÓPRIO',PEDECT.Text) > 0) then
    IEModFrete.Text := '4' else
    IEModFrete.Text := SQLPKConsulta.Current.ByName('FRT_MODELO').AsString;
    IEModFrete.Modified := True;
    IEModFrete.ValidateEdit;

    CEVFRT.Value := SQLPKConsulta.Current.ByName('FRT_VFRT').AsFloat;

    { INFORMAÇÕES ADICIONAIS }
    EDInfAdPed.Text := SQLPKConsulta.Current.ByName('INFADCAD').AsString; { Pedido }

    try { Sincronismo }
      if REC_SHE_DEF.FInitialize then
      begin
        GFASyncEvent.Animate := True;
        PNLSyncEvent.Width   := 500;
        SBSyncRecords.Panels[0].Text := 'Processando ...';

        Application.ProcessMessages;
      end;
      
      try { Edição }
        Edicao.DisableControls;
        while not SQLPKConsulta.Eof do
        begin
          SBSyncRecords.Panels[0].Text := 'Aguarde, carregando registro item nº' + SQLPKConsulta.Current.ByName('ITEM').AsString  + ' - ' + SQLPKConsulta.Current.ByName('SKU').AsString     +
                                                                              Trim(SQLPKConsulta.Current.ByName('CP_NO').AsString + ' '   + SQLPKConsulta.Current.ByName('GRD_NO').AsString) + ' ...';
          SBSyncRecords.Update;

          { FRETE }
          CEQVOL.Value := CEQVOL.Value + SQLPKConsulta.Current.ByName('QTRL').AsInteger;
          CEPSBR.Value := CEPSBR.Value + SQLPKConsulta.Current.ByName('PSBR').AsCurrency;
          CEPSLQ.Value := CEPSLQ.Value + SQLPKConsulta.Current.ByName('PSLQ').AsCurrency;

          Edicao.Append;
          EdicaoEP_ID.Value        := RECParametros.EP_ID;
          EdicaoCF_ID.Value        := SQLPKConsulta.Current.ByName('CF_ID').AsInteger;

          EdicaoEP_CP_ID.Value     := SQLPKConsulta.Current.ByName('EP_CP_ID').AsInteger;
          EdicaoCP_ID.Value        := SQLPKConsulta.Current.ByName('CP_ID'   ).AsInteger;
          EdicaoCP_AK_ID.Value     := SQLPKConsulta.Current.ByName('AK_ID'   ).AsInteger;
          EdicaoCP_IMG_ID.Value    := SQLPKConsulta.Current.ByName('IMG_ID'  ).AsInteger;
    
          EdicaoNFE_NITEMPED.Value := SQLPKConsulta.Current.ByName('ITEM' ).AsInteger;
          EdicaoNFE_CPROD.Value    := SQLPKConsulta.Current.ByName('SKU' ).AsString;
          EdicaoNFE_CEAN.Value     := SQLPKConsulta.Current.ByName('CEAN').AsString;
    
          EdicaoNFE_NCM.Value      := SQLPKConsulta.Current.ByName('NCM').AsString;
          EdicaoNFE_PIPI.Value     := SQLPKConsulta.Current.ByName('PIPI').AsFloat;
          EdicaoNFE_CEST.Value     := SQLPKConsulta.Current.ByName('CEST').AsString;
          EdicaoNFE_EXTIPI.Value   := SQLPKConsulta.Current.ByName('EXTIPI').AsString;
    
          EdicaoNFE_XPROD.Value    := Trim(SQLPKConsulta.Current.ByName('CP_NO').AsString + ' ' + SQLPKConsulta.Current.ByName('GRD_NO').AsString);

          EdicaoNFE_UCOM.Value     := SQLPKConsulta.Current.ByName('UCOM' ).AsString;
          EdicaoNFE_UTRIB.Value    := SQLPKConsulta.Current.ByName('UTRIB').AsString;
          EdicaoCP_UQTDE.Value     := SQLPKConsulta.Current.ByName('UQTDE').AsFloat;
    
          EdicaoNFE_QCOM.Value     := SQLPKConsulta.Current.ByName('QTDE').AsCurrency;
          EdicaoNFE_RCOM.Value     := SQLPKConsulta.Current.ByName('QTRL').AsInteger;
    
          EdicaoNFE_VUNPAD.Value   := SQLPKConsulta.Current.ByName('VPRC_COM').AsCurrency;
          EdicaoNFE_VUNCOM.Value   := SQLPKConsulta.Current.ByName('VPRC_COM').AsCurrency;
    
          EdicaoNFE_VDESC.Value    := SQLPKConsulta.Current.ByName('PK_VDSC').AsCurrency;
    
          EdicaoNFE_ORIG.Value     := SQLPKConsulta.Current.ByName('ORIG').AsInteger;
          EdicaoNFE_NFCI.Value     := SQLPKConsulta.Current.ByName('NFCI').AsString;
    
          { INFORMAÇÕES ADICIONAIS }
          EdicaoNFE_INFADCAD.Value := EmptyStr;

          if SQLPKConsulta.Current.ByName('CMP_NO').AsString <> EmptyStr then
          EdicaoNFE_INFADCAD.Value := 'Composição Têxtil: ' + SQLPKConsulta.Current.ByName('CMP_NO').AsString + ' - ';

          if (SQLPKConsulta.Current.ByName('UQVOL').AsCurrency > 0) and (SQLPKConsulta.Current.ByName('UESP').AsString <> EmptyStr) then
          EdicaoNFE_INFADCAD.Value := EdicaoNFE_INFADCAD.AsString + 'Conteúdo Unitário: ' + SQLPKConsulta.Current.ByName('UQVOL').AsString + ' ' + SQLPKConsulta.Current.ByName('UESP').AsString;

          EdicaoNFE_PSBR.Value := SQLPKConsulta.Current.ByName('PSBR').AsCurrency;
          EdicaoNFE_PSLQ.Value := SQLPKConsulta.Current.ByName('PSLQ').AsCurrency;
          Edicao.Post;

          SQLPKConsulta.Next;
        end;

      finally { Edição }
        Edicao.EnableControls;
      end;

      if SQLPKConsulta.Current.ByName('PK_QVOL').AsInteger > 0 then
      begin
        CEQVOL.Value := SQLPKConsulta.Current.ByName('PK_QVOL').AsInteger;
        PEESP.Text   := SQLPKConsulta.Current.ByName('PK_ESP').AsString;
      end;
      
    finally { Sincronismo }
      { ENCERRA SINCRONISMO }
      if REC_SHE_DEF.FInitialize then
      begin
        GFASyncEvent.Animate := False;
        PNLSyncEvent.Width   := 0;
        SBSyncRecords.Panels[0].Text := EmptyStr;

        Application.ProcessMessages;
      end;
    end;

  finally { Pesquisa }

    { FINALIZA FORM SCREEN }
    Screen.Cursor := crDefault;

    { SQL INJECTION }
    ALockWindowUpdate := False; { Desabilita }
    TSEdicao.CommitRetaining;
    Edicao.Close;
    Edicao.Open;

    { CALCULO FISCAL }
    ACTNFeCalculate.Tag := 0; { Habilita }
    ACTNFeCalculate.Execute;

    if IEBoleto.Text <> 'NÃO' then
    ACTNFeBoleto.Execute; { Duplicatas }
  end;
end;

procedure TFrmVEN_NFE.ACTPSQ_PED_RDVExecute(Sender: TObject);
begin
  { ROMANEIOS }
  with SQLPKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT');
    SQL.Add('       PK.EP_ID ,CP.EP_ID AS EP_CP_ID,CP.CF_ID,CAST(COUNT(*) OVER() AS INTEGER) AS NRECNO,');
    SQL.Add('       PV.IDPK  ,PK.DEPK,PK.CDRO,');
    SQL.Add('       0 AS CDNF,NULL AS NFE_DEMI,NULL AS NFE_CHAV,NULL AS NFE_VNF,');

    SQL.Add('       PK.CD_ID ,CD.FANTASIA AS CD_NO,CD.RAZAO AS CD_RZ_NO,CD.UF,IIF(CD.UF = EP_EF.SGUF OR FEMPTY(CD.UF),TB_TPO_PED.CFOP_DUF,TB_TPO_PED.CFOP_FUF) AS CFOP,');
    SQL.Add('       PK.CR_ID ,CR.FANTASIA AS CR_NO,');
    SQL.Add('       PK.CV_ID ,CV.LOGIN    AS CV_NO,');
    SQL.Add('       PK.CT_ID,PK.MFRT AS FRT_MODELO,');

    SQL.Add('       TB_TPO_PED.DESCRICAO AS TPD_NO,PV.CSPD,PV.FAPD  ,PV.LQPD,');
    SQL.Add('       TB_TPO_COB.DESCRICAO AS TCO_NO,PV.TPCO AS CRD_NU,PK.CDPG AS PRZ_ID,TB_TPO_PRZ.DESCRICAO AS PRZ_NO,');

    SQL.Add('       FK.ITEM,FK.CP_ID,CP.AK_ID,CP.IMG_ID,CP.REST,FK.SKU,CP.CEAN,');
    SQL.Add('       TB_NCM.NCM,TB_NCM.TRIBIPI AS PIPI  ,TB_NCM.EXTIPI ,TB_NCM.CEST,');
    SQL.Add('       FK.DECP AS CP_NO,FK.DGCP  AS GRD_NO,CP.CMP_PAD AS CMP_NO,');
    SQL.Add('       FK.UCOM,CP.UTRIB,CP.UESP,');

    SQL.Add('       FK.VPRC_PAD,FK.VPRC_COM,');

    SQL.Add('       CAST(MAX(CP.UQTDE) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS UQTDE,');
    SQL.Add('       CAST(MAX(CP.UQVOL) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS UQVOL,');

    SQL.Add('       CAST(SUM(FK.QTDE) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS QTDE,');
    SQL.Add('       CAST(SUM(FK.QTRL) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS INTEGER)       AS QTRL,');
    SQL.Add('       CAST(SUM(FK.QTDE * FK.VPRC_COM) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI)     AS NUMERIC(15,2))  AS TCDE,');

    SQL.Add('       CAST(MAX(PK.VDSC) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS PK_VDSC,');
    SQL.Add('       CAST(MAX(PK.PDSC) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS PK_PDSC,');

    SQL.Add('       CAST(MAX(PK.TSDE) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS PK_TSDE,');
    SQL.Add('       CAST(MAX(PK.TCDE) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS PK_TCDE,');
    SQL.Add('       CAST(MAX(PV.TCDE) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS PV_TCDE,');

    SQL.Add('       CAST(MAX(PK.VFRT) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS FRT_VFRT,');
    SQL.Add('       CAST(SUM(FK.PSBR) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS PSBR,');
    SQL.Add('       CAST(SUM(FK.PSLQ) OVER(PARTITION BY FK.CP_ID,FK.ITEM,FK.VPRC_PAD,FK.VPRC_COM,FK.NFCI) AS NUMERIC(15,2)) AS PSLQ,');

    SQL.Add('       NULL AS PK_QVOL,NULL AS PK_ESP,');
    SQL.Add('       PK.DEST,CP.ORIG,FK.NFCI,PK.INFADCAD');

    SQL.Add('FROM ' + oREPZero('ROM_CAB'    ,'_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('JOIN ' + oREPZero('ROM_ITE'    ,'_',RECParametros.EP_ID,3) + ' AS FK ON (FK.CDRO = PK.CDRO)');
    SQL.Add('JOIN ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PV ON (PV.CDRO = PK.CDRO)');

    SQL.Add('JOIN TAB_PAR_SIS AS EP_EF ON (EP_EF.ID = PK.IDEP )');
    SQL.Add('JOIN CAD_CLI     AS CD    ON (CD.CD_ID = PK.CD_ID)');
    SQL.Add('JOIN CAD_REP     AS CR    ON (CR.CR_ID = PK.CR_ID)');
    SQL.Add('JOIN TAB_USER    AS CV    ON (CV.LG_ID = PK.CV_ID)');
    SQL.Add('JOIN CAD_PRO     AS CP    ON (CP.CP_ID = FK.CP_ID)');

    SQL.Add('JOIN TAB_TPO_PED AS TB_TPO_PED ON (TB_TPO_PED.ID   = PK.CDPD )');
    SQL.Add('JOIN TAB_TPO_COB AS TB_TPO_COB ON (TB_TPO_COB.ID   = PK.CDCO )');
    SQL.Add('JOIN TAB_PAG     AS TB_TPO_PRZ ON (TB_TPO_PRZ.CDPG = PK.CDPG )');

    SQL.Add('LEFT JOIN TAB_NCM AS TB_NCM ON (TB_NCM.NCM = FK.NCM)');

    SQL.Add('WHERE    PK.CDRO = ''' + REC_SHE_DEF.IDPK + '''');
    SQL.Add('ORDER BY FK.ITEM');
    ExecQuery;

    if Eof then
    Exit;
  end;
end;

procedure TFrmVEN_NFE.ACTPSQ_NFE_ADMExecute(Sender: TObject);
begin
  { TRIANGULAR }
  with SQLPKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT');
    SQL.Add('       PK.EP_ID,IIF(CP.EP_ID > 0,CP.EP_ID,PK.IDEP) AS EP_CP_ID,CP.CF_ID,CAST(COUNT(*) OVER() AS INTEGER) AS NRECNO,');
    SQL.Add('       PK.IDPK ,NULL AS DEPK,0 AS CDRO,');
    SQL.Add('       PK.CDNF ,PK.NFE_DEMI,PK.NFE_CHAV,PK.NFE_VNF,');


    if LAIDCD.Tag = 1 then { Fornecedores }
    SQL.Add('PK.CF_ID AS CD_ID,') else

    if LAIDCD.Tag = 2 then { Representantes }
    SQL.Add('PK.CR_ID AS CD_ID,') else

    if LAIDCD.Tag = 3 then { Transportadoras }
    SQL.Add('PK.CT_ID AS CD_ID,') else

    SQL.Add('PK.CD_ID,');  { Clientes }

    SQL.Add('       CD.FANTASIA  AS CD_NO,CD.RAZAO AS CD_RZ_NO,CD.UF,FK.NFE_CFOP AS CFOP,');
    SQL.Add('       PK.CR_ID,CR.FANTASIA  AS CR_NO,');
    SQL.Add('       PK.CV_ID,CV.LOGIN     AS CV_NO,');
    SQL.Add('       PK.CT_ID,PK.MFRT AS FRT_MODELO,');

    SQL.Add('       NULL AS TPD_NO,0     AS CSPD  ,IIF(TB_CFOP.FAPD = 1,1,0) AS FAPD,IIF(TB_CFOP.FAPD = 1,1,0) AS LQPD,');
    SQL.Add('       NULL AS TCO_NO,0     AS CRD_NU,0 AS PRZ_ID,NULL AS PRZ_NO,');

    SQL.Add('       FK.NFE_ITEMPED AS ITEM,FK.CP_ID,CP.AK_ID,CP.IMG_ID,CP.REST,FK.NFE_CPROD   AS SKU,FK.NFE_CEAN AS CEAN,');
    SQL.Add('       FK.NFE_NCM     AS NCM,FK.NFE_PIPI AS PIPI,FK.NFE_EXTIPI AS EXTIPI,FK.NFE_CEST AS CEST,');
    SQL.Add('       FK.NFE_XPROD   AS CP_NO,NULL AS GRD_NO,CP.CMP_PAD AS CMP_NO,');
    SQL.Add('       FK.NFE_UCOM    AS UCOM,CP.UTRIB,CP.UESP AS UESP,');

    SQL.Add('       FK.VPRC_PAD,FK.NFE_VUNCOM AS VPRC_COM,');

    SQL.Add('       CAST(MAX(CP.UQTDE) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS UQTDE,');
    SQL.Add('       CAST(MAX(CP.UQVOL) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS UQVOL,');

    SQL.Add('       CAST(SUM(FK.NFE_QCOM) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS QTDE,');
    SQL.Add('       CAST(SUM(FK.NFE_RCOM) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS INTEGER)       AS QTRL,');
    SQL.Add('       CAST(SUM(FK.NFE_QCOM * FK.NFE_VUNCOM) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED)   AS NUMERIC(15,2))  AS TCDE,');

    SQL.Add('       CAST(SUM(FK.NFE_VDESC) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS PK_VDSC,');
    SQL.Add('       CAST(MAX(0)            OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS PK_PDSC,');

    SQL.Add('       CAST(MAX(PK.NFE_VPROD) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS PK_TSDE,');
    SQL.Add('       CAST(MAX(PK.NFE_VNF  ) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS PK_TCDE,');
    SQL.Add('       CAST(MAX(PK.NFE_VNF  ) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS PV_TCDE,');

    SQL.Add('       CAST(MAX(PK.VFRT) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS FRT_VFRT,');
    SQL.Add('       CAST(MAX(TK.PSBR) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS PSBR,');
    SQL.Add('       CAST(MAX(TK.PSLQ) OVER(PARTITION BY FK.NFE_CPROD,FK.NFE_ITEMPED) AS NUMERIC(15,2)) AS PSLQ,');

    SQL.Add('       TK.QVOL AS PK_QVOL,TK.ESP AS PK_ESP,');
    SQL.Add('       PK.DEST,COALESCE(NULLIF(FK.NFE_ORIG,''''),0) AS ORIG,FK.NFE_NFCI AS NFCI,NULL AS INFADCAD');

    SQL.Add('FROM ' + oREPZero('NFE_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('JOIN ' + oREPZero('NFE_TRA','_',RECParametros.EP_ID,3) + ' AS TK ON TK.IDPK = PK.IDPK');
    SQL.Add('JOIN ' + oREPZero('NFE_ITE','_',RECParametros.EP_ID,3) + ' AS FK ON FK.IDPK = PK.IDPK');

    SQL.Add('JOIN TAB_NAT  AS TB_CFOP ON (TB_CFOP.CFOP = FK.NFE_CFOP)');

    if LAIDCD.Tag = 1 then { Fornecedores }
    SQL.Add('JOIN CAD_FOR  AS CD ON (CD.CF_ID = PK.CD_ID)') else

    if LAIDCD.Tag = 2 then { Representantes }
    SQL.Add('JOIN CAD_REP  AS CD ON (CD.CR_ID = PK.CD_ID)') else

    if LAIDCD.Tag = 3 then { Transportadoras }
    SQL.Add('JOIN CAD_TRA  AS CD ON (CD.CT_ID = PK.CD_ID)') else
    SQL.Add('JOIN CAD_CLI  AS CD ON (CD.CD_ID = PK.CD_ID)');  { Clientes }

    SQL.Add('LEFT JOIN CAD_REP  AS CR ON (CR.CR_ID = PK.CR_ID)');
    SQL.Add('LEFT JOIN TAB_USER AS CV ON (CV.LG_ID = PK.CV_ID)');

    SQL.Add('LEFT JOIN CAD_PRO AS CP ON (CP.SKU = FK.NFE_CPROD)');

    SQL.Add('WHERE PK.IDPK = ''' + REC_SHE_DEF.IDPK + '''');
    ExecQuery;
  end;

  if not SQLPKConsulta.Eof then
  begin
    { TRIANGULAR }
    if (Pos(SQLPKConsulta.Current.ByName('CFOP').AsString,'5102610251236123') > 0) and (REC_SHE_DEF.TPEV = 0) and (REC_SHE_DEF.CDEV = 0) then
    begin
      PCEdicao.ActivePage := TSNFTriangular;
      CER_CDNF.Value      := SQLPKConsulta.Current.ByName('CDNF').AsInteger;
      CER_IDCD.Value      := SQLPKConsulta.Current.ByName('CD_ID').AsInteger;
      EDR_DECD.Text       := SQLPKConsulta.Current.ByName('CD_NO').AsString;
      EDR_DECD.Enabled    := False;
      CER_IDCD.Modified   := True;
      CER_IDCD.ValidateEdit;
    end;

    { COPIA }
    NewCHNFE := SQLPKConsulta.Current.ByName('NFE_CHAV').AsString;
    NewCDNF  := SQLPKConsulta.Current.ByName('CDNF').AsString;
    NewDTNF  := SQLPKConsulta.Current.ByName('NFE_DEMI').AsString;
    NewVBC   := SQLPKConsulta.Current.ByName('NFE_VNF' ).AsString;
  end;
end;

procedure TFrmVEN_NFE.ACTPSQ_NFE_NUMExecute(Sender: TObject);
begin
  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      { TRIANGULAR FATURA }
      if ACTPSQ_NFE_NUM.HelpKeyword = 'TRIANGULAR' then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.CDNF FROM NFE_EMI AS PK');
        SQL.Add('WHERE  PK.CDNF_REM = ''' + CECDNF.Text + '''');
        ExecQuery;
        CER_CDNF.Value := Current.Vars[0].AsInteger;

        if CER_CDNF.Value = 0 then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT RCDNF,TCDNF FROM SP_NFE_EMI (   ');
          SQL.Add(''''  + RECParametros.EP_ID        + ''',');
          SQL.Add(''''  + RECUsuarios.ID             + ''',');
          SQL.Add(''''  + RECParametros.EP_NO_GP     + ''',');
          SQL.Add(''''  + ACTPSQ_NFE_NUM.HelpKeyword + ''',');
          SQL.Add(''''  + RECParametros.IP           + ''',');
          SQL.Add(''''  + RECParametros.HOST         + ''')');
          ExecQuery;
          CECDNF.Value   := Current.Vars[0].AsInteger;
          CER_CDNF.Value := Current.Vars[1].AsInteger;
        end;
      end else

      { TRIANGULAR REMESSA }
      if REC_SHE_DEF.DEPK <> EmptyStr then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.CDNF FROM NFE_EMI AS PK');
        SQL.Add('WHERE  PK.CDNF_REM = ''' + REC_SHE_DEF.DEPK + '''');
        ExecQuery;
        CECDNF.Value := Current.Vars[0].AsInteger;
      end else
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT RCDNF,TCDNF FROM SP_NFE_EMI (   ');
        SQL.Add(''''  + RECParametros.EP_ID        + ''',');
        SQL.Add(''''  + RECUsuarios.ID             + ''',');
        SQL.Add(''''  + RECParametros.EP_NO_GP     + ''',');
        SQL.Add(''''  + ACTPSQ_NFE_NUM.HelpKeyword + ''',');
        SQL.Add(''''  + RECParametros.IP           + ''',');
        SQL.Add(''''  + RECParametros.HOST         + ''')');
        ExecQuery;
        CECDNF.Value := Current.Vars[0].AsInteger; { Normal }
      end;
    end;
    oCTransact(TEdicao);

    if CECDNF.Tag <> Trunc(CECDNF.Value) then
    begin
      CECDNF.Modified := True;
      CECDNF.ValidateEdit;
    end;
  except
    oCTransact(TEdicao,ltRollback);

    CECDNF.Value   := 0;
    CER_CDNF.Value := 0;
  end;
end;

procedure TFrmVEN_NFE.ACTPSQ_NFE_SEQExecute(Sender: TObject);
begin
  if uPSQ_NFE_MAX(RECParametros.EP_NO_GP) - CECDNF.Value < -10 then
  begin
    ACTNFeEdicao.Execute;
    oException(CECDNF,'Número informado é muito maior que o número da' + #13 +
                      'Última numeração emitida: ' + uPSQ_NFE_MAX(RECParametros.EP_NO_GP) + '.' + #13 + #13 +
                      'Favor entrar em contato com o administrador do sistema.');
  end;
end;

procedure TFrmVEN_NFE.ACTPSQ_TAB_CFOPExecute(Sender: TObject);
begin
  { DEFAULT }
  if ACTPSQ_TAB_CFOP.HelpKeyWord = EmptyStr then
  begin
    ACTPSQ_TAB_CFOP.Caption     := 'CFOP';
    ACTPSQ_TAB_CFOP.HelpKeyWord := PECFOP.Text;
  end;

  if (ACTPSQ_TAB_CFOP.Caption = EmptyStr) and (ACTPSQ_TAB_CFOP.HelpKeyWord = EmptyStr) then
  Exit;

  if (ACTPSQ_TAB_CFOP.HelpKeyWord <> TAB_CFOPCFOP.AsString) or (ACTPSQ_TAB_CFOP.HelpKeyWord <> PECFOP.Text) then
  begin
    TAB_CFOP.Close;
    TAB_CFOP.ParamByName('EP_ID').Value := RECParametros.EP_ID;
    TAB_CFOP.ParamByName('CFOP' ).Value := ACTPSQ_TAB_CFOP.HelpKeyWord;
    TAB_CFOP.Prepare;
    TAB_CFOP.Open;
  end;

  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  try
    ALockWindowUpdate := True;
    Edicao.DisableControls;
    Edicao.First;

    while not Edicao.Eof do
    begin
      Edicao.Edit;
      EdicaoNFE_CFOP.Value := ACTPSQ_TAB_CFOP.HelpKeyWord;
      Edicao.Post;
      Edicao.Next;
    end;

    TSEdicao.CommitRetaining;
  finally
    ALockWindowUpdate := False;

    Edicao.EnableControls;
    Edicao.Close;
    Edicao.Open;
  end;

  if Pos(PECFOP.Text,'51236123') > 0 then
  begin
    EDCFOP_TPNF_NO.Text := EDCFOP_TPNF_NO.Text + ' TRIANGULAR';

    ACTPSQ_NFE_NUM.HelpKeyword := 'TRIANGULAR';
    ACTPSQ_NFE_NUM.Execute;

    ACTNFeTriangular.Execute; { RICARDO - TESTAR TRIANGULAR }
  end;

  ACTNFeCalculate.Execute;
end;

procedure TFrmVEN_NFE.ACTPSQ_CAD_TRAExecute(Sender: TObject);
begin
  { DEFAULT }
  if ACTPSQ_CAD_TRA.HelpKeyWord = EmptyStr then
  begin
    ACTPSQ_CAD_TRA.Caption     := 'FANTASIA';
    ACTPSQ_CAD_TRA.HelpKeyWord := PEDECT.Text;
  end;

  if (ACTPSQ_CAD_TRA.Caption = EmptyStr) and (ACTPSQ_CAD_TRA.HelpKeyWord = EmptyStr) then
  Exit;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,TRA_FANT,TRA_RAZA,TRA_CNPJ,TRA_INSC,TRA_CPF,TRA_TLOG,TRA_LOGR,TRA_CEP,TRA_NUME,TRA_COMP,TRA_BAI,TRA_CID,TRA_ESTA,');
    SQL.Add('       TRA_DDD ,TRA_TEL1,TRA_CONT,TRA_MAIL,');
    SQL.Add('       TRA_VTCARRO,TRA_VTPLACA,TRA_VTUF,TRA_VTRNTC,');
    SQL.Add('       TRIM(CAST(SUBSTRING(TRA_OBSE FROM 1 FOR 512) AS VARCHAR(512))) TRA_OBSE');

    SQL.Add('FROM   CAD_TRA');
    SQL.Add('WHERE ' + ACTPSQ_CAD_TRA.Caption + ' = ''' + ACTPSQ_CAD_TRA.HelpKeyWord + '''');
    ExecQuery;

    if not Eof then
    IEModFrete.Text := '9';
    
    PEDECT.Text := Current.Vars[01].AsString;
    if not Current.Vars[0].IsNull then
    begin
      CEIDCT.Value     := Current.Vars[00].AsInteger;
      PEDECT.Text      := Current.Vars[01].AsString;
      EDTFantasia.Text := Current.Vars[01].AsString;

      EdTxNome.Text    := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EdxNome.Text  ,Current.Vars[02].AsString);
      EdTCNPJ.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EdCNPJ.Text   ,Current.Vars[03].AsString);
      PETIE.Text       := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,PEIE.Text     ,Current.Vars[04].AsString);
      EdTCPF.Text      := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EdCPF.Text    ,Current.Vars[05].AsString);
      PETTxLgr.Text    := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,PETxLgr.Text  ,Current.Vars[06].AsString);
      EdTxLgr.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EdxLgr.Text   ,Current.Vars[07].AsString);
      EdTCep.Text      := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EdCep.Text    ,Current.Vars[08].AsString);
      EdTNRO.Text      := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EdNRO.Text    ,Current.Vars[09].AsString);
      EdTxCpl.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EdxCpl.Text   ,Current.Vars[10].AsString);
      EdTxBairro.Text  := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EdxBairro.Text,Current.Vars[11].AsString);
      EdTxMun.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EdxMun.Text   ,Current.Vars[12].AsString);
      PETUF.Text       := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,IEUF.Text     ,Current.Vars[13].AsString);
      EDTDDD.Text      := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EDDDD.Text    ,Current.Vars[14].AsString);
      EDTFone.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EDFone.Text   ,Current.Vars[15].AsString);
      EDTContato.Text  := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,EDContato.Text,Current.Vars[16].AsString);
      PETEmail.Text    := IFThen(Pos('CLIENTE RETIRA',ACTPSQ_CAD_TRA.HelpKeyWord) > 0,PEEmail.Text  ,Current.Vars[17].AsString);

      PETCarro.Text    := Current.Vars[18].AsString;
      PETPlaca.Text    := Current.Vars[19].AsString;
      PETUFPlaca.Text  := Current.Vars[20].AsString;
      EDTRNTC.Text     := Current.Vars[21].AsString;
      EDTInfAd.Text    := Current.Vars[22].AsString;

      if ((Length(EDTCNPJ.Text) < 14) or (Length(PETIE.Text) < 7)) then
      begin
        EDTCNPJ.Text := '';
        PETIE.Text   := '';
      end;

      if Pos('SEM FRETE',PEDECT.Text) > 0 then
      IEModFrete.Text := '9' else

      if (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('O PRÓPRIO',PEDECT.Text) > 0) then
      IEModFrete.Text := '4' else

      if Pos('NOSSO CARRO (' ,PEDECT.Text) > 0 then
      IEModFrete.Text := '3' else

      if Pos('CARRETOS'    ,PEDECT.Text) > 0 then
      IEModFrete.Text := '2' else

      if Pos(IEModFrete.Text,'01') = 0 then
      IEModFrete.Text := '0';
    end;
  end;
end;

procedure TFrmVEN_NFE.ACTPSQ_CAD_PROExecute(Sender: TObject);
var
  AREC_CAD_PRO_PSQ: TREC_SHE_PSQ;
begin
  oIREC_SHE_PSQ(AREC_CAD_PRO_PSQ);
  AREC_CAD_PRO_PSQ.FWinControl := Nil; //TdxDBGrid(TdxDBGridMaskColumn(DBGEdicaoNFE_CPROD));
  AREC_CAD_PRO_PSQ.FB_SQL      := SQLPKConsulta;

  AREC_CAD_PRO_PSQ.PSQ_TFD_PK  := ACTPSQ_CAD_PRO.Caption;
  AREC_CAD_PRO_PSQ.PSQ_TVD_PK  := ACTPSQ_CAD_PRO.HelpKeyword;

  if (AREC_CAD_PRO_PSQ.PSQ_TVD_PK <> EmptyStr) and (AREC_CAD_PRO_PSQ.PSQ_TVD_PK <> EdicaoNFE_CPROD.AsString) then

  try
    uPSQ_CAD_PRO(AREC_CAD_PRO_PSQ);

  finally
    if   AREC_CAD_PRO_PSQ.PSQ_OK then
    with AREC_CAD_PRO_PSQ.FB_SQL do

    try
      EdicaoCP_ID.Value      := Current.ByName('CP_ID').AsInteger;

      EdicaoNFE_CPROD.Value  := Current.ByName('SKU' ).AsString;
      EdicaoNFE_CEAN.Value   := Current.ByName('CEAN').AsString;

      EdicaoNFE_NCM.Value    := Current.ByName('FIS_NCM'   ).AsString;
      EdicaoNFE_PIPI.Value   := Current.ByName('FIS_PIPI'  ).AsCurrency;
      EdicaoNFE_EXTIPI.Value := Current.ByName('FIS_EXTIPI').AsString;
      EdicaoNFE_CEST.Value   := Current.ByName('FIS_CEST'  ).AsString;

      EdicaoNFE_XPROD.Value  := Trim(Current.ByName('CP_NO' ).AsString + ' ' + Current.ByName('GRD_NO').AsString);

      EdicaoNFE_UCOM.Value   := Current.ByName('UCOM' ).AsString;
      EdicaoNFE_UTRIB.Value  := Current.ByName('UTRIB').AsString;
      EdicaoCP_UQTDE.Value   := Current.ByName('UQTDE').AsCurrency;

      EdicaoNFE_QCOM.Value   := Current.ByName('UQTDE').AsCurrency;
      EdicaoNFE_RCOM.Value   := 1;

      EdicaoNFE_VUNPAD.Value := Current.ByName('VPRC_PAD').AsCurrency;
      EdicaoNFE_VUNCOM.Value := Current.ByName('VPRC_PAD').AsCurrency;

      EdicaoNFE_ORIG.Value   := Current.ByName('FIS_ORIG').AsInteger;

      { INFORMAÇÕES ADICIONAIS }
      EdicaoNFE_INFADCAD.Value := EmptyStr;

      if Current.ByName('CMP_NO').AsString <> EmptyStr then
      EdicaoNFE_INFADCAD.Value := 'Composição Têxtil: ' + Current.ByName('CMP_NO').AsString + ' - ';

      if (Current.ByName('UQVOL').AsCurrency > 0) and (Current.ByName('UESP').AsString <> EmptyStr) then
      EdicaoNFE_INFADCAD.Value := EdicaoNFE_INFADCAD.AsString + 'Conteúdo Unitário: ' + Current.ByName('UQVOL').AsString + ' ' + Current.ByName('UESP').AsString;
    except
      on E: Exception do
      begin
        oException(DBGEdicao,'Falha ao tentar registrar produto consultado !'          + #13 +
                             'Favor entrar em contato com o administrador do sistema.' + #13 + #13 +
                             'Error Code: ' + E.Message + '.');
      end;
    end;
  end;
end;

procedure TFrmVEN_NFE.ACTEdicaoExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  { EDIÇÕES }
  { PAGE CONTROL }
  PCEdicao.ActivePage := TSProduto;

  { INICIALIZAÇÃO PADRÃO }
  DEdhEmi.Date    := RECParametros.SHE_DATA; { Emissão }
  DEdhSaiEnt.Date := RECParametros.SHE_DATA; { Saída }

  { Destinatário }
  CEIDCD.Value   := 0; { Principal }
  CER_IDCD.Value := 0; { Remessa }

  { Pedido }
  EDCDPD.Text  := EmptyStr;
  CEVTPV.Value := 0;

  { Romaneio }
  CECDRO.Value := 0;
  CEVTRO.Value := 0;

  { Descontos }
  CEPDSC.Value := 0;
  CEVDSC.Value := 0;

  { Transportadora }
  CEIDCT.Value := 0;
  CEVFRT.Value := 0;
  CEVSEG.Value := 0;

  IEModFrete.Text := '9';
  CEQVOL.Value := 0;
  PEESP.Text := RECParametros.NFE_ESPECIE;

  AINFADTRIB := TStringList.Create; { Informações Adicionais }

  { Habilita envio automático conforme parâmetro }
  IEEnvMail.Text    :=  RECParametros.NFE_ENV_EMAIL_AUTO;
  IEEnvMail.Enabled := (RECParametros.NFE_ENV_EMAIL_AUTO = 1);

  { EDIÇÕES TEMPORÁRIAS }
  oOTransact(TSEdicao); { Edições Temporárias }
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FIS_NFE_ADM AS PK');
    SQL.Add('WHERE  PK.IDEV >= ''' + REC_SHE_DEF.IDEV + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FIS_NFE_ITE AS PK');
    SQL.Add('WHERE  PK.IDEV >= ''' + REC_SHE_DEF.IDEV + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FIS_NFE_DUP AS PK');
    SQL.Add('WHERE  PK.IDEV >= ''' + REC_SHE_DEF.IDEV + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FIS_NFE_MAO AS PK');
    SQL.Add('WHERE  PK.IDEV >= ''' + REC_SHE_DEF.IDEV + '''');
    ExecQuery;
  end;

  { CLIENTES - MÃO DE OBRA }
  with FIS_NFE_MAO do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.* FROM FIS_NFE_MAO AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    SelectSQL.Add('ORDER BY PK.NFE_NITEMPED');
    Prepare;
  end;

  { DUPLICATAS }
  with FIS_NFE_DUP do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.* FROM FIS_NFE_DUP AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    SelectSQL.Add('ORDER BY PK.NFE_NITEMPED');
    Prepare;
  end;

  { SUMÁRIO }
  with FIS_NFE_SUM do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID   ,PK.IDEV,');
    SQL.Add('PK.NFE_NITEMPED,PK.NFE_QCOM,PK.NFE_RCOM,');

    SQL.Add('CAST(''Produtos''                      AS VARCHAR(50)) AS LBL_VPROD         ,PK.NFE_VPROD,');
    SQL.Add('CAST(''Descontos''                     AS VARCHAR(50)) AS LBL_VDESC         ,PK.NFE_VDESC,');
    SQL.Add('CAST(''Base de Cálculo''               AS VARCHAR(50)) AS LBL_VBC           ,PK.NFE_VBC,  ');

    SQL.Add('CAST(''Base de Cálculo NRT CBS''       AS VARCHAR(50)) AS LBL_CBS_VBCCBS    ,PK.NFE_CBS_VBCCBS,');
    SQL.Add('CAST(''NRT CBS''                       AS VARCHAR(50)) AS LBL_CBS_VCBS      ,PK.NFE_CBS_VCBS,  ');

    SQL.Add('CAST(''Base de Cálculo NRT IBS Mun.''  AS VARCHAR(50)) AS LBL_IBSMUN_VBCMUN ,PK.NFE_IBSMUN_VBCIBSMUN,');
    SQL.Add('CAST(''NRT IBS Municipal''             AS VARCHAR(50)) AS LBL_IBSMUN_VIBSMUN,PK.NFE_IBSMUN_VIBSMUN,');

    SQL.Add('CAST(''Base de Cálculo IBS/CBS''       AS VARCHAR(50)) AS LBL_IBSCBS_VBCIBSCBS,PK.NFE_IBSCBS_VBCIBSCBS,');
    SQL.Add('CAST(''Base de Cálculo NRT IBS Est.''  AS VARCHAR(50)) AS LBL_IBSUF_VBCIBSUF  ,PK.NFE_IBSUF_VBCIBSUF,');
    SQL.Add('CAST(''NRT IBS Estadual''              AS VARCHAR(50)) AS LBL_IBSUF_VIBSUF    ,PK.NFE_IBSUF_VIBSUF,');

    SQL.Add('CAST(''ICMS Estadual''                 AS VARCHAR(50)) AS LBL_VICMS         ,PK.NFE_VICMS       ,');
    SQL.Add('CAST(''ICMS Interestadual UF Dest.''   AS VARCHAR(50)) AS LBL_VICMSUFDEST   ,PK.NFE_VICMSUFDEST ,');
    SQL.Add('CAST(''ICMS Partilha UF Remet.''       AS VARCHAR(50)) AS LBL_VICMSUFREMET  ,PK.NFE_VICMSUFREMET,');
    SQL.Add('CAST(''Desoneração de ICMS''           AS VARCHAR(50)) AS LBL_VICMSDESON    ,PK.NFE_VICMSDESON  ,');

    SQL.Add('CAST(''Base de Cálculo Crédito ICMS''  AS VARCHAR(50)) AS LBL_VBCCREDICMSSN ,PK.NFE_VBCCREDICMSSN,');
    SQL.Add('CAST(''Crédito ICMS''                  AS VARCHAR(50)) AS LBL_VCREDICMSSN   ,PK.NFE_VCREDICMSSN,');

    SQL.Add('CAST(''Base de Cálculo ICMS-ST''       AS VARCHAR(50)) AS LBL_VBCST         ,PK.NFE_VBCST,');
    SQL.Add('CAST(''ICMS-ST''                       AS VARCHAR(50)) AS LBL_VST           ,PK.NFE_VST,  ');

    SQL.Add('CAST(''IPI''                           AS VARCHAR(50)) AS LBL_VIPI          ,PK.NFE_VIPI,   ');
    SQL.Add('CAST(''PIS''                           AS VARCHAR(50)) AS LBL_VPIS          ,PK.NFE_VPIS,   ');
    SQL.Add('CAST(''Cofins''                        AS VARCHAR(50)) AS LBL_VCOFINS       ,PK.NFE_VCOFINS,');

    SQL.Add('CAST(''Frete''                         AS VARCHAR(50)) AS LBL_VFRETE        ,PK.NFE_VFRETE,');
    SQL.Add('CAST(''Seguro''                        AS VARCHAR(50)) AS LBL_VSEG          ,PK.NFE_VSEG,  ');
    SQL.Add('CAST(''Serviço''                       AS VARCHAR(50)) AS LBL_VSERV         ,PK.NFE_VSERV, ');
    SQL.Add('CAST(''Importação II''                 AS VARCHAR(50)) AS LBL_VII           ,PK.NFE_VII,   ');

    SQL.Add('CAST(''Fundo de Pobreza Estadual''     AS VARCHAR(50)) AS LBL_VFCPUFDEST    ,PK.NFE_VFCPUFDEST,');
    SQL.Add('CAST(''Outros Tributos''               AS VARCHAR(50)) AS LBL_VOUTRO        ,PK.NFE_VOUTRO,');

    SQL.Add('CAST(''Total Geral de Tributos''       AS VARCHAR(50)) AS LBL_VTOTTRIB      ,PK.NFE_VTOTTRIB,');
    SQL.Add('CAST(''Duplicatas (Boletos)''          AS VARCHAR(50)) AS LBL_VDUP          ,PK.NFE_VDUP    ,');
    SQL.Add('CAST(''Nota Fiscal + IBS/CBS''         AS VARCHAR(50)) AS LBL_VNFTOT        ,PK.NFE_VNFTOT  ,');
    SQL.Add('CAST(''Nota Fiscal''                   AS VARCHAR(50)) AS LBL_VNF           ,PK.NFE_VNF      ');

    SQL.Add('FROM     FIS_NFE_SUM AS PK');
    SQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    SQL.Add('ORDER BY PK.NFE_NITEMPED');
    Prepare;
  end;

  { CABEÇALHO }
  with FIS_NFE_ADM do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT PK.* FROM FIS_NFE_ADM AS PK');
    SelectSQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    Prepare;
  end;

  { PRODUTOS }
  with Edicao do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.* FROM FIS_NFE_ITE AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    SelectSQL.Add('AND      PK.FLAG = 0');
    SelectSQL.Add('ORDER BY PK.NFE_NITEMPED');
    Prepare;
  end;

  { EDIÇÕES }
  { PEGA NÚMERO DISPONÍVEL }
  ACTPSQ_NFE_NUM.HelpKeyword := EmptyStr;
  ACTPSQ_NFE_NUM.Execute;

  { VER NOTA FISCAL EXISTE }
  if uPSQ_NFE_REG(RECParametros.EP_NO_GP,CECDNF.Text) then 
  begin
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM NFE_EMI');
      SQL.Add('WHERE  CDNF = ''' + CECDNF.Text + '''');
      SQL.Add('AND    TIPO = ''NORMAL''');
      ExecQuery;
    end;
    oCTransact(TEdicao);

    CECDNF.Tag := 0;
    ACTPSQ_NFE_NUM.HelpKeyword := EmptyStr;
    ACTPSQ_NFE_NUM.Execute;
  end;

  oRTransact(TSEdicao);
end;

procedure TFrmVEN_NFE.ACTEDI_CAD_PADExecute(Sender: TObject);
begin
  try
    with SQLEdicao do
    begin
      if LAIDCD.Caption = 'Cliente' then
      begin
        Close;
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
        SQL.Add('       CLI_ESTA = '''+IEUF.Text+''',');
        SQL.Add('       CLI_CMUN = '''+BECMun.Text+''',');
        SQL.Add('       CLI_TLOV = '''+PEETxLgr.Text+''',');
        SQL.Add('       CLI_LOGV = '''+EDExLgr.Text+''',');
        SQL.Add('       CLI_NUMV = '''+EDENRO.Text+''',');
        SQL.Add('       CLI_COMV = '''+EDExCpl.Text+''',');
        SQL.Add('       CLI_CEPV = '''+EDECep.Text+''',');
        SQL.Add('       CLI_BAIV = '''+EDExBairro.Text+''',');
        SQL.Add('       CLI_CIDV = '''+oDELCharEsp(EDExMun.Text)+''',');
        SQL.Add('       CLI_ESTV = '''+PEEUF.Text+''',');
        SQL.Add('       CLI_CMUV = '''+PEEcMun.Text+''',');
        SQL.Add('       IDCT     = '''+CEIDCT.Text +''',');
        SQL.Add('       CLI_MAIL = '''+IFThen(oEmail(PEEmail.Text),PEEmail.Text,EmptyStr)+''',');
        SQL.Add('       CLI_ENVMAIL = '''+IEEnvMail.Text+''',');
        SQL.Add('       CLI_DTRA = '''+PEDECT.Text+'''');
        SQL.Add('WHERE  ID = '''+CEIDCD.Text+'''');
        ExecQuery;
      end else
      if LAIDCD.Caption = 'Fornecedor' then
      begin
        Close;
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
        SQL.Add('       FOR_ESTA = '''+IEUF.Text+''',');
        SQL.Add('       FOR_CMUN = '''+BECMun.Text+''',');
        SQL.Add('       FOR_TLOV = '''+PEETxLgr.Text+''',');
        SQL.Add('       FOR_LOGV = '''+EDExLgr.Text+''',');
        SQL.Add('       FOR_NUMV = '''+EDENRO.Text+''',');
        SQL.Add('       FOR_COMV = '''+EDExCpl.Text+''',');
        SQL.Add('       FOR_CEPV = '''+EDECep.Text+''',');
        SQL.Add('       FOR_BAIV = '''+EDExBairro.Text+''',');
        SQL.Add('       FOR_CIDV = '''+oDELCharEsp(EDExMun.Text)+''',');
        SQL.Add('       FOR_ESTV = '''+PEEUF.Text+''',');
        SQL.Add('       FOR_MAIL = '''+IFThen(oEmail(PEEmail.Text),PEEmail.Text,EmptyStr)+''',');
        SQL.Add('       FOR_ENVMAIL = '''+IEEnvMail.Text+''',');
        SQL.Add('       FOR_CMUV = '''+PEEcMun.Text+'''');
        SQL.Add('WHERE ID = '''+CEIDCD.Text+'''');
        ExecQuery;
      end;
    end;
  except
    ;
  end;
end;

procedure TFrmVEN_NFE.ACTEDI_CAD_PROExecute(Sender: TObject);
var
  REC_SHE_DEF: TREC_SHE_DEF;
begin
  if LeftStr(PECFOP.Text,1) = '3' then
  begin
    REC_SHE_DEF.FB_SQL := SQLEdicao;
    with REC_SHE_DEF.FB_SQL do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO');
      SQL.Add('WHERE  ARTIGO = ''' + CECDNF.Text         + '''');
      SQL.Add('AND    EP_ID  = ''' + RECParametros.EP_ID + '''');
      ExecQuery;
    end;

    try
      Edicao.DisableControls;
      Edicao.First;

      while not Edicao.Eof do
      begin
        REC_SHE_DEF.ID     := '0';
        REC_SHE_DEF.CODIGO := EdicaoNFE_CPROD.AsString;

        SPEdicao.StoredProcName := 'SP_CAD_PRO';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('ID').Value   := 0;
        SPEdicao.ParamByName('IDEP').Value := RECParametros.EP_ID;

        SPEdicao.ParamByName('IDCA').Value := RECUsuarios.Id;
        SPEdicao.ParamByName('CDST').Value := 30;

        SPEdicao.ParamByName('ARTIGO').Value := CECDNF.Value;
        SPEdicao.ParamByName('NCM').Value    := EdicaoNFE_NCM.AsString;
        SPEdicao.ParamByName('PIPI').Value   := EdicaoNFE_PIPI.AsFloat;

        SPEdicao.ParamByName('SKU' ).Value := EdicaoNFE_CPROD.AsString;
        SPEdicao.ParamByName('CEAN').Value := oBarCode(REC_SHE_DEF);

        SPEdicao.ParamByName('DESCRICAO').Value := EdicaoNFE_XPROD.AsString;
        SPEdicao.ParamByName('TITULO').Value    := NULL;
        SPEdicao.ParamByName('CMP_PAD').Value   := NULL;

        SPEdicao.ParamByName('IDCOR').Value := 0;
        SPEdicao.ParamByName('DECOR').Value := NULL;

        SPEdicao.ParamByName('CDGRD').Value := NULL;
        SPEdicao.ParamByName('REGRD').Value := NULL;
        SPEdicao.ParamByName('DEGRD').Value := NULL;

        SPEdicao.ParamByName('IDCF').Value   := RECParametros.EP_ID;
        SPEdicao.ParamByName('CDCF').Value   := NULL;
        SPEdicao.ParamByName('CEANCF').Value := NULL;

        SPEdicao.ParamByName('UCOM').Value  := EdicaoNFE_UCOM.AsString;
        SPEdicao.ParamByName('UQVOL').Value := NULL;
        SPEdicao.ParamByName('UESP').Value  := NULL;
        SPEdicao.ParamByName('UCON' ).Value := NULL;
        SPEdicao.ParamByName('UCDBE').Value := 'QT';
        SPEdicao.ParamByName('UQTDE').Value := 1;

        SPEdicao.ParamByName('UQTDE_VEN_MUL').Value := 1;
        SPEdicao.ParamByName('UQTDE_VEN_MIN').Value := 1;
        SPEdicao.ParamByName('UQTDE_EST_MIN').Value := 0;

        SPEdicao.ParamByName('PESO').Value := NULL;
        SPEdicao.ParamByName('PSCN').Value := NULL;

        SPEdicao.ParamByName('METRO').Value      := NULL;
        SPEdicao.ParamByName('RENDIMENTO').Value := NULL;

        SPEdicao.ParamByName('GRAMATURA').Value := NULL;
        SPEdicao.ParamByName('GRAT_T'   ).Value := NULL;

        SPEdicao.ParamByName('LARG_U').Value := NULL;
        SPEdicao.ParamByName('LARG_T').Value := NULL;

        SPEdicao.ParamByName('ELAS_L').Value := NULL;
        SPEdicao.ParamByName('ELAS_C').Value := NULL;

        SPEdicao.ParamByName('ENCO_L').Value := NULL;
        SPEdicao.ParamByName('ENCO_C').Value := NULL;
        SPEdicao.ParamByName('ENCO_T').Value := NULL;

        SPEdicao.ParamByName('ESPESSURA'     ).Value := NULL;
        SPEdicao.ParamByName('ESPESSURA_TIPO').Value := NULL;

        SPEdicao.ParamByName('VPRC_COMPRA').Value     := NULL;
        SPEdicao.ParamByName('VPRC_COMPRA_IMP').Value := EdicaoNFE_VUNCOM.AsFloat;

        SPEdicao.ParamByName('VPRC_PAD'    ).Value := EdicaoNFE_VUNCOM.AsFloat;
        SPEdicao.ParamByName('VPRC_PAD_PRZ').Value := NULL;
        SPEdicao.ParamByName('VPRC_PAD_PRO').Value := NULL;
        SPEdicao.ParamByName('PPRC_PAD_DSC').Value := NULL;
        SPEdicao.ParamByName('PPRC_PAD_AJU').Value := NULL;

        SPEdicao.ParamByName('VPRC_ATV'    ).Value := NULL;
        SPEdicao.ParamByName('VPRC_ATV_PRZ').Value := NULL;
        SPEdicao.ParamByName('VPRC_ATV_PRO').Value := NULL;
        SPEdicao.ParamByName('PPRC_ATV_DSC').Value := NULL;
        SPEdicao.ParamByName('PPRC_ATV_AJU').Value := NULL;

        SPEdicao.ParamByName('VPRC_VAR'    ).Value := NULL;
        SPEdicao.ParamByName('VPRC_VAR_PRZ').Value := NULL;
        SPEdicao.ParamByName('VPRC_VAR_PRO').Value := NULL;

        SPEdicao.ParamByName('VPRC_REP'    ).Value := NULL;
        SPEdicao.ParamByName('VPRC_REP_PRZ').Value := NULL;
        SPEdicao.ParamByName('VPRC_REP_PRO').Value := NULL;

        SPEdicao.ParamByName('VPRC_SITE').Value := NULL;
        SPEdicao.ParamByName('PMKP_SITE').Value := NULL;

        SPEdicao.ParamByName('IDCOL').Value := 0;
        SPEdicao.ParamByName('IDSEG').Value := NULL;
        SPEdicao.ParamByName('IDGRP').Value := NULL;
        SPEdicao.ParamByName('IDSGP').Value := NULL;
        SPEdicao.ParamByName('IDCAT').Value := NULL;
        SPEdicao.ParamByName('IDSCT').Value := NULL;

        SPEdicao.ParamByName('MKP_IDML').Value := NULL;
        SPEdicao.ParamByName('MKP_IDSP').Value := NULL;
        SPEdicao.ParamByName('MKP_IDAM').Value := NULL;

        SPEdicao.ParamByName('IDFIN').Value := RECParametros.PRO_IDFIN_CAD;
        SPEdicao.ParamByName('IDTPV').Value := RECParametros.PRO_IDFIN_EST;

        SPEdicao.ParamByName('IDTPA').Value := NULL;
        SPEdicao.ParamByName('IDTPD').Value := NULL;
        SPEdicao.ParamByName('IDTPF').Value := NULL;
        SPEdicao.ParamByName('IDTPL').Value := NULL;

        SPEdicao.ParamByName('ORIG' ).Value := EdicaoNFE_ORIG.AsString;
        SPEdicao.ParamByName('CPAIS').Value := IExPais.Text;

        SPEdicao.ParamByName('INFADCAD').Value := NULL;
        SPEdicao.ParamByName('INFADTEC').Value := EdicaoNFE_INFADCAD.AsString;

        SPEdicao.ParamByName('IP').Value   := RECParametros.IP;
        SPEdicao.ParamByName('HOST').Value := RECParametros.Host;

        SPEdicao.ExecProc;
        SPEdicao.UnPrepare;

        Edicao.Next;
      end;
    finally
      Edicao.EnableControls;
    end;

    ACTEDI_CAD_PRO_EST.Execute;
  end;  
end;

procedure TFrmVEN_NFE.ACTEDI_CAD_PRO_ESTExecute(Sender: TObject);
var
  RECEdicao: TRECEdicao;
  REC_SHE_EDI: TREC_SHE_EDI;
  ACDRO: Integer;
  i: Word;
begin
  oIRECEdicao(RECEdicao);
  oIREC_SHE_EDI(REC_SHE_EDI);

  { Inicializar Parâmetros: FLAG + campos de pesquisa (IDEP,IDPK,IDFK) }
  RECEdicao.FLAG := 0;

  { Situação }
  RECEdicao.CDST := '30';
  RECEdicao.REST := 'A';
  RECEdicao.DEST := 'ATIVO';

  { Lançamentos }
  RECEdicao.CTNR := 'NFe-' + CECDNF.Text;
  RECEdicao.LOTE := '';
  RECEdicao.CDI  := '0';

  { Operação }
  RECEdicao.CDOP := '40';
  RECEdicao.REOP := '';
  RECEdicao.DEOP := 'ENTRADA';

  { Tipo }
  RECEdicao.CDTP := '317';

  { Informações Adicionais }
  RECEdicao.INFADCAD := EDInfAdNF.Text;

  if RECEdicao.CTNR = EmptyStr then
  Exit;

  { Registro }
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAD_PRO_ENC');
    SQL.Add('SET    CDST = 43,');
    SQL.Add('       REST = ''C'',');
    SQL.Add('       DEST = ''CANCELADO''');
    SQL.Add('WHERE  CTNR = ''' + RECEdicao.CTNR + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(IDG_EV,1) FROM RDB$DATABASE');
    ExecQuery;
    RECEdicao.IDG_EV := Current.Vars[0].AsString;
    RECEdicao.IDEV   := RECEdicao.IDG_EV;
  end;

  { Execute Procedure }
  RECEdicao.ASPEdicao := SPEdicao;
  oSP_CAD_PRO_EST_RPK(RECEdicao);

  ACDRO := SPEdicao.ParamByName('rID').AsInteger;
  if ACDRO > 0 then
  begin
    oIREC_SHE_EDI(REC_SHE_EDI);
    REC_SHE_EDI.FB_SP      := SPEdicao;
    REC_SHE_EDI.FB_SP_NAME := 'SP_CAD_PRO_EST_RFK_NEW';

    try
      Edicao.DisableControls;
      Edicao.First;

      while not Edicao.Eof do
      begin
        REC_SHE_EDI.AIDEP := RECParametros.EP_ID;
        REC_SHE_EDI.AIDLG := RECUsuarios.ID;

        { Situação }
        REC_SHE_EDI.ACDST := RECEdicao.CDST;
        REC_SHE_EDI.AREST := RECEdicao.REST;
        REC_SHE_EDI.ADEST := RECEdicao.DEST;

        { Romaneio }
        REC_SHE_EDI.ACDRO := RECEdicao.CDRO;
        REC_SHE_EDI.ADTRO := RECParametros.SHE_DATA;
        REC_SHE_EDI.ACDI  := RECEdicao.CDI;

        { Etiqueta }
        with SQLEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT GEN_ID(ID_NO_PRO_CDET,1) FROM RDB$DATABASE');
          ExecQuery;
          REC_SHE_EDI.ACDET := Current.Vars[0].AsInt64;
        end;

        REC_SHE_EDI.ACTNR := RECEdicao.CTNR;
        REC_SHE_EDI.ALOTE := RECEdicao.LOTE;
        REC_SHE_EDI.AMAPA := RECEdicao.MAPA;

        { Processos }
        REC_SHE_EDI.ACDTP := RECEdicao.CDTP;
        REC_SHE_EDI.ACDOP := RECEdicao.CDOP;
        REC_SHE_EDI.AREOP := RECEdicao.REOP;

        { Itens }
        REC_SHE_EDI.AIDFK := 0;
        REC_SHE_EDI.AITEM := EdicaoNFE_NITEMPED.AsInteger;

        { Produtos }
        with SQLEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT CP.CP_ID,CP.AK_ID,CP.EP_ID FROM CAD_PRO AS CP');
          SQL.Add('WHERE  CP.SKU = ''' + EdicaoNFE_CPROD.AsString + '''');
          ExecQuery;

          REC_SHE_EDI.AIDCP    := Current.Vars[0].AsInt64;
          REC_SHE_EDI.AIDAK    := Current.Vars[1].AsInt64;
          REC_SHE_EDI.ACP_IDEP := Current.Vars[2].AsInteger
        end;

        { Lançamento }
        REC_SHE_EDI.AQTDE := EdicaoNFE_QCOM.AsCurrency;
        REC_SHE_EDI.AQTRL := EdicaoNFE_RCOM.AsInteger;

        { Custo }
        REC_SHE_EDI.ACF_VPRC_PAD_ORI := '$';
        REC_SHE_EDI.ACF_VPRC_COM     := EdicaoNFE_VUNCOM.AsFloat;

        { Classificações }
        REC_SHE_EDI.ACOL_ID := 0; { Coleção - Compras }
        REC_SHE_EDI.ANFCI   := EdicaoNFE_NFCI.AsString; { Ficha de Conteúdo de Importação }

        { Defeitos }
        REC_SHE_EDI.AIDDF := 0;
        REC_SHE_EDI.ACDDF := 0;

        { Informações Adicionais }
        REC_SHE_EDI.AINFADCAD := '';

        { Registros }
        REC_SHE_EDI.FB_IDEV := RECEdicao.IDG_EV;

        { Execute Procedure }
        oSP_CAD_PRO_EST_RFK(REC_SHE_EDI);

        SPEdicao.StoredProcName := 'SP_CAD_PRO_EST_LAN';
        SPEdicao.Prepare;

        for i := 0 to SPEdicao.ParamCount - 1 do
        SPEdicao.Params[i].Value := Null;

        SPEdicao.ParamByName('AEP_ID').Value := RECParametros.EP_ID;
        SPEdicao.ParamByName('ACP_ID').Value := REC_SHE_EDI.AIDCP;
        
        SPEdicao.ExecProc;
        SPEdicao.UnPrepare;

        Edicao.Next;
      end;

    finally
      Edicao.EnableControls;
    end;
  end;
end;

procedure TFrmVEN_NFE.ACTMPAppendExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTMPEditExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTMPDeleteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTMPPostExecute(Sender: TObject);
begin
  if Length(SBRodape.Panels[3].Text) < 44 then
  oException(Nil,'Não é possível registrar a nota fiscal sem um código de barras definido !');

  if Pos(SBRodape.Panels[5].Text,'100110150') = 0 then { NFe não Autorizada }
  oException(Nil,'Não é possível registrar a nota fiscal sem a autorização do sefaz !');

  try { Auto Increment }
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_' + oREPZero('NFE_CAB','_',RECParametros.EP_ID,3) + ',0) FROM RDB$DATABASE');
      ExecQuery;

      AID := Current.Vars[0].AsInteger + 1;
      Close;
    end;
  except
    on E: Exception do
    begin
      oException(Nil,'Falha ao tentar atribuir ID do registro !'               + #13 +
                     'Favor entrar em contato com o administrador do sistema.' + #13 + #13 +
                     'Error Code: ' + E.Message);
    end;
  end;

  oDoCommitWait(TEdicao,_DoCommitWait);         { Principal }
  oDoCommitWait(TEdicao,_DoCommitWaitProdutos); { Cadastro  }

  { FINANCEIRO }
  if (Pos(SBRodape.Panels[5].Text,'100150') > 0) and { NFe Autorizada }
     (LeftStr(PECFOP.Text,1) <> '3') and { NFe Importação }
     (CECDRO.Value > 0) then { Romaneios }

  if RECRomaneio.FIN_CSPD then
  bBAI_FINANCEIRO(IFThen(FIS_NFE_DUPId.AsInteger > 0,Trunc(CECDNF.Value),0),IFThen(FIS_NFE_DUPId.AsInteger > 0,0,RECRomaneio.IDFK)) else

  if (RECRomaneio.FAPD) and (FIS_NFE_DUPId.AsInteger > 0) then
  bBAI_FINANCEIRO(Trunc(CECDNF.Value),0);


  if Pos(SBRodape.Panels[5].Text,'110') > 0 then
  oAviso(handle,'Nota Fiscal Denegada !' + #13 +
                'Possíveis problemas fiscais desse destinatário com a receita federal.' + #13 + #13 +
                'Favor entrar em contato com o cliente e/ou representante.');

  REC_SHE_DEF.Editing := False;
  ACTEveExecute.Execute;
end;

procedure TFrmVEN_NFE.ACTMPValidateExecute(Sender: TObject);
begin
  if oYesNo(handle,'Salvar Nota Fiscal ?') = mrYes then
  if SBRodape.Panels[6].Text <> 'DUP' then { TIPO RETORNO }
  oException(Nil,'Falha ao tentar salvar nota fiscal !' + #13 +
                 'Nota fiscal sem duplicidade de emissão confirmada.') else
  begin
    SBRodape.Panels[5].Text := '100';
    ACTMPPost.Execute;

    oAviso(Handle,'Nota Fiscal salva com sucesso !' + #13 + #13 +
                  'Favor efetuar a consulta no controle de notas fiscais para gerar a danfe');
    Close;
  end;  
end;

procedure TFrmVEN_NFE.ACTMPCancelExecute(Sender: TObject);
begin
  REC_SHE_DEF.Editing := False;
  Close;
end;

procedure TFrmVEN_NFE.ACTImportaExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTEmailExecute(Sender: TObject);
var
  Ok: Boolean;
  Err ,
  Html,
  Msg: String;
begin
  try
    if PEEmail.Text = EmptyStr then
    oErro(Handle,'Email do destinatário não informado !');

    Ok := False;

    if not FileExists(EDPDF.Text) then
    Err := 'Arquivo PDF da danfe não localizado !' else

    if not FileExists(EDPDF.Text) then
    Err := 'Arquivo XML não localizado !';

    Msg :=

    'Segue em anexo ...' +
    'Nota Fiscal Eletrônica ' + IFThen(Pos('Triangular',EDFINALIDADE_ABREV.Text) > 0,'','de ') + EDFINALIDADE_ABREV.Text +
    'Número ' + CECDNF.Text + ' emitida na data ' + FormatDateTime('dd/mm/yyyy',DEdhSaiEnt.Date);

    if (FileExists(EDPDF.Text)) and (FileExists(EDXML.Text)) then
    begin
      Html :=

      '<html><body style="font-family:Segoe UI, Arial; font-size:12pt">' +

      '<p>Prezado cliente,</p>'   +

      '<p>' + Msg + '</p>' +

      '<p><b>Atenciosamente,</b><br/>' + RECUsuarios.Login + '</p>' +

      '</body></html>';

      Ok := oSendEmailOutlook365(

      PEEmail.Text, {'ricardo@sheild.com.br; suporte@sheild.app.br',  Destinatário }
      RECUsuarios.EMAIL, { CC  }
      '', { BCC }

      RECParametros.EP_NO + ' - Nota Fiscal', { Assunto }

      Html, { Corpo da Mensagem }

      [EDPDF.Text, EDXML.Text], { Anexos }

      False   , { False = enviar; True = abrir na tela }
      mpNormal, { Prioridade }
      '',       { ou 'shared-mailbox@empresa.com' se for enviar em nome de }
      Err
      );
    end;

    if not Ok then
    oErro (Handle,'Falha: ' + Err) else
    oAviso(Handle,'E-mail enviado com sucesso.');

  finally
    Application.ProcessMessages;
  end;  
end;

procedure TFrmVEN_NFE.ACTMEAppendExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oAppend(Edicao,REC_SHE_DEF.GAppend);
end;

procedure TFrmVEN_NFE.ACTMEEditExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oEdit(Edicao,REC_SHE_DEF.GEdit);
end;

procedure TFrmVEN_NFE.ACTMEDeleteExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oDelete(Edicao,REC_SHE_DEF.GDelete);
end;

procedure TFrmVEN_NFE.ACTMEPostExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oPost(Edicao,REC_SHE_DEF.GPost);
end;

procedure TFrmVEN_NFE.ACTMECancelExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oCancel(Edicao,REC_SHE_DEF.GCancel);
end;

procedure TFrmVEN_NFE.ACTMDAppendExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oAppend(FIS_NFE_DUP);
end;

procedure TFrmVEN_NFE.ACTMDEditExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oEdit(FIS_NFE_DUP);
end;

procedure TFrmVEN_NFE.ACTMDDeleteExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oDelete(FIS_NFE_DUP);
end;

procedure TFrmVEN_NFE.ACTMDPostExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oPost(FIS_NFE_DUP);
end;

procedure TFrmVEN_NFE.ACTMDCancelExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  oCancel(FIS_NFE_DUP);
end;

procedure TFrmVEN_NFE.ACTMDRefreshExecute(Sender: TObject);
begin
  oRTransact(TSEdicao);
end;

procedure TFrmVEN_NFE.ACTCheckConstraintsExecute(Sender: TObject);
var
  ClickedOK: Boolean;
begin
  ActiveControl := Nil;

  if CECDNF.Value = 0 then
  oException(Nil,'Número da nota fiscal não informada !');

  { VER NOTA FISCAL EXISTE }
  if uPSQ_NFE_REG(RECParametros.EP_NO_GP,CECDNF.Text) then
  oException(Nil,'Número da nota fiscal já emitida !');

  ACTPSQ_NFE_SEQ.Execute; { VER FUROS }

  if (IEINDPAG.Text = EmptyStr) and (IETPAG.Text <> '90') then
  oException(IEINDPAG,'Forma de pagamento não informada !');

  try
    { Finalidade NFe }
    if IEFinNFe.Text <> '1' then
    begin
      ClickedOK := InputQuery('Entre com a chNFe de acesso da NFe Referenciada', 'chNFe', NewCHNFE);
      if (not ClickedOK) or (NewCHNFE = '') then
      oException(Nil,'chNFe (código de barras) nao informada !');

      if Length(trim(NewCHNFE)) < 44 then
      oException(Nil,'chNFe (Código de Barras) informada incorretamente !');
    end;

    { Natureza de Operações }
    if oEmpty(PECFOP_NO.Text) then
       oException(PECFOP,'CFOP não Informado ou Incorreto !');

    { Romaneios }
    if CECDRO.Value > 0 then
       with SQLConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT ROM_STCO FROM '+oREPZero('ROM_CAB','_',RECParametros.EP_ID,3));
         SQL.Add('WHERE  ID = '''+CECDRO.Text+'''');
         ExecQuery;

         if (fields[0].AsString = 'BANCÁRIO') and (FIS_NFE_SUMNFE_VDUP.AsFloat = 0) then
         begin
           PCEdicao.ActivePage := TSDuplicata;
           oException(Nil,'Pedido de venda bancária sem duplicata(s) registrada(s) !');
         end;
       end;

    { Prazos }
    if (IEBOLETO.Text = 'SIM') and (IECDPG.Text <> TAB_PAGPAG_DPAG.AsString) then
    begin
      TAB_PAG.Close;
      TAB_PAG.Params[0].Value := IEBOLETO.Text;
      TAB_PAG.Open;
    end;

    if (IEBOLETO.Text = 'SIM') and (TAB_PAGPAG_PARC.AsInteger <> FIS_NFE_DUP.RecordCount) then
    oException(Nil,'Número de parcelas da nota fiscal difere do número de parcelas do prazo selecionado !');

    { Triangular }
    if (CER_CDNF.Value = 0) and (CER_IDCD.Value > 1) then
    begin
      PCEdicao.ActivePage := TSNFTriangular;

      { Destinatário da Remessa }
      oException(EDR_DECD,'Destinatário da remessa informado incorretamente !');
    end;

    if (Pos(PECFOP.Text,'5123592461236924') > 0) and ((CER_CDNF.Value = 0) or (EDR_DECD.Text = EmptyStr) or (EDR_CNPJ.Text = EDCNPJ.Text))  then
    begin
      PCEdicao.ActivePage := TSNFTriangular;

      { Destinatário da Remessa }
       if EDR_DECD.Text = EmptyStr then
          oException(EDR_DECD,'Falha ao tentar validar nota fiscal !' +#13+#13+
                              'Para operações triangulares (CFOP: 5123/5924/6123/6924)' +#13+
                              'é obrigatório informar o destinatário da remessa.');

       if EDR_CNPJ.Text = EDCNPJ.Text then
          oException(EDDECD,'Falha ao tentar validar nota fiscal !' +#13+#13+
                            'Adquirente não pode ser igual ao destinatário da remessa.');

       { NF da Remessa }
       if CER_CDNF.Value = 0 then
          oException(CER_CDNF,'Falha ao tentar validar nota fiscal !' +#13+#13+
                              'Para operações triangulares (CFOP: 5123/5924/6123/6924)' +#13+
                              'é obrigatório informar o número da NF de remessa.');
    end;

    { Favorecido }
    if oEmpty(EDxNome.Text) then
    begin
      oException(EDDECD,'Favorecido não Selecionado !');
    end;

    if oEmpty(EDFone.Text) then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(EDFone,'Fone não Informado !');
    end;

    if length(TRIM(edcep.Text)) <> 8 then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(edcep,'Cep não Informado !');
    end;

    if oEmpty(EDNRO.Text) then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(EDNRO,'Número do logradouro do favorecido não informado !');
    end;

    if oEmpty(BECMun.Text) then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(BECMun,'Código Municipal não Informado !');
    end;

    if oEmpty(IExPais.Text) then
    begin
      PCEdicao.ActivePage := TSDestinatario;
      oException(IExPais,'País não Informado ou Incorreto !');
    end;

    if (IEModFrete.Text <> '9') and (oEmpty(EDTxNome.Text)) and ((IEFinNFe.Text <> '2') and (IEFinNFe.Text <> '3')) then
    begin
      PCEdicao.ActivePage := TSTransporte;
      oException(EDTxNome,'Transportadora não Cadastrada !');
    end;

    { Cep }
    if (EDCEP.Text <> EmptyStr) and (IEUF.Text <> 'EX') and (RECParametros.FIN_API) then
    begin
      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_CEP_LOG');
        SQL.Add('WHERE  CEP = '''+EDCEP.Text+'''');
        ExecQuery;

        if Current.Vars[0].AsInteger = 0 then
        begin
          PCEdicao.ActivePage := TSDestinatario;

          if oYesNo(Self.Handle,'Cep informado pelo cliente não encontrado'+#13+
                                'na nossa base de dados do Correio !'  +#13+#13+
                                'Continuar ?') = mrNo then
          Abort;
        end;  
      end;
    end;
  except
    ACTNFeEdicao.Execute;
    Abort;
  end;
end;

procedure TFrmVEN_NFE.ACTCheckErrorsExecute(Sender: TObject);
begin
  { Duplicatas }
  if FIS_NFE_DUP.State in [dsEdit,dsInsert] then
  if FIS_NFE_DUPNFE_VDUP.AsFloat > 0 then
     FIS_NFE_DUP.Post else FIS_NFE_DUP.Cancel;
     FIS_NFE_DUP.First;

  if IEBOLETO.Text = EmptyStr then
  oException(IEBOLETO,'Emissão de duplicatas não informadas ou inválidas !' + #13 +
                    'Use SIM ou NÃO para continuar.');

  if CECDRO.Value > 0 then
  begin
    if (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0) and ((FIS_NFE_DUPID.AsInteger = 0) or (IEBOLETO.Text <> 'SIM')) then
        oException(Nil,'Boletos de cobranças não informados ou inválidos !'+#13+
                       'Emissão obrigatório para pedidos com cobrança bancária.');

    if (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') = 0) and ((FIS_NFE_DUPID.AsInteger > 0)  or (IEBOLETO.Text  = 'SIM')) then
        oException(Nil,'Boletos de cobranças inválidos !'+#13+
                       'Emissão não permitida para pedidos com cobrança em carteira.');
  end;

  { Clientes }
  if FIS_NFE_MAO.State in [dsEdit,dsInsert] then
  if FIS_NFE_MAONFE_CDNF.AsInteger > 0 then
     FIS_NFE_MAO.Post else FIS_NFE_MAO.Cancel;
     FIS_NFE_MAO.First;

  { Itens }
  if Edicao.State in [dsEdit,dsInsert] then
  if EdicaoNFE_VPROD.AsFloat > 0 then
     Edicao.Post else Edicao.Cancel;
     Edicao.First;

  if EdicaoId.AsInteger = 0 then
  begin
    PCEdicao.ActivePage := TSProduto;
    oException(DBGEdicao,'Itens da nota fiscal não Informados !');
  end;

  { BOLETO }
  if (FIS_NFE_DUPNFE_CDNF.AsInteger > 0) then
  if (Pos(FIS_NFE_DUPNFE_CDNF.AsString,FIS_NFE_DUPNFE_NDUP.AsString) = 0) then
  begin
    PCEdicao.ActivePage := TSDUPLICATA;
    oException(DBGFIS_NFE_DUP,'Falha na emissão dos boletos !' + #13 +
                              'Divergência encontrada entre o número da fatura e o número do título.');
  end;                            

  try
    ACTCheckErrors.Hint := EmptyStr;
    ACTNFeCalculate.Tag := 1;

    while not Edicao.Eof do
    begin
      if IEFinNFe.Text <> '2' then { Complementar }
      begin
        if EdicaoNFE_QCOM.AsCurrency = 0 then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_QCOM.Index;
          ACTCheckErrors.Hint := 'Quantidade não Informada !';
        end;

        if EdicaoNFE_VUNCOM.AsFloat = 0 then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_VUNCOM.Index;
          ACTCheckErrors.Hint    := 'Valor Unitário não Informado !';
        end;

        if Length(EdicaoNFE_NCM.AsString) < 8 then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_NCM.Index;
          ACTCheckErrors.Hint    := 'Obrigatório informar pelo menos 8 dígitos para o número de NCM !';
        end;

        if EdicaoNFE_NCM.AsString = '00000000' then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_NCM.Index;
          oException(DBGEdicao,'NCM não Informado ou Incorreto !'+#13+#13+
                            'Nº Item: ' + EdicaoNFE_NITEMPED.AsString + ' - ' + EdicaoNFE_CPROD.AsString + '.');
        end;

        if ACTCheckErrors.Hint <> EmptyStr then
        begin
          PCEdicao.ActivePage := TSProduto;
          oException(DBGEdicao,ACTCheckErrors.Hint + #13 +
                            'Nº Item: ' + EdicaoNFE_NITEMPED.AsString);
        end;
      end;

      if IEFinNFe.Text = '1' then { Normal }
      begin
        { NFCI }
        if (EdicaoNFE_ORIG.AsString = '5' ) and
           (EdicaoNFE_CST.AsString  = '00') and
           (EdicaoNFE_NFCI.AsString = EmptyStr) then
        begin
          DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_VUNCOM.Index;
          PCEdicao.ActivePage := TSProduto;

          oErro(handle,'Número da ficha de importação (NFCI) não informada !');
          Break;
        end;

        if (LeftStr(PECFOP.Text,1) = '3') and (EDnDI.Text <> EmptyStr) then
        begin
          if (oEmpty(CEnAdicao.Text)) or (CEnAdicao.Text = '0') then
          oException(Nil,'Número da adição não informado !');

          Edicao.Edit;
          EdicaoNFE_NDI.Value          := oRETNumero(EDnDI.Text);
          EdicaoNFE_DDI.Value          := IFThen(not oEmpty(DEdDI.Date),DEdDI.Date,varNull);
          EdicaoNFE_XLOCDESEMB.Value   := edxLocDesemb.Text;
          EdicaoNFE_UFDESEMB.Value     := IEUFDesemb.Text;
          EdicaoNFE_DDESEMB.Value      := IFThen(not oEmpty(DEdDesemb.Date),DEdDesemb.Date,varNull);
          EdicaoNFE_TPVIATRANSP.Value  := IETpViaTransp.Text;
          EdicaoNFE_NADICAO.Value      := StrToInt(CEnAdicao.Text);
          EdicaoNFE_NSEQADIC.Value     := StrToInt(CEnSeqAdic.Text);
          EdicaoNFE_CNPJTerceiro.Value := EDCNPJTerceiro.Text;
          EdicaoNFE_UFTerceiro.Value   := IEUFTerceiro.Text;
          EdicaoNFE_TPIntermedio.Value := IETPIntermedio.Text;
          EdicaoNFE_CEXPORTADOR.Value  := EDcExportador.Text;
          EdicaoNFE_CFABRICANTE.Value  := EDcFabricante.Text;
          Edicao.Post;
        end else

        if LeftStr(PECFOP.Text,1) = '7' then
        begin
          Edicao.Edit;
          EdicaoNFE_CNPJProd.Value     := EDCNPJProd.Text;
          EdicaoNFE_NDRAW.Value        := EDnDraw.Text;
          EdicaoNFE_NRE.Value          := EDnRE.Text;
          EdicaoNFE_XLOCDESPACHO.Value := EDxLocDespacho.Text;
          EdicaoNFE_UFSAIDAPAIS.Value  := EDUFSaidaPais.Text;
          EdicaoNFE_CHNFE.Value        := EDChNFE.Text;
          EdicaoNFE_QExport.Value      := CEQExport.Value;
          Edicao.Post;
        end;
      end;

      Edicao.Next;
    end;
  finally
    if ACTXMLImporta.Tag = 0 then
    ACTNFeCalculate.Tag := 0;
  end;
end;

procedure TFrmVEN_NFE.ACTRelatoriosExecute(Sender: TObject);
begin
  try
    if not FileExists(EDXML.Text) then
    oException(Nil,'Arquivo xml de autorização da nota fiscal não encontrado !');

    if not FileExists(EDPDF.Text) then
    oException(Nil,'Arquivo pdf não encontrado !');

    if ImprimeDanfe(EDXML.Text,EDPDF.Text,1,False) then
    oAviso(Application.Handle,'Danfe impressa com sucesso !');

  finally
    Application.ProcessMessages;
    SleepEx(2000,False);
  end;
end;

procedure TFrmVEN_NFE.ACTVisualizaExecute(Sender: TObject);
begin
  try
    if not FileExists(EDXML.Text) then
    oException(Nil,'Arquivo xml de autorização da nota fiscal não encontrado !');

    ImprimeDanfe(EDXML.Text,'',3,False);

  finally
    Application.ProcessMessages;
    SleepEx(2000,False);
  end;
end;

procedure TFrmVEN_NFE.ACTDashboardsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTProgressBarExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTEveRegisterExecute(Sender: TObject);
begin
  { UNREGISTER EVENTS }
  if EEvent.Registered then

  try
    EEvent.UnregisterEvents;
    EEvent.Events.Clear;

    REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin  }
    REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Padrão }
  except
    on E: Exception do
    begin
      oErro(Handle,'Falha ao tentar limpar evento Padrão !' + #13 +
                   'Erro: ' + E.Message + '.');
    end;
  end;

  { REGISTER EVENTS }
  REC_SHE_DEF.FB_Event := TRIM(REC_SHE_DEF.FB_Event);
  if REC_SHE_DEF.FB_Event <> EmptyStr then

  try
    { ADMIN }
    REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
    EEvent.Events.Add(REC_SHE_DEF.FB_EVE_ADM);

    { PADRÃO }
    if not RECUsuarios.IS_EVE_ADM then
    begin
      REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
      EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
    end;

    { EDIÇÃO }
    if REC_SHE_DEF.FB_EVE_EDT <> EmptyStr then
    begin
      if ACTEveRegister.Tag > 0 then
      REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_EVE_EDT + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(ACTEveRegister.Tag,3) else
      REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_EVE_EDT + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);

      EEvent.Events.Add(REC_SHE_DEF.FB_EVE_EDT);
      ACTEveRegister.Tag := 0;
    end;

    EEvent.RegisterEvents;
  except
    on E: Exception do
    begin
      oErro(Application.Handle,'Falha ao tentar registrar evento !' + #13 +
                               'Erro: '   + E.Message + '.');
    end;
  end;
end;

procedure TFrmVEN_NFE.ACTEveExecuteExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then { SQL INJECTION }
    oRefresh(Edicao);
  end else

  try
    oOTransact(TEvent);

    { ADMIN }
    SPEvent.StoredProcName := 'SP_SHE_EVE';
    SPEvent.Prepare;

    for i := 0 to SPEvent.ParamCount - 1 do
    SPEvent.Params[i].Value := Null;

    SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
    SPEvent.Params[1].Value := REC_SHE_DEF.FB_EVE_PAD;
    SPEvent.Params[2].Value := REC_SHE_DEF.FB_EVE_EDT;

    SPEvent.ExecProc;
    SPEvent.UnPrepare;
    
    oCTransact(TEvent);
  except
    on E: Exception do
    begin
      oCTransact(TEvent,ltRollback);
      oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                E.Message              + '.');
    end;
  end;
end;

procedure TFrmVEN_NFE.ACTEveExpressExecute(Sender: TObject);
begin
  ACTEveRegister.Execute;
  ACTEveExecute.Execute;
end;

procedure TFrmVEN_NFE.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  if ((RECUSuarios.IS_EVE_ADM    ) and (RightStr(EventName,3) = 'ADM')) or
     ((not RECUSuarios.IS_EVE_ADM) and (RightStr(EventName,3) = oStrZero(RECUsuarios.ID,3))) then

  if REC_SHE_DEF.FB_EventAlert then
  //oRefresh(Edicao);
end;

procedure TFrmVEN_NFE.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crHourGlass;
end;

procedure TFrmVEN_NFE.EdicaoAfterOpen(DataSet: TDataSet);
begin
  { FINALIZA FORM SCREEN }
  Screen.Cursor := crDefault;
  SBRodape.Panels[0].Text := 'Consulta';

  { CABEÇALHO }
  if FIS_NFE_ADM.State = dsInactive then
     FIS_NFE_ADM.Open;

  { SUMÁRIO }
  if FIS_NFE_SUM.State = dsInactive then
     FIS_NFE_SUM.Open;

  { DUPLICATAS }
  if FIS_NFE_DUP.State = dsInactive then
     FIS_NFE_DUP.Open;

  { MÃO OBRA }
  if FIS_NFE_MAO.State = dsInactive then
     FIS_NFE_MAO.Open;
end;

procedure TFrmVEN_NFE.EdicaoBeforeClose(DataSet: TDataSet);
begin
  { CABEÇALHO }
  if FIS_NFE_ADM.State = dsBrowse then
     FIS_NFE_ADM.Close;

  { SUMÁRIO }
  if FIS_NFE_SUM.State = dsBrowse then
     FIS_NFE_SUM.Close;

  { DUPLICATAS }
  if FIS_NFE_DUP.State = dsBrowse then
     FIS_NFE_DUP.Close;

  { MÃO OBRA }
  if FIS_NFE_MAO.State = dsBrowse then
     FIS_NFE_MAO.Close;
end;

procedure TFrmVEN_NFE.EdicaoAfterClose(DataSet: TDataSet);
begin
  SBRodape.Panels[1].Text := EmptyStr;
end;

procedure TFrmVEN_NFE.EdicaoBeforeScroll(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.EdicaoAfterScroll(DataSet: TDataSet);
begin
  { INFORMAÇÕES TÉCNICAS }
  if EdicaoNFE_INFADCAD.AsString <> EmptyStr then
  PNLINFADTEC.Height := 60;

  { FRETE }
  if EdicaoNFE_VFRETE.AsFloat > 0 then
  DBGEdicaoNFE_VFRETE.Visible := True;

  { SEGURO }
  if EdicaoNFE_VSEG.AsFloat > 0 then
  DBGEdicaoNFE_VSEG.Visible := True;

  { DESPESA }
  if EdicaoNFE_VSERV.AsFloat > 0 then
  DBGEdicaoNFE_VSERV.Visible := True;

  { OUTRAS DESPESAS ACESSÓRIOS }
  if EdicaoNFE_VOUTRO.AsFloat > 0 then
  DBGEdicaoNFE_VOUTRO.Visible := True;
end;

procedure TFrmVEN_NFE.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  Edicao.Fields[0].Tag := Edicao.RecNo;
end;

procedure TFrmVEN_NFE.EdicaoAfterInsert(DataSet: TDataSet);
begin
  DBGEdicaoNFE_CPROD.Field.FocusControl;
  if PCEdicao.ActivePage = TSProduto then
  if PNLPrincipal.Enabled then
  oSetFocus(DBGEdicao);
end;

procedure TFrmVEN_NFE.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value   := 0;
  EdicaoIDEV.Value := REC_SHE_DEF.IDEV;
  EdicaoFLAG.Value := 0;

  with SQLPKSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(PK.NFE_NITEMPED),0) FROM FIS_NFE_ITE AS PK');
    SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    ExecQuery;
    EdicaoNFE_NITEMPED.Value := Current.Vars[0].AsInteger + 1;
  end;

  EdicaoCP_AK_ID.Value  := 0;
  EdicaoCP_IMG_ID.Value := 0;

  EdicaoNFE_CDNF.Value   := Trunc(CECDNF.Value);
  EdicaoNFE_CFOP.Value   := LeftStr(PECFOP.Text,4);
  EdicaoNFE_MODBC.Value  := 3;
  EdicaoNFE_UF.Value     := IEUF.Text;
  EdicaoNFE_INDTOT.Value := 1;

  EdicaoIP.Value   := RECParametros.IP;
  EdicaoHOST.Value := RECParametros.HOST;
end;

procedure TFrmVEN_NFE.EdicaoBeforeEdit(DataSet: TDataSet);
begin
  EdicaoId.Tag := EdicaoId.AsInteger;
end;

procedure TFrmVEN_NFE.EdicaoAfterEdit(DataSet: TDataSet);
begin
  if PCEdicao.ActivePage = TSProduto then
  if PNLPrincipal.Enabled then
  oSetFocus(DBGEdicao);
end;

procedure TFrmVEN_NFE.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(Handle,'Confirma Exclusão ?') = mrNo then
  Abort;
end;

procedure TFrmVEN_NFE.EdicaoAfterDelete(DataSet: TDataSet);
begin
  ACTNFeCalculate.Execute;
end;

procedure TFrmVEN_NFE.EdicaoBeforePost(DataSet: TDataSet);
begin
  if IEFinNFe.Text <> '2' then
  begin
    if Length(EdicaoNFE_NCM.AsString) < 8 then
    EdicaoNFE_NCM.Value := '00000000';

    if (RightStr(EdicaoNFE_CFOP.AsString,1) = '2') and (EdicaoNFE_ORIG.AsInteger <> 1) then
    EdicaoNFE_PIPI.Value := 0;

    if LeftStr(EdicaoNFE_CEAN.AsString,3) <> '789' then
    EdicaoNFE_CEAN.Value := '';

    EdicaoNFE_UTRIB.Value   := IFThen(LeftStr(EdicaoNFE_CFOP.AsString,1) <> '7',EdicaoNFE_UCOM.AsString,EdicaoNFE_UTRIB.AsString);
    EdicaoNFE_QTRIB.Value   := IFThen(EdicaoNFE_QTRIB.AsFloat = 0,EdicaoNFE_QCOM.AsFloat,EdicaoNFE_QTRIB.AsFloat);
    EdicaoNFE_VUNTRIB.Value := IFThen(EdicaoNFE_VUNTRIB.AsFloat = 0,EdicaoNFE_VUNCOM.AsFloat,EdicaoNFE_VUNTRIB.AsFloat);
  end else
  begin
    EdicaoNFE_CSTIPI.Value := NewCSTIPI;
    EdicaoNFE_VNF.Value    := EdicaoNFE_VIPI.AsFloat;
  end;

  if EdicaoNFE_CSTIPI.Value = EmptyStr then
  begin
    EdicaoNFE_CSTIPI.Value := '99';
    EdicaoNFE_CENQ.Value   := '999';
  end;

  { Limpa CEST Incorreto ! }
  if EdicaoNFE_CEST.Value  = '0' then EdicaoNFE_CEST.Value := EmptyStr;
end;

procedure TFrmVEN_NFE.EdicaoAfterPost(DataSet: TDataSet);
var
  ABMRecord: TBookMark;
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  try
    if EdicaoID.AsInteger > 0 then
    ABMRecord := Edicao.GetBookmark else
    ABMRecord := Nil;

    TSEdicao.CommitRetaining;
    ACTNFeCalculate.Execute;
  finally
    if ABMRecord <> Nil then
    begin
      Edicao.GotoBookmark(ABMRecord);
      Edicao.FreeBookmark(ABMRecord);
    end else
    Edicao.Last;

    REC_SHE_DEF.Editing := True;
  end;
end;

procedure TFrmVEN_NFE.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if Edicao.Fields[0].Tag = 0 then
  begin
    Edicao.Close;
    Edicao.Open;
    Edicao.Last;

    ABORT;
  end;
end;

procedure TFrmVEN_NFE.EdicaoAfterCancel(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.EdicaoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_NFE.EdicaoEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_NFE.EdicaoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_NFE.EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_NFE.EdicaoCalcFields(DataSet: TDataSet);
begin
  Edicao.FieldByName('C_ID').Value := Edicao.RecNo;
end;

procedure TFrmVEN_NFE.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  DBGEdicaoNFE_XPED.Visible  := (IEITEMPED.Text = '1');

  { Ajuste Colunas }
  if Edicao.State = dsBrowse then
  begin
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_XPED );
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_CPROD);
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_XPROD);
    DBGEdicao.ApplyBestFit(DBGEdicaoNFE_NFCI );
  end;
end;

procedure TFrmVEN_NFE.DTSEdicaoStateChange(Sender: TObject);
begin
  oState(Edicao,SBMenuEdicao);
end;

procedure TFrmVEN_NFE.DBGEdicaoBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  AValueText: String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);

    if (Sender as TdxDBGrid).GroupColumnCount = 0 then
    begin
      Font.Color := clMenu;
      AValueText := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, AValueText);
    end;
  end;
end;

procedure TFrmVEN_NFE.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEdicaoC_ID.Index] <> Null then
    if ANode.Values[DBGEdicaoC_ID.Index] mod 2 <> 0 then
       AColor := $00F8F8F8 else
       AColor := clHighLightText;

    if AColumn = DBGEdicaoNFE_NITEMPED then
    begin
      AColor      := clGray;
      AFont.Color := clHighLightText;
    end;

    if (AColumn = DBGEdicaoNFE_QCOM) and (ANode.Values[DBGEdicaoNFE_QCOM.Index] <> Null) then
    begin
      AColor      := $00F9F1DF;
      AFont.Color := clWindowText;
    end;

    if (AColumn = DBGEdicaoNFE_VUNCOM) and (ANode.Values[DBGEdicaoNFE_VUNCOM.Index] <> Null) then
    begin
      AColor      := $00F9F1DF;
      AFont.Color := clWindowText;
    end;

    if (AColumn = DBGEdicaoNFE_VNF) and (ANode.Values[DBGEdicaoNFE_VNF.Index] <> Null) then
    begin
      AColor      := $00F9F1DF;
      AFont.Color := clWindowText;
    end;

    if (AColumn = DBGEdicaoNFE_VFRETE) and (ANode.Values[DBGEdicaoNFE_VFRETE.Index] <> Null) then
    if (ANode.Values[DBGEdicaoNFE_VFRETE.Index]) then
    begin
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGEdicaoNFE_VSEG) and (ANode.Values[DBGEdicaoNFE_VSEG.Index] <> Null) then
    if (ANode.Values[DBGEdicaoNFE_VSEG.Index]) then
    begin
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGEdicaoNFE_VSERV) and (ANode.Values[DBGEdicaoNFE_VSERV.Index] <> Null) then
    if (ANode.Values[DBGEdicaoNFE_VSERV.Index]) then
    begin
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGEdicaoNFE_VIPI) and (ANode.Values[DBGEdicaoNFE_VIPI.Index] <> Null) then
    if (ANode.Values[DBGEdicaoNFE_VIPI.Index]) then
    begin
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGEdicaoNFE_VST) and (ANode.Values[DBGEdicaoNFE_VST.Index] <> Null) then
    if (ANode.Values[DBGEdicaoNFE_VST.Index]) then
    begin
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGEdicaoNFE_VOUTRO) and (ANode.Values[DBGEdicaoNFE_VOUTRO.Index] <> Null) then
    if (ANode.Values[DBGEdicaoNFE_VOUTRO.Index]) then
    begin
      AFont.Style := [fsBold];
    end;
  end;

  if ANode.Selected then
  begin
    if Edicao.State = dsInsert then
    begin
      AColor      := clHighlightText;
      AFont.Color := clWindowText;
    end else
    begin
      AColor      := $00750000;//$00400000;
      AFont.Color := clHighlightText;
    end;  
  end;

  if ASelected then
  begin
    if Edicao.State in [dsInsert,dsEdit] then
    begin
      AColor      := clInfoBk;
      AFont.Color := clWindowText;
    end else
    begin
      AColor      := clHighlight; //$00E1AD40;
      AFont.Color := clHighlightText;
      AFont.Style := [];
    end;
  end;

  if AFocused then
  begin
    if Edicao.State in [dsInsert,dsEdit] then
    begin
      AColor      := clInfoBk;
      AFont.Color := clWindowText;
    end else
    begin
      AColor      := clHighlight; //$00E1AD40;
      AFont.Color := clHighlightText;
      AFont.Style := [];
    end;
  end;
end;

procedure TFrmVEN_NFE.DBGEdicaoDblClick(Sender: TObject);
begin
  if Edicao.RecNo = 0 then
  Abort;

  if EdicaoFLAG_CTRL.AsInteger = 1 then
  begin    if oYesNo(handle,'Desabilitar Cálculos Tributários ?') = mrYes then
    begin
      Edicao.Edit;
      EdicaoFLAG_CTRL.Value := 0;
      Edicao.Post;
    end;
  end else

  if oYesNo(handle,'Habilitar Cálculos Tributários ?') = mrYes then
  begin
    Edicao.Edit;
    EdicaoFLAG_CTRL.Value := 1;
    Edicao.Post;
  end;
end;

procedure TFrmVEN_NFE.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_insert: ACTMEAppend.Execute;
       vk_return: if Edicao.State = dsBrowse then
                  ACTMEEdit.Execute else

                  if Edicao.State in [dsInsert,dsEdit] then
                  begin
                    if Pos(DBGEdicao.FocusedField.FieldName,'NFE_CFOP') > 0 then
                    DBGEdicaoNFE_CPROD.Field.FocusControl else

                    if (Pos(DBGEdicao.FocusedField.FieldName,'NFE_CPROD') > 0) and (EdicaoNFE_CPROD.AsString = EmptyStr) then
                    DBGEdicaoNFE_NCM.Field.FocusControl else

                    if Pos(DBGEdicao.FocusedField.FieldName,'NFE_CPRODNFE_NCMNFE_XPRODNFE_ORIGNFE_UCOM') > 0 then
                    DBGEdicaoNFE_QCOM.Field.FocusControl else

                    if Pos(DBGEdicao.FocusedField.FieldName,'NFE_QCOM') > 0 then
                    DBGEdicaoNFE_VUNCOM.Field.FocusControl else

                    if Pos(DBGEdicao.FocusedField.FieldName,'NFE_VUNCOM') > 0 then
                    if EdicaoNFE_VPROD.AsFloat > 0 then
                    begin
                      Edicao.Next;
                      if Edicao.Eof then
                      Edicao.Append;
                    end else
                    DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn + 1;
                  end;
       VK_delete: ACTMEDelete.Execute;
       vk_escape: ACTMECancel.Execute;
  end;
end;

procedure TFrmVEN_NFE.EdicaoNFE_CFOPValidate(Sender: TField);
begin
  if TAB_CFOPCFOP.AsString <> EdicaoNFE_CFOP.AsString then
  begin
    TAB_CFOP.Close;
    TAB_CFOP.ParamByName('EP_ID').Value := RECParametros.EP_ID;
    TAB_CFOP.ParamByName('CFOP' ).Value := EdicaoNFE_CFOP.AsString;
    TAB_CFOP.Prepare;
    TAB_CFOP.Open;
  end;

  if ACTXMLImporta.Tag = 0 then
  begin
    ACTNFeICMS.Execute;
    ACTNFeCST.Execute;
  end;  
end;

procedure TFrmVEN_NFE.EdicaoNFE_ORIGValidate(Sender: TField);
begin
  if ACTXMLImporta.Tag = 1 then
  Exit;

  ACTNFeICMS.Execute;
end;

procedure TFrmVEN_NFE.EdicaoNFE_CSTValidate(Sender: TField);
begin
  if ACTXMLImporta.Tag = 1 then
  Exit;

  EdicaoNFE_PREDBC.Value := IFThen(EdicaoNFE_CST.AsString = '20',33.33,0);
end;

procedure TFrmVEN_NFE.EdicaoNFE_UCOMValidate(Sender: TField);
begin
  if ACTXMLImporta.Tag = 1 then
  Exit;

  if IEFinNFe.Text <> '2' then
  begin
    EdicaoNFE_UTRIB.Value   := EdicaoNFE_UCOM.AsString;
    EdicaoNFE_QTRIB.Value   := EdicaoNFE_QCOM.AsCurrency;
    EdicaoNFE_VUNTRIB.Value := EdicaoNFE_VUNCOM.AsFloat;
  end;
end;

procedure TFrmVEN_NFE.EdicaoNFE_QCOMValidate(Sender: TField);
begin
  if ACTXMLImporta.Tag = 0 then
  EdicaoNFE_VPROD.Value := EdicaoNFE_QCOM.AsCurrency * EdicaoNFE_VUNCOM.AsFloat;
end;

procedure TFrmVEN_NFE.EdicaoNFE_VPRODValidate(Sender: TField);
begin
  if ACTXMLImporta.Tag = 1 then
  Exit;

  if (EdicaoNFE_QTRIB.AsCurrency > 0) and (EdicaoNFE_VPROD.AsFloat > 0) then
  EdicaoNFE_VUNTRIB.Value := EdicaoNFE_VPROD.AsFloat / EdicaoNFE_QTRIB.AsCurrency;
end;

procedure TFrmVEN_NFE.EdicaoNFE_CSTIPIValidate(Sender: TField);
begin
  if ACTXMLImporta.Tag = 1 then
  Exit;

  { *** CORRETO VIR PRONTO DA TABELA DE CFOP *** }

  { Se o CST de IPI for de Imunidade (“04” de Entrada ou “54” de Saída), o Código de Enquadramento deve ser de "001” a “099” }
  if ((EdicaoNFE_CSTIPI.AsString = '04') and (IECFOP_TPNF.Text = '0')) or ((EdicaoNFE_CSTIPI.AsString = '54') and (IECFOP_TPNF.Text = '1')) then
       EdicaoNFE_CENQ.Value := '001' else

  { Se o CST de IPI for de Suspensão (“05” de Entrada ou “55” de Saída), o Código de Enquadramento deve ser de "101” a “199” }
  if ((EdicaoNFE_CSTIPI.AsString = '05') and (IECFOP_TPNF.Text = '0')) or ((EdicaoNFE_CSTIPI.AsString = '55') and (IECFOP_TPNF.Text = '1')) then
       EdicaoNFE_CENQ.Value := '101' else

  { Se o CST de IPI for de Isenção (“02” de Entrada ou “52” de Saída), o Código de Enquadramento deve ser de "301” a “399” }
  if ((EdicaoNFE_CSTIPI.AsString = '02') and (IECFOP_TPNF.Text = '0')) or ((EdicaoNFE_CSTIPI.AsString = '52') and (IECFOP_TPNF.Text = '1')) then
       EdicaoNFE_CENQ.Value := '301' else

  { Se o CST de IPI for de Redução (“49” de Entrada ou “99” de Saída), o Código de Enquadramento deve ser de "601” a “608” }
  if ((EdicaoNFE_CSTIPI.AsString = '49') and (IECFOP_TPNF.Text = '0')) or ((EdicaoNFE_CSTIPI.AsString = '99') and (IECFOP_TPNF.Text = '1')) then
       EdicaoNFE_CENQ.Value := '601' else
       EdicaoNFE_CENQ.Value := '999';
end;

procedure TFrmVEN_NFE.EdicaoNFE_PIPIValidate(Sender: TField);
begin
  if ACTXMLImporta.Tag = 1 then
  Exit;

  if (IEFinNFe.Text <> '2') and (EDISUF.Text = EmptyStr) then
  EdicaoNFE_CSTIPI.Value := TAB_CFOPCFOP_CSTIPI.AsString;
end;

procedure TFrmVEN_NFE.DBGEdicaoNFE_CFOPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  ACTNFeCalculate.Tag := 0;
end;

procedure TFrmVEN_NFE.DBGEdicaoNFE_QCOMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicaoNFE_QCOM.Tag := IFThen(Length(PECFOP.Text) > 4,1,0);
end;

procedure TFrmVEN_NFE.DBGEdicaoNFE_VICMSValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (IEFinNFe.Text = '2') or (IEFinNFe.Text = '3') then
  begin
    EdicaoNFE_VBC.Value := StrToFloat(DBGEdicao.EditingText);
    if EdicaoNFE_VBC.AsFloat > 0 then
    begin
      EdicaoNFE_PICMS.Value := IFThen(EdicaoNFE_PICMS.Value = 0,StrToFloat(NewPICMS),EdicaoNFE_PICMS.AsFloat);
      EdicaoNFE_VICMS.Value := RoundTO((EdicaoNFE_VBC.AsFloat * EdicaoNFE_PICMS.AsFloat)/100,-2);
    end;
  end;
end;

procedure TFrmVEN_NFE.FIS_NFE_DUPNFE_VORIGValidate(Sender: TField);
begin
  FIS_NFE_DUPNFE_VDUP.Value := FIS_NFE_DUPNFE_VLIQ.AsCurrency - FIS_NFE_DUPNFE_VDSC.AsCurrency;
end;

procedure TFrmVEN_NFE.FIS_NFE_MAONewRecord(DataSet: TDataSet);
begin
  FIS_NFE_MAOID.Value   := 0;
  FIS_NFE_MAOIDEV.Value := REC_SHE_DEF.IDEV;
end;

procedure TFrmVEN_NFE.DBGPKSumarioCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Produtos }
    if (AColumn = DBGPKSumarioNFE_VPROD) and (ANode.Values[DBGPKSumarioNFE_VPROD.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VPROD.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { Descontos }
    if (AColumn = DBGPKSumarioNFE_VDESC) and (ANode.Values[DBGPKSumarioNFE_VDESC.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VDESC.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { Base de Cálculo }
    if (AColumn = DBGPKSumarioNFE_VBC) and (ANode.Values[DBGPKSumarioNFE_VBC.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VBC.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { NRT CBS }
    if (AColumn = DBGPKSumarioNFE_CBS_VCBS) and (ANode.Values[DBGPKSumarioNFE_CBS_VCBS.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_CBS_VCBS.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { NRT IBS MUNICIPAL }
    if (AColumn = DBGPKSumarioNFE_IBSUF_VIBSUF) and (ANode.Values[DBGPKSumarioNFE_IBSUF_VIBSUF.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_IBSUF_VIBSUF.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { NRT IBS ESTADUAL }
    if (AColumn = DBGPKSumarioNFE_IBSMUN_VIBSMUN) and (ANode.Values[DBGPKSumarioNFE_IBSMUN_VIBSMUN.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_IBSMUN_VIBSMUN.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { ICMS ESTADUAL }
    if (AColumn = DBGPKSumarioNFE_VICMS) and (ANode.Values[DBGPKSumarioNFE_VICMS.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VICMS.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { ICM INTERESTADUAL }
    if (AColumn = DBGPKSumarioNFE_VICMSUFDEST) and (ANode.Values[DBGPKSumarioNFE_VICMSUFDEST.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VICMSUFDEST.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { DESONERAÇÃO DE ICMS }
    if (AColumn = DBGPKSumarioNFE_VICMSDESON) and (ANode.Values[DBGPKSumarioNFE_VICMSDESON.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VICMSDESON.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { CRÉDIDO DE ICMS }
    if (AColumn = DBGPKSumarioNFE_VCREDICMSSN) and (ANode.Values[DBGPKSumarioNFE_VCREDICMSSN.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VCREDICMSSN.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { BASE ICMS-ST }
    if (AColumn = DBGPKSumarioNFE_VBCST) and (ANode.Values[DBGPKSumarioNFE_VBCST.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VBCST.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { ICMS-ST }
    if (AColumn = DBGPKSumarioNFE_VST) and (ANode.Values[DBGPKSumarioNFE_VST.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VST.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { IPI }
    if (AColumn = DBGPKSumarioNFE_VIPI) and (ANode.Values[DBGPKSumarioNFE_VIPI.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VIPI.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { PIS }
    if (AColumn = DBGPKSumarioNFE_VPIS) and (ANode.Values[DBGPKSumarioNFE_VPIS.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VPIS.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { COFINS }
    if (AColumn = DBGPKSumarioNFE_VCOFINS) and (ANode.Values[DBGPKSumarioNFE_VCOFINS.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VCOFINS.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { FRETE }
    if (AColumn = DBGPKSumarioNFE_VFRETE) and (ANode.Values[DBGPKSumarioNFE_VFRETE.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VFRETE.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { SEGURO }
    if (AColumn = DBGPKSumarioNFE_VSEG) and (ANode.Values[DBGPKSumarioNFE_VSEG.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VSEG.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { SERVIÇO }
    if (AColumn = DBGPKSumarioNFE_VSERV) and (ANode.Values[DBGPKSumarioNFE_VSERV.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VSERV.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { IMPORTAÇÃO II }
    if (AColumn = DBGPKSumarioNFE_VII) and (ANode.Values[DBGPKSumarioNFE_VII.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VII.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { FUNDO DE POBREZA }
    if (AColumn = DBGPKSumarioNFE_VFCPUFDEST) and (ANode.Values[DBGPKSumarioNFE_VFCPUFDEST.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VFCPUFDEST.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;
    
    { OUTROS }
    if (AColumn = DBGPKSumarioNFE_VOUTRO) and (ANode.Values[DBGPKSumarioNFE_VOUTRO.Index] <> Null) then
    if (ANode.Values[DBGPKSumarioNFE_VOUTRO.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;
  end;
end;

procedure TFrmVEN_NFE.DBGFKSumarioCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { OUTROS TRIBUTOS }
    if (AColumn = DBGFKSumarioNFE_VTOTTRIB) and (ANode.Values[DBGFKSumarioNFE_VTOTTRIB.Index] <> Null) then
    if (ANode.Values[DBGFKSumarioNFE_VTOTTRIB.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    { DUPLICATAS }
    if (AColumn = DBGFKSumarioNFE_VDUP) and (ANode.Values[DBGFKSumarioNFE_VDUP.Index] <> Null) then
    if (ANode.Values[DBGFKSumarioNFE_VDUP.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;

    {  Nota Fiscal }
    if (AColumn = DBGFKSumarioNFE_VNF) and (ANode.Values[DBGFKSumarioNFE_VNF.Index] <> Null) then
    if (ANode.Values[DBGFKSumarioNFE_VNF.Index] > 0) then
    begin
      AFont.Name  := 'Tahoma';
      AFont.Style := [fsBold];
    end;
  end;
end;

procedure TFrmVEN_NFE.TAB_PAGAfterOpen(DataSet: TDataSet);
begin
  RECRomaneio.CDPG := IntToStr(TAB_PAGID.AsInteger);
  RECRomaneio.DEPG := TAB_PAGPAG_DPAG.AsString;

  IETPAG.Text   := '99';
  IEINDPAG.Text := '0' ;

  { Tipo de Pagamento }
  if IEBOLETO.Text  = 'SIM' then
     IETPAG.Text := '15' else
     if Pos('DIN',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '01' else
     if Pos('CHE',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '02' else
     if Pos('CRÉ',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '03' else
     if Pos('DÉB',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '04' else
     if Pos('DEP',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '16' else
     if Pos('PIX',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '17' else
     if Pos('TED',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '18' else
     if Pos('SEM',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '90' else
     if Pos('SER',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '90';

  { Forma de Pagamento }
  if IEINDPAG.Text <> '2' then
  IEINDPAG.Text := IFThen(TAB_PAGPAG_PARC.AsInteger > 1,'1','0');

  if (RECParametros.EP_ID = 2) and (IETPAG.Text = '99') then { Ricardo - E-armarinhos }
  IETPAG.Text := '18'
end;

procedure TFrmVEN_NFE.DBGEdicaoNFE_CPRODValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  { SKU }
  ACTPSQ_CAD_PRO.Caption     := 'PK.SKU'; { Field }
  ACTPSQ_CAD_PRO.HelpKeyWord := DBGEdicao.EditingText; { Value }
  ACTPSQ_CAD_PRO.Execute;
end;

procedure TFrmVEN_NFE.DBGEdicaoNFE_NCMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  { SKU }
  ACTPSQ_CAD_PRO.Caption     := 'PK.FIS_NCM'; { Field }
  ACTPSQ_CAD_PRO.HelpKeyWord := DBGEdicao.EditingText; { Value }
  ACTPSQ_CAD_PRO.Execute;
end;

procedure TFrmVEN_NFE.CECDNFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
  var i: word;
begin
  if CECDNF.Value = 0 then
  oException(Nil,'Número da Nota Fiscal não Informado !');

  if (CECDNF.Tag <> CECDNF.Value) and (CECDNF.Tag > 0) then
  begin
    SBRodape.Panels[2].Text := EmptyStr;
    SBRodape.Update;

    with SQLPKSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE FIS_NFE_DUP');
      SQL.Add('SET');

      SQL.Add('NFE_CDNF   = ''' + CECDNF.Text      + '''');
      SQL.Add('WHERE IDEV = ''' + REC_SHE_DEF.IDEV + '''');
      ExecQuery;
    end;

    if (LeftStr(PECFOP.Text,1) = '3') and (RECParametros.NFE_CAD_PRO_DI) then
    begin
      Edicao.First;
      while not Edicao.Eof do
      begin
        Edicao.Edit;
        EdicaoNFE_CPROD.AsString := CECDNF.Text + '/' + EdicaoNFE_NITEMPED.AsString;
        Edicao.Post;
        Edicao.Next;
      end;
    end;

    { VER NOTA FISCAL EXISTE }
    if uPSQ_NFE_REG(RECParametros.EP_NO_GP,CECDNF.Text) then
    begin
      ACTNFeEdicao.Execute;
      oException(Nil,'Novo Número Selecionado !'+#13+
                     'Nota Fiscal: ' + uPSQ_NFE_MAX(RECParametros.EP_NO_GP));
    end;
    ACTPSQ_NFE_SEQ.Execute; { VER FUROS }

    i := 0;
    FIS_NFE_DUP.First;
    while not FIS_NFE_DUP.Eof do
    begin
      inc(i);

      FIS_NFE_DUP.Edit;
      FIS_NFE_DUPNFE_CDNF.Value := TRUNC(CECDNF.Value);
      FIS_NFE_DUPNFE_NDUP.Value := CECDNF.Text + IFThen(TAB_PAGPAG_PARC.AsInteger > 1,'-' + aDUP[i],EmptyStr);
      FIS_NFE_DUP.Post;
      FIS_NFE_DUP.Next;
    end;  
  end;

  CECDNF.Tag      := Trunc(CECDNF.Value);
  CECDNF.Modified := False;
end;

procedure TFrmVEN_NFE.DEdhSaiEntDblClick(Sender: TObject);
begin
  if RECUsuarios.Id = 0 then
  DEdhEmi.Date := DEdhSaiEnt.Date;
end;

procedure TFrmVEN_NFE.IEFinNFeChange(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  if Pos(IEFinNFe.Text,'23') > 0 then
  begin
    with SQLPKSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM FIS_NFE_DUP AS PK');
      SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM FIS_NFE_MAO AS PK');
      SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM FIS_NFE_ITE AS PK');
      SQL.Add('WHERE  PK.IDEV     = ''' + REC_SHE_DEF.IDEV + '''');
      SQL.Add('AND    PK.NFE_PIPI = 0');
      ExecQuery;
    end;
    oRefresh(Edicao);

    Edicao.First;
    while not Edicao.Eof do
    begin
      Edicao.Edit;
      EdicaoNFE_XPROD.Value     := 'NOTA FISCAL COMPLEMENTAR';
      EdicaoNFE_INFADCAD.Value  := EmptyStr;
      EdicaoCP_CMP_NO.Value      := EmptyStr;
      EdicaoNFE_QCOM.Value      := 0;
      EdicaoNFE_VUNCOM.Value    := 0;
      EdicaoNFE_QTRIB.Value     := 0;
      EdicaoNFE_VUNTRIB.Value   := 0;
      EdicaoNFE_VPROD.Value     := 0;
      EdicaoNFE_VDESC.Value     := 0;

    { EdicaoNFE_VBC.Value   := 0;
      EdicaoNFE_PICMS.Value := 0;
      EdicaoNFE_VICMS.Value := 0;

      EdicaoNFE_VBCIPI.Value := 0;
      EdicaoNFE_PIPI.Value   := 0;
      EdicaoNFE_VIPI.Value   := 0; }

      EdicaoNFE_VBCPIS.Value := 0;
      EdicaoNFE_PPIS.Value   := 0;
      EdicaoNFE_VPIS.Value   := 0;

      EdicaoNFE_VBCCOFINS.Value := 0;
      EdicaoNFE_PCOFINS.Value   := 0;
      EdicaoNFE_VCOFINS.Value   := 0;

      EdicaoNFE_VFRETE.Value := 0;

      Edicao.Post;
      Edicao.Next;
    end;

    { TRANSPORTADORAS }
    ACTPSQ_CAD_TRA.Caption     := 'CT_ID';  { Field }
    ACTPSQ_CAD_TRA.HelpKeyWord := '0'; { Value }
    ACTPSQ_CAD_TRA.Execute;

    PEESP.Text   := EmptyStr;
    CEQVOL.Value := 0;
    CEPSBR.Value := 0;
    CEPSLQ.Value := 0;

    IEBOLETO.Text := 'NÃO';
    IECDPG.Text   := EmptyStr;

    IETPAG.Text   := '99';
    IEINDPAG.Text := '90';

    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('NOTA FISCAL COMPLEMENTAR DE (ICMS OU IPI), REFERENTE A NOSSA NF-E DE No: ' + NewCDNF + ' EMITIDA EM ' + NewDTNF);
    EDINFADNF.Update;
  end else

  if (Pos(IEFinNFe.Text,'4') > 0) and (NewCHNFE <> EmptyStr) and (NewCDNF <> EmptyStr) and (NewDTNF <> EmptyStr) then
  begin

    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('DEVOLUÇÃO TOTAL DE MERCADORIA - REFERENTE NOTA FISCAL ' + NewCDNF + ' DE ' + NewDTNF);
    EDINFADNF.Update;

    IEBOLETO.Text := 'NÃO';
    IECDPG.Text := EmptyStr;

    IETPAG.Text   := '90';
    IEINDPAG.Text := '';
  end;
end;

procedure TFrmVEN_NFE.IETPAGChange(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  if Pos(IETPAG.Text,'99') > 0 then
  IEINDPAG.Text := '90';
end;

procedure TFrmVEN_NFE.EDCDPDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if EDCDPD.Text  = '0' then
  EDCDPD.Text := EmptyStr;
end;

procedure TFrmVEN_NFE.CEPDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  LAPDSC.Tag   := 1;
  CEVDSC.Value := RoundTO((CEPDSC.Value / 100) * FIS_NFE_SUMNFE_VPROD.AsCurrency,-2);

  ACTNFeCalculate.Execute;

  PCEdicao.ActivePageIndex := 0;
  DBGEdicao.SetFocus;
  DBGEdicao.FocusedAbsoluteIndex := DBGEdicaoNFE_VDESC.ColIndex;
end;

procedure TFrmVEN_NFE.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  RECRomaneio.AWinControl := TWinControl(Sender);
  RECRomaneio.AQConsulta  := QConsulta;
  RECRomaneio.CDCD        := IntToStr(LAIDCD.Tag);

  try uPSQCAD(RECRomaneio);
  finally
    if RECRomaneio.Selected then
    begin
      CEIDCD.Value := RECRomaneio.IDCD;
      EDDECD.Text  := RECRomaneio.DECD;

      EDxNome.Text   := RECRomaneio.RZCD;
      PEEmail.Text   := RECRomaneio.EMAIL;
      edCNPJ.Text    := RECRomaneio.CNPJ;
      edCPF.Text     := RECRomaneio.CPF;
      EDISUF.Text    := RECRomaneio.ISUF;

      edDDD.Text     := RECRomaneio.DDD;
      EDFone.Text    := RECRomaneio.TEL;
      EDContato.Text := RECRomaneio.CONTATO;

      { Endereço Comercial }
      PETxLgr.Text   := RECRomaneio.TLO_TX;
      EDxLgr.Text    := RECRomaneio.LOG_NO;
      EDNRO.Text     := RECRomaneio.NRO;
      EDxCpl.Text    := RECRomaneio.XCPL;
      edCEP.Text     := RECRomaneio.CEP;
      EDxBairro.Text := RECRomaneio.BAI_NO;
      EDxMun.Text    := RECRomaneio.LOC_NO;
      BECMun.Text    := RECRomaneio.CMUN;
      IEUF.Text      := RECRomaneio.UF;

      { Endereço Entrega }
      PEETxLgr.Text   := RECRomaneio.ENT_TLO_TX;
      EDExLgr.Text    := RECRomaneio.ENT_LOG_NO;
      EDENRO.Text     := RECRomaneio.ENT_NRO;
      EDExCpl.Text    := RECRomaneio.ENT_XCPL;
      edECEP.Text     := RECRomaneio.ENT_CEP;
      EDExBairro.Text := RECRomaneio.ENT_BAI_NO;
      EDExMun.Text    := RECRomaneio.ENT_LOC_NO;
      PEECMun.Text    := RECRomaneio.ENT_CMUN;
      PEEUF.Text      := RECRomaneio.ENT_UF;

      IERegime.Text   := RECRomaneio.FIS_CRT;
      IECredICMS.Text := RECRomaneio.FIS_CREDICMS;

      if ((GBInfAdF.Height > 40) and (not oEmpty(EDInfAdF.Text))) then
           GBInfAdF.Visible := True else GBInfAdF.Visible := False;

      PEIE.Items.Clear;
      PEIE.Items.Add('');
      PEIE.Items.Add('ISENTO');
      PEIE.Items.Add(RECRomaneio.IE);
      PEIE.Text := RECRomaneio.IE;

      if (PEIE.Text = EmptyStr) or (PEIE.Text = 'ISENTO') then
      begin
        IEindIEDest.Text := '9';
        IEindFinal.Text  := '1';
      end;

      if (CECDRO.Value = 0) and (Pos(PECFOP.Text,'59246924') = 0) then
      begin
        with SQLFKConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 PK.DTCA,PK.CFOP,PK.NFE_DTRA,FK.NFE_MODFRETE');
          SQL.Add('FROM ' + oREPZero('NFE_CAB','_',RECParametros.EP_ID,3)+' AS PK');
          SQL.Add('JOIN ' + oREPZero('NFE_TRA','_',RECParametros.EP_ID,3)+' AS FK ON (FK.IDPK = PK.IDPK)');
          SQL.Add('WHERE    PK.NFE_DFAV = ''' + RECRomaneio.DECD + '''');
          SQL.Add('ORDER BY 1 DESC');
          ExecQuery;
        end;

        { NATUREZA DE OPERAÇÃO }
        ACTPSQ_TAB_CFOP.Caption     := 'NFE_CFOP';  { Field }
        ACTPSQ_TAB_CFOP.HelpKeyWord := SQLFKConsulta.Current.Vars[1].AsString; { Value }
        ACTPSQ_TAB_CFOP.Execute;

        //ricardoPESQUISA_TRANSPORTADORA(SQLFKConsulta.Current.Vars[2].AsString,'U');
      end;
    end;
  end;
end;

procedure TFrmVEN_NFE.IEBOLETOChange(Sender: TObject);
begin
  IEPRAZO.Enabled := (IEBOLETO.Text = 'SIM');
  IECDPG.Enabled  := (IEBOLETO.Text = 'SIM');

  ACTNFeCalculate.Execute;
end;

procedure TFrmVEN_NFE.EDISUFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDISUF.Modified := False;
  EDISUF.Text     := oRETNumero(EDISUF.Text);

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.CENQ_IMP FROM TAB_CEP_LOC_ZFM AS PK');
    SQL.Add('WHERE  PK.ID = ''' + IFThen(BECMUN.Text <> EmptyStr,BECMUN.Text,'0') + '''');
    ExecQuery;

    RECRomaneio.ZFM_CMUN := (Current.Vars[0].AsInteger > 0) and (EDISUF.Text <>   EmptyStr);
    RECRomaneio.ZFM_CENQ :=  IFThen(RECRomaneio.ZFM_CMUN,Current.Vars[1].AsString,EmptyStr);
  end;

  ACTNFeCalculate.Execute;
end;

procedure TFrmVEN_NFE.IECredICMSValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  ACTNFeCalculate.Execute;
end;

procedure TFrmVEN_NFE.IEindIEDestChange(Sender: TObject);
begin
  if IEindIEDest.Text = '1' then
  IEindIEDest.Hint := 'Contribuinte de ICMS (obrigatório informar a IE do destinatário).' else
  if IEindIEDest.Text = '2' then
  IEindIEDest.Hint := 'Contribuinte isento de IE no cadastro de contribuintes do ICMS.' else
  if IEindIEDest.Text = '9' then
  IEindIEDest.Hint := 'Não Contribuinte, que pode ou não possuir IE no cadastro de contribuintes do ICMS.' else
  IEindIEDest.Hint := 'Indicador da IE do destinatário';
end;

procedure TFrmVEN_NFE.IEindFinalValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  ACTNFeCalculate.Execute;
end;

procedure TFrmVEN_NFE.EDidEstrangeiroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDINFADNF.Text := EDINFADNF.Text + EDidEstrangeiro.Text;
  ACTNFeINFADCAD.Execute;
end;

procedure TFrmVEN_NFE.IEICMS_STValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if IEICMS_ST.Text = 'SIM' then
  begin
    PECFOP.Modified := True;
    PECFOP.ValidateEdit;
  end else

  ACTNFeCalculate.Execute;
end;

procedure TFrmVEN_NFE.BECMunValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  BECMUN.Modified := False;
  BECMUN.Text     := oRETNumero(BECMUN.Text);
end;

procedure TFrmVEN_NFE.IEUFChange(Sender: TObject);
begin
  if IEUF.Text = EmptyStr then
  Exit;

  if IEUF.Text  = 'EX' then
  IEXPAIS.Text := '1600';

  with TAB_ALQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.* FROM TAB_ALQ AS PK');
    SQL.Add('WHERE  PK.UF = ''' + IEUF.Text + '''');
    Open;

    if Current.ByName('UF').Value = 'XX' then
    IEUF.Text := EmptyStr;
  end;

  if not ALockWindowUpdate then { SQL INJECTION }
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('UPDATE FIS_NFE_ITE');
       SQL.Add('SET    NFE_UF = ''' + IEUF.Text        + '''');
       SQL.Add('WHERE  IDEV   = ''' + REC_SHE_DEF.IDEV + '''');
       ExecQuery;

       Edicao.Close;
       Edicao.Open;
       Edicao.Last;
     end;
end;

procedure TFrmVEN_NFE.IExPaisChange(Sender: TObject);
begin
  if Pos(IEFinNFe.Text,'23') > 0 then
  begin
    with SQLPKSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM FIS_NFE_DUP AS PK');
      SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM FIS_NFE_MAO AS PK');
      SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM FIS_NFE_ITE AS PK');
      SQL.Add('WHERE  PK.IDEV     = ''' + REC_SHE_DEF.IDEV + '''');
      SQL.Add('AND    PK.NFE_PIPI = 0');
      ExecQuery;
    end;

    Edicao.Close;
    Edicao.Open;
    Edicao.Last;

    Edicao.First;
    while not Edicao.Eof do
    begin
      Edicao.Edit;
      EdicaoNFE_XPROD.Value    := 'NOTA FISCAL COMPLEMENTAR';
      EdicaoNFE_INFADCAD.Value := EmptyStr;
      EdicaoCP_CMP_NO.Value    := EmptyStr;
      EdicaoNFE_QCOM.Value     := 0;
      EdicaoNFE_VUNCOM.Value   := 0;
      EdicaoNFE_QTRIB.Value    := 0;
      EdicaoNFE_VUNTRIB.Value  := 0;
      EdicaoNFE_VPROD.Value    := 0;
      EdicaoNFE_VDESC.Value    := 0;

    { EdicaoNFE_VBC.Value   := 0;
      EdicaoNFE_PICMS.Value := 0;
      EdicaoNFE_VICMS.Value := 0;

      EdicaoNFE_VBCIPI.Value := 0;
      EdicaoNFE_PIPI.Value   := 0;
      EdicaoNFE_VIPI.Value   := 0; }

      EdicaoNFE_VBCPIS.Value := 0;
      EdicaoNFE_PPIS.Value   := 0;
      EdicaoNFE_VPIS.Value   := 0;

      EdicaoNFE_VBCCOFINS.Value := 0;
      EdicaoNFE_PCOFINS.Value   := 0;
      EdicaoNFE_VCOFINS.Value   := 0;

      EdicaoNFE_VFRETE.Value := 0;

      Edicao.Post;
      Edicao.Next;
    end;

    { TRANSPORTADORAS }
    ACTPSQ_CAD_TRA.Caption     := 'CT_ID';  { Field }
    ACTPSQ_CAD_TRA.HelpKeyWord := '0'; { Value }
    ACTPSQ_CAD_TRA.Execute;

    PEESP.Text   := EmptyStr;
    CEQVOL.Value := 0;
    CEPSBR.Value := 0;
    CEPSLQ.Value := 0;

    IEBOLETO.Text := 'NÃO';
    IECDPG.Text   := EmptyStr;

    IETPAG.Text   := '99';
    IEINDPAG.Text := '90';

    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('NOTA FISCAL COMPLEMENTAR DE (ICMS OU IPI), REFERENTE A NOSSA NF-E DE No: ' + NewCDNF + ' EMITIDA EM ' + NewDTNF);
    EDINFADNF.Update;
  end else
  
  if (Pos(IEFinNFe.Text,'4') > 0) and (NewCHNFE <> EmptyStr) and (NewCDNF <> EmptyStr) and (NewDTNF <> EmptyStr) then
  begin
    if Pos(PECFOP.Text,'12011202220122025101610151026102') > 0 then
    begin
      if Pos(PECFOP.Text,'12015101') > 0 then PECFOP.Text := '5201' else
      if Pos(PECFOP.Text,'12025102') > 0 then PECFOP.Text := '5202' else
      if Pos(PECFOP.Text,'22016101') >0  then PECFOP.Text := '6201' else
      if Pos(PECFOP.Text,'22026102') > 0 then PECFOP.Text := '6202';

      { NATUREZA DE OPERAÇÃO }
      ACTPSQ_TAB_CFOP.Caption     := 'NFE_CFOP';  { Field }
      ACTPSQ_TAB_CFOP.HelpKeyWord := PECFOP.Text; { Value }
      ACTPSQ_TAB_CFOP.Execute;
    end;

    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('DEVOLUÇÃO TOTAL DE MERCADORIA - REFERENTE NOTA FISCAL ' + NewCDNF + ' DE ' + NewDTNF);
    EDINFADNF.Update;

    IEBOLETO.Text := 'NÃO';
    IECDPG.Text := EmptyStr;

    IETPAG.Text   := '99';
    IEINDPAG.Text := '90';
  end;
end;

procedure TFrmVEN_NFE.CER_IDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  RECNFTriangular.AWinControl := TWinControl(Sender);
  RECNFTriangular.AQConsulta  := QConsulta;
  RECNFTriangular.CDCD        := IntToStr(LAIDCD.Tag);
  RECNFTriangular.Selected    := False;

  if (CER_IDCD.Value > 0) or (EDR_DECD.Text <> EmptyStr) then
  uPSQCAD(RECNFTriangular);

  ACTNFeTriangular.Execute;
  ACTNFeCalculate.Execute;
  ACTNFeINFADCAD.Execute;
end;

procedure TFrmVEN_NFE.CEIDCTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  { TRANSPORTADORAS }
  if Sender.ClassType = TdxCurrencyEdit then
  ACTPSQ_CAD_TRA.Caption     := 'CT_ID' else { Field }
  ACTPSQ_CAD_TRA.Caption     := 'FANTASIA';  { Field }
  ACTPSQ_CAD_TRA.HelpKeyWord := PEDECT.Text; { Value }
  ACTPSQ_CAD_TRA.Execute;
end;

procedure TFrmVEN_NFE.PECFOPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if TAB_CFOPCFOP.AsString <> PECFOP.Text then
  begin
    TAB_CFOP.Close;
    TAB_CFOP.ParamByName('EP_ID').Value := RECParametros.EP_ID;
    TAB_CFOP.ParamByName('CFOP' ).Value := PECFOP.Text;
    TAB_CFOP.Prepare;
    TAB_CFOP.Open;
  end;

  ACTPSQ_TAB_CFOP.HelpKeyWord := PECFOP.Text;
  PECFOP_NO.Text := TAB_CFOPCFOP_NO.AsString;
  IECFOP_TPNF.Text := TAB_CFOPCFOP_TPNF.AsString;
  EDCFOP_TPNF_NO.Text := TAB_CFOPCFOP_TPFN_NO.AsString;
  EDFINALIDADE_ABREV.Text := TAB_CFOPFINALIDADE_ABREV.AsString;

  if PECFOP.Text = '6108' then
  IEindFinal.Text := '1'; { Consumidor Final }
  IEFinNFe.Text   := IFThen(EDCFOP_TPNF_NO.Text = 'DEVOLUÇÃO','4','1');

  if LeftStr(PECFOP.Text,1) = '3' then
  begin
    EDCNPJTerceiro.Text    := RECParametros.Cnpj;
    IEUFTerceiro.Text      := RECParametros.LOG_UF;
    EDcExportador.Text     := oStrZero(RECParametros.EP_ID,4);
    EDcFabricante.Text     := oStrZero(RECParametros.EP_ID,4);
    TSEXImporta.TabVisible := True;
    TSEXExporta.TabVisible := False;
  end else

  if LeftStr(PECFOP.Text,1) = '7' then
  begin
    EDCNPJProd.Text := RECParametros.Cnpj;
    TSEXImporta.TabVisible := False;
    TSEXExporta.TabVisible := True;
  end else
  begin
    EDnDI.Text          := '';
    DEdDI.Text          := '';
    EDxLocDesemb.Text   := '';
    IEUFDesemb.Text     := '';
    DEdDesemb.Text      := '';
    IETpViaTransp.Text  := '';
    CEvAFRMM.Text       := '';
    CEnAdicao.Text      := '';
    CEnSeqAdic.Text     := '';
    EDCNPJTerceiro.Text := '';
    IEUFTerceiro.Text   := '';
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

  { NATUREZA DE OPERAÇÃO }
  ACTPSQ_TAB_CFOP.Caption     := 'NFE_CFOP';  { Field }
  ACTPSQ_TAB_CFOP.HelpKeyWord := PECFOP.Text; { Value }
  ACTPSQ_TAB_CFOP.Execute;
  ACTNFeINFADCAD.Execute;
end;

procedure TFrmVEN_NFE.ACTNFeCalculateExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  try { Cálculo }
    Screen.Cursor := crHourGlass;

    if (ACTNFeCalculate.Tag =  0) and  { CALCULO FISCAL HABILITADO }
       (IEFinNFe.Text <> '2') then { NFe Complementar }

    try { Sincronismo }
      ALockWindowUpdate := True;
      
      if REC_SHE_DEF.FInitialize then
      begin
        GFASyncEvent.Animate := True;
        PNLSyncEvent.Width   := 500;
        SBSyncRecords.Panels[0].Text := 'Calculando carga tributária ...';

        Application.ProcessMessages;
      end;

      ACTNFeDesconto.Execute;  { Descontos }
      ACTNFeFrete.Execute;  { Frete }
      ACTNFeSeguro.Execute;  { Seguro }
      ACTNFeCFOP.Execute; { Consumidor Final }

      if IEFinNFe.Text <> '2' then { Complementar }

      try { Impostos }
        if not REC_SHE_DEF.FInitialize then
        begin
          Edicao.DisableControls;
          Edicao.First;
        end;
          
        while not Edicao.Eof do
        begin
          Application.ProcessMessages;
          
          Edicao.Edit;
          if EdicaoFLAG_CTRL.AsString <> '1' then
          begin
            EdicaoNFE_VDESC.Value          := 0;
            EdicaoNFE_VBC.Value            := 0;
            EdicaoNFE_VICMS.Value          := 0;
            EdicaoNFE_VICMSDESON.Value     := 0;
            EdicaoNFE_VBCIPI.Value         := 0;
            EdicaoNFE_VIPI.Value           := 0;
            EdicaoNFE_VBCPIS.Value         := 0;
            EdicaoNFE_VPIS.Value           := 0;
            EdicaoNFE_VBCCOFINS.Value      := 0;
            EdicaoNFE_VCOFINS.Value        := 0;
            EdicaoNFE_VBCCREDICMSSN.Value  := 0;
            EdicaoNFE_PCREDSN.Value        := 0;
            EdicaoNFE_VCREDICMSSN.Value    := 0;
            EdicaoNFE_VICMSST.Value        := 0;
            EdicaoNFE_PICMSST.Value        := 0;
            EdicaoNFE_VBCST.Value          := 0;
            EdicaoNFE_PMVAST.Value         := 0;
            EdicaoNFE_MODBCST.Value        := 0;
            EdicaoNFE_vBCUFDest.Value      := 0;
            EdicaoNFE_vBCFCPUFDest.Value   := 0;
            EdicaoNFE_pFCPUFDest.Value     := 0;
            EdicaoNFE_pICMSUFDest.Value    := 0;
            EdicaoNFE_pICMSInter.Value     := 0;
            EdicaoNFE_pICMSInterPart.Value := 0;
            EdicaoNFE_vFCPUFDest.Value     := 0;
            EdicaoNFE_vICMSUFDest.Value    := 0;
            EdicaoNFE_vICMSUFRemet.Value   := 0;

            if EdicaoNFE_INDTOT.AsInteger = 1 then
            begin
              { RATEIOS }
              if IFThen(ADSC_NREG > Edicao.RecNo,ADSC_VREG,ADSC_VSLD) < EdicaoNFE_VPROD.AsFloat then
              EdicaoNFE_VDESC.Value  := IFThen(ADSC_NREG > Edicao.RecNo,ADSC_VREG,ADSC_VSLD); { Descontos }
              EdicaoNFE_VFRETE.Value := IFThen(AFRT_NREG > Edicao.RecNo,AFRT_VREG,AFRT_VSLD); { Frete }
              EdicaoNFE_VSEG.Value   := IFThen(ASEG_NREG > Edicao.RecNo,ASEG_VREG,ASEG_VSLD); { Seguro }

              IF POS(PECFOP.Text,'5924692') = 0 then { TRIANGULAR }
              begin
                { BASE DE CÁLCULO }
                EdicaoNFE_VBC.Value      := (EdicaoNFE_VPROD.AsFloat - EdicaoNFE_VDESC.AsFloat) + (EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat);
                EdicaoNFE_VBCIPI.Value   := IFThen(EdicaoNFE_PIPI.AsFloat > 0,EdicaoNFE_VBC.AsFloat,0);
                EdicaoNFE_VBCPIS.Value   := IFThen(Pos(EdicaoNFE_CST.AsString,'49201202203') > 0,0,EdicaoNFE_VBC.AsFloat);
                EdicaoNFE_VBCCOFINS.Value := IFThen(Pos(EdicaoNFE_CST.AsString,'49201202203') > 0,0,EdicaoNFE_VBC.AsFloat);
              end else
              begin
                EdicaoNFE_PPIS.Value    := 0;
                EdicaoNFE_PCOFINS.Value := 0;
              end;

              { Somar IPI na base quando CONSUMIDOR FINAL }
              if IEindFinal.Text    = '1' then
              EdicaoNFE_VBC.Value := EdicaoNFE_VBC.AsFloat + EdicaoNFE_VIPI.AsFloat;

              { IMPOSTOS }
              EdicaoNFE_VIPI.Value    := RoundTO((EdicaoNFE_VBCIPI.AsFloat   * EdicaoNFE_PIPI.AsFloat   ) / 100,-2);
              EdicaoNFE_VPIS.Value    := RoundTO((EdicaoNFE_VBCPIS.AsFloat   * EdicaoNFE_PPIS.AsFloat   ) / 100,-2);
              EdicaoNFE_VCOFINS.Value := RoundTO((EdicaoNFE_VBCCOFINS.AsFloat * EdicaoNFE_PCOFINS.AsFloat) / 100,-2);

              { IMPORTAÇÃO }
              if EdicaoNFE_VBCIMP.AsFloat > 0then
              begin
                EdicaoNFE_VBCIPI.Value   := IFThen(EdicaoNFE_PIPI.AsFloat > 0,EdicaoNFE_VBCIMP.AsFloat,0);
                EdicaoNFE_VBCPIS.Value   := EdicaoNFE_VBCIMP.AsFloat;
                EdicaoNFE_VBCCOFINS.Value := EdicaoNFE_VBCIMP.AsFloat;
              end;

              if LeftStr(EdicaoNFE_CFOP.AsString,1) = '3' then
              begin
                EdicaoNFE_VBC.Value := RoundTO((EdicaoNFE_VBC.AsFloat + EdicaoNFE_VIPI.AsFloat + EdicaoNFE_VPIS.AsFloat + EdicaoNFE_VCOFINS.AsFloat) / 0.82,-2);
                EdicaoNFE_VNF.Value := EdicaoNFE_VBC.AsFloat;
              end else
              begin
                { SUFRAMA }
                if EDISUF.Text <> Emptystr then
                begin
                  if (EdicaoNFE_ORIG.AsInteger > 0) and (IEUF.Text <> RECParametros.LOG_UF) then
                      EdicaoNFE_PICMS.Value := 4;

                  if EDISUF.Text <> EmptyStr then
                  begin
                    EdicaoNFE_CFOP.Value   := IFThen((EdicaoNFE_ORIG.AsInteger > 0) or (not RECRomaneio.ZFM_CMUN),'6102','6110');

                    EdicaoNFE_CSTIPI.Value := '55';
                    EdicaoNFE_VBCIPI.Value := 0;
                    EdicaoNFE_PIPI.Value   := 0;
                    EdicaoNFE_VIPI.Value   := 0;

                    EdicaoNFE_CSTPIS.Value := '06';
                    EdicaoNFE_VBCPIS.Value := 0;
                    EdicaoNFE_PPIS.Value   := 0;
                    EdicaoNFE_VPIS.Value   := 0;

                    EdicaoNFE_CSTCOFINS.Value := '06';
                    EdicaoNFE_VBCCOFINS.Value  := 0;
                    EdicaoNFE_PCOFINS.Value   := 0;
                    EdicaoNFE_VCOFINS.Value   := 0;

                    if (EdicaoNFE_ORIG.AsInteger > 0) and (RECRomaneio.ZFM_CENQ <> EmptyStr) then
                    EdicaoNFE_CENQ.Value := RECRomaneio.ZFM_CENQ;

                    if (EdicaoNFE_ORIG.AsInteger = 0) and (RECRomaneio.ZFM_CMUN) then
                    if EdicaoNFE_VBC.AsFloat * 0.07 > 0.01 then
                    begin
                      EdicaoNFE_VICMSDESON.Value := EdicaoNFE_VBC.AsFloat * 0.07;
                      EdicaoNFE_MOTDESICMS.Value := 7;
                    end;
                  end;
                end;

                { SUBSTITUIÇÃO TRIBUTÁRIA }
                EdicaoNFE_PMVAST.Value := 0;
                EdicaoNFE_VBCST.Value  := 0;
                EdicaoNFE_VBCST.Value  := 0;

                if (Pos(PECFOP.Text,'51016101610859246924') = 0) and
                   (IEIndFinal.Text <> '1' ) and
                   (IEUF.Text       <> 'EX') and
                   (EDISUF.Text = EmptyStr ) then
                begin
                  with SQLConsulta do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('SELECT CLF_VI04,CLF_VI07,CLF_VI12,CLF_VISP,CLF_PROT FROM TAB_CLF');
                    SQL.Add('WHERE  CLF_CCLF = ''' + EdicaoNFE_NCM.AsString + '''');
                    SQL.Add('AND    CLF_UF   = ''' + IEUF.Text               + '''');
                    ExecQuery;

                    if (EdicaoNFE_PICMS.AsFloat = 4) and (Current.ByName('CLF_VI04').AsFloat > 0) then
                    begin
                      EdicaoNFE_PMVAST.Value := Current.ByName('CLF_VI04').AsFloat;
                      EdicaoNFE_VBCST.Value  := EdicaoNFE_VPROD.AsFloat + EdicaoNFE_VIPI.AsFloat    + EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat;
                      EdicaoNFE_VBCST.Value  := EdicaoNFE_VBCST.AsFloat + ((EdicaoNFE_VBCST.AsFloat * Current.ByName('CLF_VI04').AsFloat)/100);
                    end else

                    if (EdicaoNFE_PICMS.AsFloat = 7) and (Current.ByName('CLF_VI07').AsFloat > 0) then
                    begin
                      EdicaoNFE_PMVAST.Value := Current.ByName('CLF_VI07').AsFloat;
                      EdicaoNFE_VBCST.Value  := EdicaoNFE_VPROD.AsFloat + EdicaoNFE_VIPI.AsFloat    + EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat;
                      EdicaoNFE_VBCST.Value  := EdicaoNFE_VBCST.AsFloat + ((EdicaoNFE_VBCST.AsFloat * Current.ByName('CLF_VI07').AsFloat)/100);
                    end else

                    if (EdicaoNFE_PICMS.AsFloat = 12) and (Current.ByName('CLF_VI12').AsFloat > 0) then
                    begin
                      EdicaoNFE_PMVAST.Value := Current.ByName('CLF_VI12').AsFloat;
                      EdicaoNFE_VBCST.Value  := EdicaoNFE_VPROD.AsFloat + EdicaoNFE_VIPI.AsFloat    + EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat;
                      EdicaoNFE_VBCST.Value  := EdicaoNFE_VBCST.AsFloat + ((EdicaoNFE_VBCST.AsFloat * Current.ByName('CLF_VI12').AsFloat)/100);
                    end else

                    if (EdicaoNFE_PICMS.AsFloat = 18) and (Current.ByName('CLF_VISP').AsFloat > 0) then
                    begin
                      EdicaoNFE_PMVAST.Value := Current.ByName('CLF_VISP').AsFloat;
                      EdicaoNFE_VBCST.Value  := EdicaoNFE_VPROD.AsFloat + EdicaoNFE_VIPI.AsFloat    + EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat;
                      EdicaoNFE_VBCST.Value  := EdicaoNFE_VBCST.AsFloat + ((EdicaoNFE_VBCST.AsFloat * Current.ByName('CLF_VISP').AsFloat)/100);
                    end else

                    if not SQLConsulta.Eof then
                    begin
                      EdicaoNFE_PMVAST.Value := 0;
                      EdicaoNFE_VBCST.Value  := EdicaoNFE_VBC.AsFloat;
                    end;
                  end;
                end;

                if EdicaoNFE_VBCST.AsFloat > 0 then
                begin
                  EdicaoNFE_CFOP.Value := IFThen(IECFOP_TPNF.Text = '0','2411',
                                          IFThen(RECParametros.NFE_CRT = 1,
                                          IFThen(IEUF.Text   = RECParametros.LOG_UF,'5401','6401'),
                                          IFThen(IEUF.Text   = RECParametros.LOG_UF,'5403','6404')));

                  if (EdicaoNFE_CFOP.AsString = '6404') and (PECFOP.Text = '6403') then
                  EdicaoNFE_CFOP.Value    := PECFOP.Text;
                  EdicaoNFE_pICMSST.Value := TAB_ALQALQ_ICMI.AsFloat + TAB_ALQALQ_FCP.AsFloat;

                  if EdicaoNFE_PMVAST.AsFloat  = 0 then
                  EdicaoNFE_pICMSST.Value := EdicaoNFE_pICMSST.AsFloat - TAB_ALQALQ_ICMD.AsFloat;
                  EdicaoNFE_VICMSST.Value := ((EdicaoNFE_VBCST.AsFloat*EdicaoNFE_pICMSST.AsFloat)/100) - EdicaoNFE_VICMS.AsFloat;
                  EdicaoNFE_MODBCST.Value := 4;
                  EdicaoNFE_CST.Value     := IFThen(RECParametros.NFE_CRT = 1,'201','10');
                end;

                { Equipara ST }
                EdicaoNFE_VST.Value := EdicaoNFE_VICMSST.AsFloat;

                { DEVOLUÇÃO - INCLUSÃO DE ST EM DESPESAS ACESSÓRIAS }
                if (EdicaoNFE_CFOP.AsString = '2411') and (EdicaoNFE_VST.AsFloat > 0) then
                begin
                  EdicaoNFE_VOUTRO.Value  := EdicaoNFE_VST.AsFloat;
                //EdicaoNFE_CST.Value     := '00';
                  EdicaoNFE_VST.Value     := 0;
                  EdicaoNFE_VICMSST.Value := 0;
                  EdicaoNFE_PICMSST.Value := 0;
                  EdicaoNFE_VBCST.Value   := 0;
                  EdicaoNFE_PMVAST.Value  := 0;
                  EdicaoNFE_MODBCST.Value := 0;
                end;

                { IMPOSTO ICMS }
                EdicaoNFE_VBC.Value   := EdicaoNFE_VBC.AsFloat - ((EdicaoNFE_VBC.AsFloat * EdicaoNFE_PREDBC.AsFloat)/100); { Calculo Final VBC }
                EdicaoNFE_VICMS.Value := RoundTO((EdicaoNFE_VBC.AsFloat * EdicaoNFE_PICMS.AsFloat) / 100,-2); { Calulo VICMS }

                if EdicaoNFE_CST.AsString = '60' then
                begin
                  EdicaoNFE_VBC.Value    := 0;
                  EdicaoNFE_PREDBC.Value := 0;
                  EdicaoNFE_VICMS.Value  := 0;
                  EdicaoNFE_PICMS.Value  := 0;
                end else

                if (EdicaoNFE_CST.AsString = '40') or (EdicaoNFE_CST.AsString = '41') or (EdicaoNFE_CST.AsString = '50') then
                begin
                  EdicaoNFE_VBCIPI.Value   := 0;
                  EdicaoNFE_VIPI.Value     := 0;
                  EdicaoNFE_PIPI.Value     := 0;
                  EdicaoNFE_VBCPIS.Value   := 0;
                  EdicaoNFE_VPIS.Value     := 0;
                  EdicaoNFE_PPIS.Value     := 0;
                  EdicaoNFE_VBCCOFINS.Value := 0;
                  EdicaoNFE_VCOFINS.Value  := 0;
                  EdicaoNFE_PCOFINS.Value  := 0;
                  EdicaoNFE_VBC.Value      := 0;
                  EdicaoNFE_PREDBC.Value   := 0;
                  EdicaoNFE_VICMS.Value    := 0;
                  EdicaoNFE_PICMS.Value    := 0;
                end else

                if EdicaoNFE_CST.AsString = '51' then
                begin
                  EdicaoNFE_VBC.Value      := 0;
                  EdicaoNFE_PREDBC.Value   := 0;
                  EdicaoNFE_VICMS.Value    := 0;
                  EdicaoNFE_PICMS.Value    := 0;
                  EdicaoNFE_PDIF.Value     := 100.00;
                  EdicaoNFE_VICMSOP.Value  := 0;
                  EdicaoNFE_VICMSDIF.Value := 0;

                  { Ricardo - Calculo para diferimento <> 100% - Criar/Colocar no grid o campo PDIF - Fazer o mesmo para Cadastro de Produtos
                    EdicaoNFE_PDIF.Value     := 33.33;
                    EdicaoNFE_VICMSOP.Value  := oTextToValor((EdicaoNFE_VBC.AsFloat *EdicaoNFE_PICMS.AsFloat)   / 100);
                    EdicaoNFE_VICMSDIF.Value := oTextToValor((EdicaoNFE_PDIF.AsFloat*EdicaoNFE_VICMSOP.AsFloat) / 100);
                    EdicaoNFE_VICMS.Value    := EdicaoNFE_VICMS.AsFloat - EdicaoNFE_VICMSDIF.AsFloat; }
                end;

                if (((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (IEUF.Text <> RECParametros.LOG_UF) and (IEUF.Text <> 'EX') and (not RECRomaneio.ZFM_CMUN)) then
                begin
                  EdicaoNFE_vBCUFDest.Value      := EdicaoNFE_VBC.AsFloat;
                  EdicaoNFE_vBCFCPUFDest.Value   := IFThen(TAB_ALQALQ_FCP.AsFloat = 0,0,EdicaoNFE_VBC.AsFloat);
                  EdicaoNFE_pFCPUFDest.Value     := TAB_ALQALQ_FCP.AsFloat;
                  EdicaoNFE_pICMSUFDest.Value    := TAB_ALQALQ_ICMI.AsFloat + TAB_ALQALQ_FCP.AsFloat;
                  EdicaoNFE_pICMSInter.Value     := EdicaoNFE_PICMS.AsInteger;
                  EdicaoNFE_pICMSInterPart.Value := 100;
                  EdicaoNFE_vFCPUFDest.Value     := IFThen(TAB_ALQALQ_FCP.AsFloat = 0,0,(EdicaoNFE_vBCFCPUFDest.AsFloat*EdicaoNFE_pFCPUFDest.AsFloat)/100);
                  EdicaoNFE_vICMSUFDest.Value    := RoundTo((EdicaoNFE_vBCUFDest.AsFloat * (EdicaoNFE_pICMSUFDest.AsFloat - EdicaoNFE_pICMSInter.AsFloat)) / 100,-2);
                  EdicaoNFE_vICMSUFRemet.Value   := 0;
                end;

                if RECParametros.NFE_REDUCAO_PISCOFINS then
                   if ((IECFOP_TPNF.Text = '1') or (Pos(PECFOP.Text,'1201120222012202') > 0)) and (EdicaoNFE_VBCPIS.AsFloat > 0) and (EdicaoNFE_VBCCOFINS.AsFloat > 0) and (EdicaoNFE_VICMS.AsFloat > 0) then
                   begin
                     { REDUÇÃO PIS}
                     EdicaoNFE_VBCPIS.Value  := EdicaoNFE_VBCPIS.AsFloat - EdicaoNFE_VICMS.AsFloat;
                     EdicaoNFE_VPIS.Value    := RoundTO((EdicaoNFE_VBCPIS.AsFloat * EdicaoNFE_PPIS.AsFloat) / 100,-2);

                     { REDUÇÃO COFINS }
                     EdicaoNFE_VBCCOFINS.Value:= EdicaoNFE_VBCCOFINS.AsFloat - EdicaoNFE_VICMS.AsFloat;
                     EdicaoNFE_VCOFINS.Value := RoundTO((EdicaoNFE_VBCCOFINS.AsFloat * EdicaoNFE_PCOFINS.AsFloat) / 100,-2);
                   end;
              end;

              { NRT - NOVA REFORMA TRIBUTÁRIA }
              { IS
              EdicaoNFE_CSTIS_UB02.Value        := TAB_CFOPCSTIS.AsString;
              EdicaoNFE_CCLASSTRIBIS_UB03.Value := TAB_CFOPCCLASSTRIBIS.AsString; }

              { IBS CBS }
              EdicaoNFE_IBSCBS_CSTIS.Value        := TAB_CFOPCSTCBS.AsString;
              EdicaoNFE_IBSCBS_CCLASSTRIBIS.Value := TAB_CFOPCCLASSTRIBCBS.AsString;

              if EdicaoNFE_IBSCBS_CSTIS.AsString = '000' then
              begin
                EdicaoNFE_IBSCBS_VBCIBSCBS.Value    :=

                EdicaoNFE_VPROD.AsFloat      + EdicaoNFE_VSERV.AsFloat     + EdicaoNFE_VFRETE.AsFloat       + EdicaoNFE_VSEG.AsFloat  + EdicaoNFE_VOUTRO.AsFloat      + EdicaoNFE_VII.AsFloat  -
                EdicaoNFE_VDESC.AsFloat      - EdicaoNFE_VPIS.AsFloat      - EdicaoNFE_VCOFINS.AsFloat      - EdicaoNFE_VICMS.AsFloat - EdicaoNFE_VICMSUFDEST.AsFloat - EdicaoNFE_VFCP.AsFloat -
                EdicaoNFE_VFCPUFDEST.AsFloat - EdicaoNFE_VICMSMONO.AsFloat - EdicaoNFE_ISSQN_VISSQN.AsFloat +
                EdicaoNFE_IS_VIS.AsFloat;

                { CBS }
                EdicaoNFE_CBS_VBCCBS.Value := EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat;
                EdicaoNFE_CBS_PCBS.Value   := TAB_CFOPPCBS.AsFloat;
                EdicaoNFE_CBS_VCBS.Value   := RoundTO((EdicaoNFE_CBS_PCBS.AsFloat / 100) * EdicaoNFE_CBS_VBCCBS.AsFloat,-2);

                { IBS }
                EdicaoNFE_IBSUF_VBCIBSUF.Value := EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat;
                EdicaoNFE_IBSUF_PIBSUF.Value   := TAB_CFOPPIS.AsCurrency;
                EdicaoNFE_IBSUF_VIBSUF.Value   := RoundTo((EdicaoNFE_IBSUF_PIBSUF.AsFloat / 100) * EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat,-2);
              end else
              begin
                EdicaoNFE_IBSCBS_VBCIBSCBS.Value := 0;
                EdicaoNFE_CBS_VBCCBS.Value       := 0;
                EdicaoNFE_CBS_VCBS.Value         := 0;
                EdicaoNFE_IBSUF_VBCIBSUF.Value   := 0;
                EdicaoNFE_IBSUF_VIBSUF.Value     := 0;
                EdicaoNFE_VNFTOT.Value           := 0;
              end;
              
              { Ricardo - Como a planilha do renato, já está embutido o valor do frete, tive q isolar o VNF para importações }
              if LeftStr(EdicaoNFE_CFOP.AsString,1) <> '3' then
                 EdicaoNFE_VNF.Value := (EdicaoNFE_VPROD.AsFloat  - EdicaoNFE_VDESC.AsFloat   - EdicaoNFE_VICMSDeson.AsFloat) +
                                        (EdicaoNFE_VIPI.AsFloat   + EdicaoNFE_VFRETE.AsFloat  + EdicaoNFE_VSEG.AsFloat        +
                                        (EdicaoNFE_VOUTRO.AsFloat + EdicaoNFE_VICMSST.AsFloat));

              if RECParametros.NFE_CRT = 1 then
              begin
                EdicaoNFE_CSTIPI.Value    := '99';
                EdicaoNFE_VBCIPI.Value    := 0;
                EdicaoNFE_PIPI.Value      := 0;
                EdicaoNFE_VIPI.Value      := 0;
                EdicaoNFE_VBCPIS.Value    := 0;
                EdicaoNFE_PPIS.Value      := 0;
                EdicaoNFE_VPIS.Value      := 0;
                EdicaoNFE_VBCCOFINS.Value  := 0;
                EdicaoNFE_PCOFINS.Value   := 0;
                EdicaoNFE_VCOFINS.Value   := 0;

                if Pos(EdicaoNFE_CST.AsString,'201202203') > 0 then
                begin
                  EdicaoNFE_PICMS.Value := 0;
                  EdicaoNFE_VICMS.Value := 0;
                  EdicaoNFE_VBC.Value   := 0;

                  EdicaoNFE_CSTPIS.Value    := '99';
                  EdicaoNFE_CSTCOFINS.Value := '99';
                end else
                begin
                  EdicaoNFE_CSTPIS.Value    := '49';
                  EdicaoNFE_CSTCOFINS.Value := '49';

                  if EdicaoNFE_VICMS.AsFloat > 0 then
                  begin
                    EdicaoNFE_CST.Value := '900';
                  end else

                  if (RECParametros.NFE_CREDITO_ICMS > 0) and (IECredICMS.Text = '1') then
                  begin
                    EdicaoNFE_VBCCREDICMSSN.Value := EdicaoNFE_VNF.AsFloat;
                    EdicaoNFE_PCREDSN.Value       := RECParametros.NFE_CREDITO_ICMS;
                    EdicaoNFE_VCREDICMSSN.Value   := RoundTO((EdicaoNFE_PCREDSN.AsFloat * EdicaoNFE_VNF.AsFloat) / 100,-2);
                  end;
                end;
              end;
            end;
          end;

          Edicao.Post;
          Edicao.Next;

          if REC_SHE_DEF.FInitialize then
          begin
            FIS_NFE_SUM.Close;
            FIS_NFE_SUM.Open;
          end;
        end;

      finally { Impostos }
        if not REC_SHE_DEF.FInitialize then
        Edicao.EnableControls;
      end;

    finally { Sincronismo }

      if REC_SHE_DEF.FInitialize then
      begin
        { ENCERRA SINCRONISMO }
        GFASyncEvent.Animate := False;
        PNLSyncEvent.Width   := 0;
        SBSyncRecords.Panels[0].Text := '';
        
        Application.ProcessMessages;
      end;
    end;

  finally { Duplicatas }
    Screen.Cursor := crDefault;

    ALockWindowUpdate := False;
    TSEdicao.CommitRetaining;
    Edicao.Close;
    Edicao.Open;
    Edicao.Last;
  end;
end;

procedure TFrmVEN_NFE.ACTNFeICMSExecute(Sender: TObject);
begin
  if EdicaoCDEV.AsInteger <> 9 then
  begin
    EdicaoNFE_PREDBC.Value := TAB_CFOPCFOP_PREDBC.AsFloat;
    EdicaoNFE_PICMS.Value  := IFThen((Pos(EdicaoNFE_CST.AsString,'201202500900') = 0) and (RECParametros.NFE_CRT = 1),0,
                              IFThen(IEUF.Text = 'EX',RECParametros.NFE_ICMS,
                              IFThen((Pos(EdicaoNFE_ORIG.AsString,'123') > 0) and (IEUF.Text <> RECParametros.LOG_UF),4,
                              IFThen((IEUF.Text = RECParametros.LOG_UF      ) and (IEUF.Text = 'SP') and
                                     (EdicaoNFE_NCM.AsString   = '39181000'),12,TAB_ALQALQ_ICMS.AsFloat))));


  end;
end;

procedure TFrmVEN_NFE.ACTNFeCSTExecute(Sender: TObject);
begin
  if IEFinNFe.Text <> '2' then { NFe Complementar }
  begin
    { ICMS }
    EdicaoNFE_CST.Value := TAB_CFOPCFOP_CSTICMS.AsString;

    { IPI }
    EdicaoNFE_CSTIPI.Value := TAB_CFOPCFOP_CSTIPI.AsString;

    { PIS }
    EdicaoNFE_CSTPIS.Value := TAB_CFOPCFOP_CSTPIS.AsString;
    EdicaoNFE_PPIS.Value   := TAB_CFOPCFOP_PPIS.AsFloat;

    { COFINS }
    EdicaoNFE_CSTCOFINS.Value := TAB_CFOPCFOP_CSTCOFINS.AsString;
    EdicaoNFE_PCOFINS.Value   := TAB_CFOPCFOP_PCOFINS.AsFloat;

    EdicaoNFE_INDTOT.Value := TAB_CFOPCFOP_INDTOT.AsInteger;

    { SIMPLES NACIONAL }
    if RECParametros.NFE_CRT = 1 then
    begin
      if (IECredICMS.Text = '1') and (RECParametros.NFE_CREDITO_ICMS > 0) then

      if (LeftStr(EdicaoNFE_CFOP.AsString,4) = '5101') or (LeftStr(EdicaoNFE_CFOP.AsString,4) = '5102') or
         (LeftStr(EdicaoNFE_CFOP.AsString,4) = '6101') or (LeftStr(EdicaoNFE_CFOP.AsString,4) = '6102') or
         (LeftStr(EdicaoNFE_CFOP.AsString,4) = '5124') or (LeftStr(EdicaoNFE_CFOP.AsString,4) = '6124') or
         (LeftStr(EdicaoNFE_CFOP.AsString,4) = '5125') or (LeftStr(EdicaoNFE_CFOP.AsString,4) = '5925') then

      EdicaoNFE_CST.Value := TAB_CFOPCFOP_CST_CSOSNCRED.AsString; { Crédito ICMS }
    end;

    { EXPORTAÇÃO }
    if (LeftStr(EdicaoNFE_CFOP.AsString,1) <> '7') or (EdicaoNFE_QTRIB.AsFloat = 0) then
    begin
      EdicaoNFE_UTRIB.Value   := EdicaoNFE_UCOM.AsString;
      EdicaoNFE_QTRIB.Value   := EdicaoNFE_QCOM.AsFloat;
      EdicaoNFE_VUNTRIB.Value := EdicaoNFE_VUNCOM.AsFloat;
    end;
  end;  
end;

procedure TFrmVEN_NFE.ACTNFeDescontoExecute(Sender: TObject);
begin
  ADSC_NREG := 0; { Nº Registros }
  ADSC_VREG := 0; { R$ Registros }
  ADSC_VSLD := 0; { R$ Saldo }

  if REC_SHE_DEF.FInitialize then
  begin
    SBRodape.Panels[0].Text := 'Aguarde, verificando descontos ...';
    
    Application.ProcessMessages;
    SleepEx(500,False);
  end;
  
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) AS RECNO FROM FIS_NFE_ITE AS PK');
    SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + ''''  );
    SQL.Add('AND    PK.NFE_VPROD >= (SELECT CAST(' + oStrTran(CEVDSC.Text,',','.') + ' / COUNT(*) AS NUMERIC(15,2))');
    SQL.Add('                        FROM   FIS_NFE_ITE AS FK ');
    SQL.Add('                        WHERE  FK.IDEV = PK.IDEV)');
    ExecQuery;

    ADSC_NREG := Current.Vars[0].AsInteger;
  end;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(CEVDSC.Text,',','.') + ''' , ''' + IntToStr(ADSC_NREG) + ''') ORDER BY RVSLD DESC');
    ExecQuery;

    ADSC_VREG := Current.Vars[0].AsCurrency;
    ADSC_VSLD := Current.Vars[1].AsCurrency;
  end;

  if REC_SHE_DEF.FInitialize then
  if CEVDSC.Value > 0 then
  begin
    SBRodape.Panels[0].Text := 'Desconto calculado com sucesso !';

    Application.ProcessMessages;
    SleepEx(500,False);
  end;
end;

procedure TFrmVEN_NFE.ACTNFeFreteExecute(Sender: TObject);
begin
  AFRT_NREG := 0; { Nº Registros }
  AFRT_VREG := 0; { R$ Registros }
  AFRT_VSLD := 0; { R$ Saldo }

  if REC_SHE_DEF.FInitialize then
  begin
    SBRodape.Panels[0].Text := 'Aguarde, verificando frete ...';

    Application.ProcessMessages;
    SleepEx(500,False);
  end;
  
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) AS RECNO FROM FIS_NFE_ITE AS PK');
    SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + ''''  );
    SQL.Add('AND    PK.NFE_VPROD >= (SELECT CAST(' + oStrTran(CEVFRT.Text,',','.') + ' / COUNT(*) AS NUMERIC(15,2))');
    SQL.Add('                        FROM   FIS_NFE_ITE AS FK ');
    SQL.Add('                        WHERE  FK.IDEV = PK.IDEV)');
    ExecQuery;

    AFRT_NREG := Current.Vars[0].AsInteger;
  end;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(CEVFRT.Text,',','.') + ''' , ''' + IntToStr(AFRT_NREG) + ''') ORDER BY RVSLD DESC');
    ExecQuery;

    AFRT_VREG := Current.Vars[0].AsCurrency;
    AFRT_VSLD := Current.Vars[1].AsCurrency;
  end;

  if REC_SHE_DEF.FInitialize then
  if CEVFRT.Value > 0 then
  begin
    SBRodape.Panels[0].Text := 'Frete calculado com sucesso !';

    Application.ProcessMessages;
    SleepEx(500,False);
  end;  
end;

procedure TFrmVEN_NFE.ACTNFeSeguroExecute(Sender: TObject);
begin
  ASEG_NREG := 0; { Nº Registros }
  ASEG_VREG := 0; { R$ Registros }
  ASEG_VSLD := 0; { R$ Saldo }

  if REC_SHE_DEF.FInitialize then
  begin
    SBRodape.Panels[0].Text := 'Aguarde, verificando seguro ...';

    Application.ProcessMessages;
    SleepEx(500,False);
  end;
  
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) AS RECNO FROM FIS_NFE_ITE AS PK');
    SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + ''''  );
    SQL.Add('AND    PK.NFE_VPROD >= (SELECT CAST(' + oStrTran(CEVSEG.Text,',','.') + ' / COUNT(*) AS NUMERIC(15,2))');
    SQL.Add('                        FROM   FIS_NFE_ITE AS FK ');
    SQL.Add('                        WHERE  FK.IDEV = PK.IDEV)');
    ExecQuery;

    ASEG_NREG := Current.Vars[0].AsInteger;
  end;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(CEVSEG.Text,',','.') + ''' , ''' + IntToStr(ASEG_NREG) + ''') ORDER BY RVSLD DESC');
    ExecQuery;

    ASEG_VREG := Current.Vars[0].AsCurrency;
    ASEG_VSLD := Current.Vars[1].AsCurrency;
  end;

  if REC_SHE_DEF.FInitialize then
  if CEVSEG.Value > 0 then
  begin
    SBRodape.Panels[0].Text := 'Seguro calculado com sucesso !';

    Application.ProcessMessages;
    SleepEx(500,False);
  end;  
end;

procedure TFrmVEN_NFE.ACTNFeCFOPExecute(Sender: TObject);
begin
  if ((PECFOP.Text  = '6102') and ((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (IEUF.Text <> RECParametros.LOG_UF) and (IEUF.Text <> 'EX')) then
  begin
    if REC_SHE_DEF.FInitialize then
    begin
      SBRodape.Panels[0].Text := 'Aguarde, alterando a finalidade de emissão da nota fiscal para CONSUMO INTERNO ...';

      Application.ProcessMessages;
      SleepEx(500,False);
    end;
    
    ACTPSQ_TAB_CFOP.Caption     := 'NFE_CFOP'; { Field }
    ACTPSQ_TAB_CFOP.HelpKeyWord := '6108'; { Value }
    ACTPSQ_TAB_CFOP.Execute;

    if REC_SHE_DEF.FInitialize then
    begin
      SBRodape.Panels[0].Text := 'Nota Fiscal alterada para consumidor final !';

      Application.ProcessMessages;
      SleepEx(500,False);
    end;
  end;
end;

procedure TFrmVEN_NFE.ACTNFeTriangularExecute(Sender: TObject);
begin
  CER_IDCD.Value   := IFThen(RECNFTriangular.Selected,RECNFTriangular.IDCD  ,0);
  EDR_DECD.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.RZCD  ,EmptyStr);
  EDR_CNPJ.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.CNPJ  ,EmptyStr);
  PER_IE.Text      := IFThen(RECNFTriangular.Selected,RECNFTriangular.IE    ,EmptyStr);
  PER_TXLGR.Text   := IFThen(RECNFTriangular.Selected,RECNFTriangular.TLO_TX,EmptyStr);
  EDR_XLGR.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.LOG_NO,EmptyStr);
  EDR_NRO.Text     := IFThen(RECNFTriangular.Selected,RECNFTriangular.NRO   ,EmptyStr);
  EDR_XCPL.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.XCPL  ,EmptyStr);
  EDR_CEP.Text     := IFThen(RECNFTriangular.Selected,RECNFTriangular.CEP   ,EmptyStr);
  EDR_xBAIRRO.Text := IFThen(RECNFTriangular.Selected,RECNFTriangular.BAI_NO,EmptyStr);
  EDR_XMUN.Text    := IFThen(RECNFTriangular.Selected,RECNFTriangular.LOC_NO,EmptyStr);
  PER_UF.Text      := IFThen(RECNFTriangular.Selected,RECNFTriangular.UF    ,EmptyStr);

  if Pos(PECFOP.Text,'51236123') > 0 then
  begin
    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('VENDA DE MERCADORIA PARA ENTREGA NA INDUSTRIA, POR CONTA E ORDEM DO ADQUIRENTE, CONFORME ARTIGO 406 DO RICMS-SP');
    EDINFADNF.Lines.Add('');

    EDINFADNF.Lines.Add('Dados do adquirente da mercadoria: ' + EDxNOME.Text   + ' CNPJ: ' + oCNPJ_Mask(EDCNPJ.Text) + ' IE: ' + PEIE.Text );
    EDINFADNF.Lines.Add('Endereco do adquirente: '            + PETXLGR.Text   + ' '       + EDXLGR.Text             + ', '    + EDNRO.Text + ' ' + EDXCPL.Text + ' CEP: ' + EDCEP.Text + ' ' +
                                                                EDXBAIRRO.Text + ' '       + EDXMUN.Text             + ' '     + IEUF.Text);

    if RECNFTriangular.Selected then
    begin
      EDINFADNF.Lines.Add('Mercadoria a ser entregue através da nota fiscal '   + CER_CDNF.Text + ' para: ' + EDR_DECD.Text + ' CNPJ: ' + oCNPJ_Mask(EDR_CNPJ.Text));
      EDINFADNF.Lines.Add( ' IE: ' + PER_IE.Text + ' ' + PER_TXLGR.Text + ' '   + EDR_XLGR.Text + ', '      + EDR_NRO.Text  + ' '       + EDR_XCPL.Text + ' CEP: '  + EDR_CEP.Text + ' ' +
                                                         EDR_XBAIRRO.Text + ' ' + EDR_XMUN.Text + ' '       + PER_UF.Text);
    end;
  end;

  if (REC_SHE_DEF.IDPK > 0) then
  if (REC_SHE_DEF.CDEV = 0) and (REC_SHE_DEF.TPEV = 0) then  { Triangular }
  begin
    EDINFADNF.Lines.Clear;
    EDINFADNF.Lines.Add('REMESSA DE MERCADORIA QUE SEGUE PARA INDUSTRIALIZACAO POR CONTA E ORDEM DO ADQUIRENTE, CONFORME ARTIGO 406 DO RICMS-SP');
    EDINFADNF.Lines.Add('');

    EDINFADNF.Lines.Add('Dados do adquirente da mercadoria: ' + EDR_DECD.Text    + ' CNPJ: ' + oCNPJ_Mask(EDR_CNPJ.Text) + ' IE: ' + PER_IE.Text );
    EDINFADNF.Lines.Add('Endereco do adquirente: '            + PER_TXLGR.Text   + ' '       + EDR_XLGR.Text             + ', '    + EDR_NRO.Text + ' ' + EDR_XCPL.Text + ' CEP: ' + EDR_CEP.Text + ' ' +
                                                                EDR_XBAIRRO.Text + ' '       + EDR_XMUN.Text             + ' '     + PER_UF.Text);
    EDINFADNF.Lines.Add('Mercadoria adquirida e impostos recolhidos atraves da nota fiscal ' + CER_CDNF.Text);
  end;

  if Pos(PECFOP.Text,'5123612359246924') > 0 then
  PCEdicao.ActivePage := TSNFTriangular;
end;

procedure TFrmVEN_NFE.ACTNFeBoletoExecute(Sender: TObject);
var
  ADUP_NREG: Integer; { Nº Registros }
  ADUP_VREG,          { R$ Registros }
  ADUP_VSLD: Double;  { R$ Saldo }
  i: word;
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  if (ACTNFeCalculate.Tag = 0) and  { CÁLCULO FISCAL DESABILITADO }
     (IEFinNFe.Text  <> '2') then { NFe Complementar }

  try { Duplicatas }
    Screen.Cursor := crHourGlass;
    ALockWindowUpdate := True;

    { PRAZOS }
    TAB_PAG.Close;
    TAB_PAG.Params[0].Value := IECDPG.Text;
    TAB_PAG.Open;

    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM FIS_NFE_DUP AS PK');
      SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
      ExecQuery;
    end;
    FIS_NFE_DUP.Close;
    FIS_NFE_DUP.Open;

    if (FIS_NFE_SUMNFE_VNF.AsFloat <> FIS_NFE_SUMNFE_VDUP.AsFloat) and
       (IEBOLETO.Text = 'SIM') then { Emissão de Duplicatas }

    try { Edição }
      { NÚMERO DE REGISTROS (PARCELAS) }
      ADUP_NREG := TAB_PAGPAG_PARC.AsInteger;

      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(FIS_NFE_SUMNFE_VNF.AsString,',','.') + ''' , ''' + IntToStr(ADUP_NREG) + ''') ORDER BY RVSLD DESC');
        ExecQuery;

        ADUP_VREG := Current.Vars[0].AsCurrency;
        ADUP_VSLD := Current.Vars[1].AsCurrency;
      end;

      if not REC_SHE_DEF.FInitialize then
      FIS_NFE_DUP.DisableControls;

      for i := 1 to TAB_PAGPAG_PARC.AsInteger do
      begin
        SPSEdicao.StoredProcName := 'SP_EDI_FIS_NFE_DUP';
        SPSEdicao.Prepare;

        SPSEdicao.ParamByName('AIDEV').Value := REC_SHE_DEF.IDEV;
        SPSEdicao.ParamByName('ANFE_NITEMPED').Value := I;

        SPSEdicao.ParamByName('ANFE_CDNF').Value := CECDNF.Text;
        SPSEdicao.ParamByName('ANFE_NDUP').Value := CECDNF.Text + IFThen(TAB_PAGPAG_PARC.AsInteger > 1,'-' + aDUP[i],EmptyStr);

        if IEPRAZO.Text = 'EMISSÃO NF' then
        begin
          SPSEdicao.ParamByName('ANFE_DTNF').Value := DEdhEmi.Date;
          SPSEdicao.ParamByName('ANFE_DTVC').Value := incDay(DEdhEmi.Date,TAB_PAG.Fields[i + 1].Value);
        end else
        begin
          SPSEdicao.ParamByName('ANFE_DTNF').Value := DEdhEmi.Date;
          SPSEdicao.ParamByName('ANFE_DTVC').Value := incDay(DEdhSaiEnt.Date,TAB_PAG.Fields[i + 1].Value);
        end;

        SPSEdicao.ParamByName('ANFE_VNF' ).Value := FIS_NFE_SUMNFE_VNF.AsCurrency;
        SPSEdicao.ParamByName('ANFE_VLIQ').Value := IFThen(ADUP_NREG > I,ADUP_VREG,ADUP_VSLD); { Rateio }
        SPSEdicao.ParamByName('ANFE_VDUP').Value := IFThen(ADUP_NREG > I,ADUP_VREG,ADUP_VSLD); { Rateio }
        SPSEdicao.ParamByName('ANFE_VDSC').Value := 0;

        SPSEdicao.ExecProc;
        SPSEdicao.UnPrepare;
      end;

    finally { Edição }

      if not REC_SHE_DEF.FInitialize then
      FIS_NFE_DUP.EnableControls;

      ALockWindowUpdate := False;
      TSEdicao.CommitRetaining;
      FIS_NFE_DUP.Close;
      FIS_NFE_DUP.Open;

      FIS_NFE_SUM.Close;
      FIS_NFE_SUM.Open;
    end;

  finally
    Screen.Cursor := crDefault;
    ACTNFeINFADCAD.Execute;
  end;
end;

procedure TFrmVEN_NFE.ACTNFeINFADCADExecute(Sender: TObject);
var
  i: Word;
  TXTCFOP,
  TXTInfad: String;
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  try
    if (ACTNFeCalculate.Tag = 0) and  { CÁLCULO FISCAL DESABILITADO }
       (IEFinNFe.Text <> '2') or { NFe Complementar }
       (EDInfAdNF.Tag = 1) then { Importação XML de DI }
    try
      REC_SHE_DEF.FList.BeginUpdate;
      REC_SHE_DEF.FList.Clear;

      EDInfAdFisco.Lines.BeginUpdate;
      EDInfAdFisco.Lines.Clear;

      AINFADTRIB.BeginUpdate;
      AINFADTRIB.Clear;

      if EDINFADNF.Lines.Count > 0 then
      for i := 0 to EDINFADNF.Lines.Count - 1 do
          if Length(EDINFADNF.Lines[i]) > 135 then
          begin
            TXTInfAd := EDINFADNF.Text;
            EDINFADNF.Lines.Clear;
          end;

      while Length(TXTInfAd) > 0 do
      begin
        EDINFADNF.Lines.Add(Trim(LeftStr(TXTInfAd,135)));
        TXTInfAd := Trim(Copy(TXTInfAd,136,2000));
      end;

      if Pos(IEFinNFe.Text,'23') > 0 then
      Exit;

      if RECParametros.NFE_CRT = 1 then
      begin
        REC_SHE_DEF.FList.Add('I  - DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL.|');
        REC_SHE_DEF.FList.Add('II - NAO GERA DIREITO A CREDITO FISCAL DE IPI.|');
      end else
      begin
        if (IEUF.Text = RECParametros.LOG_UF) and (IEUF.Text = 'SP') then
            if Edicao.Locate('NFE_NCM;NFE_PICMS',VarArrayOf(['39181000','12']),[]) then
            begin
              REC_SHE_DEF.FList.Add('Aliquota de Icms de 12% conforme determina Artigo 54, Inciso VIII 22 Item 22');
              REC_SHE_DEF.FList.Add('|');
            end;
      end;

      if FIS_NFE_SUMNFE_VCREDICMSSN.AsFloat > 0 then
      begin
        REC_SHE_DEF.FList.Add(Trim('Permite o aproveitamento do credito de ICMS no valor de '+FormatFloat('R$ #,0.00',FIS_NFE_SUMNFE_VCREDICMSSN.AsFloat))            +'|');
        REC_SHE_DEF.FList.Add(Trim('Correspondente a aliquota de '+FormatFloat('#,0.00%',RECParametros.NFE_CREDITO_ICMS)+' nos termos do Art. 23 DA LC 123, de 2006')+'|');
      end;

      if (FIS_NFE_SUMNFE_VST.AsFloat > 0) and (RECParametros.NFE_CRT <> 1) then
      REC_SHE_DEF.FList.Add('ICMS calculado por substituicao tributaria conforme Artigo 313-Y'+'|');

      if EDISUF.Text <> EmptyStr then
      begin
        REC_SHE_DEF.FList.Add(Trim('Suframa: '+EDISUF.Text)+'|');

        if not RECRomaneio.ZFM_CMUN then
        REC_SHE_DEF.FList.Add('Isenção de ICMS conforme convenio no 65 de 1988|');
        REC_SHE_DEF.FList.Add('IPI suspenso conforme Artigo no 84 do Decreto 7.212/2010|');
        REC_SHE_DEF.FList.Add('PIS/COFINS aliquota zero conforme Artigo 2o da Lei 10.996/04|');

        if RECRomaneio.ZFM_CMUN then
        begin
          REC_SHE_DEF.FList.Add('');
          REC_SHE_DEF.FList.Add('Remessa para zona franca de manaus ou area de livre comercio|');
          REC_SHE_DEF.FList.Add('ICMS Isento conforme Artigo no 84 do Anexo I do RICMS/SP. Desconto de 7% - ICMS: ' + FormatFloat('R$ #,0.00',FIS_NFE_SUMNFE_VICMSDESON.AsFloat) + '|');
        end;
      end;

      if (IERegime.Text = '1') and (IECredICMS.Text = '1') and (Pos(PECFOP.Text,'51016101') > 0)  then
      begin
        REC_SHE_DEF.FList.Add('Reducao da base de calculo do ICMS nos termos do anexo II artigo 52 do RICMS|');
        REC_SHE_DEF.FList.Add(Trim('Decreto no 62.560/2017 (DOE de 06.05.2017) = '+FormatFloat('#,0.00%',EdicaoNFE_PREDBC.AsFloat))+'|');
      end;

      if FIS_NFE_MAO.RecNo > 0 then
      begin
        FIS_NFE_MAO.First;
        if FIS_NFE_MAO.RecNo > 0 then REC_SHE_DEF.FList.Add('|');

        while not FIS_NFE_MAO.Eof do
        begin
          if FIS_NFE_MAO.RecNo = 1 then
          REC_SHE_DEF.FList.Add('NF de Retorno ('+RightStr(PECFOP.Text,4)+') Ref. a(s) NF(s).: |');
          REC_SHE_DEF.FList.Add(FIS_NFE_MAONFE_CDNF.AsString+' de '+FIS_NFE_MAONFE_DTNF.AsString+' '+FormatFloat('Valor de R$ #,0.00',FIS_NFE_MAONFE_VNF.AsFloat)+'  ');

          FIS_NFE_MAO.Next;
        end;
      end;
      
      if (FIS_NFE_SUMNFE_VICMSUFDEST.AsFloat > 0) or (FIS_NFE_SUMNFE_vICMSUFRemet.AsFloat > 0) then
      AINFADTRIB.Add(

      '% Partilha UF Dest.: '     + FormatFloat(',##,0.00'   ,EdicaoNFE_pICMSInterPart.AsFloat) + '|' +
      '% ICMS Inter. UF Dest.: '  + FormatFloat(',##,0.00'   ,EdicaoNFE_pICMSUFDest.AsFloat)    + '|' +
      'Vlr.ICMS Inter. UF Dest.: '+ FormatFloat('R$ ,##,0.00',EdicaoNFE_vICMSUFDest.AsFloat)    + '|' +
      '% ICMS Part. UF Remet.: '  + FormatFloat(',##,0.00'   ,0.00)                             + '|' +
      'Vlr.ICMS Part. UF Remet.: '+ FormatFloat('R$ ,##,0.00',EdicaoNFE_vICMSUFRemet.AsFloat));


      if EDidEstrangeiro.Text <> '' then
      REC_SHE_DEF.FList.Add(Trim('|Passaporte '+EDidEstrangeiro.Text)+'|');

      if EDINFADNF.Lines.Count > 0 then
      begin
        for i := 0 to EDINFADNF.Lines.Count - 1 do
        REC_SHE_DEF.FList.Add(oREPAcentos(oPrimeiraLetraMaiuscula(EDINFADNF.Lines[i]))+'|');
      end;

      { Retira todo o texto encontrado em TXTCFOP e move para TXTInfAd }
      TXTCFOP := oPrimeiraLetraMaiuscula(TAB_CFOPCFOP_INFADCAD.AsString);
      if TXTCFOP <> EmptyStr then
      if REC_SHE_DEF.FList.Text <> EmptyStr then
         REC_SHE_DEF.FList.Add('|');

      While Length(TXTCFOP) > 0 do
      begin
        TXTInfAd := oREPAcentos(Fetch(TXTCFOP,#$D#$A));
        if Length(TXTInfAd) > 0 then REC_SHE_DEF.FList.Add(TXTInfAd + '|');
      end;
  
    finally
      REC_SHE_DEF.FList.EndUpdate;
      AINFADTRIB.EndUpdate;
  
      EDInfAdFisco.Text := REC_SHE_DEF.FList.Text;
      EDInfAdFisco.Lines.EndUpdate;
    end;

  finally
    Application.ProcessMessages;
  end;    
end;

procedure TFrmVEN_NFE.ACTNFeEdicaoExecute(Sender: TObject);
begin
  PNLPrincipal.Enabled := True;
  PCINFADCAD.ActivePageIndex := 1;

  SIXMLCreate.ImageIndex := 5;
  ACTXMLCreate.Caption   := 'Gerar';
  ACTXMLCreate.Hint      := 'Gera arquivo xml';

  ACTXMLValidate.Enabled := False;
  ACTXMLImporta.Enabled  := True;
  ACTImporta.Enabled := True;

  Application.ProcessMessages;
end;

procedure TFrmVEN_NFE.ACTNFeValidateExecute(Sender: TObject);
begin
  PNLPrincipal.Enabled := False;
  PCINFADCAD.ActivePageIndex := 0;

  SIXMLCreate.ImageIndex  := 6;
  ACTXMLCreate.Caption    := 'Alterar';
  ACTXMLCreate.Hint       := 'Altera arquivo xml criado';

  ACTXMLValidate.Enabled := True;
  ACTXMLSend.Enabled     := False;

  ACTXMLImporta.Enabled := False;
  ACTImporta.Enabled := False;

  Application.ProcessMessages;
end;

procedure TFrmVEN_NFE.ACTXMLCreateExecute(Sender: TObject);
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
begin
  { CHECK }
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;

  ACTNFeINFADCAD.Execute; { Informações Adicionais }

  { ROMANEIO }
  if CECDRO.Value = 0 then
  begin
    RECRomaneio.IDCV := RECUsuarios.ID;
    RECRomaneio.DECV := RECUsuarios.Login;
    RECRomaneio.IDCR := RECParametros.CR_ID;
    RECRomaneio.DECR := RECParametros.CR_NO;
  end;

  SBRodape.Panels[0].Text := EmptyStr; { SEFAZ       }
  SBRodape.Panels[1].Text := EmptyStr; { Processos   }
  SBRodape.Panels[2].Text := EmptyStr; { Ocorrências }
  SBRodape.Panels[3].Text := EmptyStr; { Chave       }
  SBRodape.Panels[4].Text := EmptyStr; { Protocolo   }
  SBRodape.Panels[5].Text := EmptyStr; { CSTAT       }
  SBRodape.Update;

  EDPDF.Text := EmptyStr;
  EDPDF.Update;

  EDXML.Text := EmptyStr;
  EDXML.Update;

  if EDDDD.Text = EmptyStr then
  EDDDD.Text := '00';

  if EDFone.Text = EmptyStr then
  EDFone.Text := '00000000';

  PCEdicao.ActivePage := TSProduto;
  ACTXMLCreate.Tag    := 1;

  if SIXMLCreate.ImageIndex = 6 then
  begin
    ACTNFeEdicao.Execute;
    Exit;
  end;

  { VER DISPONIBILIDADE }
  SBRodape.Panels[0].Text := 'Aguarde, conectando sefaz ...';
  SBRodape.Update;

  try
    if LeftStr(RECParametros.NFE_API_SEFAZ,3) <> '107' then { Serviço em Operação }
       try
         Screen.Cursor := crAppStart;
         RECParametros.NFE_API_SEFAZ := NfeStatusServico;

         if LeftStr(RECParametros.NFE_API_SEFAZ,3) = '107' then
         RECParametros.NFE_API_SEFAZ := '107 - SEFAZ ON LINE';
       finally
         Screen.Cursor := crDefault;
       end;
  finally
    SBRodape.Panels[0].Text := RECParametros.NFE_API_SEFAZ;
    SBRodape.Update;
  end;

  if LeftStr(RECParametros.NFE_API_SEFAZ,3) <> '107' then
  oException(Nil,'Falha ao tentar conectar com o sefaz !' + #13 +
                 'Motivo: ' + SBRodape.Panels[0].Text     + #13 + #13 +
                 'Favor entrar em contato com o administrador do sistema.');

  if FIS_NFE_SUMNFE_VST.AsFloat > 0 then
  oAviso(Handle,'Atenção, essa nota fiscal possui Substituição Tributária.');

  try
    Application.ProcessMessages;
    Screen.cursor := crAppStart;
    Edicao.DisableControls;

    SBRodape.Panels[1].Text := 'Aguarde, gerando arquivo XML ...';
    SBRodape.Update;

    Screen.cursor:=crAppStart;
    Edicao.First;

    SetLength(tIde    ,46);              //ide
    SetLength(tEmit   ,15);              //emit
    SetLength(tDest   ,56);              //dest
    SetLength(tProd   ,FIS_NFE_SUMNFE_NITEMPED.AsInteger,297); //prod
    SetLength(tTotal  ,71);              //total
    SetLength(tTransp ,28);              //transp
    SetLength(tCobr   ,11);              //cobr
    SetLength(tPag    ,14);              //pag
    SetLength(tInfAdic,27);              //infAdic
    SetLength(autXML  ,1);               //autXML

    {Tag do Grupo das informações de identificação da NFe }
    tIde[00] := RECParametros.LOG_UF;  //<cUF> Código da UF do emitente do Documento Fiscal
//  tIde[01] := IntToStr(Random(CECDNF.Value)+1); //<cNF> Código Numérico que compõe a chNFe de Acesso - Numero aleatorio: apenas 8 digitos: NF-e 2.00
    tIde[01] := oStrZero(DayOf(DEdhEmi.Date),8-Length(CECDNF.Text)) + CECDNF.Text;        //<cNF> Código Numérico que compõe a chNFe de Acesso - Numero aleatorio: apenas 8 digitos: NF-e 2.00
    tIde[02] := oREPAcentos(PECFOP.Text); //<natOp>  Descrição da Natureza da Operação
    tIde[03] := '';                       //<indPag> Indicador da forma de pagamento - Retirado na versão 4.00
    tIde[04] := '55';                     //<mod>    Código do Modelo do Documento Fiscal
    tIde[05] := RECParametros.NFE_SERIE;  //<serie>  Série do Documento Fiscal
    tIde[06] := CECDNF.Text;              //<nNF>    Número do Documento Fiscal

    tIde[07] := FormatDatetime('yyyy-mm-dd',DEdhEmi.Date)    + 'T' + FormatDateTime('hh:nn:ss',now) + RECParametros.NFE_TIMEZONE; //<dhEmi>  Data e hora de emissão do Documento Fiscal
    tIde[08] := FormatDatetime('yyyy-mm-dd',DEdhSaiEnt.Date) + 'T' + FormatDateTime('hh:nn:ss',now) + RECParametros.NFE_TIMEZONE; //<dhSaiEnt>  Data e hora de Saída ou da Entrada da Mercadoria/Produto
    tIde[09] := IECFOP_TPNF.Text;        //<tpNF>   Tipo de Operação - 0=Entrada; 1=Saída

    tIde[11] := '1';                //<tpEmis> Tipo de Emissão da NF-e
    tIde[12] := IEFinNFe.Text;      //<finNFe> Finalidade de emissão da NF-e - 1=NF-e Normal; 2=NF-e Complementar; 3=NF-e Ajuste; 4=Devolução de mercadoria; 5=Nota de crédito; 6=Nota de débito. *** OK (NFe V.7.1.3)

    tIde[10] := RECParametros.LOG_LOC_CMUN; //<cMunFG> Código do Município de Ocorrência do Fato Gerador - composto de 7 dígitos numéricos

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
    if IEFinNFe.Text <> '1' then
    tIde[13] := NewCHNFE; //<refNFe>  - chNFe da nfe referenciada  (Grupo 1/5: até 5 chNFes de NF-e)
    tIde[34] := ''; //<refNFe>  - chNFe da nfe referenciada  (Grupo 2/5: até 5 chNFes de NF-e)
    tIde[37] := ''; //<refNFe>  - chNFe da nfe referenciada  (Grupo 3/5: até 5 chNFes de NF-e)
    tIde[38] := ''; //<refNFe>  - chNFe da nfe referenciada  (Grupo 4/5: até 5 chNFes de NF-e)
    tIde[39] := ''; //<refNFe>  - chNFe da nfe referenciada  (Grupo 5/5: até 5 chNFes de NF-e)

    { Grupo de informação de NF´s modelo 1/1A referenciadas. Se for informar, informar todos os dados pois todas as tags são obrigatórias(1-1).  Informar ";" no final de cada ocorrência do grupo.}
    tIde[19] := ''; //cUF    --> Utilizar a Tabela do IBGE
    tIde[20] := ''; //AAMM   --> AAMM da emissão da NF
    tIde[21] := ''; //CNPJ   --> CNPJ do emitente da NF
    tIde[22] := ''; //mod    --> Informar o código do modelo do Documento fiscal: 01 – modelo 01
    tIde[23] := ''; //serie  --> nformar a série do documento fiscal
    tIde[24] := CECDNF.Text; //nNF    --> 1 – 999999999

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
    tide[33] := '';  // refCTe informar aqui a chNFe de acesso do CT-e referenciado. Para não informar nenhuma Cte referenciada, deixar vazio.

    { Grupo de notas de antecipação de pagamento
      Para múltiplas notas utilizar ";" para separar os valores (Máximo 99)
    }
    tIde[45] := ''; //<refNFe> Chave de acesso da NF-e de antecipação de pagamento

    tIde[14] := IEIndFinal.Text; //<indFinal> Indica operação com Consumidor final - 0=Normal; 1=Consumidor final; -> A Tag hSaiEnt foi removida, por isso, em sua posição, foi adicionada a tag indFinal
    tIde[15] := '';              //<dhCont> Data da entrada em contingência - Formado -> AAAA-MM-DDTHH:MM:SSTZD
    tIde[16] := '';              //<xJust> Justificativa da entrada em contingência

    tIde[35] := IFThen(IEUF.Text = 'EX','3',IFThen(IEUF.Text = RECParametros.LOG_UF,'1','2')); //<idDest> Identificador de local de destino da operação
    tIde[36] := '9'; //<indPres> Indicador de presença do comprador no estabelecimento comercial no momento da operação
    tIde[40] := 'Sheild v4.00.5';

    { Apenas informar caso o indPres seja 2,3,4 ou 9 }
    tIde[41] := '0'; //indIntermed; 0 - Operação sem intermediador (em site ou plataforma própria); 1 - Operação em site ou plataforma de terceiros (intermediadores/marketplace)

    { Tag de Grupo de identificação do emitente da NF-e }
    tEmit[00] := RECParametros.EP_NO_RZ; // <xNome>
    tEmit[01] := RECParametros.EP_NO;    // <xFant>

    tEmit[10] := RECParametros.IE; // <IE> Inscrição Estadual
    tEmit[11] := RECParametros.IM; // <IM> Inscrição Municipal do Prestador de Serviço

    tEmit[12] := oRETNumero(RECParametros.EMP_CNAE); // <CNAE> CNAE fiscal
    tEmit[13] := '';                                 // <IEST> IE do Substituto Tributário
    tEmit[14] := RECParametros.NFE_CRT;              // <CRT> Código de Regime Tributário -> 1 – Simples Nacional; 2 – Simples Nacional – excesso de sublimite de receita bruta; 3 – Regime Normal

    { Tag de grupo de identificação do Emitente da NF-e }
    tEmit[02] := RECParametros.LOG_TIPO + ' ' + RECParametros.LOG_NO; // <xLgr>
    tEmit[03] := RECParametros.LOG_NU;       // <nro>
    tEmit[04] := RECParametros.LOG_NU_CPL;   // <xCpl>
    tEmit[05] := RECParametros.LOG_BAI_NO;   // <xBairro>
    tEmit[06] := RECParametros.LOG_LOC_CMUN; // <cMun> composto de 7 dígitos numéricos
    tEmit[07] := RECParametros.LOG_LOC_NO;   // <xMun>
    tEmit[08] := RECParametros.LOG_CEP;      // <CEP>
    tEmit[09] := RECParametros.TEL_NU_MASK;  // <fone>

    { Tag de grupo de identificação do Destinatário da NF-e }
    tDest[00] := IFThen(not oEmpty(edcnpj.Text),edcnpj.Text,edcpf.Text);     //<CNPJ> ou <CPF>
    tDest[41] := EDDECD.Text;                                                //<xFant>
    tDest[01] := oREPAcentos(EDxNome.Text);                                  //<xNome>
    tDest[02] := oREPAcentos(PETxLgr.Text + ' ' + EDxLgr.Text);               //<xLgr>
    tDest[03] := oREPAcentos(EDNRO.Text);                                    //<nro>
    tDest[04] := oREPAcentos(EDxCpl.Text);                                   //<xCpl>
    tDest[05] := oREPAcentos(EDxBairro.Text);                                //<xBairro>
    tDest[06] := oREPAcentos(BECMun.Text);                                   //<cMun>
    tDest[07] := oREPAcentos(EDxMun.Text);                                   //<xMun>
    tDest[08] := oREPAcentos(IEUF.Text);                                     //<UF>
    tDest[09] := oREPAcentos(edcep.Text);                                    //<CEP>
    tDest[10] := IExPais.Text;                                               //<cPais>
    tDest[11] := IExPais.Descriptions[IExPais.Values.IndexOf(IExPais.Text)]; //<xPais>
    tDest[12] := Trim(edDDD.Text + oRETNumero(EDFone.Text));                 //<fone>
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
      tDest[54] := PEEmail.Text; //ENTREGA <email>
      tDest[55] := ''; //ENTREGA <IE>
    end;

    tDest[37] := IEindIEDest.Text;     //<indIEDest> Indicador da IE do Destinatário -> 1=Contribuinte ICMS (informar a IE do destinatário);2=Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS; 9=Não Contribuinte, que pode ou não possuir Inscrição
    tDest[38] := EDidEstrangeiro.Text; //<idEstrangeiro>

    autXML[0] := ''; //<autXML>  Pessoas autorizadas a acessar o XML da NF-e CNPJ ou CPF

    { Tag de grupo do detalhamento de Produtos e Serviços da NFe }
    x := 0;
    Edicao.First;
    while not Edicao.Eof do
    begin
      tProd[x,000] := oREPAcentos(EdicaoNFE_CPROD.AsString); //<cProd> Código do produto ou serviço
      tProd[x,001] := oREPTxt(IFThen(not oEmpty(EdicaoNFE_CEAN.AsString),EdicaoNFE_CEAN.AsString,'SEM GTIN'));      //<cEAN> GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
      tProd[x,002] := oREPAcentos(EdicaoNFE_XPROD.AsString); //<xProd> Descrição do produto ou serviço
      tProd[x,003] := oREPAcentos(EdicaoNFE_NCM.AsString);   //<NCM> Código NCM com 8 dígitos

      tProd[x,109] := oREPAcentos(EdicaoNFE_NVE.AsString);   //<NVE> Codificação NVE - Nomenclatura de Valor Aduaneiro e Estatística
      tProd[x,146] := oREPAcentos(EdicaoNFE_CEST.AsString);  //<CEST>
      tProd[x,156] := '';                                     //<indEscala> Indicador de Escala Relevante - S - Produzido em Escala Relevante; N – Produzido em Escala NÃO Relevante. -> Campo Novo Obrigatorio NFE 4.0
      tProd[x,157] := '';                                     //<CNPJFab> CNPJ do Fabricante da Mercadoria, obrigatório para produto em escala NÃO relevante -> Campo Novo NFE 4.0
      tProd[x,158] := '';                                     //<cBenef> Código de Benefício Fiscal utilizado pela UF, aplicado ao item. -> Campo Novo NFE 4.0

      tProd[x,004] := EdicaoNFE_EXTIPI.AsString;                                                                      //<EXTIPI>
      tProd[x,005] := EdicaoNFE_CFOP.AsString;                                                                        //<CFOP> Código Fiscal de Operações e Prestações
      tProd[x,006] := EdicaoNFE_UCOM.AsString;                                                                        //<uCom> Uniade Comercial
      tProd[x,007] := oTextToValor(EdicaoNFE_QCOM.AsFloat  ,2,True);                                                  //<qCom> Quantidade Comercial
      tProd[x,008] := oTextToValor(EdicaoNFE_VUNCOM.AsFloat,9,True);                                                  //<vUnCom> Valor Unitário de Comercialização
      tProd[x,009] := oTextToValor(EdicaoNFE_VPROD.AsFloat ,2,True);                                                  //<vProd> Valor Total Bruto do Produto ou Serviço

      tProd[x,010] := oREPTxt(EdicaoNFE_CEAN.AsString);                                                               //<cEANTrib> GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras
      tProd[x,011] := EdicaoNFE_UTRIB.AsString;                                                                       //<uTrib> Unidade Tributável
      tProd[x,012] := oTextToValor(EdicaoNFE_QTRIB.AsFloat  ,2,True);                                                 //<qTrib#,0.00> Quantidade Tributável
      tProd[x,013] := oTextToValor(EdicaoNFE_VUNTRIB.AsFloat,9,True);                                                 //<vUnTrib> Valor Unitário de tributação
      tProd[x,014] := IFThen(not oEmpty(EdicaoNFE_VFRETE.AsFloat),oTextToValor(EdicaoNFE_VFRETE.AsFloat,2,True),''); //<vFrete> Valor Total do Frete
      tProd[x,015] := IFThen(not oEmpty(EdicaoNFE_VSEG.AsFloat  ),oTextToValor(EdicaoNFE_VSEG.AsFloat  ,2,True),''); //<vSeg> Valor Total do Seguro
      tProd[x,016] := IFThen(not oEmpty(EdicaoNFE_VDESC.AsFloat ),oTextToValor(EdicaoNFE_VDESC.AsFloat ,2,True),''); //<vDesc> Valor do Desconto
      tProd[x,086] := IFThen(not oEmpty(EdicaoNFE_VOUTRO.AsFloat),oTextToValor(EdicaoNFE_VOUTRO.AsFloat,2,True),''); //<voutro> Outras despesas acessórias

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
      tProd[x,017] := EdicaoNFE_ORIG.AsString;                      //<orig> Origem da mercadoria
      tProd[x,018] := EdicaoNFE_CST.AsString;                       //<CST> ou <CSOSN> Tributação do ICMS
      tProd[x,019] := EdicaoNFE_MODBC.AsString;                     //<modBC> Modalidade de determinação da BC do ICMS
      tProd[x,020] := oTextToValor(EdicaoNFE_VBC.AsFloat  ,2,True); //<vBC> Valor da BC do ICMS
      tProd[x,021] := oTextToValor(EdicaoNFE_PICMS.AsFloat,2,True); //<pICMS> Alíquota do imposto ICMS
      tProd[x,022] := oTextToValor(EdicaoNFE_VICMS.AsFloat,2,True); //<vICMS> Valor do ICMS

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

      tProd[x,046] := '0'; //<modBCST> Modalidade de determinação da BC do ICMS ST
      tProd[x,047] := '0'; //<pMVAST> Percentual da margem de valor Adicionado do ICMS ST
      tProd[x,048] := '0'; //<pRedBCST> Percentual da Redução de BC do ICMS ST
      tProd[x,049] := '0'; //<vBCST>    //icms60, icmspart, ICMSSN500: <vBCSTRet>
      tProd[x,050] := '0'; //<pICMSST>
      tProd[x,051] := '0'; //<vICMSST>  //icms60,ICMSSN500: <vICMSSTRet>
      tProd[x,052] := '0'; //<pRedBC>

      if EdicaoNFE_MODBCST.AsString <> EmptyStr then
      begin
        tProd[x,046] := EdicaoNFE_MODBCST.AsString;                      //<modBCST> Modalidade de determinação da BC do ICMS ST
        tProd[x,047] := oTextToValor(EdicaoNFE_PMVAST.AsFloat   ,4,True); //<pMVAST> Percentual da margem de valor Adicionado do ICMS ST
        tProd[x,048] := oTextToValor(EdicaoNFE_PREDBCST.AsFloat,4,True); //<pRedBCST> Percentual da Redução de BC do ICMS ST
        tProd[x,049] := oTextToValor(EdicaoNFE_VBCST.AsFloat   ,2,True); //<vBCST>    //icms60, icmspart, ICMSSN500: <vBCSTRet>
        tProd[x,050] := oTextToValor(EdicaoNFE_pICMSST.AsFloat ,2,True); //<pICMSST>
        tProd[x,051] := oTextToValor(EdicaoNFE_VICMSST.AsFloat ,2,True); //<vICMSST>  //icms60,ICMSSN500: <vICMSSTRet>
        tProd[x,052] := oTextToValor(EdicaoNFE_PREDBC.AsFloat  ,2,True); //<pRedBC>
      end;

      tProd[x,080] := IFThen(EdicaoNFE_PCREDSN.AsFloat     > 0,oTextToValor(EdicaoNFE_PCREDSN.AsFloat    ,2,True),''); //<pCredSN> Alíquota aplicável de cálculo do crédito (Simples Nacional).
      tProd[x,081] := IFThen(EdicaoNFE_VCREDICMSSN.AsFloat > 0,oTextToValor(EdicaoNFE_VCREDICMSSN.AsFloat,2,True),''); //<vCredICMSSN> Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional)

      { Tag Desoneração }
      tProd[x,085] := EdicaoNFE_MOTDESICMS.AsString; //<motDesICMS> Informar o motivo da desoneração: 0 a 9, ver tabela no manual do contribuinte NF-e.
      tProd[x,096] := '';                             //<pBCOp> informar apenas para gerar o grupo ICMSPART - Grupo de partilha do ICMS entre a UF de origem e UF de destino ou a UF definida na legislação.
      tProd[x,097] := '';                             //<UFST> informar apenas para o grupo ICMSPAR

      { Tag IPI }
      tProd[x,023] := EdicaoNFE_CSTIPI.AsString; //IPI <CST> Código da situação tributária do IPI
                      { obs: Informar os campos INDEX 24 e 25 caso o cálculo do IPI seja por alíquota ou os campos INDEX
                        78 e 79 caso o cálculo do IPI seja valor por unidade.
                      }
                                                                             
      tProd[x,078] := ''; //IPI <qUnid> Quantidade total na unidade padrão para tributação (somente para os produtos tributados por unidade)
      tProd[x,079] := ''; //IPI <vUnid> Valor por Unidade Tributável
      
      tProd[x,024] := IFThen(not oEmpty(EdicaoNFE_VBCIPI.AsFloat),oTextToValor(EdicaoNFE_VBCIPI.AsFloat,2,True),'0,00'); //IPI <vBC> Valor da BC do IPI
      tProd[x,025] := IFThen(not oEmpty(EdicaoNFE_PIPI.AsFloat)  ,oTextToValor(EdicaoNFE_PIPI.AsFloat  ,2,True),'0,00'); //IPI <pIPI> Alíquota do IPI
      tProd[x,026] := IFThen(not oEmpty(EdicaoNFE_VIPI.AsFloat)  ,oTextToValor(EdicaoNFE_VIPI.AsFloat  ,2,True),'0.00'); //IPI <vIPI> Valor do IPI

      tProd[x,087] := EdicaoNFE_CLENQ.AsString;    //IPI <clEnq> Classe de enquadramento do IPI para Cigarros e Bebidas
      tProd[x,088] := EdicaoNFE_CNPJPROD.AsString; //IPI <CNPJProd> CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exportação direta ou indireta.
      tProd[x,089] := '';                          //IPI <cSelo> Código do selo de controle IPI
      tProd[x,090] := '';                          //IPI <qSelo> Quantidade de selo de controle
      tProd[x,091] := EdicaoNFE_CENQ.AsString;     //IPI <cEnq> Código de Enquadramento Legal do IPI
      
      { Tag da Declaração de Importação }
      tProd[x,027] := IFThen(LeftStr(EdicaoNFE_CFOP.AsString,1) = '3',oTextToValor(EdicaoNFE_VBCIMP.AsFloat  ,2,True),'');  //II   <vBC>         Valor BC do Imposto de Importação
      tProd[x,028] := IFThen(LeftStr(EdicaoNFE_CFOP.AsString,1) = '3',oTextToValor(EdicaoNFE_VDESPADU.AsFloat,2,True),'');  //II   <vDespAdu>    Valor despesas aduaneiras
      tProd[x,029] := IFThen(LeftStr(EdicaoNFE_CFOP.AsString,1) = '3',oTextToValor(EdicaoNFE_VII.AsFloat  ,2,True),'');     //II   <vII>         Valor Imposto de Importação
      tProd[x,030] := IFThen(LeftStr(EdicaoNFE_CFOP.AsString,1) = '3',oTextToValor(EdicaoNFE_VIOF.AsFloat ,2,True),'');     //II   <vIOF>        Valor Imposto sobre Operações Financeiras

      { Tag PIS }
      tProd[x,031] := EdicaoNFE_CSTPIS.AsString;                                                                      //<CST> Código de Situação Tributária do PIS
      tProd[x,032] := IFThen(not oEmpty(EdicaoNFE_VBCPIS.AsFloat),oTextToValor(EdicaoNFE_VBCPIS.AsFloat,2,True),''); //<vBC> Valor da Base de Cálculo do PIS
      tProd[x,033] := IFThen(not oEmpty(EdicaoNFE_PPIS.AsFloat)  ,oTextToValor(EdicaoNFE_PPIS.AsFloat  ,2,True),''); //<pPIS> Alíquota do PIS (em percentual)
      tProd[x,034] := IFThen(not oEmpty(EdicaoNFE_VPIS.AsFloat)  ,oTextToValor(EdicaoNFE_VPIS.AsFloat  ,2,True),''); //<vPis> Valor do PIS
      tProd[x,045] := '';                                                                                              //<vAliqProd> Alíquota do PIS (em reais)

      { Tag COFINS }
      tProd[x,035] := EdicaoNFE_CSTCOFINS.AsString;                                                                        //<CST>       Código de Situação Tributária do Cofins
      tProd[x,036] := IFThen(not oEmpty(EdicaoNFE_VBCCOFINS.AsFloat),oTextToValor(EdicaoNFE_VBCCOFINS.AsFloat,2,True),''); //<vBC>       Valor da Base de Cálculo da COFINS
      tProd[x,037] := IFThen(not oEmpty(EdicaoNFE_PCOFINS.AsFloat  ),oTextToValor(EdicaoNFE_PCOFINS.AsFloat  ,2,True),''); //<pCOFINS>   Alíquota da COFINS (em percentual)
      tProd[x,038] := IFThen(not oEmpty(EdicaoNFE_VCOFINS.AsFloat  ),oTextToValor(EdicaoNFE_VCOFINS.AsFloat  ,2,True),''); //<vCOFINS>   Valor da COFINS
      tProd[x,044] := '';                                                                                                   //<vAliqProd> Alíquota da COFINS (em reais)

      { Tag PISST }
      tProd[x,054] := IFThen(not oEmpty(EdicaoNFE_VBCPISST.AsFloat),oTextToValor(EdicaoNFE_VBCPISST.AsFloat,2,True),''); //<vBC>  Valor da Base de Cálculo do PIS
      tProd[x,055] := IFThen(not oEmpty(EdicaoNFE_PPISST.AsFloat)  ,oTextToValor(EdicaoNFE_PPISST.AsFloat  ,2,True),''); //<pPIS> Alíquota do PIS (em percentual)
      tProd[x,056] := IFThen(not oEmpty(EdicaoNFE_VPISST.AsFloat)  ,oTextToValor(EdicaoNFE_VPISST.AsFloat  ,2,True),''); //<vPIS> Valor do PIS

      { Tag COFINSST }
      tProd[x,057] := IFThen(not oEmpty(EdicaoNFE_VBCCOFINSST.AsFloat),oTextToValor(EdicaoNFE_VBCCOFINSST.AsFloat,2,True),''); //<vBC>     Valor da Base de Cálculo da COFINS
      tProd[x,058] := IFThen(not oEmpty(EdicaoNFE_PCOFINSST.AsFloat  ),oTextToValor(EdicaoNFE_PCOFINSST.AsFloat  ,2,True),''); //<pCOFINS> Alíquota da COFINS (em percentual)
      tProd[x,059] := IFThen(not oEmpty(EdicaoNFE_VCOFINSST.AsFloat  ),oTextToValor(EdicaoNFE_VCOFINSST.AsFloat  ,2,True),''); //<vCOFINS> Valor da COFINS

      tProd[x,060] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_NDI.AsString+';');                                    //     <nDI>         Número do Documento de Importação (DI, DSI, DIRE, ...)
      tProd[x,061] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',FormatDateTime('yyyy-mm-dd',EdicaoNFE_DDI.AsDateTime)+';');     //     <dDI>         Data de RegEdit do documento - Formato: “AAAA-MM-DD”
      tProd[x,062] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_XLOCDESEMB.AsString+';');                             //     <xLocDesemb>  Local de desembaraço
      tProd[x,063] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_UFDESEMB.AsString+';');                               //     <UFDesemb>    Sigla da UF onde ocorreu o Desembaraço Aduaneiro
      tProd[x,064] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',FormatDateTime('yyyy-mm-dd',EdicaoNFE_DDESEMB.AsDateTime)+';'); //     <dDesemb>     Data do Desembaraço Aduaneiro
      tProd[x,065] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_CEXPORTADOR.Value+';');                               //     <cExportador> Código do Exportador
      tprod[x,133] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',oTextToValor(EdicaoNFE_VAFRMM.AsFloat,2,True)+';');             //     <vAFRMM>       Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante

      { grupo de adição de importação(Ocorrência 1-N). Atenção: em cada grupo <DI> pode ocorrer 1-n vezes as tags <adi> . Separar usando | as informações de cada grupo <adi> como
        descrito no exemplo abaixo que gera 3 grupos <adi> em cada um dos 2 grupos <DI>
      }
      tProd[x,066] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_NADICAO.AsString +';');                               //adi: <nAdicao>     Numero da Adição (1-1)
      tProd[x,067] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_NSEQADIC.AsString+';');                               //adi: <nSeqAdic>    Numero sequencial do item dentro da Adição (1-1)
      tProd[x,068] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_CFABRICANTE.AsString+';');                            //adi: <cFabricante> Código do fabricante estrangeiro (1-1)
      tProd[x,069] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',                                                                 //adi: <vDescDI>     Valor do desconto do item da DI – Adição (0-1)
                      IFThen(oEmpty(EdicaoNFE_VDESCDI.AsFloat),'',oTextToValor(EdicaoNFE_VDESCDI.AsFloat,2,True))+';');
      tProd[x,155] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_NDRAW.AsString+';');                                  //adi: <nDraw>        Número do ato concessório de Drawback

      tProd[x,83] := ''; //<xPed>  Número do Pedido de Compra (0-1)
      tProd[x,84] := ''; //<nItemPed> Item do Pedido de Compra (0-1)

      if IEITEMPED.Text = '1' then
      begin
        tProd[x,83] := EdicaoNFE_XPED.AsString;    //<xPed>     Número do Pedido de Compra (0-1)
        tProd[x,84] := EdicaoNFE_NITEMPED.AsString; //<nItemPed> Item do Pedido de Compra (0-1)
      end;

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
      tProd[x,132] := ''; //<pMixGN> Percentual de Gás Natural para o produto GLP (cProdANP=210203001)

      tProd[x,161] := ''; //<descANP> Descrição do Produto v4.00
      tProd[x,162] := ''; //<pGLP> Percentual do GLP derivado do petróleo v4.00
      tProd[x,163] := ''; //<pGNn> Percentual do Gás Natural Nacional v4.00
      tProd[x,164] := ''; //<pGNi> Percentual de Gás Natural Importado v4.00
      tProd[x,165] := ''; //<vPart> Valor de Partida v4.00

      tProd[x,093] := ''; //<CODIF> Código de autorização / RegEdit do CODIF    (ocorrência 0-1)
      tProd[x,094] := ''; //<qTemp> Quantidade de combustível faturada à temperatura ambiente.   (ocorrência 0-1)
      tProd[x,095] := ''; //<UFCons> Sigla da UF de consumo  (ocorrência 1-1)

      { Tag <infAdProd - 2 posicoes p/ completar 500 caracteres }
      tProd[x,053] := ''; // REFERÊNCIA index primeiro '+IntToStr(x+1);
      tProd[x,077] := ''; // oREPAcentos(RightStr(EdicaoNFE_INFADPROD.AsString,250)); //'REFERÊNCIA index segundo '+IntToStr(x+1);

      if (not oEmpty(EdicaoCP_CMP_NO.AsString)) or (not oEmpty(oREPMemoEsp(EdicaoNFE_INFADCAD.AsString))) then
      if oEmpty(EdicaoCP_CMP_NO.AsString) then
      tProd[x,053] := LeftStr(oREPAcentos(oREPMemoEsp(EdicaoNFE_INFADCAD.AsString)),250) else
      begin
        tProd[x,053] := LeftStr(oREPAcentos(oREPMemoEsp(EdicaoCP_CMP_NO.AsString)),250);
        tProd[x,077] := LeftStr(oREPAcentos(oREPMemoEsp(EdicaoNFE_INFADCAD.AsString)),250);
      end;

      if not oEmpty(Trim(AINFADTRIB.Text)) then
      if oEmpty(tProd[x,053]) then
      tProd[x,053] := Trim(AINFADTRIB.Text) else
      tProd[x,077] := Trim(AINFADTRIB.Text);

      tProd[x,076] := EdicaoNFE_INDTOT.AsString; //<indTot> Indica se valor do Item (vProd) entra no valor total da NF-e (vProd) - 0 = Valor do item (vProd) não compõe o valor total da NF-e; 1 = Valor do item (vProd) compõe o valor total da NF-e (vProd) (v2.0);
      tProd[x,237] := ''; //<indBemMovelUsado> Indicador de fornecimento de bem móvel usado: 1-Bem Móvel Usado

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

      tProd[x,099] := IFThen(not oEmpty(EdicaoNFE_VTOTTRIB.AsFloat  ),oTextToValor(EdicaoNFE_VTOTTRIB.AsFloat  ),''); //<vtotTrib>    NT 2013 003 tag opcional ref. ao valor aproximado dos tributos do produto
      tProd[x,105] := EdicaoNFE_NFCI.AsString;                                                                         //<nFCI>  Número de controle da FCI - Ficha de Conteúdo de Importação
      tProd[x,106] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_TPVIATRANSP.AsString +';');                           //     <tpViaTransp>  NT 2013.005 1=Marítima; 2=Fluvial; 3=Lacustre; 4=Aérea; 5=Postal 6=Ferroviária; 7=Rodoviária;  8=Conduto / Rede Transmissão; 9=Meios Próprios; 10=Entrada / Saída ficta
      tProd[x,107] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_TPINTERMEDIO.AsString+';');                           //     <tpIntermedio> 1=Importação por conta própria; 2=Importação por conta e ordem; 3=Importação por encomenda;
      tProd[x,108] := IFThen(not oEmpty(EdicaoNFE_VICMSDESON.AsFloat),oTextToValor(EdicaoNFE_VICMSDESON.AsFloat),''); //<vICMSDeson> (ocorrência 1-1) Nota:2013/005 Informar apenas nos motivos de desoneração documentados abaixo.

      //<detExport> - Tag destinada a Exportação
      tprod[x,110] := ''; //<nDraw> Número do ato concessório de Drawback - Tag destinada a Exportação
      tprod[x,111] := ''; //<chNFe> chNFe de Acesso da NF-e recebida para exportação - Tag destinada a Exportação
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

      tprod[x,134] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_CNPJTERCEIRO.AsString+';');                           //     <CNPJ>         CNPJ do adquirente ou do encomendante
      tprod[x,135] := IFThen(LeftStr(PECFOP.Text,1) <> '3','',EdicaoNFE_UFTERCEIRO.AsString+';');                             //     <UFTerceiro>   Sigla da UF do adquirente ou do encomendante

      { Tag ICMS 51 }
      tProd[x,137] := oTextToValor(EdicaoNFE_VICMSOP.AsFloat ,2,True); //<vICMSOp> Valor do ICMS da Operação
      tProd[x,138] := oTextToValor(EdicaoNFE_PDif.AsFloat    ,2,True); //<pDif> Percentual do diferimento
      tProd[x,139] := oTextToValor(EdicaoNFE_VICMSDIF.AsFloat,2,True); //<vICMSDif> Valor do ICMS diferido

      { Tag ICMSST para gerar o ICMSST todos os indices do vetor devem conter dados }
      tProd[x,140] := oTextToValor(EdicaoNFE_VBCSTRET.AsFloat,2,True);    //<vBCSTRet> Valor da BC do ICMS Retido Anteriormente
      tProd[x,141] := oTextToValor(EdicaoNFE_VICMSSTRET.AsFloat,2,True);  //<vICMSSTRet> Valor do ICMS Retido Anteriormente
      tProd[x,142] := oTextToValor(EdicaoNFE_VBCSTDEST.AsFloat,2,True);   //<vBCSTDest> Valor da BC do ICMS ST da UF destino
      tProd[x,143] := oTextToValor(EdicaoNFE_VICMSSTDEST.AsFloat,2,True); //<vICMSSTDest> Valor do ICMS ST da UF destino

      // Para gerar o ICMSUFDest todos os indices do vetor devem conter dados
      if FIS_NFE_SUMNFE_VICMSUFDEST.AsFloat > 0 then
      begin
        tProd[x,147] := oTextToValor(EdicaoNFE_vBCUFDest.AsFloat,2,True);      //<vBCUFDest> Valor da BC do ICMS na UF de destino
        tProd[x,148] := oTextToValor(EdicaoNFE_pFCPUFDest.AsFloat,2,True);     //<pFCPUFDest> Percentual do ICMS relativo ao Fundo de Combate à Pobreza (FCP) na UF de destino
        tProd[x,149] := oTextToValor(EdicaoNFE_pICMSUFDest.AsFloat,2,True);    //<pICMSUFDest> Alíquota interna da UF de destino
        tProd[x,150] := oTextToValor(EdicaoNFE_pICMSInter.AsFloat,2,True);     //<pICMSInter> Alíquota interestadual das UF envolvidas
        tProd[x,151] := oTextToValor(EdicaoNFE_pICMSInterPart.AsFloat,2,True); //<pICMSInterPart> Percentual provisório de partilha do ICMS Interestadual
        tprod[x,152] := oTextToValor(EdicaoNFE_vFCPUFDest.AsFloat,2,True);     //<vFCPUFDest> alor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino
        tProd[x,153] := oTextToValor(EdicaoNFE_vICMSUFDest.AsFloat,2,True);    //<vICMSUFDest> Valor do ICMS Interestadual para a UF de destino
        tProd[x,154] := oTextToValor(EdicaoNFE_vICMSUFRemet.AsFloat,2,True);   //<vICMSUFRemet> Valor do ICMS Interestadual para a UF do remetente
        tProd[x,176] := oTextToValor(EdicaoNFE_vBCFCPUFDest.AsFloat,2,True);   //<vBCFCPUFDest> Valor da BC FCP na UF de destino
      end;

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
      tProd[x,249] := EdicaoNFE_IBSCBS_CSTIS.AsString;        // IBSCBS <CST> Código de Situação Tributária do IBS e CBS
      tProd[x,250] := EdicaoNFE_IBSCBS_CCLASSTRIBIS.AsString; // IBSCBS <cClassTrib> Código de Classificação Tributária do IBS e CBS

      if EdicaoNFE_IBSCBS_CSTIS.AsString = '000' then
      begin
        {Grupo de Informações do IBS e da CBS <gIBSCBS>}
        {Indexes obrigatórios: 251, 252, 258, 259, 265, 266, 267, 273}
        tProd[x,251] := oTextToValor(EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat,2,True); //gIBSCBS <vBC> Base de Cálculo do IBS e da CBS

        {Grupo de Informações do IBS para a UF <gIBSCBS/gIBSUF>}
        tProd[x,252] := oTextToValor(EdicaoNFE_IBSUF_PIBSUF.ASFloat,4,True); // <pIBSUF> Alíquota vigente do IBS da UF
        tProd[x,258] := oTextToValor(EdicaoNFE_IBSUF_VIBSUF.ASFloat,2,True); // <vIBSUF> gIBSUF Valor do IBS de competência da UF

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

        tProd[x,266] := oTextToValor(EdicaoNFE_IBSUF_VIBSUF.ASFloat,2,True); //gIBSCBS <vIBS> Valor do IBS

        {Grupo de informações da CBS}
        tProd[x,267] := oTextToValor(EdicaoNFE_CBS_PCBS.AsFloat,4,True); // <pCBS> gCBS Alíquota da CBS
        tProd[x,273] := oTextToValor(EdicaoNFE_CBS_VCBS.AsFloat,2,True); // <vCBS> Valor da CBS
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
      if (EDISUF.Text <> EmptyStr) and (RECRomaneio.ZFM_CMUN) and (EdicaoNFE_MOTDESICMS.AsInteger = 7) then
      tProd[x,235] := '1'; //indDeduzDeson

      tProd[x,236] := ''; //cBenefRBC
      tProd[x,238] := oTextToValor(EdicaoNFE_VUNCOM.AsFloat,9,True); //<vItem> Valor total do Item, correspondente à sua participação no total da nota. A soma dos itens deverá corresponder ao total da nota.

      //Referenciamento de item de outro Documento Fiscal Eletrônico
      tProd[x,239] := ''; //<chaveAcesso> Chave de acesso do DF-e referenciado
      tProd[x,240] := ''; //<nItem> Número do item do documento referenciado

      inc(x);
      Edicao.Next;
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

    { Soma número de volumes diversos }
    CENVOL.Tag  := IFThen(CENVOL.Value > 0,1,0);

    { Volume 1}
    tTransp[09] := CEQVOL.Text;  //<qVol>
    tTransp[10] := PEESP.Text;      //<esp>
    tTransp[11] := EDMARCA.Text; //<marca>
    tTransp[12] := CENVOL.Text;  //<nVol>
    tTransp[13] := oTextToValor(CEPSLQ.Value,3,True); //<pesoL>
    tTransp[14] := oTextToValor(CEPSBR.Value,3,True); //<pesoB>

    { Volumes. 2 em diante }
    for x := 2 to CENVOL.Tag do
    begin
      if tdxCurrencyEdit(FindComponent(Format('V%d_CENVOL',[x]))).Value > 0 then
      begin
        tTransp[09] := tTransp[09] + ';' + tdxCurrencyEdit(FindComponent(Format('V%d_CEQVOL',[x]))).Text; // + ';';
        tTransp[10] := tTransp[10] + ';' + tdxEdit(FindComponent(Format('V%d_EDESP' ,[x]))).Text; // + ';';

        if tdxEdit(FindComponent(Format('V%d_EDMarca',[x]))).Text <> EmptyStr Then
        tTransp[11] := tTransp[11] + ';' + tdxEdit(FindComponent(Format('V%d_EDMarca',[x]))).Text; // + ';';

        tTransp[12] := tTransp[12] + ';' + CENVOL.Text;
        tTransp[13] := tTransp[13] + ';' + oTextToValor(tdxCurrencyEdit(FindComponent(Format('V%d_CEPSLQ',[x]))).Value,3,True); // + ';';
        tTransp[14] := tTransp[14] + ';' + oTextToValor(tdxCurrencyEdit(FindComponent(Format('V%d_CEPSBR',[x]))).Value,3,True); // + ';';
      end;
    end;

    { Finaliza Volumes }
    if Pos(';',tTransp[09]) > 0 then
    begin
      tTransp[09] := tTransp[09] + ';';
      tTransp[10] := tTransp[10] + ';';
      tTransp[11] := IFThen(tTransp[11] = EmptyStr,EmptyStr,tTransp[11] + ';');
      tTransp[12] := tTransp[12] + ';';
      tTransp[13] := tTransp[13] + ';';
      tTransp[14] := tTransp[14] + ';';
    end;

    { Retira Acentos e/ou caracteres inválidos }
    tTransp[09] := oREPAcentos(tTransp[09]);
    tTransp[10] := oREPAcentos(tTransp[10]);
    tTransp[11] := oREPAcentos(tTransp[11]);
    tTransp[12] := oREPAcentos(tTransp[12]);
    tTransp[13] := oREPAcentos(tTransp[13]);
    tTransp[14] := oREPAcentos(tTransp[14]);

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
    if IEBOLETO.Text = 'SIM' then
    try
      tCobr[00] := CECDNF.Text;                      //fat <nFat>
      tCobr[01] := oTextToValor(FIS_NFE_SUMNFE_VDUP.AsFloat,2,True); //fat <vOrig>
      tCobr[02] := oTextToValor(FIS_NFE_SUMNFE_VDUP.AsFloat,2,True); //fat <vLiq>

      x := 0;
      FIS_NFE_DUP.DisableControls;
      FIS_NFE_DUP.First;
      while not FIS_NFE_DUP.Eof do
      begin
        inc(x);
        tCobr[03] := tCobr[03] + oStrZero(x,3)+';';                                           //dup <nDup>
        tCobr[04] := tCobr[04] + FormatDateTime('yyyy-mm-dd',FIS_NFE_DUPNFE_DTVC.AsDateTime)+';'; //dup <dVenc>
        tCobr[05] := tCobr[05] + oTextToValor(FIS_NFE_DUPNFE_VDUP.AsFloat,2,True)+';';            //dup <vDup>
        FIS_NFE_DUP.Next;
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
      FIS_NFE_DUP.EnableControls;
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
     *90=Sem pagamento
     *99=Outros *}

    if IETPAG.Text    = '90' then
       IEINDPAG.Text := '90';

    tPag[00] := IETPAG.Text+';'; //<tPag> Forma de Pagamento
    tPag[01] := IFThen(IETPAG.Text   = '90','0.00;',oTextToValor(IFThen(IEBOLETO.Text = 'SIM',FIS_NFE_SUMNFE_VDUP.AsFloat,FIS_NFE_SUMNFE_VNF.AsFloat),2,True)+';'); //<vPag> Valor do Pagamento
    tPag[07] := IFThen(IEINDPAG.Text = '90',EmptyStr,IEINDPAG.Text+';'); //<indPag> Indicador de pgto 0|1

    tPag[02] := ''; // '01;';            //<tpIntegra> Tipo de Integração do processo de pagamento com o sistema de automação da empresa
    tPag[03] := ''; // '9999999999999;'; //<CNPJ> CNPJ da Credenciadora do Cartão
    tPag[04] := ''; // 'visa;';          //<tBand> Bandeira da Operadora do Cartão
    tPag[05] := ''; // '1234;';          //<cAut> Numero de Autorização da Operação

    {* 1=Pagamento integrado com o sistema de automação da empresa (Ex.: equipamento TEF, Comércio Eletrônico);
     * 2= Pagamento não integrado com o sistema de automação da empresa (Ex.: equipamento POS); }

    if Pos(IETPAG.Text,'030410111213151718') > 0 then
    begin
      tPag[02] := ''; // '01;';            //<tpIntegra> Tipo de Integração do processo de pagamento com o sistema de automação da empresa
      tPag[03] := '';   // '9999999999999;'; //<CNPJ> CNPJ da Credenciadora do Cartão
      tPag[04] := '';   // 'visa;';          //<tBand> Bandeira da Operadora do Cartão
      tPag[05] := '';   // '1234;';          //<cAut> Numero de Autorização da Operação
    end;

    tPag[06] := ''; //'0.00';           //<vTroco> Valor do Troco
    tPag[08] := IFThen(IETPAG.Text = '99',oREPAcentos(IETPAG.Descriptions[IETPAG.Values.IndexOf(IETPAG.Text)])+';',''); //<xPag> 'descrição do meio de pagamento' (xPag) - NT 2020.006 v1.20
    tPag[09] := ''; //<dPag> Data do Pagamento
    tPag[10] := ''; //<CNPJPag> CNPJ transacional do pagamento
    tPag[11] := ''; //<UFPag> UF do CNPJ do estabelecimento
    tPag[12] := ''; //<CNPJReceb> CNPJ do beneficiário do pagamento
    tPag[13] := ''; //<idTermPag> Identificador do terminal de pagamento

    { Tag de grupo de Valores Totais da NFe }
    tTotal[00] := oTextToValor(FIS_NFE_SUMNFE_VBC.AsFloat  ,2,True); //<vBC>
    tTotal[01] := oTextToValor(FIS_NFE_SUMNFE_VICMS.AsFloat,2,True); //<vICMS>

    if FIS_NFE_SUMNFE_VCREDICMSSN.AsFloat > 0 then
    begin
      tTotal[00] := oTextToValor(FIS_NFE_SUMNFE_VBCCREDICMSSN.AsFloat,2,True); //<vBC>
      tTotal[01] := oTextToValor(FIS_NFE_SUMNFE_VCREDICMSSN.AsFloat,2,True); //<vICMS>
    end;
    tTotal[27] := oTextToValor(FIS_NFE_SUMNFE_VICMSDESON.AsFloat,2,True); //ICMSTot  <vICMSDeson>

    tTotal[02] := oTextToValor(FIS_NFE_SUMNFE_VBCST.AsFloat  ,2,True); //<vBCST>
    tTotal[03] := oTextToValor(FIS_NFE_SUMNFE_VST.AsFloat    ,2,True); //<vST>
    tTotal[04] := oTextToValor(FIS_NFE_SUMNFE_VPROD.AsFloat  ,2,True); //<vProd>
    tTotal[05] := oTextToValor(FIS_NFE_SUMNFE_VFRETE.AsFloat ,2,True); //<vFrete>
    tTotal[06] := oTextToValor(FIS_NFE_SUMNFE_VSEG.AsFloat   ,2,True); //<vSeg>
    tTotal[07] := oTextToValor(FIS_NFE_SUMNFE_VDESC.AsFloat  ,2,True); //<vDesc>
    tTotal[08] := oTextToValor(FIS_NFE_SUMNFE_VII.AsFloat    ,2,True); //<vII>
    tTotal[09] := oTextToValor(FIS_NFE_SUMNFE_VIPI.AsFloat   ,2,True); //<vIPI>
    tTotal[10] := oTextToValor(FIS_NFE_SUMNFE_VPIS.AsFloat   ,2,True); //<vPIS>
    tTotal[11] := oTextToValor(FIS_NFE_SUMNFE_VCOFINS.AsFloat,2,True); //<vCOFINS>
    tTotal[12] := oTextToValor(FIS_NFE_SUMNFE_VOUTRO.AsFloat ,2,True); //<vOutro>
    tTotal[13] := oTextToValor(FIS_NFE_SUMNFE_VNF.AsFloat    ,2,True); //<vNF>

    tTotal[39] := '0.00'; //ICMSTot <vFCPST> Valor Total do FCP (Fundo de Combate à Pobreza) retido por substituição tributária
    tTotal[40] := '0.00'; //ICMSTot <vFCPSTRet> Valor Total do FCP retido anteriormente por Substituição Tributária
    tTotal[41] := '0.00'; //ICMSTot <vIPIDevol> Valor Total do IPI devolvido

    tTotal[26] := '0.00'; // <vTotTrib>

    { Totais ICMSUF }
    tTotal[37] := oTextToValor(FIS_NFE_SUMNFE_VFCPUFDEST.AsFloat,2,True);  //ICMSTot <vFCPUFDest>

    if FIS_NFE_SUMNFE_VICMSUFDEST.AsFloat > 0 then
    tTotal[35] := oTextToValor(FIS_NFE_SUMNFE_VICMSUFDEST.AsFloat,2,True); //ICMSTot <vICMSUFDest>
    
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
 //   if EdicaoNFE_IBSCBS_CSTIS.AsString = '000' then
    begin
      //<ISTot> Grupo total do imposto seletivo
      tTotal[48] := ''; //<vIS> Total do Imposto Seletivo

      //<IBSCBSTot> Totais da NF-e com IBS e CBS
      tTotal[49] := oTextToValor(FIS_NFE_SUMNFE_IBSCBS_VBCIBSCBS.AsFloat,2,True); //<vBCIBSCBS> Valor total da BC do IBS e da CBS

      {<gIBS> Grupo Total do IBS}
      {Para gerar este grupo todas tags abaixo devem ser informadas}

      {<gIBSUF> Grupo Total do IBS da UF}
      tTotal[50] := '0.00'; //<vDif> Valor total do diferimento
      tTotal[51] := '0.00'; //<vDevTrib> Valor total de devolução de tributos
      tTotal[52] := oTextToValor(FIS_NFE_SUMNFE_IBSUF_VIBSUF.ASFloat,2,True); //<vIBSUF> Valor total do IBS da UF

      {<gIBSMun> Grupo Total do IBS do Município}
      tTotal[53] := '0.00'; //<vDif> Valor total do diferimento
      tTotal[54] := '0.00'; //<vDevTrib> Valor total de devolução de tributos
      tTotal[55] := '0.00'; //<vIBSMun> Valor total do IBS da UF

      tTotal[56] := oTextToValor(FIS_NFE_SUMNFE_IBSUF_VIBSUF.ASFloat,2,True); //<vIBS> Valor total do IBS
      tTotal[57] := '0.00'; //<vCredPres> Valor total do crédito presumido
      tTotal[58] := '0.00'; //<vCredPresCondSus> Valor total do crédito presumido em condição suspensiva

      {<gCBS> Grupo Total da CBS}
      {Para gerar este grupo todas tags abaixo devem ser informadas}
      tTotal[59] := '0.00'; //<vDif> Valor total do diferimento
      tTotal[60] := '0.00'; //<vDevTrib> Valor total de devolução de tributos
      tTotal[61] := oTextToValor(FIS_NFE_SUMNFE_CBS_VCBS.AsFloat,2,True); //<vCBS> Valor total da CBS
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

      if FIS_NFE_SUMNFE_VNFTOT.AsFloat > 0 then
      tTotal[70] := oTextToValor(FIS_NFE_SUMNFE_VNFTOT.AsFloat,2,True);
    end;
    
    if (Pos(EDMARCA.Text,EDINFADNF.Text) = 0) and (EDMARCA.Text <> EmptyStr) then
    begin
      REC_SHE_DEF.FList.Add('** CONTAINER No ..: ' + EDMARCA.Text + '  ' + CENVOL.Text);
      REC_SHE_DEF.FList.Add('|');
    end;

    if REC_SHE_DEF.FList.Count > 0 then
    begin
      for x := 0 to REC_SHE_DEF.FList.Count - 1 do
      //if Trim(REC_SHE_DEF.FList.Strings[x]) <> '|' then
      tInfAdic[x]             := Trim(REC_SHE_DEF.FList.Strings[x]);
      tInfAdic[REC_SHE_DEF.FList.Count-1] := LeftStr(tInfAdic[REC_SHE_DEF.FList.Count-1],Length(tInfAdic[REC_SHE_DEF.FList.Count-1])-1);
    end;

    if EDCDPD.Text <> EmptyStr then
       if CECDRO.Value > 0 then
       begin
         tInfAdic[21] := 'Nosso Pedido;Vendedor;Representante';
         tInfAdic[22] :=  oREPAcentos('No ' + EDCDPD.Text) + ';' + oREPAcentos(RECRomaneio.DECV) + ';' + oREPAcentos(RECRomaneio.DECR);
       end else
       begin
         tInfAdic[21] := 'Pedido';
         tInfAdic[22] :=  oREPAcentos('No ' + EDCDPD.Text);
       end;

    if ((RECRomaneio.IDCV <> 0) and (StrToInt(RECRomaneio.IDCV) <> RECUsuarios.Id)) then
    begin
      tInfAdic[21] := oREPAcentos(tInfAdic[21] + IFThen(not oEmpty(tInfAdic[21]),';','') + 'Operador');
      tInfAdic[22] := oREPAcentos(tInfAdic[22] + IFThen(not oEmpty(tInfAdic[22]),';','') + RECUsuarios.Login);
    end;

    tInfAdic[23] := ''; //ProcRef <nProc>
    tInfAdic[24] := ''; //ProcRef <indProc>

    tInfAdic[25] := ''; //infIntermed <CNPJ> - Informar o CNPJ do Intermediador da Transação (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.
    tInfAdic[26] := ''; //infIntermed <idCadIntTran>  - Nome do usuário ou identificação do perfil do vendedor no site do intermediador (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.

    SBRodape.Panels[3].Text := Trim(RightStr(GeraNFe(tIde,tEmit,tDest,tProd,tTotal,tTransp,tCobr,tPag,tInfAdic,autXML,True),44));
    SBRodape.Update;

    if Length(SBRodape.Panels[3].Text) = 44 then { Chave NFe }
    begin
      SBRodape.Panels[1].Text := 'Arquivo XML gerado com sucesso';
      SBRodape.Update;
      
      ACTNFeValidate.Execute;
      ACTXMLValidate.Execute;
    end else
    begin
      SBRodape.Panels[1].Text := 'Falha na geração do arquivo XML';
      SBRodape.Update;
      Abort;
    end;
  finally
    Screen.cursor := crDefault;
    Edicao.EnableControls;
    Application.ProcessMessages;
  end;
end;

procedure TFrmVEN_NFE.ACTXMLValidateExecute(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;

    SBRodape.Panels[1].Text := 'Aguarde, assinando arquivo XML ...';
    SBRodape.Panels[2].Text := EmptyStr;
    SBRodape.Panels[4].Text := EmptyStr; { Protocolo }
    SBRodape.Panels[5].Text := EmptyStr; { CSTAT     }
    SBRodape.Update;

    if not FileExists(PChar('C:\Sheild\NotaFiscal\NFe\arquivos\assinado\NFe' + SBRodape.Panels[3].Text + '-assinado.xml')) then
    begin
      SBRodape.Panels[1].Text := 'Falha na assinatura da nota fiscal';
      SBRodape.Panels[2].Text := 'Arquivo XML não encontrado em ..\assinado';
      SBRodape.Update;

      ACTNFeEdicao.Execute;
    end;

    if ValidarArquivoXML(PChar('C:\Sheild\NotaFiscal\NFe\arquivos\assinado\NFe' + SBRodape.Panels[3].Text + '-assinado.xml'),'nfe_v4.00.xsd',True) = 'OK' then
    begin
      SBRodape.Panels[1].Text := 'Validação efetuada com sucesso';
      SBRodape.Panels[2].Text := 'Nenhum erro identificado';
      SBRodape.Update;

      ACTXMLValidate.Enabled := False;
      ACTXMLSend.Enabled     := True;
    end else
    begin
      SBRodape.Panels[1].Text := 'Falha na validação';
      SBRodape.Panels[2].Text := 'Problemas na validação da assinatura do arquivo XML. Verifique os erros encontrados';
      SBRodape.Update;

      ACTNFeEdicao.Execute;
    end;
  finally
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TFrmVEN_NFE.ACTXMLLoteCreateExecute(Sender: TObject);
var
  x,y : Integer;
begin
  y := 0;
  try
    Screen.Cursor := crAppStart;

    SBRodape.Panels[1].Text := 'Aguarde, gerando lote para envio para o sefaz ...';
    SBRodape.Panels[2].Text := EmptyStr;
    SBRodape.Panels[4].Text := EmptyStr; { Protocolo }
    SBRodape.Panels[5].Text := EmptyStr; { CSTAT     }
    SBRodape.Update;

    repeat
      inc(y);
      x := GerarLote(Trunc(CECDNF.Value),'',False);

      if x = 1 then
      Break;

      Application.ProcessMessages;
      SleepEx(1000,False);
    until y = 5;

    if x = 1 then
    begin
      SBRodape.Panels[1].Text := 'Lote gerado com sucesso ! Aguardando autorização do sefaz ...';
      SBRodape.Update;

      y := 0;
      repeat
        inc(y);
        SBRodape.Panels[1].Text :=  NFeAutorizacao(PChar('C:\Sheild\NotaFiscal\NFe\lotes\'+oStrZero(Trunc(CECDNF.Value),12) + '-env-lot.xml'));
        SBRodape.Update;

        if LeftStr(SBRodape.Panels[1].Text,3) = '103' then { Lote recebido com sucesso }
        begin
          SBRodape.Panels[4].Text := Trim(RightStr(SBRodape.Panels[1].Text,Length(SBRodape.Panels[1].Text) - Pos('#',SBRodape.Panels[1].Text)));
          SBRodape.Update;
          Break;
        end;

        Application.ProcessMessages;
        SleepEx(1000,False);
      until y = 5;
    end else

    if x = -1 then
    SBRodape.Panels[1].Text := 'Falha na geração do lote' else

    if x = 0 then
    SBRodape.Panels[1].Text := 'Operação Cancelada' else

    if x = 2 then
    SBRodape.Panels[1].Text := 'Não existe(m) arquivo(s) assinado(s)';

    if SBRodape.Panels[4].Text = EmptyStr then { PROTOCOLO }
    begin
      ACTNFeEdicao.Execute;
      oException(Nil,'Falha na autorização do lote enviado !' + #13 +
                     'Tente novamente clicando no botão validar.');
    end;

  finally
    Screen.cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TFrmVEN_NFE.ACTXMLLoteRetornoExecute(Sender: TObject);
var
  y: Word;
begin
  y := 0;
  try
    Screen.Cursor := crAppStart;

    try
      SBRodape.Panels[1].Text := 'Aguardando resposta do sefaz ...';
      SBRodape.Panels[2].Text := 'Autorização em andamento';
      SBRodape.Panels[5].Text := '135'; { CSTAT REJEIÇÃO }
      SBRodape.Panels[6].Text := ''; { TIPO RETORNO }
      SBRodape.Update;

      repeat
        inc(y);
        SBRodape.Panels[1].Text := NfeRetAutorizacao(SBRodape.Panels[4].Text);
        SBRodape.Update;

        if Pos('AUTORIZADO',UPPERCASE(SBRodape.Panels[1].Text)) > 0 then
        begin
          SBRodape.Panels[1].Text := 'Autorizado uso de NFe';
          SBRodape.Panels[2].Text := EmptyStr;
          SBRodape.Panels[5].Text := '100'; { CSTAT AUTORIZAÇÃO }
          SBRodape.Panels[6].Text := 'AUTO'; { TIPO RETORNO }
          SBRodape.Update;

          Break;
        end;

        if (Pos('105',SBRodape.Panels[1].Text) > 0) and (y = 5) then
        begin
          SBRodape.Panels[1].Text := NFeConsulta(SBRodape.Panels[3].Text);
          SBRodape.Panels[4].Text := Trim(RightStr(SBRodape.Panels[1].Text,Length(SBRodape.Panels[1].Text) - Pos('#',SBRodape.Panels[1].Text)));
          SBRodape.Panels[5].Text := LeftStr(SBRodape.Panels[1].Text,3); { CSTAT }
          SBRodape.Update;

          if SBRodape.Panels[5].Text = '100' then
          begin
            SBRodape.Panels[6].Text := 'AUTO'; { TIPO RETORNO }
            Break;
          end;  
        end;

        if (Pos(LeftStr(SBRodape.Panels[1].Text,3),'100105110135') = 0) then
        begin
          if Pos('DUP',UPPERCASE(SBRodape.Panels[2].Text)) > 0 then
          begin
            SBRodape.Panels[2].Text := Trim(Copy(SBRodape.Panels[1].Text,Pos('DUP',UPPERCASE(SBRodape.Panels[1].Text)),Length(SBRodape.Panels[1].Text)));
            SBRodape.Panels[1].Text := 'Autorização Negada';
            SBRodape.Panels[6].Text := 'DUP'; { TIPO RETORNO }
            SBRodape.Update;
          end else

          if Pos('DEN',UPPERCASE(SBRodape.Panels[1].Text)) > 0 then
          begin
            SBRodape.Panels[2].Text := Trim(Copy(SBRodape.Panels[1].Text  ,Pos('REJ',UPPERCASE(SBRodape.Panels[1].Text)),Length(SBRodape.Panels[1].Text)));
            SBRodape.Panels[1].Text := 'Autorização Negada, nota fiscal denegada';
            SBRodape.Panels[6].Text := 'DEN'; { TIPO RETORNO }
            SBRodape.Update;
          end else

          if Pos('REJ',UPPERCASE(SBRodape.Panels[1].Text)) > 0 then
          begin
            SBRodape.Panels[2].Text := Trim(Copy(SBRodape.Panels[1].Text  ,Pos('REJ',UPPERCASE(SBRodape.Panels[1].Text)),Length(SBRodape.Panels[1].Text)));
            SBRodape.Panels[1].Text := 'Autorização Negada';
            SBRodape.Panels[6].Text := 'REJ'; { TIPO RETORNO }
            SBRodape.Update;
          end else
          begin
            SBRodape.Panels[2].Text := Trim(Copy(SBRodape.Panels[1].Text,Pos('DUP',UPPERCASE(SBRodape.Panels[1].Text)),Length(SBRodape.Panels[1].Text)));
            SBRodape.Panels[1].Text := 'Autorização Negada';
            SBRodape.Panels[6].Text := 'REJ'; { TIPO RETORNO }
            SBRodape.Update;
          end;

          Abort;
        end;

        SBRodape.Panels[2].Text := 'Tentativa(s): ' + INTTOSTR(Y);
        Application.ProcessMessages;
        SleepEx(1000,False);
      until y = 5;

    finally
      if (SBRodape.Panels[2].Text <> EmptyStr) and (Pos(SBRodape.Panels[5].Text,'100110150') = 0) then
      begin
        if Pos('[chNFe:',SBRodape.Panels[2].Text) > 0 then
        begin
          SBRodape.Panels[3].Text := Copy(SBRodape.Panels[2].Text,Pos('[chNFe:',SBRodape.Panels[2].Text) + 7,44);
          SBRodape.Update;
        end;

        ACTXMLSend.Enabled := False;
        ACTNFeEdicao.Execute;

        if SBRodape.Panels[1].Text = SBRodape.Panels[2].Text then
        SBRodape.Panels[1].Text := 'Autorização Negada !';

        oException(Nil,SBRodape.Panels[2].Text + #13 +
                       SBRodape.Panels[1].Text);
      end;
    end;

  finally
    Screen.cursor := crDefault;
    Application.ProcessMessages;

    if Pos('DUP',UPPERCASE(SBRodape.Panels[2].Text)) > 0 then
    begin
      SBRodape.Panels[6].Text := 'DUP'; { TIPO RETORNO }
      Clipboard.AsText := SBRodape.Panels[3].Text;

      oAviso(Application.Handle,
      'Código XML copiado para área de transferência !' + #13 + #13 + 
      'Favor consultar a autenticidade da nota fiscal no site do sefaz.');
    end;
  end;
end;

procedure TFrmVEN_NFE.ACTXMLSendExecute(Sender: TObject);
var
  y: Word;
begin
  { CHECK }
  ACTCheckConstraints.Execute;
  ACTCheckErrors.Execute;

  if RECParametros.SHE_PATH_LAN <> EmptyStr then
  if FileExists(RECParametros.SHE_PATH_LAN + '\' + RECParametros.NFE_PATH_XML + '\' + oStrZero(RECParametros.SHE_DATA_ANO,4) + oStrZero(RECParametros.SHE_DATA_MES,2) + '\' + SBRodape.Panels[3].Text + '-procNFe.xml') then
  oException(Nil,'Arquivo XML já existente !' + #13 +
                 'Favor entrar em contato com o administrador do sistema.');

  try
    y := 0;

    ACTXMLLoteCreate.Execute;  { Gera e Envia Lote }
    ACTXMLLoteRetorno.Execute; { Pesquisa Lote Retornado }

    { VER NOTA FISCAL EXISTE }
    if uPSQ_NFE_REG(RECParametros.EP_NO_GP,CECDNF.Text) then
    oException(Nil,'Número da nota fiscal já emitida !');

    { Consulta Protocolo }
    repeat
      inc(y);

      SBRodape.Panels[1].Text := NFeConsulta(SBRodape.Panels[3].Text);
      SBRodape.Panels[4].Text := Trim(RightStr(SBRodape.Panels[1].Text,Length(SBRodape.Panels[1].Text) - Pos('#',SBRodape.Panels[1].Text)));
      SBRodape.Panels[5].Text := LeftStr(SBRodape.Panels[1].Text,3); { CSTAT }
      SBRodape.Update;

      if Pos(SBRodape.Panels[5].Text,'100110150') > 0 then { Transmissão OK }
      Break;

      Application.ProcessMessages;
      SleepEx(1000,False);
    until y = 5;

    SBRodape.Panels[1].Text := EmptyStr;
    SBRodape.Update;

    { CONSULTA SITUAÇÃO SEFAZ
      100,150 - Autorizada
      101     - Cancelada
      110     - Denegada
    }

    if Pos(SBRodape.Panels[5].Text,'100110150') > 0 then { Transmissão OK }
    begin
      ACTMPPost.Execute ; { Salva Nota Fiscal }

      if SBRodape.Panels[5].Text <> '110' then
      ACTNFePDF.Execute; { Gerar e Imprimir Danfe }

      ACTXMLCreate.Enabled   := False;
      ACTXMLValidate.Enabled := False;
      ACTXMLSend.Enabled     := False;

      Application.ProcessMessages;
    end;

    try
      FrmNFeConsultaSefaz := TFrmNFeConsultaSefaz.Create(Nil,'Transmitindo NFe ...',SBRodape.Panels[3].Text);
      FrmNFeConsultaSefaz.EMConsulta.Lines.Add('');
      FrmNFeConsultaSefaz.EMConsulta.Lines.Add(SBRodape.Panels[3].Text);
      FrmNFeConsultaSefaz.ShowModal;
    finally
      FreeAndNil(FrmNFeConsultaSefaz);
    end;

    if (IEEnvMail.Enabled) and (IEEnvMail.Text = '1') then
    ACTEmail.Execute;
    
  finally
    Application.ProcessMessages;
  end;
end;

procedure TFrmVEN_NFE.ACTXMLImportaExecute(Sender: TObject);
var AXMLDOC: TXMLDocument;
    ANodePai,
    ANodeSec,
    ANodeEnd,
    ANodeImp,
    ANodeImposto,
    ANodeAdi,
    ANodeDI,
    ANodeTmp: IXMLNode;
    AFileName,
    AValue: String;
    i: word;
begin
  { PATH - Área de Trabalho }
  //EPrincipal.InitialDir := RECParametros.SHE_PATH_DOCUMENTS;

  if not EPrincipal.Execute then
  Abort;

  try
    { FINALIZA FORM SCREEN }
    Screen.Cursor := crHourGlass; { Cursor }

    { SQL INJECTION }
    ALockWindowUpdate := True; { Habilita }

    { CALCULO FISCAL }
    ACTNFeCalculate.Tag := 1; { Desabilita }
    ACTXMLImporta.Tag   := 1;

    SBRodape.Panels[1].Text := EmptyStr; { Processos   }
    SBRodape.Panels[2].Text := EmptyStr; { Ocorrências }
    SBRodape.Panels[3].Text := EmptyStr; { Chave       }
    SBRodape.Panels[4].Text := EmptyStr; { Protocolo   }
    SBRodape.Panels[5].Text := EmptyStr; { CSTAT       }
    SBRodape.Update;

    AValue    := EmptyStr;
    AFileName := EPrincipal.FileName;

    { CABEÇALHO }
    // Cria a variável baseada no TXMLDocument
    AXMLDOC := TXMLDocument.Create(self);

    // Le conteúdo do arquivo XML informado
    AXMLDOC.LoadFromFile(AFileName);
    AXMLDOC.Active;

    // Aqui eu peço para encontrar a primeira ocorrencia da Tag <det>>
    ANodePai := AXMLDOC.DocumentElement.ChildNodes.FindNode('NFe');
    if ANodePai <> Nil then
    begin
      ANodePai := ANodePai.ChildNodes.FindNode('infNFe');
      
      { EMITENTE }
      ANodePai := ANodePai.ChildNodes['emit'];
      ANodeEnd := ANodePai.ChildNodes['enderEmit'];

      if (TRIM(ANodePai.ChildNodes['CNPJ'].Text)) = RECParametros.CNPJ then
      begin
        { DESTINATÁRIO }
        ANodePai := ANodePai.ChildNodes['dest'];
        ANodeEnd := ANodePai.ChildNodes['enderDest'];
      end;
    end else
    begin
      ANodePai := AXMLDOC.DocumentElement.ChildNodes.FindNode('infNFe');
      ANodePai := AXMLDOC.DocumentElement.childNodes.First.ChildNodes.FindNode('emit');
      ANodeEnd := AXMLDOC.DocumentElement.childNodes.First.ChildNodes.FindNode('enderEmit');

      if (TRIM(ANodePai.ChildNodes['CNPJ'].Text)) = RECParametros.CNPJ then
      begin
        ANodePai := AXMLDOC.DocumentElement.childNodes.First.ChildNodes.FindNode('dest');
        ANodeEnd := ANodePai.ChildNodes['enderDest'];
      end;
    end;

    IEXPais.Text := Trim(ANodeEnd.ChildNodes['cPais'].Text);

    if TRIM(ANodePai.ChildNodes['CNPJ'].Text) <> '' then
    AValue := TRIM(ANodePai.ChildNodes['CNPJ'].Text) else
    AValue := TRIM(ANodePai.ChildNodes['xNome'].Text);

    { CADASTROS }
    if AValue <> EmptyStr then
    begin
      with SQLConsulta do
      begin
        { CLIENTES }
        if not oBSoNumero(AValue) then // Pesquisa Razão Social
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ID FROM CAD_CLI');
          SQL.Add('WHERE  RAZAO = ''' + AValue + '''');
        end else

        if Length(AValue) = 14 then // Pesquisa CNPJ
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ID FROM CAD_CLI');
          SQL.Add('WHERE  CNPJ = ''' + AValue + '''');
        end else

        if Length(AValue) = 11 then // Pesquisa CPF
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ID FROM CAD_CLI');
          SQL.Add('WHERE  CPF = ''' + AValue + '''');
        end else

        Prepare;
        ExecQuery;

        if not Eof then
        begin
          LAIDCD.Tag     := 0;
          LAIDCD.Caption := 'Cliente';
        end else
        begin
          { FORNECEDORES }
          if not oBSoNumero(AValue) then // Pesquisa Razão Social
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM CAD_FOR');
            SQL.Add('WHERE  RAZAO = ''' + AValue + '''');
          end;

          if Length(AValue) = 14 then // Pesquisa CNPJ
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM CAD_FOR');
            SQL.Add('WHERE  CNPJ = ''' + AValue + '''');
          end else

          if Length(AValue) = 11 then // Pesquisa CPF
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM CAD_FOR');
            SQL.Add('WHERE  CPF = ''' + AValue + '''');
          end;

          Prepare;
          ExecQuery;

          if not Eof then
          begin
            LAIDCD.Tag     := 1;
            LAIDCD.Caption := 'Fornecedor';
          end;
        end;

        if Eof then
        AValue := EmptyStr else
        AValue := Current.Vars[0].AsString;

        { PESQUISA CADASTRO }
        if AValue <> EmptyStr then
        begin
          CEIDCD.Value    := Current.ByName('ID').AsInteger;
          CEIDCD.Modified := True;
          CEIDCD.ValidateEdit;
        end;
      end;
    end;

    // Aqui eu peço para encontrar a primeira ocorrencia da Tag <det>>
    ANodePai := AXMLDOC.DocumentElement.childNodes.First.ChildNodes.FindNode('ide');
    if ANodePai = nil then
    begin
      ANodePai := AXMLDOC.DocumentElement.ChildNodes.FindNode('NFe');
      ANodePai := ANodePai.ChildNodes.FindNode('infNFe');
      ANodePai := ANodePai.ChildNodes['ide'];
    end;

    ANodeSec := ANodePai;      // Esse nó vai ser usado no LOOP
    ANodeSec.ChildNodes.First; // Posiciona o primeiro elemento encontrado

    { CABEÇALHO }
    FIS_NFE_ADM.Append;
    FIS_NFE_ADMCD_ID.Value         := SQLConsulta.Current.Vars[0].AsInteger;
    FIS_NFE_ADMNFE_CUF.Value       := trim(ANodeSec.ChildNodes['cUF'].Text);
    FIS_NFE_ADMNFE_CDNF.AsString   := trim(ANodeSec.ChildNodes['nNF'].Text);
    FIS_NFE_ADMNFE_NATOP.Value     := trim(ANodeSec.ChildNodes['natOp'].Text);
    FIS_NFE_ADMNFE_INDPAG.AsString := trim(ANodeSec.ChildNodes['indPag'].Text);
    FIS_NFE_ADMNFE_MOD.AsString    := trim(ANodeSec.ChildNodes['mod'].Text);
    FIS_NFE_ADMNFE_SERIE.AsString  := trim(ANodeSec.ChildNodes['serie'].Text);

    SBRodape.Hint := copy(ANodeSec.ChildNodes['dEmi'].Text ,9,2)+'/'+copy(ANodeSec.ChildNodes['dEmi'].Text, 6,2)+'/'+copy(ANodeSec.ChildNodes['dEmi'].Text,1,4);
    if Length(SBRodape.Hint) < 8 then
    SBRodape.Hint := copy(ANodeSec.ChildNodes['dhEmi'].Text,9,2)+'/'+copy(ANodeSec.ChildNodes['dhEmi'].Text,6,2)+'/'+copy(ANodeSec.ChildNodes['dhEmi'].Text,1,4);

    FIS_NFE_ADMNFE_DHEMI.Value    := strtodate(SBRodape.Hint);
    FIS_NFE_ADMNFE_DHSAIENT.Value := FIS_NFE_ADMNFE_DHEMI.AsDateTime;

    if trim(ANodeSec.ChildNodes['dSaiEnt'].Text) <> '' then
    FIS_NFE_ADMNFE_DHSAIENT.Value  := strtodate(copy(ANodeSec.ChildNodes['dSaiEnt'].Text,9,2)+'/'+copy(ANodeSec.ChildNodes['dSaiEnt'].Text,6,2)+'/'+copy(ANodeSec.ChildNodes['dSaiEnt'].Text,1,4));

    FIS_NFE_ADMNFE_TPNF.AsString   := trim(ANodeSec.ChildNodes['tpNF'].Text);
    FIS_NFE_ADMNFE_cMunFG.AsString := trim(ANodeSec.ChildNodes['cMunFG'].Text);
    FIS_NFE_ADMNFE_TPIMP.AsString  := trim(ANodeSec.ChildNodes['tpImp'].Text);
    FIS_NFE_ADMNFE_TPEMIS.AsString := trim(ANodeSec.ChildNodes['tpEmis'].Text);
    FIS_NFE_ADMNFE_FINNFE.AsString := trim(ANodeSec.ChildNodes['finNFe'].Text);

    FIS_NFE_ADMNFE_VERPROC.Value   := trim(ANodeSec.ChildNodes['procEmi'].Text);
    if (FIS_NFE_ADMNFE_VERPROC.AsString = '')  or (FIS_NFE_ADMNFE_VERPROC.AsString = '0') then
    FIS_NFE_ADMNFE_VERPROC.Value := '4.10';
    FIS_NFE_ADM.Post;

    { DETALHES }
    ANodePai := AXMLDOC.DocumentElement.childNodes.First.ChildNodes.FindNode('emit');
    if ANodePai = nil then
    begin
      ANodePai := AXMLDOC.DocumentElement.ChildNodes.FindNode('NFe');
      ANodePai := ANodePai.ChildNodes.FindNode('infNFe');
      ANodePai := ANodePai.ChildNodes['emit'];
    end;

    if SQLConsulta.Eof then
    oErro(Application.Handle,'Destinatário não Encontrado !') else    //CADASTRA_FAVORECIDO(ANodeSec,ANodeEnd);
    begin
      CEIDCD.Value    := SQLConsulta.Current.Vars[0].AsInteger;
      CEIDCD.Modified := True;
      CEIDCD.ValidateEdit;
    end;

    { DETALHES }
    ANodePai := AXMLDOC.DocumentElement.childNodes.First.ChildNodes.FindNode('det');
    if ANodePai = nil then
    begin
      ANodePai := AXMLDOC.DocumentElement.ChildNodes.FindNode('NFe');
      ANodePai := ANodePai.ChildNodes.FindNode('infNFe');
      ANodePai := ANodePai.ChildNodes['det'];
    end;

    // Esse nó vai ser usado no LOOP
    ANodeSec := ANodePai;
    // Posiciona o primeiro elemento encontrado
    ANodeSec.ChildNodes.First;
    ANodeTmp := ANodeSec.ChildNodes['prod'];

    if ANodeTmp.ChildNodes['cProd'].text <> '' then
    begin
      { NATUREZA DE OPERAÇÃO }
      ACTPSQ_TAB_CFOP.Caption     := 'NFE_CFOP';  { Field }
      ACTPSQ_TAB_CFOP.HelpKeyWord := Trim(ANodeTmp.ChildNodes['CFOP'].Text); { Value }
      ACTPSQ_TAB_CFOP.Execute;

      PECFOP.Text := TAB_CFOPCFOP.AsString;
      PECFOP_NO.Text := TAB_CFOPCFOP_NO.AsString;
      IECFOP_TPNF.Text := TAB_CFOPCFOP_TPNF.AsString;
      EDCFOP_TPNF_NO.Text := TAB_CFOPCFOP_TPFN_NO.AsString;
      EDFINALIDADE_ABREV.Text := TAB_CFOPFINALIDADE_ABREV.AsString;
    end;
    
    repeat
      // referencia a tag <prod> dentro de <det>
      ANodeTmp  := ANodeSec.ChildNodes['prod'];
      // da pra ver que é um XML resumido da NFe (so temos uma tag <prod> para cada <det> então não precisaria da linha abaixo
      // agora se tivéssemos mais de uma seria o caso de posicionar também na primeira ocorrencia.
      ANodeTmp.ChildNodes.First;
      repeat
        if ANodeTmp.ChildNodes['cProd'].text <> '' then
        begin
          Edicao.Append;
          EdicaoID.Value            := 0;
          EdicaoNFE_CFOP.Value      := Trim(ANodeTmp.ChildNodes['CFOP'].Text);
          EdicaoNFE_INDTOT.AsString := Trim(ANodeTmp.ChildNodes['indTot'].Text);

          if Pos(PECFOP.Text,Trim(ANodeTmp.ChildNodes['cProd'].Text)) > 0 then
          EdicaoNFE_CPROD.Value   := CECDNF.Text + '_' + oStrZero(EdicaoNFE_NITEMPED.AsInteger,3) else
          EdicaoNFE_CPROD.Value   := Trim(ANodeTmp.ChildNodes['cProd'].Text) + '-' + IntToStr(EdicaoNFE_NITEMPED.AsInteger);
          EdicaoNFE_CEAN.Value    := Trim(ANodeTmp.ChildNodes['cEAN'].Text);
          EdicaoNFE_XPROD.Value   := Trim(ANodeTmp.ChildNodes['xProd'].Text);
          EdicaoNFE_NCM.Value     := Trim(ANodeTmp.ChildNodes['NCM'].Text);

          EdicaoNFE_UCOM.Value    := Trim(ANodeTmp.ChildNodes['uCom'].Text);
          EdicaoNFE_QCOM.Value    := oTextToValor(Trim(ANodeTmp.ChildNodes['qCom'].Text));

          EdicaoNFE_UTRIB.Value   := Trim(ANodeTmp.ChildNodes['uTrib'].Text);
          EdicaoNFE_QTRIB.Value   := oTextToValor(Trim(ANodeTmp.ChildNodes['qTrib'].Text));

          EdicaoNFE_VPROD.Value   := oTextToValor(Trim(ANodeTmp.ChildNodes['vProd'].Text));
          EdicaoNFE_VUNCOM.Value  := EdicaoNFE_VPROD.Value / EdicaoNFE_QCOM.Value;
          EdicaoNFE_VUNPAD.Value  := oTextToValor(Trim(ANodeTmp.ChildNodes['vUnCom'].Text));

          if EdicaoNFE_QTRIB.AsFloat > 0 then
          EdicaoNFE_VUNTRIB.Value := EdicaoNFE_VPROD.Value / EdicaoNFE_QCOM.Value;

          EdicaoNFE_VDESC.Value   := oTextToValor(Trim(ANodeTmp.ChildNodes['vDesc'].Text));
          EdicaoNFE_VFRETE.Value  := oTextToValor(Trim(ANodeTmp.ChildNodes['vFrete'].Text));
          EdicaoNFE_VSEG.Value    := oTextToValor(Trim(ANodeTmp.ChildNodes['vSeg'].Text));
          EdicaoNFE_VOUTRO.Value  := oTextToValor(Trim(ANodeTmp.ChildNodes['vOutro'].Text));

          EdicaoNFE_XPED.Value    := Trim(ANodeTmp.ChildNodes['xPed'].Text);
          EdicaoNFE_NFCI.Value    := Trim(ANodeTmp.ChildNodes['nFCI'].Text);

          if  Trim(ANodeTmp.ChildNodes['nItemPed'].Text) <> '' then
          EdicaoNFE_NITEMPED.Value   := StrToInt(Trim(ANodeTmp.ChildNodes['nItemPed'].Text));

          with SQLConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT REFERENCIA FROM TAB_UCOM');
            SQL.Add('WHERE  REFERENCIA = '''+EdicaoNFE_UCOM.AsString+'''');
            ExecQuery;

            if Eof then
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT REFERENCIA FROM TAB_UCOM');
              SQL.Add('WHERE  DESCRICAO LIKE '''+LeftStr(EdicaoNFE_UCOM.AsString,5)+'%''');
              ExecQuery;

              EdicaoNFE_UCOM.Value := Fields[0].AsString;
            end;

            Close;
            SQL.Clear;
            SQL.Add('SELECT REFERENCIA FROM TAB_UCOM');
            SQL.Add('WHERE  REFERENCIA = '''+EdicaoNFE_UTRIB.AsString+'''');
            ExecQuery;

            if Eof then
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT REFERENCIA FROM TAB_UCOM');
              SQL.Add('WHERE  DESCRICAO LIKE '''+EdicaoNFE_UTRIB.AsString+'%''');
              ExecQuery;
              EdicaoNFE_UTRIB.Value := Fields[0].AsString;
            end;
          end;

          // Lendo o nó da DI
          ANodeDI := ANodeTmp.ChildNodes['DI'];
          ANodeDI.ChildNodes.First;

          if Trim(ANodeDI.ChildNodes['nDI'].Text) <> '' then
          begin
            if Pos(',',EdicaoNFE_XPROD.AsString) > 0 then
            EdicaoNFE_XPROD.Value        := Trim(LeftStr(EdicaoNFE_XPROD.AsString,Pos(',',EdicaoNFE_XPROD.AsString) - 1));
            EdicaoNFE_NDI.Value          := Trim(ANodeDI.ChildNodes['nDI'].Text);
            EdicaoNFE_DDI.Value          := strtodate(copy(ANodeDI.ChildNodes['dDI'].Text,9,2)+'/'+copy(ANodeDI.ChildNodes['dDI'].Text,6,2)+'/'+copy(ANodeDI.ChildNodes['dDI'].Text,1,4));
            EdicaoNFE_XLOCDESEMB.Value   := Trim(ANodeDI.ChildNodes['xLocDesemb'].Text);
            EdicaoNFE_UFDESEMB.Value     := Trim(ANodeDI.ChildNodes['UFDesemb'].Text);

            EdicaoNFE_DDESEMB.Value      := IFThen(Length( Trim(ANodeDI.ChildNodes['dDesemb'].Text)) <= 6,RECParametros.SHE_DATA,
                                            strtodate(copy(Trim(ANodeDI.ChildNodes['dDesemb'].Text),9,2) + '/' +
                                                      copy(Trim(ANodeDI.ChildNodes['dDesemb'].Text),6,2) + '/' +
                                                      copy(Trim(ANodeDI.ChildNodes['dDesemb'].Text),1,4)));

            EdicaoNFE_CEXPORTADOR.Value  := Trim(ANodeDI.ChildNodes['cExportador'].Text);

            if Trim(ANodeDI.ChildNodes['tpViaTransp'].Text) <> '' then
            EdicaoNFE_TPVIATRANSP.Value  := Trim(ANodeDI.ChildNodes['tpViaTransp'].Text);

            if Trim(ANodeDI.ChildNodes['vAFRMM'].Text) <> '' then
            EdicaoNFE_VAFRMM.Value       := oTextToValor(Trim(ANodeDI.ChildNodes['vAFRMM'].Text));

            if Trim(ANodeDI.ChildNodes['tpIntermedio'].Text) <> '' then
            EdicaoNFE_TPINTERMEDIO.Value := Trim(ANodeDI.ChildNodes['tpIntermedio'].Text);
            EdicaoNFE_CNPJTERCEIRO.Value := Trim(ANodeDI.ChildNodes['CNPJ'].Text);
            EdicaoNFE_UFTERCEIRO.Value   := Trim(ANodeDI.ChildNodes['UFTerceiro'].Text);

            // Lendo o nó da Adicao
            ANodeADI := ANodeDI.ChildNodes['adi'];
            ANodeADI.ChildNodes.First;

            for i := 1 to length(Trim(ANodeADI.ChildNodes['nAdicao'].Text)) do
                if copy(Trim(ANodeADI.ChildNodes['nAdicao'].Text),i,1) <> '|' then
                EdicaoNFE_NADICAO.AsString := EdicaoNFE_NADICAO.AsString + copy(Trim(ANodeADI.ChildNodes['nAdicao'].Text),i,1);

            for i := 1 to length(Trim(ANodeADI.ChildNodes['nSeqAdic'].Text)) do
                if copy(Trim(ANodeADI.ChildNodes['nSeqAdic'].Text),i,1) <> '|' then
                EdicaoNFE_NSEQADIC.AsString := EdicaoNFE_NSEQADIC.AsString + copy(Trim(ANodeADI.ChildNodes['nSeqAdic'].Text),i,1);

            for i := 1 to length(Trim(ANodeADI.ChildNodes['cFabricante'].Text)) do
                if copy(Trim(ANodeADI.ChildNodes['cFabricante'].Text),i,1) <> '|' then
                EdicaoNFE_CFABRICANTE.Value := EdicaoNFE_CFABRICANTE.AsString + copy(Trim(ANodeADI.ChildNodes['cFabricante'].Text),i,1);
          end;

          ANodeTmp  := ANodeSec.ChildNodes['imposto'];
          ANodeTmp.ChildNodes.First;

          ANodeImp := ANodeTmp.ChildNodes['ICMS'];
          ANodeImp.ChildNodes.First;

          if ANodeImp.ChildNodes[0].NodeName = 'ICMSST' then
          begin
            // Lendo o nó dos ICMS
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSST'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
          end;

          if ANodeImp.ChildNodes[0].NodeName = 'ICMS00' then
          begin
            // Lendo o nó dos ICMS
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS00'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString   := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_CST.AsString    := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_MODBC.AsString  := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            EdicaoNFE_PREDBC.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pRedBC'].Text));

            EdicaoNFE_VBC.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
            EdicaoNFE_VICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
            EdicaoNFE_VNF.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
          end;

          if ANodeImp.ChildNodes[0].NodeName = 'ICMS10' then
          begin
            // Lendo o nó dos ICMS
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS10'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);
            EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
            EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
            EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
          end;

          if ANodeImp.ChildNodes[0].NodeName = 'ICMS20' then
          begin
            // Lendo o nó dos ICMS
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS20'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString   := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_CST.AsString    := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_MODBC.AsString  := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);
            EdicaoNFE_PREDBC.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pRedBC'].Text));
            EdicaoNFE_VBC.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
            EdicaoNFE_VICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
            EdicaoNFE_VNF.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
          end;

          if ANodeImp.ChildNodes[0].NodeName = 'ICMS40' then
          begin
            // Lendo o nó dos ICMS
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS40'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString   := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_CST.AsString    := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_MODBC.AsString  := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);
            EdicaoNFE_PREDBC.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pRedBC'].Text));
            EdicaoNFE_VBC.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
            EdicaoNFE_VICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
            EdicaoNFE_VNF.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
          end;

          if ANodeImp.ChildNodes[0].NodeName = 'ICMS60' then
          begin
            // Lendo o nó dos ICMS
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS60'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString   := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_CST.AsString    := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_MODBC.AsString  := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);
            EdicaoNFE_PREDBC.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pRedBC'].Text));
            EdicaoNFE_VBC.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
            EdicaoNFE_VICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
            EdicaoNFE_VNF.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
          end;

          if ANodeImp.ChildNodes[0].NodeName = 'ICMS70' then
          begin
            // Lendo o nó dos ICMS
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS70'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString   := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_CST.AsString    := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_MODBC.AsString  := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);
            EdicaoNFE_PREDBC.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pRedBC'].Text));
            EdicaoNFE_VBC.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
            EdicaoNFE_VICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
            EdicaoNFE_VNF.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
          end;

          if ANodeImp.ChildNodes[0].NodeName = 'ICMS90' then
          begin
            // Lendo o nó dos ICMS
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS90'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString   := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_CST.AsString    := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_MODBC.AsString  := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);
            EdicaoNFE_PREDBC.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pRedBC'].Text));
            EdicaoNFE_VBC.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
            EdicaoNFE_VICMS.Value  := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
            EdicaoNFE_VNF.Value    := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
          end;


          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS101') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN101') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS101') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS101'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN101'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            if Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) <> '' then
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) else
            begin
              EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
              EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
              EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
              EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
              EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            end;
          end;

          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS102') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN102') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS102') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS102'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN102'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            if Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) <> '' then
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) else
            begin
              EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
              EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
              EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
              EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
              EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            end;
          end;

          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS103') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN103') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS103') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS103'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN103'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            if Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) <> '' then
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) else
            begin
              EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
              EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
              EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
              EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
              EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            end;
          end;

          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS201') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN201') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS201') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS201'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN201'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            if Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) <> '' then
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) else
            begin
              EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
              EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
              EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
              EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
              EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            end;
          end;

          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS202') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN202') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS202') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS202'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN202'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            if Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) <> '' then
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) else
            begin
              EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
              EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
              EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
              EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
              EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            end;
          end;

          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS203') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN203') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS203') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS203'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN203'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            if Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) <> '' then
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) else
            begin
              EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
              EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
              EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
              EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
              EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            end;
          end;

          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS300') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN300') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS300') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS300'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN300'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            if Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) <> '' then
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) else
            begin
              EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
              EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
              EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
              EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
              EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            end;
          end;

          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS400') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN400') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS400') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS400'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN400'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            if Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) <> '' then
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) else
            begin
              EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
              EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
              EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
              EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
              EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            end;
          end;

          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS500') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN500') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS500') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS500'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN500'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            if Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) <> '' then
            EdicaoNFE_CST.AsString  := Trim(ANodeImpOSTO.ChildNodes['CSOSN'].Text) else
            begin
              EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
              EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
              EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
              EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
              EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            end;
          end;

          if (ANodeImp.ChildNodes[0].NodeName = 'ICMS900') or (ANodeImp.ChildNodes[0].NodeName = 'ICMSSN900') then
          begin
            // Lendo o nó dos ICMS
            if (ANodeImp.ChildNodes[0].NodeName = 'ICMS900') then
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMS900'] else
            ANodeImpOSTO := ANodeImp.ChildNodes['ICMSSN900'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_ORIG.AsString  := Trim(ANodeImpOSTO.ChildNodes['orig'].Text);
            EdicaoNFE_MODBC.AsString := Trim(ANodeImpOSTO.ChildNodes['modBC'].Text);

            EdicaoNFE_CST.AsString   := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_VBC.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pICMS'].Text));
            EdicaoNFE_VICMS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vICMS'].Text));
            EdicaoNFE_VNF.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
          end;

          // Lendo o nó dos IPI
          ANodeImp := ANodeTmp.ChildNodes['IPI'];
          ANodeImp.ChildNodes.First;

          if Trim(ANodeImp.ChildNodes['cEnq'].Text) <> '' then
          begin
            EdicaoNFE_CENQ.Value := Trim(ANodeImp.ChildNodes['cEnq'].Text);

            ANodeImpOSTO := ANodeImp.ChildNodes['IPITrib'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_CSTIPI.Value := ANodeImpOSTO.ChildNodes['CST'].Text;
            EdicaoNFE_CSTIPI.Value := Trim(EdicaoNFE_CSTIPI.AsString);

            EdicaoNFE_VBCIPI.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PIPI.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pIPI'].Text));
            EdicaoNFE_VIPI.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vIPI'].Text));

            if (EdicaoNFE_CSTIPI.AsString = EmptyStr) and (EdicaoNFE_VBCIPI.AsFloat > 0) then
            begin
              showmessage('ipi');
            EdicaoNFE_CSTIPI.Value := '99';
            end;

           { if (EdicaoNFE_VIPI.AsFloat = 0) or (EdicaoNFE_PIPI.AsFloat = 0) then
            begin
              ANodeImpOSTO := ANodeImp.ChildNodes['IPINT'];
              ANodeImpOSTO.ChildNodes.First;

              if Trim(ANodeImpOSTO.ChildNodes['CST'].Text) <> '' then
              EdicaoNFE_CSTIPI.Value := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            end; }
          end;

          // Lendo o nó II
          ANodeImp := ANodeTmp.ChildNodes['II'];
          ANodeImp.ChildNodes.First;

          if ANodeImp.ChildNodes['vBC'].text <> '' then
          begin
            EdicaoNFE_VBCIMP.Value   := oTextToValor(Trim(ANodeImp.ChildNodes['vBC'].Text));
            EdicaoNFE_VDESPADU.Value := oTextToValor(Trim(ANodeImp.ChildNodes['vDespAdu'].Text));
            EdicaoNFE_VII.Value      := oTextToValor(Trim(ANodeImp.ChildNodes['vII'].Text));
            EdicaoNFE_VIOF.Value     := oTextToValor(Trim(ANodeImp.ChildNodes['vIOF'].Text));
          end;

          // Lendo o nó dos PIS
          ANodeImp := ANodeTmp.ChildNodes['PIS'];
          ANodeImp.ChildNodes.First;

          if ANodeImp.ChildNodes[0].NodeName = 'PISOutr' then
          begin
            ANodeImpOSTO := ANodeImp.ChildNodes['PISOutr'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_CSTPIS.Value := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_VBCPIS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PPIS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pPIS'].Text));
            EdicaoNFE_VPIS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vPIS'].Text));
          end else
          if ANodeImp.ChildNodes[0].NodeName = 'PISAliq' then
          begin
            ANodeImpOSTO := ANodeImp.ChildNodes['PISAliq'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_CSTPIS.Value := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_VBCPIS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PPIS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pPIS'].Text));
            EdicaoNFE_VPIS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vPIS'].Text));
          end else
          if ANodeImp.ChildNodes[0].NodeName = 'PISNT' then
          begin
            ANodeImpOSTO := ANodeImp.ChildNodes['PISNT'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_CSTPIS.Value := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_VBCPIS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PPIS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pPIS'].Text));
            EdicaoNFE_VPIS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vPIS'].Text));
          end;

          // Lendo o nó dos COFINS
          ANodeImp := ANodeTmp.ChildNodes['COFINS'];
          ANodeImp.ChildNodes.First;

          if ANodeImp.ChildNodes[0].NodeName = 'COFINSOutr' then
          begin
            ANodeImpOSTO := ANodeImp.ChildNodes['COFINSOutr'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_CSTCOFINS.Value := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_VBCCOFINS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PCOFINS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pCOFINS'].Text));
            EdicaoNFE_VCOFINS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vCOFINS'].Text));
          end else
          if ANodeImp.ChildNodes[0].NodeName = 'COFINSAliq' then
          begin
            ANodeImpOSTO := ANodeImp.ChildNodes['COFINSAliq'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_CSTCOFINS.Value := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_VBCCOFINS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PCOFINS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pCOFINS'].Text));
            EdicaoNFE_VCOFINS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vCOFINS'].Text));
          end else
          if ANodeImp.ChildNodes[0].NodeName = 'COFINSNT' then
          begin
            ANodeImpOSTO := ANodeImp.ChildNodes['COFINSNT'];
            ANodeImpOSTO.ChildNodes.First;

            EdicaoNFE_CSTCOFINS.Value := Trim(ANodeImpOSTO.ChildNodes['CST'].Text);
            EdicaoNFE_VBCCOFINS.Value := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vBC'].Text));
            EdicaoNFE_PCOFINS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['pCOFINS'].Text));
            EdicaoNFE_VCOFINS.Value   := oTextToValor(Trim(ANodeImpOSTO.ChildNodes['vCOFINS'].Text));
          end;

        {  // novo (Reforma)
          NodeIBSCBS := FindChildLocal(ANodeTmp,'IBSCBS');
          if NodeIBSCBS <> nil then
          begin
            // CST := ChildText(NodeIBSCBS, 'CST');
            // cClassTrib := ChildText(NodeIBSCBS, 'cClassTrib');
            Exit;
          end;

          // legado (se ainda vier COFINS)
          NodeCOFINS := FindChildLocal(Imposto, 'COFINS');
          if NodeCOFINS <> nil then
          begin
            NodeAliq := FindChildLocal(NodeCOFINS, 'COFINSAliq');
            if NodeAliq <> nil then
            begin
              vBC := ChildText(NodeAliq, 'vBC');
              p   := ChildText(NodeAliq, 'pCOFINS');
              v   := ChildText(NodeAliq, 'vCOFINS');

              // aqui você decide: salvar em campos “CBS” internos, etc.
              // Ex: FCBS_Base := vBC; FCBS_Aliq := p; FCBS_Valor := v;
            end;
          end;  }

          if ANodeSec.ChildNodes['infAdProd'].text <> '' then
          EdicaoNFE_INFADCAD.Value := Trim(ANodeSec.ChildNodes['infAdProd'].text);

          if copy(EdicaoNFE_CFOP.AsString,1,1) = '3' then
          begin
            EdicaoCDEV.Value := 9;

            if RECParametros.NFE_CRT = 1 then
            EdicaoNFE_CST.AsString := '900';

            if EdicaoNFE_CSTIPI.AsString = '' then
            EdicaoNFE_CSTIPI.Value := '49';
          end;

          if EdicaoNFE_VNF.AsFloat = 0 then
          EdicaoNFE_VNF.Value  := EdicaoNFE_VPROD.AsFloat;

          { IBS/CBS PARA XML DE IMPORTAÇÃO }
          if EdicaoNFE_CFOP.AsString = '3102' then
          begin
            EdicaoNFE_IBSCBS_CSTIS.Value        := '000';
            EdicaoNFE_IBSCBS_CCLASSTRIBIS.Value := '000001';
           
            EdicaoNFE_IBSCBS_VBCIBSCBS.Value    :=
           
            EdicaoNFE_VPROD.AsFloat      + EdicaoNFE_VSERV.AsFloat     + EdicaoNFE_VFRETE.AsFloat       + EdicaoNFE_VSEG.AsFloat  + EdicaoNFE_VOUTRO.AsFloat      + EdicaoNFE_VII.AsFloat  -
            EdicaoNFE_VDESC.AsFloat      - EdicaoNFE_VPIS.AsFloat      - EdicaoNFE_VCOFINS.AsFloat      - EdicaoNFE_VICMS.AsFloat - EdicaoNFE_VICMSUFDEST.AsFloat - EdicaoNFE_VFCP.AsFloat -
            EdicaoNFE_VFCPUFDEST.AsFloat - EdicaoNFE_VICMSMONO.AsFloat - EdicaoNFE_ISSQN_VISSQN.AsFloat +
            EdicaoNFE_IS_VIS.AsFloat;
           
            { CBS }
            EdicaoNFE_CBS_VBCCBS.Value := EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat;
            EdicaoNFE_CBS_PCBS.Value   := TAB_CFOPPCBS.AsFloat;
            EdicaoNFE_CBS_VCBS.Value   := RoundTO((EdicaoNFE_CBS_PCBS.AsFloat / 100) * EdicaoNFE_CBS_VBCCBS.AsFloat,-2);
           
            { IBS }
            EdicaoNFE_IBSUF_VBCIBSUF.Value := EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat;
            EdicaoNFE_IBSUF_PIBSUF.Value   := TAB_CFOPPIS.AsCurrency;
            EdicaoNFE_IBSUF_VIBSUF.Value   := RoundTo((EdicaoNFE_IBSUF_PIBSUF.AsFloat / 100) * EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat,-2);
           
            EdicaoNFE_VNFTOT.Value := EdicaoNFE_VNF.AsFloat + EdicaoNFE_CBS_VCBS.AsFloat + EdicaoNFE_IBSUF_VIBSUF.AsFloat;    
          end;

          Edicao.Post;
        end;
        // vai para a proxima ocorrência <prod> (se houvesse)
        ANodeTmp := ANodeTmp.NextSibling;
      until ANodeTmp = nil;
      // vai para a proxima ocorrência <det>
      ANodeSec := ANodeSec.NextSibling;
    until ANodeSec = nil;

    { TOTAIS }
    ANodePai := AXMLDOC.DocumentElement.childNodes.First.ChildNodes.FindNode('total');
    if ANodePai = nil then
    begin
      ANodePai := AXMLDOC.DocumentElement.ChildNodes.FindNode('NFe');
      ANodePai := ANodePai.ChildNodes.FindNode('infNFe');
      ANodePai := ANodePai.ChildNodes['total'];
    end;
    ANodePai.ChildNodes.First;

    // Lendo o nó dos toais
    ANodeSec := ANodePai.ChildNodes['ICMSTot'];
    ANodeSec.ChildNodes.First;

    SPSEdicao.StoredProcName := 'SP_EDI_FIS_NFE_SUM';
    SPSEdicao.Prepare;

    SPSEdicao.ParamByName('AIDEV').Value           := REC_SHE_DEF.IDEV;
    SPSEdicao.ParamByName('ANFE_VBC').Value        := oTextToValor(Trim(ANodeSec.ChildNodes['vBC'].Text));
    SPSEdicao.ParamByName('ANFE_VICMS').Value      := oTextToValor(Trim(ANodeSec.ChildNodes['vICMS'].Text));
    SPSEdicao.ParamByName('ANFE_VICMSDESON').Value := oTextToValor(Trim(ANodeSec.ChildNodes['vICMSDeson'].Text));
    SPSEdicao.ParamByName('ANFE_VBCST').Value      := oTextToValor(Trim(ANodeSec.ChildNodes['vBCST'].Text));
    SPSEdicao.ParamByName('ANFE_VST').Value        := oTextToValor(Trim(ANodeSec.ChildNodes['vST'].Text));
    SPSEdicao.ParamByName('ANFE_VPROD').Value      := oTextToValor(Trim(ANodeSec.ChildNodes['vProd'].Text));
    SPSEdicao.ParamByName('ANFE_VFRETE').Value     := oTextToValor(Trim(ANodeSec.ChildNodes['vFrete'].Text));
    SPSEdicao.ParamByName('ANFE_VSEG').Value       := oTextToValor(Trim(ANodeSec.ChildNodes['vSeg'].Text));
    SPSEdicao.ParamByName('ANFE_VDESC').Value      := oTextToValor(Trim(ANodeSec.ChildNodes['vDesc'].Text));
    SPSEdicao.ParamByName('ANFE_VII').Value        := oTextToValor(Trim(ANodeSec.ChildNodes['vII'].Text));
    SPSEdicao.ParamByName('ANFE_VIPI').Value       := oTextToValor(Trim(ANodeSec.ChildNodes['vIPI'].Text));
    SPSEdicao.ParamByName('ANFE_VPIS').Value       := oTextToValor(Trim(ANodeSec.ChildNodes['vPIS'].Text));
    SPSEdicao.ParamByName('ANFE_VCOFINS').Value    := oTextToValor(Trim(ANodeSec.ChildNodes['vCOFINS'].Text));
    SPSEdicao.ParamByName('ANFE_VOUTRO').Value     := oTextToValor(Trim(ANodeSec.ChildNodes['vOutro'].Text));
    SPSEdicao.ParamByName('ANFE_VNF').Value        := oTextToValor(Trim(ANodeSec.ChildNodes['vNF'].Text));
    SPSEdicao.ParamByName('ANFE_VTOTTRIB').Value   := oTextToValor(Trim(ANodeSec.ChildNodes['vTotTrib'].Text));

    // Lendo o nó dos IBS/CBS
    ANodeSec := ANodePai.ChildNodes['IBSCBSTot'];
    ANodeSec.ChildNodes.First;

    SPSEdicao.ParamByName('ANFE_VNFTOT').Value := oTextToValor(Trim(ANodeSec.ChildNodes['vNFTot'].Text));

    SPSEdicao.ExecProc;
    SPSEdicao.UnPrepare;

    { TRANSPORTADORA }
    // Aqui eu peço para encontrar a primeira ocorrencia da Tag <det>>
    ANodePai := AXMLDOC.DocumentElement.childNodes.First.ChildNodes.FindNode('transp');
    if ANodePai = nil then
    begin
      ANodePai := AXMLDOC.DocumentElement.ChildNodes.FindNode('NFe');
      ANodePai := ANodePai.ChildNodes.FindNode('infNFe');
      ANodePai := ANodePai.ChildNodes['transp'];
    end;
    // Esse nó vai ser usado no LOOP
    ANodeSec := ANodePai;
    // Posiciona o primeiro elemento encontrado
    ANodeSec.ChildNodes.First;

    ANodeTmp  := ANodeSec.ChildNodes['transporta'];
    ANodeTmp.ChildNodes.First;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CAD_TRA');

      if Trim(copy(Trim(ANodeTmp.ChildNodes['xNome'].Text),1,10)) <> '' then
      SQL.Add('WHERE TRA_FANT LIKE ''%'+UPPERCASE(Trim(copy(Trim(ANodeTmp.ChildNodes['xNome'].Text),1,10)))+'%''') else
      SQL.Add('WHERE ID = 1');
      ExecQuery;

      if Eof then
      begin
        SQL.Clear;
        SQL.Add('SELECT * FROM CAD_TRA');
        SQL.Add('WHERE  TRA_RAZA LIKE ''%'+UPPERCASE(Trim(copy(Trim(ANodeTmp.ChildNodes['xNome'].Text),1,10)))+'%''');
        ExecQuery;
      end;

      if not Eof then
      begin
        { TRANSPORTADORA }
        ACTPSQ_CAD_TRA.Caption     := 'CT_ID'; { Field }
        ACTPSQ_CAD_TRA.HelpKeyWord := Current.ByName('CT_ID').AsString; { Value }
        ACTPSQ_CAD_TRA.Execute;
      end else
      begin
        CEIDCT.Value     := 2; { Cliente Retira }
        PEDECT.Text      := UPPERCASE(Trim(copy(Trim(ANodeTmp.ChildNodes['xNome'].Text),1,60)));
        EDTFantasia.Text := UPPERCASE(Trim(copy(Trim(ANodeTmp.ChildNodes['xNome'].Text),1,60)));

        EdTxNome.Text    := UPPERCASE(Trim(copy(Trim(ANodeTmp.ChildNodes['xNome'].Text),1,60)));
        EdTCNPJ.Text     := UPPERCASE(Trim(ANodeTmp.ChildNodes['CNPJ'].Text));
        PETIE.Text       := UPPERCASE(Trim(ANodeTmp.ChildNodes['IE'].Text));
        PETTxLgr.Text    := '.';
        EdTxLgr.Text     := UPPERCASE(Trim(ANodeTmp.ChildNodes['xEnder'].Text));
        EdTCep.Text      := '';
        EdTNRO.Text      := '';
        EdTxCpl.Text     := '';
        EdTxBairro.Text  := '';
        EdTxMun.Text     := UPPERCASE(Trim(ANodeTmp.ChildNodes['xMun'].Text));
        PETUF.Text       := UPPERCASE(Trim(ANodeTmp.ChildNodes['UF'].Text));
        EDTDDD.Text      := '';
        EDTFone.Text     := '';
        EDTContato.Text  := '';
        PETEmail.Text    := '';

        if ((Length(EDTCNPJ.Text) < 14) or (Length(PETIE.Text) < 7)) then
        begin
          EDTCNPJ.Text := '';
          PETIE.Text   := '';
        end;

        IEModFrete.Text := Trim(ANodeSec.ChildNodes['modFrete'].Text)
      end;
    end;

    ANodeTmp := ANodeSec.ChildNodes['vol'];
    ANodeTmp.ChildNodes.First;
    repeat
      if Trim(ANodeTmp.ChildNodes['qVol'].Text)  <> EmptyStr then CEQVOL.Text  := Trim(ANodeTmp.ChildNodes['qVol'].Text);
      if Trim(ANodeTmp.ChildNodes['esp'].Text)   <> EmptyStr then PEESP.Text   := Trim(ANodeTmp.ChildNodes['esp'].Text);
      if Trim(ANodeTmp.ChildNodes['marca'].Text) <> EmptyStr then EDMARCA.Text := Trim(ANodeTmp.ChildNodes['marca'].Text);
      if Trim(ANodeTmp.ChildNodes['nVol'].Text)  <> EmptyStr then CENVOL.Text  := Trim(ANodeTmp.ChildNodes['nVol'].Text);

      if (Trim(ANodeTmp.ChildNodes['pesoB'].Text) <> EmptyStr) and (Trim(ANodeTmp.ChildNodes['pesoL'].Text) <> EmptyStr) then
      begin
        CEPSBR.Text := oStrTran(Trim(ANodeTmp.ChildNodes['pesoB'].Text),'.',',');
        CEPSLQ.Text := oStrTran(Trim(ANodeTmp.ChildNodes['pesoL'].Text),'.',',');
      end;

      ANodeTmp := ANodeTmp.NextSibling;
    until ANodeTmp = Nil;

    { INFORMAÇÕES ADICIONAIS }
    ANodePai := AXMLDOC.DocumentElement.childNodes.First.ChildNodes.FindNode('infAdic');
    if ANodePai = Nil then
    begin
      ANodePai := AXMLDOC.DocumentElement.ChildNodes.FindNode('NFe');
      if ANodePai <> Nil then
      ANodePai := ANodePai.ChildNodes.FindNode('infNFe');
      if ANodePai <> Nil then
      ANodePai := ANodePai.ChildNodes['infAdic'];
    end;

    if ANodePai <> nil then
    begin
      AINFADTRIB.BeginUpdate;
      AINFADTRIB.Clear;
      AINFADTRIB.Add(StringReplace(Trim(ANodePai.ChildNodes['infCpl'].Text),'|','',[rfReplaceAll]));
      AINFADTRIB.EndUpdate;

      if (AINFADTRIB.Text <> EmptyStr) and (LeftStr(PECFOP.Text,1) = '3') then
      begin
        EDInfAdNF.Text := AINFADTRIB.Text;
        EDInfAdNF.Tag  := 1;
      end;
    end;

    if IEUF.Text = 'EX' then
    BECMun.Text := '9999999';
  finally
    Screen.Cursor := crHourGlass; { Cursor }

    { SQL INJECTION }
    ALockWindowUpdate := False; { Desaabilita }

    oRefresh(Edicao);
    ACTNFeINFADCAD.Execute;
  end;
end;

procedure TFrmVEN_NFE.ACTNFePDFExecute(Sender: TObject);
var
  i: word;
begin
  try
    EDPDF.Text := EmptyStr;
    EDPDF.Update;

    EDXML.Text := EmptyStr;
    EDXML.Update;
    
    if (Pos(CECDNF.Text,SBRodape.Panels[3].Text) = 0) or (Length(SBRodape.Panels[3].Text) < 44) then
    oException(Nil,'Código de Barras da Nota Fiscal não Informado !');

    try
      Screen.cursor := crAppStart;
      oRegister_UPD_SizeFont(EDINFADNF.Lines.Count);

      EDPDF.Text := 'C:\Sheild\NotaFiscal\PDF\' + oStrZero(Trunc(CECDNF.Value),6) + '.pdf';
      EDPDF.Update;

      EDXML.Text := 'C:\Sheild\NotaFiscal\NFe\arquivos\procnfe\' + oStrZero(RECParametros.SHE_DATA_ANO,4) + oStrZero(RECParametros.SHE_DATA_MES,2) + '\' + SBRodape.Panels[3].Text + '-procNFe.xml';
      EDXML.Update;

      if not FileExists(EDXML.Text) then
      begin
        SBRodape.Panels[1].Text := EmptyStr;
        SBRodape.Update;

        i := 0;
        repeat
          SBRodape.Panels[0].Text := 'Aguarde, baixando arquivo xml de autorização ...';
          SBRodape.Panels[1].Text := ArquivoDistribuicaoNFe(SBRodape.Panels[3].Text);
          SBRodape.Update;

          if FileExists(EDXML.Text) then
          begin
            SBRodape.Panels[1].Text := EDXML.Text;
            SBRodape.Update;
            Break;
          end;

          Application.ProcessMessages;
          SleepEx(1000,False);

          inc(i);
        until i = 5;
      end;

      if not FileExists(EDXML.Text) then
      oErro(Application.Handle,'Arquivo xml de autorização da nota fiscal não encontrado !') else

      SBRodape.Panels[0].Text := 'Aguarde, gerando danfe ...';
      SBRodape.Update;

      i := 0;
      repeat
        if ImprimeDanfe(EDXML.Text,EDPDF.Text,2,False) then
        begin
          ACTRelatorios.Enabled := True;
          ACTVisualiza.Enabled  := True;
          ACTEmail.Enabled      := True;
        end;

        if FileExists(EDPDF.Text) then
        begin
          SBRodape.Panels[1].Text := EDPDF.Text;
          SBRodape.Update;
          Break;
        end;

        Application.ProcessMessages;
        SleepEx(1000,False);

        inc(i);
      until i = 5;

      if (FileExists(EDXML.Text)) and (RECParametros.SHE_PATH_LAN <> EmptyStr) then
      begin
        oCopyFileToDir(EDXML.TExt,PAnsiChar(RECParametros.SHE_PATH_LAN + '\' + RECParametros.NFE_PATH_XML + '\' + oStrZero(RECParametros.SHE_DATA_ANO,4) + oStrZero(RECParametros.SHE_DATA_MES,2)), True);
        SBRodape.Panels[0].Text := 'Danfe gerada com sucesso';
      end else
      SBRodape.Panels[0].Text := 'Falha ao tentar gerar danfe';

    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar gerar danfe !' + #13 + #13 +
                                 'Error Code: ' + E.Message + '.');
      end;
    end;

  finally
    Screen.cursor := crDefault;
    Application.ProcessMessages;
    SleepEx(2000,False);
  end;
end;

procedure TFrmVEN_NFE.FIS_NFE_ADMNewRecord(DataSet: TDataSet);
begin
  FIS_NFE_ADMID.Value       := 0;
  FIS_NFE_ADMEP_ID.Value    := RECParametros.EP_ID;
  FIS_NFE_ADMEP_NO.Value    := RECParametros.EP_NO;
  FIS_NFE_ADMIDEV.Value     := REC_SHE_DEF.IDEV;
  FIS_NFE_ADMNFE_CDNF.Value := Trunc(CECDNF.Value);
end;

procedure TFrmVEN_NFE.DEdhSaiEntChange(Sender: TObject);
begin
  DecodeDate(DEdhSaiEnt.Date,RECParametros.SHE_DATA_ANO, RECParametros.SHE_DATA_MES, RECParametros.SHE_DATA_DIA);
 { with REC_SHE_FIS do
  begin
    PATH_XML         := PAnsiChar(RECParametros.PATH_SHE + '\' + RECParametros.PATH_NFE_XML         + '\' + RECParametros.CNPJ + '\' + oStrZero(RECParametros.SHE_DATA_ANO,4) + oStrZero(RECParametros.SHE_DATA_MES,2));
    PATH_XML_PROCNFE := PAnsiChar(RECParametros.PATH_SHE + '\' + RECParametros.PATH_NFE_XML_PROCNFE + '\' + oStrZero(RECParametros.SHE_DATA_ANO,4) + oStrZero(RECParametros.SHE_DATA_MES,2));

    if PATH_XML_LAN <> EmptyStr then
       PATH_XML_LAN := PAnsiChar(RECParametros.PATH_SHE_LAN + '\' + RECParametros.PATH_NFE_XML + '\' + RECParametros.CNPJ + '\' + oStrZero(RECParametros.SHE_DATA_ANO,4) + oStrZero(RECParametros.SHE_DATA_MES,2));

    if not DirectoryExists(PATH_XML) then
       try
         ForceDirectories(PATH_XML);
       except
         on E: Exception do
         begin
           oAviso(Application.Handle,'Falha ao tentar criar pasta local de arquivos XML !' + #13 +
                                      PATH_XML + #13 + #13 +
                                     'Favor entrar em contado com o administrador do sistema.');
         end;
       end;

    if PATH_XML_LAN <> EmptyStr then
    if not DirectoryExists(PATH_XML_LAN) then
       try
         ForceDirectories(PATH_XML_LAN);
       except
         on E: Exception do
         begin
           oAviso(Application.Handle,'Falha ao tentar criar pasta de arquivos XML na rede !' + #13 +
                                      PATH_XML_LAN + #13 + #13 +
                                     'Favor entrar em contado com o administrador do sistema.');
         end;
       end;
  end;}
end;

procedure TFrmVEN_NFE.FIS_NFE_DUPBeforeInsert(DataSet: TDataSet);
begin
  Edicao.Fields[0].Tag := Edicao.RecNo;
end;

procedure TFrmVEN_NFE.FIS_NFE_DUPAfterInsert(DataSet: TDataSet);
begin
  DBGEdicaoNFE_CPROD.Field.FocusControl;
end;

procedure TFrmVEN_NFE.FIS_NFE_DUPNewRecord(DataSet: TDataSet);
begin
  FIS_NFE_DUPID.Value   := 0;
  FIS_NFE_DUPIDEV.Value := REC_SHE_DEF.IDEV;

  with SQLPKSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(PK.NFE_NITEMPED),0) FROM FIS_NFE_DUP AS PK');
    SQL.Add('WHERE  PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    ExecQuery;
    FIS_NFE_DUPNFE_NITEMPED.Value := Current.Vars[0].AsInteger + 1;
  end;

  FIS_NFE_DUPNFE_CDNF.Value := Trunc(CECDNF.Value);
  FIS_NFE_DUPNFE_VNF.Value  := 0;
  FIS_NFE_DUPNFE_VLIQ.Value := 0;
  FIS_NFE_DUPNFE_VDUP.Value := 0;
  FIS_NFE_DUPNFE_VDSC.Value := 0;
end;

procedure TFrmVEN_NFE.FIS_NFE_DUPBeforeEdit(DataSet: TDataSet);
begin
  FIS_NFE_DUPId.Tag := FIS_NFE_DUPId.AsInteger;
end;

procedure TFrmVEN_NFE.FIS_NFE_DUPBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(Handle,'Confirma Exclusão ?') = mrNo then
  Abort;
end;

procedure TFrmVEN_NFE.FIS_NFE_DUPAfterDelete(DataSet: TDataSet);
begin
  TSEdicao.CommitRetaining;
  FIS_NFE_DUP.Close;
  FIS_NFE_DUP.Open;
end;

procedure TFrmVEN_NFE.FIS_NFE_DUPAfterPost(DataSet: TDataSet);
var
  ABMRecord: TBookMark;
begin
  if ALockWindowUpdate then { SQL INJECTION }
  Exit;

  try
    if FIS_NFE_DUPID.AsInteger > 0 then
    ABMRecord := FIS_NFE_DUP.GetBookmark else
    ABMRecord := Nil;

    TSEdicao.CommitRetaining;
    FIS_NFE_DUP.Close;
    FIS_NFE_DUP.Open;
  finally
    if ABMRecord <> Nil then
    begin
      FIS_NFE_DUP.GotoBookmark(ABMRecord);
      FIS_NFE_DUP.FreeBookmark(ABMRecord);
    end else
    FIS_NFE_DUP.Last;

    REC_SHE_DEF.Editing := True;
  end;
end;

procedure TFrmVEN_NFE.FIS_NFE_DUPBeforeCancel(DataSet: TDataSet);
begin
  if FIS_NFE_DUP.Fields[0].Tag = 0 then
  begin
    FIS_NFE_DUP.Close;
    FIS_NFE_DUP.Open;
    FIS_NFE_DUP.Last;

    ABORT;
  end;
end;

procedure TFrmVEN_NFE.DTSFIS_NFE_DUPStateChange(Sender: TObject);
begin
  oState(FIS_NFE_DUP,SBFIS_NFE_DUP);
end;

procedure TFrmVEN_NFE.EDInfAdNFChange(Sender: TObject);
begin
  if not ALockWindowUpdate then { SQL INJECTION }
  REC_SHE_DEF.Editing := True;
end;


procedure TFrmVEN_NFE.LAIDCDClick(Sender: TObject);
begin
   if LAIDCD.Caption = 'Cliente' then
  begin
    LAIDCD.Caption := 'Fornecedor';
    LAIDCD.Tag     := 1;
  end else
  if LAIDCD.Caption = 'Fornecedor' then
  begin
    LAIDCD.Caption := 'Representante';
    LAIDCD.Tag     := 2;
  end else
  if LAIDCD.Caption = 'Representante' then
  begin
    LAIDCD.Caption := 'Transportadora';
    LAIDCD.Tag     := 3;
  end else
  if LAIDCD.Caption = 'Transportadora' then
  begin
    LAIDCD.Caption := 'Cliente';
    LAIDCD.Tag     := 0;
  end;

  CEIDCD.Hint := 'Código do ' + LAIDCD.Caption;
  EDDECD.Hint := 'Nome Fantasia do ' + LAIDCD.Caption;

  LAIDCD.Update;
  EDDECD.SetFocus;
end;

procedure TFRMVEN_NFE._DoCommitWait;
begin
  { DESTINATÁRIOS }
  ACTEDI_CAD_PAD.Execute;

  { TRANSPORTADORAS }
  SPEdicao.StoredProcName := 'SP_NFE_TRA';
  SPEdicao.Prepare;

  SPEdicao.ParamByName('nfe').Value       := oREPZero('NFE_TRA','_',RECParametros.EP_ID,3);
  SPEdicao.ParamByName('id').Value        := 0;
  SPEdicao.ParamByName('CCAB').Value      := AID;
  SPEdicao.ParamByName('CTRA').Value      := CEIDCT.Value;
  SPEdicao.ParamByName('CFRT').Value      := '';
  SPEdicao.ParamByName('MODFRETE').Value  := IEModFrete.Text;
  SPEdicao.ParamByName('RETTRANSP').Value := '';
  SPEdicao.ParamByName('VSERV').Value     := 0;
  SPEdicao.ParamByName('VBCRET').Value    := 0;
  SPEdicao.ParamByName('PICMSRET').Value  := 0;
  SPEdicao.ParamByName('VICMSRET').Value  := 0;
  SPEdicao.ParamByName('CFOP').Value      := 0;
  SPEdicao.ParamByName('CMUNFG').Value    := 0;
  SPEdicao.ParamByName('PLACA').Value     := PETPlaca.Text ;
  SPEdicao.ParamByName('UF').Value        := PETUFPlaca.Text;
  SPEdicao.ParamByName('RNTC').Value      := EDTRNTC.Text;
  SPEdicao.ParamByName('QVOL').Value      := CEQVOL.Value;
  SPEdicao.ParamByName('ESP').Value       := PEESP.Text;
  SPEdicao.ParamByName('MARCA').Value     := EDMARCA.Text;
  SPEdicao.ParamByName('NVOL').Value      := CENVOL.Text;
  SPEdicao.ParamByName('PSBR').Value      := CEPSBR.Value;
  SPEdicao.ParamByName('PSLQ').Value      := CEPSLQ.Value;
  SPEdicao.ParamByName('NLACRE').Value    := PENLacres1.Text + PENLacres2.Text;

  SPEdicao.ExecProc;
  SPEdicao.UnPrepare;

  { SERVIÇOS }
  try
    FIS_NFE_MAO.DisableControls;
    FIS_NFE_MAO.First;

    while not FIS_NFE_MAO.Eof do
    begin
      SPEdicao.StoredProcName := 'SP_NFE_CLI';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('nfe').Value  := oREPZero('NFE_CLI','_',RECParametros.EP_ID,3);
      SPEdicao.ParamByName('id').Value   := 0;
      SPEdicao.ParamByName('CCAB').Value := AID;
      SPEdicao.ParamByName('CDNF').Value := FIS_NFE_MAONFE_CDNF.AsInteger;
      SPEdicao.ParamByName('DCAD').Value := FIS_NFE_MAONFE_DTNF.AsDateTime;
      SPEdicao.ParamByName('VNF').Value  := FIS_NFE_MAONFE_VNF.AsFloat;

      SPEdicao.ExecProc;
      SPEdicao.UnPrepare;

      FIS_NFE_MAO.Next;
    end;

  finally
    FIS_NFE_MAO.EnableControls;
  end;

  { DUPLICATA }
  if Pos(SBRodape.Panels[5].Text,'100150') > 0 then
  try
    FIS_NFE_DUP.DisableControls;
    FIS_NFE_DUP.First;

    while not FIS_NFE_DUP.Eof do
    begin
      SPEdicao.StoredProcName := 'SP_NFE_DUP';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('nfe').Value  := oREPZero('NFE_DUP','_',RECParametros.EP_ID,3);
      SPEdicao.ParamByName('id').Value   := 0;
      SPEdicao.ParamByName('CCAB').Value := AID;
      SPEdicao.ParamByName('CDRO').Value := CECDRO.Value;
      SPEdicao.ParamByName('CFAV').Value := CEIDCD.Value;
      SPEdicao.ParamByName('DROM').Value := DEdhEmi.Date;
      SPEdicao.ParamByName('CDNF').Value := FIS_NFE_DUPNFE_CDNF.AsInteger;
      SPEdicao.ParamByName('DNFE').Value := FIS_NFE_DUPNFE_DTNF.AsDateTime;
      SPEdicao.ParamByName('TITU').Value := FIS_NFE_DUPNFE_NDUP.AsString;
      SPEdicao.ParamByName('STPD').Value := EmptyStr;
      SPEdicao.ParamByName('STCO').Value := EmptyStr;
      SPEdicao.ParamByName('STFI').Value := EmptyStr;
      SPEdicao.ParamByName('PARC').Value := FIS_NFE_DUPNFE_NITEMPED.AsInteger;
      SPEdicao.ParamByName('DVEN').Value := FIS_NFE_DUPNFE_DTVC.AsDateTime;
      SPEdicao.ParamByName('VDUP').Value := FIS_NFE_DUPNFE_VDUP.AsFloat;
      SPEdicao.ParamByName('DPAG').Value := 0;
      SPEdicao.ParamByName('VPAG').Value := 0;
      SPEdicao.ParamByName('VPEN').Value := FIS_NFE_DUPNFE_VDUP.AsFloat;
      SPEdicao.ParamByName('OBSE').Value := EmptyStr;
      SPEdicao.ParamByName('STA').Value  := '0';

      SPEdicao.ExecProc;
      SPEdicao.UnPrepare;

      FIS_NFE_DUP.Next;
    end;

  finally
    FIS_NFE_DUP.EnableControls;
  end;

  { ITENS }
  try
    Edicao.DisableControls;
    Edicao.First;

    while not Edicao.Eof do
    begin
      SPEdicao.StoredProcName := 'SP_NFE_ITE';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('nfe').Value            := oREPZero('NFE_ITE','_',RECParametros.EP_ID,3);
      SPEdicao.ParamByName('id').Value             := 0;
      SPEdicao.ParamByName('CCAB').Value           := AID;
      SPEdicao.ParamByName('CDNF').Value           := CECDNF.Value;
      SPEdicao.ParamByName('INDTOT').Value         := EdicaoNFE_INDTOT.AsInteger;
      SPEdicao.ParamByName('CFOP').Value           := EdicaoNFE_CFOP.AsString;
      SPEdicao.ParamByName('CART').Value           := EdicaoCP_ARTIGO.AsString;
      SPEdicao.ParamByName('CPROD').Value          := EdicaoNFE_CPROD.AsString;
      SPEdicao.ParamByName('CEAN').Value           := EdicaoNFE_CEAN.AsString;
      SPEdicao.ParamByName('NCM').Value            := EdicaoNFE_NCM.AsString;
      SPEdicao.ParamByName('EXTIPI').Value         := EdicaoNFE_EXTIPI.AsString;
      SPEdicao.ParamByName('DCOR').Value           := EmptyStr;
      SPEdicao.ParamByName('XPROD').Value          := EdicaoNFE_XPROD.AsString;
      SPEdicao.ParamByName('UCOM').Value           := EdicaoNFE_UCOM.AsString;
      SPEdicao.ParamByName('QCOM').Value           := EdicaoNFE_QCOM.AsCurrency;
      SPEdicao.ParamByName('RCOM').Value           := EdicaoNFE_RCOM.AsInteger;

      SPEdicao.ParamByName('PSCN').Value           := 0;
      SPEdicao.ParamByName('PSBR').Value           := CEPSBR.Value;
      SPEdicao.ParamByName('PSLQ').Value           := CEPSLQ.Value;

      SPEdicao.ParamByName('VUNCOM').Value         := EdicaoNFE_VUNCOM.AsFloat;
      SPEdicao.ParamByName('VPROD').Value          := EdicaoNFE_VPROD.AsFloat;
      SPEdicao.ParamByName('VFRETE').Value         := EdicaoNFE_VFRETE.AsFloat;
      SPEdicao.ParamByName('VSEG').Value           := EdicaoNFE_VSEG.AsFloat;
      SPEdicao.ParamByName('VDESC').Value          := EdicaoNFE_VDESC.AsFloat;
      SPEdicao.ParamByName('VOUTRO').Value         := EdicaoNFE_VOUTRO.AsFloat;
      SPEdicao.ParamByName('XLOCEMBARQ').Value     := EdicaoNFE_XLOCEMBARQ.AsString;
      SPEdicao.ParamByName('UFEMBARQ').Value       := EdicaoNFE_UFEMBARQ.AsString;
      SPEdicao.ParamByName('NDI').Value            := EdicaoNFE_NDI.AsString;
      SPEdicao.ParamByName('DDI').Value            := 0;
      SPEdicao.ParamByName('XLOCDESEMB').Value     := EdicaoNFE_XLOCDESEMB.AsString;
      SPEdicao.ParamByName('UFDESEMB').Value       := EdicaoNFE_UFDESEMB.AsString;
      SPEdicao.ParamByName('DDESEMB').Value        := 0;
      SPEdicao.ParamByName('CEXPORTADOR').Value    := EdicaoNFE_CEXPORTADOR.AsString;
      SPEdicao.ParamByName('NADICAO').Value        := EdicaoNFE_NADICAO.AsInteger;
      SPEdicao.ParamByName('NSEQADIC').Value       := EdicaoNFE_NSEQADIC.AsInteger;
      SPEdicao.ParamByName('CFABRICANTE').Value    := EdicaoNFE_CFABRICANTE.AsString;
      SPEdicao.ParamByName('VDESCDI').Value        := EdicaoNFE_VDESCDI.AsFloat;
      SPEdicao.ParamByName('XPED').Value           := EdicaoNFE_XPED.AsString;
      SPEdicao.ParamByName('ITEMPED').Value        := EdicaoNFE_NITEMPED.AsString;
      SPEdicao.ParamByName('ORIG').Value           := EdicaoNFE_ORIG.AsString;
      SPEdicao.ParamByName('CST').Value            := EdicaoNFE_CST.AsString;
      SPEdicao.ParamByName('MODBC').Value          := EdicaoNFE_MODBC.AsString;
      SPEdicao.ParamByName('PREDBC').Value         := EdicaoNFE_PREDBC.AsFloat;
      SPEdicao.ParamByName('VBC').Value            := EdicaoNFE_VBC.AsFloat;
      SPEdicao.ParamByName('PICMS').Value          := EdicaoNFE_PICMS.AsFloat;
      SPEdicao.ParamByName('VICMS').Value          := EdicaoNFE_VICMS.AsFloat;
      SPEdicao.ParamByName('MODBCST').Value        := EdicaoNFE_MODBCST.AsString;
      SPEdicao.ParamByName('MVAST').Value          := EdicaoNFE_PMVAST.AsFloat;
      SPEdicao.ParamByName('PREDBCST').Value       := EdicaoNFE_PREDBCST.AsFloat;
      SPEdicao.ParamByName('VBCST').Value          := EdicaoNFE_VBCST.AsFloat;
      SPEdicao.ParamByName('VBCSTRET').Value       := EdicaoNFE_VBCSTRET.AsFloat;
      SPEdicao.ParamByName('VICMSSTRET').Value     := EdicaoNFE_VICMSSTRET.AsFloat;
      SPEdicao.ParamByName('PICMSST').Value        := EdicaoNFE_PICMSST.AsFloat;
      SPEdicao.ParamByName('VICMSST').Value        := EdicaoNFE_VICMSST.AsFloat;
      SPEdicao.ParamByName('VST').Value            := EdicaoNFE_VST.AsFloat;
      SPEdicao.ParamByName('PCREDSN').Value        := EdicaoNFE_PCREDSN.AsFloat;
      SPEdicao.ParamByName('VCREDICMSSN').Value    := EdicaoNFE_VCREDICMSSN.AsFloat;
      SPEdicao.ParamByName('CSTIPI').Value         := EdicaoNFE_CSTIPI.AsString;
      SPEdicao.ParamByName('VBCIPI').Value         := EdicaoNFE_VBCIPI.AsFloat;
      SPEdicao.ParamByName('PIPI').Value           := EdicaoNFE_PIPI.AsFloat;
      SPEdicao.ParamByName('VIPI').Value           := EdicaoNFE_VIPI.AsFloat;
      SPEdicao.ParamByName('VBCIMP').Value         := EdicaoNFE_VBCIMP.AsFloat;
      SPEdicao.ParamByName('VDESPADU').Value       := EdicaoNFE_VDESPADU.AsFloat;
      SPEdicao.ParamByName('VIIIMP').Value         := EdicaoNFE_VII.AsFloat;
      SPEdicao.ParamByName('VIOFIMP').Value        := 0;
      SPEdicao.ParamByName('CSTPIS').Value         := EdicaoNFE_CSTPIS.AsString;
      SPEdicao.ParamByName('VBCPIS').Value         := EdicaoNFE_VBCPIS.AsFloat;
      SPEdicao.ParamByName('PPIS').Value           := EdicaoNFE_PPIS.AsFloat;
      SPEdicao.ParamByName('VPIS').Value           := EdicaoNFE_VPIS.AsFloat;
      SPEdicao.ParamByName('VBCPISST').Value       := EdicaoNFE_VBCPISST.AsFloat;
      SPEdicao.ParamByName('PPISST').Value         := EdicaoNFE_PPISST.AsFloat;
      SPEdicao.ParamByName('VPISST').Value         := EdicaoNFE_VPISST.AsFloat;
      SPEdicao.ParamByName('CSTCOFINS').Value      := EdicaoNFE_CSTCOFINS.AsString;
      SPEdicao.ParamByName('VBCOFINS').Value       := EdicaoNFE_VBCCOFINS.AsFloat;
      SPEdicao.ParamByName('PCOFINS').Value        := EdicaoNFE_PCOFINS.AsFloat;
      SPEdicao.ParamByName('VCOFINS').Value        := EdicaoNFE_VCOFINS.AsFloat;
      SPEdicao.ParamByName('VBCOFINSST').Value     := EdicaoNFE_VBCCOFINSST.AsFloat;
      SPEdicao.ParamByName('PCOFINSST').Value      := EdicaoNFE_PCOFINSST.AsFloat;
      SPEdicao.ParamByName('VCOFINSST').Value      := EdicaoNFE_VCOFINSST.AsFloat;
      SPEdicao.ParamByName('VBCISSQN').Value       := 0;
      SPEdicao.ParamByName('VALIQISSQN').Value     := 0;
      SPEdicao.ParamByName('VISSQN').Value         := 0;
      SPEdicao.ParamByName('CMUNFGISSQN').Value    := EmptyStr;
      SPEdicao.ParamByName('CLISTSERV').Value      := 0;
      SPEdicao.ParamByName('VNF').Value            := EdicaoNFE_VNF.AsFloat;
      SPEdicao.ParamByName('CEST').Value           := EdicaoNFE_CEST.AsString;
      SPEdicao.ParamByName('VBCSTDEST').Value      := EdicaoNFE_VBCSTDEST.AsFloat;
      SPEdicao.ParamByName('VICMSSTDEST').Value    := EdicaoNFE_VICMSSTDEST.AsFloat;
      SPEdicao.ParamByName('VBCUFDEST').Value      := EdicaoNFE_VBCUFDEST.AsFloat;
      SPEdicao.ParamByName('PFCPUFDEST').Value     := EdicaoNFE_PFCPUFDEST.AsFloat;
      SPEdicao.ParamByName('PICMSUFDEST').Value    := EdicaoNFE_PICMSUFDEST.AsFloat;
      SPEdicao.ParamByName('PICMSINTER').Value     := EdicaoNFE_PICMSINTER.AsFloat;
      SPEdicao.ParamByName('PICMSINTERPART').Value := EdicaoNFE_PICMSINTERPART.AsFloat;
      SPEdicao.ParamByName('VFCPUFDEST').Value     := EdicaoNFE_VFCPUFDEST.AsFloat;
      SPEdicao.ParamByName('VICMSUFDEST').Value    := EdicaoNFE_VICMSUFDEST.AsFloat;
      SPEdicao.ParamByName('VICMSUFREMET').Value   := EdicaoNFE_VICMSUFREMET.AsFloat;

      SPEdicao.ParamByName('NFE_IS_VBCIS').Value                := EdicaoNFE_IS_VBCIS.AsFloat;
      SPEdicao.ParamByName('NFE_IS_VIS').Value                  := EdicaoNFE_IS_VIS.AsFloat;
      SPEdicao.ParamByName('NFE_IS_QTRIB').Value                := EdicaoNFE_IS_QTRIB.AsFloat;
      SPEdicao.ParamByName('NFE_IBSCBS_VBCIBSCBS').Value        := EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat;
      SPEdicao.ParamByName('NFE_IBSCBS_VIBSCBS').Value          := EdicaoNFE_IBSCBS_VIBSCBS.AsFloat;
      SPEdicao.ParamByName('NFE_IBSUF_VBCIBSUF').Value          := EdicaoNFE_IBSUF_VBCIBSUF.AsFloat;
      SPEdicao.ParamByName('NFE_IBSUF_VIBSUF').Value            := EdicaoNFE_IBSUF_VIBSUF.AsFloat;
      SPEdicao.ParamByName('NFE_IBSUF_VDIF').Value              := EdicaoNFE_IBSUF_VDIF.AsFloat;
      SPEdicao.ParamByName('NFE_IBSUF_VDEVTRIB').Value          := EdicaoNFE_IBSUF_VDEVTRIB.AsFloat;
      SPEdicao.ParamByName('NFE_IBSMUN_VBCIBSMUN').Value        := EdicaoNFE_IBSMUN_VBCIBSMUN.AsFloat;
      SPEdicao.ParamByName('NFE_IBSMUN_VIBSMUN').Value          := EdicaoNFE_IBSMUN_VIBSMUN.AsFloat;
      SPEdicao.ParamByName('NFE_IBSMUN_VDIF').Value             := EdicaoNFE_IBSMUN_VDIF.AsFloat;
      SPEdicao.ParamByName('NFE_IBSMUN_VDEVTRIB').Value         := EdicaoNFE_IBSMUN_VDEVTRIB.AsFloat;
      SPEdicao.ParamByName('NFE_IBSMUN_VCREDPRES').Value        := EdicaoNFE_IBSMUN_VCREDPRES.AsFloat;
      SPEdicao.ParamByName('NFE_IBSMUN_VCREDPRESCONDSUS').Value := EdicaoNFE_IBSMUN_VCREDPRESCONDSUS.AsFloat;
      SPEdicao.ParamByName('NFE_CBS_VBCCBS').Value              := EdicaoNFE_CBS_VBCCBS.AsFloat;
      SPEdicao.ParamByName('NFE_CBS_VCBS').Value                := EdicaoNFE_CBS_VCBS.AsFloat;
      SPEdicao.ParamByName('NFE_CBS_VDIF').Value                := EdicaoNFE_CBS_VDIF.AsFloat;
      SPEdicao.ParamByName('NFE_CBS_VDEVTRIB').Value            := EdicaoNFE_CBS_VDEVTRIB.AsFloat;
      SPEdicao.ParamByName('NFE_CBS_VCREDPRES').Value           := EdicaoNFE_CBS_VCREDPRES.AsFloat;
      SPEdicao.ParamByName('NFE_CBS_VCREDPRESCONDSUS').Value    := EdicaoNFE_CBS_VCREDPRESCONDSUS.AsFloat;

      SPEdicao.ParamByName('NFCI').Value           := EdicaoNFE_NFCI.AsString;
      SPEdicao.ParamByName('INFADPROD').Value      := EdicaoNFE_INFADCAD.AsString;

      SPEdicao.ExecProc;
      SPEdicao.UnPrepare;

      Edicao.Next;
    end;

  finally
    Edicao.EnableControls;
  end;

  { CABEÇALHO }
  SPEdicao.StoredProcName := 'SP_NFE_CAB';
  SPEdicao.Prepare;

  SPEdicao.ParamByName('nfe').Value          := oREPZero('NFE_CAB','_',RECParametros.EP_ID,3);
  SPEdicao.ParamByName('id').Value           := 0;
  SPEdicao.ParamByName('REST').Value         := IFThen(Pos(SBRodape.Panels[5].Text,'110') > 0,'D','A');
  SPEdicao.ParamByName('CDNF').Value         := CECDNF.Value;
  SPEdicao.ParamByName('R_CDNF').Value       := CER_CDNF.Value;
  SPEdicao.ParamByName('DEMI').Value         := DEdhEmi.Date;
  SPEdicao.ParamByName('DSAI').Value         := IFThen(DEdhSaiEnt.Date < 0,DEdhEmi.Date,DEdhSaiEnt.Date);
  SPEdicao.ParamByName('CDRO').Value         := CECDRO.Value;
  SPEdicao.ParamByName('DERO').Value         := EDCDPD.Text;
  SPEdicao.ParamByName('CVEN').Value         := RECRomaneio.IDCV;
  SPEdicao.ParamByName('DVEN').Value         := RECRomaneio.DECV;
  SPEdicao.ParamByName('CREP').Value         := RECRomaneio.IDCR;
  SPEdicao.ParamByName('DREP').Value         := RECRomaneio.DECR;
  SPEdicao.ParamByName('CFAV').Value         := CEIDCD.Text;
  SPEdicao.ParamByName('DFAV').Value         := EDDECD.Text;
  SPEdicao.ParamByName('CTRA').Value         := CEIDCT.Value;
  SPEdicao.ParamByName('DTRA').Value         := PEDECT.Text;
  SPEdicao.ParamByName('MFRT').Value         := IEModFrete.Text;
  SPEdicao.ParamByName('CFRT').Value         := '';
  SPEdicao.ParamByName('CNAT').Value         := PECFOP.Text;
  SPEdicao.ParamByName('INDPAG').Value       := IEINDPAG.Text;
  SPEdicao.ParamByName('TPNF').Value         := IECFOP_TPNF.Text;
  SPEdicao.ParamByName('NFREF').Value        := '0';
  SPEdicao.ParamByName('REFNFE').Value       := '';
  SPEdicao.ParamByName('CUFREF').Value       := RECParametros.LOG_UF;
  SPEdicao.ParamByName('CNPJREF').Value      := RECParametros.Cnpj;
  SPEdicao.ParamByName('MODREF').Value       := '01';
  SPEdicao.ParamByName('SERIEREF').Value     := RECParametros.NFE_SERIE;
  SPEdicao.ParamByName('NNFREF').Value       := '0';
  SPEdicao.ParamByName('TPEMIS').Value       := '1';
  SPEdicao.ParamByName('FINNFE').Value       := IEFinNFe.Text;
  SPEdicao.ParamByName('CHAV').Value         := SBRodape.Panels[3].Text;
  SPEdicao.ParamByName('PROT').Value         := SBRodape.Panels[4].Text;
  SPEdicao.ParamByName('QCOM').Value         := FIS_NFE_SUMNFE_QCOM.AsFloat;
  SPEdicao.ParamByName('VBC').Value          := FIS_NFE_SUMNFE_VBC.AsFloat;
  SPEdicao.ParamByName('VICMS').Value        := FIS_NFE_SUMNFE_VICMS.AsFloat;
  SPEdicao.ParamByName('VBCST').Value        := FIS_NFE_SUMNFE_VBCST.AsFloat;
  SPEdicao.ParamByName('VST').Value          := FIS_NFE_SUMNFE_VST.AsFloat;
  SPEdicao.ParamByName('VPROD').Value        := FIS_NFE_SUMNFE_VPROD.AsFloat;
  SPEdicao.ParamByName('VFRETE').Value       := FIS_NFE_SUMNFE_VFRETE.AsFloat;
  SPEdicao.ParamByName('VSEG').Value         := FIS_NFE_SUMNFE_VSEG.AsFloat;
  SPEdicao.ParamByName('VDESC').Value        := FIS_NFE_SUMNFE_VDESC.AsFloat;
  SPEdicao.ParamByName('VII').Value          := FIS_NFE_SUMNFE_VII.AsFloat;
  SPEdicao.ParamByName('VIPI').Value         := FIS_NFE_SUMNFE_VIPI.AsFloat;
  SPEdicao.ParamByName('VPIS').Value         := FIS_NFE_SUMNFE_VPIS.AsFloat;
  SPEdicao.ParamByName('VCOFINS').Value      := FIS_NFE_SUMNFE_VCOFINS.AsFloat;
  SPEdicao.ParamByName('VOUTRO').Value       := FIS_NFE_SUMNFE_VOUTRO.AsFloat;
  SPEdicao.ParamByName('VNF').Value          := FIS_NFE_SUMNFE_VNF.AsFloat;
  SPEdicao.ParamByName('VSERVISSQN').Value   := 0;
  SPEdicao.ParamByName('VBCISSQN').Value     := 0;
  SPEdicao.ParamByName('VISS').Value         := 0;
  SPEdicao.ParamByName('VPISISSQN').Value    := 0;
  SPEdicao.ParamByName('VCOFINSISSQN').Value := 0;
  SPEdicao.ParamByName('VRETPIS').Value      := 0;
  SPEdicao.ParamByName('VRETCOFINS').Value   := 0;
  SPEdicao.ParamByName('VRETCSLL').Value     := 0;
  SPEdicao.ParamByName('VBCIRRF').Value      := 0;
  SPEdicao.ParamByName('VIRRF').Value        := 0;
  SPEdicao.ParamByName('VBCRETPREV').Value   := 0;
  SPEdicao.ParamByName('VRETPREV').Value     := 0;
  SPEdicao.ParamByName('VRETPREV').Value     := 0;
  SPEdicao.ParamByName('VRETPREV').Value     := 0;
  SPEdicao.ParamByName('OBSE').Value         := StringReplace(oREPApostrofos(EDINFADNF.Text),Char(39),'',[rfReplaceAll]);
  SPEdicao.ParamByName('CLFO').Value         := LAIDCD.Tag;
  SPEdicao.ParamByName('ESTO').Value         := IFThen((LeftStr(PECFOP.Text,1) = '3') and (RECParametros.EST_QTRL),'1','0');

  SPEdicao.ExecProc;
  SPEdicao.UnPrepare;
end;

procedure TFrmVEN_NFE._DoCommitWaitProdutos;
begin
  { CADASTRO DE PRODUTOS IMPORTADOS }
  if (Pos(SBRodape.Panels[5].Text,'100150') > 0) and { NFe Autorizada }
     (LeftStr(PECFOP.Text,1) = '3') then { NFe Importação }

  ACTEDI_CAD_PRO.Execute;
end;

end.
