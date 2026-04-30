unit pCAD_PRO_EDI;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBEvents, math, StrUtils,
  IBDatabase, DB, IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls,
  StdCtrls, dxExEdtr, dxEdLib, Buttons, dxPageControl, dxEditor, dxCntner,
  ExtDlgs, dxTL, dxDBCtrl, dxDBGrid, jpeg, dxDBTLCl, dxGrClms, ACBrBarCode,
  rxSpeedbar, IBSQL, ActnList, cxGraphics, cxControls, dxStatusBar;

type
  TFrmCAD_PRO_EDI = class(TFrmPadr3)
    OPDIMG: TOpenPictureDialog;
    DTSCAD_PRO_CMP: TDataSource;
    CAD_PRO_CMP: TIBDataSet;
    TSEdicao: TIBTransaction;
    consulta_S: TIBQuery;
    CAD_PRO_GRD: TIBDataSet;
    DTSCAD_PRO_GRD: TDataSource;
    PNLPrincipal: TPanel;
    PCPrincipal: TdxPageControl;
    TSPrecos: TdxTabSheet;
    TSMedidas: TdxTabSheet;
    TSGrade: TdxTabSheet;
    TSComposicoes: TdxTabSheet;
    TSILA_BMP: TdxTabSheet;
    BILA_BMP: TBevel;
    BILA_BMP7: TBevel;
    BILA_BMP6: TBevel;
    BILA_BMP5: TBevel;
    BILA_BMP4: TBevel;
    BILA_BMP3: TBevel;
    BILA_BMP2: TBevel;
    BILA_BMP1: TBevel;
    ILA_BMP1: TImage;
    ILA_BMP3: TImage;
    ILA_BMP4: TImage;
    ILA_BMP5: TImage;
    ILA_BMP6: TImage;
    ILA_BMP7: TImage;
    ILA_BMP2: TImage;
    BILA_BMP8: TBevel;
    ILA_BMP8: TImage;
    LAILA_BMP1: TLabel;
    LAILA_BMP2: TLabel;
    LAILA_BMP3: TLabel;
    LAILA_BMP4: TLabel;
    LAILA_BMP5: TLabel;
    LAILA_BMP6: TLabel;
    LAILA_BMP7: TLabel;
    LAILA_BMP8: TLabel;
    EDILA_INS1: TdxEdit;
    EDILA_INS2: TdxEdit;
    EDILA_INS3: TdxEdit;
    EDILA_INS4: TdxEdit;
    EDILA_INS5: TdxEdit;
    EDILA_INS6: TdxEdit;
    EDILA_INS7: TdxEdit;
    EDILA_INS8: TdxEdit;
    SQLFKConsulta: TIBSQL;
    SQLSConsulta: TIBSQL;
    ImageList1: TImageList;
    PNLMEDBOT: TPanel;
    CAD_PRO_GRDID: TIntegerField;
    CAD_PRO_GRDGRD_IPRO: TIntegerField;
    CAD_PRO_GRDGRD_CART: TIBStringField;
    CAD_PRO_GRDGRD_CPRO: TIBStringField;
    CAD_PRO_GRDGRD_CBAR: TIBStringField;
    CAD_PRO_GRDGRD_CFOR: TIBStringField;
    CAD_PRO_GRDGRD_FBAR: TIBStringField;
    CAD_PRO_GRDGRD_DPRO: TIBStringField;
    CAD_PRO_GRDGRD_TITU: TIBStringField;
    CAD_PRO_GRDGRD_COMP: TIBStringField;
    CAD_PRO_GRDGRD_CGRD: TIBStringField;
    CAD_PRO_GRDGRD_RGRD: TIBStringField;
    CAD_PRO_GRDGRD_DGRD: TIBStringField;
    CAD_PRO_GRDGRD_CCOR: TIntegerField;
    CAD_PRO_GRDGRD_PCOR: TIBStringField;
    CAD_PRO_GRDGRD_DCOR: TIBStringField;
    CAD_PRO_GRDGRD_DUNI: TIBStringField;
    CAD_PRO_GRDGRD_UCON: TIBStringField;
    CAD_PRO_GRDGRD_PDSC: TIBBCDField;
    CAD_PRO_GRDGRD_PREC: TFloatField;
    CAD_PRO_GRDGRD_PPRO: TFloatField;
    CAD_PRO_GRDGRD_VPRC: TFloatField;
    CAD_PRO_GRDGRD_RPRC: TFloatField;
    CAD_PRO_GRDGRD_SPRC: TFloatField;
    CAD_PRO_GRDGRD_PSBR: TIBBCDField;
    CAD_PRO_GRDGRD_PSLQ: TIBBCDField;
    CAD_PRO_GRDGRD_IMKP: TSmallintField;
    CAD_PRO_GRDGRD_DMKP: TIBStringField;
    CAD_PRO_GRDGRD_IMK2: TSmallintField;
    CAD_PRO_GRDGRD_DMK2: TIBStringField;
    CAD_PRO_GRDGRD_IMK3: TSmallintField;
    CAD_PRO_GRDGRD_DMK3: TIBStringField;
    CAD_PRO_GRDGRD_ISCT: TSmallintField;
    CAD_PRO_GRDGRD_DSCT: TIBStringField;
    CAD_PRO_GRDGRD_CDST: TSmallintField;
    CAD_PRO_GRDGRD_REST: TIBStringField;
    CAD_PRO_GRDGRD_DEST: TIBStringField;
    CAD_PRO_GRDGRD_FOTO: TBlobField;
    CAD_PRO_GRDGRD_PPRZ: TFloatField;
    CAD_PRO_GRDFLAG: TIntegerField;
    SQLSEdicao: TIBSQL;
    GBMEDPRI: TGroupBox;
    TSINFADDIV: TdxTabSheet;
    BCT: TBevel;
    cbdens: TdxPickEdit;
    Label3: TLabel;
    cbtitf: TdxPickEdit;
    Label5: TLabel;
    cbstal: TdxImageEdit;
    Label29: TLabel;
    TSINFADCPL: TdxTabSheet;
    TSIMG_ART: TdxTabSheet;
    BIMG_ART: TBevel;
    SBIMG_ART: TSpeedButton;
    IMG_ART: TImage;
    TSIMG_SKU: TdxTabSheet;
    PNLMEDTOP: TPanel;
    GBMEDVEN: TGroupBox;
    LAUCOM: TLabel;
    LAUESP: TLabel;
    LAUQVOL: TLabel;
    LAUQTDE_VEN_MIN: TLabel;
    IEUCOM: TdxImageEdit;
    EDUESP: TdxEdit;
    CEUQVOL: TdxCurrencyEdit;
    CEUQTDE_VEN_MIN: TdxCurrencyEdit;
    GBMEDEST: TGroupBox;
    LAUCDBE: TLabel;
    LAUQTDE: TLabel;
    LAUQTDE_VEN_MUL: TLabel;
    LAUQTDE_EST_MIN: TLabel;
    IEUCDBE: TdxImageEdit;
    CEUQTDE: TdxCurrencyEdit;
    CEUQTDE_VEN_MUL: TdxCurrencyEdit;
    CEUQTDE_EST_MIN: TdxCurrencyEdit;
    GBMEDOUT: TGroupBox;
    LALARG_T: TLabel;
    LALARG_U: TLabel;
    LAELAS_T: TLabel;
    LAELAS_U: TLabel;
    LAENCO_U: TLabel;
    LAENCO_T: TLabel;
    LAEspessura: TLabel;
    IEEspessura: TdxImageEdit;
    PEDENCO: TdxPickEdit;
    Label71: TLabel;
    LAGramatura: TLabel;
    LAMetros: TLabel;
    LARendimento: TLabel;
    PEDGramatura: TdxPickEdit;
    LAPESO: TLabel;
    LAPSCN: TLabel;
    LADGramatura: TLabel;
    PCTAB_PRC: TdxPageControl;
    TSPRC_PAD: TdxTabSheet;
    BPRC_PAD: TBevel;
    LAVPRC_PAD: TLabel;
    LAVPRC_PAD_PRO: TLabel;
    LAPPRC_PAD_DSC: TLabel;
    LAPPRC_PAD_AJU: TLabel;
    LAVPRC_PAD_PRZ: TLabel;
    TSPRC_ATV: TdxTabSheet;
    BPRC_ATV: TBevel;
    LAPPRC_ATV_DSC: TLabel;
    LAPPRC_ATV_AJU: TLabel;
    TSPRC_VAR: TdxTabSheet;
    BPRC_VAR: TBevel;
    TSPRC_REP: TdxTabSheet;
    BPRC_REP: TBevel;
    TSPRC_LV: TdxTabSheet;
    BPRC_LV: TBevel;
    LAVPRC_LV: TLabel;
    LAPMKP: TLabel;
    TSPRC_COM: TdxTabSheet;
    LAVPRC_COM: TLabel;
    LAVPRC_COM_IMP: TLabel;
    BPRC_COM: TBevel;
    LAVPRC_ATV: TLabel;
    LAVPRC_ATV_PRZ: TLabel;
    LAVPRC_ATV_PRO: TLabel;
    LAVPRC_VAR: TLabel;
    LAVPRC_VAR_PRZ: TLabel;
    LAVPRC_VAR_PRO: TLabel;
    LAVPRC_REP: TLabel;
    LAVPRC_REP_PRZ: TLabel;
    LAVPRC_REP_PRO: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    IEUCOM_LV: TdxImageEdit;
    EDUESP_LV: TdxMaskEdit;
    CEUQTDE_VEN_MIN_LV: TdxCurrencyEdit;
    CEUQTDE_EST_MIN_LV: TdxCurrencyEdit;
    Label74: TLabel;
    Label75: TLabel;
    IEUCDBE_LV: TdxImageEdit;
    CEUQTDE_LV: TdxCurrencyEdit;
    CEUQTDE_VEN_MUL_LV: TdxCurrencyEdit;
    TSMarketingPlace: TdxTabSheet;
    BMKP: TBevel;
    LAMKP_IDML: TLabel;
    LAMKP_IDSP: TLabel;
    IEMKP_IDSP: TdxImageEdit;
    IEMKP_IDML: TdxImageEdit;
    CEVPRC_PAD: TdxCurrencyEdit;
    CEVPRC_PAD_PRZ: TdxCurrencyEdit;
    CEVPRC_PAD_PRO: TdxCurrencyEdit;
    CEPPRC_PAD_DSC: TdxCurrencyEdit;
    CEPPRC_PAD_AJU: TdxCurrencyEdit;
    CEVPRC_ATV: TdxCurrencyEdit;
    CEVPRC_ATV_PRZ: TdxCurrencyEdit;
    CEVPRC_ATV_PRO: TdxCurrencyEdit;
    CEPPRC_ATV_DSC: TdxCurrencyEdit;
    CEPPRC_ATV_AJU: TdxCurrencyEdit;
    CEVPRC_VAR: TdxCurrencyEdit;
    CEVPRC_VAR_PRZ: TdxCurrencyEdit;
    CEVPRC_VAR_PRO: TdxCurrencyEdit;
    CEVPRC_REP: TdxCurrencyEdit;
    CEVPRC_REP_PRZ: TdxCurrencyEdit;
    CEVPRC_REP_PRO: TdxCurrencyEdit;
    CEPMKP: TdxCurrencyEdit;
    CEVPRC_LV: TdxCurrencyEdit;
    CEVPRC_COM: TdxCurrencyEdit;
    CEVPRC_COM_IMP: TdxCurrencyEdit;
    CEPESO: TdxCurrencyEdit;
    CEPSCN: TdxCurrencyEdit;
    CEGramatura: TdxCurrencyEdit;
    CEMetros: TdxCurrencyEdit;
    CEREND: TdxCurrencyEdit;
    CELARG_U: TdxCurrencyEdit;
    CELARG_T: TdxCurrencyEdit;
    CEENCO_L: TdxCurrencyEdit;
    CEENCO_C: TdxCurrencyEdit;
    CEELAS_L: TdxCurrencyEdit;
    CEELAS_C: TdxCurrencyEdit;
    CEEspessura: TdxCurrencyEdit;
    CEUQVOL_LV: TdxCurrencyEdit;
    PNLCF: TPanel;
    GBORIG: TGroupBox;
    BORIG: TBevel;
    GBFiscal: TGroupBox;
    BCF: TBevel;
    Label2: TLabel;
    LATRIBIPI: TLabel;
    CEPIPI: TdxCurrencyEdit;
    PENCM: TdxPickEdit;
    IEORIG: TdxImageEdit;
    IECPAIS: TdxImageEdit;
    LACPAIS: TLabel;
    LAORIG: TLabel;
    BMEDVEN: TBevel;
    BMEDEST: TBevel;
    BMEDPRI: TBevel;
    BMEDOUT: TBevel;
    IEMKP_IDAM: TdxImageEdit;
    LAMKP_IDAM: TLabel;
    BIMG_ART_PNL: TBevel;
    BIMG_SKU: TBevel;
    IMG_SKU: TImage;
    SBIMG_SKU: TSpeedButton;
    CAD_PRO_GRDDGCP: TIBStringField;
    DBGIMG_SKU: TdxDBGrid;
    DBGIMG_SKUGRD_CPRO: TdxDBGridMaskColumn;
    DBGIMG_SKUDGCP: TdxDBGridMaskColumn;
    CAD_PRO_GRDIDIMG: TIntegerField;
    PNLEDI_CAD: TPanel;
    GBCadastro: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    LADECF: TLabel;
    LAIDGRP: TLabel;
    LAIDCOL: TLabel;
    LACDCF: TLabel;
    LAIDCAT: TLabel;
    LAIDSGP: TLabel;
    LAIDSCT: TLabel;
    Label40: TLabel;
    LAIDSEG: TLabel;
    EDCDCF: TdxMaskEdit;
    EDCMP_PAD: TdxEdit;
    EDDescricao: TdxEdit;
    IEIDGRP: TdxImageEdit;
    GroupBox6: TGroupBox;
    EDCEAN: TACBrBarCode;
    Label12: TLabel;
    Label32: TLabel;
    EDCEANCF: TdxEdit;
    EDArtigo: TdxEdit;
    IEIDCAT: TdxImageEdit;
    PEDECF: TdxPickEdit;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label41: TLabel;
    Label68: TLabel;
    IECDST: TdxImageEdit;
    IEIDFIN: TdxImageEdit;
    IEIDTPV: TdxImageEdit;
    IEIDSGP: TdxImageEdit;
    IEIDSCT: TdxImageEdit;
    IEIDEP: TdxImageEdit;
    EDTitulo: TdxEdit;
    IEIDSEG: TdxImageEdit;
    PEDECOL: TdxPickEdit;
    CAD_PRO_CMPID: TLargeintField;
    CAD_PRO_CMPIDEP: TSmallintField;
    CAD_PRO_CMPIDAK: TLargeintField;
    CAD_PRO_CMPIDCA: TSmallintField;
    CAD_PRO_CMPCMP_IDPK: TSmallintField;
    CAD_PRO_CMPCMP_REPK: TIBStringField;
    CAD_PRO_CMPCMP_DEPK: TIBStringField;
    CAD_PRO_CMPCMP_QTDE: TIBBCDField;
    CAD_PRO_CMPIDEV: TLargeintField;
    CAD_PRO_CMPCDEV: TSmallintField;
    CAD_PRO_CMPIP: TIBStringField;
    CAD_PRO_CMPHOST: TIBStringField;
    CAD_PRO_CMPFLAG: TSmallintField;
    CAD_PRO_CMPCMP_IDFK: TLargeintField;
    PECEST: TdxPickEdit;
    LACEST: TLabel;
    LAEXTIPI: TLabel;
    PEEXTIPI: TdxPickEdit;
    Label4: TLabel;
    EDUCON: TdxEdit;
    EDLJ_UCON: TdxMaskEdit;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    GBMenuEdicao: TGroupBox;
    SBMenuEdicao: TSpeedBar;
    SSMenuEdicao: TSpeedbarSection;
    SIMEAppend: TSpeedItem;
    SIMEEdit: TSpeedItem;
    SIMEDelete: TSpeedItem;
    SIMEPost: TSpeedItem;
    SIMECancel: TSpeedItem;
    GBConsulta: TGroupBox;
    DBGGrade: TdxDBGrid;
    DBGGradeGRD_CPRO: TdxDBGridMaskColumn;
    DBGGradeGRD_CDST: TdxDBGridMaskColumn;
    DBGGradeGRD_REST: TdxDBGridMaskColumn;
    DBGGradeGRD_DEST: TdxDBGridPickColumn;
    DBGGradeGRD_DCOR: TdxDBGridPickColumn;
    DBGGradeGRD_PCOR: TdxDBGridPickColumn;
    DBGGradeGRD_DGRD: TdxDBGridMaskColumn;
    DBGGradeGRD_CGRD: TdxDBGridMaskColumn;
    DBGGradeGRD_RGRD: TdxDBGridMaskColumn;
    DBGGradeGRD_CFOR: TdxDBGridMaskColumn;
    DBGGradeGRD_FBAR: TdxDBGridMaskColumn;
    DBGGradeGRD_ISCT: TdxDBGridMaskColumn;
    DBGGradeGRD_DSCT: TdxDBGridPickColumn;
    DBGGradeGRD_PREC: TdxDBGridMaskColumn;
    DBGGradeGRD_PPRZ: TdxDBGridMaskColumn;
    DBGGradeGRD_PPRO: TdxDBGridMaskColumn;
    DBGGradeGRD_TITU: TdxDBGridMaskColumn;
    GBCMenuEdicao: TGroupBox;
    SBCMenuEdicao: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SIMCEAppend: TSpeedItem;
    SIMCEEdit: TSpeedItem;
    SIMCEDelete: TSpeedItem;
    SIMCEPost: TSpeedItem;
    SIMCECancel: TSpeedItem;
    GBCConsulta: TGroupBox;
    DBGCMP: TdxDBGrid;
    DBGCMPCMP_DEPK: TdxDBGridPickColumn;
    DBGCMPCMP_REPK: TdxDBGridPickColumn;
    DBGCMPCMP_QTDE: TdxDBGridMaskColumn;
    GroupBox3: TGroupBox;
    EMINFADCAD: TdxMemo;
    GroupBox4: TGroupBox;
    EMINFADTEC: TdxMemo;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    EMINFADETQ: TdxMemo;
    procedure FormCreate(Sender: TObject);
    procedure SBIMG_ARTClick(Sender: TObject);
    procedure IMG_ARTDblClick(Sender: TObject);
    procedure CAD_PRO_CMPAfterPost(DataSet: TDataSet);
    procedure CAD_PRO_CMPBeforeCancel(DataSet: TDataSet);
    procedure CAD_PRO_CMPNewRecord(DataSet: TDataSet);
    procedure DBGCMPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ILA_BMP1Click(Sender: TObject);
    procedure CAD_PRO_GRDBeforeCancel(DataSet: TDataSet);
    procedure CAD_PRO_GRDNewRecord(DataSet: TDataSet);
    procedure CAD_PRO_GRDAfterPost(DataSet: TDataSet);
    procedure DBGGradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CAD_PRO_GRDBeforePost(DataSet: TDataSet);
    procedure IECDSTExit(Sender: TObject);
    procedure CAD_PRO_CMPAfterDelete(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure dxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGGradeGRD_DCORValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGGradeCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure IEIDSCTExit(Sender: TObject);
    procedure PEDECFExit(Sender: TObject);
    procedure EDDescricaoExit(Sender: TObject);
    procedure PENCMExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure siSAIRClick(Sender: TObject);
    procedure EDCDCFExit(Sender: TObject);
    procedure EDCEANCFExit(Sender: TObject);
    procedure CAD_PRO_GRDBeforeInsert(DataSet: TDataSet);
    procedure CAD_PRO_CMPBeforeInsert(DataSet: TDataSet);
    procedure DBGGradeGRD_CFORValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DTSCAD_PRO_GRDDataChange(Sender: TObject; Field: TField);
    procedure DBGGradeGRD_DESTValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGGradeGRD_DSCTValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEUQTDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVPRC_PADValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEPMKPValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEVPRC_PAD_PRZValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEVPRC_PAD_PROValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure TSMedidasShow(Sender: TObject);
    procedure TSPRC_PADShow(Sender: TObject);
    procedure TSPrecosShow(Sender: TObject);
    procedure TSPRC_ATVShow(Sender: TObject);
    procedure TSPRC_VARShow(Sender: TObject);
    procedure TSPRC_REPShow(Sender: TObject);
    procedure TSPRC_LVShow(Sender: TObject);
    procedure TSPRC_COMShow(Sender: TObject);
    procedure CEPESOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEMetrosValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CEGramaturaValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure IEUCOMValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDTituloValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure DBGGradeGRD_TITUValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DTSCAD_PRO_GRDStateChange(Sender: TObject);
    procedure DTSCAD_PRO_CMPStateChange(Sender: TObject);
    procedure CERENDValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CAD_PRO_CMPAfterInsert(DataSet: TDataSet);
    procedure EDArtigoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEPIPIValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PENCMKeyPress(Sender: TObject; var Key: Char);
    procedure CEPIPIChange(Sender: TObject);
    procedure IECDSTChange(Sender: TObject);
    procedure EDUCONChange(Sender: TObject);
    procedure CEUQVOLValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EDUCONValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ACTMPostExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EDArtigoChange(Sender: TObject);
    procedure IEIDFINChange(Sender: TObject);
    procedure IEIDTPVChange(Sender: TObject);
    procedure SIMEAppendClick(Sender: TObject);
    procedure SIMEEditClick(Sender: TObject);
    procedure SIMEDeleteClick(Sender: TObject);
    procedure SIMEPostClick(Sender: TObject);
    procedure SIMECancelClick(Sender: TObject);
    procedure SIMCEAppendClick(Sender: TObject);
    procedure SIMCEEditClick(Sender: TObject);
    procedure SIMCEDeleteClick(Sender: TObject);
    procedure SIMCEPostClick(Sender: TObject);
    procedure SIMCECancelClick(Sender: TObject);
  private
    { Private declarations }
    ARendimento: Double;

    procedure _CAD_PRO_CMP(AFlag: Integer = 0);
    procedure _POST_IMG_SKU(AIMG_NOME: String);
    procedure _PUMKP;
    procedure _UCON;
    procedure _PSQNCM(ASender: TwinControl);
  public
    { Public declarations }
  end;

var
  FrmCAD_PRO_EDI: TFrmCAD_PRO_EDI;
  AIDG_IDEV_CMP : Variant;

implementation

uses uPrincipal, bPrincipal,
     pProduto_Instrucao_Lavagem;

{$R *.dfm}

procedure TFrmCAD_PRO_EDI.FormCreate(Sender: TObject);
begin
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

  ACTMPost.Enabled := (REC_SHE_DEF.GAppend) or (REC_SHE_DEF.GEdit);
  rEC_SHE_DEF.IDFK := REC_SHE_DEF.IDPK;

  with SQLConsulta do
  begin
    { Situações }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_STA_CAD AS PK WHERE PK.CDST = 30 ORDER BY 2');
    ExecQuery;
    
    while not Eof do
    begin
      IECDST.Values.Add(Current.Vars[0].AsString);
      IECDST.Descriptions.Add   (Current.Vars[1].AsString);
      DBGGradeGRD_DEST.Items.Add(Current.Vars[1].AsString);

      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(IDG_IDEV_PRO,1) FROM RDB$DATABASE');
    ExecQuery;
    AIDG_IDEV_CMP := Current.Vars[0].AsString;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.PRO_TIPO_FIN_VEN = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDFIN.Values.Add(Current.Vars[0].AsString);
      IEIDFIN.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.PRO_TIPO_EST_VEN = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDTPV.Values.Add(Current.Vars[0].AsString);
      IEIDTPV.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SEG WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDSEG.Values.Add(Current.Vars[0].AsString);
      IEIDSEG.Descriptions.Add(Current.Vars[1].AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_GRP WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDGRP.Values.Add(Current.Vars[0].AsString);
      IEIDGRP.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SGP WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDSGP.Values.Add(Current.Vars[0].AsString);
      IEIDSGP.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_CAT WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDCAT.Values.Add(Current.Vars[0].AsString);
      IEIDCAT.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SCT WHERE ID > 0 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEIDSCT.Values.Add(Current.Vars[0].AsString);
      IEIDSCT.Descriptions.Add(Current.Vars[1].AsString);

      DBGGradeGRD_DSCT.Items.Add(Current.Vars[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,FANTASIA FROM TAB_PAR_SIS ORDER BY FANTASIA');
    ExecQuery;
    while not eof do
    begin
      IEIDEP.Values.Add(Current.Vars[0].AsString);
      IEIDEP.Descriptions.Add(Current.Vars[1].AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT CPAIS,XPAIS FROM TAB_PAIS ORDER BY XPAIS');
    ExecQuery;
    while not eof do
    begin
      IECPAIS.Values.Add(Current.Vars[0].AsString);
      IECPAIS.Descriptions.Add(Current.Vars[1].AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCRICAO FROM TAB_COL ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      PEDECOL.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCRICAO FROM TAB_COR WHERE ID > 0 ORDER BY 1');
    ExecQuery;
    while not eof do
    begin
      DBGGradeGRD_DCOR.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT    FANTASIA FROM CAD_FOR');
    SQL.Add('WHERE     REST = ''A''');
    SQL.Add('ORDER  BY FANTASIA');
    ExecQuery;
    while not eof do
    begin
      PEDECF.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   REFERENCIA FROM TAB_UCOM');
    SQL.Add('ORDER BY REFERENCIA');
    ExecQuery;
    while not eof do
    begin
      IEUCOM.Values.Add(Current.Vars[0].AsString);
      IEUCOM.Descriptions.Add(Current.Vars[0].AsString);
      IEUCOM_LV.Values.Add(Current.Vars[0].AsString);
      IEUCOM_LV.Descriptions.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_MKP ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEMKP_IDML.Values.Add(Current.Vars[0].AsString);
      IEMKP_IDML.Descriptions.Add(Current.Vars[1].AsString);

      IEMKP_IDSP.Values.Add(Current.Vars[0].AsString);
      IEMKP_IDSP.Descriptions.Add(Current.Vars[1].AsString);

      next;
    end;

    { Composição }
    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCRICAO FROM TAB_PRO_CMP WHERE CDST = 30 GROUP BY 1 ORDER BY 1');
    ExecQuery;
    while not eof do
    begin
      DBGCMPCMP_DEPK.Items.Add(Current.Vars[0].AsString);
      next;
    end;
  end;

  { Edição }
  oOTransact(TSEdicao);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO_GRD');
    ExecQuery;

    { Exclui lançamentos de composição anteriores }
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM TAB_EDI_PRO');
    SQL.Add('WHERE  CDEV = 3');
    SQL.Add('AND    HOST = ''' + RECParametros.HOST + '''');
    ExecQuery;
  end;
  oRTransact(TSEdicao);
end;

procedure TFrmCAD_PRO_EDI.FormShow(Sender: TObject);
begin
  inherited;
  IEIDEP.Text  := RECParametros.EP_ID;
  IECPAIS.Text := '1058';
  IEORIG.Text  := '0';
  IECDST.Text  := '30';

  IEIDFIN.Text := RECParametros.PRO_IDFIN_CAD;
  IEIDTPV.Text := RECParametros.PRO_IDFIN_EST;

//  EDArtigo.Tag     := VARTOINT(REC_SHE_DEF.IDPK );
//  EDArtigo.Text    :=  DECadastro;
//  EDArtigo.Enabled := (DECadastro = EmptyStr);

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   CP.*,TB_MKP_MLV.DESCRICAO AS MKP_MLV_NO,TB_MKP_SHP.DESCRICAO AS MKP_SHP_NO');
    SQL.Add('FROM     VW_PSQ_CAD_PRO AS CP');
    SQL.Add('JOIN     TAB_MKP        AS TB_MKP_MLV ON (TB_MKP_MLV.ID = CP.MKP_MLV_ID)');
    SQL.Add('JOIN     TAB_MKP        AS TB_MKP_SHP ON (TB_MKP_SHP.ID = CP.MKP_SHP_ID)');

    SQL.Add('WHERE    CP.AK_ID = ''' + rEC_SHE_DEF.IDFK + '''');
    SQL.Add('ORDER BY CP.DTEV DESC');
    ExecQuery;

    if not Eof then
    begin
      IEIDEP.Text := Current.ByName('EP_ID').AsString;
      PEDECF.Tag  := Current.ByName('CF_ID').AsInteger;
      PEDECF.Text := Current.ByName('CF_NO').AsString;

      IEIDFIN.Text := Current.ByName('FIN_CAD_ID').AsString;
      IEIDTPV.Text := Current.ByName('FIN_EST_ID').AsString;

      EDARTIGO.Text := Current.ByName('ARTIGO').AsString;
      EDCEAN.Text   := Current.ByName('CEAN'  ).AsString;

      EDDESCRICAO.Text := Current.ByName('CP_NO').AsString;
      EDTITULO.Text    := Current.ByName('CP_NO_TLO').AsString;
      EDCMP_PAD.Text   := Current.ByName('CMP_NO').AsString;

      EDCDCF.Text   := Current.ByName('CF_SKU' ).AsString;
      EDCEANCF.Text := Current.ByName('CF_CEAN').AsString;

      { Controle de Vendas }
      { Loja Física }
      IEUCOM.Text   := Current.ByName('UCOM' ).AsString;
      CEUQVOL.Value := Current.ByName('UQVOL').AsCurrency;
      EDUESP.Text   := Current.ByName('UESP' ).AsString;
      EDUCON.Text   := Current.ByName('UCON' ).AsString;
      CEUQTDE_VEN_MIN.Value := Current.ByName('UQTDE_VEN_MIN').AsCurrency;

      { Loja Virtual }
      IEUCOM_LV.Text   := Current.ByName('LJV_UCOM' ).AsString;
      CEUQVOL_LV.Value := Current.ByName('LJV_UQVOL').AsCurrency;
      EDUESP_LV.Text   := Current.ByName('LJV_UESP' ).AsString;
      CEUQTDE_VEN_MIN_LV.Value := 1;

      { Controle de Estoque }
      { Loja Física }
      IEUCDBE.Text  := Current.ByName('UCDBE').AsString;
      CEUQTDE.Value := Current.ByName('UQTDE').AsFloat;
      CEUQTDE_VEN_MUL.Value := Current.ByName('UQTDE_VEN_MUL').AsCurrency;
      CEUQTDE_EST_MIN.Value := Current.ByName('UQTDE_EST_MIN').AsCurrency;

      { Loja Virtual }
      IEUCDBE_LV.Text  := 'Quantidade';
      CEUQTDE_LV.Value := 1;
      CEUQTDE_VEN_MUL_LV.Value := 1;
//    CEUQTDE_EST_MIN_LV.Value := Current.ByName('UQTDE_EST_MIN_SITE').AsCurrency;

      { Medidas Principais }
      CEPESO.Value := Current.ByName('MPESO').AsCurrency;
      CEPSCN.Value := Current.ByName('UPSCN').AsCurrency;

      CEMetros.Value     := Current.ByName('MMETRO').AsCurrency;
      CEGramatura.Value  := Current.ByName('MGRAMA').AsCurrency;
      PEDGramatura.Text  := Current.ByName('MGRAMA_NO').AsString;
      CERend.Value := Current.ByName('MREND').AsCurrency;

      { Outras Medidas }
      CELARG_U.Value := Current.ByName('MLGRU').AsCurrency;
      CELARG_T.Value := Current.ByName('MLGRT').AsCurrency;

      CEENCO_L.Value := Current.ByName('MENCL').AsCurrency;
      CEENCO_C.Value := Current.ByName('MENCC').AsCurrency;
      PEDENCO.Text   := Current.ByName('MENC_NO').AsString;

      CEELAS_L.Value := Current.ByName('MELAL').AsCurrency;
      CEELAS_C.Value := Current.ByName('MELAC').AsCurrency;

      CEEspessura.Value := Current.ByName('MESP').AsCurrency;
      IEEspessura.Text  := Current.ByName('MESP_NO').AsString;

      { Tabela de Preços }
      { Atacado }
      CEVPRC_PAD.Value     := Current.ByName('VPRC_PAD').AsCurrency;
      CEVPRC_PAD_PRZ.Value := Current.ByName('VPRC_PRZ').AsCurrency;
      CEVPRC_PAD_PRO.Value := Current.ByName('VPRC_PRO').AsCurrency;

      { Atacarejo }
      CEVPRC_ATV.Value     := Current.ByName('ATJ_VPRC_PAD').AsCurrency;
      CEVPRC_ATV_PRZ.Value := Current.ByName('ATJ_VPRC_PRZ').AsCurrency;
      CEVPRC_ATV_PRO.Value := Current.ByName('ATJ_VPRC_PRO').AsCurrency;

      { Varejo }
      CEVPRC_VAR.Value     := Current.ByName('VAR_VPRC_PAD').AsCurrency;
      CEVPRC_VAR_PRZ.Value := Current.ByName('VAR_VPRC_PRZ').AsCurrency;
      CEVPRC_VAR_PRO.Value := Current.ByName('VAR_VPRC_PRO').AsCurrency;

      { Representante }
      CEVPRC_REP.Value     := Current.ByName('REP_VPRC_PAD').AsCurrency;
      CEVPRC_REP_PRZ.Value := Current.ByName('REP_VPRC_PRZ').AsCurrency;
      CEVPRC_REP_PRO.Value := Current.ByName('REP_VPRC_PRO').AsCurrency;

      { Loja Virtual }
      CEVPRC_LV.Value := Current.ByName('LJV_VPRC_PAD').AsCurrency;
      CEPMKP.Value    := Current.ByName('LJV_VPRC_MKP').AsCurrency;

      { Compras }
      CEVPRC_COM.Value     := Current.ByName('CF_VPRC_PAD').AsCurrency;
      CEVPRC_COM_IMP.Value := Current.ByName('CF_VPRC_PAD').AsCurrency;

      PEDECOL.Text  := IntToStr(Current.ByName('COL_ID').AsInteger);
      IEIDSEG.Text  := IntToStr(Current.ByName('SEG_ID').AsInteger);
      IEIDGRP.Text  := IntToStr(Current.ByName('GRP_ID').AsInteger);
      IEIDSGP.Text  := IntToStr(Current.ByName('SGP_ID').AsInteger);
      IEIDCAT.Text  := IntToStr(Current.ByName('CAT_ID').AsInteger);
      IEIDSCT.Text  := IntToStr(Current.ByName('SCT_ID').AsInteger);

      IEMKP_IDML.Text := IntToStr(Current.ByName('MKP_MLV_ID').AsInteger);
      IEMKP_IDSP.Text := IntToStr(Current.ByName('MKP_MPG_ID').AsInteger);

      cbdens.Text := Current.ByName('CDNS_NO').AsString;
      cbtitf.Text := Current.ByName('CTFI_NO').AsString;
      cbstal.Text := Current.ByName('CACB_NO').AsString;

      PENCM.Text   := Current.ByName('FIS_NCM' ).AsString;
      CEPIPI.Value := Current.ByName('FIS_PIPI').AsCurrency;

      IECPAIS.Text := Current.ByName('FIS_CPAIS').AsString;
      IEORIG.Text  := Current.ByName('FIS_ORIG' ).AsString;

      IECDST.Text  := Current.ByName('CDST').AsString;

      EMINFADCAD.Text := Current.ByName('INFADCAD').AsString;
      EMINFADTEC.Text := Current.ByName('INFADTEC').AsString;
      EMINFADETQ.Text := Current.ByName('INFADETQ').AsString;
    end;

    { Artigo = Código numérico sequencial }
    if (Eof) and (RECParametros.PRO_COD_NUM) then
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_ARTIGO_SEQUENCIAL,1) FROM RDB$DATABASE');
      ExecQuery;
      EDArtigo.Text := Current.Vars[0].AsString;

      CAD_PRO_GRD.Append;
      CAD_PRO_GRD.Post;
    end;

    if not Eof then
    begin
      IEIDEP.Text  := Current.ByName('EP_ID').AsString;
      IECDST.Text  := Current.ByName('CDST' ).AsString;

      IEIDFIN.Text := Current.ByName('FIN_CAD_ID').AsString;
      IEIDTPV.Text := Current.ByName('FIN_EST_ID').AsString;

      IEORIG.Text  := Current.ByName('FIS_ORIG' ).AsString;
      IECPAIS.Text := Current.ByName('FIS_CPAIS').AsString;

      while not Eof do
      begin
        { Grade }
        CAD_PRO_GRD.Append;
        CAD_PRO_GRDGRD_IPRO.Value := Current.ByName('CP_ID').AsInteger;

        CAD_PRO_GRDGRD_CART.Value := Current.ByName('ARTIGO').AsString;
        CAD_PRO_GRDGRD_CPRO.Value := Current.ByName('SKU'   ).AsString;
        CAD_PRO_GRDGRD_TITU.Value := Current.ByName('CP_NO_TLO').AsString;

        CAD_PRO_GRDGRD_DGRD.Value := Current.ByName('VAR_NO').AsString;
        CAD_PRO_GRDGRD_CGRD.Value := Current.ByName('VAR_CD').AsString;
        CAD_PRO_GRDGRD_RGRD.Value := Current.ByName('VAR_RF').AsString;

        CAD_PRO_GRDGRD_CCOR.Value := Current.ByName('COR_ID').AsInteger;
        CAD_PRO_GRDGRD_PCOR.Value := Current.ByName('COR_ESCALA').AsString;
        CAD_PRO_GRDGRD_DCOR.Value := Current.ByName('COR_NO').AsString;

        CAD_PRO_GRDDGCP.Value := Current.ByName('GRD_NO').AsString;

        CAD_PRO_GRDGRD_CFOR.Value := Current.ByName('CF_SKU' ).AsString;
        CAD_PRO_GRDGRD_FBAR.Value := Current.ByName('CF_CEAN').AsString;

        CAD_PRO_GRDGRD_PREC.Value := Current.ByName('VPRC_PAD').AsCurrency;
        CAD_PRO_GRDGRD_PPRZ.Value := Current.ByName('VPRC_PRZ').AsCurrency;
        CAD_PRO_GRDGRD_PPRO.Value := Current.ByName('VPRC_PRO').AsCurrency;


        CAD_PRO_GRDGRD_ISCT.Value := Current.ByName('SCT_ID').AsInteger;
        CAD_PRO_GRDGRD_DSCT.Value := Current.ByName('SCT_NO').AsString;

        CAD_PRO_GRDGRD_IMKP.Value := Current.ByName('MKP_MLV_ID').AsInteger;
        CAD_PRO_GRDGRD_DMKP.Value := Current.ByName('MKP_MLV_NO').AsString;

        CAD_PRO_GRDGRD_IMK2.Value := Current.ByName('MKP_SHP_ID').AsInteger;
        CAD_PRO_GRDGRD_DMK2.Value := Current.ByName('MKP_SHP_NO').AsString;

        CAD_PRO_GRDGRD_CDST.Value := Current.ByName('CDST').AsInteger;
        CAD_PRO_GRDGRD_REST.Value := Current.ByName('REST').AsString;
        CAD_PRO_GRDGRD_DEST.Value := Current.ByName('DEST').AsString;

        { Imagem do Produto }
        Consulta.Close;
        Consulta.SQL.Clear;
        Consulta.SQL.Add('SELECT PK.IMG_PAD FROM CAD_PRO_IMG_SKU AS PK');
        Consulta.SQL.Add('WHERE  PK.IMG_ID = '''+Current.ByName('IMG_ID').AsString+'''');
        Consulta.Open;
        CAD_PRO_GRDGRD_FOTO.Value := Consulta.Fields[0].Value;

        CAD_PRO_GRD.Post;
        Next;
      end;
    end;

    { Composição }
    _CAD_PRO_CMP;
    if rEC_SHE_DEF.IDFK > 0 then
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.IDPK,PK.REFERENCIA,PK.DESCRICAO,PK.QTDE');
      SQL.Add('FROM   CAD_PRO_CMP AS PK');
      SQL.Add('WHERE  PK.AK_ID = ''' + rEC_SHE_DEF.IDFK + '''');
      ExecQuery;
      while not Eof do
      begin
        CAD_PRO_CMP.Append;
        CAD_PRO_CMPCMP_IDFK.Value := Current.Vars[0].AsInteger;
        CAD_PRO_CMPCMP_IDPK.Value := Current.Vars[1].AsInteger;
        CAD_PRO_CMPCMP_REPK.Value := Current.Vars[2].AsString;
        CAD_PRO_CMPCMP_DEPK.Value := Current.Vars[3].AsString;
        CAD_PRO_CMPCMP_QTDE.Value := Current.Vars[4].AsCurrency;
        CAD_PRO_CMP.Post;
        next;
      end;
    end;  
  end;

  with Consulta do
  begin
    { Instruções de Lavagem }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.* FROM VW_CAD_PRO_ILA AS PK');
    SQL.Add('WHERE  PK.ID = ''' + rEC_SHE_DEF.IDFK + '''');
    Open;

    {ILA 1}
    ILA_BMP1.Tag    := FieldByName('IDILA1'    ).AsInteger;
    EDILA_INS1.Text := FieldByName('ILA_INS1').AsString;
    oLoadBMP(FieldByName('ILA_BMP1'),ILA_BMP1.Picture);

    {ILA 2}
    ILA_BMP2.Tag    := FieldByName('IDILA2'    ).AsInteger;
    EDILA_INS2.Text := FieldByName('ILA_INS2').AsString;
    oLoadBMP(FieldByName('ILA_BMP2'),ILA_BMP2.Picture);

    {ILA 3}
    ILA_BMP3.Tag    := FieldByName('IDILA3'    ).AsInteger;
    EDILA_INS3.Text := FieldByName('ILA_INS3').AsString;
    oLoadBMP(FieldByName('ILA_BMP3'),ILA_BMP3.Picture);

    {ILA 4}
    ILA_BMP4.Tag    := FieldByName('IDILA4'    ).AsInteger;
    EDILA_INS4.Text := FieldByName('ILA_INS4').AsString;
    oLoadBMP(FieldByName('ILA_BMP4'),ILA_BMP4.Picture);

    {ILA 5}
    ILA_BMP5.Tag    := FieldByName('IDILA5'    ).AsInteger;
    EDILA_INS5.Text := FieldByName('ILA_INS5').AsString;
    oLoadBMP(FieldByName('ILA_BMP5'),ILA_BMP5.Picture);

    {ILA 6}
    ILA_BMP6.Tag    := FieldByName('IDILA6'    ).AsInteger;
    EDILA_INS6.Text := FieldByName('ILA_INS6').AsString;
    oLoadBMP(FieldByName('ILA_BMP6'),ILA_BMP6.Picture);

    {ILA 7}
    ILA_BMP7.Tag    := FieldByName('IDILA7'    ).AsInteger;
    EDILA_INS7.Text := FieldByName('ILA_INS7').AsString;
    oLoadBMP(FieldByName('ILA_BMP7'),ILA_BMP7.Picture);

    {ILA 8}
    ILA_BMP8.Tag    := FieldByName('IDILA8'    ).AsInteger;
    EDILA_INS8.Text := FieldByName('ILA_INS8').AsString;
    oLoadBMP(FieldByName('ILA_BMP8'),ILA_BMP8.Picture);

    { Imagem do Artigo }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.IMG_PAD FROM CAD_PRO_IMG_ART AS PK');
    SQL.Add('WHERE  PK.ID = ''' + rEC_SHE_DEF.IDFK + '''');
    Open;
    oLoadJPG(FieldByName('IMG_PAD'),IMG_ART.Picture,False);
  end;

  if (IEIDEP.Text <> RECParametros.EP_ID) and (not sisav.Enabled) then
  begin
    GBCadastro.Enabled := False;
    TSGrade.Enabled := False;
    TSMedidas.Enabled      := False;
    TSComposicoes.Enabled      := False;
    TSILA_BMP.Enabled  := False;
    TSIMG_ART.Enabled  := False;
    TSIMG_SKU.Enabled  := False;
    TSMarketingPlace.Enabled      := False;
    TSINFADDIV.Enabled := False;
    EMINFADCAD.Enabled := False;
    EMINFADETQ.Enabled := False;
    EMINFADTEC.Enabled := False;
  end;

  if IECDST.Text = '123' then
  EDArtigo.Enabled := True;

  try
    oRTransact(TSEdicao,ltRead_Only_Release_Commit);
    CAD_PRO_CMP.Last;
    CAD_PRO_GRD.Last;
  finally
    EDArtigo.Enabled := (REC_SHE_DEF.IDFK = 0);
    
    if not EDArtigo.Enabled then
    begin
      PCPrincipal.ActivePage := TSGrade;
      DBGGrade.FocusedColumn := 2;

      if TSGrade.Enabled then
         DBGGrade.SetFocus;
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) then
  if (oEmpty(CAD_PRO_GRDGRD_DCOR.AsString)) and (oEmpty(CAD_PRO_GRDGRD_DGRD.AsString)) and (oEmpty(CAD_PRO_GRDGRD_CGRD.AsString)) and (oEmpty(CAD_PRO_GRDGRD_RGRD.AsString)) then

  CAD_PRO_GRD.Cancel else
  CAD_PRO_GRD.Post;

  if REC_SHE_DEF.Editing then
  Case messageBox(handle,'Existem alterações pendentes !'+#13+
                         'Salvar antes de sair ?',
                          PChar(Caption)  ,
                          MB_ICONQUESTION + MB_YESNOCANCEL) of

       mrYes   : ACTMPost.Execute;
       mrCancel: Abort;
  end;
end;

procedure TFrmCAD_PRO_EDI.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_pro_edi := Nil;
end;

procedure TFrmCAD_PRO_EDI.SBIMG_ARTClick(Sender: TObject);
begin
  if OPDIMG.Execute then
  begin
    TImage(FindComponent(RIGHTSTR(TSpeedButton(Sender).Name,7))).Picture.LoadFromFile(OPDIMG.FileName);
    _POST_IMG_SKU(TImage(FindComponent(RIGHTSTR(TSpeedButton(Sender).Name,7))).Name);
  end;
end;

procedure TFrmCAD_PRO_EDI.IMG_ARTDblClick(Sender: TObject);
begin
  TImage(Sender).Picture.Assign(Nil);
  _POST_IMG_SKU(TImage(Sender).Name);
end;

procedure TFrmCAD_PRO_EDI._POST_IMG_SKU(AIMG_NOME: String);
begin
  if Pos('ART',AIMG_NOME) > 0 then
     BIMG_ART.Tag := 1 else
  if (Pos('SKU',AIMG_NOME) > 0) and (CAD_PRO_GRDID.AsInteger > 0) then
  begin
    CAD_PRO_GRD.Edit;
    CAD_PRO_GRDGRD_FOTO.LoadFromFile(OPDIMG.FileName);
    CAD_PRO_GRDIDIMG.Value := 1;
    CAD_PRO_GRD.Post;
  end;
end;

procedure TFrmCAD_PRO_EDI.ILA_BMP1Click(Sender: TObject);
begin
  try
    TFrmProduto_Instrucao_Lavagem._ExecForm(Nil,FrmProduto_Instrucao_Lavagem,False,fsNormal);
  finally
    if FrmProduto_Instrucao_Lavagem.Imagem <> nil then
    begin
      TImage(Sender).Picture := FrmProduto_Instrucao_Lavagem.Imagem.Picture;
      TImage(Sender).Hint    := FrmProduto_Instrucao_Lavagem.Imagem.Hint;
      TImage(Sender).Tag     := FrmProduto_Instrucao_Lavagem.Imagem.Tag;
            BILA_BMP.Tag     := 1;

      Case TImage(Sender).HelpContext of
        1: begin
             EDILA_INS1.Text := TImage(Sender).Hint;
             EDILA_INS1.SetFocus;
           end;
        2: begin
             EDILA_INS2.Text := TImage(Sender).Hint;
             EDILA_INS2.SetFocus;
           end;
        3: begin
             EDILA_INS3.Text := TImage(Sender).Hint;
             EDILA_INS3.SetFocus;
           end;
        4: begin
             EDILA_INS4.Text := TImage(Sender).Hint;
             EDILA_INS4.SetFocus;
           end;
        5: begin
             EDILA_INS5.Text := TImage(Sender).Hint;
             EDILA_INS5.SetFocus;
           end;
        6: begin
             EDILA_INS6.Text := TImage(Sender).Hint;
             EDILA_INS6.SetFocus;
           end;
        7: begin
             EDILA_INS7.Text := TImage(Sender).Hint;
             EDILA_INS7.SetFocus;
           end;
        8: begin
             EDILA_INS8.Text := TImage(Sender).Hint;
             EDILA_INS8.SetFocus;
           end;
      end;
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if DBGGrade.FocusedColumn = 2 then
                 begin
                   CAD_PRO_GRD.Next;
                   if CAD_PRO_GRD.Eof then CAD_PRO_GRD.Append;
                 end else
                 DBGGrade.FocusedColumn := DBGGrade.FocusedColumn + 1;
               end;
    VK_DELETE: if CAD_PRO_GRD.State = dsBrowse then SIMEDelete.Click;
    VK_ESCAPE: if CAD_PRO_GRD.State = dsBrowse then Close; // else CAD_PRO_GRD.Cancel;
    VK_INSERT: SIMEAppend.Click;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDArtigoChange(Sender: TObject);
begin
  REC_SHE_DEF.Editing := (not ALockWindowUpdate) and ((REC_SHE_DEF.GAppend) or (REC_SHE_DEF.GEdit));
end;

procedure TFrmCAD_PRO_EDI.EDArtigoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  EDArtigo.Text := Trim(EDArtigo.Text);

  if oEmpty(EDArtigo.Text) then
     oException(EDArtigo,'Artigo não Informado ou Incorreto !');

  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   CP.IDEP,CP.DEEP,CP.IDCA,CP.DECA,CP.DECP,MAX(CP.DTCA) AS DTCA,MAX(CP.DTEK) AS DTEK,MAX(CP.DTPC) AS DTPC,MAX(CP.DTPP) AS DTPP,MAX(CP.DTPV) AS DTPV');
    SQL.Add('FROM (');
    SQL.Add('SELECT   CP.IDEP,EP.FANTASIA AS DEEP,CP.IDCA,LG.LOGIN AS DECA,CP.DECP,CP.DTCA,CP.DTEK,CP.DTPC,CP.DTPP,CP.DTPV');
    SQL.Add('FROM     CAD_PRO     AS CP');
    SQL.Add('JOIN     TAB_PAR_SIS AS EP ON (EP.ID = CP.IDEP)');
    SQL.Add('JOIN     TAB_USER    AS LG ON (LG.ID = CP.IDCA)');
    SQL.Add('WHERE    CP.ARTIGO  = ''' + EDArtigo.Text + '''');
    SQL.Add(') AS CP');
    SQL.Add('GROUP BY 1,2,3,4,5');
    ExecQuery;

    if not Eof then
       oException(EDArtigo,'Artigo informado já está cadastrado !' +#13 +#13 +

                  Current.ByName('DECP').AsString + #13 +
                  Current.ByName('DECA').AsString + ' ' + FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTCA').AsDateTime) + #13 + #13 +

                  'ÚLTIMOS REGISTROS'                   + #13 +
                  '=================================='  + #13 + #13 +

                  'Estoque: '      + IFThen(Current.ByName('DTEK').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTEK').AsDateTime),EmptyStr) + #13 +
                  'Compras: '      + IFThen(Current.ByName('DTPC').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTPC').AsDateTime),EmptyStr) + #13 +
                  'Programações: ' + IFThen(Current.ByName('DTPP').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTPP').AsDateTime),EmptyStr) + #13 +
                  'Vendas: '       + IFThen(Current.ByName('DTPV').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTPV').AsDateTime),EmptyStr));
  end;

  try
    if CAD_PRO_GRD.RecNo > 0 then
    begin
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
    end else
    begin
      if RECParametros.PRO_GRD_PAD = 1 then
         with SQLFKConsulta do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SELECT REFERENCIA,DESCRICAO FROM TAB_GRD WHERE PADRAO = '''+RECParametros.PRO_GRD_PAD+''' ORDER BY ID');
           ExecQuery;

           while not Eof do
           begin
             CAD_PRO_GRD.Append;
             CAD_PRO_GRDGRD_RGRD.Value := Current.Vars[0].AsString;
             CAD_PRO_GRDGRD_DGRD.Value := Current.Vars[1].AsString;
             CAD_PRO_GRD.Post;
             Next;
           end;
         end else
         begin
           CAD_PRO_GRD.Append;
           CAD_PRO_GRD.Post;
         end;

      EDArtigo.Enabled := False;
    end;
  except
    on E: Exception do
    begin
      oRTransact(TSEdicao,ltRollback);
      oErro(Handle,'Erro ao tentar registrar artigo !'+#13+
                    E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.IECDSTExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if IECDST.Modified then
  try
    IECDST.OnExit := Nil;

    try
      oRTransact(TSEdicao,ltRead_Only);
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDGRD_CDST.Value := StrToInt(IECDST.Text);
        CAD_PRO_GRDGRD_REST.Value := LeftStr(IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)],1);
        CAD_PRO_GRDGRD_DEST.Value := IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)];
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oRTransact(TSEdicao,ltRead_Only_Release_Commit);
      IECDST.Modified := False;
    except
      on E: Exception do
      begin
        oRTransact(TSEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    WinControl := ActiveControl;                   
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    IECDST.OnExit := IECDSTExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDDescricaoExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if EDDescricao.Modified then
  try
    EDDescricao.OnExit := Nil;
    EDDescricao.Text   := Trim(EDDescricao.Text);

    if oEmpty(EDDescricao.Text) then
       oException(EDDescricao,'Descrição não Informada ou Incorreto !');

    oRTransact(TEdicao);
    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   PRO_CART,MAX(DTCA) FROM CAD_PRO');
      SQL.Add('WHERE    PRO_DPRO  = '''+EDDescricao.Text+'''');
      SQL.Add('AND      PRO_CART <> '''+EDArtigo.Text     +'''');
      SQL.Add('GROUP BY 1');
      ExecQuery;

      if not Eof then
         oException(EDDescricao,'Descrição já cadastrada em outro artigo !'+#13+
                                Current.Vars[0].AsString+'. Criado em '+FormatDateTime('dd/mm/yy hh:mm.',Current.Vars[1].AsDateTime));
    end;

    EDDescricao.Modified := False;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    EDDescricao.OnExit := EDDescricaoExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.PEDECFExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if PEDECF.Modified then
  try
    PEDECF.OnExit := Nil;
    PEDECF.Text   := Trim(PEDECF.Text);

    if oEmpty(PEDECF.Text) then
       oException(PEDECF,'Fornecedor não Informado ou Incorreto !');

    oRTransact(TEdicao);
    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_FOR');
      SQL.Add('WHERE  FOR_FANT = '''+PEDECF.Text+'''');
      ExecQuery;
      PEDECF.Tag := Current.Vars[0].AsInteger;

      if Eof then
         oException(PEDECF,'Fornecedor não Cadastrado ou Incorreto !');
    end;

    PEDECF.Modified := False;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    PEDECF.OnExit := PEDECFExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDCDCFExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if EDCDCF.Modified then
  try
    EDCDCF.OnExit := Nil;

    try
      oRTransact(TSEdicao,ltRead_Only);
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDGRD_CFOR.Value := EDCDCF.Text;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oRTransact(TSEdicao,ltRead_Only_Release_Commit);
      EDCDCF.Modified := False;
    except
      on E: Exception do
      begin
        oRTransact(TSEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    EDCDCF.OnExit := EDCDCFExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDCEANCFExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if EDCEANCF.Modified then
  try
    EDCEANCF.OnExit := Nil;

    try
      oRTransact(TSEdicao,ltRead_Only);
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDGRD_FBAR.Value := EDCEANCF.Text;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oRTransact(TSEdicao,ltRead_Only_Release_Commit);
      EDCEANCF.Modified := False;
    except
      on E: Exception do
      begin
        oRTransact(TSEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    EDCEANCF.OnExit := EDCEANCFExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.dxMaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  key := #0;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeGRD_DCORValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGGrade.EditingText := Trim(DBGGrade.EditingText);
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) and (not oEmpty(DBGGrade.EditingText))then
      with SQLFKConsulta do
      begin
        oRTransact(TEdicao);

        Close;
        SQL.Clear;
        SQL.Add('SELECT ID,ESCALA,DESCRICAO FROM TAB_COR');
        SQL.Add('WHERE  DESCRICAO = '''+DBGGrade.EditingText+'''');
        ExecQuery;

        CAD_PRO_GRDGRD_CCOR.Value := Current.ByName('ID').AsInteger;
        CAD_PRO_GRDGRD_PCOR.Value := Current.ByName('ESCALA').AsString;
        CAD_PRO_GRDGRD_DCOR.Value := Current.ByName('DESCRICAO').AsString;

        if Eof then
           DataBaseError('Cor não cadastrada ou incorreta !');
      end;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeGRD_DESTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGGrade.EditingText := Trim(DBGGrade.EditingText);
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) and (not oEmpty(DBGGrade.EditingText))then
      with SQLFKConsulta do
      begin
        oRTransact(TEdicao);

        Close;
        SQL.Clear;
        SQL.Add('SELECT ID,REFERENCIA,DESCRICAO FROM TAB_STA_CAD WHERE DESCRICAO = '''+DBGGrade.EditingText+'''');
        ExecQuery;

        CAD_PRO_GRDGRD_CDST.Value := Current.Vars[0].AsInteger;
        CAD_PRO_GRDGRD_REST.Value := Current.Vars[1].AsString;
        CAD_PRO_GRDGRD_DEST.Value := Current.Vars[2].AsString;

        if Eof then
           DataBaseError('Status não cadastro ou incorreto !');
      end;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeGRD_DSCTValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGGrade.EditingText := Trim(DBGGrade.EditingText);
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) and (not oEmpty(DBGGrade.EditingText))then
      with SQLFKConsulta do
      begin
        oRTransact(TEdicao);

        Close;
        SQL.Clear;
        SQL.Add('SELECT TAB_SCT.ID,TAB_SCT.DESCRICAO,TAB_SCT.NCM,TRIBIPI,VUPRC_PAD,VUPRC_PRZ,VUPRC_PRO,PESO,PSCN,METRO,GRAMATURA,RENDIMENTO,LARG_U,LARG_T');
        SQL.Add('FROM   TAB_SCT');
        SQL.Add('LEFT JOIN TAB_NCM ON (TAB_NCM.NCM = TAB_SCT.NCM)');
        SQL.Add('WHERE  TAB_SCT.DESCRICAO = '''+DBGGrade.EditingText+'''');
        ExecQuery;

        CAD_PRO_GRDGRD_ISCT.Value := Current.Vars[0].AsShort;
        if Eof then
           DataBaseError('Sub Categoria não cadastrada ou incorreta !');

        if Current.Vars[1].AsString <> EmptyStr then
        CAD_PRO_GRDGRD_DSCT.Value := Current.Vars[1].AsString;

        if Current.Vars[4].AsCurrency > 0 then
        CAD_PRO_GRDGRD_PREC.Value := Current.Vars[4].AsCurrency;

        { Fiscal }
        if (Current.ByName('NCM').AsString <> EmptyStr) and (Current.ByName('NCM').AsString <> '00000000') then
        begin
          PENCM.Text   := Current.ByName('NCM').AsString;
          CEPIPI.Value := Current.ByName('TRIBIPI').AsCurrency;
        end;

        { Preços }
        if Current.ByName('VUPRC_PAD').AsCurrency > 0 then
        CEVPRC_PAD.Value := Current.ByName('VUPRC_PAD').AsCurrency;

        if Current.ByName('VUPRC_PRZ').AsCurrency > 0 then
        CEVPRC_PAD_PRZ.Value := Current.ByName('VUPRC_PRZ').AsCurrency;

        if Current.ByName('VUPRC_PRO').AsCurrency > 0 then
        CEVPRC_PAD_PRO.Value := Current.ByName('VUPRC_PRO').AsCurrency;

        { Medidas Principais }
        if Current.ByName('PESO').AsCurrency > 0 then
        CEPESO.Value := Current.ByName('PESO').AsCurrency;

        if Current.ByName('PSCN').AsCurrency > 0 then
        CEPSCN.Value := Current.ByName('PSCN').AsCurrency;

        if Current.ByName('METRO').AsCurrency > 0 then
        CEMetros.Value := Current.ByName('METRO').AsCurrency;

        if Current.ByName('GRAMATURA').AsCurrency > 0 then
        CEGramatura.Value := Current.ByName('GRAMATURA').AsCurrency;

        if Current.ByName('RENDIMENTO').AsCurrency > 0 then
        CERend.Value := Current.ByName('RENDIMENTO').AsCurrency;

        { Outras Medidas }
        if Current.ByName('LARG_U').AsCurrency > 0 then
        CELARG_U.Value := Current.ByName('LARG_U').AsCurrency;

        if Current.ByName('LARG_T').AsCurrency > 0 then
        CELARG_T.Value := Current.ByName('LARG_T').AsCurrency;
      end;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeGRD_CFORValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGGrade.EditingText := Trim(DBGGrade.EditingText);
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) and (not oEmpty(DBGGrade.EditingText))then
      CAD_PRO_GRDGRD_CFOR.Value := DBGGrade.EditingText;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if LeftStr(ANode.Values[DBGGradeGRD_REST.Index],1) = 'A' then
    begin
      AColor      := $00B9FFB9;
      AFont.Color := clBlack;
    end else

    if LeftStr(ANode.Values[DBGGradeGRD_REST.Index],1) = 'P' then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end else
    if LeftStr(ANode.Values[DBGGradeGRD_REST.Index],1) = 'F' then
    begin
      AColor      := $0080FFFF; //$00002FEC $000031F4 $00C4FFC4 $00D9FFFF;
      AFont.Color := clWindowText;
    end else
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.IEIDSCTExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if IEIDSCT.Modified then
  try
    IEIDSCT.OnExit := Nil;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT TAB_SCT.ID,TAB_SCT.DESCRICAO,TAB_SCT.NCM,TRIBIPI,VUPRC_PAD,VUPRC_PRZ,VUPRC_PRO,PESO,PSCN,METRO,GRAMATURA,RENDIMENTO,LARG_U,LARG_T');
      SQL.Add('FROM   TAB_SCT');
      SQL.Add('LEFT   JOIN TAB_NCM ON (TAB_NCM.NCM = TAB_SCT.NCM)');
      SQL.Add('WHERE  TAB_SCT.ID = '''+IEIDSCT.Text+'''');
      ExecQuery;
    end;

    if SQLConsulta.Current.Vars[0].AsInteger > 0 then
    try
      { Fiscal }
      if (SQLConsulta.Current.ByName('NCM').AsString <> EmptyStr) and (SQLConsulta.Current.ByName('NCM').AsString <> '00000000') then
      begin
        PENCM.Text := SQLConsulta.Current.ByName('NCM').AsString;
        CEPIPI.Value := SQLConsulta.Current.ByName('TRIBIPI').AsCurrency;
      end;

      { Preços }
      if SQLConsulta.Current.ByName('VUPRC_PAD').AsCurrency > 0 then
      CEVPRC_PAD.Value := SQLConsulta.Current.ByName('VUPRC_PAD').AsCurrency;

      if SQLConsulta.Current.ByName('VUPRC_PRZ').AsCurrency > 0 then
      CEVPRC_PAD_PRZ.Value := SQLConsulta.Current.ByName('VUPRC_PRZ').AsCurrency;

      if SQLConsulta.Current.ByName('VUPRC_PRO').AsCurrency > 0 then
      CEVPRC_PAD_PRO.Value := SQLConsulta.Current.ByName('VUPRC_PRO').AsCurrency;

      { Medidas Principais }
      if SQLConsulta.Current.ByName('PESO').AsCurrency > 0 then
      CEPESO.Value := SQLConsulta.Current.ByName('PESO').AsCurrency;

      if SQLConsulta.Current.ByName('PSCN').AsCurrency > 0 then
      CEPSCN.Value := SQLConsulta.Current.ByName('PSCN').AsCurrency;

      if SQLConsulta.Current.ByName('METRO').AsCurrency > 0 then
      CEMetros.Value := SQLConsulta.Current.ByName('METRO').AsCurrency;

      if SQLConsulta.Current.ByName('GRAMATURA').AsCurrency > 0 then
      CEGramatura.Value := SQLConsulta.Current.ByName('GRAMATURA').AsCurrency;

      if SQLConsulta.Current.ByName('RENDIMENTO').AsCurrency > 0 then
      CERend.Value := SQLConsulta.Current.ByName('RENDIMENTO').AsCurrency;

      { Outras Medidas }
      if SQLConsulta.Current.ByName('LARG_U').AsCurrency > 0 then
      CELARG_U.Value := SQLConsulta.Current.ByName('LARG_U').AsCurrency;

      if SQLConsulta.Current.ByName('LARG_T').AsCurrency > 0 then
      CELARG_T.Value := SQLConsulta.Current.ByName('LARG_T').AsCurrency;

      oRTransact(TSEdicao,ltRead_Only);
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDGRD_ISCT.Value := SQLConsulta.Current.Vars[0].AsInteger;
        CAD_PRO_GRDGRD_DSCT.Value := SQLConsulta.Current.Vars[1].AsString;

        if SQLConsulta.Current.Vars[4].AsCurrency > 0 then
        CAD_PRO_GRDGRD_PREC.Value := SQLConsulta.Current.Vars[4].AsCurrency;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oRTransact(TSEdicao,ltRead_Only_Release_Commit);
      _PUMKP;

      IEIDSCT.Modified := False;
    except
      on E: Exception do
      begin
        oRTransact(TSEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar sub categoria !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    WinControl := ActiveControl;
    ActiveControl := Nil;
    if WinControl <> Nil then
    begin
      PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(WinControl).SetFocus;
    end;
    IEIDSCT.OnExit := IEIDSCTExit;
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    REC_SHE_DEF.Editing := True;
    oRefresh(CAD_PRO_GRD);
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDBeforeCancel(DataSet: TDataSet);
begin
  if CAD_PRO_GRDId.Tag = 0 then
  begin
    CAD_PRO_GRD.Close;
    CAD_PRO_GRD.Open;
    ABORT;
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDBeforePost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    CAD_PRO_GRDGRD_DCOR.Value := Trim(CAD_PRO_GRDGRD_DCOR.AsString);
    if (CAD_PRO_GRDGRD_DCOR.AsString <> EmptyStr) and (CAD_PRO_GRDGRD_CCOR.AsInteger = 0) then
        DataBaseError('Cor não Encontrada ou Incorreta !');

    CAD_PRO_GRDGRD_CART.Value := EDArtigo.Text;
    CAD_PRO_GRDGRD_CPRO.Value := EDArtigo.Text;

    if not oEmpty(CAD_PRO_GRDGRD_CGRD.AsString) then
       CAD_PRO_GRDGRD_CPRO.Value := CAD_PRO_GRDGRD_CPRO.AsString+'.'+CAD_PRO_GRDGRD_CGRD.AsString;

    if not oEmpty(CAD_PRO_GRDGRD_DCOR.AsString) then
       CAD_PRO_GRDGRD_CPRO.Value := CAD_PRO_GRDGRD_CPRO.AsString+'.'+oStrZero(CAD_PRO_GRDGRD_CCOR.AsInteger,4);

    with SQLSConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_PRO_GRD');
      SQL.Add('WHERE  GRD_CPRO = '''+CAD_PRO_GRDGRD_CPRO.AsString+'''');
      SQL.Add('AND         ID <> '''+CAD_PRO_GRDID.AsString      +'''');
      ExecQuery;
      
      if not Eof then
         DataBaseError('Grade já Cadastrada !');
    end;
                             
    CAD_PRO_GRDDGCP.Value := TRIM(CAD_PRO_GRDGRD_DGRD.AsString+' '+TRIM(CAD_PRO_GRDGRD_DCOR.AsString+' '+TRIM(CAD_PRO_GRDGRD_CGRD.AsString+' '+TRIM(CAD_PRO_GRDGRD_RGRD.AsString))));
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDBeforeInsert(DataSet: TDataSet);
begin
  CAD_PRO_GRDId.Tag := CAD_PRO_GRDId.AsInteger;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_GRDNewRecord(DataSet: TDataSet);
begin
  CAD_PRO_GRDID.Value       := 0;
  CAD_PRO_GRDIDIMG.Value    := 0;
  CAD_PRO_GRDGRD_IPRO.Value := 0;
  CAD_PRO_GRDFLAG.Value     := 0;

  CAD_PRO_GRDGRD_TITU.Value := EDTITULO.Text;

  CAD_PRO_GRDGRD_CFOR.Value := EDCDCF.Text;
  CAD_PRO_GRDGRD_FBAR.Value := EDCEANCF.Text;

  CAD_PRO_GRDGRD_PREC.Value := CEVPRC_PAD.Value;
  CAD_PRO_GRDGRD_PPRZ.Value := CEVPRC_PAD_PRZ.Value;
  CAD_PRO_GRDGRD_PPRO.Value := CEVPRC_PAD_PRO.Value;

  CAD_PRO_GRDGRD_ISCT.Value := StrToInt(IEIDSCT.Text);
  CAD_PRO_GRDGRD_DSCT.Value := IEIDSCT.Descriptions[IEIDSCT.Values.IndexOf(IEIDSCT.Text)];

  CAD_PRO_GRDGRD_IMKP.Value := StrToInt(IEMKP_IDML.Text);
  CAD_PRO_GRDGRD_DMKP.Value := IEMKP_IDML.Descriptions[IEMKP_IDML.Values.IndexOf(IEMKP_IDML.Text)];

  CAD_PRO_GRDGRD_IMK2.Value := StrToInt(IEMKP_IDSP.Text);
  CAD_PRO_GRDGRD_DMK2.Value := IEMKP_IDSP.Descriptions[IEMKP_IDSP.Values.IndexOf(IEMKP_IDSP.Text)];

  CAD_PRO_GRDGRD_CDST.Value := StrToInt(IECDST.Text);
  CAD_PRO_GRDGRD_REST.Value := LeftStr(IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)],1);
  CAD_PRO_GRDGRD_DEST.Value := IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)];
end;

procedure TFrmCAD_PRO_EDI.siSAIRClick(Sender: TObject);
begin
  try
    SISAV.Enabled := False;
    if CAD_PRO_GRD.State in [dsInsert,dsEdit] then
       CAD_PRO_GRD.Cancel;
  finally
    inherited;
  end;  
end;

procedure TFrmCAD_PRO_EDI.DTSCAD_PRO_GRDDataChange(Sender: TObject;
  Field: TField);
begin
  if CAD_PRO_GRD.State = dsBrowse then
  begin
    DBGGrade.ApplyBestFit(DBGGradeGRD_CPRO);
    DBGGrade.ApplyBestFit(DBGGradeGRD_DEST);
    DBGGrade.ApplyBestFit(DBGGradeGRD_DCOR);
    DBGGrade.ApplyBestFit(DBGGradeGRD_DGRD);
    DBGGrade.ApplyBestFit(DBGGradeGRD_DSCT);
    DBGGrade.ApplyBestFit(DBGGradeGRD_TITU);

    oLoadJPG(CAD_PRO_GRD.FieldByName('GRD_FOTO'),IMG_SKU.Picture,False);
  end;  
end;

procedure TFrmCAD_PRO_EDI.DTSCAD_PRO_GRDStateChange(Sender: TObject);
begin
  oState(CAD_PRO_GRD,SBMenuEdicao);
end;

procedure TFrmCAD_PRO_EDI.CEVPRC_PADValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    try
      oOTransact(TSEdicao,ltRead_Only);
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDGRD_PREC.Value := CEVPRC_PAD.Value;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oCTransact(TSEdicao,ltRead_Only_Release_Commit);

      if RECParametros.PRO_AJU_PRC_VAR > 0 then
         CEVPRC_VAR.Value := CEVPRC_PAD.Value +((CEVPRC_PAD.Value * RECParametros.PRO_AJU_PRC_VAR) / 100);

      if RECParametros.PRO_AJU_PRC_REP > 0 then
         CEVPRC_REP.Value := CEVPRC_PAD.Value +((CEVPRC_PAD.Value * RECParametros.PRO_AJU_PRC_REP) / 100);

      _PUMKP;
    except
      on E: Exception do
      begin
        oCTransact(TSEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    oRTransact(TSEdicao);
  end;
end;

procedure TFrmCAD_PRO_EDI.CEVPRC_PAD_PRZValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    try
      oOTransact(TSEdicao,ltRead_Only);
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDGRD_PPRZ.Value := CEVPRC_PAD_PRZ.Value;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oCTransact(TSEdicao,ltRead_Only_Release_Commit);
    except
      on E: Exception do
      begin
        oCTransact(TSEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    oRTransact(TSEdicao);
  end;
end;

procedure TFrmCAD_PRO_EDI.CEVPRC_PAD_PROValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  try
    try
      oOTransact(TSEdicao,ltRead_Only);
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDGRD_PPRO.Value := CEVPRC_PAD_PRO.Value;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oCTransact(TSEdicao,ltRead_Only_Release_Commit);
    except
      on E: Exception do
      begin
        oCTransact(TSEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    oRTransact(TSEdicao);
  end;
end;

procedure TFrmCAD_PRO_EDI.CEPMKPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _PUMKP;
end;

procedure TFrmCAD_PRO_EDI._PUMKP;
var
  ASPRC: Double;
begin
  ASPRC := 0;
  if ((CEVPRC_PAD.Value > 0) and (CEUQVOL_LV.Value > 0) and (CEPMKP.Value > 0)) then
  begin
    ASPRC := CEVPRC_PAD.Value / CEUQVOL_LV.Value;
    ASPRC := ASPRC + ((ASPRC * CEPMKP.Value) / 100);

    with Consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NVALOR FROM SP_CAD_PRO_ROUND(');
      SQL.Add(''''+oStrTran(FloatToStr(ASPRC),',','.')+''')');
      Open;
      ASPRC := Fields[0].AsCurrency;
    end;
  end;
  CEVPRC_LV.Value := ASPRC;
end;

procedure TFrmCAD_PRO_EDI.TSMedidasShow(Sender: TObject);
begin
  if (Showing) and (IEUCOM.Enabled) and (TSMedidas.Enabled) then
      IEUCOM.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPrecosShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_PAD.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_PAD) and (CEVPRC_PAD.Enabled) then
  CEVPRC_PAD.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_PADShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_PAD.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_PAD) and (CEVPRC_PAD.Enabled) then
  CEVPRC_PAD.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_ATVShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_ATV.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_ATV) and (CEVPRC_ATV.Enabled) then
  CEVPRC_ATV.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_VARShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_VAR.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_VAR) and (CEVPRC_VAR.Enabled) then
  CEVPRC_VAR.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_REPShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_REP.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_REP) and (CEVPRC_REP.Enabled) then
  CEVPRC_REP.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_LVShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled ) and (TSPRC_LV.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_LV) and (CEVPRC_LV.Enabled) then
  CEVPRC_LV.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.TSPRC_COMShow(Sender: TObject);
begin
  if (Showing) and (TSPrecos.Enabled  ) and (TSPRC_COM.Enabled ) then
  if (PCTAB_PRC.ActivePage = TSPRC_COM) and (CEVPRC_COM.Enabled) then
  CEVPRC_COM.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.CEPESOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (CEPESO.Value > 0) and (IEUCOM.Text = 'KG') then
  begin
    CEUQTDE.Value := CEPESO.Value;
    CEUQTDE.Color := clGray;
    CEUQTDE.Font.Color := clWhite;
    CEUQTDE.Refresh;
  end;
end;

procedure TFrmCAD_PRO_EDI.CEMetrosValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (CEMetros.Value > 0) and (IEUCOM.Text = 'M') then
  begin
    CEUQTDE.Value := CEMetros.Value;
    CEUQTDE.Color := clGray;
    CEUQTDE.Font.Color := clWhite;

    CEUQTDE.Modified := True;
    CEUQTDE.ValidateEdit;
  end;
end;

procedure TFrmCAD_PRO_EDI.CEGramaturaValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (LeftStr(IEUCOM.Text,1) = 'M') or (LeftStr(IEUCOM.Text,1) = 'K') then
  begin
    ARendimento := 0;

    if (CEGramatura.Value > 0) and (CELARG_T.Value > 0) then
    begin
      ARendimento := RoundTO(1000 / CEGramatura.Value,-2);
      ARendimento := RoundTO(ARendimento / CELARG_T.Value,-2);
    end;

    if ARendimento > 0 then
    begin
      CERend.Value := ARendimento;

      if (LeftStr(IEUCOM.Text,1) = 'K') and (CEPeso.Value > 0) then
          CEMetros.Value := RoundTO(CERend.Value * CEPeso.Value,-2);
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDTituloValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  oRTransact(TEdicao);
  with SQLFKConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PRO_CART,MAX(DTCA) FROM CAD_PRO');
    SQL.Add('WHERE    PRO_TITU  = '''+EDTitulo.Text+'''');
    SQL.Add('AND      PRO_CART <> '''+EDArtigo.Text     +'''');
    SQL.Add('GROUP BY 1');
    ExecQuery;

    if not Eof then
       oException(EDTitulo,'Título já cadastrado em outro artigo !'+#13+
                            Current.Vars[0].AsString+'. Criado em '+FormatDateTime('dd/mm/yy hh:mm.',Current.Vars[1].AsDateTime));
  end;

  try
    try
      oOTransact(TSEdicao,ltRead_Only);
      CAD_PRO_GRD.First;
      while not CAD_PRO_GRD.Eof do
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDGRD_TITU.Value := EDTITULO.Text;
        CAD_PRO_GRD.Post;
        CAD_PRO_GRD.Next;
      end;
      oCTransact(TSEdicao,ltRead_Only_Release_Commit);
    except
      on E: Exception do
      begin
        oCTransact(TSEdicao,ltRead_Only_Release_Rollback);
        oErro(Handle,'Erro ao tentar registrar preço !'+#13+
                      E.Message+'. '+FormatDateTime('dd/mm/yy hh:mm.',Now));
      end;
    end;
  finally
    oRTransact(TSEdicao);

    DBGGradeGRD_TITU.Field.FocusControl;
    Application.ProcessMessages;
  end;

  PEDECF.SetFocus;
end;

procedure TFrmCAD_PRO_EDI.DBGGradeGRD_TITUValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  DBGGrade.EditingText := Trim(DBGGrade.EditingText);
  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) and (DBGGrade.EditingText <> EmptyStr) and (DBGGrade.EditingText <> CAD_PRO_GRDGRD_TITU.AsString) then
      CAD_PRO_GRDGRD_TITU.Value := DBGGrade.EditingText;
end;

procedure TFrmCAD_PRO_EDI.CERENDValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (LeftStr(IEUCOM.Text,1) = 'K') and (CERend.Value > 0) and (CEPeso.Value > 0) then
      CEMetros.Value := RoundTO(CERend.Value * CEPeso.Value,-2);
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPNewRecord(DataSet: TDataSet);
begin
  { Cadastro }
  CAD_PRO_CMPID.Value   := 0;
  CAD_PRO_CMPIDEP.Value := RECParametros.EP_ID;
  CAD_PRO_CMPIDCA.Value := RECUsuarios.Id;

  { Evento }
  CAD_PRO_CMPIDEV.Value := AIDG_IDEV_CMP;
  CAD_PRO_CMPCDEV.Value := 3;

  { Composição }
  CAD_PRO_CMPIDAK.Value := rEC_SHE_DEF.IDFK; { Artigo }
  CAD_PRO_CMPCMP_IDFK.Value := 0; { CAD_PRO_CMP }
  CAD_PRO_CMPCMP_IDPK.Value := 0; { TAB_CMP }
  CAD_PRO_CMPCMP_QTDE.Value := 0; { % }

  { Padrão }
  CAD_PRO_CMPIP.Value   := RECParametros.IP;
  CAD_PRO_CMPHOST.Value := RECParametros.HOST;
  CAD_PRO_CMPFLAG.Value := 0;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPBeforeInsert(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  CAD_PRO_CMPId.Tag := CAD_PRO_CMPId.AsInteger;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPBeforeCancel(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  if CAD_PRO_CMPId.Tag = 0 then
  begin
    CAD_PRO_CMP.Close;
    CAD_PRO_CMP.Open;
    ABORT;
  end;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPAfterInsert(DataSet: TDataSet);
begin
//  DBGCMPCMP_DEPK.Field.FocusControl;
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPAfterDelete(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  oRefresh(CAD_PRO_CMP);
end;

procedure TFrmCAD_PRO_EDI.CAD_PRO_CMPAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    REC_SHE_DEF.Editing := True;
    oRefresh(CAD_PRO_CMP);
  end;
end;

procedure TFrmCAD_PRO_EDI.DTSCAD_PRO_CMPStateChange(Sender: TObject);
begin
  oState(CAD_PRO_CMP,SBCMenuEdicao);
end;

procedure TFrmCAD_PRO_EDI.DBGCMPKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       vk_insert: SIMCEAppend.Click;
       vk_return: if CAD_PRO_CMP.State = dsBrowse then SIMCEEdit.Click else
                     if DBGCMP.FocusedField.FieldName = 'CMP_DEPK' then
                        DBGCMPCMP_QTDE.Field.FocusControl else
                     if DBGCMP.FocusedField.FieldName = 'CMP_QTDE' then
                     begin
                       if CAD_PRO_CMPCMP_QTDE.AsCurrency > 0 then
                          CAD_PRO_CMP.Next;
                       if CAD_PRO_CMP.Eof then
                          CAD_PRO_CMP.Append;
                     end else
                     DBGCMP.FocusedColumn := DBGCMP.FocusedColumn + 1;
       vk_delete: SIMCEDelete.Click;
  end;
end;

procedure TFrmCAD_PRO_EDI._CAD_PRO_CMP(AFlag: Integer = 0);
begin
  with CAD_PRO_CMP do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT PK.ID,PK.IDEP,PK.IDCA,PK.IDAK,PK.CMP_IDFK,PK.CMP_IDPK,PK.CMP_REPK,PK.CMP_DEPK,PK.CMP_QTDE,PK.IDEV,PK.CDEV,PK.IP,PK.HOST,PK.FLAG');
    SelectSQL.Add('FROM   TAB_EDI_PRO AS PK');
    SelectSQL.Add('WHERE  PK.IDEV = ''' + AIDG_IDEV_CMP + '''');
    SelectSQL.Add('AND    PK.CDEV = 3');
    SelectSQL.Add('AND    PK.HOST = ''' + RECParametros.HOST + '''');

    if AFlag >= 0 then
    SelectSQL.Add('AND      PK.FLAG = '+IntToStr(AFlag));
    SelectSQL.Add('ORDER BY PK.ID');

    Prepare;
    Open;
  end;

  if AFlag = -1 then
  begin
    CAD_PRO_CMP.DisableControls;
    CAD_PRO_CMP.First;
  end;
end;

procedure TFrmCAD_PRO_EDI.PENCMExit(Sender: TObject);
var
  WinControl: TWinControl;
begin
  if PENCM.Modified then
     try
       PENCM.OnExit := Nil;
       PENCM.Text   := Trim(PENCM.Text);

       _PSQNCM(PENCM);
     finally
          WinControl := ActiveControl;
       ActiveControl := Nil;
       if WinControl <> Nil then
       begin
         PostMessage(TWinControl(WinControl).Handle, WM_SETFOCUS, 0, 0);
         TWinControl(WinControl).SetFocus;
       end;

       PENCM.OnExit := PENCMExit;
     end;
end;

procedure TFrmCAD_PRO_EDI.CEPIPIValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _PSQNCM(TWinControl(Sender));
end;

procedure TFrmCAD_PRO_EDI._PSQNCM(ASender: TwinControl);
begin
  try
    Self.Cursor := crSQLWait;

    try
      PENCM.Text := oCoalesce(PENCM.Text,'00000000');

      oOTransact(TEdicao);
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('EXECUTE BLOCK');
        SQL.Add('RETURNS (RNCM VARCHAR(8),RTRIBIPI NUMERIC(5,2),REXTIPI VARCHAR(3),RCEST VARCHAR(7))');
        SQL.Add('AS');
        SQL.Add('BEGIN');

        SQL.Add('UPDATE OR INSERT');
        SQL.Add('INTO TAB_NCM (IDEP,IDCA,NCM,TRIBIPI,IP,HOST)');
        SQL.Add('VALUES (');

        SQL.Add('''' + RECParametros.EP_ID              + ''',');
        SQL.Add('''' + RECUsuarios.ID                + ''',');
        SQL.Add('''' + PENCM.Text                    + ''',');
        SQL.Add('''' + oStrTran(CEPIPI.Text,',','.') + ''',');
        SQL.Add('''' + RECParametros.IP              + ''',');
        SQL.Add('''' + RECParametros.HOST            + ''')');

        SQL.Add('MATCHING (NCM)');
        SQL.Add('RETURNING NCM,TRIBIPI,EXTIPI,CEST INTO :RNCM,:RTRIBIPI,:REXTIPI,:RCEST;');

        SQL.Add('SUSPEND;');
        SQL.Add('END;');

        ParamCheck := False;
        Prepare;
        ExecQuery;

        PENCM.Text    := Current.Vars[0].AsString;
        CEPIPI.Value  := Current.Vars[1].AsFloat;
        PEEXTIPI.Text := Current.Vars[2].AsString;
        PECEST.Text   := Current.Vars[3].AsString;

        ParamCheck := True;
        Close;
      end;
      oCTransact(TEdicao);

      if ASender.ClassType = TdxPickEdit     then TdxPickEdit    (ASender).Modified := False;
      if ASender.ClassType = TdxCurrencyEdit then TdxCurrencyEdit(ASender).Modified := False;
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);

        if ASender.ClassType = TdxPickEdit     then TdxPickEdit    (ASender).Modified := True;
        if ASender.ClassType = TdxCurrencyEdit then TdxCurrencyEdit(ASender).Modified := True;

        oException(Nil,'Falha ao tentar atualizar ncm !' +#13+
                       'Favor entrar em contato com o administrador do sistema.' +#13 +#13+
                        E.Message);
      end;
    end;
    
  finally
    Self.Cursor := crDefault;
    Application.ProcessMessages;
  end;  
end;

procedure TFrmCAD_PRO_EDI.PENCMKeyPress(Sender: TObject; var Key: Char);
begin
  key := oEditNumero(Key);
end;

procedure TFrmCAD_PRO_EDI.CEPIPIChange(Sender: TObject);
begin
  if CEPIPI.Value > 0 then
     CEPIPI.Font.Style := [fsBold] else
     CEPIPI.Font.Style := [];
end;

procedure TFrmCAD_PRO_EDI.IEIDFINChange(Sender: TObject);
begin
  REC_SHE_DEF.Editing := (not ALockWindowUpdate) and ((REC_SHE_DEF.GAppend) or (REC_SHE_DEF.GEdit));
end;

procedure TFrmCAD_PRO_EDI.IEIDTPVChange(Sender: TObject);
begin
  if not ALockWindowUpdate then
  REC_SHE_DEF.Editing := (not ALockWindowUpdate) and ((REC_SHE_DEF.GAppend) or (REC_SHE_DEF.GEdit));
end;

procedure TFrmCAD_PRO_EDI.IECDSTChange(Sender: TObject);
begin
  if not ALockWindowUpdate then
  REC_SHE_DEF.Editing := (not ALockWindowUpdate) and ((REC_SHE_DEF.GAppend) or (REC_SHE_DEF.GEdit));

  if LeftStr(IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)],1) = 'A' then
  begin
    IECDST.Color      := $00B9FFB9;
    IECDST.Font.Color := clBlack;
  end else

  if LeftStr(IECDST.Descriptions[IECDST.Values.IndexOf(IECDST.Text)],1) = 'P' then
  begin
    IECDST.Color      := clInfoBk;
    IECDST.Font.Color := clBlack;
  end else
  begin
    IECDST.Color      := $000024B3;
    IECDST.Font.Color := clWhite;
  end;
end;

procedure TFrmCAD_PRO_EDI.IEUCOMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEPSCN.Value := IFThen((IEUCOM.Text <> 'M') and (IEUCOM.Text <> 'KG') and (IEUCOM.Text <> 'PC'),0,0.3);
  _UCON;
end;

procedure TFrmCAD_PRO_EDI.CEUQTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEUQTDE.Color      := clWhite;
  CEUQTDE.Font.Color := clBlack;

  _UCON;
end;

procedure TFrmCAD_PRO_EDI.CEUQVOLValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _UCON;
end;

procedure TFrmCAD_PRO_EDI._UCON;
begin
{ RICARDO
  quando terminar aqui, retirar a trigger +
  UPDATE CAD_PRO
  SET    UCON  = NULL
  WHERE  UQTDE = 1
  AND    UQVOL = 0 }

  EDUCON.Text := EmptyStr;
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT REFERENCIA,DESCRICAO,CONTEUDO');
    SQL.Add('FROM   TAB_UCOM ');
    SQL.Add('WHERE  REFERENCIA = ''' + IEUCOM.Text + '''');
    ExecQuery;

    if not Eof then
    begin
      if (EDUESP.Text = EmptyStr ) and (CEUQTDE.Value = 1) and (LeftStr(IEUCOM.Text,2) = 'CX') and (Length(IEUCOM.Text) > 2) then
      EDUCON.Text := Current.ByName('CONTEUDO').AsString else

      if (EDUESP.Text = EmptyStr ) and (CEUQTDE.Value > 1) then
      EDUCON.Text := oStrTran(Current.ByName('CONTEUDO').AsString,'*',FormatFloat('0.##',CEUQTDE.Value)) else

      if (EDUESP.Text <> EmptyStr) and (CEUQVOL.Value > 0) and (LeftStr(IEUCOM.Text,2) = 'UN') and (Pos('UN',EDUESP.Text) > 0) then
      EDUCON.Text := 'CAIXA COM ' + FormatFloat('0.##',CEUQVOL.Value) + ' ' + EDUESP.Text else

      if (EDUESP.Text <> EmptyStr) and (CEUQVOL.Value > 0) then
      EDUCON.Text := IFThen(Pos(IEUCOM.Text,'MKG') > 0,'ROLO',Current.ByName('CONTEUDO').AsString) + ' COM ' + FormatFloat('0.##',CEUQVOL.Value) + ' ' + EDUESP.Text;
    end;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDUCONChange(Sender: TObject);
begin
  if not ALockWindowUpdate then
  begin
    EDUCON.Color      := clGray;
    EDUCON.Font.Color := clWhite;
    EDUCON.Refresh;
  end;
end;

procedure TFrmCAD_PRO_EDI.EDUCONValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if oYesNo(handle,'Confirma edição do conteúdo ?') = mrNo then
     EDUCON.Reset;
end;

procedure TFrmCAD_PRO_EDI.ACTMPostExecute(Sender: TObject);
begin
  inherited;

  if (CAD_PRO_GRD.State in [dsInsert,dsEdit]) then
  if (CAD_PRO_GRDGRD_DCOR.AsString = EmptyStr) and (CAD_PRO_GRDGRD_DGRD.AsString = EmptyStr) and (CAD_PRO_GRDGRD_CGRD.AsString = EmptyStr) and (CAD_PRO_GRDGRD_RGRD.AsString = EmptyStr) then
  CAD_PRO_GRD.Cancel else CAD_PRO_GRD.Post;

  if (CAD_PRO_CMP.State in [dsInsert,dsEdit]) then
  if (CAD_PRO_CMPCMP_DEPK.AsString = EmptyStr) and (CAD_PRO_CMPCMP_QTDE.AsCurrency = 0) then
  CAD_PRO_CMP.Cancel else CAD_PRO_CMP.Post;

  if IEIDEP.Text      = '0'      then oException(IEIDEP     ,'Empresa não Informada !'       );
  if EDArtigo.Text    = EmptyStr then oException(EDArtigo   ,'Artigo não Informado !'        );
  if EDDescricao.Text = EmptyStr then oException(EDDescricao,'Descrição não Informada !'     );
  if IEIDFIN.Text     = '0'      then oException(IEIDFIN    , IEIDFIN.Hint+' não Informada !');
  if IEIDTPV.Text     = '0'      then oException(IEIDTPV    , IEIDTPV.Hint+' não Informado !');
  if IECDST.Text      = '0'      then oException(IECDST     ,'Situação não Informado !'      );
  if PEDECF.Tag       = 0        then oException(PEDECF     ,'Fornecedor não Informado !'    );

  if IEUCOM.Text = EmptyStr then
  begin
    PCPrincipal.ActivePageIndex := 0;
    oException(IEUCOM,'Unidade de medida não informada !');
  end;

  if ((Pos(IEORIG.Text,'1267') > 0) and (IECPAIS.Text =  '1058') or (Pos(IEORIG.Text,'1267') = 0) and (IECPAIS.Text <> '1058')) then
  begin
    PCPrincipal.ActivePageIndex := 0;
    oException(IECPAIS,'Origem da mercadoria em desacordo com o país fabricante !');
  end;

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FIRST 1 FCMP(' + AIDG_IDEV_CMP + ') AS CMP_PAD FROM RDB$DATABASE');
    ExecQuery;
    EDCMP_PAD.Text := Current.Vars[0].AsString;
  end;

  try
    CAD_PRO_GRD.DisableControls;
    CAD_PRO_GRD.First;

    if (CAD_PRO_GRDGRD_CART.AsString = EmptyStr) or (CAD_PRO_GRDGRD_CPRO.AsString = EmptyStr) then
        oException(DBGGrade,'Produto(s) não Informado(s) !');

    try
      oOTransact(TEdicao);
      REC_SHE_DEF.FB_SQL := SQLEdicao;

      if oEmpty(PEDECOL.Text) then
                PEDECOL.Tag := 0
      else
      with REC_SHE_DEF.FB_SQL do
      begin
        Close;
        SQL.Clear;
        SQL.Add('EXECUTE BLOCK');
        SQL.Add('RETURNS (ID smallint)');
        SQL.Add('AS');
        SQL.Add('BEGIN');
        SQL.Add('UPDATE OR INSERT');
        SQL.Add('INTO TAB_COL (DESCRICAO)');
        SQL.Add('VALUES (');
        SQL.Add(''''+PEDECOL.Text+''')');
        SQL.Add('MATCHING (DESCRICAO)');
        SQL.Add('RETURNING ID INTO :ID;');
        SQL.Add('SUSPEND;');
        SQL.Add('END;');

        ParamCheck := False;
        Prepare;
        ExecQuery;
        PEDECOL.Tag := Current.Vars[0].AsInteger;
      end;

      with SQLSEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GRD_IPRO FROM CAD_PRO_GRD WHERE FLAG = 1');
        ExecQuery;
      end;
      while not SQLSEdicao.Eof do
      begin
        with REC_SHE_DEF.FB_SQL do
        begin
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM CAD_PRO WHERE CP_ID = '''+SQLSEdicao.Current.Vars[0].AsString+'''');
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM ESTOQUE WHERE CP_ID = '''+SQLSEdicao.Current.Vars[0].AsString+'''');
          ExecQuery;
        end;
        SQLSEdicao.Next;
      end;

      while not CAD_PRO_GRD.Eof do
      begin
        REC_SHE_DEF.ID := IntToStr(CAD_PRO_GRDGRD_IPRO.AsInteger);
        REC_SHE_DEF.CODIGO  := CAD_PRO_GRDGRD_CPRO.AsString;

        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_CAD_PRO_TMP';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('ID'  ).Value := CAD_PRO_GRDGRD_IPRO.AsInteger;
        SPEdicao.ParamByName('IDEP').Value := IEIDEP.Text;
        SPEdicao.ParamByName('IDCA').Value := RECUsuarios.Id;

        SPEdicao.ParamByName('CDST').Value := CAD_PRO_GRDGRD_CDST.AsInteger;
        SPEdicao.ParamByName('REST').Value := CAD_PRO_GRDGRD_REST.AsString;
        SPEdicao.ParamByName('DEST').Value := CAD_PRO_GRDGRD_DEST.AsString;

        SPEdicao.ParamByName('ARTIGO').Value := EDArtigo.Text;
        SPEdicao.ParamByName('NCM' ).Value := PENCM.Text;
        SPEdicao.ParamByName('PIPI').Value := CEPIPI.Value;

        SPEdicao.ParamByName('SKU' ).Value := CAD_PRO_GRDGRD_CPRO.AsString;
        SPEdicao.ParamByName('CEAN').Value := oBarCode(REC_SHE_DEF);

        SPEdicao.ParamByName('DESCRICAO').Value := EDDescricao.Text;
        SPEdicao.ParamByName('TITULO'   ).Value := CAD_PRO_GRDGRD_TITU.AsString;
        SPEdicao.ParamByName('CMP_PAD'  ).Value := EDCMP_PAD.Text;

        SPEdicao.ParamByName('IDCOR').Value := CAD_PRO_GRDGRD_CCOR.AsInteger;
        SPEdicao.ParamByName('DECOR').Value := CAD_PRO_GRDGRD_DCOR.AsString;

        SPEdicao.ParamByName('DEGRD').Value := CAD_PRO_GRDGRD_DGRD.AsString;
        SPEdicao.ParamByName('CDGRD').Value := CAD_PRO_GRDGRD_CGRD.AsString;
        SPEdicao.ParamByName('REGRD').Value := CAD_PRO_GRDGRD_RGRD.AsString;

        SPEdicao.ParamByName('IDCF'  ).Value := PEDECF.Tag;
        SPEdicao.ParamByName('CDCF'  ).Value := CAD_PRO_GRDGRD_CFOR.AsString;
        SPEdicao.ParamByName('CEANCF').Value := CAD_PRO_GRDGRD_FBAR.AsString;

        SPEdicao.ParamByName('UCOM' ).Value := IEUCOM.Text;
        SPEdicao.ParamByName('UQVOL').Value := CEUQVOL.Value;
        SPEdicao.ParamByName('UESP' ).Value := EDUESP.Text;
        SPEdicao.ParamByName('UCON' ).Value := EDUCON.Text;
        SPEdicao.ParamByName('UCDBE').Value := IEUCDBE.Text;
        SPEdicao.ParamByName('UQTDE').Value := CEUQTDE.Value;

        SPEdicao.ParamByName('UQTDE_VEN_MUL').Value := CEUQTDE_VEN_MUL.Value;
        SPEdicao.ParamByName('UQTDE_VEN_MIN').Value := CEUQTDE_VEN_MIN.Value;
        SPEdicao.ParamByName('UQTDE_EST_MIN').Value := CEUQTDE_EST_MIN.Value;

        SPEdicao.ParamByName('PESO').Value := CEPESO.Value;
        SPEdicao.ParamByName('PSCN').Value := CEPSCN.Value;

        SPEdicao.ParamByName('METRO'     ).Value := CEMetros.Value;
        SPEdicao.ParamByName('RENDIMENTO').Value := CERend.Value;

        SPEdicao.ParamByName('GRAMATURA').Value := CEGramatura.Value;
        SPEdicao.ParamByName('GRAT_T'   ).Value := PEDGramatura.Text;

        SPEdicao.ParamByName('LARG_U').Value := CELARG_U.Value;
        SPEdicao.ParamByName('LARG_T').Value := CELARG_T.Value;

        SPEdicao.ParamByName('ELAS_L').Value := CEELAS_L.Value;
        SPEdicao.ParamByName('ELAS_C').Value := CEELAS_C.Value;

        SPEdicao.ParamByName('ENCO_L').Value := CEENCO_L.Value;
        SPEdicao.ParamByName('ENCO_C').Value := CEENCO_C.Value;
        SPEdicao.ParamByName('ENCO_T').Value := PEDENCO.Text;

        SPEdicao.ParamByName('ESPESSURA'     ).Value := CEESPESSURA.Value;
        SPEdicao.ParamByName('ESPESSURA_TIPO').Value := IEESPESSURA.Text;

        SPEdicao.ParamByName('VPRC_COMPRA'    ).Value := CEVPRC_COM.Value;
        SPEdicao.ParamByName('VPRC_COMPRA_IMP').Value := CEVPRC_COM_IMP.Value;

        SPEdicao.ParamByName('VPRC_PAD'    ).Value := CAD_PRO_GRDGRD_PREC.AsCurrency;
        SPEdicao.ParamByName('VPRC_PAD_PRZ').Value := CAD_PRO_GRDGRD_PPRZ.AsCurrency;
        SPEdicao.ParamByName('VPRC_PAD_PRO').Value := CAD_PRO_GRDGRD_PPRO.AsCurrency;
        SPEdicao.ParamByName('PPRC_PAD_DSC').Value := CEPPRC_PAD_DSC.Value;
        SPEdicao.ParamByName('PPRC_PAD_AJU').Value := CEPPRC_PAD_AJU.Value;

        SPEdicao.ParamByName('VPRC_ATV'    ).Value := CEVPRC_ATV.Value;
        SPEdicao.ParamByName('VPRC_ATV_PRZ').Value := CEVPRC_ATV_PRZ.Value;
        SPEdicao.ParamByName('VPRC_ATV_PRO').Value := CEVPRC_ATV_PRO.Value;
        SPEdicao.ParamByName('PPRC_ATV_DSC').Value := CEPPRC_ATV_DSC.Value;
        SPEdicao.ParamByName('PPRC_ATV_AJU').Value := CEPPRC_ATV_AJU.Value;

        SPEdicao.ParamByName('VPRC_VAR'    ).Value := CEVPRC_VAR.Value;
        SPEdicao.ParamByName('VPRC_VAR_PRZ').Value := CEVPRC_VAR_PRZ.Value;
        SPEdicao.ParamByName('VPRC_VAR_PRO').Value := CEVPRC_VAR_PRO.Value;

        SPEdicao.ParamByName('VPRC_REP'    ).Value := CEVPRC_REP.Value;
        SPEdicao.ParamByName('VPRC_REP_PRZ').Value := CEVPRC_REP_PRZ.Value;
        SPEdicao.ParamByName('VPRC_REP_PRO').Value := CEVPRC_REP_PRO.Value;

        SPEdicao.ParamByName('PMKP_SITE').Value := CEPMKP.Value;
        SPEdicao.ParamByName('VPRC_SITE').Value := CEVPRC_LV.Value;

        SPEdicao.ParamByName('IDCOL').Value := PEDECOL.Tag;
        SPEdicao.ParamByName('IDSEG').Value := IEIDSEG.Text;
        SPEdicao.ParamByName('IDGRP').Value := IEIDGRP.Text;
        SPEdicao.ParamByName('IDSGP').Value := IEIDSGP.Text;
        SPEdicao.ParamByName('IDCAT').Value := IEIDCAT.Text;
        SPEdicao.ParamByName('IDSCT').Value := CAD_PRO_GRDGRD_ISCT.AsInteger;

        SPEdicao.ParamByName('MKP_IDML').Value := CAD_PRO_GRDGRD_IMKP.AsInteger;;
        SPEdicao.ParamByName('MKP_IDSP').Value := CAD_PRO_GRDGRD_IMK2.AsInteger;;
        SPEdicao.ParamByName('MKP_IDAM').Value := 0;

        SPEdicao.ParamByName('IDFIN').Value := IEIDFIN.Text;
        SPEdicao.ParamByName('IDTPV').Value := IEIDTPV.Text;

        SPEdicao.ParamByName('IDTPA').Value := CBSTAL.Text;
        SPEdicao.ParamByName('IDTPD').Value := CBDENS.Text;
        SPEdicao.ParamByName('IDTPF').Value := CBTITF.Text;
        SPEdicao.ParamByName('IDTPL').Value := 'L';

        SPEdicao.ParamByName('ORIG' ).Value := IEORIG.Text;
        SPEdicao.ParamByName('CPAIS').Value := IECPAIS.Text;

        SPEdicao.ParamByName('INFADCAD').Value := EMINFADCAD.Text;
        SPEdicao.ParamByName('INFADTEC').Value := EMINFADTEC.Text;
        SPEdicao.ParamByName('INFADETQ').Value := EMINFADETQ.Text;

        SPEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
        SPEdicao.ParamByName('HOST').Value := RECParametros.Host;

        SPEdicao.ExecProc;
        REC_SHE_DEF.ID   := IntToStr(SPEdicao.ParamByName('rID'  ).AsInteger);
        rEC_SHE_DEF.IDFK := IntToStr(SPEdicao.ParamByName('rIDAK').AsInteger);

        { Imagem Produto }
        if CAD_PRO_GRDIDIMG.AsInteger = 1 then
        begin
          SPEdicao.Close;
          SPEdicao.StoredProcName := 'SP_CAD_PRO_IMG_SKU';
          SPEdicao.Prepare;

          SPEdicao.ParamByName('AID'  ).Value := REC_SHE_DEF.ID; // ID do Produto (SKU) para imagens individuais
          SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

          SPEdicao.ParamByName('AIMG_PAD').Value := CAD_PRO_GRDGRD_FOTO.Value;

          SPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
          SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
          SPEdicao.ExecProc;
        end;

        CAD_PRO_GRD.Next;
      end;

      { Instruções de Lavagem }
      if BILA_BMP.Tag = 1 then
      begin
        SPEdicao.Close;
        SPEdicao.StoredProcName  := 'SP_CAD_PRO_ILA';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('AID'    ).Value := rEC_SHE_DEF.IDFK;
        SPEdicao.ParamByName('AIDILA1').Value := ILA_BMP1.Tag;
        SPEdicao.ParamByName('AIDILA2').Value := ILA_BMP2.Tag;
        SPEdicao.ParamByName('AIDILA3').Value := ILA_BMP3.Tag;
        SPEdicao.ParamByName('AIDILA4').Value := ILA_BMP4.Tag;
        SPEdicao.ParamByName('AIDILA5').Value := ILA_BMP5.Tag;
        SPEdicao.ParamByName('AIDILA6').Value := ILA_BMP6.Tag;
        SPEdicao.ParamByName('AIDILA7').Value := ILA_BMP7.Tag;
        SPEdicao.ParamByName('AIDILA8').Value := ILA_BMP8.Tag;
        SPEdicao.ExecProc;
      end;

      { Imagem Artigo }
      if BIMG_ART.Tag = 1 then
      begin
        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_CAD_PRO_IMG_ART';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('AID'  ).Value := rEC_SHE_DEF.IDFK; // ID do Artigo para imagem única
        SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

        SPEdicao.ParamByName('AIMG_PAD').LoadFromStream(oLoadStream(IMG_ART.Picture),ftBlob);

        SPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
        SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
        SPEdicao.ExecProc;
      end;

      { Composição }
      try
        _CAD_PRO_CMP(-1);
        while not CAD_PRO_CMP.Eof do
        begin
          SPEdicao.Close;
          SPEdicao.StoredProcName := 'SP_CAD_PRO_CMP';
          SPEdicao.Prepare;

          { Inicializar Parâmetros: FLAG (0 = Incluir/Alterar | 1 = Excluir) + pesquisa (ID) }
          SPEdicao.ParamByName('AFLAG').Value := CAD_PRO_CMPFLAG.AsInteger;

          { Cadastro }
          SPEdicao.ParamByName('AID'  ).Value := CAD_PRO_CMPCMP_IDFK.AsInteger;
          SPEdicao.ParamByName('AIDEP').Value := RECParametros.EP_ID;
          SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

          SPEdicao.ParamByName('AIDAK').Value := rEC_SHE_DEF.IDFK; { CAD_PRO }
          SPEdicao.ParamByName('AIDPK').Value := CAD_PRO_CMPCMP_IDPK.AsInteger; { TAB_CMP }

          { Composição }
          SPEdicao.ParamByName('AREFERENCIA').Value := CAD_PRO_CMPCMP_REPK.AsString;
          SPEdicao.ParamByName('ADESCRICAO' ).Value := CAD_PRO_CMPCMP_DEPK.AsString;
          SPEdicao.ParamByName('AQTDE').Value       := CAD_PRO_CMPCMP_QTDE.AsCurrency;

          { Evento }
          SPEdicao.ParamByName('AIDEV').Value := AIDG_IDEV_CMP;

          { Dispositivo }
          SPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
          SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
          SPEdicao.ExecProc;

          CAD_PRO_CMP.Next;
        end;
      finally
        _CAD_PRO_CMP;
      end;

      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO');
        SQL.Add('SET    PRO_COMP = NULL');
        SQL.Add('WHERE  AK_ID    = ''' + rEC_SHE_DEF.IDFK + '''');
        ExecQuery;
      end;

      oCTransact(TEdicao);
      oAviso(handle,'Atualização de produtos realizado com sucesso !');

      REC_SHE_DEF.Editing := False;
      SISAV.Enabled := False;

      ACTExecEvent.Execute;
      Close;
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil,'Falha ao tentar salvar cadastro !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    CAD_PRO_GRD.EnableControls;
  end;
end;

procedure TFrmCAD_PRO_EDI.SIMEAppendClick(Sender: TObject);
begin
  if CAD_PRO_GRD.State = dsBrowse then
  CAD_PRO_GRD.Append;
end;

procedure TFrmCAD_PRO_EDI.SIMEEditClick(Sender: TObject);
begin
  if (CAD_PRO_GRD.State = dsBrowse) and (CAD_PRO_GRDId.AsInteger > 0) then
  CAD_PRO_GRD.Edit;
end;

procedure TFrmCAD_PRO_EDI.SIMEDeleteClick(Sender: TObject);
begin
  if (CAD_PRO_GRD.State = dsBrowse) and (CAD_PRO_GRDId.AsInteger > 0) then
  begin
    oRTransact(TEdicao);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,DTCA,DTEK,DTPC,DTPP,DTPV');
      SQL.Add('FROM   CAD_PRO');
      SQL.Add('WHERE  PRO_CPRO = '''+CAD_PRO_GRDGRD_CPRO.AsString+'''');
      ExecQuery;
    end;
    if SQLConsulta.Current.ByName('ID').AsInteger > 0 then
    begin
      if (SQLConsulta.Current.ByName('DTEK').AsDateTime > 0) or (SQLConsulta.Current.ByName('DTPC').AsDateTime > 0) or
         (SQLConsulta.Current.ByName('DTPP').AsDateTime > 0) or (SQLConsulta.Current.ByName('DTPV').AsDateTime > 0) then
          DataBaseError('Produto '+CAD_PRO_GRDGRD_CPRO.AsString+'.'+#13+
                        'Exclusão não Permitida !'+#13+#13+
                        'Produto possui histórico(s) de registro(s) em aberto.'+#13+
                        'Compras: '     +IFThen(SQLConsulta.Current.ByName('DTPC').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.ByName('DTPC').AsDateTime),'')+#13+
                        'Programações: '+IFThen(SQLConsulta.Current.ByName('DTPP').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.ByName('DTPP').AsDateTime),'')+#13+
                        'Vendas: '      +IFThen(SQLConsulta.Current.ByName('DTPV').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.ByName('DTPV').AsDateTime),'')+#13+
                        'Estoque: '     +IFThen(SQLConsulta.Current.ByName('DTEK').AsDateTime > 0,FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.ByName('DTEK').AsDateTime),'')) else
      if oYesNo(handle,'Produto '+CAD_PRO_GRDGRD_CPRO.AsString+' criado em '+FormatDateTime('dd/mm/yy hh:mm.',SQLConsulta.Current.Vars[1].AsDateTime)+#13+
                       'Deseja realmente excluir ?') = mrYes then
      begin
        CAD_PRO_GRD.Edit;
        CAD_PRO_GRDFLAG.Value := 1;
        CAD_PRO_GRD.Post;
      end;
    end else
    CAD_PRO_GRD.Delete;
  end;
end;

procedure TFrmCAD_PRO_EDI.SIMEPostClick(Sender: TObject);
begin
  if CAD_PRO_GRD.State in [dsEdit,dsInsert] then
  CAD_PRO_GRD.Post;
end;

procedure TFrmCAD_PRO_EDI.SIMECancelClick(Sender: TObject);
begin
  if CAD_PRO_GRD.State in [dsEdit,dsInsert] then
  CAD_PRO_GRD.Cancel;
end;

procedure TFrmCAD_PRO_EDI.SIMCEAppendClick(Sender: TObject);
begin
  if CAD_PRO_CMP.State = dsBrowse then
  CAD_PRO_CMP.Append;
end;

procedure TFrmCAD_PRO_EDI.SIMCEEditClick(Sender: TObject);
begin
  if (CAD_PRO_CMP.State = dsBrowse) and (CAD_PRO_CMPId.AsInteger > 0) then
  CAD_PRO_CMP.Edit;
end;

procedure TFrmCAD_PRO_EDI.SIMCEDeleteClick(Sender: TObject);
begin
  if (CAD_PRO_CMP.State = dsBrowse) and (CAD_PRO_CMPId.AsInteger > 0) then
  if oYesNo(handle,'Excluir Composição ?') = mrYes then
  if CAD_PRO_CMPCMP_IDFK.AsInteger > 0 then
  begin
      CAD_PRO_CMP.Edit;
      CAD_PRO_CMPFLAG.Value := 1;
      CAD_PRO_CMP.Post;
  end else
  CAD_PRO_CMP.Delete;
end;

procedure TFrmCAD_PRO_EDI.SIMCEPostClick(Sender: TObject);
begin
  if CAD_PRO_CMP.State in [dsEdit,dsInsert] then
  CAD_PRO_CMP.Post;
end;

procedure TFrmCAD_PRO_EDI.SIMCECancelClick(Sender: TObject);
begin
  if CAD_PRO_CMP.State in [dsEdit,dsInsert] then
  CAD_PRO_CMP.Cancel;
end;

end.
