unit pent_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils, rxSpeedbar,
  IBSQL, IBEvents, cxGraphics, cxControls, dxStatusBar, ActnList;

type
  Tfrment_pro = class(TForm)
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    SIMSalva: TSpeedItem;
    TEdicao: TIBTransaction;
    SPEdicao: TIBStoredProc;
    Edicao: TIBDataSet;
    DTSEdicao: TDataSource;
    TSEdicao: TIBTransaction;
    QSEdicao: TIBQuery;
    QEdicao: TIBQuery;
    PNLPrincipal: TPanel;
    PNLME: TPanel;
    PNLSumario: TPanel;
    PNLRodape: TPanel;
    PNLEdicao: TPanel;
    PNLConsulta: TPanel;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    QConsulta: TIBQuery;
    SIMNovo: TSpeedItem;
    SIMImporta: TSpeedItem;
    SIMEtiquetaPadrao: TSpeedItem;
    SIMRelatorios: TSpeedItem;
    SIMSaida: TSpeedItem;
    GBConsulta: TGroupBox;
    DBGConsulta: TdxDBGrid;
    GBEdicao: TGroupBox;
    SBEdicao: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIDelete: TSpeedItem;
    SQLEdicao: TIBSQL;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLSEdicao: TIBSQL;
    SIPost: TSpeedItem;
    ILEdicao: TImageList;
    ILMenu: TImageList;
    SIMTransfere: TSpeedItem;
    DBGConsultaITEM: TdxDBGridMaskColumn;
    DBGConsultaCDET: TdxDBGridMaskColumn;
    DBGConsultaSKU: TdxDBGridMaskColumn;
    DBGConsultaQTDE: TdxDBGridMaskColumn;
    DBGConsultaEST_DEDF: TdxDBGridPickColumn;
    DBGConsultaQTRL: TdxDBGridMaskColumn;
    DBGConsultaEST_DETP: TdxDBGridPickColumn;
    SICancel: TSpeedItem;
    DBGConsultaDGCP: TdxDBGridMaskColumn;
    PNLTOP: TPanel;
    PNLTOPMD: TPanel;
    GBNF: TGroupBox;
    LACDNF: TLabel;
    LATPNF: TLabel;
    DEDTNF: TdxDateEdit;
    CECDNF: TdxCurrencyEdit;
    GBPK: TGroupBox;
    LACDPK: TLabel;
    LATPPK: TLabel;
    DEDTPK: TdxDateEdit;
    PNLProdutos: TPanel;
    GBPesquisa: TGroupBox;
    LAQuantidade: TLabel;
    LAPeca: TLabel;
    IECampo: TdxImageEdit;
    PNLAmostra: TPanel;
    PCAmostra: TdxPageControl;
    TSIMG_PAD: TdxTabSheet;
    PNLIMG_PAD: TPanel;
    IMG_PAD: TImage;
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
    GBEstoque: TGroupBox;
    IECOL_ID: TdxImageEdit;
    LACOL_ID: TLabel;
    CECF_VPRC_PAD: TdxCurrencyEdit;
    CF_LAVPRC_PAD: TLabel;
    IECF_VPRC_PAD_ORI: TdxImageEdit;
    PNLTOPME: TPanel;
    GBRomaneio: TGroupBox;
    LACDRO: TLabel;
    LACTNR: TLabel;
    LACDTP: TLabel;
    LALote: TLabel;
    IECDOP: TdxImageEdit;
    IECDTP: TdxImageEdit;
    PELote: TdxPickEdit;
    CECDRO: TdxCurrencyEdit;
    PNLINFADCAD: TPanel;
    GBINFADCAD: TGroupBox;
    EMINFADCAD: TdxMemo;
    IEMapa: TdxImageEdit;
    LAMapa: TLabel;
    Label5: TLabel;
    IECDDF: TdxImageEdit;
    LADTNF: TLabel;
    LADTPK: TLabel;
    LAVPRC_PAD: TLabel;
    IEVPRC_PAD_ORI: TdxImageEdit;
    CEVPRC_PAD: TdxCurrencyEdit;
    DBGConsultaMAPA: TdxDBGridMaskColumn;
    DBGConsultaNFCI: TdxDBGridMaskColumn;
    DBGConsultaINFADCAD: TdxDBGridBlobColumn;
    IECTNR: TdxImageEdit;
    SBRodape: TdxStatusBar;
    EdicaoID: TLargeintField;
    EdicaoIDEP: TSmallintField;
    EdicaoIDCA: TSmallintField;
    EdicaoITEM: TIntegerField;
    EdicaoCDET: TLargeintField;
    EdicaoMAPA: TIBStringField;
    EdicaoEST_CDTP: TSmallintField;
    EdicaoEST_DETP: TIBStringField;
    EdicaoIDCP: TIntegerField;
    EdicaoSKU: TIBStringField;
    EdicaoCEAN: TIBStringField;
    EdicaoDECP: TIBStringField;
    EdicaoDGCP: TIBStringField;
    EdicaoUCOM: TIBStringField;
    EdicaoUCON: TIBStringField;
    EdicaoUPSBR: TIBBCDField;
    EdicaoUPSLQ: TIBBCDField;
    EdicaoEST_QTDE: TIBBCDField;
    EdicaoEST_QTRL: TIntegerField;
    EdicaoQTRL: TIntegerField;
    EdicaoPSBR: TIBBCDField;
    EdicaoPSLQ: TIBBCDField;
    EdicaoVPRC_PAD_INI: TFloatField;
    EdicaoVPRC_PAD_FIM: TFloatField;
    EdicaoVPRC_PAD: TFloatField;
    EdicaoVPRC_COM: TFloatField;
    EdicaoNCM: TIBStringField;
    EdicaoORIG: TSmallintField;
    EdicaoPIPI: TIBBCDField;
    EdicaoVIPI: TIBBCDField;
    EdicaoNFCI: TIBStringField;
    EdicaoIDEV: TLargeintField;
    EdicaoCDEV: TSmallintField;
    EdicaoIP: TIBStringField;
    EdicaoHOST: TIBStringField;
    EdicaoFLAG: TSmallintField;
    EdicaoEST_IDDF: TSmallintField;
    EdicaoEST_CDDF: TSmallintField;
    EdicaoEST_DEDF: TIBStringField;
    EdicaoCP_IDEP: TSmallintField;
    EdicaoIDAK: TLargeintField;
    EdicaoVPRC_PAD_ORI: TIBStringField;
    EdicaoCF_VPRC_PAD_ORI: TIBStringField;
    EdicaoCF_VPRC_PAD: TFloatField;
    EdicaoCF_VPRC_COM: TFloatField;
    CTNR: TIBQuery;
    PEDEPK: TdxPickEdit;
    TCTNR: TIBTransaction;
    DBGConsultaEST_CDDF: TdxDBGridMaskColumn;
    EdicaoEST_RETP: TIBStringField;
    SIMEtiquetaReduzida: TSpeedItem;
    SQLEvent: TIBSQL;
    EdicaoUQTMD: TIBBCDField;
    EdicaoARTIGO: TIBStringField;
    EdicaoUCDBE: TIBStringField;
    DBGConsultaARTIGO: TdxDBGridMaskColumn;
    DBGConsultaCOL_NO: TdxDBGridMaskColumn;
    GroupBox1: TGroupBox;
    LAEPE_QTDE: TLabel;
    LAEPV_QTDE: TLabel;
    LAESP_QTDE: TLabel;
    CEEPE_QTDE: TdxCurrencyEdit;
    CEEPV_QTDE: TdxCurrencyEdit;
    CEESP_QTDE: TdxCurrencyEdit;
    DBGConsultaEST_CDTP: TdxDBGridMaskColumn;
    EdicaoCMP_PAD: TIBStringField;
    EdicaoLOTE: TIBStringField;
    DBGConsultaLOTE: TdxDBGridMaskColumn;
    PNLProduto: TPanel;
    PETexto: TdxPickEdit;
    CEQTDE: TdxCurrencyEdit;
    CEQTRL: TdxCurrencyEdit;
    LADGCP: TLabel;
    EdicaoCOL_ID: TSmallintField;
    EdicaoQTDE: TIBBCDField;
    EdicaoINFADCAD: TMemoField;
    EdicaoMAPA_ID: TSmallintField;
    EdicaoD_INFADCAD: TIBStringField;
    PNLD_CAD_PRO: TPanel;
    PNLD_DECP: TPanel;
    PNLD_INFADCAD: TPanel;
    DBGConsultaPSBR: TdxDBGridMaskColumn;
    DBGConsultaPSLQ: TdxDBGridMaskColumn;
    DBGConsultaCOL_ID: TdxDBGridMaskColumn;
    EdicaoIDPK: TSmallintField;
    EdicaoDTPK: TDateTimeField;
    EdicaoCDPK: TLargeintField;
    EdicaoDEPK: TIBStringField;
    EdicaoTPPK: TSmallintField;
    EdicaoIDNF: TSmallintField;
    EdicaoDTNF: TDateTimeField;
    EdicaoCDNF: TLargeintField;
    EdicaoTPNF: TSmallintField;
    EdicaoFINNFE: TSmallintField;
    EdicaoCFOP: TIBStringField;
    CTNRID: TLargeintField;
    CTNRIDEP: TSmallintField;
    CTNRDEEP: TIBStringField;
    CTNRCDST: TSmallintField;
    CTNRREST: TIBStringField;
    CTNRDEST: TIBStringField;
    CTNREST_CDTP: TSmallintField;
    CTNRIDPK: TSmallintField;
    CTNRDTPK: TDateField;
    CTNRCDPK: TLargeintField;
    CTNRDEPK: TIBStringField;
    CTNRD_DEPK: TIBStringField;
    CTNRTPPK: TSmallintField;
    CTNRCTNR: TIBStringField;
    CTNRD_CTNR: TIBStringField;
    CTNRCTNR_PSBR: TIBBCDField;
    CTNRCTNR_PSLQ: TIBBCDField;
    CTNRDTRC: TIBStringField;
    CTNRIDCD: TIntegerField;
    CTNRDECD: TIBStringField;
    CTNRIDCC: TSmallintField;
    CTNRDECC: TIBStringField;
    CTNRCDFK: TLargeintField;
    CTNRITEM: TIntegerField;
    CTNRIDCP: TIntegerField;
    CTNRCP_IDEP: TSmallintField;
    CTNRSKU: TIBStringField;
    CTNRDGCP: TIBStringField;
    CTNRQTSP: TIBBCDField;
    CTNRRLSP: TIntegerField;
    CTNRCF_VPRC_PAD_ORI: TIBStringField;
    CTNRCF_VPRC_PAD: TFloatField;
    CTNRVPRC_PAD_ORI: TIBStringField;
    CTNRVPRC_PAD: TFloatField;
    CTNRCOL_ID: TSmallintField;
    LAD_CTNR_PSBR: TLabel;
    LAD_CTNR_PSLQ: TLabel;
    EDNF_DECD: TdxEdit;
    EDPK_DECD: TdxEdit;
    LAPED_PSBR: TLabel;
    LAPED_PSLQ: TLabel;
    CTNRPSBR: TIBBCDField;
    CTNRPSLQ: TIBBCDField;
    EdicaoCOL_NO: TIBStringField;
    CTNRCOL_NO: TIBStringField;
    TCAD_PRO_CDN: TIBTransaction;
    CAD_PRO_IMG_CDN: TIBQuery;
    DTSCAD_PRO_IMG_CDN: TDataSource;
    EDIMG_PAD: TdxEdit;
    CAD_PRO_IMG_CDNIMG_ID: TLargeintField;
    CAD_PRO_IMG_CDNIMG_NO: TIBStringField;
    CAD_PRO_IMG_CDNIMG_PAD: TBlobField;
    CAD_PRO_IMG_CDNPDF_NO: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP1: TBlobField;
    CAD_PRO_IMG_CDNILA_INS1: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS1: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP2: TBlobField;
    CAD_PRO_IMG_CDNILA_INS2: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS2: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP3: TBlobField;
    CAD_PRO_IMG_CDNILA_INS3: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS3: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP4: TBlobField;
    CAD_PRO_IMG_CDNILA_INS4: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS4: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP5: TBlobField;
    CAD_PRO_IMG_CDNILA_INS5: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS5: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP6: TBlobField;
    CAD_PRO_IMG_CDNILA_INS6: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS6: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP7: TBlobField;
    CAD_PRO_IMG_CDNILA_INS7: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS7: TIBStringField;
    CAD_PRO_IMG_CDNILA_BMP8: TBlobField;
    CAD_PRO_IMG_CDNILA_INS8: TIBStringField;
    CAD_PRO_IMG_CDND_ILA_INS8: TIBStringField;
    EdicaoCTNR: TIBStringField;
    DBGConsultaCTNR: TdxDBGridMaskColumn;
    SQLFKConsulta: TIBSQL;
    TENT_DEV: TIBTransaction;
    CTNRUQTDE: TIBBCDField;
    LACDI: TLabel;
    EDDECV: TdxEdit;
    LADECV: TLabel;
    EDPedido: TdxEdit;
    LAPedido: TLabel;
    LAD_CTNR: TLabel;
    LACTNR_PSLQ: TLabel;
    LACTNR_PSBR: TLabel;
    CKCDI: TdxCheckEdit;
    SQLPKConsulta: TIBSQL;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
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
    ACTEveRegister: TAction;
    ACTEveExecute: TAction;
    ACTEveExpress: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure SIDeleteClick(Sender: TObject);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SIMSalvaClick(Sender: TObject);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure IECDOPChange(Sender: TObject);
    procedure EDTotalPKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
    procedure SIMNovoClick(Sender: TObject);
    procedure SIMRelatoriosClick(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
    procedure IECDTPChange(Sender: TObject);
    procedure PELoteChange(Sender: TObject);
    procedure PEDENFChange(Sender: TObject);
    procedure DEDTNFValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure SIMEtiquetaPadraoClick(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure CECDNFValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure EdicaoBeforeEdit(DataSet: TDataSet);
    procedure LATPNFClick(Sender: TObject);
    procedure SIPostClick(Sender: TObject);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGConsultaEST_DETPValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure DBGConsultaEST_DEDFValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure SICancelClick(Sender: TObject);
    procedure LATPPKClick(Sender: TObject);
    procedure IECTNRChange(Sender: TObject);
    procedure IECDDFChange(Sender: TObject);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure IEMapaChange(Sender: TObject);
    procedure PEDEPKValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure PEDEPKChange(Sender: TObject);
    procedure PEDEPKKeyPress(Sender: TObject; var Key: Char);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure IECOL_IDKeyPress(Sender: TObject; var Key: Char);
    procedure IECOL_IDChange(Sender: TObject);
    procedure CKCDIChange(Sender: TObject);
    procedure SIMEtiquetaReduzidaClick(Sender: TObject);
    procedure CTNRAfterOpen(DataSet: TDataSet);
    procedure CEEPE_QTDEChange(Sender: TObject);
    procedure CEQTDEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject; Field: TField);
    procedure EdicaoAfterScroll(DataSet: TDataSet);
    procedure IECDIChange(Sender: TObject);
    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTEveExpressExecute(Sender: TObject);
    procedure PETextoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    REC_SHE_DEF  : TREC_SHE_DEF;
    REC_SHE_EDI  : TREC_SHE_EDI;
    RECRelatorios: TRECRelatorios;
    RECEdicao    : TRECEdicao;
    RECFKEdicao  : TRECEdicao;

    { Private declarations }
  public
    procedure _CAD_PRO_PSQ(AValue: TdxCurrencyEdit);
    procedure _Checkout;
    procedure _CheckConstraints;
    procedure _Edit;
    procedure _Edited;
    procedure _ENT_DEV_INT;

    function _Lote(ADETP: String): String;
    { Public declarations }
  end;

var
  frment_pro: Tfrment_pro;

implementation

uses uPrincipal, bPrincipal,
  qEST_ENT_ROM, qEST_ETQ_PAD, qEST_ETQ_PEQ;

{$R *.dfm}

procedure Tfrment_pro.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;

  oIRECEdicao(RECEdicao  );
  oIRECEdicao(RECFKEdicao);

  oIREC_SHE_DEF(REC_SHE_DEF);
  REC_SHE_DEF.EP_ID    := RECParametros.EP_ID;

  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_EST'; { Eventos }
  REC_SHE_DEF.FB_TB_PK := 'CAD_PRO_ENI'; { Tabelas }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Estoque';
  REC_SHE_DEF.GReferencia := 'Produtos';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  oUSER(REC_SHE_DEF);

  try
    oOTransact(TConsulta,ltRead_Only);
    CTNR.Open;
    
    with SQLConsulta do
    begin
      { Tipo de Pesquisa }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.DESCRICAO,PK.REFERENCIA FROM TAB_TPO_EST AS PK WHERE PK.CDST = 30 AND PK.EST_PSQ = 1 ORDER BY PK.ID');
      ExecQuery;
      while not eof do
      begin
        IECampo.Values.Add(Current.Vars[1].AsString);
        IECampo.Descriptions.Add(Current.Vars[0].AsString);
        next;
      end;
    
      { Tipo de Operação }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_EST AS PK WHERE PK.CDST = 30 AND PK.EST_CDOP = 1 ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IECDOP.Values.Add(Current.Vars[0].AsString);
        IECDOP.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;

      { Tipo de Estoque }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_EST AS PK WHERE PK.CDST = 30 AND PK.EST_CDTP = 1 ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IECDTP.Values.Add(Current.Vars[0].AsString);
        IECDTP.Descriptions.Add(Current.Vars[1].AsString);

        DBGConsultaEST_DETP.Items.Add(Current.Vars[1].AsString);
        next;
      end;

      { Tipos de Defeitos }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_DEF AS PK WHERE PK.CDST = 30 ORDER BY PK.DESCRICAO');
      ExecQuery;
      while not eof do
      begin
        IECDDF.Values.Add(Current.Vars[0].AsString);
        IECDDF.Descriptions.Add(Current.Vars[1].AsString);

        DBGConsultaEST_DEDF.Items.Add(Current.Vars[1].AsString);
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
        IECTNR.Values.Add(Current.Vars[0].AsString);
        IECTNR.Descriptions.Add(Current.Vars[0].AsString);
        next;
      end;

      { Coleções }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_COL AS PK WHERE PK.CDST = 30 ORDER BY PK.ID DESC');
      ExecQuery;
      while not eof do
      begin
        IECOL_ID.Values.Add(Current.Vars[0].AsString);
        IECOL_ID.Descriptions.Add(Current.Vars[1].AsString);
        next;
      end;
    end;

    { Padrões do Sistema }
    CKCDI.Enabled := (not RECParametros.EMP_CDI); { CDI }
    DBGConsultaQTRL.Visible := RECParametros.EST_QTRL; { Rolos }

    IECDOP.Text := RECParametros.EST_IDOPERACAO; { Operação }
    _Edit;
  finally
    oCTransact(TConsulta,ltRead_Only_Release_Commit);
  end;
end;

procedure Tfrment_pro.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure Tfrment_pro.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  { EVENTOS }
  ACTEveRegister.Execute; { Registro }

  Screen.Cursor := crDefault;
  oUnLockWindowUpdate; { Desbloqueia Tela }
  Tag := 0;
end;

procedure Tfrment_pro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Edicao.State in [dsEdit,dsInsert] then
     if not oEmpty(EdicaoQTDE.AsFloat) then Edicao.Post else Edicao.Cancel;

  if SIMSalva.Enabled then
     case MessageBox(handle,'Existem Alterações Pendentes !'+#13+
                            'Deseja Salvar ?',
                            PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of
          MRCancel: Abort;
          MRNo    : SIMSalva.Enabled := False;
          MRYes   : try SIMSalva.Click;
                    finally if SIMSalva.Enabled then Abort;
                    end;
     end;
end;

procedure Tfrment_pro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  EEvent.UnRegisterEvents;

  Action := caFree;
end;

procedure Tfrment_pro.FormDestroy(Sender: TObject);
begin
  try
     Screen.Cursor := crAppStart;
     OnDestroy     := Nil;

     { Transação Principal }
     try
       oFTransact(TConsulta);
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                  'Error Code: '+E.Message+'.'      +#13+
                                   Caption+'.');
       end;
     end;

     { Eventos }
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

     { record e afins }
     try
       oFRECRelatorios(RECRelatorios);
       oFRECEdicao(RECEdicao);
       oFRECEdicao(RECFKEdicao);
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                  'Error Code: '+E.Message+'.'        +#13+
                                   Caption+'.');
       end;
     end;
  finally
    Screen.Cursor := crDefault;
    Frment_pro    := Nil;
  end;
end;

procedure Tfrment_pro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SIMSaida.Click;
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TDBMemo)   and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdbGrid)   and
                      not (ActiveControl is TMemo)) then
                      selectNext (ActiveControl, true, true);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TDBMemo)      and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TdbGrid)      and
                      not (ActiveControl is TMemo)) then
                      selectNext (ActiveControl, true, true);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TDBMemo)      and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdbGrid)      and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TMemo)) then
                      selectNext (ActiveControl, false, true);
       113      : if SIMNovo.Enabled  then SIMNovo.Click;
       121      : if SIMSalva.Enabled then SIMSalva.Click;
  end;
end;

procedure Tfrment_pro.FormPaint(Sender: TObject);
var
  S: TRect;
  H,
  T,
  B,
  L,
  R: Word;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,S);
    if Screen.Height > 768 then
    begin
      T := S.Top;
      B := S.Bottom;
      L := S.Left;
      R := S.Right;
      H := B;
    end else
    begin
      T := 0;
      B := Screen.Height;
      L := 0;
      R := S.Right;
      H := B - 20;
    end;

    if Position = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal ,T        ,0);
      Left   := IFThen(FormStyle = fsNormal ,L        ,0);
      Width  := IFThen(Position  = poDefault,R - L - 5,0);
      Height := IFThen(Position  = poDefault,H - 5    ,0);
    end else
    if Position = poDesigned then
       if HelpContext > 0 then
          Height := Trunc(H * 0.90);

       if FormStyle = fsNormal then
       begin
         Top  := (T  + (H - Height)) div 2;
         Left := ((R + L) - Width )  div 2;
       end else
       begin
         Top  := ( H - Height)      div 2;
         Left := ((R - L) - Width ) div 2;
       end;
  end;
end;

procedure Tfrment_pro.FormResize(Sender: TObject);
begin
  if frment_pro <> Nil then
  Paint;
end;

procedure Tfrment_pro.SIMSalvaClick(Sender: TObject);
begin
  if oYesNo(handle,'Salvar Etiquetas ?') = mrNo then
  begin
    SIMSalva.Enabled := False;
    Exit;
  end;

  _CheckConstraints;
  _Checkout;

  try
    oRTransact(TSEdicao,ltRead_Only);
    oOTransact(TEdicao);

    try
      with RECEdicao do
      begin
        { Inicializar Parâmetros: FLAG + campos de pesquisa (IDEP,IDPK,IDFK) }
        FLAG := 0;

        { Situação }
        CDST := IFThen(Pos(IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)],'ANTECIPADOTRÂNSITO') > 0,'72','30');
        REST := IFThen(Pos(IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)],'ANTECIPADOTRÂNSITO') > 0,'E' ,'A' );
        DEST := IFThen(Pos(IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)],'ANTECIPADOTRÂNSITO') > 0,'ESTOQUE NÃO GERADO','ATIVO');

        { Lançamentos }
        CTNR := IECTNR.Text;
        LOTE := PELote.Text;
        CDI  := RECEdicao.CDI;

        { Operação }
        CDOP := IECDOP.Text;
        REOP := IECDOP.HelpKeyword;
        DEOP := IECDOP.Descriptions[IECDOP.Values.IndexOf(IECDOP.Text)];

        { Tipo }
        CDTP := IECDTP.Text;

        { Informações Adicionais }
        INFADCAD := EMINFADCAD.Text;

        { Registro }
        IDEV := RECEdicao.IDG_EV;

        { Execute Procedure }
        ASPEdicao := SPEdicao;
        oSP_CAD_PRO_EST_RPK(RECEdicao);
      end;

         CECDRO.Value := SPEdicao.ParamByName('rID').AsInteger;
      if CECDRO.Value = 0 then
         Abort;
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil,'Falha ao tentar salvar cabeçalho !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;

    try
      oIREC_SHE_EDI(REC_SHE_EDI);
      REC_SHE_EDI.FB_SP      := SPEdicao;
      REC_SHE_EDI.FB_SP_NAME := 'SP_CAD_PRO_EST_RFK_NEW';

      while not Edicao.Eof do
      begin
        if   EdicaoFlag.AsInteger = 0 then
        with REC_SHE_EDI do
        begin
          AIDEP := RECParametros.EP_ID;
          AIDLG := RECUsuarios.ID;

          { Situação }
          ACDST := RECEdicao.CDST;
          AREST := RECEdicao.REST;
          ADEST := RECEdicao.DEST;

          { Romaneio }
          ACDRO := RECEdicao.CDRO;
          ADTRO := RECParametros.SHE_DATA;
          ACDI  := RECEdicao.CDI;

          { Etiqueta }
          ACDET := EdicaoCDET.AsInteger;
          ACTNR := IFThen(EdicaoCTNR.AsString = EmptyStr,IECTNR.Text,EdicaoCTNR.AsString);
          ALOTE := EdicaoLote.AsString;
          AMAPA := EdicaoMapa.AsString;

          { Processos }
          ACDTP := EdicaoEST_CDTP.AsInteger;
          ACDOP := RECEdicao.CDOP;
          AREOP := RECEdicao.REOP;

          { Itens }
          AIDFK := 0;
          AITEM := EdicaoITEM.AsInteger;

          { Produtos }
          AIDCP    := EdicaoIDCP.AsInteger;
          AIDAK    := EdicaoIDAK.AsInteger;
          ACP_IDEP := EdicaoCP_IDEP.AsInteger;

          { Lançamento }
          AQTDE := EdicaoQTDE.AsCurrency;
          AQTRL := EdicaoQTRL.AsInteger;

          { Custo }
          ACF_VPRC_PAD_ORI := EdicaoCF_VPRC_PAD_ORI.AsString;
          ACF_VPRC_COM     := EdicaoCF_VPRC_PAD.AsFloat;

          { Classificações }
          ACOL_ID := EdicaoCOL_ID.AsInteger; { Coleção - Compras }
          ANFCI   := EdicaoNFCI.AsString; { Ficha de Conteúdo de Importação }

          { Defeitos }
          AIDDF := RECUsuarios.ID;
          ACDDF := EdicaoEST_CDDF.AsInteger;

          { Informações Adicionais }
          AINFADCAD := EdicaoINFADCAD.AsString;

          { Registros }
          FB_IDEV := RECEdicao.IDG_EV;

          { Execute Procedure }
          oSP_CAD_PRO_EST_RFK(REC_SHE_EDI);
        end;

        { Zerar }
        if (RECParametros.EST_QTRL) and (IECampo.Text = 'Zerar') then
            with SQLEdicao do
            begin
              Close;
              SQL.Clear;
              SQL.Add('DELETE FROM CAD_PRO_EST');
              SQL.Add('WHERE  IDEP = ''' + RECParametros.EP_ID    + '''');
              SQL.Add('AND    IDCP = ''' + EdicaoIDCP.AsString + '''');
              SQL.Add('AND    REOP = ''E''');
              SQL.Add('AND    IDPK = 0');
              ExecQuery;
            end;

        Edicao.Next;
      end;

      oCTransact(TEdicao);
      oAviso(handle,IFThen(Pos(IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)],'ANTECIPADOTRÂNSITO') > 0,'Etiquetas de Códigos de Barras (EAN13) Salvas com Sucesso !',
                    IFThen(IECampo.Text = 'Zerar','Estoque Zerado com Sucesso !','Estoque Gerado com Sucesso !')));
    except
      on E: Exception do
      begin
        oCTransact(TEdicao,ltRollback);
        oException(Nil,'Falha ao tentar salvar etiquetas !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    oRTransact(TSEdicao,ltRead_Only_Release_Commit);
  end;

  SIMSalva.Enabled            := False;
  SIMImporta.Enabled          := False;
  SIMEtiquetaPadrao.Enabled   := True;
  SIMEtiquetaReduzida.Enabled := True;
  SIMRelatorios.Enabled       := True;

  { EVENTO }
  ACTEveExecute.Execute; { Executa }

  { ATUALIZA ESTOQUE }
  uCAD_PRO_EST_LAN_UPD(REC_SHE_DEF.FB_TB_PK,
                       RECParametros.EP_ID ,
                       CECDRO.Text,

                       'EP_ID',
                       'CDRO' ,
                       'CP_ID');
end;

procedure Tfrment_pro.SIMNovoClick(Sender: TObject);
begin
  if Edicao.State in [dsEdit,dsInsert] then
     if not oEmpty(EdicaoQTDE.AsFloat) then Edicao.Post else Edicao.Cancel;

      Edicao.First;
  if (Edicao.RecNo > 0) and (SIMSalva.Enabled) then
      try
        SIMSalva.Click;
      finally
        if SIMSalva.Enabled then
           Abort;
      end;

  _Edit;    
end;

procedure Tfrment_pro.SIMEtiquetaPadraoClick(Sender: TObject);
begin
  if CECDRO.Value = 0 then
     oException(Nil,'Romaneio não Gerado !');

  if oYesNo(handle,'Emissão de Etiqueta Padrão' +#13+
                   'Confirma ?') = mrNo then
     Abort;

  if Assigned(qrpEST_ETQ_PAD) then qrpEST_ETQ_PAD.BringToFront else
  begin
    oIRECRelatorios(RECRelatorios);
    
    RECRelatorios.Titulo := 'Etiquetas de Estoque';
    RECRelatorios.Tipo   := IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)];

    RECRelatorios.PrintTAG := 1;
    RECRelatorios.Handle   := Self.Handle;

    RECRelatorios.PEC1ConsultaText  := CECDRO.Text;
    RECRelatorios.IEC1ConsultaField := 'PK.CDRO';

    qrpEST_ETQ_PAD     := TqrpEST_ETQ_PAD.Create(Self,RECRelatorios);
    qrpEST_ETQ_PAD.Tag := 1;
    qrpEST_ETQ_PAD.WinControlFormCreate(qrpEST_ETQ_PAD);
  end;
end;

procedure Tfrment_pro.SIMEtiquetaReduzidaClick(Sender: TObject);
begin
  if CECDRO.Value = 0 then
     oException(Nil,'Romaneio não Gerado !');

  if oYesNo(handle,'Emissão de Etiqueta Reduzida' +#13+
                   'Confirma ?') = mrNo then
     Abort;

  if Assigned(qrpEST_ETQ_PEQ) then qrpEST_ETQ_PEQ.BringToFront else
  begin
    oIRECRelatorios(RECRelatorios);
    
    RECRelatorios.Titulo := 'Etiquetas de Estoque';
    RECRelatorios.Tipo   := IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)];;

    RECRelatorios.PrintTAG := 1;
    RECRelatorios.Handle   := Self.Handle;

    RECRelatorios.PEC1ConsultaText  := CECDRO.Text;
    RECRelatorios.IEC1ConsultaField := 'PK.CDRO';

    qrpEST_ETQ_PEQ     := TqrpEST_ETQ_PEQ.Create(Self,RECRelatorios);
    qrpEST_ETQ_PEQ.Tag := 2;
    qrpEST_ETQ_PEQ.WinControlFormCreate(qrpEST_ETQ_PEQ);
  end;
end;

procedure Tfrment_pro.SIMRelatoriosClick(Sender: TObject);
begin
  if CECDRO.Value = 0 then
     oException(Nil,'Romaneio não Gerado !');

  if oYesNo(handle,'Emissão de Romaneio' +#13+
                   'Confirma ?') = mrNo then
     Abort;

  if Assigned(qrpEST_ENT_ROM) then qrpEST_ENT_ROM.BringToFront else
  begin
    oIRECRelatorios(RECRelatorios);

    RECRelatorios.Titulo := 'Romaneio de estoque para simples conferência';
    RECRelatorios.Tipo   := IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)];

    RECRelatorios.IDEP := RECEdicao.IDEP;
    RECRelatorios.Id   := CECDRO.Text;

    RECRelatorios.PEC1ConsultaText  := CECDRO.Text;
    RECRelatorios.IEC1ConsultaField := 'PK.CDRO';

    RECRelatorios.PrintTAG := 1;
    RECRelatorios.Handle   := Self.Handle;

    qrpEST_ENT_ROM     := TqrpEST_ENT_ROM.Create(Self,RECRelatorios);
    qrpEST_ENT_ROM.Tag := 5;
    qrpEST_ENT_ROM.WinControlFormCreate(qrpEST_ENT_ROM);
  end;
end;

procedure Tfrment_pro.SIMSaidaClick(Sender: TObject);
begin
  ActiveControl := Nil;
  Close;
end;

procedure Tfrment_pro.SIDeleteClick(Sender: TObject);
begin
  if (Edicao.State = dsBrowse) and (EdicaoId.AsInteger > 0) then
      Edicao.Delete;
end;

procedure Tfrment_pro.SIPostClick(Sender: TObject);
begin
  if Edicao.State in [dsEdit,dsInsert] then
     Edicao.Post;
end;

procedure Tfrment_pro.SICancelClick(Sender: TObject);
begin
  if Edicao.State in [dsEdit,dsInsert] then
     Edicao.Cancel;
end;

procedure Tfrment_pro.CTNRAfterOpen(DataSet: TDataSet);
begin
  IECTNR.Tag := CTNR.RecNo;

  DEDTPK.Clear;
  DEDTPK.Refresh;

  PEDEPK.Text := EmptyStr;
  PEDEPK.Items.Clear;
  PEDEPK.Refresh;

  EDPK_DECD.Text := EmptyStr;
  EDPK_DECD.Refresh;

  LAD_CTNR.Caption      := EmptyStr;
  LAD_CTNR.Refresh;
  LAD_CTNR_PSBR.Caption := EmptyStr;
  LAD_CTNR_PSBR.Refresh;
  LAD_CTNR_PSLQ.Caption := EmptyStr;
  LAD_CTNR_PSLQ.Refresh;

  LAD_CTNR.Caption := IFThen(CTNR.RecNo = 0,EmptyStr,CTNRD_CTNR.AsString);
  LAD_CTNR.Refresh;

  LACTNR_PSBR.Visible   := (CTNR.RecNo > 0);
  LAD_CTNR_PSBR.Caption := IFThen(CTNR.RecNo = 0,EmptyStr,FormatFloat(',##,0.000 KG',CTNRCTNR_PSBR.AsFloat));
  LACTNR_PSBR.Refresh;
  LAD_CTNR_PSBR.Refresh;

  LACTNR_PSLQ.Visible   := (CTNR.RecNo > 0);
  LAD_CTNR_PSLQ.Caption := IFThen(CTNR.RecNo = 0,EmptyStr,FormatFloat(',##,0.000 KG',CTNRCTNR_PSLQ.AsFloat));
  LACTNR_PSLQ.Refresh;
  LAD_CTNR_PSLQ.Refresh;

  while not CTNR.Eof do
  begin
    if  (CTNRIDEP.AsInteger =  RECParametros.EP_ID) or
       ((CTNRIDEP.AsInteger <> RECParametros.EP_ID) and (CTNRIDEP.AsInteger <> 4) and (CTNRIDEP.AsInteger <> 9)) then
    begin
      if PEDEPK.Items.IndexOf(CTNRD_DEPK.AsString) < 0 then
      begin
        PEDEPK.Items.Add(CTNRD_DEPK.AsString);
        IECTNR.Tag := CTNR.RecNo;
        IECTNR.Refresh;
      end;
    end;  
    CTNR.Next;
  end;

  if CTNR.RecNo = 1 then
  begin
    PEDEPK.Text := CTNRD_DEPK.AsString;
    PEDEPK.Refresh;
  end;

  CTNR.First;
end;

procedure Tfrment_pro.EdicaoAfterOpen(DataSet: TDataSet);
begin
  EdicaoId.Tag := 0;
  if CAD_PRO_IMG_CDN.State  = dsInactive then
     CAD_PRO_IMG_CDN.Open;

  DBGConsultaQTDE.Field.FocusControl;
end;

procedure Tfrment_pro.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  if CECDRO.Value <> 0 then
     DataBaseError('Romaneio já Gerado !');

  EdicaoId.Tag := EdicaoId.AsInteger;
end;

procedure Tfrment_pro.EdicaoNewRecord(DataSet: TDataSet);
begin
  { Padrão }
  EdicaoID.Value   := 0;
  EdicaoIDEV.Value := RECEdicao.IDG_EV;
  EdicaoCDEV.Value := 8;

  if EdicaoITEM.Tag > 0 then
     EdicaoITEM.Value := EdicaoITEM.Tag + 1 else
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(PK.ITEM) FROM TAB_EDI_PRO AS PK');
    SQL.Add('WHERE  PK.IDEV = ''' + RECEdicao.IDG_EV + '''');
    SQL.Add('AND    PK.CDEV = 8');
    SQL.Add('AND    PK.FLAG = 0');
    ExecQuery;
    EdicaoITEM.Value := Current.Vars[0].AsInteger + 1;
  end;
  EdicaoITEM.Tag := EdicaoITEM.AsInteger;

  EdicaoIP.Value   := RECParametros.IP;
  EdicaoHOST.Value := RECParametros.HOST;
  EdicaoFLAG.Value := 0;

  { Emitente ou Destinatário }
  EdicaoIDPK.Value   := RECEdicao.IDPK;
  EdicaoCDPK.Value   := RECEdicao.CDPK;
  EdicaoTPPK.Value   := RECEdicao.TPPK;
  EdicaoIDNF.Value   := RECEdicao.IDNF;
  EdicaoCDNF.Value   := RECEdicao.CDNF;
  EdicaoTPNF.Value   := RECEdicao.TPNF;
  EdicaoFINNFE.Value := RECEdicao.FINNFE;

  { Tipos de Estoque }
  EdicaoEST_CDTP.Value := StrToInt(IECDTP.Text);
  EdicaoEST_RETP.Value := IFThen(Pos(IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)],'ANTECIPADOTRÂNSITO') > 0,'E','A');
  EdicaoEST_DETP.Value := IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)];
  EdicaoLOTE.Value     := PELote.Text;

  { Tipo de Defeito }
  EdicaoEST_CDDF.Value := StrToInt(IECDDF.Text);
  EdicaoEST_DEDF.Value := IECDDF.Descriptions[IECDDF.Values.IndexOf(IECDDF.Text)];

  { Local de Armazanagem }
  EdicaoMAPA.Value := IEMAPA.Descriptions[IEMAPA.Values.IndexOf(IEMAPA.Text)];
end;

procedure Tfrment_pro.EdicaoBeforeEdit(DataSet: TDataSet);
begin
  if CECDRO.Value <> 0 then
     DataBaseError('Romaneio já Gerado !');
end;

procedure Tfrment_pro.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(handle,'Excluir Item ?') = mrNo then
     Abort;
end;

procedure Tfrment_pro.EdicaoAfterDelete(DataSet: TDataSet);
begin
  oRefresh(Edicao);
  _Edited;
end;

procedure Tfrment_pro.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if EdicaoId.Tag = 0 then
  begin
    Edicao.Close;
    Edicao.Open;
    ABORT;
  end;
end;

procedure Tfrment_pro.EdicaoBeforePost(DataSet: TDataSet);
begin
  if EdicaoEST_DETP.AsString = EmptyStr then
     DataBaseError('Tipo de Estoque não Informado !');

  if  (IECampo.Text = 'Etiquetas') and (EdicaoID.AsInteger > 0) then
      with SQLSEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM TAB_EDI_PRO');
        SQL.Add('WHERE  IDEV = ''' + RECEdicao.IDG_EV    + '''');
        SQL.Add('AND    CDEV = ''' + EdicaoCDEV.AsString + '''');
        SQL.Add('AND    CDET = ''' + EdicaoCDET.AsString + '''');
        SQL.Add('AND    ID  <> ''' + EdicaoID.AsString   + '''');
        ExecQuery;
        if Current.Vars[0].AsInteger > 0 then
           DataBaseError('Número de etiqueta já utilizado !');
      end;

  if IECampo.Text = 'Zerar' then
     EdicaoCDET.Value := 9999999999 else

  if EdicaoCDET.AsString = EmptyStr then
     with SQLConsulta do
     begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT GEN_ID(ID_NO_PRO_CDET,1) FROM RDB$DATABASE');
       ExecQuery;
       EdicaoCDET.Value := Current.Vars[0].AsInt64;
     end;

  if (IECampo.Text = 'Produtos') or (IECampo.Text = 'Artigos') then
      EdicaoQTRL.Value    := bRET_PECA(EdicaoQTDE.AsCurrency,EdicaoUQTMD.AsCurrency);
  if  EdicaoQTRL.AsInteger = 0 then EdicaoQTRL.Value := 1;

  EdicaoPSBR.Value := EdicaoQTDE.AsFloat * EdicaoUPSBR.AsFloat;
  EdicaoPSLQ.Value := EdicaoQTDE.AsFloat * EdicaoUPSLQ.AsFloat;
end;

procedure Tfrment_pro.EdicaoAfterPost(DataSet: TDataSet);
begin
  if not ALockWindowUpdate then
  begin
    oRefresh(Edicao);
    _Edited;
  end;  
end;

procedure Tfrment_pro.EdicaoAfterScroll(DataSet: TDataSet);
begin
  if EdicaoCTNR.AsString <> EmptyStr then DBGConsultaCTNR.Visible := True;
end;

procedure Tfrment_pro.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  if not ALockWindowUpdate then
  begin
    if not (Edicao.State in [dsInsert,dsEdit]) then
    begin
       { Grid }
       DBGConsulta.ApplyBestFit(DBGConsultaMAPA    );
       DBGConsulta.ApplyBestFit(DBGConsultaSKU     );
       DBGConsulta.ApplyBestFit(DBGConsultaDGCP    );
       DBGConsulta.ApplyBestFit(DBGConsultaCOL_NO  );
       DBGConsulta.ApplyBestFit(DBGConsultaNFCI    );
       DBGConsulta.ApplyBestFit(DBGConsultaEST_DEDF);
    end;

    { Painel Produtos }
    PNLD_DECP.Caption     := EdicaoDECP.AsString;
    PNLD_INFADCAD.Caption := EdicaoD_INFADCAD.AsString;
  end;
end;

procedure Tfrment_pro.DTSCAD_PRO_IMG_CDNDataChange(Sender: TObject;
  Field: TField);
begin
  if not ALockWindowUpdate then
  begin
    EDIMG_PAD.Text  := _oLoadJPG(CAD_PRO_IMG_CDNIMG_ID,CAD_PRO_IMG_CDNIMG_PAD,IMG_PAD);

    DBILA_BMP1.Hint := CAD_PRO_IMG_CDND_ILA_INS1.AsString;
    DBILA_BMP2.Hint := CAD_PRO_IMG_CDND_ILA_INS2.AsString;
    DBILA_BMP3.Hint := CAD_PRO_IMG_CDND_ILA_INS3.AsString;
    DBILA_BMP4.Hint := CAD_PRO_IMG_CDND_ILA_INS4.AsString;
    DBILA_BMP5.Hint := CAD_PRO_IMG_CDND_ILA_INS5.AsString;
    DBILA_BMP6.Hint := CAD_PRO_IMG_CDND_ILA_INS6.AsString;
    DBILA_BMP7.Hint := CAD_PRO_IMG_CDND_ILA_INS7.AsString;
    DBILA_BMP8.Hint := CAD_PRO_IMG_CDND_ILA_INS8.AsString;

    BILA_BMP1.Hint  := DBILA_BMP1.Hint;
    BILA_BMP2.Hint  := DBILA_BMP2.Hint;
    BILA_BMP3.Hint  := DBILA_BMP3.Hint;
    BILA_BMP4.Hint  := DBILA_BMP4.Hint;
    BILA_BMP5.Hint  := DBILA_BMP5.Hint;
    BILA_BMP6.Hint  := DBILA_BMP6.Hint;
    BILA_BMP7.Hint  := DBILA_BMP7.Hint;
    BILA_BMP8.Hint  := DBILA_BMP8.Hint;
  end;  
end;

procedure Tfrment_pro.DTSEdicaoStateChange(Sender: TObject);
begin
  if not ALockWindowUpdate then
  begin
    SIDelete.Enabled := (Edicao.State = dsBrowse) and (EdicaoId.AsInteger > 0);
    SIPost.Enabled   := (Edicao.State in [dsInsert,dsEdit]);
    SICancel.Enabled := (Edicao.State in [dsInsert,dsEdit]);
  end;
end;

procedure Tfrment_pro.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaEST_CDDF.Index] > 0 then
    begin
      AColor      := clRed;
      AFont.Color := clWhite;
    end;

    if (AColumn = DBGConsultaQTDE) or (AColumn = DBGConsultaCTNR) then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
      AFont.Style := [fsBold];
    end;

    if (AColumn = DBGConsultaITEM) or (AColumn = DBGConsultaARTIGO) then
        AFont.Style := [fsBold];

    if (AColumn = DBGConsultaEST_DETP) and (ANode.Values[DBGConsultaEST_CDTP.Index] <> IECDTP.Text) then
        AFont.Style := [fsBold];
  end;
end;

procedure Tfrment_pro.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_DELETE: SIDelete.Click;
    vk_return: if (Edicao.State = dsEdit) and (DBGConsulta.FocusedField.FieldName = 'QTDE') and (EdicaoQTDE.AsFloat > 0) then
                   Edicao.Next;
    VK_ESCAPE: SICancel.Click;
  end;
end;

procedure Tfrment_pro.IECDOPChange(Sender: TObject);
begin
  _Edited; { Edição }
  SIMImporta.Enabled := True; { Importa }

  { Pesquisa }
  IECampo.Text    := 'Produtos / Peças';
  IECampo.Enabled := True;

  { Tipo Estoque }
  IECDTP.Enabled := True;
  IECDTP.Text    := RECParametros.EST_IDTIPO; { Tipo }

  { Container }
  IECTNR.Enabled := False;
  IECTNR.Text    := EmptyStr;
  IECTNR.Tag     := 0;
  LATPPK.Tag     := 2;

  GBNF.Enabled := False; { Nota Fiscal }
  GBPK.Enabled := False; { Pedido }

  { Quantidades }
  DBGConsultaQTDE.DisableEditor := False;
  DBGConsultaQTRL.DisableEditor := False;

  { Operação }
  if IECDOP.Text = '110' then { Zerar }
  begin
    { Quantidades }
    DBGConsultaQTDE.DisableEditor := True;
    DBGConsultaQTRL.DisableEditor := True;

    { Pesquisa }
    IECampo.Text    := 'Zerar';
    IECampo.Enabled :=  False;
  end else

  if IECDOP.Text = '42' then { Container }
  begin
    IECampo.Text    := 'Container';
    IECampo.Enabled :=  False;

    SIMImporta.Enabled := False;
    IECTNR.Enabled     := True;

    IECDTP.Text    := '11';
    IECDTP.Enabled := False;

    GBNF.Enabled := False;
    GBPK.Enabled := True;
  end else

  if Pos(IECDOP.Text,'237238') > 0 then { Etiquetas }
  begin
    IECampo.Text := 'Etiquetas';

    LATPNF.Tag     := 1;
    LATPNF.Caption := 'Nossa NF';

    GBNF.Enabled := True;
    GBPK.Enabled := True;
  end else

  if Pos(IECDOP.Text,'4145132') > 0 then { Clientes \ Fornecedores \ Matéria Prima }
  begin
    GBNF.Enabled := True;
    GBPK.Enabled := True;
  end;

  { Evento }
  if Edicao.RecNo > 0 then
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('DELETE FROM TAB_EDI_PRO');
       SQL.Add('WHERE  IDEV = ''' + RECEdicao.IDG_EV + '''');
       SQL.Add('AND    CDEV = 8');
       ExecQuery;
       oRTransact(TSEdicao);
     end;

  { Nota Fiscal }
  CECDNF.Enabled := GBNF.Enabled;
  LATPNF.Enabled := GBNF.Enabled;
  LACDNF.Enabled := GBNF.Enabled;
  LADTNF.Enabled := GBNF.Enabled;

  { Pedido }
  PEDEPK.Enabled := GBPK.Enabled;
  LATPPK.Enabled := GBPK.Enabled;
  LACDPK.Enabled := GBPK.Enabled;
  LADTPK.Enabled := GBPK.Enabled;

  CKCDIChange (Self); { Indicativo CDI }
  LATPPKClick (Self); { Tipos de emitentes, destinatários, pedidos }
  IECTNRChange(Self); { Containers }

  { Acessos }
  if not (REC_SHE_DEF.GControl) and (IECDOP.Text <> '237') and (IECDOP.Text <> '238') then
  begin
    IECDTP.Enabled := False;
    IECDTP.Text    := '99';
    PELOTE.Text    := 'S';
    PELOTE.Enabled := False;
  end else
  begin
    IECDTP.Enabled := True;
    PELOTE.Text    := IFThen(PELOTE.Text = 'S',EmptyStr,PELOTE.Text);
    PELOTE.Enabled := True;
  end;

  if Showing then
  begin
    Application.ProcessMessages;
    if IECampo.Text = 'Container' then
       IECTNR.SetFocus else
       PETexto.SetFocus;
  end;     
end;

procedure Tfrment_pro.IECDTPChange(Sender: TObject);
begin
  _Edited;

  { Defeito }
  IECDDF.Enabled := (Pos  (IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)],'1º QUALIDADE A1º QUALIDADE B2º QUALIDADE CDEFEITORETALHO') > 0);
  PELote.Text    :=  _Lote(IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)]);

  if not ALockWindowUpdate then
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('UPDATE TAB_EDI_PRO');
       SQL.Add('SET    EST_CDTP = ''' + IECDTP.Text + ''',');
       SQL.Add('       EST_RETP = ''' + IFThen(Pos(IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)],'ANTECIPADOTRÂNSITO') > 0,'E','A') + ''',');
       SQL.Add('       EST_DETP = ''' + IECDTP.Descriptions[IECDTP.Values.IndexOf(IECDTP.Text)] + '''');
       SQL.Add('WHERE  IDEV     = ''' + RECEdicao.IDG_EV + '''');
       SQL.Add('AND    CDEV     = 8');
       SQL.Add('AND    FLAG     = 0');
       ExecQuery;
       oRTransact(TSEdicao);
     end;
end;

procedure Tfrment_pro.IECDDFChange(Sender: TObject);
begin
  _Edited;

  if not ALockWindowUpdate then
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('UPDATE TAB_EDI_PRO');
       SQL.Add('SET    EST_CDDF = ''' + IECDDF.Text + ''',');
       SQL.Add('       EST_DEDF = ''' + IECDDF.Descriptions[IECDDF.Values.IndexOf(IECDDF.Text)] + '''');
       SQL.Add('WHERE  IDEV     = ''' + RECEdicao.IDG_EV + '''');
       SQL.Add('AND    CDEV     = 8');
       SQL.Add('AND    FLAG     = 0');
       ExecQuery;

       oRTransact(TSEdicao);
     end;
end;

procedure Tfrment_pro.IEMapaChange(Sender: TObject);
begin
  _Edited;

  if not ALockWindowUpdate then
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('UPDATE TAB_EDI_PRO');
       SQL.Add('SET    MAPA = ''' + IEMAPA.Text      + '''');
       SQL.Add('WHERE  IDEV = ''' + RECEdicao.IDG_EV + '''');
       SQL.Add('AND    CDEV = 8');
       SQL.Add('AND    FLAG = 0');
       ExecQuery;

       oRTransact(TSEdicao);
     end;
end;

procedure Tfrment_pro.PELoteChange(Sender: TObject);
begin
  _Edited;

  if not ALockWindowUpdate then
     with SQLSEdicao do
     begin
       Close;
       SQL.Clear;
       SQL.Add('UPDATE TAB_EDI_PRO');
       SQL.Add('SET    LOTE = ''' + PELote.Text      + '''');
       SQL.Add('WHERE  IDEV = ''' + RECEdicao.IDG_EV + '''');
       SQL.Add('AND    CDEV = 8');
       SQL.Add('AND    FLAG = 0');
       ExecQuery;
       
       oRTransact(TSEdicao);
     end;
end;

procedure Tfrment_pro.CKCDIChange(Sender: TObject);
begin
  if CKCDI.Checked then
  begin
    RECEdicao.CDI  := '1';
    RECEdicao.IDEP := RECParametros.EST_CDI;
  end else
  begin
    RECEdicao.CDI  := '0';
    RECEdicao.IDEP := IFThen(CTNRIDEP.AsInteger > 0,CTNRIDEP.AsString,RECParametros.EP_ID);
  end;
end;

procedure Tfrment_pro.IECTNRChange(Sender: TObject);
begin
  _Edited;

  CTNR.Close;
  CTNR.Params[0].Value := IECTNR.Text;
  CTNR.Prepare;
  CTNR.Open;

  if (not ALockWindowUpdate) and (IECTNR.Enabled) and (IECTNR.Text <> EmptyStr) and (CTNR.Eof) then
      oException(IECTNR,'Container sem registros de embarque !');
end;

procedure Tfrment_pro.PEDEPKKeyPress(Sender: TObject; var Key: Char);
begin
  if IECTNR.Tag > 0 then
     key := #0;
end;

procedure Tfrment_pro.DBGConsultaEST_DETPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if DBGConsulta.EditingText <> EdicaoEST_DETP.AsString then
     try
       oOTransact(TConsulta);
       with SQLConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT ID,DESCRICAO FROM TAB_TPO');
         SQL.Add('WHERE  EST_ENT   = 1 AND REST = ''A''');
         SQL.Add('AND    DESCRICAO = '''+Trim(DBGConsulta.EditingText)+'''');
         ExecQuery;

         if Eof then
            DataBaseError('Tipo de Estoque não Cadastrado !');

         EdicaoEST_CDTP.Value := Current.Vars[0].AsInteger;
         EdicaoEST_DETP.Value := Current.Vars[1].AsString;
         EdicaoLOTE.Value     := _Lote(EdicaoEST_DETP.AsString);
       end;
     finally
       oCTransact(TConsulta);
     end;
end;

procedure Tfrment_pro.DBGConsultaEST_DEDFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if DBGConsulta.EditingText <> EdicaoEST_DEDF.AsString then
     try
       oOTransact(TConsulta);
       with SQLConsulta do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT ID,DEDF FROM TAB_DEF');
         SQL.Add('WHERE  DEDF = '''+Trim(DBGConsulta.EditingText)+'''');
         ExecQuery;

         if Eof then
            DataBaseError('Tipo de Defeito não Cadastrado !');

         EdicaoEST_CDDF.Value := Current.Vars[0].AsInteger;
         EdicaoEST_DEDF.Value := Current.Vars[1].AsString;
       end;
     finally
       oCTransact(TConsulta);
     end;
end;

procedure Tfrment_pro.CEEPE_QTDEChange(Sender: TObject);
begin
  if TdxCurrencyEdit(Sender).Value = 0 then
     TdxCurrencyEdit(Sender).Font.Style := [] else
     TdxCurrencyEdit(Sender).Font.Style := [fsBold];
end;

procedure Tfrment_pro.IECOL_IDKeyPress(Sender: TObject; var Key: Char);
begin
  if IECTNR.Tag > 0 then
     key := #0;
end;

procedure Tfrment_pro.IECOL_IDChange(Sender: TObject);
begin
  _Edited;
end;

procedure Tfrment_pro.PEDEPKChange(Sender: TObject);
var
  QTDE: Double;
  QTRL,
  ITEM: Integer;
begin
  _Edited;

  QTDE := 0;
  QTRL := 0;
  ITEM := 0;

  if not ALockWindowUpdate then
     if IECTNR.Tag > 0 then { Apenas Containers }
     begin
       if (IECTNR.Tag = 0) and (IECampo.Text = 'Container') then
           oException(IECTNR,'Container não Informado !' +#13 +
                             'Favor selecionar um número de container válido.');

       LADGCP.Caption := EmptyStr;
       LADGCP.Refresh;

       LAPED_PSBR.Caption := EmptyStr;
       LAPED_PSBR.Refresh;

       LAPED_PSLQ.Caption := EmptyStr;
       LAPED_PSLQ.Refresh;

       PETexto.Items.Clear;
       PETexto.Text := EmptyStr;
       PETexto.Refresh;

       IECOL_ID.Text := '0';
       IECOL_ID.ReadOnly := True;
       IECOL_ID.Refresh;

       CECF_VPRC_PAD.Value := 0;
       CECF_VPRC_PAD.Refresh;

       CEVPRC_PAD.Value := 0;
       CEVPRC_PAD.Refresh;

       EDPedido.Text  := EmptyStr;
       EDPedido.Refresh;

       if PEDEPK.Text <> EmptyStr then
       begin
         CTNR.Locate('D_DEPK',PEDEPK.Text,[]);
         while not CTNR.Eof do
         begin
           if CTNRD_DEPK.AsString = PEDEPK.Text then
           begin
             if (EdicaoCDPK.AsInteger > 0) and (EdicaoCDPK.AsInteger <> CTNRCDPK.AsInteger) then
             begin
               PEDEPK.Text := EdicaoDEPK.AsString;
               oException(PEDEPK,'Somente é permitido 1 pedido por vez dentro do' +#13+
                                 'mesmo romaneio de estoque !');
             end;

             if PETexto.Items.IndexOf(CTNRSKU.AsString) < 0 then
                PETexto.Items.Add(CTNRSKU.AsString);

             QTDE := QTDE + CTNRQTSP.AsCurrency;
             QTRL := QTRL + CTNRRLSP.AsInteger;
             INC(ITEM);

             EDPedido.Text := ' ' + CTNRDECC.AsString + ' - Previsão: ' + LeftStr(CTNRDTRC.AsString,5);
           end;
           
           CTNR.Next;
         end;

         if QTDE > 0 then
         begin
           CTNR.Locate('D_DEPK',PEDEPK.Text,[]);

           { TRecord }
           RECEdicao.IDEP   := CTNRIDEP.AsString;
           RECEdicao.IDPK   := CTNRIDCC.AsString;
           RECEdicao.CDPK   := CTNRCDPK.AsString;
           RECEdicao.DEPK   := CTNRDEPK.AsString;
           RECEdicao.D_DEPK := CTNRD_DEPK.AsString;
           RECEdicao.DTPK   := CTNRDTPK.AsDateTime;

           RECEdicao.IDCD := CTNRIDCD.AsString;
           RECEdicao.DECD := CTNRDECD.AsString;

           RECEdicao.COL_ID := IntToStr(CTNRCOL_ID.AsInteger);

           RECEdicao.VPRC_PAD_ORI := CTNRVPRC_PAD_ORI.AsString;
           RECEdicao.VPRC_PAD := CTNRVPRC_PAD.AsFloat;

           RECEdicao.CF_VPRC_PAD_ORI := CTNRCF_VPRC_PAD_ORI.AsString;
           RECEdicao.CF_VPRC_PAD := CTNRCF_VPRC_PAD.AsFloat;

           { Campos }
           // Ricardo IECDTP.Text := CTNREST_CDTP.AsString;

           PEDEPK.Text    := RECEdicao.D_DEPK;
           EDPK_DECD.Text := RECEdicao.DECD;
           DEDTPK.Date    := RECEdicao.DTPK;

           IECF_VPRC_PAD_ORI.Text := RECEdicao.CF_VPRC_PAD_ORI;
           CECF_VPRC_PAD.Value    := RECEdicao.CF_VPRC_PAD;

           IEVPRC_PAD_ORI.Text := RECEdicao.VPRC_PAD_ORI;
           CEVPRC_PAD.Value    := RECEdicao.VPRC_PAD;

           PETexto.Text  := CTNRSKU.AsString;
           IECOL_ID.Text := RECEdicao.COL_ID;

           CEQTDE.Value := CTNRUQTDE.AsCurrency; { RICARDO }
           CEQTRL.Value := 1;

           LADGCP.Caption := CTNRDGCP.AsString;
           LADGCP.Refresh;

           LAPED_PSBR.Caption := FormatFloat('PS Bruto ,##,0.000 KG',CTNRPSBR.AsFloat);
           LAPED_PSBR.Refresh;

           LAPED_PSLQ.Caption := FormatFloat('PS Líquido ,##,0.000 KG',CTNRPSLQ.AsFloat);
           LAPED_PSLQ.Refresh;

           EDPedido.Text  := EDPedido.Text + ' - Total ' + IFThen(ITEM > 1,'Itens: ','Item: ') + IntToStr(ITEM) + ' - Produtos: ' + FormatFloat(',##,0.00',QTDE) + ' / ' + IntToStr(QTRL);
         end;

         Application.ProcessMessages;
         CEQTDE.SetFocus;
       end;
     end;  
end;

procedure Tfrment_pro.PEDEPKValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _Edited;
  if IECTNR.Tag > 0 then
     Exit;

  RECEdicao.AWinControl := TWinControl(Sender);
  RECEdicao.AQConsulta  := QConsulta;

  try
    oOTransact(TConsulta);
    uPSQPD(RECEdicao);

    if RECEdicao.Selected then
    begin
      EDPK_DECD.Text := RECEdicao.DECD;
      DEDTPK.Date    := RECEdicao.DTPK;

      PETexto.Text := EmptyStr;
      PETexto.Items.Clear;
      PETexto.Refresh;

      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   CP.SKU');
        SQL.Add('FROM ' + oREPZero(RECEdicao.TBFK,'_',RECParametros.EP_ID,3) +' AS FK');
        SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = FK.IDCP)  ');
        SQL.Add('WHERE    FK.IDPK = ''' + RECEdicao.CDPK + '''');
        SQL.Add('ORDER BY FK.ITEM');
        ExecQuery;
        while not eof do
        begin
          PETexto.Items.Add(Current.Vars[0].AsString);
          next;
        end;
      end;

      if Showing then
         PETexto.SetFocus;
    end;     
  finally
    oCTransact(TConsulta);
  end;
end;

procedure Tfrment_pro.PEDENFChange(Sender: TObject);
begin
  _Edited;
end;

procedure Tfrment_pro.DEDTNFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _Edited;
end;

procedure Tfrment_pro.EDTotalPKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrment_pro.CECDNFValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  _Edited;

  RECEdicao.AValue   := CECDNF.Text;
  RECEdicao.FKAValue := IntToStr(LATPNF.Tag);
  RECEdicao.AField   := CECDNF.HelpKeyword;
  RECEdicao.TPNF     := 0;
  try
    uPSQNF(RECEdicao,SQLConsulta,TWinControl(Sender));
  finally
    if RECEdicao.Selected then
    begin
      CECDNF.Value   := RECEdicao.CDNF;
      DEDTNF.Date    := RECEdicao.DTNF;
      EDNF_DECD.Text := RECEdicao.DECD;
      EDDECV.Text    := RECEdicao.DECV + IFThen(RECEdicao.DECR = EmptyStr,EmptyStr,' / ' + RECEdicao.DECR);

      RECEdicao.TPNF := LATPNF.Tag;
      PETexto.SetFocus;

      _ENT_DEV_INT;
    end else
    TdxCurrencyEdit(Sender).SetFocus;
  end;
end;

procedure Tfrment_pro.LATPNFClick(Sender: TObject);
begin
  { [FINNFE] Finalidade da Emissão, onde:
              1 - Normal
              2 - Complementar
              3 - Ajuste
              4 - Devolução
              5 - CFe
              6 - Terceiros
              7 - Dev Terceiros

     de 1 até 4 - Nossa NF; }

  if LATPNF.Tag = 6 then
  begin
    LATPNF.Tag     := 1;
    LATPNF.Caption := 'Nossa NF';
  end else
  if LATPNF.Tag = 1 then
  begin
    LATPNF.Tag     := 4;
    LATPNF.Caption := 'Nossa Dev';
  end else
  if LATPNF.Tag = 4 then
  begin
    LATPNF.Tag     := 6;
    LATPNF.Caption := 'Terceiros';
  end;

  Application.ProcessMessages;
end;

procedure Tfrment_pro.LATPPKClick(Sender: TObject);
begin
  { Tipos de Pedidos
    1 - Compras
    2 - Vendas }

  { Tipos de Emitente ou Destinatário
    1 - Cliente
    2 - Fornecedor
    3 - Representante
    4 - Transportadora }

  if LATPPK.Tag = 1 then
  begin
    LATPPK.Tag     := 2;
    LATPPK.Caption := 'Vendas';
    LATPPK.Refresh;

    LACDPK.Tag     := 1;
    LACDPK.Caption := 'Cliente';
    LACDPK.Refresh;

    PEDEPK.Hint := 'Pesquisa pedido de venda';
    PEDEPK.Refresh;

    RECEdicao.TBPK := 'PED_VEN_CAB';
    RECEdicao.TBFK := 'PED_VEN_ITE';
  end else
  if LATPPK.Tag = 2 then
  begin
    LATPPK.Tag     := 1;
    LATPPK.Caption := 'Compras';
    LATPPK.Refresh;

    LACDPK.Tag     := 2;
    LACDPK.Caption := 'Fornecedor';
    LACDPK.Refresh;

    PEDEPK.Hint := 'Pesquisa pedido de compra';
    PEDEPK.Refresh;

    RECEdicao.TBPK := 'PED_COM_CAB';
    RECEdicao.TBFK := 'PED_COM_ITE';
  end;

  { Edição }
  RECEdicao.TPPK := LATPPK.Tag; { Tipo Pedido }
  RECEdicao.TPCD := LACDPK.Tag; { Destinatário ou Emitente }

  Application.ProcessMessages;
end;

procedure Tfrment_pro.CEQTDEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if (Sender as TdxCurrencyEdit).Name = 'CEQTRL' then
    CEQTRL.Tag := TRUNC(CEQTRL.Value);

    _CAD_PRO_PSQ(Sender as TdxCurrencyEdit);
  end;  
end;

procedure Tfrment_pro._CheckConstraints;
begin
  if Edicao.State in [dsEdit,dsInsert] then
     if EdicaoQTDE.AsFloat > 0 then Edicao.Post else Edicao.Cancel;

  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.REFERENCIA FROM TAB_TPO AS PK');
      SQL.Add('WHERE  PK.ID  = ''' + IECDOP.Text + '''');
      ExecQuery;

      if Eof then
         oException(Nil,'Tipo de Operação não Encontrada !');

      IECDOP.HelpKeyword := SQLConsulta.Current.Vars[0].AsString;
      IECDOP.Refresh;
    end;
  finally
    oCTransact(TConsulta);
  end;

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   CDET,COUNT(*) AS QTET FROM TAB_EDI_PRO');
    SQL.Add('WHERE    IDEV = ''' + RECEdicao.IDG_EV + '''');
    SQL.Add('AND      CDEV = 8');
    SQL.Add('GROUP BY 1');
    SQL.Add('HAVING   COUNT(*) > 1');
    ExecQuery;

    if Current.Vars[0].AsInteger > 0 then
       oException(Nil,'Falha ao tentar salvar romaneio por motivo de duplicidade !' + #13 + #13 +
                      'Nº Etiqueta: ' + Current.Vars[0].AsString + #13 +
                      'Ocorrências: ' + Current.Vars[1].AsString);
  end;                    
end;

procedure Tfrment_pro._Checkout;
begin
  if (IECTNR.Tag = 0) and (IECampo.Text = 'Container') then
      oException(IECTNR,'Container não Informado !' +#13 +
                        'Favor selecionar um número de container válido.');

  if IECDOP.Text = '0' then
     oException(IECDOP,'Tipo de Operação não Informado !');

  if IECDTP.Text = '0' then
     oException(IECDTP,'Tipo de Estoque não Informado !');

  if (IECampo.Text = 'Container') and (IECTNR.Text = EmptyStr) then
      oException(IECTNR,'Container não Informado !' +#13 +
                        'Favor selecionar um número de container válido.');
end;

procedure Tfrment_pro._Edit;
begin
  { Eventos }
  SIMNovo.Enabled    := True;
  SIMImporta.Enabled := True;

  SIMSalva.Enabled            := False;
  SIMEtiquetaPadrao.Enabled   := False;
  SIMEtiquetaReduzida.Enabled := False;
  SIMRelatorios.Enabled       := False;

  { Romaneio }
  CECDRO.Value   := 0; { Número }
  EdicaoITEM.Tag := 0; { Item }

  { Nota Fiscal }
  EDDECV.Text := EmptyStr;

  { Container }
  DBGConsultaCTNR.Visible := False;

  { Inicializa }
  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_EV,1) FROM RDB$DATABASE');
      ExecQuery;

      RECEdicao.IDG_EV := Current.Vars[0].AsString;
    end;
  finally
    oCTransact(TConsulta);
  end;

  oOTransact(TSEdicao);
  with QSEdicao do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM TAB_EDI_PRO AS PK');
    SQL.Add('WHERE  PK.IDEV = ''' + RECEdicao.IDG_EV + '''');
    SQL.Add('AND    PK.CDEV = 8');
    ExecSQL;
  end;

  with Edicao do
  begin
    Close;
    SelectSQL.Clear;

    SelectSQL.Add('SELECT   PK.ID  ,PK.IDEP,PK.IDCA,');
    SelectSQL.Add('         PK.IDPK,PK.DTPK,PK.CDPK,PK.DEPK,PK.TPPK,PK.IDNF,PK.DTNF,PK.CDNF,PK.TPNF,PK.FINNFE,PK.CFOP,');
    SelectSQL.Add('         PK.ITEM,PK.CDET,PK.EST_CDTP,PK.EST_RETP,PK.EST_DETP,PK.CTNR,PK.LOTE,PK.MAPA_ID,PK.MAPA,');
    SelectSQL.Add('         PK.IDCP,PK.CP_IDEP ,PK.IDAK,PK.CEAN,');
    SelectSQL.Add('         PK.ARTIGO  ,PK.SKU ,');
    SelectSQL.Add('         PK.DECP    ,PK.DGCP,PK.CMP_PAD,');
    SelectSQL.Add('         PK.UCOM    ,PK.UCON,PK.UCDBE,PK.UQTMD,PK.UPSBR,PK.UPSLQ,');
    SelectSQL.Add('         PK.EST_QTDE,PK.EST_QTRL,');
    SelectSQL.Add('         PK.QTDE    ,PK.QTRL,PK .PSBR,PK.PSLQ,');
    SelectSQL.Add('         PK.VPRC_PAD_ORI,PK.VPRC_PAD_INI     ,PK.VPRC_PAD_FIM,PK.VPRC_PAD,PK.VPRC_COM,');
    SelectSQL.Add('         PK.CF_VPRC_PAD_ORI ,PK.CF_VPRC_PAD  ,PK.CF_VPRC_COM ,');
    SelectSQL.Add('         PK.NCM     ,PK.ORIG,PK.PIPI,PK.VIPI ,');
    SelectSQL.Add('         PK.COL_ID  ,PK.COL_NO,PK.NFCI,');
    SelectSQL.Add('         PK.EST_IDDF,PK.EST_CDDF,PK.EST_DEDF,');
    SelectSQL.Add('         PK.INFADCAD,TRIM(CAST(COALESCE(PK.UCON,'''') || IIF(PK.UCON IS NOT NULL AND PK.CMP_PAD IS NOT NULL,'' - '','''') || IIF(PK.CMP_PAD IS NOT NULL,PK.CMP_PAD,'''') AS VARCHAR(250))) AS D_INFADCAD,');
    SelectSQL.Add('         PK.IDEV  ,PK.CDEV,');
    SelectSQL.Add('         PK.IP    ,PK.HOST,');
    SelectSQL.Add('         PK.FLAG');

    SelectSQL.Add('FROM     TAB_EDI_PRO AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + RECEdicao.IDG_EV + '''');
    SelectSQL.Add('AND      PK.CDEV = 8');
    SelectSQL.Add('AND      PK.FLAG = 0');
    SelectSQL.Add('ORDER BY PK.ITEM');
    Prepare;
  end;
  oRTransact(TSEdicao);

  { Informações Adicionais }
  EMINFADCAD.Lines.Clear;

  { Painel Produtos }
  PNLD_DECP.Caption     := EmptyStr;
  PNLD_INFADCAD.Caption := EmptyStr;

  { Pesquisa }
  CEQTDE.Value := 0;
  CEQTRL.Value := 0;

  PETexto.Text := EmptyStr;
  PETexto.Tag  := 0;

  Application.ProcessMessages;
  if Showing then
     PETexto.SetFocus;
end;

procedure Tfrment_pro._Edited;
begin
  if not ALockWindowUpdate then
  begin
    if CECDRO.Value <> 0 then
       oException(Nil,'Romaneio já Gerado !');

    SIMSalva.Enabled := (Edicao.RecNo > 0) and (CECDRO.Value = 0);

    SIMRelatorios.Enabled       := (not  SIMSalva.Enabled) and (CECDRO.Value > 0);
    SIMEtiquetaPadrao.Enabled   :=  SIMRelatorios.Enabled;
    SIMEtiquetaReduzida.Enabled :=  SIMRelatorios.Enabled;
  end;
end;

function Tfrment_pro._Lote(ADETP: String): String;
begin
  if ADETP = '1º QUALIDADE AA' then
     Result := '1' else
  if ADETP = '1º QUALIDADE A' then
     Result := '2' else
  if ADETP = '1º QUALIDADE B' then
     Result := '3' else
  if ADETP = '2º QUALIDADE C' then
     Result := '4';
end;

procedure Tfrment_pro._ENT_DEV_INT;
begin
  if (CECDNF.Value > 0) and (IECDOP.Descriptions[IECDOP.Values.IndexOf(IECDOP.Text)] = 'ENTRADA DEVOLUÇÃO INTEGRAL') then
  try
    oOTransact(TENT_DEV,ltRead_Only);
    with SQLFKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT FK.CDET');
      SQL.Add('FROM ' + oREPZero('ROM_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
      SQL.Add('JOIN ' + oREPZero('ROM_ITE','_',RECParametros.EP_ID,3) + ' AS FK ON (FK.IDPK = PK.ID)');
      SQL.Add('WHERE  PK.CDNF = ''' + CECDNF.Text + '''');
      ExecQuery;
      while not Eof do
      begin
        PETexto.Text := Current.Vars[0].AsString;

        PETexto.Modified := True;
        PETexto.ValidateEdit;

        Next;
      end;
    end;

    Application.ProcessMessages;
  finally
    oCTransact(TENT_DEV,ltRead_Only_Release_Commit);
  end;
end;

procedure Tfrment_pro.IECDIChange(Sender: TObject);
begin
  _Edited;
end;

procedure Tfrment_pro._CAD_PRO_PSQ(AValue: TdxCurrencyEdit);
var
  AREC_CAD_PRO_PSQ: TREC_SHE_PSQ;
  nRecNo: Integer;
begin
  oIREC_SHE_PSQ(AREC_CAD_PRO_PSQ);
  AREC_CAD_PRO_PSQ.FWinControl := Nil;
  AREC_CAD_PRO_PSQ.FB_SQL      := SQLPKConsulta;
  AREC_CAD_PRO_PSQ.PSQ_TFD_PK  := IFThen(Pos(IECampo.Text,'Etiquetas') > 0,'PK.SKU',
                                  IFThen(Pos(IECampo.Text,'Artigos'  ) > 0,'PK.ARTIGO','PK.SKU'));
  AREC_CAD_PRO_PSQ.PSQ_TVD_PK  := PETexto.Text;
  AREC_CAD_PRO_PSQ.PSQ_TFD_TP  := 'EPE';

  if (oEmpty(AValue.Value)) and (IECampo.Text <> 'Zerar') then
  begin
    if AValue.Tag = 1 then
       PETexto.SetFocus;
    Exit;
  end;

  if oEmpty(PETexto.Text) then
  oException(PETexto,'Produto não Informado !');

  if IECDTP.Text = '0' then
  oException(IECDTP,'Tipo de Estoque não Informado !');

  if IECDOP.Text = '0' then
  oException(IECDOP,'Tipo de Operação não Informado !');

  if (IECTNR.Tag = 0) and (IECampo.Text = 'Container') then
  oException(IECTNR,'Container não Informado !' +#13 +
                    'Favor selecionar um número de container válido.');

  if (IECTNR.Tag > 0) and ((RECEdicao.DEPK = EmptyStr) or (PEDEPK.Text = EmptyStr)) then
  oException(PEDEPK,'Pedido de Compra não Informado !');

  if Edicao.State in [dsEdit,dsInsert] then
  if not oEmpty(EdicaoQTDE.AsFloat) then Edicao.Post else Edicao.Cancel;

  { RICARDO }
  try
    uPSQ_CAD_PRO(AREC_CAD_PRO_PSQ);
  finally
    if   AREC_CAD_PRO_PSQ.PSQ_OK then
    with AREC_CAD_PRO_PSQ.FB_SQL do
    begin
      if (IECampo.Text <> 'Zerar') and (Current.ByName('REST').AsString = 'I') then
          oException(PETexto,'Produto Inativo !');

      if  IECTNR.Tag > 0 then
      begin
        if not CTNR.Locate('CDPK;SKU',VarArrayOf([RECEdicao.CDPK,PETexto.Text]),[]) then
           oException(PETexto,'Produto selecionado difere do produto comprado !');

        IECOL_ID.Text := IntToStr(CTNRCOL_ID.AsInteger);

        CECF_VPRC_PAD.Value := CTNRCF_VPRC_PAD.AsFloat;
        CEVPRC_PAD.Value    := CTNRVPRC_PAD.AsFloat;

        LADGCP.Caption := CTNRDGCP.AsString;
        LADGCP.Refresh;
      end;

      if IECampo.Text = 'Zerar' then
         CEQTRL.Tag  := 1;

      try
        oOTransact(TSEdicao,ltRead_Only);
        for nRecNo := 1 to CEQTRL.Tag do
        begin
          Edicao.Append;
          EdicaoIDCP.Value    := Current.ByName('CP_ID').AsInteger;
          EdicaoCP_IDEP.Value := Current.ByName('EP_ID').AsInteger;

          EdicaoIDAK.Value := Current.ByName('AK_ID').AsInteger;
          EdicaoCEAN.Value := Current.ByName('CEAN').AsString;

          EdicaoArtigo.Value := Current.ByName('Artigo').AsString;
          EdicaoSKU.Value    := Current.ByName('SKU').AsString;

          EdicaoDECP.Value    := Current.ByName('CP_NO' ).AsString;
          EdicaoDGCP.Value    := Current.ByName('GRD_NO').AsString;
          EdicaoCMP_PAD.Value := Current.ByName('CMP_NO').AsString;

          EdicaoUCOM.Value := Current.ByName('UCOM').AsString;
          EdicaoUCON.Value := Current.ByName('UCON').AsString;

          EdicaoUCDBE.Value := Current.ByName('UCDBE').AsString;
          EdicaoUQTMD.Value := Current.ByName('UQTDE').AsCurrency;   { RICARDO }

          EdicaoUPSBR.Value := Current.ByName('UPSBR').AsFloat;
          EdicaoUPSLQ.Value := Current.ByName('UPSLQ').AsFloat;

          if CTNRIDCP.AsInteger = EdicaoIDCP.AsInteger then
          begin
            EdicaoIDEP.Value := CTNRIDEP.AsInteger;

            EdicaoCOL_ID.Value := StrToInt(IECOL_ID.Text);
            EdicaoCOL_NO.Value := IECOL_ID.Descriptions[IECOL_ID.Values.IndexOf(IECOL_ID.Text)];

            EdicaoCF_VPRC_PAD_ORI.Value := Current.ByName('CF_VPRC_ORIG').AsString;
            EdicaoCF_VPRC_PAD.Value     := Current.ByName('CF_VPRC_PAD' ).AsCurrency; //IFThen(Current.ByName('FPAIS.AsString = 'PRODUTO IMPORTADO',VPRC_COM_IMP,VPRC_COM_NAC);
            EdicaoCF_VPRC_COM.Value     := EdicaoCF_VPRC_PAD.AsFloat;
          end else
          begin
            EdicaoCOL_ID.Value := 0;
            EdicaoCOL_NO.Value := EmptyStr;

            EdicaoCF_VPRC_PAD_ORI.Value := Current.ByName('CF_VPRC_ORIG').AsString;
            EdicaoCF_VPRC_PAD.Value     := Current.ByName('CF_VPRC_PAD' ).AsCurrency; //IFThen(Current.ByName('FPAIS.AsString = 'PRODUTO IMPORTADO',VPRC_COM_IMP,VPRC_COM_NAC);
            EdicaoCF_VPRC_COM.Value     := EdicaoCF_VPRC_PAD.AsFloat;
          end;

          EdicaoVPRC_PAD_ORI.Value := 'R$';
          EdicaoVPRC_PAD.Value     := Current.ByName('VPRC_PAD').AsCurrency;
          EdicaoVPRC_COM.Value     := Current.ByName('VPRC_PAD').AsCurrency;

          { Estoque }
          if IECDTP.Text = '1' then
          begin
            EdicaoEST_QTDE.Value := Current.ByName('EA_QTDE').AsCurrency;
            EdicaoEST_QTRL.Value := Current.ByName('EA_QTRL').AsInteger;
          end else
          if IECDTP.Text = '2' then
          begin
            EdicaoEST_QTDE.Value := Current.ByName('EAA_QTDE').AsCurrency;
            EdicaoEST_QTRL.Value := Current.ByName('EAA_QTRL').AsInteger;
          end else
          if IECDTP.Text = '3' then
          begin
            EdicaoEST_QTDE.Value := Current.ByName('EB_QTDE').AsCurrency;
            EdicaoEST_QTRL.Value := Current.ByName('EB_QTRL').AsInteger;
          end else
          if IECDTP.Text = '4' then
          begin
            EdicaoEST_QTDE.Value := Current.ByName('EC_QTDE').AsCurrency;
            EdicaoEST_QTRL.Value := Current.ByName('EC_QTRL').AsInteger;
          end else
          begin
            EdicaoEST_QTDE.Value := Current.ByName('EST_QTDE').AsCurrency;
            EdicaoEST_QTRL.Value := Current.ByName('EST_QTRL').AsInteger;
          end;

          EdicaoQTDE.Value := CEQTDE.Value;
          if IECampo.Text   = 'Zerar' then
             EdicaoQTRL.Value := Trunc(CEQTRL.Value) else
             EdicaoQTRL.Value := 1;

          { Fiscal }
          EdicaoORIG.Value := Current.ByName('FIS_ORIG').AsInteger;
          EdicaoNCM.Value  := Current.ByName('FIS_NCM' ).AsString;
          EdicaoPIPI.Value := Current.ByName('FIS_PIPI').AsCurrency;

          if PETexto.Tag > 0 then
             with SQLConsulta do
             begin
               Close;
               SQL.Clear;
               SQL.Add('SELECT PK.CDET,PK.CTNR,PK.LOTE,PK.CDTP,PK.REST AS RETP,TP.DESCRICAO AS DETP,PK.CDDF,DF.DEDF,PK.QTDE,PK.QTRL');
               SQL.Add('FROM   CAD_PRO_EST AS PK');
               SQL.Add('JOIN   CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
               SQL.Add('JOIN   TAB_TPO     AS TP ON (TP.ID = PK.CDTP)');
               SQL.Add('JOIN   TAB_DEF     AS DF ON (DF.ID = PK.CDDF)');
               SQL.Add('WHERE  PK.CDET = ''' + IntToStr(PETexto.Tag) + '''');
               ExecQuery;

               EdicaoCDET.Value     := Current.ByName('CDET').AsInteger;

               EdicaoEST_CDTP.Value := Current.ByName('CDTP').AsInteger;
               EdicaoEST_RETP.Value := Current.ByName('RETP').AsString;
               EdicaoEST_DETP.Value := Current.ByName('DETP').AsString;

               EdicaoCTNR.Value     := Current.ByName('CTNR').AsString;
               EdicaoLOTE.Value     := Current.ByName('LOTE').AsString;

               EdicaoEST_CDDF.Value := Current.ByName('CDDF').AsInteger;
               EdicaoEST_DEDF.Value := Current.ByName('DEDF').AsString;
             end;

          Edicao.Post;
        end;
        oRTransact(TSEdicao,ltRead_Only_Release_Commit);
      except
        on E: Exception do
        begin
          oRTransact(TSEdicao   ,ltRead_Only_Release_Rollback);
          oException(DBGConsulta,'Falha ao tentar registrar etiqueta !' +#13+
                                 'Favor entrar em contato com o administrador do sistema.' +#13+#13+
                                 'Error Code: ' +#13+
                                  E.Message+'.');
        end;
      end;
    end;

    oCTransact(TConsulta);
  end;

  oRTransact(TSEdicao);
  Edicao.Last;

  if PETexto.Tag > 0 then
  begin
    PETexto.SetFocus;
    PETexto.Text := EmptyStr;
    PETexto.Tag  := 0;

    CEQTDE.Value := 0;
    CEQTRL.Value := 0;
  end else

  if CEQTRL.Value = 0 then
     CEQTRL.SetFocus else CEQTDE.SetFocus;

  _Edited;   
end;

procedure Tfrment_pro.ACTEveRegisterExecute(Sender: TObject);
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

procedure Tfrment_pro.ACTEveExecuteExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then

  try
    oOTransact(TEvent);

    { ADMIN }
    SPEvent.Close;
    SPEvent.StoredProcName := 'SP_SHE_EVE';
    SPEvent.Prepare;

    for i := 0 to SPEvent.ParamCount - 1 do
    SPEvent.Params[i].Value := Null;

    SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
    SPEvent.Params[1].Value := REC_SHE_DEF.FB_EVE_PAD;
    SPEvent.Params[2].Value := REC_SHE_DEF.FB_EVE_EDT;
    SPEvent.ExecProc;

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

procedure Tfrment_pro.ACTEveExpressExecute(Sender: TObject);
begin
  ACTEveRegister.Execute;
  ACTEveExecute.Execute;
end;

procedure Tfrment_pro.PETextoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  AREC_CAD_PRO_PSQ: TREC_SHE_PSQ;
begin
  if (IECTNR.Tag = 0) and (IECampo.Text = 'Container') then
  oException(IECTNR,'Container não Informado !' +#13 +
                    'Favor selecionar um número de container válido.');

  if (IECTNR.Tag > 0) and ((RECEdicao.DEPK = EmptyStr) or (PEDEPK.Text = EmptyStr)) then
  oException(PEDEPK,'Pedido de Compra não Informado !');

  PETexto.Text := oRetCodigo(PETexto.Text);
  PETexto.Tag  := 0;

  LADGCP.Caption := EmptyStr;
  LADGCP.Refresh;

  if not oEmpty(PETexto.Text) then
  try
    RECEdicao.BException := False;
    oRTransact(TConsulta);

    if IECampo.Text = 'Etiquetas' then
    begin
      try
        if not oBSONumero(PETexto.Text) then
        oException(PETexto,'Número da etiqueta não informada ou incorreta !');

        { VER etiqueta pertence a nota fiscal }
        with SQLConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ET.IDEP,ET.CDRO,');
          SQL.Add('       ET.IDCA,ET.DTCA,ET.IDED,ET.DTED,ET.IDST,ET.DTST,ET.CDST,ET.REST,ET.DEST,');
          SQL.Add('       EF.CDET,EF.CTNR,EF.LOTE,EF.IDPK,EF.DEPK,EF.DTPK,EF.CDTP,IIF(EF.REST = ''A'',''A'',''E'') AS RETP,TB_TP.DESCRICAO AS DETP,');
          SQL.Add('       EF.CDDF,TB_DF.DEDF,');
          SQL.Add('       ET.IDCP,CP.SKU    ,CP.DGCP,EF.QTDE,EF.QTRL,');
          SQL.Add('       FK.IDCP AS FK_IDCP,PK.CDNF,PK.DTNF,CD.FANTASIA AS DECD,CV.LOGIN AS DECV');

          SQL.Add('FROM      CAD_PRO_ENI AS ET');
          SQL.Add('LEFT JOIN CAD_PRO     AS CP    ON (CP.ID    = ET.IDCP)');
          SQL.Add('LEFT JOIN CAD_PRO_EST AS EF    ON (EF.CDET  = ET.CDET)');
          SQL.Add('LEFT JOIN TAB_TPO     AS TB_TP ON (TB_TP.ID = EF.CDTP)');
          SQL.Add('LEFT JOIN TAB_DEF     AS TB_DF ON (TB_DF.ID = EF.CDDF)');

          SQL.Add('LEFT JOIN ' + oREPZero('ROM_ITE','_',RECParametros.EP_ID,3) + ' AS FK ON (FK.CDET = EF.CDET)');
          SQL.Add('LEFT JOIN ' + oREPZero('ROM_CAB','_',RECParametros.EP_ID,3) + ' AS PK ON (PK.IDPK = FK.IDPK)');

          SQL.Add('LEFT JOIN CAD_CLI  AS CD ON (CD.ID = PK.IDCD)');
          SQL.Add('LEFT JOIN TAB_USER AS CV ON (CV.ID = PK.IDCV)');

          SQL.Add('WHERE  ET.CDET = ''' + PETexto.Text + '''');
          ExecQuery;

          if Eof then
          oException(PETexto,'Número da etiqueta não encontrada !');

          if Current.ByName('CDET').AsInteger = 0 then
          oException(PETexto,'Etiqueta Nº ' + PETexto.Text + ' Inválida !' + #13 +
                             'Produto '     + IFThen(Current.ByName('SKU').AsString <> EmptyStr,Current.ByName('SKU').AsString + ' ' + Current.ByName('DGCP').AsString,'não Encontrado') + #13 + #13 + #13 +
                             'Etiqueta Cancelada. ' + FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTED').AsDateTime));

          //if Current.ByName('IDPK').AsInteger = 0 then
          //oException(PETexto,'Etiqueta Nº ' + PETexto.Text + ' Inválida !' + #13 +
          //                   'Produto '     + IFThen(Current.ByName('SKU').AsString <> EmptyStr,Current.ByName('SKU').AsString + ' ' + Current.ByName('DGCP').AsString,'não Encontrado') + #13 + #13 + #13 +
          //                   'Etiqueta sem registro de saída.');

          if CECDNF.Value > 0 then
          begin
            if Current.ByName('CDNF').AsInteger <> INT(CECDNF.Value) then
            begin
              RECEdicao.BException := True;
              oErro(Self.Handle,
                    'Etiqueta Nº ' + PETexto.Text + ' Inválida !' + #13 +
                    'Produto '     + IFThen(Current.ByName('SKU').AsString <> EmptyStr,Current.ByName('SKU').AsString + ' ' + Current.ByName('DGCP').AsString,'não Encontrado') + #13 + #13 +

                    'Número da Nota fiscal informada é diferentente do' + #13 +
                    'Número da nota fiscal dessa etiqueta.' + #13 + #13 +

                    'NF º ' +  Current.ByName('CDNF').AsString + ' de ' + FormatDateTime('dd.mm.yy hh:mm',Current.ByName('DTNF').AsDateTime) + #13 + #13 +

                    Current.ByName('DECD').AsString + #13 +
                    Current.ByName('DECV').AsString + #13);
            end else
            begin
              CEQTDE.Value := Current.ByName('QTDE').AsCurrency;
              CEQTRL.Value := Current.ByName('QTRL').AsInteger;
            end;
          end;
        end;

        if  SQLConsulta.Current.ByName('IDCP').AsInteger = 0 then
        if (SQLConsulta.Current.ByName('CDNF').AsInteger >  0) and (CECDNF.Value > 0) and (Pos('Nossa',LATPNF.Caption) > 0) and
           (SQLConsulta.Current.ByName('CDNF').AsInteger <>     INT(CECDNF.Value)) then
            oException(PETexto,'Etiqueta Nº ' + PETexto.Text + ' não romaneada !' + #13 +
                               'NF ' + CECDNF.Text);

        PETexto.Text := SQLConsulta.Current.ByName('SKU' ).AsString;
        PETexto.Tag  := SQLConsulta.Current.ByName('CDET').AsInteger;
      except
        PETexto.Text := EmptyStr;
        PETexto.Tag  := 0;

        CEQTDE.Value := 0;
        CEQTRL.Value := 0;
      end
    end;

    oIREC_SHE_PSQ(AREC_CAD_PRO_PSQ);
    AREC_CAD_PRO_PSQ.FWinControl := Nil;
    AREC_CAD_PRO_PSQ.FB_SQL      := SQLPKConsulta;
    AREC_CAD_PRO_PSQ.PSQ_TFD_PK  := IFThen(Pos(IECampo.Text,'Etiquetas') > 0,'PK.SKU',
                                    IFThen(Pos(IECampo.Text,'Artigos'  ) > 0,'PK.ARTIGO','PK.SKU'));
    AREC_CAD_PRO_PSQ.PSQ_TVD_PK  := PETexto.Text;
    AREC_CAD_PRO_PSQ.PSQ_TFD_TP  := 'EPE';

    try uPSQ_CAD_PRO(AREC_CAD_PRO_PSQ);
    finally
      if   not AREC_CAD_PRO_PSQ.PSQ_OK then
      begin
        PostMessage(TWinControl(PETexto).Handle, WM_SETFOCUS, 0, 0);
        TWinControl(PETexto).SetFocus;

        PETexto.Reset;
        Abort;
      end else
      begin
        with AREC_CAD_PRO_PSQ.FB_SQL do
        begin
          if IECampo.Text   = 'Zerar' then
          begin
            if IECDTP.Text = '1' then
            begin
              CEQTDE.Value := Current.ByName('EPE_QTDE').AsCurrency;
              CEQTRL.Value := Current.ByName('EPE_QTRL').AsInteger;
            end else
            if IECDTP.Text = '2' then
            begin
              CEQTDE.Value := Current.ByName('EPE_QTDE').AsCurrency;
              CEQTRL.Value := Current.ByName('EPE_QTRL').AsInteger;
            end else
            if IECDTP.Text = '3' then
            begin
              CEQTDE.Value := Current.ByName('EPE_QTDE').AsCurrency;
              CEQTRL.Value := Current.ByName('EPE_QTRL').AsInteger;
            end else
            if IECDTP.Text = '4' then
            begin
              CEQTDE.Value := Current.ByName('EPE_QTDE').AsCurrency;
              CEQTRL.Value := Current.ByName('EPE_QTRL').AsInteger;
            end else
            begin
              CEQTDE.Value := Current.ByName('EPE_QTDE').AsCurrency;
              CEQTRL.Value := Current.ByName('EPE_QTRL').AsInteger;
            end;
          end else

          if IECampo.Text = 'Etiquetas' then
          begin
          //  CEQTDE.Value := Current.ByName('QTDE').AsCurrency;
          //  CEQTRL.Value := Current.ByName('QTRL').AsInteger;
          end else
          begin
            PETexto.Text := Current.ByName('SKU').AsString;
            PETexto.Tag  := 0;

            CEQTDE.Value := Current.ByName('UQTDE').AsCurrency;  { RICARDO }
            CEQTRL.Value := 1;

            { Container }
            if CTNR.Locate('CDPK;SKU',VarArrayOf([RECEdicao.CDPK,PETexto.Text]),[]) then
            begin
              CEQTDE.Value := CTNRUQTDE.AsCurrency;
             // CEQTRL.Value := 1;
            end else
            { Pedidos }
            if RECEdicao.CDPK > 0 then
               with SQLConsulta do
               begin
                 Close;
                 SQL.Clear;
                 SQL.Add('SELECT   IIF(FK.QTSP > 0,FK.QTSP,FK.QTDE) AS QTDE,IIF(FK.RLSP > 0,FK.RLSP,FK.QTRL) AS QTRL');
                 SQL.Add('FROM ' + oREPZero(RECEdicao.TBFK,'_',RECParametros.EP_ID,3) +' AS FK');
                 SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = FK.IDCP)  ');
                 SQL.Add('WHERE    FK.IDPK = ''' + RECEdicao.CDPK + '''');
                 SQL.Add('AND      CP.SKU  = ''' + PETexto.Text   + '''');
                 ExecQuery;

                 if not Eof then
                 begin
                   //CEQTDE.Value := Current.Vars[0].AsCurrency;
                   CEQTRL.Value := Current.Vars[1].AsInteger;
                 end;
               end;
          end;

          { Grade }
          LADGCP.Caption := Current.ByName('GRD_NO').AsString;
          LADGCP.Refresh;

          { Coleção }
          if IECOL_ID.Text <> '0' then
             IECOL_ID.Font.Style := [fsBold] else
             IECOL_ID.Font.Style := [];

          { Preço Fornecedor }
          IECF_VPRC_PAD_ORI.Text := SQLPKConsulta.Current.ByName('CF_VPRC_ORIG').AsString;
          CECF_VPRC_PAD.Value    := SQLPKConsulta.Current.ByName('CF_VPRC_PAD' ).AsCurrency;

          if CECF_VPRC_PAD.Value > 0 then
             IECF_VPRC_PAD_ORI.Font.Style := [fsBold] else
             IECF_VPRC_PAD_ORI.Font.Style := [];

          { Preço Comercial }
          CEVPRC_PAD.Value := SQLPKConsulta.Current.ByName('VPRC_PAD').AsCurrency;

          if CEVPRC_PAD.Value > 0 then
             IEVPRC_PAD_ORI.Font.Style := [fsBold] else
             IEVPRC_PAD_ORI.Font.Style := [];


          { Saldo Estoque }
          CEEPV_QTDE.Value := SQLPKConsulta.Current.ByName('EPV_QTDE').AsCurrency;
          CEESP_QTDE.Value := SQLPKConsulta.Current.ByName('ESP_QTDE').AsCurrency;
          CEEPE_QTDE.Value := SQLPKConsulta.Current.ByName('EPE_QTDE').AsCurrency;

          { Imagem }
          with QConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT CDN.IMG_ID,CDN.IMG_PAD FROM VW_CAD_PRO_IMG AS CDN');
            SQL.Add('WHERE  CDN.IMG_ID = ''' + SQLPKConsulta.Current.ByName('IMG_ID').AsString + '''');
            Open;
          end;
          EDIMG_PAD.Text := _oLoadJPG(QConsulta.FieldByName('IMG_ID'),QConsulta.FieldByName('IMG_PAD'),IMG_PAD);
        end;
      end;
    end;
  finally
    oCTransact(TConsulta);
  end;

  if (IECampo.Text = 'Etiquetas') and (CEQTDE.Value > 0) then
  try
    _CAD_PRO_PSQ(CEQTDE);
  finally
    PETexto.SetFocus;
  end;
end;

end.
