unit pven_ped;

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
  TFrmVEN_PED = class(TForm)
    DTSEdicao: TDataSource;
    PNLFormRodape: TPanel;
    PNLEdicao: TPanel;
    PNLConsulta: TPanel;
    GBEdicao: TGroupBox;
    GBConsulta: TGroupBox;
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
    PNLME: TPanel;
    GBDestinatario: TGroupBox;
    LAIDCD: TLabel;
    LADECD: TLabel;
    LARZCD: TLabel;
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
    PEDEPG: TdxPickEdit;
    cbstpd: TdxPickEdit;
    EDDERO: TdxMaskEdit;
    cbstco: TdxPickEdit;
    PNLMD: TPanel;
    GBINFADCAD: TGroupBox;
    PCINFADCAD: TdxPageControl;
    TSINFADCAD: TdxTabSheet;
    EMINFADCAD: TdxMemo;
    TSINFADFIN: TdxTabSheet;
    EMINFADFIN: TdxMemo;
    GBFrete: TGroupBox;
    PNLSumario: TPanel;
    GBSumario: TGroupBox;
    Shape9: TShape;
    LASubTotal: TLabel;
    Shape10: TShape;
    LATDSC: TLabel;
    Shape29: TShape;
    LATotal: TLabel;
    LADesconto2: TLabel;
    LADesconto3: TLabel;
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
    CEQTDE: TdxCurrencyEdit;
    CEQTRL: TdxCurrencyEdit;
    CEPSBR: TdxCurrencyEdit;
    CEPSLQ: TdxCurrencyEdit;
    CETSDE: TdxCurrencyEdit;
    CETCDE: TdxCurrencyEdit;
    Shape13: TShape;
    LAVIPI: TLabel;
    Shape14: TShape;
    CEVIPI: TdxCurrencyEdit;
    edcdro: TdxMaskEdit;
    LADesconto: TLabel;
    cli_sta: TIBQuery;
    cli_staFIN_TITU: TIBStringField;
    cli_staFIN_DVEN: TDateField;
    cli_staFIN_VALO: TIBBCDField;
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
    psq_cliCLI_OBSO: TIBStringField;
    psq_cliCLI_DUSU: TIBStringField;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    SQLFKConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    TSEdicao: TIBTransaction;
    SQLSEdicao: TIBSQL;
    ILMenu: TImageList;
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    SIMSaida: TSpeedItem;
    SIMSalva: TSpeedItem;
    SIM_CAD_CLI_INF: TSpeedItem;
    SIMIMPORTA: TSpeedItem;
    SIMCAD_CLI: TSpeedItem;
    SIMNFe: TSpeedItem;
    SIMCFe: TSpeedItem;
    SIMPedido: TSpeedItem;
    SIMFinaliza: TSpeedItem;
    LACNPJ: TLabel;
    ladtra: TLabel;
    PEDECT: TdxPickEdit;
    Label1: TLabel;
    IEMFRT: TdxImageEdit;
    laVFrete: TLabel;
    CEVFRT: TdxCurrencyEdit;
    DEDTCA: TdxDateEdit;
    CEVDSC: TdxCurrencyEdit;
    CEPDSC: TdxCurrencyEdit;
    CETDSC: TdxCurrencyEdit;
    Edicao: TIBDataSet;
    EdicaoID: TIntegerField;
    EdicaoROM_CDEP: TSmallintField;
    EdicaoROM_IDPK: TLargeintField;
    EdicaoROM_IPRO: TIntegerField;
    EdicaoROM_CART: TIBStringField;
    EdicaoROM_CCLF: TIBStringField;
    EdicaoROM_CPRO: TIBStringField;
    EdicaoROM_CBAR: TIBStringField;
    EdicaoROM_DPRO: TIBStringField;
    EdicaoROM_DCOR: TIBStringField;
    EdicaoROM_DUNI: TIBStringField;
    EdicaoROM_UCON: TIBStringField;
    EdicaoROM_QTUN: TIBBCDField;
    EdicaoROM_PESO: TIBBCDField;
    EdicaoROM_PSCN: TIBBCDField;
    EdicaoROM_METR: TIBBCDField;
    EdicaoROM_REND: TIBBCDField;
    EdicaoROM_QDIS: TIBBCDField;
    EdicaoROM_RLDI: TIntegerField;
    EdicaoROM_QTDE: TIBBCDField;
    EdicaoROM_QTRL: TIntegerField;
    EdicaoROM_PREC: TFloatField;
    EdicaoROM_PTABI: TFloatField;
    EdicaoROM_PTABF: TFloatField;
    EdicaoROM_PDSC: TIBBCDField;
    EdicaoROM_VDSC: TIBBCDField;
    EdicaoROM_UNIT: TFloatField;
    EdicaoROM_TSDE: TIBBCDField;
    EdicaoROM_TCDE: TIBBCDField;
    EdicaoROM_PIPI: TIBBCDField;
    EdicaoROM_VIPI: TIBBCDField;
    EdicaoROM_PSBR: TIBBCDField;
    EdicaoROM_PSLQ: TIBBCDField;
    EdicaoROM_QTPD: TIBBCDField;
    EdicaoROM_RLPD: TIntegerField;
    EdicaoROM_DSEP: TIBStringField;
    EdicaoROM_DTPD: TDateTimeField;
    EdicaoROM_FOTO: TBlobField;
    EdicaoROM_STAV: TIBStringField;
    EdicaoROM_FLAG: TSmallintField;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoROM_ITEM: TdxDBGridMaskColumn;
    DBGEdicaoROM_CPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_CCLF: TdxDBGridMaskColumn;
    DBGEdicaoROM_DPRO: TdxDBGridMaskColumn;
    DBGEdicaoROM_DCOR: TdxDBGridPickColumn;
    DBGEdicaoROM_DUNI: TdxDBGridPickColumn;
    DBGEdicaoROM_QDIS: TdxDBGridMaskColumn;
    DBGEdicaoROM_QTDE: TdxDBGridCalcColumn;
    DBGEdicaoROM_QTRL: TdxDBGridMaskColumn;
    DBGEdicaoROM_TSDE: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_PDSC: TdxDBGridMaskColumn;
    DBGEdicaoROM_VDSC: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_TCDE: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_PIPI: TdxDBGridMaskColumn;
    DBGEdicaoROM_VIPI: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_QTPD: TdxDBGridCurrencyColumn;
    DBGEdicaoROM_PTABI: TdxDBGridMaskColumn;
    DBGEdicaoROM_PTABF: TdxDBGridMaskColumn;
    IEIDCV: TdxImageEdit;
    IEIDCR: TdxImageEdit;
    EdicaoROM_CDOC: TIntegerField;
    EdicaoROM_IDFK: TLargeintField;
    EdicaoROM_ITEM: TIBStringField;
    PNLTAB_PRC: TPanel;
    LALPRC_TAB_ABAIXO: TLabel;
    LALPRC_TAB_ACIMA_MIN: TLabel;
    LALPRC_TAB_ACIMA_MAX: TLabel;
    LAPRC_TAB_ACIMA_MIN: TLabel;
    LAPRC_TAB_ACIMA_MAX: TLabel;
    PNLPRC_TAB_ABAIXO: TPanel;
    PNLPRC_TAB_ACIMA_MIN: TPanel;
    PNLPRC_TAB_ACIMA_MAX: TPanel;
    SBRodape: TdxStatusBar;
    CEIDCD: TdxCurrencyEdit;
    EDCNPJ: TdxMaskEdit;
    EDDECD: TdxMaskEdit;
    EDRZCD: TdxMaskEdit;
    PECTNR: TdxPickEdit;
    lactnr: TLabel;
    Label2: TLabel;
    IETPCO: TdxImageEdit;
    DBGEdicaoROM_UNIT: TdxDBGridMaskColumn;
    QConsulta: TIBQuery;
    IEDescontos: TdxImageEdit;
    LADescontos: TLabel;
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
    Label4: TLabel;
    Shape15: TShape;
    Label5: TLabel;
    Shape16: TShape;
    dxCurrencyEdit1: TdxCurrencyEdit;
    SQLPKConsulta: TIBSQL;
    EdicaoC_ID: TLargeintField;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTEveRegister: TAction;
    ACTEveExecute: TAction;
    ACTConsulta: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTMEAppend: TAction;
    ACTMEEdit: TAction;
    ACTMEDelete: TAction;
    ACTMEPost: TAction;
    ACTMECancel: TAction;
    ACTMPAppend: TAction;
    ACTMPEdit: TAction;
    ACTMPDelete: TAction;
    ACTMPPost: TAction;
    ACTMPValidate: TAction;
    ACTMPCancel: TAction;
    ACTEveExpress: TAction;
    ACTProgressBar: TAction;
    ACTDashboards: TAction;
    ACTCheckConstraints: TAction;
    ACTCheckErrors: TAction;
    ACTSaida: TAction;
    ACTEdicao: TAction;
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

    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTMPAppendExecute(Sender: TObject);
    procedure ACTMPEditExecute(Sender: TObject);
    procedure ACTMPDeleteExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
    procedure ACTMPCancelExecute(Sender: TObject);
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure ACTMEDeleteExecute(Sender: TObject);
    procedure ACTMEPostExecute(Sender: TObject);
    procedure ACTMECancelExecute(Sender: TObject);

    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure ACTCheckErrorsExecute(Sender: TObject);

    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTDashboardsExecute(Sender: TObject);
    procedure ACTProgressBarExecute(Sender: TObject);

    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTEveExpressExecute(Sender: TObject);

    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);

    procedure edtsdeKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure EdicaoROM_QTDEValidate(Sender: TField);
    procedure DBGEdicaoROM_UNITValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
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
    procedure DBGEdicaoROM_QTRLValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure DBGEdicaoROM_VDSCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGEdicaoROM_CCLFValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
    procedure SIEExcluiClick(Sender: TObject);
    procedure SIESalvaClick(Sender: TObject);
    procedure SIECancelaClick(Sender: TObject);
    procedure DBGEdicaoDblClick(Sender: TObject);
    procedure LATDSCClick(Sender: TObject);
    procedure CETSDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PEDEPGValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDDEROChange(Sender: TObject);
    procedure PEDECTChange(Sender: TObject);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure SIMSalvaClick(Sender: TObject);
    procedure SIMPedidoClick(Sender: TObject);
    procedure SIMNFeClick(Sender: TObject);
    procedure SIMCFeClick(Sender: TObject);
    procedure SIMFinalizaClick(Sender: TObject);
    procedure SIM_CAD_CLI_INFClick(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
    procedure SIMIMPORTAClick(Sender: TObject);
    procedure SIMCAD_CLIClick(Sender: TObject);
    procedure CETCDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoROM_PDSCValidate(Sender: TField);
    procedure EdicaoROM_PIPIValidate(Sender: TField);
    procedure CEIDCDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PECTNRExit(Sender: TObject);
    procedure GBINFADCADExit(Sender: TObject);
    procedure DEDTCAValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbstpdValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoBeforeEdit(DataSet: TDataSet);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
    procedure IEDescontosChange(Sender: TObject);
    procedure EdicaoBeforeClose(DataSet: TDataSet);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure EdicaoBeforeOpen(DataSet: TDataSet);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoAfterCancel(DataSet: TDataSet);
    procedure EdicaoCalcFields(DataSet: TDataSet);
    procedure EdicaoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure EdicaoEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DBGEdicaoBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure ACTMPValidateExecute(Sender: TObject);
    procedure CEVIPIChange(Sender: TObject);
  private
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    Motivo  : String;
    InfAdMot: TStringList;
    ASTFI   : String;
    ACDST   : Integer;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);

    procedure _DoCommitWait;

    procedure _Edicao(AFlag: Integer = 0; AEmpty: Boolean = False);
    procedure _CheckErrors;
    procedure _CheckConstraints;
    procedure _CPPSQ(ADTXT: String;AFTXT: String);
    procedure _FillCP;
    procedure PESQUISA_PEDIDO_ABATIMENTO_DEVOLUCAO;
    procedure _DELINFADCAD;
 public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;
    RECPedidos : TRECPEdidos;

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

                       AFB_SQL_TAB: String = '';
                       AFB_SQL_GET: String = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK : LongInt = 0 ;
                              ADEPK : String  = '';
                              AIDEV : LongInt = 0 ;
                              ACDEV : Word    = 0 ;

                              AFB_SQL_TAB: String = '';
                              AFB_SQL_GET: String = '');

    Destructor  Destroy; override;

    procedure PESQUISA_TIPO(pesq,chave: string);
    procedure PESQUISA_FPAGTO(pesq,chave: string);
  end;

var
  FrmVEN_PED: TFrmVEN_PED;
  _Form: TStringList = Nil;

implementation

uses uPrincipal, bPrincipal,
  pimporta_geral, pProduto_Devolucao_Cancelamento,
  pcad_cli_edi;

{$R *.dfm}

procedure TFrmVEN_PED._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmVEN_PED._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmVEN_PED._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmVEN_PED._WM_CREATE(var Msg: TMessage);
begin
  { INICIALIZA }
  Screen.Cursor := crAppStart;  { Cursor }
  //SetCursorPos(500,Self.Top); { Posição Inicial }
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
  oIRECPedidos(RECPedidos,laNone);
end;

procedure TFrmVEN_PED._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicativo }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Desktop }

  { CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;
end;

procedure TFrmVEN_PED._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  ACTEveRegister.Execute; { Registro }
end;

procedure TFrmVEN_PED._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmVEN_PED._WM_SHOW(var Msg: TMessage);
begin
  { BEFORE SHOWNING }
  Screen.Cursor := crHourGlass; { Cursor }
  REC_SHE_DEF.FResize := 0;     { Form Resize }
  ALockWindowUpdate   := True;  { Habilita SQL INJECTION }

  ACTConsulta.Execute; { Tabelas }
  ACTEdicao.Execute; { Ediçõe }
end;

procedure TFrmVEN_PED._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { INICIALIZAÇÃO DOS COMPONENTES }
  try
    Screen.Cursor := crAppStart;
    Tag := 1;

    { AFTER SHOWNING }
    ACTPesquisa.Execute; { Pesquisa Principal }

  finally
    Screen.Cursor := crDefault;
    oRTransact(TSEdicao,ltRead_Only_Release_Commit);

    REC_SHE_DEF.FInitialize := False;
    SIMSalva.Enabled := False;
    Tag := 0;
  end;

  if Showing then
  if Edicao.RecNo > 0 then
  begin
    PostMessage(TWinControl(DBGEdicao).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGEdicao).SetFocus;
  end else
  begin
    PostMessage(TWinControl(EDDECD).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(EDDECD).SetFocus;
  end;
end;

procedure TFrmVEN_PED._WM_RESIZE(var Message: TMessage);
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

procedure TFrmVEN_PED._WM_AFTER_RESIZE(var Message: TMessage);
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

Constructor TFrmVEN_PED.Create(AOwner: TComponent;
                         const AIDPK : LongInt = 0 ;
                               ADEPK : String  = '';
                               AIDEV : LongInt = 0 ;
                               ACDEV : Word    = 0 ;
                               
                               AFB_SQL_TAB: String = '';
                               AFB_SQL_GET: String = '');
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.FB_SQL_TAB := TRIM(AFB_SQL_TAB);
  REC_SHE_DEF.FB_SQL_GET := TRIM(AFB_SQL_GET);

  inherited Create(AOwner);
end;

Class procedure TFrmVEN_PED._ExecForm(AOwner : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                      AIDPK : LongInt = 0 ;
                                      ADEPK : String  = '';
                                      AIDEV : LongInt = 0 ;
                                      ACDEV : Word    = 0 ;

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

Destructor TFrmVEN_PED.Destroy;
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
            oFTransact(TConsulta);
            oFTransact(TSEdicao );
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
      PtrForm(_Form.Objects[idxForm])^ := Nil;
      _Form.Objects[idxForm] := Nil;
    end;
  finally
    Screen.Cursor := crDefault;
    inherited;
  end;
end;

procedure TFrmVEN_PED.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  Self.Position := poDesigned;
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'PED_PDV_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Pedidos';
  REC_SHE_DEF.GReferencia := 'Vendas';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;

  { CAIXA }
  _GetForceClose := (REC_SHE_DEF.CDEV = 0) or { Inclusão   }
                    (REC_SHE_DEF.CDEV = 2) or { Devolução  }
                    (REC_SHE_DEF.CDEV = 3);   { Abatimento }

  inherited;

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

procedure TFrmVEN_PED.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmVEN_PED.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmVEN_PED.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
  if REC_SHE_DEF.Editing then
  begin
    if (Edicao.State in [dsInsert,dsEdit]) and (EdicaoROM_TCDE.AsFloat > 0) then
        Edicao.Post;

    if Edicao.RecNo > 0 then
       Case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                              'Deseja Salvar ?',
                               PChar(Caption)  ,
                               MB_ICONQUESTION + MB_YESNOCANCEL) of
            mrCancel: Abort;
            mrYes   : begin
                        if ACTMPPost.Enabled then
                           ACTMPPost.Execute else

                        if ACTMPValidate.Enabled then
                           ACTMPValidate.Execute;

                        if ACTMEPost.Enabled then
                           ACTMEPost.Execute;
                      end;
       end;
  end;
end;

procedure TFrmVEN_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmVEN_PED.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SIECancela.Click;
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
       118      : { nothing };
       116      : { nothing };
  end;
end;

procedure TFrmVEN_PED.FormPaint(Sender: TObject);
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

procedure TFrmVEN_PED.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmVEN_PED.SIMIMPORTAClick(Sender: TObject);
begin
       FrmImporta_Geral := tFrmImporta_Geral.Create(Nil);
  with FrmImporta_Geral do
       try
         cbTIPO.Text    := IFThen(Pos(LeftStr(cbstpd.Text,3),'DEV'   ) = 0,'PEDIDOS'     ,'DEVOLUÇÕES');
         cbTIPO.Tag     := IFThen(Pos(LeftStr(cbstpd.Text,3),'DEVABA') = 0,EDCDRO.Tag + 1,EDCDRD.Tag  );
         cbTIPO.Enabled := (Pos(LeftStr(cbstpd.Text,3),'DEVABA') = 0);
         cbFANT.Enabled := (Pos(LeftStr(cbstpd.Text,3),'DEVABA') = 0);
         ShowModal;

         if FrmImporta_Geral.REC_SHE_DEF.Selected then
            try
              oLockWindowUpdate(Edicao);

              if Pos(LeftStr(cbstpd.Text,3),'DEV') > 0 then
              with SQLSEdicao do
              begin
                Close;
                SQL.Clear;
                SQL.Add('DELETE FROM PED_VEN_ITE');
                ExecQuery;
              end;

              imp_ite.First;
              while not imp_ite.Eof do
              begin
                Edicao.Append;
                EdicaoROM_IPRO.Value  := imp_iteROM_IPRO.AsInteger;
                EdicaoROM_CBAR.Value  := imp_iteROM_CBAR.Value;
                EdicaoROM_CART.Value  := imp_iteROM_CART.Value;
                EdicaoROM_CPRO.Value  := imp_iteROM_CPRO.Value;
                EdicaoROM_DPRO.Value  := imp_iteROM_DPRO.Value;
                EdicaoROM_DCOR.Value  := imp_iteROM_DGCP.Value;
                EdicaoROM_DUNI.Value  := imp_iteROM_DUNI.Value;

                EdicaoROM_QTUN.Value  := imp_iteROM_QTUN.AsCurrency;
                EdicaoROM_PESO.Value  := imp_iteROM_PESO.AsCurrency;
                EdicaoROM_PSCN.Value  := imp_iteROM_PSCN.AsCurrency;
                EdicaoROM_METR.Value  := imp_iteROM_METR.AsCurrency;
                EdicaoROM_REND.Value  := imp_iteROM_REND.AsCurrency;

                EdicaoROM_QDIS.Value  := imp_iteROM_QDIS.AsCurrency;
                EdicaoROM_RLDI.Value  := imp_iteROM_RLDI.AsInteger;

                EdicaoROM_QTDE.Value  := imp_iteROM_QTDE.AsCurrency;
                EdicaoROM_QTRL.Value  := imp_iteROM_QTRL.AsInteger;

                EdicaoROM_QTPD.Value  := imp_iteROM_QTPD.AsCurrency;
                EdicaoROM_RLPD.Value  := imp_iteROM_RLPD.AsInteger;

                EdicaoROM_PTABI.Value := imp_iteROM_PTABI.AsCurrency;
                EdicaoROM_PTABF.Value := imp_iteROM_PTABF.AsCurrency;

                EdicaoROM_PREC.AsCurrency := imp_iteROM_UNIT.AsCurrency;
                EdicaoROM_UNIT.AsCurrency := imp_iteROM_UNIT.AsCurrency;

                { Pega valor da nota fiscal }
                if RECPedidos.CDRO > 0 then
                   with SQLConsulta do
                   begin
                     Close;
                     SQL.Clear;
                     SQL.Add('SELECT PK.VPRC_COM FROM ' + SLPrincipal.Values['rom_ite'] + ' AS PK');
                     SQL.Add('WHERE  PK.IDPK = ''' + RECPedidos.CDRO          + '''');
                     SQL.Add('AND    PK.IDCP = ''' + imp_iteROM_IPRO.AsString + '''');
                     ExecQuery;

                     if Current.ByName('VPRC_COM').AsCurrency > 0 then
                     begin
                       EdicaoROM_PREC.AsCurrency := Current.ByName('VPRC_COM').AsCurrency;
                       EdicaoROM_UNIT.AsCurrency := Current.ByName('VPRC_COM').AsCurrency;
                     end;
                   end;

                EdicaoROM_PDSC.Value := imp_iteROM_PDSC.AsCurrency;
                EdicaoROM_PIPI.Value := imp_iteROM_PIPI.AsCurrency;

                EdicaoROM_TSDE.Value := EdicaoROM_QTDE.AsCurrency * EdicaoROM_PREC.AsCurrency;
                EdicaoROM_VDSC.Value := EdicaoROM_TSDE.AsCurrency *(EdicaoROM_PDSC.AsCurrency / 100);
                EdicaoROM_VIPI.Value := EdicaoROM_TSDE.AsCurrency *(EdicaoROM_PIPI.AsCurrency / 100);
                EdicaoROM_TCDE.Value := EdicaoROM_TSDE.AsCurrency + IFThen(RECUsuarios.Id = 66,EdicaoROM_VIPI.AsCurrency,0);

                EdicaoROM_FOTO.Value  := imp_iteROM_FOTO.Value;
                Edicao.Post;

                imp_ite.Next;
              end;

              if (Pos(LeftStr(cbstpd.Text,3),'DEVABA') > 0) and (Pos('Romaneio de Estoque',EMINFADCAD.Text) = 0) then
              begin
                EMINFADCAD.Lines.Add('Romaneio de Estoque Nº ' + EDTXT.Text + IFThen(pro_iteCTNR.AsString = EmptyStr,EmptyStr,' - Container Nº ' + pro_iteCTNR.AsString));

                if pro_iteINFADCAD.AsString <> EmptyStr then
                begin
                  EMINFADCAD.Lines.Add('');
                  EMINFADCAD.Lines.Add(TRIM(pro_iteINFADCAD.AsString));
                end;

                EMINFADCAD.Lines.Add(pro_iteLGCA.AsString + ' - ' + FormatDateTime('dd/mm/yy hh:mm',pro_iteDTCA.AsDateTime));

                oScrollMemo(EMINFADCAD, SB_LINEUP);
              end;
            finally
              oUnLockWindowUpdate(Edicao);
            end;
       finally
         FreeandNil(FrmImporta_Geral);
       end;

  SIMSalva.Enabled := True;
  oRefresh(Edicao);
end;

procedure TFrmVEN_PED.SIMPedidoClick(Sender: TObject);
begin
  uConstrucao;
end;

procedure TFrmVEN_PED.SIMNFeClick(Sender: TObject);
begin
  uConstrucao;
end;

procedure TFrmVEN_PED.SIMCFeClick(Sender: TObject);
begin
  uConstrucao;
end;

procedure TFrmVEN_PED.SIMFinalizaClick(Sender: TObject);
begin
  uConstrucao;
end;

procedure TFrmVEN_PED.SIMCAD_CLIClick(Sender: TObject);
begin
  if (not SIMCAD_CLI.Enabled) or (not SIMCAD_CLI.Visible) then
      Abort else ActiveControl := Nil;

  if CEIDCD.Value > 0 then
  begin
    frmcad_cli_edi := TFrmcad_cli_edi.Create(Nil,Trunc(CEIDCD.Value));
    try frmcad_cli_edi.ShowModal;
    finally
      if frmcad_cli_edi.REC_SHE_DEF.Edited then
      begin
        EDCNPJ.Text := frmcad_cli_edi.EDCNPJ.Text;
        EDDECD.Text := frmcad_cli_edi.edfant.Text;
        EDRZCD.Text := frmcad_cli_edi.edraza.Text;
      end;
      FreeAndNil(frmcad_cli_edi);
    end;
  end;
end;

procedure TFrmVEN_PED.SIM_CAD_CLI_INFClick(Sender: TObject);
begin
  if (not SIM_CAD_CLI_INF.Enabled) or (not SIM_CAD_CLI_INF.Visible) then
      Abort else ActiveControl := Nil;

  uPSQSCORE(self,CEIDCD.Text,EmptyStr);
end;

procedure TFrmVEN_PED.SIMSaidaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmVEN_PED.SIEIncluiClick(Sender: TObject);
begin
  oAppend(Edicao);
end;

procedure TFrmVEN_PED.SIEAlteraClick(Sender: TObject);
begin
  oEdit(Edicao);
end;

procedure TFrmVEN_PED.SIEExcluiClick(Sender: TObject);
begin
  if oYesNo(handle,'Excluir Item Nº '+EdicaoROM_ITEM.AsString+' ?') = mrNo then
     Abort;

  if (EdicaoROM_QTPD.AsCurrency > 0) and (RECPedidos.CDRO = 0) then
      oException(DBGEdicao,'Produto em processo de separação !');

  Edicao.Edit;
  EdicaoROM_FLAG.Value := 1;
  Edicao.Post;
end;

procedure TFrmVEN_PED.SIESalvaClick(Sender: TObject);
begin
  oPost(Edicao);
end;

procedure TFrmVEN_PED.SIECancelaClick(Sender: TObject);
begin
  oCancel(Edicao);
end;

procedure TFrmVEN_PED.EdicaoBeforeClose(DataSet: TDataSet);
begin
  if CAD_PRO_IMG.State = dsBrowse then CAD_PRO_IMG.Close;
end;

procedure TFrmVEN_PED.EdicaoROM_QTDEValidate(Sender: TField);
begin
  if not ALockWindowUpdate then
  begin
    EdicaoROM_PREC.Value := IFThen(not oEmpty(EdicaoROM_PREC.Value),EdicaoROM_PREC.Value,EdicaoROM_UNIT.Value);
    
    EdicaoROM_TSDE.Value := RoundTO(EdicaoROM_QTDE.Value * EdicaoROM_PREC.Value,-2);
    EdicaoROM_VDSC.Value := RoundTO(EdicaoROM_TSDE.Value *(EdicaoROM_PDSC.Value / 100),-2);
    EdicaoROM_TCDE.Value := RoundTO(EdicaoROM_QTDE.Value * EdicaoROM_UNIT.Value,-2);
    EdicaoROM_VIPI.Value := RoundTO(EdicaoROM_TCDE.Value *(EdicaoROM_PIPI.Value / 100),-2);
    EdicaoROM_TCDE.Value := RoundTO(EdicaoROM_TCDE.Value + IFThen(RECUsuarios.Id = 66,EdicaoROM_VIPI.Value,0),-2);
  end;
end;

procedure TFrmVEN_PED.EdicaoROM_PDSCValidate(Sender: TField);
begin
  if not ALockWindowUpdate then
         EdicaoROM_UNIT.Value := EdicaoROM_PREC.Value - ((EdicaoROM_PREC.Value * EdicaoROM_PDSC.Value) / 100);
end;

procedure TFrmVEN_PED.EdicaoROM_PIPIValidate(Sender: TField);
begin
  if not ALockWindowUpdate then
         EdicaoROM_VIPI.Value := RoundTO(EdicaoROM_TCDE.Value *(EdicaoROM_PIPI.Value / 100),-2);
end;

procedure TFrmVEN_PED.DBGEdicaoROM_CPROValidate(Sender: TObject;
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

procedure TFrmVEN_PED.DBGEdicaoROM_CCLFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGEdicao.EditingText := Trim(DBGEdicao.EditingText);
  if (Edicao.State in [dsInsert,dsEdit]) and (DBGEdicao.EditingText <> EmptyStr) and (DBGEdicao.EditingText <> EdicaoROM_CCLF.AsString) then
  begin
    EdicaoROM_CCLF.Value := DBGEdicao.EditingText;
    _CPPSQ(DBGEdicao.EditingText,'CP.NCM');
  end;
end;

procedure TFrmVEN_PED.DBGEdicaoROM_DPROValidate(Sender: TObject;
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

procedure TFrmVEN_PED.DBGEdicaoROM_QTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(DBGEdicao.EditingText)) and (Edicao.State in [dsInsert,dsEdit]) then
  try
    EdicaoROM_QTDE.Value := StrToFloat(DBGEdicao.EditingText);
    EdicaoROM_QTRL.Value := bRET_PECA(EdicaoROM_QTDE.Value,EdicaoROM_QTUN.Value);
  except
    DataBaseError('Quantidade Inválida !');
  end;
end;

procedure TFrmVEN_PED.DBGEdicaoROM_QTRLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (not oEmpty(DBGEdicao.EditingText)) and (Edicao.State in [dsInsert,dsEdit]) then
  try
    EdicaoROM_QTRL.Value := StrToInt(DBGEdicao.EditingText);
    EdicaoROM_QTDE.Value := bRET_QUANTIDADE(EdicaoROM_QTRL.AsInteger,EdicaoROM_QTUN.Value);
  except
    DataBaseError('Quantidade Inválida !');
  end;
end;

procedure TFrmVEN_PED.DBGEdicaoROM_UNITValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) and (oTextToValor(DBGEdicao.EditingText,2) <> EdicaoROM_UNIT.Value) then
  begin
    EdicaoROM_PREC.Value := oTextToValor(DBGEdicao.EditingText,9);
    EdicaoROM_UNIT.Value := EdicaoROM_PREC.Value - ((EdicaoROM_PREC.Value*EdicaoROM_PDSC.Value)/100);
  end;
end;

procedure TFrmVEN_PED.DBGEdicaoROM_VDSCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsEdit,dsInsert]) and (not oEmpty(DBGEdicao.EditingText)) then
      EdicaoROM_PDSC.Value := oTextToValor(DBGEdicao.EditingText);
end;

procedure TFrmVEN_PED.PESQUISA_TIPO(pesq,chave: string);
begin
  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT VEN_FATU,VEN_PDSC,VEN_STVE,VEN_DPAG,VEN_QTPC,VEN_PREC,VEN_QTSP,VEN_BAIP,VEN_NFEP,VEN_TINT,VEN_AGRP,VEN_BEST,VEN_DESC,VEN_PACR,VEN_PTNG,VEN_TIPO,VEN_QPRC FROM TAB_PED');
    SQL.Add('WHERE  '+pesq+' = '''+chave+'''');
    ExecQuery;

    edfatu.Text := Current.Vars[0].AsString;
    cbstco.Text := Current.Vars[2].AsString;
    cbprec.Text := Current.Vars[5].AsString;
    edqtsp.Text := Current.Vars[6].AsString;
    edqtpc.Text := Current.Vars[4].AsString;
    edtint.Text := Current.Vars[9].AsString;
    edagrp.Text := Current.Vars[10].AsString;
    edbest.Text := Current.Vars[11].AsString;
    edptng.Text := Current.Vars[14].AsString;
    cbstpd.Text := Current.Vars[15].AsString;
    cbstpd.Tag  := Current.Vars[16].AsInteger;

    if Current.Vars[0].AsString <> '1' then
    begin
      PEDEPG.Text := 'SEM COBRANÇA';
      cbstco.Text := 'SEM COBRANÇA';
    end;
  end;

  RECParametros.PED_PRECO := CBPREC.Text;
end;

procedure TFrmVEN_PED.PESQUISA_FPAGTO(pesq,chave: string);
begin
  if (chave = '0') or (chave = '') then
      Exit;

  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PAG_DPAG FROM TAB_PAG');
    if pesq = 'C' then
       SQL.Add('WHERE  ID = '''+chave+'''')
    else if pesq = 'F' then
       SQL.Add('WHERE  PAG_DPAG = '''+chave+'''');
    ExecQuery;

    PEDEPG.Text := Current.Vars[0].AsString;
    if Current.Vars[0].IsNull then
       oException(PEDEPG,'Prazo de Pagamento não Encontrado !');
  end;
end;

procedure TFrmVEN_PED.edtsdeKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TFrmVEN_PED.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TFrmVEN_PED.LATDSCClick(Sender: TObject);
begin
  LATDSC.Caption := IFThen(LATDSC.Caption = '%','$','%');
  LATDSC.Refresh;

  oRefresh(Edicao);
end;
procedure TFrmVEN_PED.CETSDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  oRefresh(Edicao);
end;

procedure TFrmVEN_PED.PEDEPGValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PESQUISA_FPAGTO('F',PEDEPG.Text);
end;

procedure TFrmVEN_PED.EDDEROChange(Sender: TObject);
begin
  SIMSalva.Enabled := (not ALockWindowUpdate);
end;

procedure TFrmVEN_PED.cbstpdValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);
end;

procedure TFrmVEN_PED.PEDECTChange(Sender: TObject);
begin
  SIMSalva.Enabled := (not ALockWindowUpdate);

  if Pos('NOSSO CARRO',PEDECT.Text) > 0 then
  IEMFRT.Text := '3' else
  if Pos('PRÓPRIO',PEDECT.Text) > 0 then
  IEMFRT.Text := '4' else
  if (oEmpty(PEDECT.Text)) or (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('SEM FRETE',PEDECT.Text) > 0) then
  IEMFRT.Text := '9';
end;

procedure TFrmVEN_PED._FillCP;
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

  EdicaoROM_UNIT.Value  := IFThen(cbprec.Text = 'ATACADO - NORMAL',FBird.FBCAD_PROVPRC_PAD.Value,
                           IFThen(cbprec.Text = 'ATACAREJO'       ,FBird.FBCAD_PROVPRC_ATV.Value,
                           IFThen(cbprec.Text = 'COMPRAS'         ,FBird.FBCAD_PROVPRC_COM_PAD.Value,
                           IFThen(cbprec.Text = 'LOJA VIRTUAL'    ,FBird.FBCAD_PROVPRC_LJV.Value,
                           IFThen(cbprec.Text = 'REPRESENTANTE'   ,FBird.FBCAD_PROVPRC_REP.Value,
                           IFThen(cbprec.Text = 'VAREJO'          ,FBird.FBCAD_PROVPRC_VAR.Value))))));
  EdicaoROM_PREC.Value  := EdicaoROM_UNIT.AsCurrency;

  EdicaoROM_PTABI.Value := IFThen(cbprec.Text = 'ATACADO - NORMAL',FBird.FBCAD_PROVPRC_PAD_INI.AsCurrency,EdicaoROM_PREC.AsCurrency);
  EdicaoROM_PTABF.Value := IFThen(cbprec.Text = 'ATACADO - NORMAL',FBird.FBCAD_PROVPRC_PAD_FIM.AsCurrency,EdicaoROM_PREC.AsCurrency);

  EdicaoROM_DPRO.Value  := FBird.FBCAD_PRODECP.AsString;
  EdicaoROM_DUNI.Value  := FBird.FBCAD_PROUCOM.AsString;
  EdicaoROM_UCON.Value  := FBird.FBCAD_PROUCON.AsString;
  EdicaoROM_IPRO.Value  := FBird.FBCAD_PROId.AsInteger;
  EdicaoROM_CCLF.Value  := FBird.FBCAD_PRONCM.AsString;
  EdicaoROM_CART.Value  := FBird.FBCAD_PROARTIGO.AsString;
  EdicaoROM_CPRO.Value  := FBird.FBCAD_PROSKU.AsString;
  EdicaoROM_DCOR.Value  := FBird.FBCAD_PRODGCP.AsString;
  EdicaoROM_CBAR.Value  := FBird.FBCAD_PROCEAN.AsString;
  EdicaoROM_QTUN.Value  := FBird.FBCAD_PROUQTDE.AsCurrency;
  EdicaoROM_PESO.Value  := FBird.FBCAD_PROPESO.AsCurrency;
  EdicaoROM_PSCN.Value  := FBird.FBCAD_PROPSCN.AsCurrency;
  EdicaoROM_METR.Value  := FBird.FBCAD_PROMETRO.AsCurrency;
  EdicaoROM_REND.Value  := FBird.FBCAD_PROREND.AsCurrency;
  EdicaoROM_PIPI.Value  := FBird.FBCAD_PROPIPI.AsCurrency;

  EdicaoROM_QDIS.Value  := FBird.FBCAD_PROEPE_QTDE.AsCurrency;
  EdicaoROM_RLDI.Value  := FBird.FBCAD_PROEPE_QTRL.AsInteger;
  EdicaoROM_STAV.Value  := IFThen(Pos(LeftStr(cbstpd.Text,3),'ABADEV') = 0,FBird.FBCAD_PROREST.AsString,'A'); // ignora status quanto abatimento ou devolução

  EdicaoROM_QTDE.Value  := EdicaoROM_QTUN.AsCurrency;
  EdicaoROM_QTRL.Value  := bRET_PECA(EdicaoROM_QTDE.Value,EdicaoROM_QTUN.Value);
end;

procedure TFrmVEN_PED.PESQUISA_PEDIDO_ABATIMENTO_DEVOLUCAO;
var
  NewString: string;
  ClickedOK: Boolean;
begin
  if EDCDRD.Tag > 0 then
     Exit; 

  edcdrd.Tag  := 0;
  edcdrd.Text := '';
  edcdrd.Hint := '';

  NewString := edcdrd.Text;
  ClickedOK := InputQuery('Vincular Pedido de Venda', 'Entre com o Número do Pedido de Venda', NewString);
  if ((ClickedOK) and (not oEmpty(NewString))) then
  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIRST 1 ID,ROM_DERO,IIF(ROM_DNFS IS NOT NULL,ROM_DNFS,IIF(ROM_DBAI IS NOT NULL,ROM_DBAI,ROM_DROM)) FROM '+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    DEPD = '''+NewString+'''');
    SQL.Add('ORDER BY ID DESC');
    ExecQuery;
    oLast(SQLFKConsulta);

    if Current.Vars[0].IsNull then
    begin
      edcdrd.Tag  := 0;
      edcdrd.Hint := '';
      edcdrd.Text := '';
    end else
    begin
      edcdrd.Tag  := Current.Vars[0].AsInteger;
      edcdrd.Text := Current.Vars[1].AsString;
      edcdrd.Hint := Current.Vars[2].AsString;
    end;
  end;

  if edcdrd.Tag = 0 then
     oException(DBGEdicao,'Número do Pedido não Encontrado ou Informado Incorretamente !');
end;

procedure TFrmVEN_PED._CPPSQ(ADTXT: String;AFTXT: String);
begin
  if not oEmpty(ADTXT) then
  try
    oOTransact(FBird.TFBProdutos);
    if uPesquisa_Produto(RECParametros.EP_ID,ADTXT,AFTXT,'LIKE','','%') > 0 then
    begin
      _FillCP;
      DBGEdicao.FocusedColumn := IFThen(AFTXT = 'NCM'      ,DBGEdicaoROM_CCLF.ColIndex,
                                 IFThen(AFTXT = 'DESCRICAO',DBGEdicaoROM_DPRO.ColIndex,DBGEdicaoROM_CPRO.ColIndex));
    end;
  finally
    oCTransact(FBird.TFBProdutos);
  end;
end;

procedure TFrmVEN_PED._CheckErrors;
var
  MSGErro: String;
begin
  ActiveControl := Nil;
  if Edicao.State in [dsEdit,dsInsert] then
     if (EdicaoROM_CPRO.AsString = EmptyStr) or (EdicaoROM_TCDE.Value = 0) then Edicao.Cancel else Edicao.Post;

  try
    Edicao.DisableControls;
    Edicao.First;

    if (Edicao.RecNo = 0) and (cbstpd.Text <> 'ABATIMENTO') then
        oException(cbstpd,'Pedido sem itens informados !');

    while not Edicao.Eof do
    begin
      if ((oEmpty(MSGErro)) and (oEmpty(EdicaoROM_CPRO.AsString))) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_CPRO.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade informada !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (oEmpty(EdicaoROM_DPRO.AsString))) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_DPRO.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade informada !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (EdicaoROM_QTDE.Value <= 0)) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem quantidade informada !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (EdicaoROM_UNIT.Value <= 0)) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_UNIT.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem valor unitário informado !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (EdicaoROM_TSDE.Value <= 0)) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_TSDE.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem subtotal informado !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if ((oEmpty(MSGErro)) and (EdicaoROM_TCDE.Value <= 0)) then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoROM_TCDE.ColIndex;
        MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' sem total informado !'+#13+
                   'Item: '  +EdicaoROM_ITEM.AsString+'.';
      end;
      if (edcdrd.Tag > 0) and (Pos(LeftStr(CBSTPD.Text,3),'DEV') > 0) then
          with SQLConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT ID FROM ' +SLPrincipal.Values['ped_ven_ite']);
            SQL.Add('WHERE  IDPK = '''+IntToStr(EDCDRD.Tag)   +'''');
            SQL.Add('AND    IDCP = '''+EdicaoROM_IPRO.AsString+'''');
            ExecQuery;
            if Current.Vars[0].AsInteger = 0 then
            begin
              DBGEdicao.FocusedColumn := DBGEdicaoROM_CPRO.ColIndex;
              MSGErro := 'Produto '+EdicaoROM_CPRO.AsString+' não pertence ao pedido nº '+EDCDRD.Text+' !'+#13+
                         'Item: '  +EdicaoROM_ITEM.AsString+'.';
            end;
          end;

      if not oEmpty(MSGErro) then Break;
         Edicao.Next;
    end;

    if not oEmpty(MSGErro) then oException(DBGEdicao,MSGErro);
  finally
    Edicao.First;
    Edicao.EnableControls;
  end;

  if CEIDCD.Value = 0 then
     oException(EDDECD,'Cliente não Informado !');

  if not psq_cli.Active then
         psq_cli.Open;

  if psq_cli.RecNo = 0 then
     oException(EDDECD,'Cliente não Cadastrado !');

  if IEIDCV.Text = '0' then
     oException(IEIDCV,'Vendedor não Informado !');

  if IEIDCR.Text = '0' then
     oException(IEIDCR,'Representante não Informado !');

  if oEmpty(cbstpd.Text) then oException(cbstpd,'Tipo de Pedido não Informado !');

  if oEmpty(cbstco.Text) then oException(cbstco,'Tipo de Cobrança não Informado !');

  if oEmpty(PEDEPG.Text) then oException(PEDEPG,'Prazo de Pagamento não Informado !');

  if ((edfatu.Text = '1') and (cbstco.Text = 'SEM COBRANÇA')) or ((edfatu.Text <> '1') and (cbstco.Text <> 'SEM COBRANÇA')) then
       oException(cbstco,'Tipo de Cobrança Inválido !');

  if ((edfatu.Text = '1') and (PEDEPG.Text = 'SEM COBRANÇA')) or ((PEDEPG.Text <> 'SEM COBRANÇA') and (cbstco.Text = 'SEM COBRANÇA')) then
       oException(PEDEPG,'Prazo de Pagamento Inválido !');

  if ((cbstco.Text = 'BANCÁRIO') and (IETPCO.Text = '0')) then
       oException(IETPCO,'Opção de Crédito não Permitido !'+#13+
                         'Para crédito 0 (zero) utilizar cobrança em carteira.');

  if ((CETCDE.Value > 0) and (Pos(cbstpd.Text,'ABATIMENTODEVOLUÇÃO') > 0)) then
       oException(cbstpd,'Valor Total do Pedido Inválido !');

  if (oEmpty(PEDECT.Text)) or (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('SEM FRETE',PEDECT.Text) > 0) then
      IEMFRT.Text := '9';

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAD_TRA');
    SQL.Add('WHERE  TRA_FANT = '''+PEDECT.Text+'''');
    ExecQuery;
    PEDECT.Tag := Current.Vars[0].AsInteger;

    if oEmpty(PEDECT.Tag) then oException(PEDECT,'Transportadora não Cadastrada !');
    if oEmpty(IEMFRT.Text)  then oException(IEMFRT  ,'Modalidade de Frete não Informada !');
  end;

  DBGEdicao.SetFocus;
end;

procedure TFrmVEN_PED._CheckConstraints;
var
  i: word;
begin
  if edcdro.Text  = EmptyStr then
  begin
    edcdro.Text := '0';
    edcdro.Tag  := 0;
  end;

  {if EDCDRO.Tag   = 0 then
     DEDTCA.Date := Now;}

  edcdcx.Text := IFThen((edcdcx.Text = '0') or (edcdcx.Text = ''),RECParametros.CDCX,edcdcx.Text);
  Motivo      := EmptyStr;
  InfAdMot.Clear;

  if Pos(LeftStr(CBSTPD.Text,3),'DEVABA') > 0 then
  begin
    if EDCDRO.Tag = 0 then
       try
         PESQUISA_PEDIDO_ABATIMENTO_DEVOLUCAO;
         TFrmProduto_Devolucao_Cancelamento._ExecForm(Nil,FrmProduto_Devolucao_Cancelamento,false,fsNormal);
       finally
         if not FrmProduto_Devolucao_Cancelamento.REC_SHE_DEF.Selected then
         Abort;

         if oEmpty(FrmProduto_Devolucao_Cancelamento.IEMotivo.Text) then
            oException(DBGEdicao,'Motivo de cancelamento Incorreto ou não Informado !');

         if not oEmpty(FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Lines.Text) then
            for i := 0 to FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Lines.Count - 1 do
                InfAdMot.Add(FrmProduto_Devolucao_Cancelamento.EMINFADCAD.Lines[i]);

         Motivo := FrmProduto_Devolucao_Cancelamento.IEMotivo.Text;
         ASTFI  := 'FATURADO';

         EMINFADCAD.Lines.Add('');
         EMINFADCAD.Lines.Add(CBSTPD.Text+' POR MOTIVO DE '+Motivo+' - PEDIDO DE VENDA Nº '+EDCDRD.Text);
         EMINFADCAD.Lines.Add(InfAdMot.Text);

         FrmProduto_Devolucao_Cancelamento.Free;
       end;
  end else
  if (cbstco.Text <> 'SEM COBRANÇA') and (CEIDCD.Value <> RECParametros.CD_ID) and (IEIDCR.Text <> RECParametros.CR_ID) then
  begin
    cbstpd.Hint := uFIN_BLQ(cbstco.Text,edfatu.Text,CEIDCD.Text);
    if cbstpd.Hint <> EmptyStr then
       oErro(Self.Handle,'Cliente bloqueado por falta de pagamento !' + #13 +
                         'Favor entrar em contato com o departamento financeiro.' + #13 + #13 +
                         'Nota: O pedido será salvo, mas ficará aguardando por liberação.');

    if (RECParametros.EP_NO <> 'OTIMOTEX FARDO') and (cbstpd.Hint = EmptyStr) then
    begin
      cbstpd.Hint := uLimiteVenda(cbstco.Text,edfatu.Text,CEIDCD.Text,CETCDE.Value);
      if cbstpd.Hint <> '' then
      oErro(Self.Handle,'Cliente ultrapassou o limite de crédito estabelecido !'+#13+
                   'Limite Atual: '       +formatfloat('R$ #,0.00.',RECPedidos.FIN_VCRD)+#13+#13+
                   'Títulos Pendentes: '  +formatfloat('R$ #,0.00',VALOR_BANCARIO)+' ( '+IntToStr(ITENS_BANCARIO)+' )'+#13+
                   'Carteiras Pendentes: '+formatfloat('R$ #,0.00',VALOR_CARTEIRA)+' ( '+IntToStr(ITENS_CARTEIRA)+' )'+#13+
                   'Pedidos Pendentes: '  +formatfloat('R$ #,0.00',VALOR_PEDIDO)  +' ( '+IntToStr(ITENS_PEDIDO)  +' )'+#13+#13+
                   'Saldo Permitido: '    +formatfloat('R$ #,0.00',VALOR_SALDO));
    end;

    ASTFI := IFThen(cbstpd.Hint <> EmptyStr,cbstpd.Hint,IFThen(Pos(LeftStr(ASTFI,3),'AGU') > 0,RECParametros.PED_STFI,ASTFI));
  end else
    ASTFI := RECParametros.PED_STFI;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_TPO WHERE DESCRICAO = '''+CBSTPD.Text+'''');
    ExecQuery;
    CBSTPD.Tag := Current.Vars[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_PAG WHERE PAG_DPAG = '''+PEDEPG.Text+'''');
    ExecQuery;
    PEDEPG.Tag := Current.Vars[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_TPO WHERE DESCRICAO = '''+CBSTCO.Text+'''');
    ExecQuery;
    CBSTCO.Tag := Current.Vars[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_STA WHERE DESCRICAO = '''+ASTFI+'''');
    ExecQuery;
    ACDST := Current.Vars[0].AsInteger;
  end;

  IF EDFATU.Text = '0' THEN
  BEGIN
    IETPCO.Hint := '***';
  END ELSE
  IF Pos(LeftStr(CBSTCO.Text,3),'BANBOLDUP') > 0 THEN
  BEGIN
    IETPCO.Hint := 'B ' + IETPCO.Text;
  END ELSE
  BEGIN
    IETPCO.Hint := 'C ' + IETPCO.Text;
  END
end;

procedure TFrmVEN_PED.CETCDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if CETCDE.Value > 0 then
     CETCDE.Value := CETCDE.Value * -1;
     CETSDE.Value := CETCDE.Value;
end;

procedure TFrmVEN_PED._Edicao(AFlag: Integer = 0; AEmpty: Boolean = False);
begin
  if AEmpty then
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('DELETE FROM PED_VEN_ITE');
       ExecQuery;
     end;

  with Edicao do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT PK.ID      ,PK.ROM_CDEP,');
    SelectSQL.Add('       PK.ROM_IDPK,PK.ROM_IDFK,');
    SelectSQL.Add('       PK.ROM_CDOC,PK.ROM_ITEM,PK.ROM_IPRO,PK.ROM_CART ,PK.ROM_CCLF,PK.ROM_CPRO,PK.ROM_CBAR,');
    SelectSQL.Add('       PK.ROM_DPRO,PK.ROM_DCOR,');
    SelectSQL.Add('       PK.ROM_DUNI,PK.ROM_UCON,PK.ROM_QTUN,');
    SelectSQL.Add('       PK.ROM_PESO,PK.ROM_PSCN,PK.ROM_METR,PK.ROM_REND,');
    SelectSQL.Add('       PK.ROM_QDIS,PK.ROM_RLDI,');
    SelectSQL.Add('       PK.ROM_QTDE,PK.ROM_QTRL,');
    SelectSQL.Add('       PK.ROM_PREC,PK.ROM_PTABI,PK.ROM_PTABF,');
    SelectSQL.Add('       PK.ROM_PDSC,PK.ROM_VDSC ,PK.ROM_UNIT ,');
    SelectSQL.Add('       PK.ROM_TSDE,PK.ROM_TCDE,');
    SelectSQL.Add('       PK.ROM_PIPI,PK.ROM_VIPI,');
    SelectSQL.Add('       PK.ROM_PSBR,PK.ROM_PSLQ,');
    SelectSQL.Add('       PK.ROM_QTPD,PK.ROM_RLPD,PK.ROM_DSEP,PK.ROM_DTPD,');
    SelectSQL.Add('       PK.ROM_FOTO,PK.ROM_STAV,');
    SelectSQL.Add('       PK.ROM_FLAG');
    SelectSQL.Add('FROM   PED_VEN_ITE AS PK');

    if AFlag >= 0 then
       SelectSQL.Add('WHERE PK.ROM_FLAG = '+IntToStr(AFlag));

    SelectSQL.Add('ORDER BY PK.ROM_ITEM');
    Prepare;
  end;

  oRTransact(TSEdicao);
end;

procedure TFrmVEN_PED.CEIDCDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  RECPedidos.AWinControl := TWinControl(Sender);
  RECPedidos.AQConsulta  := QConsulta;
  RECPedidos.CDCD        := '0';

  try uPSQCAD(RECPedidos);
  finally
    if RECPedidos.Selected then
    begin
      REC_SHE_DEF.Edited := (not ALockWindowUpdate);
      
      CEIDCD.Value := RECPedidos.IDCD;
      EDDECD.Text  := RECPedidos.DECD;
      EDRZCD.Text  := RECPedidos.RZCD;
      EDCNPJ.Text  := RECPedidos.CNPJ;

      IEIDCV.Text  := RECPedidos.IDCV;
      IEIDCR.Text  := RECPedidos.IDCR;

      PEDECT.Tag   := RECPedidos.IDCT;
      PEDECT.Text  := RECPedidos.DECT;
      IEMFRT.Text  := RECPedidos.MFRT;

      PEDEPG.Tag   := RECPedidos.CDPG;
      PEDEPG.Text  := RECPEdidos.DEPG; 

      EMINFADFIN.Lines.Clear;
      EMINFADFIN.Lines.Add(RECPedidos.INFADCAD);

      oRefresh(Edicao);

      if (Showing) then
      if (PEDEPG.Enabled) and (PEDEPG.Visible) then
      PEDEPG.SetFocus;
    end;
  end;  
end;

procedure TFrmVEN_PED.PECTNRExit(Sender: TObject);
begin
  PCINFADCAD.ActivePageIndex := 0;
  EMINFADCAD.SetFocus;
end;

procedure TFrmVEN_PED.GBINFADCADExit(Sender: TObject);
begin
  DBGEdicao.SetFocus;
end;

procedure TFrmVEN_PED.DEDTCAValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DEDTCA.Date := DEDTCA.Date + Time;
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_LAF');
    SQL.Add('WHERE  CAI_CDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',DEDTCA.Date)+'''');
    ExecQuery;

    if not Eof then
       edcdcx.Text  := Current.Vars[0].AsString;
  end;     
end;

procedure TFrmVEN_PED.IEDescontosChange(Sender: TObject);
begin
  if IEDescontos.Text = '0' then
  begin
    _DELINFADCAD;
    LATDSC.Caption := '%';
    CETDSC.Value   := 0;
  end;
  oRefresh(Edicao);
end;

procedure TFrmVEN_PED._DELINFADCAD;
begin
  { Descontos }
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf('')); {Excluir linha em branco }
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf('CAMPANHA CUPOM 50')); { Criar campo para isso }
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf('DESCONTO PROMOCIONAL NO VALOR DE R$ 50,00'));

  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L1));
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L2));

  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L1_001));
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L2_001));

  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L1_002));
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L2_002));

  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L1_003));
  EMINFADCAD.Lines.Delete(EMINFADCAD.Lines.IndexOf(RECPedidos.FIN_INFADCAD_L2_003));
end;

procedure TFrmVEN_PED.DTSCAD_PRO_IMGDataChange(Sender: TObject;
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

procedure TFrmVEN_PED.ACTRefreshExecute(Sender: TObject);
begin
  //oRefresh(Cadastro);
end;

procedure TFrmVEN_PED.ACTSaidaExecute(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
  SIECancela.Click else
  Close;
end;

procedure TFrmVEN_PED.ACTConsultaExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Principal }

  { TABELAS }
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
    ExecQuery;
    while not eof do
    begin
      //if ((not RECParametros.EST_QTRL) or (RECParametros.EST_QTRL) and (Pos(LeftStr(Current.Vars[0].AsString,3),'DEVABA') = 0)) then
      CBSTPD.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT VEN_TIPO FROM TAB_COB WHERE VEN_TIPO <> ''DEVOLUÇÃO'' AND VEN_TIPO <> ''ABATIMENTO''  GROUP BY 1 ORDER BY 1');
    ExecQuery;
    while not eof do
    begin
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
end;

procedure TFrmVEN_PED.ACTPesquisaExecute(Sender: TObject);
var
  i: word;
begin
  { INICIALIZAÇÃO DA TRANSAÇÃO PRINCIPAL DE PESQUISA }
  if not REC_SHE_DEF.FInitialize then
  begin
    oCTransact(TConsulta); 
    oOTransact(TConsulta); 
  end;

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
    if LISTA = Nil then
    LISTA := TStringList.Create else
    LISTA.Clear;
  end;

  SBRodape.Panels[0].Text :=
  IFThen(REC_SHE_DEF.CDEV = 0,'Inclusão'  ,
  IFThen(REC_SHE_DEF.CDEV = 1,'Alteração' ,
  IFThen(REC_SHE_DEF.CDEV = 2,'Devolução' ,
  IFThen(REC_SHE_DEF.CDEV = 3,'Abatimento','Pedido de Venda')))) + ' de Pedido';
  SBRodape.Refresh;

  DEDTCA.Date    := RECParametros.SHE_DATA + TIME;
  DEDTCA.Enabled := (RECUsuarios.Id = 66);

  //DBGEdicaoROM_QTRL.Visible := (RECParametros.EST_QTRL);

  //RICARDODBGEdicaoROM_UNIT.DisableEditor := not (bPSQUSER('USU_AUTO','Vendas','Pedidos','Alterar Preço da Tabela'));
  InfAdMot := TStringList.Create;

  { Pedido }
  CEIDCD.Value := RECParametros.CD_ID;
  EDDECD.Text  := RECParametros.CD_NO;
  EDRZCD.Text  := RECParametros.CD_NO;

  IEIDCV.Text  := IntToStr(IFThen(RECUsuarios.Grupo = 'VEN',RECUsuarios.ID,RECParametros.CV_ID));
  IEIDCR.Text  := RECParametros.CR_ID;

  PEDECT.Tag   := RECParametros.CT_ID;
  PEDECT.Text  := RECParametros.CT_NO;

  cbstpd.Text  := RECParametros.PED_TPD_NO;
  cbstco.Text  := RECParametros.PED_TCO_NO;
  PEDEPG.Text  := RECParametros.PED_PRZ_NO;

  ASTFI := RECParametros.PED_STFI;

  if Pos(REC_SHE_DEF.CDEV,'23') > 0 then { Devolução / Abatimento }
  begin
    { Cliente }
    CEIDCD.Enabled := False;
    EDCNPJ.Enabled := False;
    EDDECD.Enabled := False;
    EDRZCD.Enabled := False;

    { Vendedores }
    IEIDCV.Enabled := False;

    { Pedido }
    EDDERO.Enabled := False;
    CBSTPD.Enabled := False;
    CBSTCO.Enabled := False;
    IETPCO.Enabled := False;
    PEDEPG.Enabled := False;
    PECTNR.Enabled := False;

    { Transporte }
    PEDECT.Enabled := False;
    IEMFRT.Enabled := False;
    CEVFRT.Enabled := False;

    if (Pos(LeftStr(Caption,3),'Aba') = 0) and (RECParametros.EST_QTRL) then
    begin
      SIEInclui.Enabled  := False;
      SIEAltera.Enabled  := False;
      SIEExclui.Enabled  := False;
      SIESalva.Enabled   := False;
      SIECAncela.Enabled := False;

      if RECUsuarios.ID > 0 then
      for i := 0 to DBGEdicao.ColumnCount - 1 do
          DBGEdicao.Columns[i].DisableEditor := True;
          DBGEdicao.Tag := 1;
    end;
  end;

  if   REC_SHE_DEF.CDEV > 0 then
  with SQLPKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT');
    SQL.Add('       PK.IDEP,PK.IDPK,PK.DEPK,PK.DTCA,PK.CTNR,');
    SQL.Add('       PK.CDCX,PK.CDRO,PK.CDDV,PK.DEDV,');
    SQL.Add('       PK.IDCD,PK.CSCD,PK.FIN_VCRD,');
    SQL.Add('       PK.IDCR,PK.IDCV,');
    SQL.Add('       PK.IDCT,PK.DECT   ,PK.MFRT,PK.VFRT,');
    SQL.Add('       PK.TCDE AS PK_TCDE,PK.TSDE AS PK_TSDE,');
    SQL.Add('       PK.TDSC,PK.PDSC   ,PK.VDSC,');
    SQL.Add('       PK.STPD,PK.STCO   ,PK.TPCO,PK.RECO,PK.CDPG,PK.DEPG,');
    SQL.Add('       PK.DEST,PK.INFADCAD,');

    SQL.Add('       FK.IDFK  ,FK.ITEM,FK.IDCP  ,');
    SQL.Add('       FK.ARTIGO,FK.SKU ,FK.CEAN ,');
    SQL.Add('       FK.DECP          ,FK.DGCP ,');
    SQL.Add('       FK.UCOM          ,FK.UCON ,FK.UQTDE ,');
    SQL.Add('       FK.UPESO         ,FK.UPSCN,FK.UMETRO,FK.UREND,');
    SQL.Add('       FK.QTDE          ,FK.QTRL ,');
    SQL.Add('       FK.VPRC_PAD_INI  ,FK.VPRC_PAD_FIM,');
    SQL.Add('       FK.VPRC_PAD      ,FK.PDSC,FK.VDSC,FK.VPRC_COM,');
    SQL.Add('       FK.NCM           ,FK.PIPI,FK.VIPI,');
    SQL.Add('       FK.PCOM          ,FK.VCOM,');
    SQL.Add('       FK.TSDE          ,FK.TCDE,FK.VTSP,');
    SQL.Add('       FK.PSBR          ,FK.PSLQ,');
    SQL.Add('       FK.IDSP          ,FK.CDSP,FK.DESP,FK.QTSP,FK.RLSP,FK.DTSP,');
    SQL.Add('       CAST(COALESCE(SUM(E.EPE_QTDE) OVER(PARTITION BY FK.IDCP),0) AS NUMERIC(15,2)) AS EPE_QTDE,');
    SQL.Add('       CAST(COALESCE(SUM(E.EPE_QTRL) OVER(PARTITION BY FK.IDCP),0) AS INTEGER)       AS EPE_QTRL,');
    SQL.Add('       FK.REST');

    SQL.Add('FROM ' + oREPZero('VW_PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('LEFT JOIN ' + oREPZero('VW_PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS FK ON (FK.IDPK = PK.IDPK)');
    SQL.Add('LEFT JOIN SP_PSQ_CAD_PRO_EST_SLD(:IDEP,FK.IDCP) AS E ON (1 = 1)');

    SQL.Add('WHERE    PK.IDEP = ''' + RECParametros.EP_ID + '''');
    SQL.Add('AND      PK.IDPK = ''' + REC_SHE_DEF.IDPK    + '''');
    SQL.Add('ORDER BY FK.ITEM');

    ParamByName('IDEP').Value := RECParametros.EP_ID;
    Prepare;
    ExecQuery;

    if not Eof then
    begin
      { Pedido }
      edcdro.Text := IFThen(REC_SHE_DEF.CDEV = 1,Current.ByName('IDPK').AsString ,'0');
      edcdro.Tag  := IFThen(REC_SHE_DEF.CDEV = 1,Current.ByName('IDPK').AsInteger, 0 );
      eddero.Text := Current.ByName('DEPK').AsString;
      DEDTCA.Date := IFThen(REC_SHE_DEF.CDEV = 1,Current.ByName('DTCA').AsDateTime,RECParametros.SHE_DATA + TIME);

      { Romaneio }
      RECPedidos.CDRO := IntToStr(Current.ByName('CDRO').AsInteger);

      { Abatimentos / Devoluções }
      edcdrd.Tag  := IFThen(REC_SHE_DEF.CDEV = 1,Current.ByName('CDDV').AsInteger,Current.ByName('IDPK').AsInteger);
      edcdrd.Text := IFThen(REC_SHE_DEF.CDEV = 1,Current.ByName('DEDV').AsString ,Current.ByName('DEPK').AsString );

      { Caixa Registrado }
      edcdcx.Text := IFThen(REC_SHE_DEF.CDEV = 1,Current.ByName('CDCX').AsString,RECParametros.CDCX);

      { Destinatário }
      CEIDCD.Value    := Current.ByName('IDCD').AsInteger;
      CEIDCD.Modified := True;
      CEIDCD.ValidateEdit;

      { Vendedores }
      IEIDCV.Text := Current.ByName('IDCV').AsString; { Interno }
      IEIDCR.Text := Current.ByName('IDCR').AsString; { Externo }

      { Crédido Financeiro }
      RECPedidos.FIN_IDEP :=  RECParametros.EP_ID;
      RECPedidos.FIN_CSPD := (Current.ByName('CSCD').AsInteger = 1);
      RECPedidos.FIN_VCRD :=  Current.ByName('FIN_VCRD').AsFloat;

      { Descontos }
      LATDSC.Caption := Current.ByName('TDSC').AsString;
      CETDSC.Value   := IFThen(Current.ByName('TDSC').AsString = '%',Current.ByName('PDSC').AsFloat,Current.ByName('VDSC').AsFloat);

      { Tipos }
      cbstpd.Text := IFThen(REC_SHE_DEF.CDEV = 2,'DEVOLUÇÃO' ,
                     IFThen(REC_SHE_DEF.CDEV = 3,'ABATIMENTO',Current.ByName('STPD').AsString));

      { Cobrança }
      cbstco.Text := Current.ByName('STCO').AsString;
      IETPCO.Text := Current.ByName('TPCO').AsString;
      IETPCO.Hint := Current.ByName('RECO').AsString;

      { Prazos }
      PEDEPG.Text := IFThen(REC_SHE_DEF.CDEV = 1,Current.ByName('DEPG').AsString,RECParametros.PED_PRZ_NO);

      { TOTAIS }
      CETSDE.Value := Current.ByName('PK_TSDE').AsCurrency;
      CETCDE.Value := Current.ByName('PK_TCDE').AsCurrency;

      { Transporte }
      PEDECT.Tag   := Current.ByName('IDCT').AsInteger;
      PEDECT.Text  := Current.ByName('DECT').AsString;
      IEMFRT.Text  := Current.ByName('MFRT').AsString;
      CEVFRT.Value := Current.ByName('VFRT').AsFloat;
      PECTNR.Text  := Current.ByName('CTNR').AsString;

      { Situação }
      ASTFI := Current.ByName('DEST').AsString;

      { Informações Adicionais }
      EMINFADCAD.Text := Current.ByName('INFADCAD').AsString;

      while not Eof do
      begin
        if Current.ByName('IDFK').AsInteger > 0 then
        begin
          Edicao.Append;

          EdicaoROM_IDPK.Value  := Current.ByName('IDPK').AsInteger;
          EdicaoROM_CDEP.Value  := Current.ByName('IDEP').AsInteger;

          EdicaoROM_IDFK.Value  := IFThen(EDCDRO.TAG > 0,Current.ByName('IDFK').AsInteger,0);
          EdicaoROM_ITEM.Value  := oStrZero(Current.ByName('ITEM').AsInteger,5);
          EdicaoROM_IPRO.Value  := Current.ByName('IDCP').AsInteger;

          EdicaoROM_CART.Value  := Current.ByName('ARTIGO').AsString;
          EdicaoROM_CPRO.Value  := Current.ByName('SKU'   ).AsString;
          EdicaoROM_CBAR.Value  := Current.ByName('CEAN'  ).AsString;

          EdicaoROM_CCLF.Value  := Current.ByName('NCM' ).AsString;
          EdicaoROM_PIPI.Value  := Current.ByName('PIPI').AsCurrency;

          EdicaoROM_DPRO.Value  := Current.ByName('DECP').AsString;
          EdicaoROM_DCOR.Value  := Current.ByName('DGCP').AsString;

          EdicaoROM_DUNI.Value  := Current.ByName('UCOM' ).AsString;
          EdicaoROM_UCON.Value  := Current.ByName('UCON' ).AsString;
          EdicaoROM_QTUN.Value  := Current.ByName('UQTDE').AsCurrency;

          EdicaoROM_PESO.Value  := Current.ByName('UPESO' ).AsCurrency;
          EdicaoROM_PSCN.Value  := Current.ByName('UPSCN' ).AsCurrency;
          EdicaoROM_METR.Value  := Current.ByName('UMETRO').AsCurrency;
          EdicaoROM_REND.Value  := Current.ByName('UREND' ).AsCurrency;

          EdicaoROM_QTDE.Value  := Current.ByName('QTDE').AsCurrency;
          EdicaoROM_QTRL.Value  := Current.ByName('QTRL').AsInteger;

          EdicaoROM_PTABI.Value := Current.ByName('VPRC_PAD_INI').AsCurrency;
          EdicaoROM_PTABF.Value := Current.ByName('VPRC_PAD_FIM').AsCurrency;

          EdicaoROM_PREC.Value := Current.ByName('VPRC_PAD').AsCurrency;
          EdicaoROM_UNIT.Value := Current.ByName('VPRC_COM').AsCurrency;

          EdicaoROM_PDSC.Value := Current.ByName('PDSC').AsCurrency;
          EdicaoROM_VDSC.Value := Current.ByName('VDSC').AsCurrency;

          EdicaoROM_TSDE.Value := Current.ByName('TSDE').AsCurrency;
          EdicaoROM_TCDE.Value := Current.ByName('TCDE').AsCurrency;
          EdicaoROM_VIPI.Value := Current.ByName('VIPI').AsCurrency;

          EdicaoROM_PSBR.Value := Current.ByName('PSBR').AsCurrency;
          EdicaoROM_PSLQ.Value := Current.ByName('PSLQ').AsCurrency;

          EdicaoROM_QDIS.Value  := Current.ByName('EPE_QTDE').AsCurrency;
          EdicaoROM_RLDI.Value  := Current.ByName('EPE_QTRL').AsInteger;
          EdicaoROM_STAV.Value  := IFThen(Pos(REC_SHE_DEF.CDEV,'23') > 0,'A',Current.ByName('REST').AsString); // ignora status quanto abatimento ou devolução

          { Expedição }
          if REC_SHE_DEF.CDEV = 1 then // somente para alteração
          begin
            EdicaoROM_QTPD.Value := Current.ByName('QTSP').AsCurrency;
            EdicaoROM_RLPD.Value := Current.ByName('RLSP').AsInteger;
            EdicaoROM_DSEP.Value := Current.ByName('DESP').AsString;
            EdicaoROM_DTPD.Value := Current.ByName('DTSP').AsDateTime;
          end;

          Edicao.Post;
        end;

        Next;
      end;

      if Pos(REC_SHE_DEF.CDEV,'23') > 0 then { Devolução / Abatimento }
      begin
        CETCDE.ReadOnly := False;
        CETCDE.Cursor   := crHandPoint;

        CETCDE.Value := Current.ByName('TCDE').AsCurrency;
        CETSDE.Value := Current.ByName('TSDE').AsCurrency;
      end;
    end;
  end;

  PESQUISA_TIPO('VEN_TIPO',cbstpd.Text);
  PESQUISA_FPAGTO('F',PEDEPG.Text);
end;

procedure TFrmVEN_PED.ACTEdicaoExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TSEdicao ); { Edições Temporárias }

  { EDIÇÕES }
  _Edicao(0,True);
end;

procedure TFrmVEN_PED.ACTMPAppendExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_PED.ACTMPEditExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_PED.ACTMPDeleteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_PED.ACTMPPostExecute(Sender: TObject);
begin
  if oYesNo(handle,'Salvar Edição ?') = mrNo then
  Abort;

  ACTCheckErrors.Execute;
  ACTCheckConstraints.Execute;
end;

procedure TFrmVEN_PED.ACTMPValidateExecute(Sender: TObject);
begin
  if oYesNo(handle,'Validar Edição ?') = mrNo then
  Abort;

  ACTCheckErrors.Execute;
  ACTCheckConstraints.Execute;
end;

procedure TFrmVEN_PED.ACTMPCancelExecute(Sender: TObject);
begin
  REC_SHE_DEF.Editing := False;
  Close;
end;

procedure TFrmVEN_PED.ACTMEAppendExecute(Sender: TObject);
begin
  if (not (GBEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oAppend(Edicao,REC_SHE_DEF.GAppend);
end;

procedure TFrmVEN_PED.ACTMEEditExecute(Sender: TObject);
begin
  if (not (GBEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oEdit(Edicao,REC_SHE_DEF.GEdit);
end;

procedure TFrmVEN_PED.ACTMEDeleteExecute(Sender: TObject);
begin
  if (not (ActiveControl is TdxDBGrid)) or { Focado no Grid }
     (not (GBEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oDelete(Edicao,REC_SHE_DEF.GDelete);
end;

procedure TFrmVEN_PED.ACTMEPostExecute(Sender: TObject);
begin
  if (not (GBEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oPost(Edicao);
end;

procedure TFrmVEN_PED.ACTMECancelExecute(Sender: TObject);
begin
  if (not (GBEdicao.Enabled)) or { Habilitado }
     (ALockWindowUpdate) then { SQL Injection }
  Exit;

  oCancel(Edicao);
end;

procedure TFrmVEN_PED.ACTCheckConstraintsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_PED.ACTCheckErrorsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_PED.ACTRelatoriosExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_PED.ACTDashboardsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_PED.ACTProgressBarExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_PED.ACTEveRegisterExecute(Sender: TObject);
begin
  { UNREGISTER EVENTS }
  if EEvent.Registered then
     try
       EEvent.UnregisterEvents;
       EEvent.Events.Clear;

       REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin  }
       REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Padrão }
       REC_SHE_DEF.FB_EVE_EDT := EmptyStr; { Edição }
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
       if ACTEveRegister.Tag > 0 then
       begin
         REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-EDT' + oStrZero(ACTEveRegister.Tag,3);
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

procedure TFrmVEN_PED.ACTEveExecuteExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then
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

procedure TFrmVEN_PED.ACTEveExpressExecute(Sender: TObject);
begin
  ACTEveRegister.Execute;
  ACTEveExecute.Execute;
end;

procedure TFrmVEN_PED.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
//  if ((RECUSuarios.IS_EVE_ADM    ) and (RightStr(EventName,3) = 'ADM')) or
//     ((not RECUSuarios.IS_EVE_ADM) and (RightStr(EventName,3) = oStrZero(RECUsuarios.ID,3))) then
//
//  if REC_SHE_DEF.FB_EventAlert then
//  oRefresh(Cadastro);
end;

procedure TFrmVEN_PED.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crHourGlass;
end;

procedure TFrmVEN_PED.EdicaoAfterOpen(DataSet: TDataSet);
begin
  { FINALIZA FORM SCREEN }
  Screen.Cursor := crDefault;

  SBRodape.Panels[0].Text := 'Consulta';
  REC_SHE_DEF.FB_PSQ_INI  := False;

  if not ALockWindowUpdate then
  begin
    oSetFocus(DBGEdicao);

    if CAD_PRO_IMG.State = dsInactive then CAD_PRO_IMG.Open; { Imagens }

    if CBSTPD.Text <> 'ABATIMENTO' then
    try
      with SQLSEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT CAST(SUM(ROM_QTDE) AS NUMERIC(15,2)),SUM(ROM_QTRL),SUM(ROM_TSDE),SUM(ROM_TCDE),SUM(ROM_VIPI),SUM(ROM_PSBR),SUM(ROM_PSLQ)');
        SQL.Add('FROM   PED_VEN_ITE ');
        SQL.Add('WHERE  ROM_FLAG = 0');
        ExecQuery;

        CEQTDE.Value := Current.Vars[0].AsCurrency;
        CEQTRL.Value := Current.Vars[1].AsInteger;
        CETSDE.Value := ABS(Current.Vars[2].AsCurrency);
        CETCDE.Value := ABS(Current.Vars[3].AsCurrency);
        CEVIPI.Value := Current.Vars[4].AsCurrency;
        CEPSBR.Value := Current.Vars[5].AsCurrency;
        CEPSLQ.Value := Current.Vars[6].AsCurrency;
      end;

      { Descontos Pedido }
      if IEDescontos.Text = '1' then
      if (RECPedidos.FIN_VDSC_INI_001 > 0) and (CETCDE.Value >= RECPedidos.FIN_VDSC_INI_001) and (CETCDE.Value <= RECPedidos.FIN_VDSC_FIM_001) then
      begin
        _DELINFADCAD;
        LATDSC.Caption := '%';
        CETDSC.Value   := RECPedidos.FIN_PDSC_001;

        EMINFADCAD.Lines.Append('');
        EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L1_001);
        EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L2_001);
      end else
      if (RECPedidos.FIN_VDSC_INI_002 > 0) and (CETCDE.Value >= RECPedidos.FIN_VDSC_INI_002) and (CETCDE.Value <= RECPedidos.FIN_VDSC_FIM_002) then
      begin
        _DELINFADCAD;
        LATDSC.Caption := '%';
        CETDSC.Value   := RECPedidos.FIN_PDSC_002;

        EMINFADCAD.Lines.Append('');
        EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L1_002);
        EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L2_002);
      end else
      if (RECPedidos.FIN_VDSC_INI_003 > 0) and (CETCDE.Value >= RECPedidos.FIN_VDSC_INI_003) and (CETCDE.Value <= RECPedidos.FIN_VDSC_FIM_003) then
      begin
        _DELINFADCAD;
        LATDSC.Caption := '%';
        CETDSC.Value   := RECPedidos.FIN_PDSC_003;

        EMINFADCAD.Lines.Append('');
        EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L1_003);
        EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L2_003);
      end else
      if RECPedidos.FIN_VDSC > 0 then
      begin
        if edcdro.Tag = 0 then { Somente na criação do pedido - Criar campo como parâmetro }
        begin
          _DELINFADCAD;
          LATDSC.Caption := '$';
          CETDSC.Value   := RECPedidos.FIN_VDSC;

          EMINFADCAD.Lines.Append('');
          EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L1);
          EMINFADCAD.Lines.Append(RECPedidos.FIN_INFADCAD_L2);
        end;
      end;

      if CETCDE.Value <> 0 then
      if LATDSC.Caption = '%' then
      begin
        CEPDSC.Value := CETDSC.Value;
        CEVDSC.Value := RoundTO((CETDSC.Value / 100) * CETCDE.Value,-2);
      end else
      if LATDSC.Caption = '$' then
      begin
        CEPDSC.Value := RoundTO((CETDSC.Value * 100) / CETCDE.Value,-2);
        CEVDSC.Value :=  CETDSC.Value;
      end;

      { Totais }
      CETCDE.Value := CETCDE.Value - CEVDSC.Value; // Total
      CETCDE.Value := CETCDE.Value + CEVFRT.Value; // Frete

      { Devoluções e/ou Abatimentos }
      if Pos(LeftStr(cbstpd.Text,3),'ABADEV') > 0 then
      begin
        CETSDE.Value :=  CETSDE.Value * -1;
        CETCDE.Value := (CETCDE.Value + CEVIPI.Value) * -1;
      end;

    finally Screen.Cursor := crDefault;
    end;
  end;  
end;

procedure TFrmVEN_PED.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  Edicao.Fields[0].Tag := Edicao.RecNo;

  if not ALockWindowUpdate then
  if (RECPedidos.CDRO > 0) and (REC_SHE_DEF.CDEV = 1) then
      DataBaseError('Edição de produtos não permitida !' + #13+
                    'Pedido já Romaneado.');
end;

procedure TFrmVEN_PED.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value        := 0;
  EdicaoROM_CDEP.Value  := RECParametros.EP_ID;
  EdicaoROM_IDPK.Value  := 0;
  EdicaoROM_IDFK.Value  := 0;
  EdicaoROM_FLAG.Value  := 0;
  EdicaoROM_QDIS.Value  := 0;
  EdicaoROM_RLDI.Value  := 0;
  EdicaoROM_QTPD.Value  := 0;
  EdicaoROM_RLPD.Value  := 0;
  EdicaoROM_PREC.Value  := 0;
  EdicaoROM_PTABI.Value := 0;
  EdicaoROM_PTABF.Value := 0;
  EdicaoROM_PDSC.Value  := 0;
  EdicaoROM_VDSC.Value  := 0;
  EdicaoROM_UNIT.Value  := 0;
  EdicaoROM_TSDE.Value  := 0;
  EdicaoROM_TCDE.Value  := 0;
  EdicaoROM_PIPI.Value  := 0;
  EdicaoROM_VIPI.Value  := 0;
  EdicaoROM_PSBR.Value  := 0;
  EdicaoROM_PSLQ.Value  := 0;

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(ROM_ITEM) FROM PED_VEN_ITE');
    SQL.Add('WHERE  ROM_FLAG = 0');
    ExecQuery;
    EdicaoROM_ITEM.Value := oStrZero(Current.Vars[0].AsInteger + 1,5);
  end;
end;

procedure TFrmVEN_PED.EdicaoAfterInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    DBGEdicaoROM_CPRO.Field.FocusControl;
    oSetFocus(DBGEdicao);
  end;
end;

procedure TFrmVEN_PED.EdicaoBeforeEdit(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
     if (RECPedidos.CDRO > 0) and (REC_SHE_DEF.CDEV = 1) then
         DataBaseError('Edição de produtos não permitida !' + #13+
                       'Pedido já Romaneado.');
end;

procedure TFrmVEN_PED.EdicaoAfterEdit(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  oSetFocus(DBGEdicao);
end;

procedure TFrmVEN_PED.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  if (RECPedidos.CDRO > 0) and (REC_SHE_DEF.CDEV = 1) then
      DataBaseError('Edição de produtos não permitida !' + #13+
                    'Pedido já Romaneado.');
end;

procedure TFrmVEN_PED.EdicaoAfterDelete(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    oSetFocus(DBGEdicao);
    oRefresh(Edicao);
  end;
end;

procedure TFrmVEN_PED.EdicaoBeforePost(DataSet: TDataSet);
begin
  if (not ALockWindowUpdate) and (EdicaoROM_FLAG.AsInteger = 0) then
  begin
    { Verifica Duplicidades
    if Pos(LeftStr(cbstpd.Text,3),'ABADEV') = 0 then
       with SQLSEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT ROM_ITEM FROM PED_VEN_ITE');
         SQL.Add('WHERE  ID <> '''+EdicaoId.AsString+'''');
         SQL.Add('AND    ROM_CPRO = '''+EdicaoROM_CPRO.AsString+'''');
         ExecQuery;
         if not Eof then
            DataBaseError('Produto já Cadastrado !'+#13+
                          'Item Nº '+Current.Vars[0].AsString+'.');
       end; }

    { Descrição }
    if EdicaoROM_DPRO.AsString = EmptyStr then
    begin
      DBGEdicao.SetFocus;
      DBGEdicao.FocusedColumn := DBGEdicaoROM_DPRO.ColIndex;
      DataBaseError('Descrição do produto não pode ficar em branco !');
    end;

    { Quantidade }
    if (EdicaoROM_CPRO.AsString <> EmptyStr) and (EdicaoROM_QTDE.AsCurrency = 0) then
    begin
      DBGEdicao.SetFocus;
      DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex;
      DataBaseError('Quantidade não informada !');
    end;

    { Preço Padrão }
    if EdicaoROM_PREC.AsCurrency  = 0 then
       EdicaoROM_PREC.AsCurrency := EdicaoROM_UNIT.AsCurrency;

    { Situação }
    if EdicaoROM_STAV.AsString = 'I' then DataBaseError('Produto '+EdicaoROM_CPRO.AsString+' Inativo !');
    if EdicaoROM_STAV.AsString = 'PRÉ' then DataBaseError('Produto '+EdicaoROM_CPRO.AsString+' em Desenvolvimento !');

    { Peso Líquido }
    if  LeftStr(EdicaoROM_DUNI.AsString,1) = 'K' then EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsCurrency else
    if (LeftStr(EdicaoROM_DUNI.AsString,1) = 'M') and (EdicaoROM_REND.AsCurrency > 0) then
        EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsCurrency / EdicaoROM_REND.AsCurrency else
    if (LeftStr(EdicaoROM_DUNI.AsString,1) = 'M') and (EdicaoROM_METR.AsCurrency > 0) and (EdicaoROM_PESO.AsCurrency > 0) then
        EdicaoROM_PSLQ.Value := (EdicaoROM_QTDE.AsCurrency * EdicaoROM_PESO.AsCurrency) / EdicaoROM_METR.AsCurrency else
    if  EdicaoROM_PESO.AsCurrency > 0 then
        EdicaoROM_PSLQ.Value := (EdicaoROM_PESO.AsCurrency * EdicaoROM_QTDE.AsCurrency) / IFThen(EdicaoROM_QTUN.AsCurrency > 0,EdicaoROM_QTUN.AsCurrency,1);

    { Peso Bruto }
    EdicaoROM_PSBR.Value := EdicaoROM_PSLQ.AsCurrency + (EdicaoROM_QTRL.AsInteger * IFThen(EdicaoROM_PSCN.AsCurrency > 0,EdicaoROM_PSCN.AsCurrency,0.02));
  end;
end;

procedure TFrmVEN_PED.EdicaoAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    oRefresh(Edicao);
    SIMSalva.Enabled := True;
  end;  
end;

procedure TFrmVEN_PED.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if Edicao.Fields[0].Tag = 0 then
  begin
    Edicao.Close;
    Edicao.Open;

    ABORT;
  end;
end;

procedure TFrmVEN_PED.EdicaoAfterCancel(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmVEN_PED.EdicaoCalcFields(DataSet: TDataSet);
begin
  EdicaoC_ID.Value := Edicao.RecNo;
end;

procedure TFrmVEN_PED.EdicaoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_PED.EdicaoEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_PED.EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_PED.EdicaoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_PED.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  if not ALockWindowUpdate then
  begin
    if (DBGEdicao.Tag = 0) and (RECUsuarios.ID > 0) then
    begin
      if Edicao.State = dsInsert then
         DBGEdicaoROM_CPRO.DisableEditor := False else
         DBGEdicaoROM_CPRO.DisableEditor := (EdicaoROM_QTPD.Value > 0);

      DBGEdicaoROM_CCLF.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_DCOR.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_DPRO.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_DUNI.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_QTDE.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;
      DBGEdicaoROM_QTRL.DisableEditor := DBGEdicaoROM_CPRO.DisableEditor;

      if (Edicao.State <> dsInsert) and (edcdro.Tag > 0) then
      begin
        DBGEdicaoROM_CPRO.DisableEditor := True;
        DBGEdicaoROM_CCLF.DisableEditor := True;
      end;
    end;

    if Edicao.State = dsBrowse then
    begin
      DBGEdicao.ApplyBestFit(DBGEdicaoROM_CPRO);
      DBGEdicao.ApplyBestFit(DBGEdicaoROM_DCOR);
      DBGEdicao.ApplyBestFit(DBGEdicaoROM_DUNI);

      { Tabela de Preços }
      LAPRC_TAB_ACIMA_MIN.Caption := FormatFloat('R$ #,0.00',EdicaoROM_PTABI.AsCurrency);
      LAPRC_TAB_ACIMA_MAX.Caption := FormatFloat('R$ #,0.00',EdicaoROM_PTABF.AsCurrency);
      if (EdicaoROM_UNIT.AsCurrency <> EdicaoROM_PTABI.AsCurrency) or (EdicaoROM_UNIT.AsCurrency <> EdicaoROM_PTABF.AsCurrency) or (EdicaoROM_PTABI.AsCurrency <> EdicaoROM_PTABF.AsCurrency) then
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
  end;
end;

procedure TFrmVEN_PED.DTSEdicaoStateChange(Sender: TObject);
begin
  if Pos(LeftStr(Caption,3),'Dev') = 0 then
  oState(Edicao,SBEdicao);
end;

procedure TFrmVEN_PED.DBGEdicaoBackgroundDrawEvent(Sender: TObject;
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

procedure TFrmVEN_PED.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGEdicaoROM_QTPD.Index] > 0 then
    begin
      AFont.Color := clWhite;
      AColor      := clBlack;
    end else
    begin
      if AColumn = DBGEdicaoROM_QDIS then
      begin
        AFont.Color := clBlack;
        if StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_QDIS.Index])) <= 0 then
        AFont.Color := $000024B3;
        AColor := $00E9E9E9;
      end;

      if (ANode.Values[DBGEdicaoROM_UNIT.Index] = 0) and (Edicao.State <> dsInsert) then
      begin
        AFont.Color := clWhite;
        AColor      := $000024B3;
      end;

      if (AColumn = DBGEdicaoROM_TSDE) or (AColumn = DBGEdicaoROM_TCDE) then
      begin
        AFont.Color := clWhite;
        AColor      := $00E1AD40;
      end;
    end;

    { SKU }
    if (AColumn = DBGEdicaoROM_CPRO) and (ANode.Values[DBGEdicaoROM_CPRO.Index] <> Null) then
    if (Length(ANode.Values[DBGEdicaoROM_CPRO.Index]) > 14) then
    AFont.Size := 7;

    { Descrição }
    if (AColumn = DBGEdicaoROM_DPRO) and (ANode.Values[DBGEdicaoROM_DPRO.Index] <> Null) then
    if (Length(ANode.Values[DBGEdicaoROM_DPRO.Index]) > 40) then
    AFont.Size := 7;

    { Grade }
    if (AColumn = DBGEdicaoROM_DCOR) and (ANode.Values[DBGEdicaoROM_DCOR.Index] <> Null) then
    if (Length(ANode.Values[DBGEdicaoROM_DCOR.Index]) > 28) then
    AFont.Size := 7;

    { IPI }
    if (AColumn = DBGEdicaoROM_PIPI) and (ANode.Values[DBGEdicaoROM_PIPI.Index] <> Null) then
    if (ANode.Values[DBGEdicaoROM_PIPI.Index] > 0) then
    begin
      AColor := clInfoBk;
      AFont.Color := clWindowText;
    end;
  end;

  if (AColumn = DBGEdicaoROM_UNIT) and (StrToFloat(oTrimValor(ANode.Values[DBGEdicaoROM_UNIT.Index])) > 0) then
  if ANode.Values[DBGEdicaoROM_UNIT.Index] < ANode.Values[DBGEdicaoROM_PTABI.Index] then
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

procedure TFrmVEN_PED.DBGEdicaoDblClick(Sender: TObject);
begin
  if Edicao.State = dsBrowse then
  begin
    if (ACTMPEdit.Enabled) and (ACTMPEdit.Visible) then
        ACTMPEdit.Execute else

    if (ACTMEEdit.Enabled) and (ACTMEEdit.Visible) then
        ACTMEEdit.Execute;
  end;      
end;

procedure TFrmVEN_PED.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_insert: SIEInclui.Click;
       vk_return: if Edicao.State = dsBrowse then SIEAltera.Click else
                     if EdicaoROM_IPRO.AsInteger > 0 then
                     begin
                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_CPROROM_DPROROM_DCOR') > 0 then
                       DBGEdicao.FocusedColumn := DBGEdicaoROM_QTDE.ColIndex else

                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_QTDE') > 0 then
                       DBGEdicao.FocusedColumn := IFThen(EdicaoROM_QTRL.AsInteger > 0,DBGEdicaoROM_UNIT.ColIndex,DBGEdicaoROM_QTRL.ColIndex) else

                       if Pos(DBGEdicao.FocusedField.FieldName,'ROM_QTRL') > 0 then
                       DBGEdicao.FocusedColumn := DBGEdicaoROM_UNIT.ColIndex else
                       DBGEdicao.FocusedColumn := DBGEdicao.FocusedColumn + 1;

                       if ((EdicaoROM_TCDE.AsCurrency > 0) and
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

procedure TFrmVEN_PED.CEVIPIChange(Sender: TObject);
begin
  if Sender is TdxCurrencyEdit then
  if TdxCurrencyEdit(Sender).Value > 0 then
     TdxCurrencyEdit(Sender).Color := clInfoBk else
     TdxCurrencyEdit(Sender).Color := $00FDF9F4;
end;

procedure TFrmVEN_PED.SIMSalvaClick(Sender: TObject);
begin
  _CheckErrors;
  _CheckConstraints;

  oDoCommitWait(TEdicao,_DoCommitWait); { Principal }
  oAviso(handle,'Pedido ' + RECPedidos.DEPK + ' ' + IFThen(edcdro.Tag = 0,'Registrado','Atualizado')+' com Sucesso !');

  if Pos(LeftStr(cbstpd.Text,3),'ABADEV') > 0 then
  bBAI_FINANCEIRO(0,RECPedidos.IDPK);

  SIMSalva.Tag        := 1;
  SIMSalva.Enabled    := False;
  SIMPedido.Enabled   := True;
  SIMNFe.Enabled      := True;
  SIMCFe.Enabled      := True;
  SIMFinaliza.Enabled := True;                       

  ACTEveExecute.Execute;
  Close;
end;

procedure TFrmVEN_PED._DoCommitWait;
var
  RECSP_PED_VEN_ITE: TRECPedidos;
  RECSP_CAD_PRO_EST: TRECPedidos;
begin
  if (edcdro.Tag = 0) and (RECPedidos.FIN_VCRD > 0) then
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAD_CLI_CRD');
    SQL.Add('SET    VDSC = 0');
    SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    IDCD = '''+CEIDCD.Text     +'''');
    ExecQuery;
    Close;
  end;

  try
    oIRECPedidos(RECSP_PED_VEN_ITE); RECSP_PED_VEN_ITE.ASPEdicao := SPEdicao;
    oIRECPedidos(RECSP_CAD_PRO_EST); RECSP_CAD_PRO_EST.ASPEdicao := SPEdicao;

    RECPedidos.IDPK := EDCDRO.Tag;
    RECPedidos.DEPK := EDDERO.Text;
    RECPedidos.DTPK := DEDTCA.Date;

    RECPedidos.CTNR := PECTNR.Text;
    RECPedidos.CDCX := edcdcx.Text;

    RECPedidos.IDCD := CEIDCD.Value;
    RECPedidos.IDCV := IEIDCV.Text;
    RECPedidos.IDCR := IEIDCR.Text;

    RECPedidos.PK_QTDE := CEQTDE.Value;
    RECPedidos.PK_QTRL := Trunc(CEQTRL.Value);

    RECPedidos.PK_TSDE := CETSDE.Value;
    RECPedidos.PK_TDSC := LATDSC.Caption;
    RECPedidos.PK_PDSC := CEPDSC.Value;
    RECPedidos.PK_VDSC := CEVDSC.Value;
    RECPedidos.PK_TCDE := CETCDE.Value;
    RECPedidos.PK_VIPI := CEVIPI.Value;

    RECPedidos.IDCT := PEDECT.Tag;
    RECPedidos.MFRT := IEMFRT.Text;
    RECPedidos.VFRT := CEVFRT.Value;
    RECPedidos.CFRT := EmptyStr;

    RECPedidos.PK_PSBR := CEPSBR.Value;
    RECPedidos.PK_PSLQ := CEPSLQ.Value;

    RECPedidos.IDFK := edcdrd.Tag;
    RECPedidos.DEFK := edcdrd.Text;
    RECPedidos.DTFK := 0;

    RECPedidos.PED_CDPD := cbstpd.Tag;
    RECPedidos.STPD := cbstpd.Text;

    RECPedidos.CDCO := cbstco.Tag;
    RECPedidos.STCO := cbstco.Text;
    RECPedidos.TPCO := IETPCO.Text;
    RECPedidos.CDPG := PEDEPG.Tag;

    RECPedidos.PK_CDST := ACDST;
    RECPedidos.PK_DEST := ASTFI;

    RECPedidos.INFADCAD := EMINFADCAD.Text;

    RECPedidos.ASPEdicao := SPEdicao;
    oSP_PED_VEN_CAB(RECPedidos);

    _Edicao(-1); // Abre todos registros, inclusive excluídos.

    try
      Edicao.DisableControls;
      Edicao.First;

      while not Edicao.Eof do
      begin
        RECSP_PED_VEN_ITE.FLAG := EdicaoROM_FLAG.AsInteger;

        RECSP_PED_VEN_ITE.IDPK := RECPedidos.IDPK;   // Id PED_VEN_CAB
        RECSP_PED_VEN_ITE.IDFK := EdicaoROM_IDFK.AsInteger; // Id PED_VEN_ITE

        RECSP_PED_VEN_ITE.ITEM := EdicaoROM_ITEM.AsInteger;
        RECSP_PED_VEN_ITE.IDCP := EdicaoROM_IPRO.AsInteger;
        RECSP_PED_VEN_ITE.CEAN := EdicaoROM_CBAR.AsString;

        RECSP_PED_VEN_ITE.DECP := EdicaoROM_DPRO.AsString;
        RECSP_PED_VEN_ITE.DGCP := EdicaoROM_DCOR.AsString;

        RECSP_PED_VEN_ITE.UCOM := EdicaoROM_DUNI.AsString;
        RECSP_PED_VEN_ITE.UCON := EdicaoROM_UCON.AsString;

        RECSP_PED_VEN_ITE.QTDE := EdicaoROM_QTDE.AsCurrency;
        RECSP_PED_VEN_ITE.QTRL := EdicaoROM_QTRL.AsInteger;

        RECSP_PED_VEN_ITE.VPRC_PAD_INI := EdicaoROM_PTABI.AsCurrency;
        RECSP_PED_VEN_ITE.VPRC_PAD_FIM := EdicaoROM_PTABF.AsCurrency;

        RECSP_PED_VEN_ITE.VPRC_PAD := EdicaoROM_PREC.AsCurrency;
        RECSP_PED_VEN_ITE.VPRC_COM := EdicaoROM_UNIT.AsCurrency;

        RECSP_PED_VEN_ITE.PDSC := EdicaoROM_PDSC.AsCurrency;
        RECSP_PED_VEN_ITE.VDSC := EdicaoROM_VDSC.AsCurrency;

        RECSP_PED_VEN_ITE.TSDE := EdicaoROM_TSDE.AsCurrency;
        RECSP_PED_VEN_ITE.TCDE := EdicaoROM_TCDE.AsCurrency;

        RECSP_PED_VEN_ITE.NCM  := EdicaoROM_CCLF.AsString;
        RECSP_PED_VEN_ITE.PIPI := EdicaoROM_PIPI.AsCurrency;
        RECSP_PED_VEN_ITE.VIPI := EdicaoROM_VIPI.AsCurrency;

        RECSP_PED_VEN_ITE.PSBR := EdicaoROM_PSBR.AsCurrency;
        RECSP_PED_VEN_ITE.PSLQ := EdicaoROM_PSLQ.AsCurrency;

        oSP_PED_VEN_ITE(RECSP_PED_VEN_ITE);

        if (EdicaoROM_FLAG.AsInteger = 0) and (Pos(LeftStr(cbstpd.Text,3),'DEV') > 0) then
        begin
          SPEdicao.StoredProcName := 'SP_PED_VEN_DEV';
          SPEdicao.Prepare;

          SPEdicao.ParamByName('AIDEP').Value       := RECParametros.EP_ID;
          SPEdicao.ParamByName('AIDCA').Value       := RECUsuarios.Id;
          SPEdicao.ParamByName('AIDED').Value       := RECUsuarios.Id;
          SPEdicao.ParamByName('AIDPK').Value       := RECPedidos.IDPK;
          SPEdicao.ParamByName('ACDPK').Value       := RECPedidos.DEPK;
          SPEdicao.ParamByName('ADTPK').Value       := DEDTCA.Date;

          SPEdicao.ParamByName('AIDFK').Value       := edcdrd.Tag;
          SPEdicao.ParamByName('ACDFK').Value       := edcdrd.Text;
          SPEdicao.ParamByName('ADTFK').Value       := DEDTCA.Date;

          SPEdicao.ParamByName('AIDCL').Value       := CEIDCD.Value;
          SPEdicao.ParamByName('AIDCV').Value       := IEIDCV.Text;
          SPEdicao.ParamByName('AIDCR').Value       := IEIDCR.Text;
          SPEdicao.ParamByName('AIDCP').Value       := EdicaoROM_IPRO.AsInteger;
          SPEdicao.ParamByName('AARTIGO').Value     := EdicaoROM_CART.AsString;
          SPEdicao.ParamByName('APRODUTO').Value    := EdicaoROM_CPRO.AsString;
          SPEdicao.ParamByName('ADESCRICAO').Value  := EdicaoROM_DPRO.AsString;
          SPEdicao.ParamByName('ACOR').Value        := TRIM(LEFTSTR(EdicaoROM_DCOR.AsString,30));
          SPEdicao.ParamByName('AUCOM').Value       := EdicaoROM_DUNI.AsString;
          SPEdicao.ParamByName('AQUANTIDADE').Value := EdicaoROM_QTDE.AsCurrency;
          SPEdicao.ParamByName('AROLO').Value       := EdicaoROM_QTRL.AsInteger;
          SPEdicao.ParamByName('AVUPV').Value       := EdicaoROM_UNIT.AsCurrency;
          SPEdicao.ParamByName('AMOTIVO').Value     := TRIM(LEFTSTR(Motivo,30));
          SPEdicao.ParamByName('AINFADCAD').Value   := InfAdMot.Text;

          SPEdicao.ExecProc;
          SPEdicao.UnPrepare;
        end;

        if (edbest.Text = '1') and (EdicaoROM_QTPD.AsCurrency = 0) and (Pos(LeftStr(cbstpd.Text,3),'ABA') = 0) then
        begin
          RECSP_CAD_PRO_EST.FLAG := EdicaoROM_FLAG.AsInteger;

          RECSP_CAD_PRO_EST.IDEP := RECParametros.EP_ID;
          RECSP_CAD_PRO_EST.IDPK := RECPedidos.IDPK;
          RECSP_CAD_PRO_EST.IDFK := IFThen(RECSP_PED_VEN_ITE.IDFK > 0,RECSP_PED_VEN_ITE.IDFK,EdicaoROM_IDFK.AsInteger);

          RECSP_CAD_PRO_EST.DEPK := RECPedidos.DEPK;
          RECSP_CAD_PRO_EST.DTPK := DEDTCA.Date;
          RECSP_CAD_PRO_EST.CTNR := RECPedidos.CTNR;

          RECSP_CAD_PRO_EST.IDCD := RECPedidos.IDCD;
          RECSP_CAD_PRO_EST.IDCV := RECPedidos.IDCV;
          RECSP_CAD_PRO_EST.IDCR := RECPedidos.IDCR;

          RECSP_CAD_PRO_EST.ITEM := RECSP_PED_VEN_ITE.ITEM;
          RECSP_CAD_PRO_EST.IDCP := RECSP_PED_VEN_ITE.IDCP;
          RECSP_CAD_PRO_EST.CEAN := RECSP_PED_VEN_ITE.CEAN;

          RECSP_CAD_PRO_EST.DECP := RECSP_PED_VEN_ITE.DECP;
          RECSP_CAD_PRO_EST.DGCP := RECSP_PED_VEN_ITE.DGCP;

          RECSP_CAD_PRO_EST.UCOM := RECSP_PED_VEN_ITE.UCOM;
          RECSP_CAD_PRO_EST.UCON := RECSP_PED_VEN_ITE.UCON;

          RECSP_CAD_PRO_EST.QTDE := RECSP_PED_VEN_ITE.QTDE;
          RECSP_CAD_PRO_EST.QTRL := RECSP_PED_VEN_ITE.QTRL;

          RECSP_CAD_PRO_EST.VPRC_PAD_INI := RECSP_PED_VEN_ITE.VPRC_PAD_INI;
          RECSP_CAD_PRO_EST.VPRC_PAD_FIM := RECSP_PED_VEN_ITE.VPRC_PAD_FIM;

          RECSP_CAD_PRO_EST.VPRC_PAD := RECSP_PED_VEN_ITE.VPRC_PAD;
          RECSP_CAD_PRO_EST.PDSC     := RECSP_PED_VEN_ITE.PDSC;
          RECSP_CAD_PRO_EST.VDSC     := RECSP_PED_VEN_ITE.VDSC;
          RECSP_CAD_PRO_EST.VPRC_COM := RECSP_PED_VEN_ITE.VPRC_COM;

          RECSP_CAD_PRO_EST.TSDE := RECSP_PED_VEN_ITE.TSDE;
          RECSP_CAD_PRO_EST.TCDE := RECSP_PED_VEN_ITE.TCDE;

          RECSP_CAD_PRO_EST.NCM  := RECSP_PED_VEN_ITE.NCM ;
          RECSP_CAD_PRO_EST.PIPI := RECSP_PED_VEN_ITE.PIPI;
          RECSP_CAD_PRO_EST.VIPI := RECSP_PED_VEN_ITE.VIPI;

          RECSP_CAD_PRO_EST.PSBR := RECSP_PED_VEN_ITE.PSBR;
          RECSP_CAD_PRO_EST.PSLQ := RECSP_PED_VEN_ITE.PSLQ;

          RECSP_CAD_PRO_EST.INFADCAD := RECPedidos.INFADCAD;

          oSP_CAD_PRO_EST_RES(RECSP_CAD_PRO_EST);
        end;

        Edicao.Next;
      end;

    finally
      Edicao.EnableControls;
    end;
    
    _Edicao;
    if Pos(LeftStr(cbstpd.Text,3),'ABA') > 0 then
    begin
      SPEdicao.StoredProcName := 'SP_PED_VEN_ABA';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('AIDEP').Value     := RECParametros.EP_ID;
      SPEdicao.ParamByName('AIDCA').Value     := RECUsuarios.Id;
      SPEdicao.ParamByName('AIDED').Value     := RECUsuarios.Id;
      SPEdicao.ParamByName('AIDPK').Value     := RECPedidos.IDPK;
      SPEdicao.ParamByName('ACDPK').Value     := RECPedidos.DEPK;
      SPEdicao.ParamByName('ADTPK').Value     := DEDTCA.Date;
      SPEdicao.ParamByName('AIDFK').Value     := edcdrd.Tag;
      SPEdicao.ParamByName('ACDFK').Value     := edcdrd.Text;
      SPEdicao.ParamByName('ADTFK').Value     := DEDTCA.Date;
      SPEdicao.ParamByName('AIDCL').Value     := CEIDCD.Value;
      SPEdicao.ParamByName('AIDCV').Value     := IEIDCV.Text;
      SPEdicao.ParamByName('AIDCR').Value     := IEIDCR.Text;
      SPEdicao.ParamByName('AVTPV').Value     := CETCDE.Value;
      SPEdicao.ParamByName('AMOTIVO').Value   := TRIM(LEFTSTR(Motivo,30));
      SPEdicao.ParamByName('AINFADCAD').Value := InfAdMot.Text;

      SPEdicao.ExecProc;
      SPEdicao.UnPrepare;
    end;

  finally
    oFRECPedidos(RECSP_PED_VEN_ITE);
    oFRECPedidos(RECSP_CAD_PRO_EST);
  end;
end;

end.
