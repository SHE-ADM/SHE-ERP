unit pven_prg;

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
  Tfrmven_prg = class(TForm)
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    BSair: TSpeedItem;
    SIMSalva: TSpeedItem;
    ILMenu: TImageList;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    Edicao: TIBDataSet;
    DTSEdicao: TDataSource;
    TSheild: TIBTransaction;
    consulta_s: TIBQuery;
    EdicaoID: TIntegerField;
    EdicaoROM_CART: TIBStringField;
    EdicaoROM_CPRO: TIBStringField;
    EdicaoROM_DPRO: TIBStringField;
    EdicaoROM_CCOR: TIntegerField;
    EdicaoROM_DCOR: TIBStringField;
    EdicaoROM_DUNI: TIBStringField;
    EdicaoROM_QTDE: TIBBCDField;
    EdicaoROM_VDSC: TIBBCDField;
    EdicaoROM_TOTA: TIBBCDField;
    EdicaoROM_CDET: TIBStringField;
    EdicaoROM_CBAR: TIBStringField;
    EdicaoROM_QDIS: TIBBCDField;
    EdicaoROM_PPRO: TIBBCDField;
    EdicaoROM_PEMB: TIBBCDField;
    Consulta: TIBQuery;
    BInf: TSpeedItem;
    EdicaoROM_CGRD: TIBStringField;
    EdicaoROM_DGRD: TIBStringField;
    EdicaoROM_FLAG: TSmallintField;
    EdicaoROM_CDOC: TIntegerField;
    EdicaoROM_RCOR: TIBStringField;
    EdicaoROM_IPRO: TIntegerField;
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
    siCLO: TSpeedItem;
    EdicaoROM_VBCIPI: TIBBCDField;
    EdicaoROM_PIPI: TIBBCDField;
    EdicaoROM_VIPI: TIBBCDField;
    aux_S: TIBQuery;
    aux2_S: TIBQuery;
    EdicaoROM_UNIT: TFloatField;
    EdicaoROM_STFI: TIBStringField;
    EdicaoROM_PREC: TFloatField;
    PNLFormRodape: TPanel;
    PNLEdicao: TPanel;
    PNLConsulta: TPanel;
    GBEdicao: TGroupBox;
    GBConsulta: TGroupBox;
    ConsultaAux: TIBQuery;
    psq_cli: TIBQuery;
    DBGEdicao: TdxDBGrid;
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
    edcdbx: TdxMaskEdit;
    edcdpd: TdxMaskEdit;
    edcdnf: TdxMaskEdit;
    PEDEPG: TdxPickEdit;
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
    TSLogistica: TdxTabSheet;
    BVLogistica: TBevel;
    laVFrete: TLabel;
    CEVFRT: TdxCurrencyEdit;
    TSHistorico: TdxTabSheet;
    Bevel2: TBevel;
    laCLI_DCAD: TLabel;
    laCLI_DULT: TLabel;
    CLI_VULT: TLabel;
    edCLI_DCAD: TdxMaskEdit;
    edCLI_VULT: TdxMaskEdit;
    edCLI_DULT: TdxMaskEdit;
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
    EdicaoROM_PTABI: TFloatField;
    EdicaoROM_PTABF: TFloatField;
    Shape13: TShape;
    Label2: TLabel;
    Shape14: TShape;
    CEVIPI: TdxCurrencyEdit;
    EdicaoROM_QTUN: TIBBCDField;
    EdicaoROM_ITEM: TIBStringField;
    EdicaoROM_RUNI: TIBStringField;
    psq_cliID: TIntegerField;
    psq_cliCLI_FANT: TIBStringField;
    psq_cliCLI_RAZA: TIBStringField;
    psq_cliCLI_CNPJ: TIBStringField;
    psq_cliCLI_CPF: TIBStringField;
    psq_cliCLI_CRED: TIBBCDField;
    psq_cliCLI_CID: TIBStringField;
    psq_cliCLI_BAI: TIBStringField;
    psq_cliCLI_TLOG: TIBStringField;
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
    psq_cliCLI_VULT: TIBBCDField;
    psq_cliCLI_DDD: TIBStringField;
    psq_cliCLI_TEL1: TIBStringField;
    psq_cliREP_FANT: TIBStringField;
    psq_cliUSU_DUSU: TIBStringField;
    psq_cliCLI_STPD: TSmallintField;
    psq_cliCLI_DTRA: TIBStringField;
    psq_cliCLI_DUSU: TIBStringField;
    psq_cliCLI_OBSO: TIBStringField;
    tab_pagPAG_D011: TIntegerField;
    tab_pagPAG_D012: TIntegerField;
    tab_pagPAG_D013: TIntegerField;
    tab_pagPAG_D014: TIntegerField;
    tab_pagPAG_D015: TIntegerField;
    tab_pagPAG_D016: TIntegerField;
    tab_pagPAG_D017: TIntegerField;
    tab_pagPAG_D018: TIntegerField;
    tab_pagPAG_PRAZ: TSmallintField;
    tab_pagPAG_DUPL: TIBStringField;
    tab_pagPAG_ENVWEB: TSmallintField;
    edcdpr: TdxMaskEdit;
    EdicaoROM_PBUN: TIBBCDField;
    EdicaoROM_PLUN: TIBBCDField;
    EdicaoROM_PSBR: TIBBCDField;
    EdicaoROM_PSLQ: TIBBCDField;
    IEMFRT: TdxImageEdit;
    Label1: TLabel;
    ladtra: TLabel;
    PEDECT: TdxPickEdit;
    SQLConsulta: TIBSQL;
    EdicaoROM_CDEP: TSmallintField;
    DBGEdicaoROM_ITEM: TdxDBGridMaskColumn;
    DBGEdicaoROM_CPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_CCLF: TdxDBGridMaskColumn;
    DBGEdicaoROM_DCOR: TdxDBGridPickColumn;
    DBGEdicaoROM_DPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_DUNI: TdxDBGridPickColumn;
    DBGEdicaoROM_QDIS: TdxDBGridMaskColumn;
    DBGEdicaoROM_QTDE: TdxDBGridCalcColumn;
    DBGEdicaoROM_QTRL: TdxDBGridMaskColumn;
    DBGEdicaoROM_UNIT: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_TSDE: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_VDSC: TdxDBGridMaskColumn;
    DBGEdicaoROM_PIPI: TdxDBGridMaskColumn;
    DBGEdicaoROM_VIPI: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_TOTA: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_PTABI: TdxDBGridMaskColumn;
    DBGEdicaoROM_PTABF: TdxDBGridMaskColumn;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    EDDROM: TdxDateEdit;
    CEIDCD: TdxCurrencyEdit;
    EDDECD: TdxMaskEdit;
    EDRZCD: TdxMaskEdit;
    EDCNPJ: TdxMaskEdit;
    LACNPJ: TLabel;
    LAIDCD: TLabel;
    LADECD: TLabel;
    LARZCD: TLabel;
    IEIDCV: TdxImageEdit;
    IEIDCR: TdxImageEdit;
    SBRodape: TdxStatusBar;
    EdicaoROM_DGCP: TIBStringField;
    EdicaoROM_UCON: TIBStringField;
    EdicaoROM_VCOM: TIBBCDField;
    EdicaoROM_PDSC: TIBBCDField;
    EdicaoROM_TCDE: TIBBCDField;
    EdicaoROM_IDPK: TLargeintField;
    EdicaoROM_IDFK: TLargeintField;
    EdicaoFLAG: TIntegerField;
    EdicaoROM_STAV: TIBStringField;
    EdicaoROM_FOTO: TBlobField;
    EdicaoROM_TSDE: TIBBCDField;
    EdicaoROM_CCLF: TIBStringField;
    EdicaoROM_CFOR: TIBStringField;
    EdicaoROM_QVOL: TIBBCDField;
    EdicaoROM_ESP: TIBStringField;
    EdicaoROM_CDBE: TIBStringField;
    DBGEdicaoROM_STFI: TdxDBGridPickColumn;
    EEventAdmin: TIBEvents;
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
    Shape15: TShape;
    Label5: TLabel;
    Shape16: TShape;
    dxCurrencyEdit1: TdxCurrencyEdit;
    PNLTAB_PRC: TPanel;
    LALTAB_PRC_ABAIXO: TLabel;
    LALTAB_PRC_ACIMA_MIN: TLabel;
    LALTAB_PRC_ACIMA_MAX: TLabel;
    LATAB_PRC_ACIMA_MIN: TLabel;
    LATAB_PRC_ACIMA_MAX: TLabel;
    PNLTAB_PRC_ABAIXO: TPanel;
    PNLTAB_PRC_ACIMA_MIN: TPanel;
    PNLTAB_PRC_ACIMA_MAX: TPanel;
    PECTNR: TdxPickEdit;
    lactnr: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
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
    procedure edcpagValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure EdicaoROM_QTDEValidate(Sender: TField);
    procedure SIMSalvaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BInfClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGEdicaoROM_UNITValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbstpdExit(Sender: TObject);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siCLOClick(Sender: TObject);
    procedure edtsdeValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGEdicaoROM_QTDEValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoROM_CPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoROM_DPROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoROM_QTRLValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbstcoExit(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure tsoutShow(Sender: TObject);
    procedure DBGEdicaoROM_VDSCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure psq_cliAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGEdicaoROM_CCLFValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
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
    procedure PEDEPGValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PECTNRValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PEDECTChange(Sender: TObject);
    procedure edderoChange(Sender: TObject);
    procedure CEIDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);

    procedure _ExecEvent;
    procedure _Sumario;
    procedure _DTSEdicao;
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
    RECDefault: TRECDefault;
    RECPedido : TRECPEdidos;

    property CurrentAlert: String  read FCurrentAlert write _SetCurrentAlert;
    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    procedure PESQUISA_TIPO(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);

    Constructor Create(AOwner: TComponent;
                 const AIDPK : LongInt = 0;
                       ADEPK : String  = '';
                       AIDEV : LongInt = 0;
                       ACDEV : Word    = 0); reintroduce; overload;
  end;

var
  frmven_prg: Tfrmven_prg;

implementation

uses uPrincipal, bPrincipal,
  pctr_prg, pimporta_geral;

{$R *.dfm}

procedure TFrmven_prg._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmven_prg._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmven_prg._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Constructor TFrmven_prg.Create(AOwner: TComponent;
                         const AIDPK : LongInt = 0;
                               ADEPK : String  = '';
                               AIDEV : LongInt = 0;
                               ACDEV : Word    = 0);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK  := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK  := TRIM(ADEPK);

  REC_SHE_DEF.IDEV  := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV  := INTTOSTR(ACDEV);

  { Set }
  if REC_SHE_DEF.IDPK > 0 then
  begin
    CurrentEvent := 'Alteração de Pedido de Compras';
    ForceClose   := False;
  end else
  begin
    CurrentEvent := 'Inclusão de Pedido de Compras';
    ForceClose   := not (RECParametros.STCX = 'Caixa Aberto');
  end;

  inherited Create(AOwner);
end;

procedure Tfrmven_prg.FormCreate(Sender: TObject);
begin
  { INICIALIZAÇÃO }
  Self.Caption := FCurrentEvent; { Caption }
  oOTransact(IBTRA); { Transação }

  { FORM MANAGER }
  REC_SHE_DEF.FB_Event := 'PED_PDP_ADM'; { Eventos }
  REC_SHE_DEF.GAdmin   := True;          { Grant   }

  REC_SHE_DEF.FPosition := Self.Position; { Página }
  SetCursorPos(500,Self.Top); { Cursor }

  { Ajusta Posicionamento da Página }
             Screen.Cursor := crAppStart;
  RECDefault.FrmPosition   := poDesigned;

  if (RECDefault.WorkArea) and (Screen.Height > 768) then
      RECDefault.WorkArea := False;

  if  Screen.Height <= 768 then
      RECDefault.MainArea := True;

  if (RECDefault.MainArea) and (Screen.Height > 900) then
      RECDefault.MainArea := False;

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
  end;

  if not REC_SHE_DEF.GAdmin then
  FForceClose := False;

  { ACCESS DENIED }
  if (FForceClose) and (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    FCurrentAlert := FCurrentEvent    + #13 + #13 +
                    'ACESSO NEGADO !' + #13 +
                     RECParametros.STCX ;
  end else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  begin
    FCurrentAlert := FCurrentEvent    + #13 + #13 +
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
  end;

  oIRECDefault(RECDefault);
  oIRECPedidos(RECPedido );

  oOTransact(IBTra);
  ABRE_TABELA;

  IEIDCV.Text := IFThen((RECUsuarios.Grupo = 'VEN') or (RECUsuarios.Id = 66),RECUsuarios.Id,IntToStr(RECParametros.CV_ID));
  IEIDCR.Text := RECParametros.CR_ID;
  edstpd.Text := RECParametros.PED_TPD_NO;
  cbstpd.Text := RECParametros.PED_TPD_NO;
  cbstco.Text := RECParametros.PED_TCO_NO;
  edcpag.Text := RECParametros.PED_PRZ_NO;
  PEDECT.Tag  := RECParametros.CT_ID;
  PEDECT.Text := RECParametros.CT_NO;
  eddrom.Date := NOW;

  PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);
  PESQUISA_FPAGTO('F',PEDEPG.Text);
end;

procedure Tfrmven_prg.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CON_CTNR FROM CAD_CON GROUP BY 1 ORDER BY 1');
    ExecQuery;
    while not eof do
    begin
      PECTNR.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT TRA_FANT FROM CAD_TRA WHERE TRA_STAV = ''A'' GROUP BY 1 ORDER BY 1');
    ExecQuery;
    while not eof do
    begin
      PEDECT.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.LOGIN FROM TAB_USER AS PK WHERE PK.ID > 0 AND PK.REST = ''A'' AND PK.GRUPO = ''VEN'' ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IEIDCV.Values.Add(Current.Vars[0].AsString);
      IEIDCV.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.REP_FANT FROM CAD_REP AS PK WHERE PK.ID > 0 AND PK.REP_STAV = ''A'' ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IEIDCR.Values.Add(Current.Vars[0].AsString);
      IEIDCR.Descriptions.Add(Current.Vars[1].AsString);
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
    ExecQuery;
    while not eof do
    begin
      PEDEPG.Items.Add(Current.Vars[0].AsString);
      next;
    end;
  end;

  Edicao.DisableControls;
  if (Assigned(frmctr_prg)) and (frmctr_prg.siARO.Tag = 1) then
  begin
    frmctr_prg.Tag := 1;

    cbstpd.Text := frmctr_prg.CadastroTPD_NO.AsString;
    PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);

    Tag := 1;
    CEIDCD.Value := frmctr_prg.cadastroCD_ID.AsInteger;
    EDDECD.Text  := frmctr_prg.CadastroCD_NO.AsString;
    EDRZCD.Text  := frmctr_prg.CadastroCD_NO_RZ.AsString;
    EDCNPJ.Text  := frmctr_prg.CadastroCD_CNPJ.AsString;

    edcdbx.Text  := inttostr(frmctr_prg.cadastroBXD_IDPK.AsInteger);
    edcdpd.Text  := '0';
    edcdnf.Text  := '0';
    edcdpr.Text  := inttostr(frmctr_prg.cadastroAPI_B2B_IDPK.AsInteger);
    cbcred.Text  := '1';
    edcdro.Text  := frmctr_prg.cadastroIDPK.AsString;
    edcdro.Tag   := frmctr_prg.CadastroIDPK.AsInteger;
    eddero.Text  := frmctr_prg.cadastroDEPK.AsString;
    PEDECT.Tag   := frmctr_prg.cadastroCT_ID.AsInteger;
    PEDECT.Text  := frmctr_prg.cadastroCT_NO.AsString;
    IEMFRT.Text  := frmctr_prg.cadastroFRT_MODELO.AsString;
    CEVFRT.Value := frmctr_prg.cadastroFRT_VFRT.AsFloat;
    PECTNR.Text  := frmctr_prg.cadastroCTNR.AsString;
    edcdcx.Text  := frmctr_prg.cadastroCDCX.AsString;
    edcdrd.Text  := '0';
    eddrom.Date  := frmctr_prg.cadastroDTPK.AsDateTime;
    edobse.Text  := frmctr_prg.cadastroINFADCAD.AsString;
    IEIDCV.Text  := frmctr_prg.cadastroCV_ID.AsString;
    IEIDCR.Text  := frmctr_prg.cadastroCR_ID.AsString;
    cbstco.Text  := frmctr_prg.cadastroTCO_NO.AsString;
    edcpag.Text  := frmctr_prg.cadastroPRZ_ID.AsString;

    LATDesc.Caption := frmctr_prg.cadastroTDSC.AsString;
    CEPDesc.Value   := frmctr_prg.cadastroPDSC.AsFloat;

    PESQUISA_FPAGTO('C',frmctr_prg.cadastroPRZ_ID.AsString);

    Tag := 1;
    try
      frmctr_prg.FKCadastro.DisableControls;
      frmctr_prg.FKCadastro.First;

      oOTransact(FBird.TFBProdutos);
      while not frmctr_prg.FKCadastro.Eof do
      begin
        Edicao.Append;

        uPesquisa_Produto(RECParametros.EP_ID,frmctr_prg.FKCadastroIDCP.AsString,'ID');
        _FillCP;

        EdicaoROM_IPRO.Value   := frmctr_prg.FKCadastroIDCP.AsInteger;
        EdicaoROM_DPRO.Value   := frmctr_prg.FKCadastroDECP.AsString;
        EdicaoROM_DCOR.Value   := frmctr_prg.FKCadastroDGCP.AsString;
        EdicaoROM_DUNI.Value   := frmctr_prg.FKCadastroUCOM.AsString;
        EdicaoROM_UCON.Value   := frmctr_prg.FKCadastroUCON.AsString;
        EdicaoROM_QTDE.Value   := frmctr_prg.FKCadastroQTDE.AsFloat;
        EdicaoROM_QTRL.Value   := frmctr_prg.FKCadastroQTRL.AsInteger;

        EdicaoROM_PREC.AsFloat := frmctr_prg.FKCadastroVPRC_PAD.AsFloat;
        EdicaoROM_UNIT.AsFloat := frmctr_prg.FKCadastroVPRC_COM.AsFloat;

        EdicaoROM_VDSC.Value   := frmctr_prg.FKCadastroVDSC.AsFloat;
        EdicaoROM_CCLF.Value   := frmctr_prg.FKCadastroNCM.AsString;
        EdicaoROM_PIPI.Value   := frmctr_prg.FKCadastroPIPI.AsFloat;
        EdicaoROM_PTABI.Value  := frmctr_prg.FKCadastroVPRC_PAD_INI.AsCurrency;
        EdicaoROM_PTABF.Value  := frmctr_prg.FKCadastroVPRC_PAD_FIM.AsCurrency;
                               
        Edicao.Post;           
        frmctr_prg.FKCadastro.Next;
      end;
    finally
      frmctr_prg.FKCadastro.EnableControls;
      frmctr_prg.siARO.Tag := 0;

      oCTransact(FBird.TFBProdutos);
    end;
  end;
end;

procedure Tfrmven_prg.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  { EVENTOS }
  try
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

  finally
    Screen.Cursor := crDefault;
    oUnLockWindowUpdate; { Desbloqueia Tela }

    _Refresh;

    if Edicao.RecNo > 0 then
    DBGEdicao.SetFocus;
    Edicao.Last;

    SIMSalva.Enabled := False;
    TAG := 0;
  end;
end;

procedure Tfrmven_prg.FormCloseQuery(Sender: TObject;
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

procedure Tfrmven_prg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmven_prg.FormDestroy(Sender: TObject);
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
       Frmven_prg := Nil;
     end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmven_prg.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmven_prg.FormPaint(Sender: TObject);
var
  S: TRect;
  H,
  T,
  B,
  L,
  R,
  FHeight,
  FWidth: Word;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(Application.MainForm.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if RECDefault.WorkArea then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if RECDefault.MainArea then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECDefault.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECDefault.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECDefault.FrmPosition = poDefault,H - T - 5,0);
    end else
    begin
      if RECDefault.FrmPosition = poDesigned then
      begin
        if FHeight > 0 then Height := FHeight;
        if FWidth  > 0 then Width  := FWidth;

        if FormStyle = fsNormal then
        begin
          Top  := (T  + (H - Height)) div 2;
          Left := ((R + L) - Width )  div 2;
        end else
        begin
          Top  := ((B - T ) - Height) div 2;
          Left := ((R - L)  - Width ) div 2;
        end;
      end;
    end;

    { Ajusta o rodapé conforme o form }
    SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 140);
    
    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = '+IntToStr(Screen.Height)+' Largura: '+IntToStr(Screen.Width)+' / '+
                  'Tela: Altura = '              +IntToStr(Self.Height  )+' Largura: '+IntToStr(Self.Width  );
  end;
end;

procedure Tfrmven_prg.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  if Self <> Nil then
     try
       { VER DIM TELA }
       REC_SHE_DEF.FHeight := Self.Height;
       REC_SHE_DEF.FWidth  := Self.Width ;

       { Ajusta o rodapé conforme o form }
       SBRodape.Panels[SBRodape.Panels.Count - 2].Width := SBRodape.Width - (SBRodape.Panels[SBRodape.Panels.Count - 1].Width + 115);

       if RECUsuarios.Id = 0 then
       Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;
       Paint;
    finally
      { After Resize }
       oResize(DBGEdicao);
    end;
end;

procedure Tfrmven_prg.SIMSalvaClick(Sender: TObject);
begin
  try
    SALVA;
  finally
    if SIMSalva.Enabled then
       Abort;       
  end;
  Close;
end;

procedure Tfrmven_prg.siCLOClick(Sender: TObject);
begin
  FrmImporta_Geral := tFrmImporta_Geral.Create(Nil);
  with FrmImporta_Geral do
  try
    cbTIPO.Text := 'PROGRAMAÇÕES';
    ShowModal;
    if FrmImporta_Geral.REC_SHE_DEF.Selected then
    begin
      frmven_prg.Tag := 1;

      oRTransact(frmven_prg.TSheild);
      Edicao.DisableControls;
      Edicao.First;

      cbcred.Text  := imp_cabROM_CONC.AsString;
      IEMFRT.Text  := imp_cabROM_MFRT.AsString;
      PEDECT.Tag   := imp_cabROM_CTRA.AsInteger;
      PEDECT.Text  := imp_cabROM_DTRA.AsString;
      CEVFRT.Value := imp_cabROM_VFRT.AsFloat;

      edobse.Lines.BeginUpdate;
      edobse.Lines.Clear;
      edobse.Lines.Add('Referência: '+oPrimeiraLetraMaiuscula(cbTIPO.Text)+' - Pedido Nº '+imp_cabROM_DERO.AsString+' de '+FormatDateTime('dd/mm/yyyy',imp_cabROM_DROM.AsDateTime));
      edobse.Lines.EndUpdate;

      PESQUISA_FPAGTO('C',imp_cabROM_CPAG.AsString);

      imp_ite.First;
      while not imp_ite.Eof do
      begin
        Edicao.Append;
        EdicaoROM_PTABI.Value := imp_iteROM_PTABI.AsCurrency;
        EdicaoROM_PTABF.Value := imp_iteROM_PTABF.AsCurrency;

        EdicaoROM_PREC.AsFloat := imp_iteROM_UNIT.AsFloat;
        EdicaoROM_UNIT.AsFloat := imp_iteROM_UNIT.AsFloat;

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
        EdicaoROM_CDPR.Value := imp_cabROM_CDPR.AsInteger else
        if FrmImporta_Geral.cbTIPO.Text = 'ORÇAMENTO' then
        EdicaoROM_CDOC.Value := imp_cabROM_CDOC.AsInteger;

        Edicao.Post;
        imp_ite.Next;
      end;
    end;
    _Refresh;
    Edicao.Last;
  finally
    FreeandNil(FrmImporta_Geral);
  end;
end;

procedure Tfrmven_prg.BInfClick(Sender: TObject);
begin
  uPSQSCORE(self,CEIDCD.Text,EmptyStr);
end;

procedure Tfrmven_prg.BSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmven_prg.SIEIncluiClick(Sender: TObject);
begin
  _Append(Edicao,DBGEdicao,SIEInclui);
end;

procedure Tfrmven_prg.SIEAlteraClick(Sender: TObject);
begin
  _Edit(Edicao,DBGEdicao,SIEAltera);
end;

procedure Tfrmven_prg.SIEExcluiClick(Sender: TObject);
begin
  if oYesNo(handle,'Excluir Item ?') =   mrNo then
     Abort;
     
  _Delete(Edicao,DBGEdicao,SIEExclui);
end;

procedure Tfrmven_prg.SIESalvaClick(Sender: TObject);
begin
  _Post(Edicao,DBGEdicao,SIESalva);
end;

procedure Tfrmven_prg.SIECancelaClick(Sender: TObject);
begin
  _Cancel(Edicao,DBGEdicao,SIECancela);
end;

procedure Tfrmven_prg.EdicaoAfterDelete(DataSet: TDataSet);
begin
  SIMSalva.Enabled := (Tag = 0);
  TSheild.CommitRetaining;
  _Sumario;
end;

procedure Tfrmven_prg.EdicaoAfterInsert(DataSet: TDataSet);
begin
  DBGEdicao.FocusedColumn := IFThen(DBGEdicaoROM_CCLF.Visible,DBGEdicaoROM_CCLF.ColIndex,DBGEdicaoROM_CPRO.ColIndex);
end;

procedure Tfrmven_prg.EdicaoAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
  if CAD_PRO_IMG.State = dsInactive then CAD_PRO_IMG.Open; { Imagens }
  _Sumario;
end;

procedure Tfrmven_prg.EdicaoAfterPost(DataSet: TDataSet);
begin
  if Tag = 0 then _Refresh;
end;

procedure Tfrmven_prg.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if Edicao.Eof then
  begin
    Edicao.Close;
    Edicao.Open;
    Abort;
  end;
end;

procedure Tfrmven_prg.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crAppStart;
end;

procedure Tfrmven_prg.EdicaoBeforePost(DataSet: TDataSet);
begin
  if EdicaoROM_STAV.AsString = 'I' then DataBaseError('Produto '+EdicaoROM_CPRO.AsString+' Inativo !');
  if EdicaoROM_STAV.AsString = 'PRÉ' then DataBaseError('Produto '+EdicaoROM_CPRO.AsString+' em Desenvolvimento !');

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

  if (RECParametros.EP_NO = 'LEBIANCO') and
     (not oEmpty(EdicaoROM_QTUN.AsFloat))  and ((EdicaoROM_QTDE.AsInteger mod EdicaoROM_QTUN.AsInteger) > 0) then
  EdicaoROM_QTDE.Value := bRET_QUANTIDADE(IFThen(EdicaoROM_QTRL.AsInteger > 0,EdicaoROM_QTRL.AsInteger,Tag),EdicaoROM_QTUN.AsFloat);
  EdicaoROM_QTRL.Value := bRET_PECA(EdicaoROM_QTDE.AsFloat,EdicaoROM_QTUN.AsFloat);

  EdicaoROM_PSBR.Value := EdicaoROM_QTDE.AsFloat * EdicaoROM_PBUN.AsFloat;
  EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsFloat * EdicaoROM_PLUN.AsFloat;
end;

procedure Tfrmven_prg.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value       := 0;
  EdicaoROM_FLAG.Value := 0;
  EdicaoROM_CDOC.Value := 0;
  EdicaoROM_CDPD.Value := 0;
  EdicaoROM_VDSC.Value := 0;
  EdicaoROM_QTDE.Value := 0;
  EdicaoROM_QTRL.Value := 1;
  EdicaoROM_QTPD.Value := 0;
  EdicaoROM_RLPD.Value := 0;
  EdicaoROM_STFI.Value := 'PENDENTE';

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(ROM_ITEM),0) FROM PED_VEN_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    Open;
    EdicaoROM_ITEM.Value := oStrZero(Fields[0].AsInteger + 1,5);
  end;
end;

procedure Tfrmven_prg.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  if Tag = 0 then _DTSEdicao;

  if Edicao.State = dsBrowse then
  begin
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_CPRO);
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_DCOR);
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_DUNI);
    DBGEdicao.ApplyBestFit(DBGEdicaoROM_STFI);
  end;  
end;

procedure Tfrmven_prg.DTSEdicaoStateChange(Sender: TObject);
begin
  oState(Edicao,SBEdicao);
end;

procedure Tfrmven_prg.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGEdicaoROM_TOTA.Index] = 0 then
    begin
      AColor      := clInfoBk;
      AFont.Color := clWindowText;
    end else
    begin
      if (AColumn = DBGEdicaoROM_QDIS) or (AColumn = DBGEdicaoROM_PIPI) or (AColumn = DBGEdicaoROM_VIPI) then
      begin
        AFont.Color := clBlack;
        if oTextToValor(ANode.Values[DBGEdicaoROM_QDIS.Index]) <= 0 then
        begin
          AFont.Color := $000024B3;
          AFont.Style := [fsBold];
        end;
        AColor := $00E9E9E9;
      end;

      if (AColumn = DBGEdicaoROM_TOTA) or (AColumn = DBGEdicaoROM_PIPI) or (AColumn = DBGEdicaoROM_VIPI) then
      begin
        AFont.Color := clWhite;
        AColor      := $00E1AD40;
      end;

      if ((oTextToValor(ANode.Values[DBGEdicaoROM_UNIT.Index]) = 0) and (Edicao.State <> dsInsert)) then
      begin
        AFont.Color := clWhite;
        AColor      := $000024B3;
      end;
    end;  
  end;

  if (ANode.Values[DBGEdicaoROM_TOTA.Index] > 0) then
  if (AColumn = DBGEdicaoROM_QTDE) or (AColumn = DBGEdicaoROM_QTRL) or (AColumn = DBGEdicaoROM_UNIT) or (AColumn = DBGEdicaoROM_TSDE) or (AColumn = DBGEdicaoROM_TOTA) then
  if (ANode.Values[DBGEdicaoROM_UNIT.Index] < ANode.Values[DBGEdicaoROM_PTABI.Index]) then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWhite;
    AColor      := $000024B3;
  end else
  if ANode.Values[DBGEdicaoROM_UNIT.Index] >= ANode.Values[DBGEdicaoROM_PTABF.Index] then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWhite;
    AColor      := $00E1AD40
  end else
  if ANode.Values[DBGEdicaoROM_UNIT.Index] > ANode.Values[DBGEdicaoROM_PTABI.Index] then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
    AColor      := $00C4FFC4;
  end;
end;

procedure Tfrmven_prg.DBGEdicaoDblClick(Sender: TObject);
begin
  SIEAltera.Click;
end;

procedure Tfrmven_prg.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_insert: SIEInclui.Click;
       vk_return: if Edicao.State = dsBrowse then SIEAltera.Click else
                     if EdicaoROM_IPRO.AsInteger > 0 then
                     begin
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_CPROROM_DPROROM_DCOR') > 0 then
                       DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex else
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_CCLF') > 0 then
                       DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex else
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_QTDE') > 0 then
                       DBGEdicao.FocusedColumn := IFThen(EdicaoROM_QTRL.AsInteger > 0,DBGEdicaoROM_UNIT.ColIndex,DBGEdicaoROM_QTRL.ColIndex) else
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_QTRL') > 0 then
                       DBGEdicao.FocusedColumn := DBGEdicaoROM_UNIT.ColIndex else
                       DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn + 1;

                       if ((EdicaoROM_TOTA.AsFloat > 0) and
                          (((DBGEdicao.FocusedColumn > DBGEdicaoROM_QTDE.ColIndex) and (cbstpd.Tag = 0)) or
                           ((DBGEdicao.FocusedColumn > DBGEdicaoROM_UNIT.ColIndex) and (cbstpd.Tag = 1)))) then
                       begin
                         Edicao.Next;
                         if Edicao.Eof then
                         Edicao.Append else
                         DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn - 1;
                       end;
                     end;
       vk_delete: SIEExclui.Click;
  end;
end;

procedure Tfrmven_prg.PESQUISA_TIPO(pesq,chave: string);
begin
  with Consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_FATU,VEN_PDSC,VEN_STVE,VEN_DPAG,VEN_QTPC,VEN_PREC,VEN_QTSP,VEN_BAIP,VEN_NFEP,VEN_TINT,VEN_AGRP,VEN_BEST,VEN_DESC,VEN_PACR,VEN_PTNG,VEN_TIPO,VEN_QPRC FROM TAB_PED');
    SQL.Add('WHERE  '+pesq+' = '''+chave+'''');
    Open;

    edfatu.Text := fields[0].AsString;
    cbstco.Text := fields[2].AsString;
    PEDEPG.Text := fields[3].AsString;
    PEDEPG.Hint := fields[3].AsString;
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
      PEDEPG.Text := 'SEM COBRANÇA';
      PEDEPG.Hint := 'SEM COBRANÇA';
      cbstco.Text := 'SEM COBRANÇA';
    end;

    if (PEDEPG.Text <> 'SEM COBRANÇA') then
    PESQUISA_FPAGTO('F',fields[3].AsString);
  end;

  RECParametros.PED_PRECO := CBPREC.Text;
end;

procedure Tfrmven_prg.SALVA;
var
  ID: Integer;
begin
  if Edicao.State in [dsEdit,dsInsert] then
     if ((oEmpty(EdicaoROM_QTDE.AsFloat)) or (oEmpty(EdicaoROM_UNIT.AsFloat)) or (oEmpty(EdicaoROM_TOTA.AsFloat))) then
     Edicao.Cancel else Edicao.Post;
  ActiveControl := Nil;

  if Edicao.Fields[0].IsNull then
     oException(DBGEdicao,'Pedido sem itens selecionados !');

  if cbstpd.Text = '' then
     oException(cbstpd,'Tipo de pedido não selecionado !');

  if cbstco.Text = '' then
     oException(cbstco,'Tipo de cobrança não selecionado !');

  if CEIDCD.Value = 0 then
     oException(CEIDCD,'Cliente não selecionado !');

  if IEIDCV.Text = '' then
     oException(IEIDCV,'Vendedor não selecionado !');

  if IEIDCR.Text = '' then
     oException(IEIDCR,'Representante não selecionado !');

  if edcpag.Text = '' then
     oException(PEDEPG,'Forma de pagamento não selecionado !');

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
       oException(Nil,'Tipo de pedido não cadastrado !');

    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_COB');
    SQL.Add('WHERE  VEN_TIPO = '''+cbstco.Text+'''');
    SQL.Add('AND    VEN_STA  = ''1''');
    Open;

    if fields[0].IsNull then
       oException(cbstco,'Tipo de cobrança não cadastrado !');
  end;

  with tab_pag do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_PAG');
    SQL.Add('WHERE  PAG_DPAG = '''+PEDEPG.Text+'''');
    Open;
    if fields[0].IsNull then
       oException(PEDEPG,'Condição de pagamento não cadastrada !');

    if ((cbstco.Text = 'DINHEIRO') and (tab_pagPAG_D001.AsInteger >  1)) or
       ((cbstco.Text = 'DÉBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'DEBITO')   and (tab_pagPAG_D001.AsInteger <> 0)) or
       ((cbstco.Text = 'CHEQUE A VISTA')   and (tab_pagPAG_D002.AsInteger > 0)) or
       ((cbstco.Text = 'VALE')   and (tab_pagPAG_D001.AsInteger = 0)) then
         oException(cbstco,'Tipo de cobrança inválida para essa condição de pagamento !');
  end;

  if not psq_cli.Active then
     psq_cli.Open;
  if psq_cli.Fields[0].IsNull then
     oException(EDDECD,'Cliente não cadastrado !');

  try
    with consulta do
    begin
      if (edcdro.Text = '0') or (edcdro.Text = '') or (edcdro.Text = ' ') then
      begin
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(ID_NO_'+SLPrincipal.Values['ped_prg_cab']+',0) FROM RDB$DATABASE');
        Open;
        edcdro.Text := inttostr(fields[0].AsInteger+1);
                 ID := 0;
      end else   ID := strtoint(edcdro.Text);
    end;

    edcdcx.Text := IFThen((edcdcx.Text = '0') or (edcdcx.Text = ''),RECParametros.CDCX,edcdcx.Text);

    if (eddero.Text  = EmptyStr) or (eddero.Text = '0') then
        eddero.Text := edcdro.Text;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_PRG');
      SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
      SQL.Add('AND    IDPK = '''+edcdro.Text     +'''');
      SQL.Add('AND    CTNR IS NULL');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+SLPrincipal.Values['ped_prg_ite']);
      SQL.Add('WHERE  ROM_CCAB = '''+edcdro.Text+'''');
      ExecQuery;
    end;

    ibSP.StoredProcName := 'SP_PED_PRG_CAB';
    ibSP.Prepare;

    ibSP.ParamByName('ped').Value  := oREPZero('PED_PRG_CAB','_',RECParametros.EP_ID,3);
    ibSP.ParamByName('id').Value   := Id;
    ibSP.ParamByName('cdpr').Value := edcdpr.Text;
    ibSP.ParamByName('cdcx').Value := edcdcx.Text;
    ibSP.ParamByName('dero').Value := eddero.Text;
    ibSP.ParamByName('stpd').Value := cbstpd.Text;
    ibSP.ParamByName('stco').Value := cbstco.Text;
    ibSP.ParamByName('stfi').Value := 'PENDENTE';
    ibSP.ParamByName('ccli').Value := CEIDCD.Value;
    ibSP.ParamByName('cven').Value := IEIDCV.Text;
    ibSP.ParamByName('crep').Value := IEIDCR.Text;
    ibSP.ParamByName('cpag').Value := edcpag.Text;
    ibSP.ParamByName('qtve').Value := CEQuantidade.Value;
    ibSP.ParamByName('rlve').Value := CEPeca.Value;
    ibSP.ParamByName('tdsc').Value := LATDesc.Caption;
    ibSP.ParamByName('pdsc').Value := CEPDesc.Value;
    ibSP.ParamByName('tsde').Value := CESubTotal.Value;
    ibSP.ParamByName('tcde').Value := CETotal.Value;
    ibSP.ParamByName('conc').Value := cbcred.Text;
    ibSP.ParamByName('obse').Value := edobse.Text;
    ibSP.ParamByName('ctra').Value := PEDECT.Tag;
    ibSP.ParamByName('psbr').Value := CEPesoB.Value;
    ibSP.ParamByName('pslq').Value := CEPesoL.Value;
    ibSP.ParamByName('vfrt').Value := CEVFRT.Value;
    ibSP.ParamByName('mfrt').Value := IEMFRT.Text;
    ibSP.ExecProc;
    IBSP.UnPrepare;

    try
      Edicao.DisableControls;
      Edicao.First;
      while not Edicao.Eof do
      begin
        ibSP.StoredProcName := 'SP_PED_PRG_ITE';
        ibSP.Prepare;

        ibSP.ParamByName('ped').Value  := 'PED_PRG_ITE';
        if RECParametros.EP_ID > 1 then
        ibSP.ParamByName('ped').Value  := 'PED_PRG_ITE_'+oStrZero(RECParametros.EP_ID,3);

        ibSP.ParamByName('ID').Value   := 0;
        ibSP.ParamByName('CCAB').Value := edcdro.Text;
        ibSP.ParamByName('ITEM').Value := EdicaoROM_ITEM.AsString;
        ibSP.ParamByName('CPRO').Value := EdicaoROM_IPRO.AsInteger;
        ibSP.ParamByName('DECP').Value := EdicaoROM_DPRO.AsString;
        ibSP.ParamByName('DGCP').Value := EdicaoROM_DCOR.AsString;
        ibSP.ParamByName('UCOM').Value := EdicaoROM_DUNI.AsString;
        ibSP.ParamByName('UCON').Value := EdicaoROM_UCON.AsString;

        ibSP.ParamByName('QTDE').Value := EdicaoROM_QTDE.AsFloat;
        ibSP.ParamByName('QTRL').Value := EdicaoROM_QTRL.AsInteger;
        ibSP.ParamByName('UNIT').Value := EdicaoROM_UNIT.AsFloat;
        ibSP.ParamByName('PREC').Value := EdicaoROM_PREC.AsFloat;
        ibSP.ParamByName('PDSC').Value := EdicaoROM_VDSC.AsFloat;
        ibSP.ParamByName('TOTA').Value := EdicaoROM_TOTA.AsFloat;

        ibSP.ParamByName('PSBR').Value := EdicaoROM_PSBR.AsFloat;
        ibSP.ParamByName('PSLQ').Value := EdicaoROM_PSLQ.AsFloat;
        ibSP.ParamByName('NCM' ).Value := EdicaoROM_CCLF.AsString;
        ibSP.ParamByName('PIPI').Value := EdicaoROM_PIPI.AsFloat;
        
        ibSP.ParamByName('VPRC_PAD_INI').Value := EdicaoROM_PTABI.AsCurrency;
        ibSP.ParamByName('VPRC_PAD_FIM').Value := EdicaoROM_PTABF.AsCurrency;

        ibSP.ParamByName('DEST').Value := EdicaoROM_STFI.AsString;
        ibSP.ExecProc;
        IBSP.UnPrepare;

        if EdicaoROM_STFI.AsString = 'PENDENTE' then
        begin
          ibSP.StoredProcName := 'SP_CAD_PRO_PRG';
          ibSP.Prepare;
          ibSP.ParamByName('AIDEP').Value := RECParametros.EP_ID;
          ibSP.ParamByName('ACDFK').Value := edcdro.Text;
          ibSP.ParamByName('ADEFK').Value := eddero.Text;
          ibSP.ParamByName('ADTFK').Value := EDDROM.Date;
          ibSP.ParamByName('AIDCL').Value := CEIDCD.Value;
          ibSP.ParamByName('ADECL').Value := EDDECD.Text;
          ibSP.ParamByName('AIDCV').Value := IEIDCV.Text;
          ibSP.ParamByName('ADECV').Value := IEIDCV.Descriptions[IEIDCV.Values.IndexOf(IEIDCV.Text)];
          ibSP.ParamByName('AIDCR').Value := IEIDCR.Text;
          ibSP.ParamByName('ADECR').Value := IEIDCR.Descriptions[IEIDCR.Values.IndexOf(IEIDCR.Text)];
          ibSP.ParamByName('AIDCP').Value := EdicaoROM_IPRO.AsInteger;
          ibSP.ParamByName('ADGCP').Value := EdicaoROM_DCOR.AsString;
          ibSP.ParamByName('AQTDE').Value := EdicaoROM_QTDE.AsFloat;
          ibSP.ParamByName('AQTRL').Value := EdicaoROM_QTRL.AsInteger;
          ibSP.ParamByName('AVUPV').Value := EdicaoROM_UNIT.AsFloat;
          ibSP.ExecProc;
          IBSP.UnPrepare;
        end;

        uSP_CAD_PRO_EST_LAN(IBSP,RECParametros.EP_ID,EdicaoROM_IPRO.AsInteger);
        Edicao.Next;
      end;
    finally
      Edicao.EnableControls;
    end;

    oRTransact(IBTra);
    oAviso(handle,'Programação '+eddero.Text+' '+IFThen(edcdro.Tag = 0,'Registrado','Atualizado')+' com Sucesso !');

    SIMSalva.Enabled := False;
    SIMSalva.Tag     := 1;
  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollback);
      oRTransact(TSheild,ltRollback);

      Tag := 0;
      SIMSalva.Enabled := True;
      oException(Nil,'Falha ao tentar salvar programação !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  _ExecEvent;
  Close;
end;

procedure Tfrmven_prg.PESQUISA_FPAGTO(pesq,chave: string);
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
      PEDEPG.Text := '';

      PEDEPG.SetFocus;
      messageBox(handle,'Nome da forma de pagamento não cadastrada !',PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if fields[2].AsString <> '0' then
    begin
      edcpag.Text := '';
      PEDEPG.Text := '';

      PEDEPG.SetFocus;
      messageBox(handle,PChar('Forma de pagamento '+fields[1].AsString+' enviada para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    edcpag.Text := fields[0].AsString;
    PEDEPG.Text := fields[1].AsString;

    if fields[4].AsString = 'SIM' then
    cbstco.Text := 'BANCÁRIO';
  end;
end;

procedure Tfrmven_prg.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with Consulta_S do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM PED_VEN_ITE');
    ExecSQL;
  end;

  with Edicao do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM PED_VEN_ITE');
    SelectSQL.Add('WHERE    ROM_FLAG = 0');
    SelectSQL.Add('ORDER BY ID');
    Prepare;
  end;
  oRTransact(TSheild);
end;

procedure Tfrmven_prg.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  if cbstpd.Text <> 'ABATIMENTO' then
     key := #0;
end;

procedure Tfrmven_prg.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_prg.edcpagValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcpag.Text = '' then
  begin
    PEDEPG.Text := '';
    Abort;
  end;
  
  PESQUISA_FPAGTO('C',edcpag.Text);
end;

procedure Tfrmven_prg.EdicaoROM_QTDEValidate(Sender: TField);
begin
  EdicaoROM_TSDE.Value := RoundTO(EdicaoROM_QTDE.AsFloat  * EdicaoROM_PREC.AsFloat,-2);
  EdicaoROM_TOTA.Value := RoundTO(EdicaoROM_QTDE.AsFloat  * EdicaoROM_UNIT.AsFloat,-2);
  EdicaoROM_VIPI.Value := RoundTO((EdicaoROM_TOTA.AsFloat * EdicaoROM_PIPI.AsFloat) /100,-2);
  EdicaoROM_TOTA.Value := EdicaoROM_TOTA.AsFloat + IFThen(RECUsuarios.Id = 66,EdicaoROM_VIPI.AsFloat,0);
end;

procedure Tfrmven_prg.EdicaoROM_VDSCValidate(Sender: TField);
begin
  if Tag = 0 then
  EdicaoROM_UNIT.AsFloat := EdicaoROM_PREC.AsFloat - ((EdicaoROM_PREC.AsFloat*EdicaoROM_VDSC.AsFloat)/100);
end;

procedure Tfrmven_prg.DBGEdicaoROM_UNITValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) then
  begin
    EdicaoROM_PREC.AsFloat := oTextToValor(DBGEdicao.EditingText,9);
    EdicaoROM_UNIT.AsFloat := EdicaoROM_PREC.AsFloat - ((EdicaoROM_PREC.AsFloat*EdicaoROM_VDSC.AsFloat)/100);
  end;
end;

procedure Tfrmven_prg.DBGEdicaoROM_VDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) then
  EdicaoROM_VDSC.Value := oTextToValor(DBGEdicao.EditingText);
end;

procedure Tfrmven_prg.cbstpdExit(Sender: TObject);
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

procedure Tfrmven_prg.cbcredValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if RECUsuarios.Id = 66 then
     PECTNR.SetFocus;
end;

procedure Tfrmven_prg.edtsdeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if cbstpd.Text = 'ABATIMENTO' then
  begin
    if CESubTotal.Value > 0 then
    CESubTotal.Value := 0-CESubTotal.Value;
    CESubTotal.Value := CESubTotal.Value;
    CETotal.Value := CESubTotal.Value;
  end;
end;

procedure Tfrmven_prg.DBGEdicaoROM_QTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(DBGEdicao.EditingText)) and (Edicao.State in [dsInsert,dsEdit]) then
  try
    EdicaoROM_QTDE.Value := StrToFloat(DBGEdicao.EditingText);
    EdicaoROM_QTRL.Value := bRET_PECA(EdicaoROM_QTDE.AsFloat,EdicaoROM_QTUN.AsFloat);
  except
    raise exception.Create('Quantidade Inválida !');
  end;
end;

procedure Tfrmven_prg.DBGEdicaoROM_QTRLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(DBGEdicao.EditingText)) and (Edicao.State in [dsInsert,dsEdit]) then
  try
    EdicaoROM_QTRL.Value := StrToInt(DBGEdicao.EditingText);
    EdicaoROM_QTDE.Value := bRET_QUANTIDADE(EdicaoROM_QTRL.AsInteger,EdicaoROM_QTUN.AsFloat);
  except
    raise exception.Create('Quantidade Inválida !');
  end;
end;

procedure Tfrmven_prg.DBGEdicaoROM_CPROValidate(Sender: TObject;
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

procedure Tfrmven_prg.DBGEdicaoROM_CCLFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);

  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoROM_CCLF.AsString) then
  begin
    EdicaoROM_CCLF.Value := DBGEdicao.EditingText;
    _CPPSQ(DBGEdicao.EditingText,'CP.NCM');
    if EdicaoROM_IPRO.AsInteger = 0 then
       EdicaoROM_CCLF.Value := EmptyStr;
  end;
end;

procedure Tfrmven_prg.DBGEdicaoROM_DPROValidate(Sender: TObject;
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

procedure Tfrmven_prg.cbstcoExit(Sender: TObject);
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

procedure Tfrmven_prg.tsoutShow(Sender: TObject);
begin
  PECTNR.SetFocus;
end;

procedure Tfrmven_prg.psq_cliAfterOpen(DataSet: TDataSet);
begin
  edCLI_DCAD.Text := formatDateTime('dd/mm/yyyy',psq_cliCLI_DCAD.AsDateTime);
  edCLI_DULT.Text := formatDateTime('dd/mm/yyyy',psq_cliCLI_DULT.AsDateTime);
  edCLI_VULT.Text := formatFloat('R$ #,0.00'    ,psq_cliCLI_VULT.AsFloat);
end;

procedure Tfrmven_prg._Append(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State = dsBrowse) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Append;
  end;
end;

procedure Tfrmven_prg._Edit(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State = dsBrowse) and (not ADSOrigem.Fields[0].IsNull) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Edit;
  end;
end;
procedure Tfrmven_prg._Delete(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State = dsBrowse) and (not ADSOrigem.Fields[0].IsNull) then
  begin
    ADBGOrigem.SetFocus;

    ADSOrigem.Edit;
    ADSOrigem.FieldByName('ROM_FLAG').Value := 1;
    ADSOrigem.Post;
  end;
end;
procedure Tfrmven_prg._Post(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State in [dsInsert,dsEdit]) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Post;
  end;
end;

procedure Tfrmven_prg._Cancel(var ADSOrigem: TIBDataSet; ADBGOrigem: TdxDBGrid; ASIOrigem: TSpeedItem);
begin
  if (ASIOrigem.Enabled) and (ASIOrigem.Visible) and (ADSOrigem.State in [dsInsert,dsEdit]) then
  begin
    ADBGOrigem.SetFocus;
    ADSOrigem.Cancel;
  end else
  BSair.Click;
end;

procedure Tfrmven_prg._DTSEdicao;
begin
  DBGEdicaoROM_CCLF.Visible := (RECUsuarios.Id = 66);

  if DBGEdicaoROM_DCOR.Tag = 0 then
  begin
    DBGEdicaoROM_DCOR.Visible := (not oEmpty(EdicaoROM_DCOR.AsString));
    DBGEdicaoROM_DCOR.Tag     := IFThen(DBGEdicaoROM_DCOR.Visible,1,0);
  end;

  if DBGEdicaoROM_PIPI.Tag = 0 then
  begin
    DBGEdicaoROM_PIPI.Visible := (oTextToValor(CEVIPI.Value) > 0);
    DBGEdicaoROM_VIPI.Visible := (oTextToValor(CEVIPI.Value) > 0);
    DBGEdicaoROM_PIPI.Tag     := IFThen(DBGEdicaoROM_PIPI.Visible,1,0);
  end;

  { Tabela de Preços }
  LATAB_PRC_ACIMA_MIN.Caption := FormatFloat('R$ #,0.00',EdicaoROM_PTABI.AsCurrency);
  LATAB_PRC_ACIMA_MAX.Caption := FormatFloat('R$ #,0.00',EdicaoROM_PTABF.AsCurrency);
  if (EdicaoROM_UNIT.AsFloat <> EdicaoROM_PTABI.AsCurrency) or (EdicaoROM_UNIT.AsFloat <> EdicaoROM_PTABF.AsCurrency) or (EdicaoROM_PTABI.AsCurrency <> EdicaoROM_PTABF.AsCurrency) then
  PNLTAB_PRC.Height := 22 else
  PNLTAB_PRC.Height := 0;

  { Conteúdo }
  if Pos('COM',EdicaoROM_UCON.AsString) > 0 then
  begin
    PNLTAB_PRC.Caption := 'Conteúdo '+EdicaoROM_UCON.AsString+'  ';
    PNLTAB_PRC.Height  := 22;
  end else
  PNLTAB_PRC.Caption := EmptyStr;
end;

procedure Tfrmven_prg.LATDescClick(Sender: TObject);
begin
  LATDesc.Caption := IFThen(LATDesc.Caption = '%','$','%');
  LATDesc.Refresh;

  _Refresh;
end;

procedure Tfrmven_prg._Sumario;
begin
  if Tag = 0 then
  begin
    if cbstpd.Text <> 'ABATIMENTO' then
    with Consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT COALESCE(SUM(ROM_QTDE),0),COALESCE(SUM(ROM_QTRL),0),COALESCE(SUM(ROM_PSBR),0),COALESCE(SUM(ROM_PSLQ),0),COALESCE(SUM(ROM_TSDE),0),COALESCE(SUM(ROM_TOTA),0),COALESCE(SUM(ROM_VIPI),0)');
      SQL.Add('FROM   PED_VEN_ITE');
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

procedure Tfrmven_prg._Refresh(ACommit: Boolean = True);
var
  BMRecord: TBookMark;
begin
  SIMSalva.Enabled := True;
  Tag := 0;

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
end;

procedure Tfrmven_prg.CESubTotalValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _Refresh;
end;

procedure Tfrmven_prg.CESubTotalKeyPress(Sender: TObject; var Key: Char);
begin
  if cbstpd.Text <> 'ABATIMENTO' then
  key := #0;
end;

procedure Tfrmven_prg.CEQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmven_prg.edobseExit(Sender: TObject);
begin
  if RECUsuarios.Id = 66 then
  SIEInclui.Click;
end;

procedure Tfrmven_prg.PEDEPGValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PESQUISA_FPAGTO('F',PEDEPG.Text);
end;

procedure Tfrmven_prg.PECTNRValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PCObs.ActivePageIndex := 0;
  EDObse.SetFocus;
end;
procedure Tfrmven_prg.edderoChange(Sender: TObject);
begin
  SIMSalva.Enabled := (Tag = 0);
end;

procedure Tfrmven_prg.PEDECTChange(Sender: TObject);
begin
  SIMSalva.Enabled := (Tag = 0);

  if Pos('NOSSO CARRO',PEDECT.Text) > 0 then
  IEMFRT.Text := '3' else
  if Pos('PRÓPRIO',PEDECT.Text) > 0 then
  IEMFRT.Text := '4' else
  if (oEmpty(PEDECT.Text)) or (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('SEM FRETE',PEDECT.Text) > 0) then
  IEMFRT.Text := '9';
end;

procedure Tfrmven_prg._CPPSQ(ADTXT: String;AFTXT: String);
begin
  if not oEmpty(ADTXT) then
  try
    oOTransact(FBird.TFBProdutos);
    if uPesquisa_Produto(RECParametros.EP_ID,ADTXT,AFTXT,'LIKE','','%') > 0 then
    begin
      _FillCP; _DTSEdicao;
      DBGEdicao.FocusedColumn := IFThen(AFTXT = 'NCM'      ,DBGEdicaoROM_CCLF.ColIndex,
                                 IFThen(AFTXT = 'DESCRICAO',DBGEdicaoROM_DPRO.ColIndex,DBGEdicaoROM_CPRO.ColIndex));
    end;
  finally
    oCTransact(FBird.TFBProdutos);
  end;
end;

procedure Tfrmven_prg._FillCP;
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

  EdicaoROM_PTABI.Value := FBird.FBCAD_PROVPRC_PAD_INI.AsCurrency;
  EdicaoROM_PTABF.Value := FBird.FBCAD_PROVPRC_PAD_FIM.AsCurrency;

  EdicaoROM_PREC.AsFloat := FBird.FBCAD_PROVPRC_PAD.AsFloat;
  EdicaoROM_UNIT.AsFloat := FBird.FBCAD_PROVPRC_PAD.AsFloat;

  EdicaoROM_QVOL.Value  := FBird.FBCAD_PROUQVOL.AsFloat;
  EdicaoROM_ESP.Value   := FBird.FBCAD_PROUESP.AsString;
  EdicaoROM_DPRO.Value  := FBird.FBCAD_PRODECP.AsString;
  EdicaoROM_DUNI.Value  := FBird.FBCAD_PROUCOM.AsString;
  EdicaoROM_UCON.Value  := FBird.FBCAD_PROUCON.AsString;
  EdicaoROM_IPRO.Value  := FBird.FBCAD_PROId.AsInteger;
  EdicaoROM_CCLF.Value  := FBird.FBCAD_PRONCM.AsString;
  EdicaoROM_CART.Value  := FBird.FBCAD_PROARTIGO.AsString;
  EdicaoROM_CPRO.Value  := FBird.FBCAD_PROSKU.AsString;
  EdicaoROM_CCOR.Value  := FBird.FBCAD_PROIDCOR.AsInteger;
  EdicaoROM_DCOR.Value  := FBird.FBCAD_PRODGCP.AsString;
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

  EdicaoROM_FOTO.Value  := FBird.FBCAD_PROIMG_PAD.Value;
end;

procedure TFrmven_prg._ExecEvent;
begin
  if  EEvent.Registered then
      try
        oOTransact(TEvent);

        SPEvent.StoredProcName := 'SP_EVENT';
        SPEvent.Prepare;
        SPEvent.Params[0].AsString := oREPZero('CTR_PRG','_',RECParametros.EP_ID,3);
        SPEvent.ExecProc;
        SPEvent.UnPrepare;

        oCTransact(TEvent);
      except
        on E: Exception do
        begin
          oCTransact(TEvent,ltRollback);
          oException(Nil,'Falha ao tentar salvar evento !'+#13+
                         'Evento: '    +oREPZero('CTR_PRG','_',RECParametros.EP_ID,3)+'.'+#13+#13+
                         'Formulário: '+Self.Name+'.'     +#13+#13+
                         'Error Code: '+E.Message+'.');
        end;
      end;
end;

procedure Tfrmven_prg.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  RECPedido.AWinControl := TWinControl(Sender);
  RECPedido.AQConsulta  := Consulta;
  RECPedido.CDCD        := '0';

  try uPSQCAD(RECPedido);
  finally
    if RECPedido.Selected then
    begin
      REC_SHE_DEF.Edited := (Tag = 0);
      
      CEIDCD.Value := RECPedido.IDCD;
      EDDECD.Text  := RECPedido.DECD;
      EDRZCD.Text  := RECPedido.RZCD;
      EDCNPJ.Text  := RECPedido.CNPJ;

      IEIDCV.Text  := RECPedido.IDCV;
      IEIDCR.Text  := RECPedido.IDCR;

      PEDECT.Tag   := RECPedido.IDCT;
      PEDECT.Text  := RECPedido.DECT;
      IEMFRT.Text  := RECPedido.MFRT;

      EDOBSO.Lines.Clear;
      EDOBSO.Lines.Add(RECPedido.INFADCAD);

      if (Showing) and (PEDEPG.Enabled) then
          PEDEPG.SetFocus;
    end;
  end;
end;

procedure Tfrmven_prg.DTSCAD_PRO_IMGDataChange(Sender: TObject;
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

end.
