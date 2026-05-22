unit pven_prc;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils,
  FMTBcd, IBEvents, rxSpeedbar, IBSQL, cxGraphics, cxControls, dxStatusBar,
  ActnList;

type
  Tfrmven_prc = class(TForm)
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    BSair: TSpeedItem;
    SIMSalva: TSpeedItem;
    ILMenu: TImageList;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    DTSEdicao: TDataSource;
    TSheild: TIBTransaction;
    consulta_s: TIBQuery;
    Consulta: TIBQuery;
    aux_S: TIBQuery;
    aux2_S: TIBQuery;
    PNLFormRodape: TPanel;
    PNLEdicao: TPanel;
    PNLConsulta: TPanel;
    GBEdicao: TGroupBox;
    GBConsulta: TGroupBox;
    ConsultaAux: TIBQuery;
    ILEdicao: TImageList;
    SBEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIEInclui: TSpeedItem;
    SIEAltera: TSpeedItem;
    SIEExclui: TSpeedItem;
    SIESalva: TSpeedItem;
    SIECancela: TSpeedItem;
    PNLPrincipal: TPanel;
    PNLPedido: TPanel;
    PNLMargemE: TPanel;
    GBFavorecido: TGroupBox;
    edtint: TdxMaskEdit;
    edbest: TdxMaskEdit;
    edcdcx: TdxMaskEdit;
    edqtsp: TdxMaskEdit;
    edqtpc: TdxMaskEdit;
    edagrp: TdxMaskEdit;
    edcdrd: TdxMaskEdit;
    edptng: TdxMaskEdit;
    edfatu: TdxMaskEdit;
    GBPedido: TGroupBox;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label28: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    cbprec: TdxPickEdit;
    edcdro: TdxMaskEdit;
    cbdcom: TdxPickEdit;
    cbdrep: TdxPickEdit;
    cbdpag: TdxPickEdit;
    cbstpd: TdxPickEdit;
    eddero: TdxMaskEdit;
    cbstco: TdxPickEdit;
    cbcred: TdxPickEdit;
    PNLMargemD: TPanel;
    GBInfoComplementar: TGroupBox;
    pcobs: TdxPageControl;
    tsobs: TdxTabSheet;
    edobse: TdxMemo;
    tsoco: TdxTabSheet;
    edobso: TdxMemo;
    GBInfoAdicional: TGroupBox;
    PCInfoAdicional: TdxPageControl;
    TSFrete: TdxTabSheet;
    Bevel1: TBevel;
    laVFrete: TLabel;
    ladtra: TLabel;
    CEVFRT: TdxCurrencyEdit;
    TSHistorico: TdxTabSheet;
    Bevel2: TBevel;
    laCLI_DCAD: TLabel;
    laCLI_DULT: TLabel;
    CLI_VULT: TLabel;
    edFOR_DCAD: TdxMaskEdit;
    edFOR_VULT: TdxMaskEdit;
    edFOR_DULT: TdxMaskEdit;
    PNLSumario: TPanel;
    GBSumario: TGroupBox;
    Shape9: TShape;
    LASubTotal: TLabel;
    Shape10: TShape;
    LATDesc: TLabel;
    Shape29: TShape;
    LATotal: TLabel;
    LADesconto: TLabel;
    LADesconto2: TLabel;
    Shape6: TShape;
    LAQuantidade: TLabel;
    Shape24: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape8: TShape;
    Shape1: TShape;
    LAPeca: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    LAPesoB: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    LAPesoL: TLabel;
    Shape7: TShape;
    CEQuantidade: TdxCurrencyEdit;
    CEPeca: TdxCurrencyEdit;
    CEPesoB: TdxCurrencyEdit;
    CEPesoL: TdxCurrencyEdit;
    CESubTotal: TdxCurrencyEdit;
    CEPDesc: TdxCurrencyEdit;
    CETotal: TdxCurrencyEdit;
    edcpag: TdxMaskEdit;
    edstpd: TdxMaskEdit;
    edcrep: TdxMaskEdit;
    edccom: TdxMaskEdit;
    Shape13: TShape;
    Label2: TLabel;
    Shape14: TShape;
    CEVIPI: TdxCurrencyEdit;
    lactnr: TLabel;
    PECTNR: TdxPickEdit;
    IEMFRT: TdxImageEdit;
    Label1: TLabel;
    PEDECT: TdxPickEdit;
    SQLConsulta: TIBSQL;
    SIMVisualiza: TSpeedItem;
    SIMImprime: TSpeedItem;
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
    tab_pagPAG_D011: TIntegerField;
    tab_pagPAG_D012: TIntegerField;
    tab_pagPAG_D013: TIntegerField;
    tab_pagPAG_D014: TIntegerField;
    tab_pagPAG_D015: TIntegerField;
    tab_pagPAG_D016: TIntegerField;
    tab_pagPAG_D017: TIntegerField;
    tab_pagPAG_D018: TIntegerField;
    tab_pagPAG_STA: TIBStringField;
    tab_pagPAG_PARC: TSmallintField;
    tab_pagPAG_PRAZ: TSmallintField;
    tab_pagPAG_DUPL: TIBStringField;
    tab_pagPAG_ENVWEB: TSmallintField;
    tab_pagPAG_D019: TIntegerField;
    tab_pagPAG_D020: TIntegerField;
    Edicao: TIBDataSet;
    EdicaoID: TIntegerField;
    EdicaoROM_ITEM: TIBStringField;
    EdicaoROM_CART: TIBStringField;
    EdicaoROM_IPRO: TIntegerField;
    EdicaoROM_CPRO: TIBStringField;
    EdicaoROM_IPR2: TIntegerField;
    EdicaoROM_CPR2: TIBStringField;
    EdicaoROM_DPRO: TIBStringField;
    EdicaoROM_CCOR: TIntegerField;
    EdicaoROM_RCOR: TIBStringField;
    EdicaoROM_DCOR: TIBStringField;
    EdicaoROM_CCO2: TIntegerField;
    EdicaoROM_RCO2: TIBStringField;
    EdicaoROM_DCO2: TIBStringField;
    EdicaoROM_DUNI: TIBStringField;
    EdicaoROM_QTDE: TIBBCDField;
    EdicaoROM_VDSC: TIBBCDField;
    EdicaoROM_TOTA: TIBBCDField;
    EdicaoROM_CDET: TIBStringField;
    EdicaoROM_CBAR: TIBStringField;
    EdicaoROM_FOTO: TBlobField;
    EdicaoROM_QDIS: TIBBCDField;
    EdicaoROM_PPRO: TIBBCDField;
    EdicaoROM_PEMB: TIBBCDField;
    EdicaoROM_CGRD: TIBStringField;
    EdicaoROM_DGRD: TIBStringField;
    EdicaoROM_FLAG: TSmallintField;
    EdicaoROM_CDOC: TIntegerField;
    EdicaoROM_CCAB: TIntegerField;
    EdicaoROM_CDPR: TIntegerField;
    EdicaoROM_CDPD: TIntegerField;
    EdicaoROM_CDRO: TIntegerField;
    EdicaoROM_CDNF: TIntegerField;
    EdicaoROM_QTSP: TIBBCDField;
    EdicaoROM_QTPD: TIBBCDField;
    EdicaoROM_QTRL: TIntegerField;
    EdicaoROM_RLSP: TIntegerField;
    EdicaoROM_RLPD: TIntegerField;
    EdicaoROM_RLDI: TIntegerField;
    EdicaoROM_METR: TIBBCDField;
    EdicaoROM_PESO: TIBBCDField;
    EdicaoROM_REND: TIBBCDField;
    EdicaoROM_PSCN: TIBBCDField;
    EdicaoROM_PSMR: TIBBCDField;
    EdicaoROM_VBCIPI: TIBBCDField;
    EdicaoROM_PIPI: TIBBCDField;
    EdicaoROM_VIPI: TIBBCDField;
    EdicaoROM_TPRC: TIBStringField;
    EdicaoROM_PCOR: TIBStringField;
    EdicaoROM_PCO2: TIBStringField;
    EdicaoROM_ABCD: TIBStringField;
    EdicaoROM_DROM: TDateField;
    EdicaoROM_QPRD: TSmallintField;
    EdicaoROM_DPRD: TDateField;
    EdicaoROM_QEMB: TSmallintField;
    EdicaoROM_DEMB: TDateField;
    EdicaoROM_QDES: TSmallintField;
    EdicaoROM_DDES: TDateField;
    EdicaoROM_QEXP: TSmallintField;
    EdicaoROM_DEXP: TDateField;
    EdicaoROM_CTNR: TIBStringField;
    EdicaoROM_OBSE: TMemoField;
    EdicaoROM_DBAI: TDateField;
    EdicaoROM_RPRD: TDateField;
    EdicaoROM_REMB: TDateField;
    EdicaoROM_RDES: TDateField;
    EdicaoROM_PRCA: TFloatField;
    EdicaoROM_PRPA: TFloatField;
    EdicaoROM_VPRC: TFloatField;
    EdicaoROM_VPRO: TFloatField;
    EdicaoROM_RPRC: TFloatField;
    EdicaoROM_RPRO: TFloatField;
    EdicaoROM_PCOM: TFloatField;
    EdicaoROM_CUST: TFloatField;
    EdicaoROM_UNIT: TFloatField;
    EdicaoROM_PREC: TFloatField;
    EdicaoROM_STFI: TIBStringField;
    EdicaoROM_CSEP: TIntegerField;
    EdicaoROM_DSEP: TIBStringField;
    EdicaoROM_APRC: TIBStringField;
    EdicaoROM_LDSC: TIBBCDField;
    EdicaoROM_TSDE: TIBBCDField;
    EdicaoROM_DERO: TIBStringField;
    EdicaoROM_CCLF: TIBStringField;
    EdicaoROM_CFOR: TIBStringField;
    EdicaoROM_QVOL: TIBBCDField;
    EdicaoROM_ESP: TIBStringField;
    EdicaoROM_RUNI: TIBStringField;
    EdicaoROM_PTABI: TFloatField;
    EdicaoROM_PTABF: TFloatField;
    EdicaoROM_QTUN: TIBBCDField;
    EdicaoROM_PBUN: TIBBCDField;
    EdicaoROM_PLUN: TIBBCDField;
    EdicaoROM_PSEB: TIBBCDField;
    EdicaoROM_PSBR: TIBBCDField;
    EdicaoROM_PSLQ: TIBBCDField;
    DBGEdicao: TdxDBGrid;
    psq_for: TIBQuery;
    psq_forID: TIntegerField;
    psq_forFOR_FANT: TIBStringField;
    psq_forFOR_RAZA: TIBStringField;
    psq_forFOR_CNPJ: TIBStringField;
    psq_forFOR_CPF: TIBStringField;
    psq_forFOR_CRED: TIBBCDField;
    psq_forFOR_CID: TIBStringField;
    psq_forFOR_BAI: TIBStringField;
    psq_forFOR_LOGR: TIBStringField;
    psq_forFOR_ESTA: TIBStringField;
    psq_forFOR_STA: TIBStringField;
    psq_forFOR_STAV: TIBStringField;
    psq_forFOR_DPAG: TIBStringField;
    psq_forFOR_VDSC: TIBBCDField;
    psq_forFOR_DCAD: TDateField;
    psq_forFOR_DFUN: TDateField;
    psq_forFOR_DALT: TDateField;
    psq_forFOR_DULT: TDateField;
    psq_forFOR_OBSO: TIBStringField;
    psq_forFOR_CDEP: TIntegerField;
    psq_forFOR_TLOG: TIBStringField;
    psq_forFOR_NUME: TIBStringField;
    psq_forFOR_CEP: TIBStringField;
    psq_forFOR_COMP: TIBStringField;
    psq_forFOR_VULT: TIBBCDField;
    psq_forFOR_DDD: TIBStringField;
    psq_forFOR_TEL1: TIBStringField;
    psq_forFOR_DTRA: TIBStringField;
    EdicaoROM_CST: TIBStringField;
    DBGEdicaoROM_ITEM: TdxDBGridMaskColumn;
    DBGEdicaoROM_CPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_DCO2: TdxDBGridMaskColumn;
    DBGEdicaoROM_DPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_DUNI: TdxDBGridPickColumn;
    DBGEdicaoROM_CDRO: TdxDBGridCheckColumn;
    DBGEdicaoROM_CDPD: TdxDBGridMaskColumn;
    DBGEdicaoROM_QTDE: TdxDBGridCalcColumn;
    DBGEdicaoROM_QTPD: TdxDBGridMaskColumn;
    DBGEdicaoROM_UNIT: TdxDBGridButtonColumn;
    DBGEdicaoROM_TOTA: TdxDBGridMaskColumn;
    DBGEdicaoROM_OBSE: TdxDBGridBlobColumn;
    DBGEdicaoROM_QPRD: TdxDBGridMaskColumn;
    DBGEdicaoROM_DPRD: TdxDBGridDateColumn;
    DBGEdicaoROM_RPRD: TdxDBGridDateColumn;
    DBGEdicaoROM_QEMB: TdxDBGridMaskColumn;
    DBGEdicaoROM_DEMB: TdxDBGridDateColumn;
    DBGEdicaoROM_REMB: TdxDBGridDateColumn;
    DBGEdicaoROM_QDES: TdxDBGridMaskColumn;
    DBGEdicaoROM_DDES: TdxDBGridDateColumn;
    DBGEdicaoROM_RDES: TdxDBGridDateColumn;
    DBGEdicaoROM_QEXP: TdxDBGridMaskColumn;
    DBGEdicaoROM_DEXP: TdxDBGridDateColumn;
    DBGEdicaoROM_DBAI: TdxDBGridDateColumn;
    DEDROM: TdxDateEdit;
    Label4: TLabel;
    DEDEXP: TdxDateEdit;
    Label5: TLabel;
    IETVLR: TdxImageEdit;
    Label8: TLabel;
    DBGEdicaoROM_STFI: TdxDBGridMaskColumn;
    EdicaoROM_CDEP: TSmallintField;
    EdicaoROM_GCOR: TIBStringField;
    EdicaoROM_STAV: TIBStringField;
    EdicaoROM_CDBE: TIBStringField;
    EdicaoROM_FBAR: TIBStringField;
    EdicaoROM_DTPD: TDateTimeField;
    EdicaoROM_DTSP: TDateTimeField;
    EdicaoROM_DERD: TIBStringField;
    SISaldo: TSpeedItem;
    SQLSEdicao: TIBSQL;
    SIMImporta: TSpeedItem;
    IEIDEP: TdxImageEdit;
    Label11: TLabel;
    DBGEdicaoROM_CDOC: TdxDBGridCheckColumn;
    DBGEdicaoROM_DSEP: TdxDBGridPickColumn;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SBRodape: TdxStatusBar;
    CEIDCD: TdxCurrencyEdit;
    LAIDCD: TLabel;
    EDDECD: TdxMaskEdit;
    LADECD: TLabel;
    EDCNPJ: TdxMaskEdit;
    LACNPJ: TLabel;
    SQLFKSEdicao: TIBSQL;
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
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTExecEvent: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTEAppend: TAction;
    ACTEEdit: TAction;
    ACTEDelete: TAction;
    ACTEPost: TAction;
    ACTECancel: TAction;
    ACTMAppend: TAction;
    ACTMEdit: TAction;
    ACTMDelete: TAction;
    ACTMPost: TAction;
    ACTMCancel: TAction;
    ACTSaida: TAction;
    ACTPSQ_OK: TAction;
    ACTPSQ_FOCUS: TAction;
    EEventAdmin: TIBEvents;
    DBGEdicaoROM_CTNR: TdxDBGridPickColumn;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtsdeKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edcpagValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure EdicaoROM_QTDEValidate(Sender: TField);
    procedure SIMSalvaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DBGEdicaoROM_UNITValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbdcomExit(Sender: TObject);
    procedure cbdrepExit(Sender: TObject);
    procedure cbstpdExit(Sender: TObject);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGEdicaoROM_QTDEValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoROM_CPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoROM_DPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbstcoExit(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure tsoutShow(Sender: TObject);
    procedure psq_forAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure EdicaoROM_VDSCValidate(Sender: TField);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoBeforeOpen(DataSet: TDataSet);
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
    procedure SIEExcluiClick(Sender: TObject);
    procedure SIESalvaClick(Sender: TObject);
    procedure SIECancelaClick(Sender: TObject);
    procedure DBGEdicaoDblClick(Sender: TObject);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure cbcredValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure LATDescClick(Sender: TObject);
    procedure CESubTotalValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CESubTotalKeyPress(Sender: TObject; var Key: Char);
    procedure CEQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edobseExit(Sender: TObject);
    procedure cbdpagValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PECTNRValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure edderoChange(Sender: TObject);
    procedure PEDECTChange(Sender: TObject);
    procedure EdicaoROM_QPRDValidate(Sender: TField);
    procedure EdicaoROM_QEMBValidate(Sender: TField);
    procedure EdicaoROM_QDESValidate(Sender: TField);
    procedure EdicaoROM_QEXPValidate(Sender: TField);
    procedure EdicaoROM_QTPDValidate(Sender: TField);
    procedure DBGEdicaoROM_CDROChange(Sender: TObject);
    procedure EdicaoROM_RDESValidate(Sender: TField);
    procedure DEDROMValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DEDEXPValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoROM_DEXPValidate(Sender: TField);
    procedure SISaldoClick(Sender: TObject);
    procedure SIMImportaClick(Sender: TObject);
    procedure EdicaoROM_DBAIValidate(Sender: TField);
    procedure CEIDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGEdicaoROM_DSEPValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure EdicaoAfterClose(DataSet: TDataSet);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure _CheckPreco;
    procedure _Sumario;
    procedure _Refresh(ACommit: Boolean = True);
    procedure _Append(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure _Edit(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure _Delete(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure _Post(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure _Cancel(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
    procedure ABRE_TABELA;
    procedure SALVA;
    procedure _CPPSQ(ADTXT: String;AFTXT: String);
    procedure _FillCP;
  public
    REC_SHE_DEF: TREC_SHE_DEF;
    RECPedido: TRECPEdidos;

    procedure PESQUISA_TIPO(pesq,chave: string);
    procedure PESQUISA_COMPRADOR(pesq,chave: string);
    procedure PESQUISA_REPRESENTANTE(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);

    Constructor Create(AOwner: TComponent; const AIDPedido: Integer); reintroduce; overload;
  end;

var
  frmven_prc: Tfrmven_prc;

implementation

uses uPrincipal, bPrincipal,
  pctr_prc, pimporta_geral;

{$R *.dfm}

Constructor Tfrmven_prc.Create(AOwner: TComponent; const AIDPedido: Integer);
begin
  inherited Create(AOwner);
end;

procedure Tfrmven_prc.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  Self.Position := poDesigned;
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'PED_PDC_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Vendas';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := True;

  oIRECPedidos(RECPedido );
  oOTransact(IBTRA); { Transação }
  ABRE_TABELA;

  CEIDCD.Value := RECParametros.CF_ID;
  EDDECD.Text  := RECParametros.CF_NO;
  edccom.Text  := RECUsuarios.Id;
  cbdcom.Text  := RECUsuarios.Login;
  edcrep.Text  := RECParametros.CR_ID;
  cbdrep.Text  := RECParametros.CR_ID;
  edstpd.Text  := 'COMPRAS';
  cbstpd.Text  := 'COMPRAS';
  cbstco.Text  := RECParametros.PED_TCO_NO;
  edcpag.Text  := RECParametros.PED_PRZ_ID;
  cbdpag.Text  := RECParametros.PED_PRZ_NO;
  DEDROM.Date  := RECParametros.SHE_DATA;
  DEDEXP.Date  := incDay(DEDROM.Date,99);
  IEIDEP.Text  := RECParametros.EP_ID;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,FANTASIA FROM TAB_PAR_SIS ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IEIDEP.Values.Add(Current.Vars[0].AsString);
      IEIDEP.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Containers }
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.CON_CTNR,DTCA FROM CAD_CON AS PK');
    SQL.Add('WHERE    PK.CDST = 30');
    SQL.Add('AND      PK.DTCA >= DATEADD(MONTH,-12,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_TIMESTAMP))');
    SQL.Add('ORDER BY PK.ID DESC');
    ExecQuery;

    while not eof do
    begin
      PECTNR.Items.Add(Current.Vars[0].AsString);
      DBGEdicaoROM_CTNR.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT CON_CTNR FROM CAD_CON GROUP BY 1 ORDER BY 1');
    Prepare;
    ExecQuery;
    while not eof do
    begin

      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCRICAO FROM TAB_COL WHERE ID > 0 AND REST = ''A'' ORDER BY 1');
    Prepare;
    ExecQuery;
    while not eof do
    begin
      DBGEdicaoROM_DSEP.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT TRA_FANT,ID FROM CAD_TRA WHERE TRA_STAV = ''A'' ORDER BY 1');
    Prepare;
    ExecQuery;
    while not eof do
    begin
      if Current.Vars[0].AsString = 'POR CONTA E ORDEM DO FORNECEDOR' then
      begin
        PEDECT.Tag   := Current.Vars[1].AsInteger;
        PEDECT.Text  := Current.Vars[0].AsString;
      end;

      PEDECT.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT USU_DUSU FROM CAD_USU WHERE USU_COMP = 1 AND USU_STAV = ''A'' ORDER BY 1');
    Prepare;
    ExecQuery;
    while not eof do
    begin
      cbdcom.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT REP_FANT FROM CAD_REP WHERE REP_STAV = ''A'' GROUP BY 1 ORDER BY 1');
    Prepare;
    ExecQuery;
    while not eof do
    begin
      cbdrep.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT VEN_TIPO FROM TAB_PED GROUP BY 1 ORDER BY 1');
    Prepare;
    ExecQuery;
    while not eof do
    begin
      cbstpd.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT VEN_TIPO FROM TAB_COB GROUP BY 1 ORDER BY 1');
    Prepare;
    ExecQuery;
    while not eof do
    begin
      if (LeftStr(Current.Vars[0].AsString,5) <> 'DEVOL') and (LeftStr(Current.Vars[0].AsString,5) <> 'ABATI') then
      cbstco.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PAG_DPAG FROM TAB_PAG GROUP BY 1 ORDER BY 1');
    Prepare;
    ExecQuery;
    while not eof do
    begin
      cbdpag.Items.Add(Current.Vars[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmven_prc.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  try
    Edicao.DisableControls;
    if (Assigned(frmctr_prc)) and (frmctr_prc.siARO.Tag = 1) then
    begin
      frmctr_prc.Tag := 1;

      PESQUISA_COMPRADOR('C',frmctr_prc.cadastroCV_ID.AsString);
      PESQUISA_REPRESENTANTE('C',frmctr_prc.CadastroCR_ID.AsString);

      cbstpd.Text := frmctr_prc.cadastroTPD_NO.AsString;
      PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);

      Tag := 1;
      IEIDEP.Text      := frmctr_prc.CadastroEP_ID.AsString;
      CEIDCD.Value     := frmctr_prc.cadastroCD_ID.AsInteger;
      EDDECD.Text      := frmctr_prc.cadastroCD_NO.AsString;
      EDCNPJ.Text      := frmctr_prc.cadastroCD_CNPJ.AsString;
      cbcred.Text      := '1';
      edcdro.Text      := frmctr_prc.cadastroIDPK.AsString;
      eddero.Text      := frmctr_prc.cadastroDEPK.AsString;
      edcdcx.Text      := frmctr_prc.cadastroCDCX.AsString;
      DEDROM.Date      := frmctr_prc.cadastroDTPK.AsDateTime;
      PECTNR.Text      := frmctr_prc.cadastroCTNR.AsString;
      DEDEXP.Date      := frmctr_prc.cadastroCTNR_PCHP.AsDateTime;
      edobse.Text      := frmctr_prc.cadastroINFADCAD.AsString;
      edccom.Text      := frmctr_prc.cadastroCV_ID.AsString;
      edcrep.Text      := frmctr_prc.CadastroCR_ID.AsString;
      cbstco.Text      := frmctr_prc.cadastroTCO_NO.AsString;
      edcpag.Text      := frmctr_prc.cadastroPRZ_ID.AsString;
      IEMFRT.Text      := frmctr_prc.cadastroFRT_MODELO.AsString;
      PEDECT.Tag       := frmctr_prc.cadastroCT_ID.AsInteger;
      PEDECT.Text      := frmctr_prc.cadastroCT_NO.AsString;
      CEVFRT.Value     := frmctr_prc.cadastroFRT_VFRT.AsFloat;
      LATDesc.Caption  := frmctr_prc.cadastroTDSC.AsString;
      CEPDesc.Value    := frmctr_prc.cadastroPDSC.AsFloat;

      PESQUISA_FPAGTO('C',frmctr_prc.cadastroPRZ_ID.AsString);

      Tag := 1;
      try
        frmctr_prc.FKCadastro.DisableControls;
        frmctr_prc.FKCadastro.First;

        oOTransact(FBird.TFBProdutos);
        while not frmctr_prc.FKCadastro.Eof do
        begin
          Edicao.Append;
          uPesquisa_Produto(RECParametros.EP_ID,frmctr_prc.FKCadastroIDCP.AsString,'ID');
          _FillCP;

          EdicaoROM_IPRO.Value := frmctr_prc.FKCadastroIDCP.AsInteger;
          EdicaoROM_DPRO.Value := frmctr_prc.FKCadastroDECP.AsString;
          EdicaoROM_GCOR.Value := frmctr_prc.FKCadastroROM_NFCI.AsString;
          EdicaoROM_DCO2.Value := frmctr_prc.FKCadastroDGCP.AsString;
          EdicaoROM_CSEP.Value := frmctr_prc.FKCadastroIDCOL.AsInteger;
          EdicaoROM_DSEP.Value := frmctr_prc.FKCadastroDECOL.AsString;
          EdicaoROM_DUNI.Value := frmctr_prc.FKCadastroROM_DUNI.AsString;
          EdicaoROM_QTDE.Value := frmctr_prc.FKCadastroROM_QTDE.AsFloat;
          EdicaoROM_QTRL.Value := frmctr_prc.FKCadastroROM_QTRL.AsInteger;
          EdicaoROM_QTPD.Value := frmctr_prc.FKCadastroROM_QTPD.AsFloat;
          EdicaoROM_RLPD.Value := frmctr_prc.FKCadastroROM_RLPD.AsInteger;
          EdicaoROM_CTNR.Value := frmctr_prc.FKCadastroROM_CTNR.AsString;

          EdicaoROM_PREC.AsFloat := frmctr_prc.FKCadastroROM_PREC.AsFloat;
          EdicaoROM_UNIT.AsFloat := frmctr_prc.FKCadastroROM_UNIT.AsFloat;

          EdicaoROM_CDPD.Value := frmctr_prc.FKCadastroROM_CDPD.AsInteger;
          if EdicaoROM_CDPD.AsInteger > 0 then
          EdicaoROM_CDRO.Value := 1 else
          EdicaoROM_CDRO.Value := 0;

          EdicaoROM_QPRD.Value := frmctr_prc.FKCadastroROM_QPRD.AsInteger;
          EdicaoROM_QEMB.Value := frmctr_prc.FKCadastroROM_QEMB.AsInteger;
          EdicaoROM_QEXP.Value := frmctr_prc.FKCadastroROM_QEXP.AsInteger;
          EdicaoROM_QDES.Value := frmctr_prc.FKCadastroROM_QDES.AsInteger;

          EdicaoROM_DROM.Value := frmctr_prc.FKCadastroROM_DROM.AsDateTime;
          EdicaoROM_DPRD.Value := frmctr_prc.FKCadastroROM_DPRD.AsDateTime;
          EdicaoROM_RPRD.Value := frmctr_prc.FKCadastroROM_RPRD.AsDateTime;
          EdicaoROM_DEMB.Value := frmctr_prc.FKCadastroROM_DEMB.AsDateTime;
          EdicaoROM_REMB.Value := frmctr_prc.FKCadastroROM_REMB.AsDateTime;
          EdicaoROM_DDES.Value := frmctr_prc.FKCadastroROM_DDES.AsDateTime;
          EdicaoROM_RDES.Value := frmctr_prc.FKCadastroROM_RDES.AsDateTime;
          EdicaoROM_DEXP.Value := frmctr_prc.FKCadastroROM_DEXP.AsDateTime;
          EdicaoROM_DBAI.Value := frmctr_prc.FKCadastroROM_DBAI.AsDateTime;

          Edicao.Post;
          frmctr_prc.FKCadastro.Next;
        end;
      finally
        frmctr_prc.FKCadastro.EnableControls;
        frmctr_prc.siARO.Tag := 0;

        oCTransact(FBird.TFBProdutos);
        oRTransact(TSheild);
      end;
    end else
    begin
      PESQUISA_COMPRADOR('C',edccom.Text);
      PESQUISA_REPRESENTANTE('C',RECParametros.CR_ID);

      PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);
    end;

    _Refresh;
  finally
    Screen.Cursor    := crDefault;
    SIMSalva.Enabled := False;
    TAG := 0;

    if Edicao.RecNo > 0 then
    DBGEdicao.SetFocus;
    Edicao.Last;
  end
end;

procedure Tfrmven_prc.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;

  { EVENTOS }
  { Limpa Eventos }
  REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
  REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
  REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

  try
    { Addmin }
    EEventAdmin.UnregisterEvents;
    EEventAdmin.Events.Clear;

    { Padrão }
    EEvent.UnregisterEvents;
    EEvent.Events.Clear;

    { Registra Eventos }
    if REC_SHE_DEF.FB_Event <> EmptyStr then
    begin
      { Admin }
      REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
      EEventAdmin.Events.Add(REC_SHE_DEF.FB_EVE_ADM);
      EEventAdmin.RegisterEvents;

      if not RECUsuarios.IS_EVE_ADM then
      begin
        { Padrão }
        REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
        EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
        EEvent.RegisterEvents;
      end;
    end;
  except
    on E: Exception do
    begin
      { Limpa Eventos }
      REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
      REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
      REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

      oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                E.Message              + '.' + #13 + #13 +
                               'Favor entrar em contato com o administrador do sistema.');
    end;
  end;
end;

procedure Tfrmven_prc.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if SIMSalva.Enabled then
  begin
    if (Edicao.State in [dsInsert,dsEdit]) and (not oEmpty(EdicaoROM_TOTA.AsFloat)) then
        Edicao.Post;

    if Edicao.RecNo > 0 then
       case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                              'Deseja Salvar ?',
                               PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
            mrCancel: Abort;
            mrNo    : SIMSalva.Enabled := False;
            mrYes   : try SIMSalva.Click;
                      finally if SIMSalva.Enabled then Abort;
                     end;
       end;
  end;
end;

procedure Tfrmven_prc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmven_prc.FormDestroy(Sender: TObject);
begin
  try
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
             oFTransact(TSheild);
             oFTransact(IBTRA);
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
             Finalize(REC_SHE_DEF);
             FillChar(REC_SHE_DEF,SizeOf(REC_SHE_DEF),0);
           except
             on E: Exception do
             begin
              oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                       'Error Code: '+E.Message+'.'        +#13+
                                        Caption+'.');
             end;
           end;

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
       Frmven_prc := Nil;
     end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmven_prc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SIECancela.Click;
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

procedure Tfrmven_prc.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  i: Word;
begin
  if not Showing then
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

  { ricardo RODAPÉ }
  REC_SHE_DEF.FMainWidth := SBRodape.Width;
  for i  := 0 to SBRodape.Panels.Count - 1 do
  if  i  <> 1 then
  REC_SHE_DEF.FMainWidth   := REC_SHE_DEF.FMainWidth - SBRodape.Panels[i].Width;
  SBRodape.Panels[1].Width := REC_SHE_DEF.FMainWidth - 15;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FMainWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FMainHeight) + '. ' + Self.Caption;
end;

procedure Tfrmven_prc.SIMSalvaClick(Sender: TObject);
begin
  try
    SALVA;
  finally
    if SIMSalva.Enabled then
    Abort;
  end;
  Close;
end;

procedure Tfrmven_prc.BSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmven_prc.SIEIncluiClick(Sender: TObject);
begin
  _Append(Edicao,DBGEdicao,SIEInclui);
end;

procedure Tfrmven_prc.SIEAlteraClick(Sender: TObject);
begin
  _Edit(Edicao,DBGEdicao,SIEAltera);
end;

procedure Tfrmven_prc.SIEExcluiClick(Sender: TObject);
begin
  if oYesNo(handle,'Excluir Item ?') =   mrNo then
  Abort;
  _Delete(Edicao,DBGEdicao,SIEExclui);
end;

procedure Tfrmven_prc.SIESalvaClick(Sender: TObject);
begin
  _Post(Edicao,DBGEdicao,SIESalva);
end;

procedure Tfrmven_prc.SIECancelaClick(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
     _Cancel(Edicao,DBGEdicao,SIECancela)
  else
     Close;   
end;

procedure Tfrmven_prc.EdicaoAfterDelete(DataSet: TDataSet);
begin
  SIMSalva.Enabled := (Tag = 0);
  TSheild.CommitRetaining;
  _Sumario;
end;

procedure Tfrmven_prc.EdicaoAfterInsert(DataSet: TDataSet);
begin
  DBGEdicao.FocusedColumn := DBGEdicaoROM_CPRO.ColIndex;
end;

procedure Tfrmven_prc.EdicaoAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
  if CAD_PRO_IMG.State = dsInactive then CAD_PRO_IMG.Open; { Imagens }
end;

procedure Tfrmven_prc.EdicaoAfterClose(DataSet: TDataSet);
begin
  if CAD_PRO_IMG.State = dsBrowse then CAD_PRO_IMG.Close;
end;

procedure Tfrmven_prc.EdicaoAfterPost(DataSet: TDataSet);
begin
  if Tag = 0 then
  begin
    _Refresh;
    if Edicao.RecNo > 0 then
       SIMSalva.Enabled := True;
  end;     
end;

procedure Tfrmven_prc.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if Edicao.Eof then
  begin
    Edicao.Close;
    Edicao.Open;
    Abort;
  end;
end;

procedure Tfrmven_prc.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crAppStart;
end;

procedure Tfrmven_prc.EdicaoBeforePost(DataSet: TDataSet);
begin
  if EdicaoROM_DPRO.AsString = '' then
  begin
    DBGEdicao.SetFocus;
    DBGEdicao.FocusedColumn := DBGEdicaoROM_DPRO.ColIndex;
    DataBaseError('Descrição do produto não pode ficar em branco !');
  end;

  if (Tag = 0) and (EdicaoROM_CPRO.AsString <> '') and (EdicaoROM_QTDE.AsFloat = 0) then
  begin
    DBGEdicao.SetFocus;
    DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex;
    DataBaseError('Quantidade não informada !');
  end;

  if (EdicaoROM_CDRO.AsInteger = 1) and (EdicaoROM_CDPD.AsInteger = 0) then
  DataBaseError('Para produtos com exclusividade é obrigatório ter programação de venda !');

  if EdicaoROM_CDRO.AsInteger = 0 then
  EdicaoROM_CDRO.Clear;
  if EdicaoROM_CDPD.AsInteger = 0 then
  EdicaoROM_CDPD.Clear;

  EdicaoROM_PTABI.Value := IFThen(oEmpty(EdicaoROM_PTABI.AsCurrency),EdicaoROM_PREC.AsFloat,EdicaoROM_PTABI.AsCurrency);
  EdicaoROM_PTABF.Value := IFThen(oEmpty(EdicaoROM_PTABF.AsCurrency),EdicaoROM_PREC.AsFloat,EdicaoROM_PTABF.AsCurrency);

  if not oEmpty(EdicaoROM_DBAI.AsDateTime) then EdicaoROM_STFI.Value := 'FINALIZADO' else
  if not oEmpty(EdicaoROM_CTNR.AsString)   then
  begin
    EdicaoROM_STFI.Value := 'EMBARCADO';
    if not oEmpty(EdicaoROM_RDES.AsDateTime) then
       EdicaoROM_DEXP.Value := incDay(EdicaoROM_RDES.AsDateTime,EdicaoROM_QEXP.AsInteger);
  end else
  EdicaoROM_STFI.Value := 'PENDENTE';

  EdicaoROM_QTRL.Value := bRET_PECA(EdicaoROM_QTDE.AsFloat,EdicaoROM_QTUN.AsFloat);
  EdicaoROM_RLPD.Value := bRET_PECA(EdicaoROM_QTPD.AsFloat,EdicaoROM_QTUN.AsFloat);

  { Peso Líquido }
  if  LeftStr(EdicaoROM_DUNI.AsString,1) = 'K'  then EdicaoROM_PSLQ.Value := IFThen(EdicaoROM_QTPD.AsFloat > 0,EdicaoROM_QTPD.AsFloat,EdicaoROM_QTDE.AsFloat) else
  if (LeftStr(EdicaoROM_DUNI.AsString,1) = 'M') and (EdicaoROM_REND.AsFloat > 0) then
      EdicaoROM_PSLQ.Value := IFThen(EdicaoROM_QTPD.AsFloat > 0,EdicaoROM_QTPD.AsFloat,EdicaoROM_QTDE.AsFloat) / EdicaoROM_REND.AsFloat else
  if (LeftStr(EdicaoROM_DUNI.AsString,1) = 'M') and (EdicaoROM_METR.AsFloat > 0) and (EdicaoROM_PESO.AsFloat > 0) then
      EdicaoROM_PSLQ.Value := (IFThen(EdicaoROM_QTPD.AsFloat > 0,EdicaoROM_QTPD.AsFloat,EdicaoROM_QTDE.AsFloat) * EdicaoROM_PESO.AsFloat) / EdicaoROM_METR.AsFloat else
  if  EdicaoROM_PESO.AsFloat > 0 then
      EdicaoROM_PSLQ.Value := (EdicaoROM_PESO.AsFloat * IFThen(EdicaoROM_QTPD.AsFloat > 0,EdicaoROM_QTPD.AsFloat,EdicaoROM_QTDE.AsFloat)) / IFThen(EdicaoROM_QTUN.AsFloat > 0,EdicaoROM_QTUN.AsFloat,1);

  { Peso Bruto }
  EdicaoROM_PSBR.Value := EdicaoROM_PSLQ.AsFloat + (IFThen(EdicaoROM_QTPD.AsFloat > 0,EdicaoROM_RLPD.AsInteger,EdicaoROM_QTRL.AsInteger) * IFThen(EdicaoROM_PSCN.AsFloat > 0,EdicaoROM_PSCN.AsFloat,0.02));
end;

procedure Tfrmven_prc.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value       := 0;
  EdicaoROM_FLAG.Value := 0;
  EdicaoROM_CDOC.Value := 0;
  EdicaoROM_VDSC.Value := 0;
  EdicaoROM_QTDE.Value := 0;
  EdicaoROM_QTRL.Value := 1;
  EdicaoROM_QTPD.Value := 0;
  EdicaoROM_RLPD.Value := 0;
  EdicaoROM_CSEP.Value := 0;
  EdicaoROM_DROM.Value := DEDROM.Date;
  EdicaoROM_DEXP.Value := DEDEXP.Date;
  EdicaoROM_STFI.Value := 'PENDENTE';

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(ROM_ITEM),0) FROM PED_COM_ITE');
    ExecQuery;
    EdicaoROM_ITEM.Value := oStrZero(Current.Vars[0].AsInteger + 1,5);
  end;
end;

procedure Tfrmven_prc.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  if Edicao.State = dsBrowse then
  begin
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_CPRO);
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_DPRO);
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_DCO2);
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_DSEP);

    //SISaldo.Enabled := ((EdicaoROM_STFI.AsString = 'PENDENTE') and (EdicaoROM_QTPD.AsFloat > 0) and (EdicaoROM_QTDE.AsFloat > EdicaoROM_QTPD.AsFloat));
  end;
end;

procedure Tfrmven_prc.DTSEdicaoStateChange(Sender: TObject);
begin
  oState(Edicao,SBEdicao);
end;

procedure Tfrmven_prc.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if Pos('FINALIZADO',ANode.Values[DBGEdicaoROM_STFI.Index]) > 0 then
    begin
      AFont.Color := clwhite;
      AColor      := $00A4A400;
    end else
    if Pos('EMBARCADO',ANode.Values[DBGEdicaoROM_STFI.Index]) > 0 then
    begin
      AFont.Color := clBlack;
      AColor      := $0080FFFF;
    end else
    if Pos('CANCELADO',ANode.Values[DBGEdicaoROM_STFI.Index]) > 0 then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;

    if not VarIsNull(ANode.Values[6]) then
       if ((ANode.Values[6] <> 0) and (AColumn = DBGEdicaoROM_CDRO) or (AColumn = DBGEdicaoROM_CDPD)) then
       begin
         AFont.Color := clBlack;
         AColor      := $00BEEFF8;
       end;
  end;
end;

procedure Tfrmven_prc.DBGEdicaoDblClick(Sender: TObject);
begin
  SIEAltera.Click;
end;

procedure Tfrmven_prc.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_insert: SIEInclui.Click;
       vk_return: if Edicao.State = dsBrowse then SIEAltera.Click else
                     if EdicaoROM_IPRO.AsInteger > 0 then
                     begin
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_CPROROM_DPRO') > 0 then
                              DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex else
                       if DBGEdicao.FocusedColumn >= 12 then
                       begin
                         Edicao.Next; if Edicao.Eof then Edicao.Append;
                       end else
                       DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn + 1;
                     end;
       vk_delete: SIEExclui.Click;
  end;
end;

procedure Tfrmven_prc.PESQUISA_TIPO(pesq,chave: string);
begin
  with ConsultaAux do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_FATU,VEN_PDSC,VEN_STVE,VEN_DPAG,VEN_QTPC,VEN_PREC,VEN_QTSP,VEN_BAIP,VEN_NFEP,VEN_TINT,VEN_AGRP,VEN_BEST,VEN_DESC,VEN_PACR,VEN_PTNG,VEN_TIPO,VEN_QPRC FROM TAB_PED');
    SQL.Add('WHERE  '+pesq+' = '''+chave+'''');
    Open;

    edfatu.Text := fields[0].AsString;
    cbstco.Text := fields[2].AsString;
    cbdpag.Text := fields[3].AsString;
    cbdpag.Hint := fields[3].AsString;
    cbprec.Text := fields[5].AsString;
    edqtsp.Text := fields[6].AsString;
    edqtpc.Text := fields[4].AsString;
    edtint.Text := fields[9].AsString;
    edagrp.Text := fields[10].AsString;
    edbest.Text := fields[11].AsString;
    edptng.Text := fields[14].AsString;
    cbstpd.Text := fields[15].AsString;
    cbstpd.Tag  := fields[16].AsInteger;
    edstpd.Text := cbstpd.Text;

    if fields[0].AsString <> '1' then
    begin
      cbdpag.Text := 'SEM COBRANÇA';
      cbdpag.Hint := 'SEM COBRANÇA';
      cbstco.Text := 'SEM COBRANÇA';
    end;

    if (cbdpag.Text <> 'SEM COBRANÇA') then
    PESQUISA_FPAGTO('F',fields[3].AsString);
  end;

  RECParametros.PED_PRECO := CBPREC.Text;
end;

procedure Tfrmven_prc.SALVA;
var
  Id  : Integer;
  STFI: String;
begin
  if Edicao.State in [dsEdit,dsInsert] then
     if ((oEmpty(EdicaoROM_QTDE.AsFloat)) or (oEmpty(EdicaoROM_UNIT.AsFloat)) or (oEmpty(EdicaoROM_TOTA.AsFloat))) then
          Edicao.Cancel else Edicao.Post;
  ActiveControl := Nil;

  if (Edicao.Fields[0].IsNull) and (cbstpd.Text <> 'ABATIMENTO')then
  begin
    messageBox(handle,'Pedido sem itens selecionados !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbstpd.Text = '' then
  begin
    cbstpd.SetFocus;
    messageBox(handle,'Tipo de pedido não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if cbstco.Text = '' then
  begin
    cbstco.SetFocus;
    messageBox(handle,'Tipo de cobrança não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;
  
  if CEIDCD.Value = 0 then
  begin
    CEIDCD.SetFocus;
    messageBox(handle,'Fornecedor não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edccom.Text = '' then
  begin
    cbdcom.SetFocus;
    messageBox(handle,'Comprador não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcrep.Text = '' then
  begin
    cbdrep.SetFocus;
    messageBox(handle,'Representante não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if edcpag.Text = '' then
  begin
    cbdpag.SetFocus;
    messageBox(handle,'Forma de pagamento não selecionado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if (oEmpty(PEDECT.Text)) or (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('SEM FRETE',PEDECT.Text) > 0) then
  IEMFRT.Text := '9';

  if oEmpty(IEMFRT.Text) then
  oException(IEMFRT,'Modalidade de Frete não Informada !');
  
  with consulta do
  begin
    if not oEmpty(PEDECT.Text) then
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_TRA');
      SQL.Add('WHERE  TRA_FANT = '''+PEDECT.Text+'''');
      Open;
      PEDECT.Tag := Fields[0].AsInteger;
    end;
  
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PED');
    SQL.Add('WHERE  VEN_TIPO = '''+cbstpd.Text+'''');
    SQL.Add('AND    VEN_STA  = ''1''');
    Open;

    if fields[0].IsNull then
    begin
      cbstpd.SetFocus;
      messageBox(handle,'Tipo de pedido não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_COB');
    SQL.Add('WHERE  VEN_TIPO = '''+cbstco.Text+'''');
    SQL.Add('AND    VEN_STA  = ''1''');
    Open;

    if fields[0].IsNull then
    begin
      cbstco.SetFocus;
      messageBox(handle,'Tipo de cobrança não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  with tab_pag do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_PAG');
    SQL.Add('WHERE  PAG_DPAG = '''+cbdpag.Text+'''');
    Open;

    if fields[0].IsNull then
    begin
      if cbdpag.Enabled then
      cbdpag.SetFocus;
      messageBox(handle,'Condição de pagamento não cadastrada !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if ((cbstco.Text = 'DINHEIRO')       and (tab_pagPAG_D001.AsInteger >  1)) or
       ((cbstco.Text = 'CHEQUE A VISTA') and (tab_pagPAG_D002.AsInteger >  0)) or
       ((cbstco.Text = 'VALE')           and (tab_pagPAG_D001.AsInteger = 0)) then
    begin
      cbstco.SetFocus;
      messageBox(handle,'Tipo de cobrança inválida para essa condição de pagamento !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;

  if not psq_for.Active then
  psq_for.Open;
  if psq_for.Fields[0].IsNull then
  begin
    EDDECD.SetFocus;
    messageBox(handle,'Fornecedor não cadastrado !',PChar(Self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  with consulta do
  if (edcdro.Text = '0') or (edcdro.Text = '') or (edcdro.Text = ' ') then
  begin
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(ID_NO_'+oREPZero('PED_COM_CAB','_',RECParametros.EP_ID,3)+',0) FROM RDB$DATABASE');
    Open;
    edcdro.Text := inttostr(fields[0].AsInteger+1);
             ID := 0;
  end else   ID := strtoint(edcdro.Text);

  eddero.Text := IFThen((eddero.Text = '0') or (eddero.Text = ''),edcdro.Text,eddero.Text);
  edcdcx.Text := IFThen((edcdcx.Text = '0') or (edcdcx.Text = ''),RECParametros.CDCX,edcdcx.Text);

  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT COUNT(DISTINCT ROM_STFI)');
    SQL.Add('FROM   PED_COM_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Prepare;
    Open;
    if Fields[0].AsInteger = 1 then
    begin
      SQL.Clear;
      SQL.Add('SELECT ROM_STFI');
      SQL.Add('FROM   PED_COM_ITE');
      SQL.Add('WHERE  ROM_FLAG = 0');
      Prepare;
      Open;
      STFI := Fields[0].AsString;
    end else
    begin
      SQL.Clear;
      SQL.Add('SELECT ROM_STFI');
      SQL.Add('FROM   PED_COM_ITE');
      SQL.Add('WHERE  ROM_FLAG = 0');
      SQL.Add('AND    ROM_STFI <> ''PENDENTE''');
      Prepare;
      Open;
      STFI := Fields[0].AsString+' PARCIAL'
    end;
  end;

  Edicao.First;
  try
    Tag := 1;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+oREPZero('PED_COM_ITE','_',RECParametros.EP_ID,3));
      SQL.Add('WHERE  ROM_CCAB = '''+edcdro.Text+'''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_PRC');
      SQL.Add('WHERE  EP_ID = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    IDPK  = ''' + EDCDRO.Text         + '''');
      ExecQuery;
    end;

    Edicao.DisableControls;
    Edicao.First;
    while not Edicao.Eof do
    begin
      ibSP.StoredProcName := 'SP_PED_COM_ITE';
      ibSP.Prepare;

      ibSP.ParamByName('ped' ).Value := oREPZero('PED_COM_ITE','_',RECParametros.EP_ID,3);
      ibSP.ParamByName('ID'  ).Value := 0;
      ibSP.ParamByName('IDEP').Value := IEIDEP.Text;
      ibSP.ParamByName('CCAB').Value := edcdro.Text;
      ibSP.ParamByName('CDPD').Value := EdicaoROM_CDPD.AsInteger;
      ibSP.ParamByName('ITEM').Value := EdicaoROM_ITEM.AsString;
      ibSP.ParamByName('CPRO').Value := EdicaoROM_IPRO.AsInteger;
      ibSP.ParamByName('DPRO').Value := EdicaoROM_DPRO.AsString;
      ibSP.ParamByName('NFCI').Value := EdicaoROM_GCOR.AsString;
      ibSP.ParamByName('DUNI').Value := EdicaoROM_DUNI.AsString;
      ibSP.ParamByName('QTDE').Value := EdicaoROM_QTDE.AsFloat;
      ibSP.ParamByName('QTRL').Value := EdicaoROM_QTRL.AsInteger;
      ibSP.ParamByName('QTPD').Value := EdicaoROM_QTPD.AsFloat;
      ibSP.ParamByName('RLPD').Value := EdicaoROM_RLPD.AsInteger;
      ibSP.ParamByName('UNIT').Value := EdicaoROM_UNIT.AsFloat;
      ibSP.ParamByName('PREC').Value := EdicaoROM_PREC.AsFloat;
      ibSP.ParamByName('VDSC').Value := EdicaoROM_VDSC.AsFloat;
      ibSP.ParamByName('TOTA').Value := EdicaoROM_TOTA.AsFloat;
      ibSP.ParamByName('DBAI').Value := EdicaoROM_DBAI.AsDateTime;
      ibSP.ParamByName('DROM').Value := EdicaoROM_DROM.AsDateTime;
      ibSP.ParamByName('QPRD').Value := EdicaoROM_QPRD.AsInteger;
      ibSP.ParamByName('DPRD').Value := EdicaoROM_DPRD.AsDateTime;
      ibSP.ParamByName('RPRD').Value := EdicaoROM_RPRD.AsDateTime;
      ibSP.ParamByName('QEMB').Value := EdicaoROM_QEMB.AsInteger;
      ibSP.ParamByName('DEMB').Value := EdicaoROM_DEMB.AsDateTime;
      ibSP.ParamByName('REMB').Value := EdicaoROM_REMB.AsDateTime;
      ibSP.ParamByName('QDES').Value := EdicaoROM_QDES.AsInteger;
      ibSP.ParamByName('DDES').Value := EdicaoROM_DDES.AsDateTime;
      ibSP.ParamByName('RDES').Value := EdicaoROM_RDES.AsDateTime;
      ibSP.ParamByName('QEXP').Value := EdicaoROM_QEXP.AsInteger;
      ibSP.ParamByName('DEXP').Value := EdicaoROM_DEXP.AsDateTime;
      ibSP.ParamByName('CTNR').Value := EdicaoROM_CTNR.AsString;
      ibSP.ParamByName('OBSE').Value := EdicaoROM_OBSE.AsString;
      ibSP.ParamByName('DGCP').Value := EdicaoROM_DCO2.AsString;
      ibSP.ParamByName('PCOR').Value := EdicaoROM_PCOR.AsString;
      ibSP.ParamByName('IDCOL').Value := EdicaoROM_CSEP.AsInteger;
      ibSP.ParamByName('DECOL').Value := EdicaoROM_DSEP.AsString;
      ibSP.ParamByName('psbr').Value := EdicaoROM_PSBR.AsFloat;
      ibSP.ParamByName('pslq').Value := EdicaoROM_PSLQ.AsFloat;
      ibSP.ParamByName('stav').Value := EdicaoROM_STFI.AsString;
      ibSP.ExecProc;
      IBsP.UnPrepare;

      if Pos(LeftStr(EdicaoROM_STFI.AsString,3),'FINCAN') = 0 then
      begin
        ibSP.StoredProcName := 'SP_CAD_PRO_PRC';
        ibSP.Prepare;
        ibSP.ParamByName('AIDEP').Value := IEIDEP.Text;
        ibSP.ParamByName('ACDFK').Value := edcdro.Text;
        ibSP.ParamByName('ADEFK').Value := eddero.Text;
        ibSP.ParamByName('ADTFK').Value := DEDROM.Date;
        ibSP.ParamByName('ADTPC').Value := IFThen(EdicaoROM_DBAI.AsDateTime > 0,EdicaoROM_DBAI.AsDateTime,EdicaoROM_DEXP.AsDateTime);
        ibSP.ParamByName('ADTRD').Value := IFThen(EdicaoROM_RDES.AsDateTime > 0,EdicaoROM_RDES.AsDateTime,EdicaoROM_DDES.AsDateTime);
        ibSP.ParamByName('AIDCF').Value := CEIDCD.Text;
        ibSP.ParamByName('ADECF').Value := EDDECD.Text;
        ibSP.ParamByName('AIDCO').Value := edccom.Text;
        ibSP.ParamByName('ADECO').Value := cbdcom.Text;
        ibSP.ParamByName('AIDCP').Value := EdicaoROM_IPRO.AsInteger;
        ibSP.ParamByName('AQTDE').Value := IFThen(EdicaoROM_QTPD.AsFloat   > 0,EdicaoROM_QTPD.AsFloat  ,EdicaoROM_QTDE.AsFloat);
        ibSP.ParamByName('AQTRL').Value := IFThen(EdicaoROM_RLPD.AsInteger > 0,EdicaoROM_RLPD.AsInteger,EdicaoROM_QTRL.AsInteger);
        ibSP.ParamByName('AVUPC').Value := EdicaoROM_UNIT.AsFloat;
        ibSP.ParamByName('ACTNR').Value := EdicaoROM_CTNR.AsString;
        ibSP.ParamByName('ASTFI').Value := EdicaoROM_STFI.AsString;
        ibSP.ParamByName('DECP' ).Value := EdicaoROM_DPRO.AsString;
        ibSP.ParamByName('DGCP' ).Value := EdicaoROM_DCO2.AsString;
        ibSP.ExecProc;
        IBSP.UnPrepare;
      end;

      uSP_CAD_PRO_EST_LAN(IBSP,RECParametros.EP_ID,EdicaoROM_IPRO.AsInteger);
      Edicao.Next;
    end;
    Edicao.EnableControls;

    ibSP.StoredProcName := 'SP_PED_COM_CAB';
    ibSP.Prepare;

    ibSP.ParamByName('ped').Value  := oREPZero('PED_COM_CAB','_',RECParametros.EP_ID,3);
    ibSP.ParamByName('id').Value   := ID;
    ibSP.ParamByName('idep').Value := IEIDEP.Text;
    ibSP.ParamByName('cdcx').Value := edcdcx.Text;
    ibSP.ParamByName('dero').Value := eddero.Text;
    ibSP.ParamByName('stpd').Value := cbstpd.Text;
    ibSP.ParamByName('stco').Value := cbstco.Text;
    ibSP.ParamByName('stfi').Value := stfi;
    ibSP.ParamByName('drom').Value := DEDROM.Date;
    ibSP.ParamByName('hrom').Value := Time;
    ibSP.ParamByName('dbai').Value := IFThen(EdicaoROM_DBAI.AsDateTime > 0,EdicaoROM_DBAI.AsDateTime,0);
    ibSP.ParamByName('dexp').Value := IFThen(EdicaoROM_DEXP.AsDateTime > 0,EdicaoROM_DEXP.AsDateTime,0);
    ibSP.ParamByName('dprd').Value := IFThen(EdicaoROM_DPRD.AsDateTime > 0,EdicaoROM_DPRD.AsDateTime,0);
    ibSP.ParamByName('rprd').Value := IFThen(EdicaoROM_RPRD.AsDateTime > 0,EdicaoROM_RPRD.AsDateTime,0);
    ibSP.ParamByName('demb').Value := IFThen(EdicaoROM_DEMB.AsDateTime > 0,EdicaoROM_DEMB.AsDateTime,0);
    ibSP.ParamByName('remb').Value := IFThen(EdicaoROM_REMB.AsDateTime > 0,EdicaoROM_REMB.AsDateTime,0);
    ibSP.ParamByName('ddes').Value := IFThen(EdicaoROM_DDES.AsDateTime > 0,EdicaoROM_DDES.AsDateTime,0);
    ibSP.ParamByName('rdes').Value := IFThen(EdicaoROM_RDES.AsDateTime > 0,EdicaoROM_RDES.AsDateTime,0);
    ibSP.ParamByName('ctnr').Value := PECTNR.Text;
    ibSP.ParamByName('hexp').Value := time;
    ibSP.ParamByName('cexp').Value := 0;
    ibSP.ParamByName('cfor').Value := CEIDCD.Text;
    ibSP.ParamByName('ccom').Value := edccom.Text;
    ibSP.ParamByName('crep').Value := edcrep.Text;
    ibSP.ParamByName('cpag').Value := edcpag.Text;
    ibSP.ParamByName('qtve').Value := CEQuantidade.Value;
    ibSP.ParamByName('rlve').Value := CEPeca.Value;
    ibSP.ParamByName('tdsc').Value := LATDesc.Caption;
    ibSP.ParamByName('pdsc').Value := CEPDesc.Value;
    ibSP.ParamByName('cdsc').Value := 0;
    ibSP.ParamByName('adsc').Value := 0;
    ibSP.ParamByName('tsde').Value := CESubTotal.Value;
    ibSP.ParamByName('tcde').Value := CETotal.Value;
    ibSP.ParamByName('psbr').Value := CEPesoB.Value;
    ibSP.ParamByName('pslq').Value := CEPesoL.Value;
    ibSP.ParamByName('vfrt').Value := CEVFRT.Value;
    ibSP.ParamByName('mfrt').Value := IEMFRT.Text;
    ibSP.ParamByName('dtra').Value := PEDECT.Text;
    ibSP.ParamByName('conc').Value := cbcred.Text;
    ibSP.ParamByName('obse').Value := edobse.Text;
    ibSP.ParamByName('sta').Value  := '0';
    ibSP.ParamByName('comi').Value := '0';
    ibSP.ExecProc;
    IBSP.UnPrepare;

    oRTransact(IBTra);
    oAviso(handle,'Pedido '+eddero.Text+' '+IFThen(ID = 0,'Registrado','Atualizado')+' com Sucesso !');

    SIMSalva.Enabled := False;
    SIMSalva.Tag     := 1;

    ACTExecEvent.Execute;
    Close;
  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollback);
      oRTransact(TSheild,ltRollback);

      Tag := 0;
      SIMSalva.Enabled := True;
      oException(Nil,'Falha ao tentar salvar pedido !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure Tfrmven_prc.PESQUISA_COMPRADOR(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  Exit;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT USU_CUSU,USU_DUSU,USU_COMP,USU_STAV FROM CAD_USU');

    if pesq = 'C' then
    SQL.Add('WHERE  USU_CUSU = '''+chave+'''')
    else if pesq = 'F' then
    SQL.Add('WHERE  USU_DUSU = '''+chave+'''');
    Open;

    if fields[0].IsNull then
    begin
      edccom.Text := '';
      cbdcom.Text := '';

      cbdcom.SetFocus;
      messageBox(handle,'Comprador não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);

      Abort;
    end;

    if fields[2].AsInteger = 0 then
    begin
      edccom.Text := '';
      cbdcom.Text := '';

      cbdcom.SetFocus;
      messageBox(handle,PChar('Comprador '+fields[1].AsString+' não está habilitado para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if fields[3].AsString <> 'A' then
    begin
      edccom.Text := '';
      cbdcom.Text := '';

      cbdcom.SetFocus;
      if fields[3].AsString = 'I' then
      messageBox(handle,PChar('Login do Comprador '+fields[1].AsString+' está inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK) else
      if fields[3].AsString = 'S' then
      messageBox(handle,PChar('Login do Comprador '+fields[1].AsString+' está suspenso !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    edccom.Text := fields[0].AsString;
    cbdcom.Text := fields[1].AsString;
  end;
end;

procedure Tfrmven_prc.PESQUISA_REPRESENTANTE(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  Exit;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,REP_FANT,REP_STA,REP_STAV FROM CAD_REP');
    if pesq = 'C' then
       SQL.Add('WHERE  ID = '''+chave+'''')
    else if pesq = 'F' then
       SQL.Add('WHERE  REP_FANT = '''+chave+'''');
    Open;

    if fields[0].IsNull then
    begin
      edcrep.Text := '';
      cbdrep.Text := '';

      cbdrep.SetFocus;
      messageBox(handle,'representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if fields[2].AsString <> '0' then
    begin
      edcrep.Text := '';
      cbdrep.Text := '';

      cbdrep.SetFocus;
      messageBox(handle,PChar('Representante '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if fields[3].AsString <> 'A' then
    begin
      edcrep.Text := '';
      cbdrep.Text := '';

      cbdrep.SetFocus;
      if fields[3].AsString = 'I' then
         messageBox(handle,PChar('Representante '+fields[1].AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
      else if fields[3].AsString = 'PRÉ' then
         messageBox(handle,PChar('Representante '+fields[1].AsString+' aguardando autorização para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);

      Abort;
    end;
    edcrep.Text := fields[0].AsString;
    cbdrep.Text := fields[1].AsString;
  end;
end;

procedure Tfrmven_prc.PESQUISA_FPAGTO(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
  Exit;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,PAG_DPAG,PAG_STA,PAG_PARC,PAG_DUPL FROM TAB_PAG');
    if pesq = 'C' then
       SQL.Add('WHERE  ID = '''+chave+'''')
    else if pesq = 'F' then
       SQL.Add('WHERE  PAG_DPAG = '''+chave+'''');
    Open;

    if fields[0].IsNull then
    begin
      edcpag.Text := '';
      cbdpag.Text := '';

      cbdpag.SetFocus;
      messageBox(handle,'Nome da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if fields[2].AsString <> '0' then
    begin
      edcpag.Text := '';
      cbdpag.Text := '';

      cbdpag.SetFocus;
      messageBox(handle,PChar('Forma de pagamento '+fields[1].AsString+' enviada para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    edcpag.Text := fields[0].AsString;
    cbdpag.Text := fields[1].AsString;

    if fields[4].AsString = 'SIM' then
    cbstco.Text := 'BANCÁRIO';
  end;
end;

procedure Tfrmven_prc.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM PED_COM_ITE');
    ExecSQL;
  end;

  with Edicao do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM PED_COM_ITE');
    SelectSQL.Add('WHERE    ROM_FLAG = 0');
    SelectSQL.Add('ORDER BY ID');
    Prepare;
  end;
  oRTransact(TSheild);
end;

procedure Tfrmven_prc.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  if cbstpd.Text <> 'ABATIMENTO' then
  key := #0;
end;

procedure Tfrmven_prc.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_prc.cbdcomExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_COMPRADOR('F',cbdcom.Text);
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_prc.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text := '';
    Abort;
  end;

  PESQUISA_REPRESENTANTE('C',edcrep.Text);
end;

procedure Tfrmven_prc.cbdrepExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    PESQUISA_REPRESENTANTE('F',cbdrep.Text);
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;


procedure Tfrmven_prc.edcpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpag.Text = '' then
  begin
    cbdpag.Text := '';
    Abort;
  end;
  
  PESQUISA_FPAGTO('C',edcpag.Text);
end;

procedure Tfrmven_prc.cbstpdExit(Sender: TObject);
var Ctrl: TWinControl;
begin
  try
    if edstpd.Text <> cbstpd.Text then
    PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_prc.cbcredValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if RECUsuarios.Id = 66 then
     PECTNR.SetFocus;
end;

procedure Tfrmven_prc.DBGEdicaoROM_QTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(DBGEdicao.EditingText)) and (Edicao.State in [dsInsert,dsEdit]) then
  try
    EdicaoROM_QTDE.Value := StrToFloat(DBGEdicao.EditingText);
    _CheckPreco;
  except
    raise exception.Create('Quantidade Inválida !');
  end;
end;

procedure Tfrmven_prc.DBGEdicaoROM_CPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoROM_CPRO.AsString) then
  begin
    EdicaoROM_CPRO.Value := DBGEdicao.EditingText;
    _CPPSQ(oRETCodigo(EdicaoROM_CPRO.AsString),'CP.PRO_CPRO');

    if EdicaoROM_IPRO.AsInteger = 0 then
       EdicaoROM_CPRO.Value := EmptyStr;
  end;
end;

procedure Tfrmven_prc.DBGEdicaoROM_DPROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  
  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoROM_DPRO.AsString) then
  begin
    EdicaoROM_DPRO.Value := DBGEdicao.EditingText;
    _CPPSQ(DBGEdicao.EditingText,'CP.PRO_DPRO');
    if EdicaoROM_IPRO.AsInteger = 0 then
       EdicaoROM_DPRO.Value := EmptyStr;
  end;
end;

procedure Tfrmven_prc.cbstcoExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if (copy(cbstco.Text,1,5) = 'DEVOL') or (copy(cbstco.Text,1,5) = 'ABATI') then
    begin
      cbstco.Text := '';
      raise exception.Create('Tipo de cobrança inválido !'+#13+'Para devoluções ou abatimentos utilize o campo TIPO DE PEDIDO');
    end;  
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmven_prc.tsoutShow(Sender: TObject);
begin
  PECTNR.SetFocus;
end;

procedure Tfrmven_prc.psq_forAfterOpen(DataSet: TDataSet);
begin
  edFOR_DCAD.Text := formatDateTime('dd/mm/yyyy',psq_forFOR_DCAD.AsDateTime);
  edFOR_DULT.Text := formatDateTime('dd/mm/yyyy',psq_forFOR_DULT.AsDateTime);
  edFOR_VULT.Text := formatFloat('R$ #,0.00'    ,psq_forFOR_VULT.AsFloat);
end;

procedure Tfrmven_prc._Append(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State = dsBrowse) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Append;
  end;
end;

procedure Tfrmven_prc._Edit(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State = dsBrowse) and (not ADSOrigem.Fields[0].IsNull) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Edit;
  end;
end;
procedure Tfrmven_prc._Delete(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State = dsBrowse) and (not ADSOrigem.Fields[0].IsNull) then
  begin
    ADBGOrigem.SetFocus;

    ADSOrigem.Edit;
    ADSOrigem.FieldByName('ROM_FLAG').Value := 1;
    ADSOrigem.Post;
  end;
end;
procedure Tfrmven_prc._Post(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State in [dsInsert,dsEdit]) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Post;
  end;
end;

procedure Tfrmven_prc._Cancel(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State in [dsInsert,dsEdit]) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Cancel;
  end else
  BSair.Click;
end;

procedure Tfrmven_prc.LATDescClick(Sender: TObject);
begin
  LATDesc.Caption := IFThen(LATDesc.Caption = '%','$','%');
  LATDesc.Refresh;

  _Refresh;
end;

procedure Tfrmven_prc._Sumario;
begin
  if Tag = 0 then
  begin
    if cbstpd.Text <> 'ABATIMENTO' then
    with Consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT COALESCE(SUM(ROM_QTDE),0),COALESCE(SUM(ROM_QTRL),0),COALESCE(SUM(ROM_PSBR),0),COALESCE(SUM(ROM_PSLQ),0),COALESCE(SUM(ROM_TSDE),0),COALESCE(SUM(ROM_TOTA),0),COALESCE(SUM(ROM_VIPI),0)');
      SQL.Add('FROM   PED_COM_ITE');
      SQL.Add('WHERE  ROM_FLAG = 0');
      Open;
      CEQuantidade.Value := Fields[0].AsFloat;
      CEPeca.Value       := Fields[1].AsFloat;
      CEPesoB.Value      := Fields[2].Value;
      CEPesoL.Value      := Fields[3].Value;
      CESubTotal.Value   := Fields[4].Value;
      CETotal.Value      := Fields[5].Value;
      CEVIPI.Value       := Fields[6].Value;
    end else
    CETotal.Value    := CESubTotal.Value;
    CESubTotal.Value := IFThen((cbstpd.Text = 'DEVOLUÇÃO') or (cbstpd.Text = 'ABATIMENTO'),CESubTotal.Value*-1,CESubTotal.Value);
    CETotal.Value    := (CETotal.Value - IFThen(LATDesc.Caption = '%',((CETotal.Value * CEPDesc.Value) / 100),CEPDesc.Value)) + CEVFRT.Value;
    CETotal.Value    := IFThen((cbstpd.Text = 'DEVOLUÇÃO') or (cbstpd.Text = 'ABATIMENTO'),CETotal.Value*-1,CETotal.Value);
  end;  
end;

procedure Tfrmven_prc._Refresh(ACommit: Boolean = True);
var
  BMRecord: TBookMark;
begin
  BMRecord := Nil;
  if (Tag = 0) and (Edicao.RecNo > 0) then
  BMRecord := Edicao.GetBookmark;

  oRTransact(TSheild);
  if (BMRecord <> Nil) and (Edicao.RecNo > 0) then
  begin
    Edicao.GotoBookmark(BMRecord);
    Edicao.FreeBookmark(BMRecord);
  end else Edicao.Last;
  Edicao.EnableControls;

  Tag := 0;
  _Sumario;
end;

procedure Tfrmven_prc.CESubTotalValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _Refresh;
end;

procedure Tfrmven_prc.CESubTotalKeyPress(Sender: TObject; var Key: Char);
begin
  if cbstpd.Text <> 'ABATIMENTO' then
  key := #0;
end;

procedure Tfrmven_prc.CEQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_prc.edobseExit(Sender: TObject);
begin
  if RECUsuarios.Id = 66 then
  SIEInclui.Click;
end;

procedure Tfrmven_prc.cbdpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PESQUISA_FPAGTO('F',cbdpag.Text);
end;

procedure Tfrmven_prc.edderoChange(Sender: TObject);
begin
  SIMSalva.Enabled := (Tag = 0);
end;

procedure Tfrmven_prc.PEDECTChange(Sender: TObject);
begin
  SIMSalva.Enabled := (Tag = 0);
  
  if Pos('NOSSO CARRO',PEDECT.Text) > 0 then
  IEMFRT.Text := '3' else
  if Pos('PRÓPRIO',PEDECT.Text) > 0 then
  IEMFRT.Text := '4' else
  if (oEmpty(PEDECT.Text)) or (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('SEM FRETE',PEDECT.Text) > 0) then
  IEMFRT.Text := '9';
end;

procedure Tfrmven_prc.EdicaoROM_QTDEValidate(Sender: TField);
begin
  EdicaoROM_TSDE.Value := RoundTO(EdicaoROM_QTDE.AsFloat  * EdicaoROM_PREC.AsFloat,-2);
  EdicaoROM_TOTA.Value := RoundTO(EdicaoROM_QTDE.AsFloat  * EdicaoROM_UNIT.AsFloat,-2);
  EdicaoROM_VIPI.Value := RoundTO((EdicaoROM_TOTA.AsFloat * EdicaoROM_PIPI.AsFloat) /100,-2);
end;

procedure Tfrmven_prc.EdicaoROM_VDSCValidate(Sender: TField);
begin
  if Tag = 0 then
     EdicaoROM_UNIT.AsFloat := EdicaoROM_PREC.AsFloat - ((EdicaoROM_PREC.AsFloat*EdicaoROM_VDSC.AsFloat)/100);
end;

procedure Tfrmven_prc.DBGEdicaoROM_UNITValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) then
  begin
    EdicaoROM_PREC.AsFloat := oTextToValor(DBGEdicao.EditingText,9);
    _CheckPreco;
  end;
end;

procedure Tfrmven_prc.EdicaoROM_QPRDValidate(Sender: TField);
begin
  if Tag = 0 then
     if EdicaoROM_QPRD.AsInteger = 0 then
     begin
       EdicaoROM_DPRD.AsString := '';
       EdicaoROM_QEMB.Value    := 0;
       EdicaoROM_QDES.Value    := 0;
       EdicaoROM_QEXP.Value    := 0;
     end else
     begin
       EdicaoROM_DPRD.Value := incDay(EdicaoROM_DROM.AsDateTime,EdicaoROM_QPRD.AsInteger);
       EdicaoROM_QEMB.Value := 15;
       EdicaoROM_QDES.Value := 35;
       EdicaoROM_QEXP.Value := 15;
     end;
end;

procedure Tfrmven_prc.EdicaoROM_QEMBValidate(Sender: TField);
begin
  if Tag = 0 then
     if EdicaoROM_QEMB.AsInteger = 0 then
        EdicaoROM_DEMB.AsString := '' else
        EdicaoROM_DEMB.Value    := incDay(EdicaoROM_DPRD.AsDateTime,EdicaoROM_QEMB.AsInteger);
end;

procedure Tfrmven_prc.EdicaoROM_QDESValidate(Sender: TField);
begin
  if Tag = 0 then
     if EdicaoROM_QDES.AsInteger = 0 then
        EdicaoROM_DDES.AsString := '' else
        EdicaoROM_DDES.Value    := incDay(EdicaoROM_DEMB.AsDateTime,EdicaoROM_QDES.AsInteger);
end;

procedure Tfrmven_prc.EdicaoROM_QEXPValidate(Sender: TField);
begin
  if Tag = 0 then
     if EdicaoROM_QEXP.AsInteger = 0 then
        EdicaoROM_DEXP.AsString := '' else
        EdicaoROM_DEXP.Value    := incDay(EdicaoROM_DDES.AsDateTime,EdicaoROM_QEXP.AsInteger);
end;

procedure Tfrmven_prc.EdicaoROM_QTPDValidate(Sender: TField);
begin
  if Tag = 0 then
     if EdicaoROM_QTPD.AsInteger = 0 then
     begin
       EdicaoROM_DBAI.AsString := '';
       EdicaoROM_RPRD.AsString := '';
       EdicaoROM_REMB.AsString := '';
       EdicaoROM_RDES.AsString := '';
     end;
end;

procedure Tfrmven_prc.DBGEdicaoROM_CDROChange(Sender: TObject);
var
  NewString: String;
  ClickedOK: Boolean;
begin
  if Edicao.State in [dsEdit,dsInsert] then
  begin
    if DBGEdicaoROM_CDRO.Field.AsInteger > 0 then
    begin
      EdicaoROM_CDRO.Value := 0;
      EdicaoROM_CDPD.Value := 0;
    end else
    begin
      ClickedOK := InputQuery('Programação Exclusiva','Entre com o número do pedido', NewString);
      if (ClickedOK) and (not oEmpty(NewString)) then
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT PED_PRG_CAB.ID,PED_PRG_CAB.ROM_DROM,CLI_FANT,USU_DUSU');
        SQL.Add('FROM   CAD_CLI,CAD_USU,'+oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3)+' "PED_PRG_CAB"');
        SQL.Add('WHERE  PED_PRG_CAB.ROM_CCLI = CAD_CLI.ID');
        SQL.Add('AND    PED_PRG_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
        SQL.Add('AND    PED_PRG_CAB.ROM_DERO = '''+NewString+'''');
        Open;
        if Fields[0].AsInteger > 0 then
        begin
          NewString := Fields[0].AsString;
          oAviso(Handle,'Pedido: '  +Consulta.Fields[0].AsString+#13+
                        'Data: '    +FormatDateTime('dd/mm/yy',Consulta.Fields[1].AsDateTime)+#13+
                        'Cliente: ' +Consulta.Fields[2].AsString+#13+
                        'Vendedor: '+Consulta.Fields[3].AsString);
        end else
        oAviso(Handle,'Número do pedido programado não encontrado !');

        EdicaoROM_CDRO.Value    := 1;
        EdicaoROM_CDPD.AsString := NewString;
      end else
      begin
        EdicaoROM_CDRO.Value := 0;
        EdicaoROM_CDPD.Value := 0;
      end;
    end;
    Edicao.Post;
  end;
end;

procedure Tfrmven_prc.EdicaoROM_RDESValidate(Sender: TField);
begin
  if Tag = 0 then
     EdicaoROM_DEXP.Value := EdicaoROM_RDES.AsDateTime;
end;

procedure Tfrmven_prc.PECTNRValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    Tag := 1;
    Edicao.DisableControls;
    Edicao.First;
    while not Edicao.Eof do
    begin
      Edicao.Edit;
      EdicaoROM_CTNR.Value := PECTNR.Text;
      Edicao.Post;
      Edicao.Next;
    end;
  finally
    _Refresh;
    Edicao.Last;
  end;
end;

procedure Tfrmven_prc.DEDROMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oEmpty(DEDROM.Date) then
  try
    Tag := 1;

    if EdicaoROM_QPRD.AsInteger+EdicaoROM_QEMB.AsInteger+EdicaoROM_QDES.AsInteger+EdicaoROM_QEXP.AsInteger > 0 then
    DEDEXP.Date := incDay(DEDROM.Date,EdicaoROM_QPRD.AsInteger+EdicaoROM_QEMB.AsInteger+EdicaoROM_QDES.AsInteger+EdicaoROM_QEXP.AsInteger) else
    DEDEXP.Date := incDay(DEDROM.Date,99);
    

    Edicao.DisableControls;
    Edicao.First;
    while not Edicao.Eof do
    begin
      Edicao.Edit;
      EdicaoROM_DROM.Value := DEDROM.Date;
      EdicaoROM_DEXP.Value := DEDEXP.Date;
      Edicao.Post;
      Edicao.Next;
    end;
  finally
    _Refresh;
    Edicao.Last;
  end;
end;

procedure Tfrmven_prc.DEDEXPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oEmpty(DEDEXP.Date) then
  try
    Tag := 1;

    Edicao.DisableControls;
    Edicao.First;
    while not Edicao.Eof do
    begin
      Edicao.Edit;
      EdicaoROM_DEXP.Value := DEDEXP.Date;
      Edicao.Post;
      Edicao.Next;
    end;
  finally
    _Refresh;
    Edicao.Last;
  end;
end;

procedure Tfrmven_prc.EdicaoROM_DEXPValidate(Sender: TField);
begin
  if ((Tag = 0) and (not oEmpty(EdicaoROM_DEXP.AsDateTime)) and (not oEmpty(DEDEXP.Date)) and (EdicaoROM_DEXP.AsDateTime <> DEDEXP.Date)) then
       DEDEXP.Date := EdicaoROM_DEXP.AsDateTime;
end;

procedure Tfrmven_prc._CheckPreco;
begin
  if ((IETVLR.Text = 'VP') and (EdicaoROM_QTUN.AsFloat > 0) and (EdicaoROM_PREC.AsFloat > 0)) then
       EdicaoROM_UNIT.AsFloat := RoundTo(EdicaoROM_PREC.AsFloat / EdicaoROM_QTUN.AsFloat,-2);
       EdicaoROM_UNIT.AsFloat := EdicaoROM_PREC.AsFloat - ((EdicaoROM_PREC.AsFloat*EdicaoROM_VDSC.AsFloat)/100);
end;

procedure Tfrmven_prc._CPPSQ(ADTXT: String;AFTXT: String);
begin
  if not oEmpty(ADTXT) then
  try
    oOTransact(FBird.TFBProdutos);
    if uPesquisa_Produto(RECParametros.EP_ID,ADTXT,AFTXT,'LIKE','','%') > 0 then
    begin
      _FillCP;
      DBGEdicao.FocusedColumn := IFThen(AFTXT = 'DESCRICAO',DBGEdicaoROM_DPRO.ColIndex,DBGEdicaoROM_CPRO.ColIndex);
    end;
  finally
    oCTransact(FBird.TFBProdutos);
  end;
end;

procedure Tfrmven_prc._FillCP;
begin
  if Edicao.State = dsBrowse then
     if (edQTPC.Text = 'PC') or (cbstpd.Text = 'DEVOLUÇÃO') then
     Edicao.Append else
     begin
       Edicao.First;
       if Edicao.Locate('ROM_CPRO',FBird.FBCAD_PROSKU.AsString,[]) then
       Edicao.Edit else
       Edicao.Append;
    end;

  EdicaoROM_UNIT.Value  := IFThen(cbprec.Text = 'ATACADO - NORMAL',FBird.FBCAD_PROVPRC_PAD.AsFloat,
                           IFThen(cbprec.Text = 'ATACAREJO'       ,FBird.FBCAD_PROVPRC_ATV.AsFloat,
                           IFThen(cbprec.Text = 'COMPRAS'         ,FBird.FBCAD_PROVPRC_COM_PAD.AsFloat,
                           IFThen(cbprec.Text = 'LOJA VIRTUAL'    ,FBird.FBCAD_PROVPRC_LJV.AsFloat,
                           IFThen(cbprec.Text = 'REPRESENTANTE'   ,FBird.FBCAD_PROVPRC_REP.AsFloat,
                           IFThen(cbprec.Text = 'VAREJO'          ,FBird.FBCAD_PROVPRC_VAR.AsFloat))))));
  EdicaoROM_PREC.Value  := EdicaoROM_UNIT.AsFloat;

  EdicaoROM_PTABI.Value := IFThen(cbprec.Text = 'ATACADO - NORMAL',FBird.FBCAD_PROVPRC_PAD_INI.AsFloat,EdicaoROM_PREC.AsFloat);
  EdicaoROM_PTABF.Value := IFThen(cbprec.Text = 'ATACADO - NORMAL',FBird.FBCAD_PROVPRC_PAD_FIM.AsFloat,EdicaoROM_PREC.AsFloat);

  EdicaoROM_FOTO.Value  := FBird.FBCAD_PROIMG_PAD.Value;
  EdicaoROM_QVOL.Value  := FBird.FBCAD_PROUQVOL.AsFloat;
  EdicaoROM_ESP.Value   := FBird.FBCAD_PROUESP.AsString;
  EdicaoROM_DPRO.Value  := FBird.FBCAD_PRODECP.AsString;
  EdicaoROM_DUNI.Value  := FBird.FBCAD_PROUCOM.AsString;
  EdicaoROM_IPRO.Value  := FBird.FBCAD_PROId.AsInteger;
  EdicaoROM_IPR2.Value  := FBird.FBCAD_PROId.AsInteger;
  EdicaoROM_CCLF.Value  := FBird.FBCAD_PRONCM.AsString;
  EdicaoROM_CART.Value  := FBird.FBCAD_PROARTIGO.AsString;
  EdicaoROM_CPRO.Value  := FBird.FBCAD_PROSKU.AsString;
  EdicaoROM_CPR2.Value  := FBird.FBCAD_PROSKU.AsString;
  EdicaoROM_CCOR.Value  := FBird.FBCAD_PROIDCOR.AsInteger;
  EdicaoROM_DCO2.Value  := FBird.FBCAD_PRODGCP.AsString;
  EdicaoROM_CBAR.Value  := FBird.FBCAD_PROCEAN.AsString;
  EdicaoROM_METR.Value  := FBird.FBCAD_PROMETRO.AsFloat;
  EdicaoROM_PESO.Value  := FBird.FBCAD_PROPESO.AsFloat;
  EdicaoROM_REND.Value  := FBird.FBCAD_PROREND.AsFloat;
  EdicaoROM_PSCN.Value  := FBird.FBCAD_PROPSCN.AsFloat;
  EdicaoROM_PIPI.Value  := FBird.FBCAD_PROPIPI.AsFloat;
  EdicaoROM_CDBE.Value  := FBird.FBCAD_PROUCDBE.AsString;
  EdicaoROM_QTUN.Value  := FBird.FBCAD_PROUQTDE.AsFloat; { RICARDO }
  EdicaoROM_PBUN.Value  := FBird.FBCAD_PROUPSBR.AsFloat;
  EdicaoROM_PLUN.Value  := FBird.FBCAD_PROUPSLQ.AsFloat;
  EdicaoROM_QDIS.Value  := FBird.FBCAD_PROEPE_QTDE.AsFloat;
  EdicaoROM_RLDI.Value  := FBird.FBCAD_PROEPE_QTRL.AsInteger;
  EdicaoROM_STAV.Value  := FBird.FBCAD_PROREST.AsString;
  
  EdicaoROM_QTDE.Value  := EdicaoROM_QTUN.AsFloat;
  EdicaoROM_QTRL.Value  := bRET_PECA(EdicaoROM_QTDE.AsFloat,EdicaoROM_QTUN.AsFloat);
end;

procedure Tfrmven_prc.SISaldoClick(Sender: TObject);
var
  i,x: Word;
  QTSaldo: Double;
  DTPrevisao: TDate;
begin
  if oYesNo(handle,'Gerar Saldo ?') = mrNo then
     Abort;

  QTSaldo    := EdicaoROM_QTDE.AsFloat - EdicaoROM_QTPD.AsFloat;
  DTPrevisao := EdicaoROM_DEXP.AsDateTime;

  Edicao.Edit;
  EdicaoROM_DBAI.Value := Date;
  Edicao.Post;

  with SQLFKSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PED_COM_ITE WHERE ID = '''+EdicaoId.AsString+'''');
    ExecQuery;
  end;

  Edicao.Append;
  for i := 0 to SQLFKSEdicao.FieldCount - 1 do
        for x := 0 to Edicao.FieldCount - 1 do
            if (Edicao.Fields[x].FieldName = SQLFKSEdicao.Current.Vars[i].Name) and (SQLFKSEdicao.Current.Vars[i].Value <> Null) then
            begin
              Edicao.Fields[x].Value := Trim(SQLFKSEdicao.Current.Vars[i].Value);
              Break;
            end;

            
  EdicaoROM_FOTO.Clear;
  EdicaoROM_DBAI.Clear;
  EdicaoROM_QTPD.Value := 0;
  EdicaoROM_QTDE.Value := QTSaldo;
  EdicaoROM_DEXP.Value := DTPrevisao;

  with SQLFKSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(ROM_ITEM),0) FROM PED_COM_ITE');
    ExecQuery;
    EdicaoROM_ITEM.Value := oStrZero(Current.Vars[0].AsInteger + 1,5);
  end;

  Edicao.Post;
end;

procedure Tfrmven_prc.SIMImportaClick(Sender: TObject);
begin
  FrmImporta_Geral := tFrmImporta_Geral.Create(Nil);
  with FrmImporta_Geral do
  try
    cbTIPO.Text := 'COMPRAS';
    ShowModal;
    if FrmImporta_Geral.REC_SHE_DEF.Selected then
    begin
      oRTransact(frmven_prc.TSheild);

      imp_ite.First;
      while not imp_ite.Eof do
      begin
        Edicao.Append;
        EdicaoROM_PTABI.Value := imp_iteROM_PTABI.AsCurrency;
        EdicaoROM_PTABF.Value := imp_iteROM_PTABF.AsCurrency;

        EdicaoROM_PREC.AsFloat := imp_iteROM_PREC.AsFloat;
        EdicaoROM_UNIT.AsFloat := imp_iteROM_UNIT.AsFloat;
        
        EdicaoROM_VDSC.Value  := imp_iteROM_VDSC.Value;
        EdicaoROM_DPRO.Value  := imp_iteROM_DPRO.Value;
        EdicaoROM_IPRO.Value  := imp_iteROM_IPRO.Value;
        EdicaoROM_CART.Value  := imp_iteROM_CART.Value;
        EdicaoROM_CPRO.Value  := imp_iteROM_CPRO.Value;
        EdicaoROM_DUNI.Value  := imp_iteROM_DUNI.Value;
        EdicaoROM_FOTO.Value  := imp_iteROM_FOTO.Value;
        EdicaoROM_CBAR.Value  := imp_iteROM_CBAR.Value;
        EdicaoROM_METR.Value  := imp_iteROM_METR.Value;
        EdicaoROM_PESO.Value  := imp_iteROM_PESO.Value;
        EdicaoROM_REND.Value  := imp_iteROM_REND.Value;
        EdicaoROM_PSCN.Value  := imp_iteROM_PSCN.Value;
        EdicaoROM_PIPI.Value  := imp_iteROM_PIPI.Value;
        EdicaoROM_QTDE.Value  := imp_iteROM_QTDE.Value;
        EdicaoROM_QTUN.Value  := imp_iteROM_QTUN.Value;
        EdicaoROM_QTRL.Value  := imp_iteROM_QTRL.Value;
        EdicaoROM_QDIS.Value  := imp_iteROM_QDIS.AsFloat;
        EdicaoROM_RLDI.Value  := imp_iteROM_RLDI.AsInteger;

        if FrmImporta_Geral.cbTIPO.Text = 'PROGRAMAÇÕES' then
           EdicaoROM_CDPR.Value := imp_cabROM_CDPR.AsInteger;

        Edicao.Post;
        imp_ite.Next;
      end;
    end;
  finally
    FreeandNil(FrmImporta_Geral);

    _Refresh;
    Edicao.Last;
  end;
end;

procedure Tfrmven_prc.EdicaoROM_DBAIValidate(Sender: TField);
begin
  if Tag = 0 then
     if not oEmpty(EdicaoROM_DBAI.AsDateTime) then
        EdicaoROM_STFI.Value := 'FINALIZADO'
     else
        if not oEmpty(EdicaoROM_CTNR.AsString) then
        begin
          EdicaoROM_STFI.Value := 'EMBARCADO';
          if not oEmpty(EdicaoROM_RDES.AsDateTime) then
             EdicaoROM_DEXP.Value := incDay(EdicaoROM_RDES.AsDateTime,EdicaoROM_QEXP.AsInteger);
        end else
        EdicaoROM_STFI.Value := 'PENDENTE';
end;

procedure Tfrmven_prc.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  RECPedido.AWinControl := TWinControl(Sender);
  RECPedido.AQConsulta  := Consulta;
  RECPedido.CDCD        := '1';

  try uPSQCAD(RECPedido);
  finally
    if RECPedido.Selected then
    begin
      REC_SHE_DEF.Edited := (Tag = 0);;
      
      CEIDCD.Value := RECPedido.IDCD;
      EDDECD.Text  := RECPedido.DECD;
      EDCNPJ.Text  := RECPedido.CNPJ;

      EDOBSO.Lines.Clear;
      EDOBSO.Lines.Add(RECPedido.INFADCAD);

      if (Showing) and (EDDERO.Enabled) then
          EDDERO.SetFocus;
    end;
  end; 

end;

procedure Tfrmven_prc.DBGEdicaoROM_DSEPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoROM_DSEP.AsString) then
      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID,DESCRICAO FROM TAB_COL');
        SQL.Add('WHERE  DESCRICAO = '''+DBGEdicao.EditingText+'''');
        ExecQuery;

        if Eof then
        begin
          if oYesNo(Self.Handle,'Coleção não Encontrada !'+#13+
                                'Cadastrar ?') = mrNo then
             Abort;

          Close;
          SQL.Clear;
          SQL.Add('EXECUTE BLOCK');
          SQL.Add('RETURNS (ID smallint,DESCRICAO varchar(60) character set WIN1252 collate WIN_PTBR)');
          SQL.Add('AS');
          SQL.Add('BEGIN');
          SQL.Add('UPDATE OR INSERT');
          SQL.Add('INTO TAB_COL (DESCRICAO)');
          SQL.Add('VALUES (');
          SQL.Add(''''+DBGEdicao.EditingText+''')');
          SQL.Add('MATCHING (DESCRICAO)');
          SQL.Add('RETURNING ID,DESCRICAO INTO :ID,:DESCRICAO;');
          SQL.Add('SUSPEND;');
          SQL.Add('END;');

          ParamCheck := False;
          Prepare;
          ExecQuery;
        end;

        EdicaoROM_CSEP.Value := Current.Vars[0].AsInteger;
        EdicaoROM_DSEP.Value := Current.Vars[1].AsString;

        ParamCheck := True;
        Close;
      end;
end;

procedure Tfrmven_prc.DTSCAD_PRO_IMGDataChange(Sender: TObject;
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

procedure Tfrmven_prc.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     try
       oOTransact(TEvent);

       { Admin }
       SPEvent.StoredProcName := 'SP_SHE_EVE_ADM';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
       SPEvent.ExecProc;
       SPEvent.UnPrepare;

       { Padrão }
       SPEvent.StoredProcName := 'SP_SHE_EVE_PAD';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_PAD;
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

end.
