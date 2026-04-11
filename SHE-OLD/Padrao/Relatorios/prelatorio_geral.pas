unit prelatorio_geral;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, ImgList, StdCtrls,
  ComCtrls, ExtCtrls,  dxDBGrid, dxDBCtrl, dxEditor, dxExEdtr, dxEdLib,
  QRCtrls, QuickRpt, IBDatabase, DateUtils, dxPageControl, dxCntner,
  Math, StrUtils, QRExport, QRPDFFilt, rxSpeedbar;

type
  Tfrmrelatorio_geral = class(TForm)
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BSai: TSpeedItem;
    BVis: TSpeedItem;
    BPri: TSpeedItem;
    BSav: TSpeedItem;
    BGra: TSpeedItem;
    PNLPrincipal: TPanel;
    QConsulta: TIBQuery;
    imageOPC: TImageList;
    pcMAIN: TdxPageControl;
    tsCAD_CLI: TdxTabSheet;
    ImageList1: TImageList;
    tsCAD_TRA: TdxTabSheet;
    tsCAD_REP: TdxTabSheet;
    TCadastro: TIBTransaction;
    Bevel1: TBevel;
    Shape23: TShape;
    Shape24: TShape;
    clCAD_REP_DATA: TLabel;
    Shape25: TShape;
    Shape26: TShape;
    clCAD_REP_TREL: TLabel;
    cbCAD_REP_TREL: TdxImageEdit;
    cbCAD_REP_DATA: TdxImageEdit;
    Shape29: TShape;
    Shape30: TShape;
    clCAD_REP_DREP: TLabel;
    cbCAD_REP_DREP: TdxImageEdit;
    tsCAD_PRO: TdxTabSheet;
    Shape47: TShape;
    Shape48: TShape;
    clCAD_PRO_TREL: TLabel;
    Shape57: TShape;
    Shape58: TShape;
    clCAD_PRO_CART1: TLabel;
    Shape59: TShape;
    Shape60: TShape;
    clCAD_PRO_DGRP: TLabel;
    Shape65: TShape;
    Shape66: TShape;
    clCAD_PRO_DCOL: TLabel;
    cbCAD_PRO_TREL: TdxImageEdit;
    cbCAD_PRO_DGRP: TdxImageEdit;
    cbCAD_PRO_DCOL: TdxImageEdit;
    Shape45: TShape;
    Shape46: TShape;
    clCAD_PRO_DATA: TLabel;
    cbCAD_PRO_DATA: TdxImageEdit;
    Bevel3: TBevel;
    Shape53: TShape;
    Shape54: TShape;
    clCAD_CLI_DATA: TLabel;
    Shape55: TShape;
    Shape56: TShape;
    clCAD_CLI_TREL: TLabel;
    Shape69: TShape;
    Shape70: TShape;
    clCAD_CLI_DCLI: TLabel;
    Shape75: TShape;
    clCAD_CLI_DCID: TLabel;
    Shape76: TShape;
    Shape77: TShape;
    clCAD_CLI_ESTA: TLabel;
    Shape78: TShape;
    cbCAD_CLI_TREL: TdxImageEdit;
    cbCAD_CLI_DATA: TdxImageEdit;
    cbCAD_CLI_ESTA: TdxImageEdit;
    Shape61: TShape;
    Shape62: TShape;
    clCAD_PRO_DCAT: TLabel;
    expXLS: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    tsVEN_PRG: TdxTabSheet;
    tsVEN_PED: TdxTabSheet;
    Bevel2: TBevel;
    Shape1: TShape;
    Shape2: TShape;
    clVEN_PED_TREL: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    clVEN_PED_DATA: TLabel;
    cbVEN_PED_TREL: TdxImageEdit;
    cbVEN_PED_DATA: TdxImageEdit;
    cbCAD_PRO_DCAT: TdxImageEdit;
    tsNFE_CAB: TdxTabSheet;
    Bevel6: TBevel;
    Shape21: TShape;
    Shape22: TShape;
    clNFE_CAB_TREL: TLabel;
    Shape51: TShape;
    Shape52: TShape;
    clNFE_CAB_TNFE: TLabel;
    Shape121: TShape;
    Shape122: TShape;
    clNFE_CAB_STA: TLabel;
    Shape123: TShape;
    Shape124: TShape;
    clNFE_CAB_DFAV: TLabel;
    Shape125: TShape;
    Shape126: TShape;
    clNFE_CAB_DATA: TLabel;
    Shape127: TShape;
    Shape128: TShape;
    clNFE_CAB_DVEN: TLabel;
    Shape129: TShape;
    Shape130: TShape;
    clNFE_CAB_DREP: TLabel;
    Shape131: TShape;
    Shape132: TShape;
    clNFE_CAB_DTRA: TLabel;
    Shape133: TShape;
    Shape134: TShape;
    clNFE_CAB_CPRO: TLabel;
    cbNFE_CAB_TREL: TdxImageEdit;
    cbNFE_CAB_STA: TdxImageEdit;
    cbNFE_CAB_DATA: TdxImageEdit;
    tsCAI_MOV: TdxTabSheet;
    Bevel7: TBevel;
    Shape135: TShape;
    Shape136: TShape;
    clCAI_MOV_TREL: TLabel;
    Shape137: TShape;
    Shape138: TShape;
    clCAI_MOV_CDCX: TLabel;
    Shape141: TShape;
    Shape142: TShape;
    clCAI_MOV_DCLI: TLabel;
    Shape143: TShape;
    Shape144: TShape;
    clCAI_MOV_DATA: TLabel;
    Shape145: TShape;
    Shape146: TShape;
    clCAI_MOV_DVEN: TLabel;
    Shape147: TShape;
    Shape148: TShape;
    clCAI_MOV_DREP: TLabel;
    Shape151: TShape;
    Shape152: TShape;
    clCAI_MOV_CPRO: TLabel;
    cbCAI_MOV_TREL: TdxImageEdit;
    cbCAI_MOV_DATA: TdxImageEdit;
    cbCAI_MOV_DCLI: TdxPickEdit;
    cbCAI_MOV_CDCX: TdxImageEdit;
    cbCAI_MOV_DVEN: TdxPickEdit;
    cbCAI_MOV_DREP: TdxPickEdit;
    cbCAI_MOV_CPRO: TdxPickEdit;
    Shape139: TShape;
    clCAD_CLI_REGI: TLabel;
    Shape140: TShape;
    cbCAD_CLI_REGI: TdxImageEdit;
    cbCAD_CLI_DCLI: TdxPickEdit;
    cbCAD_CLI_DCID: TdxPickEdit;
    tsFIN_DUP: TdxTabSheet;
    Bevel8: TBevel;
    Shape3: TShape;
    Shape4: TShape;
    clFIN_DUP_TREL: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    clFIN_DUP_DATA: TLabel;
    cbFIN_DUP_TREL: TdxImageEdit;
    cbFIN_DUP_DATA: TdxImageEdit;
    Shape7: TShape;
    Shape8: TShape;
    clCAI_MOV_STFI: TLabel;
    cbCAI_MOV_STFI: TdxImageEdit;
    Shape11: TShape;
    Shape12: TShape;
    clCAI_MOV_DFOR: TLabel;
    cbCAI_MOV_DFOR: TdxPickEdit;
    Shape13: TShape;
    Shape14: TShape;
    clCAI_MOV_STCO: TLabel;
    cbCAI_MOV_STCO: TdxImageEdit;
    Shape15: TShape;
    Shape16: TShape;
    clCAI_MOV_TIPO: TLabel;
    cbCAI_MOV_TIPO: TdxPickEdit;
    Shape17: TShape;
    Shape18: TShape;
    clFIN_DUP_STFI: TLabel;
    cbFIN_DUP_STFI: TdxImageEdit;
    cbNFE_CAB_DFAV: TdxPickEdit;
    cbNFE_CAB_DVEN: TdxPickEdit;
    cbNFE_CAB_DREP: TdxPickEdit;
    cbNFE_CAB_DTRA: TdxPickEdit;
    cbNFE_CAB_CPRO: TdxPickEdit;
    cbNFE_CAB_TNFE: TdxPickEdit;
    tsPAG_COM: TdxTabSheet;
    Bevel9: TBevel;
    Shape19: TShape;
    Shape20: TShape;
    clPAG_COM_TREL: TLabel;
    Shape155: TShape;
    Shape156: TShape;
    clPAG_COM_DATA: TLabel;
    cbPAG_COM_TREL: TdxImageEdit;
    cbPAG_COM_DATA: TdxImageEdit;
    Shape149: TShape;
    Shape150: TShape;
    clPAG_COM_DESC: TLabel;
    cbPAG_COM_DESC: TdxMaskEdit;
    cbCAD_PRO_CART1: TdxPickEdit;
    Shape63: TShape;
    Shape64: TShape;
    clCAD_PRO_DPRO: TLabel;
    cbCAD_PRO_DPRO: TdxPickEdit;
    tsCAD_FUN: TdxTabSheet;
    Bevel10: TBevel;
    Shape67: TShape;
    Shape68: TShape;
    clCAD_FUN_TREL: TLabel;
    Shape71: TShape;
    Shape72: TShape;
    clCAD_FUN_DATA: TLabel;
    cbCAD_FUN_TREL: TdxImageEdit;
    cbCAD_FUN_DATA: TdxImageEdit;
    Shape73: TShape;
    Shape74: TShape;
    clCAD_FUN_DCAR: TLabel;
    cbCAD_FUN_DCAR: TdxImageEdit;
    Shape79: TShape;
    Shape80: TShape;
    clCAD_FUN_APEL: TLabel;
    cbCAD_FUN_APEL: TdxPickEdit;
    Shape153: TShape;
    Shape154: TShape;
    clCAD_FUN_MES: TLabel;
    cbCAD_FUN_MES: TdxPickEdit;
    Shape157: TShape;
    Shape158: TShape;
    clCAD_FUN_ANO: TLabel;
    cbCAD_FUN_ANO: TdxPickEdit;
    tsVEN_PRC: TdxTabSheet;
    Bevel11: TBevel;
    Shape159: TShape;
    Shape160: TShape;
    clVEN_PRC_TREL: TLabel;
    Shape161: TShape;
    Shape162: TShape;
    clVEN_PRC_DATA: TLabel;
    cbVEN_PRC_TREL: TdxImageEdit;
    cbVEN_PRC_DATA: TdxImageEdit;
    Bevel5: TBevel;
    Shape93: TShape;
    Shape94: TShape;
    clVEN_PRG_TREL: TLabel;
    Shape103: TShape;
    Shape104: TShape;
    clVEN_PRG_DATA: TLabel;
    cbVEN_PRG_TREL: TdxImageEdit;
    cbVEN_PRG_DATA: TdxImageEdit;
    tsFIN_REC: TdxTabSheet;
    Bevel12: TBevel;
    Shape85: TShape;
    Shape86: TShape;
    clFIN_REC_TREL: TLabel;
    Shape87: TShape;
    Shape88: TShape;
    clFIN_REC_DATA: TLabel;
    Shape89: TShape;
    Shape90: TShape;
    clFIN_REC_STFI: TLabel;
    cbFIN_REC_TREL: TdxImageEdit;
    cbFIN_REC_DATA: TdxImageEdit;
    Shape91: TShape;
    Shape92: TShape;
    clFIN_REC_DCLI: TLabel;
    Shape95: TShape;
    Shape96: TShape;
    clFIN_REC_DREP: TLabel;
    Shape97: TShape;
    Shape98: TShape;
    clFIN_REC_DVEN: TLabel;
    cbFIN_REC_DCLI: TdxPickEdit;
    cbFIN_REC_DREP: TdxPickEdit;
    cbFIN_REC_DVEN: TdxPickEdit;
    Shape99: TShape;
    Shape100: TShape;
    clFIN_REC_RCLI: TLabel;
    cbFIN_REC_RCLI: TdxPickEdit;
    Shape101: TShape;
    Shape102: TShape;
    clNFE_CAB_DEMP: TLabel;
    cbNFE_CAB_DEMP: TdxImageEdit;
    Shape107: TShape;
    Shape108: TShape;
    clCAD_PRO_TEST: TLabel;
    cbCAD_PRO_TEST: TdxImageEdit;
    Shape49: TShape;
    Shape50: TShape;
    clCAD_PRO_DEMP: TLabel;
    cbCAD_PRO_DEMP: TdxImageEdit;
    tsROM_CAB: TdxTabSheet;
    Bevel14: TBevel;
    Shape111: TShape;
    Shape112: TShape;
    clROM_CAB_TREL: TLabel;
    Shape115: TShape;
    Shape116: TShape;
    clROM_CAB_DATA: TLabel;
    cbROM_CAB_TREL: TdxImageEdit;
    cbROM_CAB_DATA: TdxImageEdit;
    Shape109: TShape;
    Shape110: TShape;
    Label14: TLabel;
    cbCAD_PRO_OBSE: TdxMemo;
    Shape117: TShape;
    Shape118: TShape;
    clFIN_REC_STPD: TLabel;
    cbFIN_REC_STPD: TdxImageEdit;
    tsGER: TdxTabSheet;
    Shape119: TShape;
    clGER_TREL: TLabel;
    slGER_DFAV: TShape;
    clGER_DFAV: TLabel;
    Shape171: TShape;
    Shape172: TShape;
    clGER_DATA: TLabel;
    sbGER_DFAV: TShape;
    cbGER_TREL: TdxImageEdit;
    cbGER_DATA: TdxImageEdit;
    cbGER_DFAV: TdxPickEdit;
    Shape167: TShape;
    clGER_TVIS: TLabel;
    Shape169: TShape;
    cbGER_TVIS: TdxImageEdit;
    slGER_DVEN: TShape;
    clGER_DVEN: TLabel;
    sbGER_DVEN: TShape;
    cbGER_DVEN: TdxPickEdit;
    Shape120: TShape;
    slGER_DREP: TShape;
    clGER_DREP: TLabel;
    sbGER_DREP: TShape;
    cbGER_DREP: TdxPickEdit;
    slGER_FIL1: TShape;
    clGER_FIL1: TLabel;
    sbGER_FIL1: TShape;
    cbGER_FIL1: TdxPickEdit;
    slGER_STPD: TShape;
    clGER_STPD: TLabel;
    sbGER_STPD: TShape;
    cbGER_STPD: TdxImageEdit;
    Shape168: TShape;
    Shape170: TShape;
    clCAD_PRO_DUNI: TLabel;
    cbCAD_PRO_DUNI: TdxImageEdit;
    Shape27: TShape;
    Shape28: TShape;
    clCAD_REP_REGI: TLabel;
    cbCAD_REP_REGI: TdxImageEdit;
    Shape31: TShape;
    clCAD_CLI_DREP: TLabel;
    Shape32: TShape;
    Shape33: TShape;
    clCAD_CLI_DVEN: TLabel;
    Shape34: TShape;
    cbCAD_CLI_DREP: TdxPickEdit;
    cbCAD_CLI_DVEN: TdxPickEdit;
    slGER_FIL2: TShape;
    clGER_FIL2: TLabel;
    sbGER_FIL2: TShape;
    cbGER_FIL2: TdxPickEdit;
    slGER_FIL3: TShape;
    clGER_FIL3: TLabel;
    sbGER_FIL3: TShape;
    cbGER_FIL3: TdxPickEdit;
    slGER_FIL4: TShape;
    clGER_FIL4: TLabel;
    sbGER_FIL4: TShape;
    cbGER_FIL4: TdxPickEdit;
    Label1: TLabel;
    Shape35: TShape;
    Shape36: TShape;
    edqrkg: TdxMaskEdit;
    cbrkg1: TdxPickEdit;
    cbrkg2: TdxPickEdit;
    cbprkg1: TdxPickEdit;
    cbprkg2: TdxPickEdit;
    tsCAD_CON: TdxTabSheet;
    Bevel15: TBevel;
    Shape37: TShape;
    Shape38: TShape;
    clCAD_CON_TREL: TLabel;
    Shape39: TShape;
    Shape40: TShape;
    clCAD_CON_DATA: TLabel;
    Shape179: TShape;
    Shape180: TShape;
    clCAD_CON_CDEP: TLabel;
    cbCAD_CON_TREL: TdxImageEdit;
    cbCAD_CON_DATA: TdxImageEdit;
    cbCAD_CON_CDEP: TdxImageEdit;
    tsFIN_PAG: TdxTabSheet;
    Bevel16: TBevel;
    Shape41: TShape;
    Shape42: TShape;
    clFIN_PAG_TREL: TLabel;
    Shape43: TShape;
    Shape44: TShape;
    clFIN_PAG_DATA: TLabel;
    Shape173: TShape;
    Shape174: TShape;
    clFIN_PAG_STFI: TLabel;
    Shape175: TShape;
    Shape176: TShape;
    clFIN_PAG_DFOR: TLabel;
    Shape177: TShape;
    Shape178: TShape;
    clFIN_PAG_DFIN: TLabel;
    Shape181: TShape;
    Shape182: TShape;
    clFIN_PAG_DCUS: TLabel;
    Shape183: TShape;
    Shape184: TShape;
    clFIN_PAG_RFOR: TLabel;
    cbFIN_PAG_TREL: TdxImageEdit;
    cbFIN_PAG_DATA: TdxImageEdit;
    cbFIN_PAG_STFI: TdxImageEdit;
    cbFIN_PAG_DFOR: TdxPickEdit;
    cbFIN_PAG_DFIN: TdxPickEdit;
    cbFIN_PAG_DCUS: TdxPickEdit;
    cbFIN_PAG_RFOR: TdxPickEdit;
    TSCadastro: TIBTransaction;
    QSCadastro: TIBQuery;
    Shape185: TShape;
    Shape186: TShape;
    clFIN_PAG_DOCT: TLabel;
    cbFIN_PAG_DOCT: TdxPickEdit;
    Shape187: TShape;
    Shape188: TShape;
    clNFE_CAB_DUNI: TLabel;
    cbNFE_CAB_DUNI: TdxPickEdit;
    PDF: TQRPDFFilter;
    Shape189: TShape;
    clCAD_CLI_CDEP: TLabel;
    Shape190: TShape;
    cbCAD_CLI_CDEP: TdxImageEdit;
    Shape197: TShape;
    Shape198: TShape;
    clCAD_REP_CID: TLabel;
    cbCAD_REP_CID: TdxPickEdit;
    Shape199: TShape;
    clVEN_PRC_CART: TLabel;
    Shape200: TShape;
    Shape201: TShape;
    clVEN_PRC_STFI: TLabel;
    Shape202: TShape;
    cbVEN_PRC_CART: TdxPickEdit;
    cbVEN_PRC_STFI: TdxImageEdit;
    Shape203: TShape;
    clVEN_PRC_DFOR: TLabel;
    Shape204: TShape;
    cbVEN_PRC_DFOR: TdxPickEdit;
    Shape205: TShape;
    clVEN_PRC_DUSU: TLabel;
    Shape206: TShape;
    cbVEN_PRC_DUSU: TdxPickEdit;
    tsNFE_LOG: TdxTabSheet;
    tsTAB_TAR: TdxTabSheet;
    Shape207: TShape;
    Shape208: TShape;
    clNFE_LOG_DATA: TLabel;
    Shape209: TShape;
    Shape210: TShape;
    clNFE_LOG_TREL: TLabel;
    Shape211: TShape;
    Shape212: TShape;
    clNFE_LOGI_DEMP: TLabel;
    Shape217: TShape;
    clNFE_LOG_DFAV: TLabel;
    Shape218: TShape;
    Shape219: TShape;
    clNFE_LOG_TIPO: TLabel;
    Shape220: TShape;
    Shape221: TShape;
    clNFE_LOG_OPER: TLabel;
    Shape222: TShape;
    cbNFE_LOG_TREL: TdxImageEdit;
    cbNFE_LOG_DATA: TdxImageEdit;
    cbNFE_LOG_DEMP: TdxPickEdit;
    cbNFE_LOG_TIPO: TdxPickEdit;
    cbNFE_LOG_OPER: TdxPickEdit;
    Shape213: TShape;
    clNFE_LOG_DVEN: TLabel;
    Shape214: TShape;
    Shape215: TShape;
    clNFE_LOG_DTRA: TLabel;
    Shape216: TShape;
    Shape223: TShape;
    Shape224: TShape;
    Label2: TLabel;
    Shape225: TShape;
    Shape226: TShape;
    Label3: TLabel;
    Shape227: TShape;
    Shape228: TShape;
    Label4: TLabel;
    Shape229: TShape;
    Label5: TLabel;
    Shape230: TShape;
    Shape231: TShape;
    Label6: TLabel;
    Shape232: TShape;
    Shape233: TShape;
    Label7: TLabel;
    Shape234: TShape;
    Shape235: TShape;
    Label8: TLabel;
    Shape236: TShape;
    Label9: TLabel;
    Shape237: TShape;
    Shape238: TShape;
    dxImageEdit1: TdxImageEdit;
    dxImageEdit3: TdxImageEdit;
    dxImageEdit4: TdxImageEdit;
    dxPickEdit1: TdxPickEdit;
    dxPickEdit2: TdxPickEdit;
    dxPickEdit3: TdxPickEdit;
    dxImageEdit5: TdxImageEdit;
    dxImageEdit6: TdxImageEdit;
    cbNFE_LOG_DFAV: TdxPickEdit;
    cbNFE_LOG_DVEN: TdxPickEdit;
    cbNFE_LOG_DTRA: TdxPickEdit;
    slGER_STCO: TShape;
    clGER_STCO: TLabel;
    sbGER_STCO: TShape;
    cbGER_STCO: TdxImageEdit;
    slGER_STFI: TShape;
    clGER_STFI: TLabel;
    sbGER_STFI: TShape;
    cbGER_STFI: TdxImageEdit;
    cbFIN_REC_STFI: TdxImageEdit;
    Shape163: TShape;
    Shape164: TShape;
    clFIN_REC_CTNR: TLabel;
    cbFIN_REC_CTNR: TdxPickEdit;
    Shape239: TShape;
    Shape240: TShape;
    clCAD_PRO_CART2: TLabel;
    cbCAD_PRO_CART2: TdxPickEdit;
    Shape241: TShape;
    Shape242: TShape;
    clFIN_PAG_DUPL: TLabel;
    cbFIN_PAG_DUPL: TdxImageEdit;
    Shape243: TShape;
    Shape244: TShape;
    clFIN_DUP_IDBX: TLabel;
    cbFIN_DUP_IDBX: TdxImageEdit;
    PNLDatas: TPanel;
    GBDT1: TGroupBox;
    dxDT1: TMonthCalendar;
    GBDT2: TGroupBox;
    dxDT2: TMonthCalendar;
    Shape245: TShape;
    Shape246: TShape;
    clVEN_PED_CLI: TLabel;
    Shape247: TShape;
    Shape248: TShape;
    clVEN_PED_VEN: TLabel;
    Shape249: TShape;
    Shape250: TShape;
    clVEN_PED_REP: TLabel;
    Shape251: TShape;
    Shape252: TShape;
    clVEN_PED_COL: TLabel;
    Shape253: TShape;
    Shape254: TShape;
    clVEN_PED_GRP: TLabel;
    Shape255: TShape;
    Shape256: TShape;
    clVEN_PED_CAT: TLabel;
    cbVEN_PED_CLI: TdxPickEdit;
    cbVEN_PED_VEN: TdxPickEdit;
    cbVEN_PED_REP: TdxPickEdit;
    cbVEN_PED_COL: TdxPickEdit;
    cbVEN_PED_GRP: TdxPickEdit;
    cbVEN_PED_CAT: TdxPickEdit;
    QConsultaAux: TIBQuery;
    Shape81: TShape;
    Shape82: TShape;
    Label10: TLabel;
    cbFIN_REC_NAFA: TdxPickEdit;
    Shape83: TShape;
    LATPCO: TLabel;
    Shape84: TShape;
    PETPCO: TdxPickEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSaiClick(Sender: TObject);
    procedure dxDT1Click(Sender: TObject);
    procedure cbCAD_CLI_TRELChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbCAI_MOV_TRELChange(Sender: TObject);
    procedure cbNFE_CAB_TRELChange(Sender: TObject);
    procedure cbPAG_COM_DESCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbCAD_PRO_TRELChange(Sender: TObject);
    procedure cbCAD_PRO_CART1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPriClick(Sender: TObject);
    procedure BVisClick(Sender: TObject);
    procedure cbVEN_PED_TRELChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbFIN_REC_STPDChange(Sender: TObject);
    procedure cbFIN_REC_DATAChange(Sender: TObject);
    procedure cbFIN_REC_STFIChange(Sender: TObject);
    procedure BSavClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NOME_TABELA_RELATORIO: string;
    CDPD,CDRO,CDBX,CDNF: string;
    Data1,Data2: TDate;
    cDATA: string;

    procedure _Report(AReport: TQuickRep;ATitulo: String);
    procedure ENVIA_RELATORIO(WTag: Word);
    procedure VEN_PRC_PROGRAMACAO_COMPRA;
    procedure VEN_PRC_ORDEM_COMPRA;
    procedure VEN_PRC_CONFERENCIA;
    procedure VEN_PED_PEDIDO_VENDA;
    procedure VEN_PED_PEDIDO_CONFERENCIA;
    procedure VEN_PED_PEDIDO_SEPARACAO(IDEP: STRING);
    procedure VEN_PED_PEDIDO_COBRANCA;
    procedure VEN_PED_PEDIDO_SEMBAIXA;
    procedure VEN_PED_PEDIDO_COMBAIXA(stco: string);
    procedure VEN_PED_COBRANCA_SEMBAIXA;
    procedure VEN_PED_COBRANCA_COMBAIXA(stco: string);
    procedure VEN_PED_PEDIDO_ORCAMENTO;
    procedure VEN_COB_ORCAMENTO_SEMBAIXA(VALO: double);
    procedure ROM_CAB_ROMANEIO_COBRANCA_SINTETICO;
    procedure ROM_CAB_ROMANEIO_COBRANCA_BANCARIO;
    procedure ROM_CAB_ROMANEIO_COBRANCA_SEMBAIXA;
    procedure ROM_CAB_ROMANEIO_COBRANCA_COMBAIXA;
    procedure ROM_CAB_ROMANEIO_COBRANCA_ANALITICO;
    procedure ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_SEMBAIXA;
    procedure ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_COMBAIXA;
    procedure ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_BANCARIO;
    procedure ROM_CAB_CONFERENCIA_001;
    procedure NFE_DUP_EMI;
    procedure PAG_COM_PAGAMENTO;
    procedure FIN_REC_TITULOS;
    procedure FIN_REC_CONTAS;
    procedure VEN_PRG_PROGRAMACAO_VENDA;
    procedure GER_PRG_PRO_GERAL;
    procedure VEN_PED_PROGRAMACAO_SEMBAIXA;
    function CALCULA_DATA_MEDIA(cdbx: string): TDate;
  end;

var
  frmrelatorio_geral: Tfrmrelatorio_geral;
                BRet: boolean;
implementation

uses uPrincipal, bPrincipal,
  pExporta,parquivo_geral

  {$IF DEFINED(DEF_ERP)}
       ,qfin_dup, qfin_rec_ger, qfin_rec_ger_consolidado, qpag_com, pfin_dup,qPCOrdem,
       qven_prc,qPCConferencia, 
       qven_prg,qger_prg_pro_ger,
       qven_ped,qven_con, qsep_ped, qcob_ped, qcob_ped_oca,
       qrom_con_001, qcob_rom, qcob_rom_ref

  {$ELSEIF DEFINED(DEF_FIN)}
       ,qfin_dup, qfin_rec_ger, qfin_rec_ger_consolidado, qpag_com, pfin_dup,qPCOrdem

  {$ELSEIF DEFINED(DEF_PDC)}
       ,qPCOrdem, qPCConferencia

  {$ELSEIF DEFINED(DEF_PDV)}
       ,qven_prg,qger_prg_pro_ger,
       qven_ped,qven_con, qsep_ped, qcob_ped, qcob_ped_oca,
       qrom_con_001, qcob_rom, qcob_rom_ref

  {$IFEND}

  ;

{$R *.dfm}

procedure Tfrmrelatorio_geral.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
  
  oOTransact(TCadastro);
  oOTransact(TSCadastro);

  tsCAD_CLI.TabVisible := false;
  tsCAD_PRO.TabVisible := false;
  tsCAD_REP.TabVisible := false;
  tsCAD_TRA.TabVisible := false;
  tsVEN_PRG.TabVisible := false;
  tsVEN_PRC.TabVisible := false;
  tsVEN_PED.TabVisible := false;
  tsROM_CAB.TabVisible := false;
  tsNFE_CAB.TabVisible := false;
  tsCAI_MOV.TabVisible := false;
  tsCAD_FUN.TabVisible := false;
  tsFIN_DUP.TabVisible := false;
  tsFIN_REC.TabVisible := false;
  tsGER.TabVisible     := false;
end;

procedure Tfrmrelatorio_geral.FormShow(Sender: TObject);
begin
  dxDT1.Date := StartOfTheMonth(RECParametros.SHE_DATA);
  dxDT2.Date := endOfTheMonth(RECParametros.SHE_DATA);

  if PCMain.ActivePage = TSVen_Ped then
  with QConsulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   DESCRICAO FROM TAB_GRP');
    SQL.Add('ORDER BY DESCRICAO');
    Open;
    while not eof do
    begin
      cbVEN_PED_GRP.Items.Add(Fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   DESCRICAO FROM TAB_SCT');
    SQL.Add('ORDER BY DESCRICAO');
    Open;
    while not eof do
    begin
      cbVEN_PED_CAT.Items.Add(Fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmrelatorio_geral.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;

  if TSven_ped.TabVisible then
  cbVEN_PED_TREL.Text := RECUsuarios.Relatorio;
end;

procedure Tfrmrelatorio_geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Screen.Cursor := crAppStart;
  Action := caFree;
end;

procedure Tfrmrelatorio_geral.FormDestroy(Sender: TObject);
begin
  try     oFTransact(TCadastro);
  finally Screen.Cursor := crDefault;
  end;

  OnDestroy          := Nil;
  Frmrelatorio_geral := Nil;
end;

procedure Tfrmrelatorio_geral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_ESCAPE: BSai.Click;
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;
end;

procedure Tfrmrelatorio_geral.BVisClick(Sender: TObject);
begin
  ENVIA_RELATORIO(0);
end;

procedure Tfrmrelatorio_geral.BPriClick(Sender: TObject);
begin
  ENVIA_RELATORIO(1);
end;

procedure Tfrmrelatorio_geral.BSavClick(Sender: TObject);
begin
  ENVIA_RELATORIO(3);
end;

procedure Tfrmrelatorio_geral.BSaiClick(Sender: TObject);
begin
  Close;
end;

function Tfrmrelatorio_geral.CALCULA_DATA_MEDIA(cdbx: string): TDate;
var
  DTMinVencto: TDate;
  TOTVencto,
  TOTGeral   : Double;
begin
  with QConsulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT FIN_DVEN,SUM(FIN_VALO)');
    SQL.Add('FROM '+SLPrincipal.Values[IFThen(cbFIN_REC_TREL.Tag = 0,'fin_rec_ban_bai','fin_rec_car_bai')]);
    SQL.Add('WHERE FIN_CDBX = '''+cdbx+'''');
    SQL.Add('AND   NOT FIN_TITU LIKE ''%/P%''');
    SQL.Add('AND   NOT FIN_TITU LIKE ''%/N%''');
    SQL.Add('AND   FIN_STFI <> ''CANCELADO''');
    SQL.Add('AND   FIN_STFI <> ''DEVOLUÇÃO''');
    SQL.Add('AND   FIN_STFI <> ''ABATIMENTO''');
    SQL.Add('AND   FIN_TIPO <> ''DEVOLUÇÃO''');
    SQL.Add('AND   FIN_TIPO <> ''ABATIMENTO''');
    SQL.Add('GROUP BY FIN_DVEN');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;

    DTMinVencto := Fields[0].AsDateTime;
    TOTVencto   := 0;
    TOTGeral    := 0;

    while not Eof do
    begin
      TOTVencto := TOTVencto + (Fields[1].AsFloat * IFThen(Fields[0].AsDateTime > DTMinVencto,DaysBetWeen(DTMinVencto,Fields[0].AsDateTime),1));
      TOTGeral  := TOTGeral  +  Fields[1].AsFloat;
      Next;
    end;
  end;

  result := IFThen(TOTGeral <= 0,0,
            IFThen(TOTGeral = TOTVencto,DTMinVencto,IncDay(DTMinVencto,Trunc(TOTVencto / TOTGeral))));
end;

procedure Tfrmrelatorio_geral.dxDT1Click(Sender: TObject);
begin
  if tsCAD_PRO.TabVisible then
  begin
    if (cbCAD_PRO_DATA.Enabled) and (cbCAD_PRO_DATA.Text = '') then
    begin
      if cbCAD_PRO_TREL.Text = 'ESTOQUE DE PRODUTOS' then
      cbCAD_PRO_DATA.Text := 'DATA ENTRADA' else
      cbCAD_PRO_DATA.Text := 'DATA LANÇAMENTO';
    end;
  end
  else if tsCAD_REP.TabVisible then
  begin
    if (cbCAD_REP_DATA.Enabled) and (cbCAD_REP_DATA.Text = '') then
        cbCAD_REP_DATA.Text := 'DATA VENDA';
  end
  else if tsCAD_CLI.TabVisible then
  begin
    if (cbCAD_CLI_DATA.Enabled) and (cbCAD_CLI_DATA.Text = '') then
        cbCAD_CLI_DATA.Text := 'DATA VENDA';
  end
  else if tsGER.TabVisible then
  begin
    if (cbGER_DATA.Enabled) and (cbGER_DATA.Text = '') then
    begin
      if copy(cbGER_TREL.Text,1,7) = 'COMPRAS' then
      cbGER_DATA.Text := 'DATA CHEGADA - PREVISÃO' else
      if cbGER_TREL.Text = 'KARDEX DE VENDAS POR PRODUTOS' then
      cbGER_DATA.Text := 'DATA VENDA+DATA PREVISTA DE CHEGADA' else
      cbGER_DATA.Text := 'DATA VENDA';
    end;
  end
  else if tsVEN_PED.TabVisible then
  begin
    if (cbVEN_PED_DATA.Enabled) and (cbVEN_PED_DATA.Text = '') then
    begin
      cbVEN_PED_DATA.Text := 'DATA EMISSÃO';
    end;
  end
  else if tsCAD_CON.TabVisible then
  begin
    if (cbCAD_CON_DATA.Enabled) and (cbCAD_CON_DATA.Text = '') then
    cbCAD_CON_DATA.Text := 'DATA LANÇAMENTO';
  end
  else if tsCAI_MOV.TabVisible then
  begin
    if (cbCAI_MOV_DATA.Enabled) and (cbCAI_MOV_DATA.Text = '') then
    begin
      cbCAI_MOV_DATA.SetFocus;
      raise exception.Create('Tipo de Data de Pesquisa não Selecionado !');
    end;

    cbCAI_MOV_CDCX.Text := 'TODOS';
  end
  else if tsNFE_CAB.TabVisible then
  begin
    if (cbNFE_CAB_DATA.Enabled) and (cbNFE_CAB_DATA.Text = '') then
    begin
      cbNFE_CAB_DATA.SetFocus;
      raise exception.Create('Tipo de Data de Pesquisa não Selecionado !');
    end;
  end
  else if tsFIN_REC.TabVisible then
  begin
    if cbFIN_REC_DATA.Text = '' then
       if Pos(LeftStr(cbFIN_REC_STPD.Text,3),'ABADEV') > 0 then
          cbFIN_REC_DATA.Text := 'DATA FATURA' else
       if Pos(LeftStr(cbFIN_REC_STFI.Text,4),'PAGO') > 0 then
          cbFIN_REC_DATA.Text := 'DATA PAGAMENTO' else
       if Pos(LeftStr(cbFIN_REC_STFI.Text,5),'PROTECARTÓRECUPNÃO P') > 0 then
          cbFIN_REC_DATA.Text := 'DATA BAIXA' else
          cbFIN_REC_DATA.Text := 'DATA VENCIMENTO';
  end
  else if tsFIN_PAG.TabVisible then
  begin
    if cbFIN_PAG_DATA.Text = '' then
    cbFIN_PAG_DATA.Text := 'DATA VENCIMENTO';
  end
  else if tsNFE_LOG.TabVisible then
  begin
    if cbNFE_LOG_DATA.Text = '' then
    cbNFE_LOG_DATA.Text := 'DATA LANÇAMENTO';
  end
  else if tsFIN_DUP.TabVisible then
  begin
    if cbFIN_DUP_DATA.Text = '' then
    cbFIN_DUP_TREL.Text := 'DATA VENCIMENTO';
  end;
end;

procedure Tfrmrelatorio_geral.cbCAD_CLI_TRELChange(Sender: TObject);
begin
  if (cbCAD_CLI_TREL.Text = 'ETIQUETA DE MALA DIRETA') then
  begin
    cbCAD_CLI_DATA.Enabled := false;
    clCAD_CLI_DATA.Enabled := false;
    cbCAD_CLI_DCLI.Enabled := false;
    clCAD_CLI_DCLI.Enabled := false;
    cbCAD_CLI_DCID.Enabled := false;
    clCAD_CLI_DCID.Enabled := false;
    cbCAD_CLI_ESTA.Enabled := false;
    clCAD_CLI_ESTA.Enabled := false;
  end
end;

procedure Tfrmrelatorio_geral.cbCAI_MOV_TRELChange(Sender: TObject);
begin
  cbCAI_MOV_TIPO.Enabled := ((cbCAI_MOV_TREL.Text =  'FLUXO DE CAIXA - ANALÍTICO'));
  cbCAI_MOV_STCO.Enabled := ((cbCAI_MOV_TREL.Text <> 'FLUXO DE CAIXA - SINTÉTICO')  and (cbCAI_MOV_TREL.Text <> 'FLUXO DE CAIXA - ANALÍTICO'));

  if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA - SINTÉTICO' then
  begin
    cbCAI_MOV_STFI.Enabled := false;
    cbCAI_MOV_DCLI.Enabled := false;
    cbCAI_MOV_DFOR.Enabled := false;
    cbCAI_MOV_DVEN.Enabled := false;
    cbCAI_MOV_DREP.Enabled := false;
  end
  else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA - ANALÍTICO' then
  begin
    cbCAI_MOV_STFI.Enabled := true;
    cbCAI_MOV_DCLI.Enabled := true;
    cbCAI_MOV_DFOR.Enabled := true;
    cbCAI_MOV_DVEN.Enabled := true;
    cbCAI_MOV_DREP.Enabled := true;
  end;
end;

procedure Tfrmrelatorio_geral.cbNFE_CAB_TRELChange(Sender: TObject);
begin
  if cbNFE_CAB_TREL.Text = 'RESUMO DE NOTAS FISCAIS' then
  begin
    cbNFE_CAB_TNFE.Text    := 'VENDA';
    cbNFE_CAB_DVEN.Enabled := false;
    cbNFE_CAB_DREP.Enabled := false;
    cbNFE_CAB_DTRA.Enabled := false;
    cbNFE_CAB_CPRO.Enabled := false;
  end
  else
  cbNFE_CAB_TNFE.Text := 'TODOS';
end;

procedure Tfrmrelatorio_geral.cbPAG_COM_DESCValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if cbPAG_COM_DESC.Text = '' then
     cbPAG_COM_DESC.Text := '0';

  cbPAG_COM_DESC.Text := formatfloat('0.00',strtofloat(cbPAG_COM_DESC.Text));   
end;

procedure Tfrmrelatorio_geral.cbCAD_PRO_TRELChange(Sender: TObject);
begin
  if (cbCAD_PRO_TREL.Text = 'ESTOQUE DE PRODUTOS') then
  cbCAD_PRO_TEST.Text := 'DISPONÍVEL' else
  if (cbCAD_PRO_TREL.Text = 'CATÁLOGO DE PRODUTOS') then
  cbCAD_PRO_TEST.Text := '';
end;

procedure Tfrmrelatorio_geral.cbCAD_PRO_CART1Change(Sender: TObject);
begin
  cbCAD_PRO_CART2.Text := cbCAD_PRO_CART1.Text;
end;

procedure TFrmRelatorio_Geral.ENVIA_RELATORIO(WTag: Word);
begin
  try
    tag := WTag;
    if tsVEN_PRC.TabVisible then
    begin
      if cdpd = '' then
         raise exception.Create('Número do pedido não selecionado !');

      if cbVEN_PRC_TREL.Text = 'ORDEM DE COMPRA' then
         VEN_PRC_ORDEM_COMPRA else
      if Pos('SIMPLES CONFERÊNCIA',cbVEN_PRC_TREL.Text) > 0 then
         VEN_PRC_CONFERENCIA;
    end
    else if tsVEN_PRG.TabVisible then
    begin
      if cbVEN_PRG_TREL.Text = 'PROGRAMAÇÃO DE VENDA' then
      begin
        if cdpd = '' then
           raise exception.Create('Número do pedido não selecionado !');

        VEN_PRG_PROGRAMACAO_VENDA;
      end else
      if cbVEN_PRG_TREL.Text = 'PROGRAMAÇÕES DE VENDAS DE PRODUTOS - GERAL' then
      begin
        GER_PRG_PRO_GERAL;
      end;
    end
    else if tsROM_CAB.TabVisible then
    begin
      if cbROM_CAB_TREL.Text = 'ROMANEIO PARA SIMPLES CONFERENCIA' then
      begin
        if cdro = '' then
        raise exception.Create('Número do romaneio não selecionado !');

        with QConsulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT VEN_QTSP,VEN_QTPC');
          SQL.Add('FROM   TAB_PED,'+SLPrincipal.Values['rom_cab']+' "ROM_CAB"');
          SQL.Add('WHERE  ROM_STPD   = VEN_TIPO');
          SQL.Add('AND    ROM_CAB.ID = '''+cdro+'''');
          Open;
          ROM_CAB_CONFERENCIA_001;
        end;
      end
      else if cbROM_CAB_TREL.Text = 'ROMANEIO DE COBRANÇA SINTÉTICO' then
        ROM_CAB_ROMANEIO_COBRANCA_SINTETICO
      else if cbROM_CAB_TREL.Text = 'ROMANEIO DE COBRANÇA ANALÍTICO' then
        ROM_CAB_ROMANEIO_COBRANCA_ANALITICO;
    end
    else if tsVEN_PED.TabVisible then
    begin
      if cbVEN_PED_TREL.Text = 'PEDIDO DE VENDA' then
      VEN_PED_PEDIDO_VENDA
      else if cbVEN_PED_TREL.Text = 'PEDIDO DE VENDA (CUPOM)' then
      begin
      end
      else if cbVEN_PED_TREL.Text = 'SIMPLES CONFERENCIA' then
      begin
        if cdpd = '' then
        raise exception.Create('Número do pedido não selecionado !');

        VEN_PED_PEDIDO_CONFERENCIA;
      end
      else if cbVEN_PED_TREL.Text = 'SEPARAÇÃO DE PEDIDO DE VENDA' then
      begin
        VEN_PED_PEDIDO_SEPARACAO(RECParametros.EP_ID);
        if RECParametros.EP_ID = 4 then
        begin
          VEN_PED_PEDIDO_SEPARACAO('8');
          VEN_PED_PEDIDO_SEPARACAO('9');
        end;
      end
      else if cbVEN_PED_TREL.Text = 'PEDIDO DE VENDA DE COBRANÇA' then
        VEN_PED_PEDIDO_COBRANCA
      else if cbVEN_PED_TREL.Text = 'ORÇAMENTO DE VENDA' then
        VEN_PED_PEDIDO_ORCAMENTO;
    end
    else if tsCAI_MOV.TabVisible then
    begin
      if cbCAI_MOV_TREL.Text = '' then
         raise exception.Create('Tipo de relatório não selecionado !');

    end
    else if tsFIN_DUP.TabVisible then
    begin
      if cbFIN_DUP_TREL.Text = '' then
         raise exception.Create('Tipo de relatório não selecionado !');

      if cbFIN_DUP_TREL.Text = 'DUPLICATAS' then
      NFE_DUP_EMI;
    end
    else if tsFIN_REC.TabVisible  then
    begin
      if Pos(cbFIN_REC_TREL.Text,'RECEBIMENTOS DE CONTAS BANCÁRIASRECEBIMENTOS DE CONTAS EM CARTEIRA') > 0 then
      FIN_REC_CONTAS else
      if Pos(cbFIN_REC_TREL.Text,'RECEBIMENTOS DE TÍTULOS BANCÁRIOSRECEBIMENTOS DE TÍTULOS EM CARTEIRA') > 0 then
      FIN_REC_TITULOS;
    end
    else if tsNFE_CAB.TabVisible then
    begin
    end
    else if tsPAG_COM.TabVisible then
    begin
      if cbPAG_COM_TREL.Text = '' then
         raise exception.Create('Tipo de relatório não selecionado !');

      if cbPAG_COM_TREL.Text = 'PAGAMENTO DE COMISSÃO DE VENDA' then
      PAG_COM_PAGAMENTO;
    end
    else if tsNFE_LOG.TabVisible then
    begin
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmrelatorio_geral.cbVEN_PED_TRELChange(Sender: TObject);
begin
  RECUsuarios.Relatorio := cbVEN_PED_TREL.Text;
end;

procedure Tfrmrelatorio_geral.cbFIN_REC_DATAChange(Sender: TObject);
begin
  if Pos(LeftStr(cbFIN_REC_STPD.Text,3),'ABADEV') > 0 then
  begin
    cbFIN_REC_DATA.Text := 'DATA FATURA';
    cbFIN_REC_STFI.Text := 'TODOS';
  end else
  if cbFIN_REC_DATA.Text  = 'DATA PAGAMENTO' then
     cbFIN_REC_STFI.Text := IFThen(Pos(LeftStr(cbFIN_REC_STFI.Text,4),'PAGO') > 1,cbFIN_REC_STFI.Text,'PAGO') else
  if cbFIN_REC_DATA.Text  = 'DATA BAIXA' then
     cbFIN_REC_STFI.Text := IFThen(Pos(LeftStr(cbFIN_REC_STFI.Text,5),'BAIXAPROTECARTÓRECUPNÃO P') > 1,cbFIN_REC_STFI.Text,IFThen(cbFIN_REC_TREL.Tag = 0,'PROTESTADO','NÃO PAGO'));
end;

procedure Tfrmrelatorio_geral.cbFIN_REC_STPDChange(Sender: TObject);
begin
  if Pos(LeftStr(cbFIN_REC_STPD.Text,3),'ABADEV') > 0 then
  begin
    cbFIN_REC_DATA.Text := 'DATA FATURA';
    cbFIN_REC_STFI.Text := 'TODOS';
  end;  
end;

procedure Tfrmrelatorio_geral.cbFIN_REC_STFIChange(Sender: TObject);
begin
  if (Pos(LeftStr(cbFIN_REC_STFI.Text,4),'PAGO') > 0) and (cbFIN_REC_DATA.Text <> 'DATA PAGAMENTO') then
      cbFIN_REC_DATA.Text := 'DATA PAGAMENTO' else
  if (Pos(LeftStr(cbFIN_REC_STFI.Text,5),'BAIXAPROTECARTÓRECUPNÃO P') > 0) and (cbFIN_REC_DATA.Text <> 'DATA BAIXA') then
      cbFIN_REC_DATA.Text := 'DATA BAIXA';
end;

procedure Tfrmrelatorio_geral._Report(AReport: TQuickRep;ATitulo: String);
var
  vTitulo,
  vEmpresa: TQRLabel;
  vLogo: TQRImage;
begin
  with AReport do
  begin
    { Define Impressora }
    oPrinterSelect(Application.Handle,'Relatórios');

    { Título }
    ReportTitle     := ATitulo;
    vTitulo         := FindComponent('QRLTitulo') as TQRLabel;
    vTitulo.Caption := ReportTitle;

    { Cabeçalho }
    vEmpresa         := FindComponent('QRLEmpresa') as TQRLabel;
    vEmpresa.Caption := RECParametros.EP_RZ_NO;

    { Imagem Logo }
    vLogo := FindComponent('QRIEmpresa') as TQRImage;
    vLogo.Picture.Assign(RECParametros.IMG_JPG_REL.Picture);
  end;
end;

procedure Tfrmrelatorio_geral.NFE_DUP_EMI;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_FIN)}

  oPrinterSelect(Handle,'Boletos');

  if qrpfin_dup  = nil then
     qrpfin_dup := Tqrpfin_dup.Create(Self);

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbFIN_DUP_DATA.Text = 'DATA EMISSÃO' then
  cDATA := 'NFE_DUP.NFE_DNFE' else
  if cbFIN_DUP_DATA.Text = 'DATA VENCIMENTO' then
  cDATA := 'NFE_DUP.NFE_DVEN';

  if (cbFIN_DUP_STFI.Text <> 'TODOS') or (cbFIN_DUP_IDBX.Text <> 'TODOS') then
  with frmfin_dup.cadastro do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   NFE_DUP.*,NFE_CAB.NFE_VNF,NFE_CAB.NFE_CHAV,');
    SelectSQL.Add('         CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_DDD,CAD_CLI.CLI_TEL1,CAD_CLI.CLI_CNPJ,CAD_CLI.CLI_INSC,');
    SelectSQL.Add('         CAD_CLI.CLI_TLOG,CAD_CLI.CLI_LOGR,CAD_CLI.CLI_CEP ,CAD_CLI.CLI_NUME,CAD_CLI.CLI_COMP,CAD_CLI.CLI_BAI ,CAD_CLI.CLI_CID ,CAD_CLI.CLI_ESTA,');
    SelectSQL.Add('         CAD_CLI.CLI_TLOC,CAD_CLI.CLI_LOGC,CAD_CLI.CLI_CEPC,CAD_CLI.CLI_NUMC,CAD_CLI.CLI_COMC,CAD_CLI.CLI_BAIC,CAD_CLI.CLI_CIDC,CAD_CLI.CLI_ESTC');
    SelectSQL.Add('FROM     CAD_CLI,'+SLPrincipal.Values['nfe_dup']+' "NFE_DUP" ,'+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
    SelectSQL.Add('WHERE    CAD_CLI.ID = NFE_DUP.NFE_CFAV');
    SelectSQL.Add('AND      NFE_DUP.NFE_CCAB = NFE_CAB.ID');
    SelectSQL.Add('AND      NFE_CAB.NFE_STA  = ''0''');

    if cbFIN_DUP_STFI.Text <> 'TODOS' then
    SelectSQL.Add('AND NFE_DUP.NFE_STFI = '''+cbFIN_DUP_STFI.Text+'''');

    if cbFIN_DUP_IDBX.Text = '' then
    begin
      SelectSQL.Add('AND NFE_IDBX = '' ''');
      if cData <> '' then
      SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
      SelectSQL.Add('OR  CAD_CLI.ID = NFE_DUP.NFE_CFAV');
      SelectSQL.Add('AND NFE_DUP.NFE_CCAB = NFE_CAB.ID');
      SelectSQL.Add('AND NFE_CAB.NFE_STA  = ''0''');
      SelectSQL.Add('AND NFE_IDBX IS NULL');
      if cbFIN_DUP_STFI.Text <> 'TODOS' then
      SelectSQL.Add('AND NFE_DUP.NFE_STFI = '''+cbFIN_DUP_STFI.Text+'''');
      if cData <> '' then
      SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
    end else
    if cbFIN_DUP_IDBX.Text <> 'TODOS' then
    SelectSQL.Add('AND NFE_IDBX = '''+cbFIN_DUP_IDBX.Text+'''');

    if cbFIN_DUP_IDBX.Text = '' then
    else
    if cData <> '' then
    SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

    SelectSQL.Add('ORDER BY NFE_TITU');
    Open;
  end;

  with qrpfin_dup do
  try
    oOTransact(qrpfin_dup.TCadastro);
    { Cabeçalho Página }
    qrpfin_dup.QRITituloLogo.Picture.Assign(RECParametros.IMG_JPG_REL.Picture);
    qrpfin_dup.QRITituloLogo2.Picture.Assign(RECParametros.IMG_JPG_REL.Picture);

    qrpfin_dup.qrlraza1.Caption  := RECParametros.EP_RZ_NO;
    qrpfin_dup.qrllogr1.Caption  := RECParametros.LOG_TIPO+' '+RECParametros.LOG_NO+', '+RECParametros.LOG_NU;
    qrpfin_dup.qrlend1.Caption   := RECParametros.LOG_BAI_NO;
    qrpfin_dup.qrlend2.Caption   := 'CEP '+RECParametros.LOG_CEP+' - '+RECParametros.LOG_LOC_NO+' - '+RECParametros.LOG_UF;
    qrpfin_dup.qrltel1.Caption   := RECParametros.TEL_NU_MASK;

    qrpfin_dup.qrlcnpj1.Caption  := copy(RECParametros.CNPJ,1,2)+'.'+copy(RECParametros.CNPJ,3,3)+'.'+
                                    copy(RECParametros.CNPJ,6,3)+'/'+copy(RECParametros.CNPJ,9,4)+'-'+
                                    copy(RECParametros.CNPJ,13,2);
    qrpfin_dup.qrlinsc1.Caption  := RECParametros.IE;

    qrpfin_dup.qrlraza2.Caption  := qrpfin_dup.qrlraza1.Caption;
    qrpfin_dup.qrlraza3.Caption  := qrpfin_dup.qrlraza1.Caption;
    qrpfin_dup.qrlraza4.Caption  := qrpfin_dup.qrlraza1.Caption;
    qrpfin_dup.qrlraza5.Caption  := qrpfin_dup.qrlraza1.Caption;
    qrpfin_dup.qrllogr2.Caption  := qrpfin_dup.qrllogr1.Caption;
    qrpfin_dup.qrlend3.Caption   := qrpfin_dup.qrlend1.Caption;
    qrpfin_dup.qrlend4.Caption   := qrpfin_dup.qrlend2.Caption;
    qrpfin_dup.qrltel2.Caption   := qrpfin_dup.qrltel1.Caption;
    qrpfin_dup.qrlcnpj2.Caption  := qrpfin_dup.qrlcnpj1.Caption;
    qrpfin_dup.qrlinsc2.Caption  := qrpfin_dup.qrlinsc1.Caption;

    qrpfin_dup.Prepare;
    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(qrpfin_dup.TCadastro);
    freeAndNil(qrpfin_dup);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PRC_CONFERENCIA;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDC)}

  if qrpPCConferencia = nil then
     qrpPCConferencia := TqrpPCConferencia.Create(Self);

  with qrpPCConferencia do
  try
    oOTransact(TRelatorio);
    with roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_COM_CAB.*,CAD_FOR.FOR_FANT,FOR_RAZA,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,REP_RAZA,PAG_DPAG');
      SQL.Add('FROM     CAD_FOR,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
      SQL.Add('WHERE    PED_COM_CAB.ROM_CFOR = CAD_FOR.ID');
      SQL.Add('AND      PED_COM_CAB.ROM_CCOM = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_COM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_COM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_COM_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_COM_CAB.ID DESC');
      Open;
    end;

    with ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PCFK.ROM_CCAB AS IDPC,CAST(PCFK.ROM_ITEM AS INTEGER) AS ROM_ITEM,');
      SQL.Add('         TRIM(PCFK.ROM_DPRO||'' ''||COALESCE(PCFK.DGCP,'''')) AS ROM_DPRO,PCFK.ROM_DUNI,');
      SQL.Add('         PCFK.ROM_QTDE,PCFK.ROM_QTRL,PCFK.ROM_QTPD,PCFK.ROM_RLPD,PCFK.ROM_UNIT,PCFK.ROM_TOTA,');
      SQL.Add('         CP.ID AS IDCP,CP.PRO_CART,CP.PRO_CPRO,');
      SQL.Add('         CP.UCDBE,CP.UQTRL,CP.UQTDE,CP.UPSBR,CP.UPSLQ,');
      SQL.Add('         CP.UCON AS PRO_ESPC,');
      SQL.Add('         CP.REST');
      SQL.Add('FROM   '+SLPrincipal.Values['ped_com_ite']+' AS PCFK');
      SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = PCFK.ROM_CPRO)');
      SQL.Add('JOIN     TAB_COR AS TC ON (TC.ID = CP.IDCOR )');
      SQL.Add('WHERE    PCFK.ROM_CCAB = '''+cdpd+'''');

      if cbVEN_PRC_TREL.Text = 'SIMPLES CONFERÊNCIA - RECEBIDO' then
      SQL.Add('AND PCFK.ROM_STAV = ''FINALIZADO''') else
      if cbVEN_PRC_TREL.Text = 'SIMPLES CONFERÊNCIA - PENDENTE' then
      SQL.Add('AND PCFK.ROM_STAV <> ''FINALIZADO''');
      SQL.Add('ORDER BY ROM_ITEM');
      Open;
    end;

    { Cabeçalho }
    _Report(qrpPCConferencia,ReportTitle);

    { Rodapé }
    QRLRodapeRelatorio.Caption := 'Report '  +Name+' '+FormatDateTime('dd/mm/yy hh:mm',Now);
    QRLRodapeUsuario.Caption   := 'Usuário  '+oPrimeiraLetraMaiuscula(RECUsuarios.Login)+' Email '+RECUsuarios.Email+' '+RECParametros.TEL_NU_MASK;
    QRLRodapeSelectSQL.Caption := 'Empresa ' +RECParametros.EP_NO;

    { Define Impressora }
    oPrinterSelect(Application.Handle,'Pedidos');
    Prepare;

    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(TRelatorio);
    freeAndNil(qrpPCConferencia);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PRC_ORDEM_COMPRA;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDC)}

  if qrpPCOrdem = nil then
     qrpPCOrdem := TqrpPCOrdem.Create(Self);

  with qrpPCOrdem do
  try
    oOTransact(TRelatorio);
    with roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT PC.ID,PC.ROM_DERO,PC.ROM_DROM,PC.ROM_DEXP,PC.ROM_DEXP-CURRENT_DATE AS ROM_QEXP,');
      SQL.Add('       CF.ID AS ROM_IDCF,CF.FOR_FANT,CF.FOR_RAZA,CF.FOR_CNPJ,CF.FOR_INSC,CF.FOR_CPF,');
      SQL.Add('       CF.FOR_CONT,CF.FOR_MAIL,FFONE(CF.FOR_DDD,''D'')||'' ''||FFONE(CF.FOR_TEL1,''F'') AS FOR_FONE,FFONE(CF.FOR_CEL,''F'') AS FOR_CEL,');
      SQL.Add('       CF.FOR_CID ,CF.FOR_ESTA,');
      SQL.Add('       CF.ID AS ROM_IDCV,CV.USU_DUSU AS ROM_DECV,');
      SQL.Add('       TPRZ.ID AS ROM_IDPRZ,TPRZ.PAG_DPAG AS ROM_DEPRZ,TPRZ.PAG_PRAZ AS ROM_QTPRZ,');
      SQL.Add('       PC.ROM_DTRA,IIF(PC.ROM_MFRT = ''1'',''CIF'',''FOB'') AS ROM_MFRT');
      SQL.Add('FROM '+SLPrincipal.Values['ped_com_cab']+' AS PC');
      SQL.Add('JOIN   CAD_FOR         AS CF   ON (CF.ID   = PC.ROM_CFOR)');
      SQL.Add('JOIN   CAD_USU         AS CV   ON (CV.ID   = PC.ROM_CCOM)');
      SQL.Add('JOIN   TAB_PAG         AS TPRZ ON (TPRZ.ID = PC.ROM_CPAG)');
      SQL.Add('WHERE  PC.ID = '''+CDPD+'''');
      Prepare;
      Open;
    end;

    { Cabeçalho }
    _Report(qrpPCOrdem,ReportTitle);

    { Rodapé }
    QRLRodapeRelatorio.Caption := 'Report '  +Name+' '+FormatDateTime('dd/mm/yy hh:mm',Now);
    QRLRodapeUsuario.Caption   := 'Usuário  '+oPrimeiraLetraMaiuscula(RECUsuarios.Login)+' Email '+RECUsuarios.Email+' '+RECParametros.TEL_NU_MASK;
    QRLRodapeSelectSQL.Caption := 'Empresa ' +RECParametros.EP_NO;

    { Define Impressora }
    oPrinterSelect(Application.Handle,'Pedidos');

    Prepare;
    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(TRelatorio);
    freeAndNil(qrpPCOrdem);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PRC_PROGRAMACAO_COMPRA;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDC)}

  oPrinterSelect(Application.Handle,'Pedidos');

  if qrpven_prc = nil then
  qrpven_prc := Tqrpven_prc.Create(Self);

  with qrpven_prc do
  try
    oOTransact(qrpven_prc.TCadastro);
    with qrpven_prc.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_COM_CAB.*,CAD_FOR.FOR_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_FOR,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
      SQL.Add('WHERE    PED_COM_CAB.ROM_CFOR = CAD_FOR.ID');
      SQL.Add('AND      PED_COM_CAB.ROM_CCOM = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_COM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_COM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_COM_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_COM_CAB.ID DESC');
      Open;
    end;

    with qrpven_prc.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DUNI,CAD_PRO.PRO_COMP,CAD_PRO.PRO_LARG,CAD_PRO.PRO_PESO,CAD_PRO.CDCF,CAD_PRO.PRO_GRAM,');
      SQL.Add('         PED_COM_ITE.*');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_com_ite']+' "PED_COM_ITE"');
      SQL.Add('WHERE    PED_COM_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_COM_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_COM_ITE.ROM_ITEM');
      Open;
    end;

    if cbVEN_PRC_TREL.Text = 'PROGRAMAÇÃO DE COMPRA PARA VENDEDORES' then
    begin
      qrpven_prc.qrlfor.Caption := '';
      qrpven_prc.qrlref.Caption := '';
      qrpven_prc.qrlprc.Caption := '';

      qrpven_prc.qrdref.DataField := '';
      qrpven_prc.qrdprc.DataField := '';
    end;

    { Cabeçalho Página }
    _Report(qrpven_prc,'Programação de Compra');

    qrpven_prc.Prepare;
    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(qrpven_prc.TCadastro);
    freeAndNil(qrpven_prc);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.PAG_COM_PAGAMENTO;
var
  RECRelatorios: TRECRelatorios;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_FIN)}

  RECRelatorios.PrinterName := 'Relatórios';
  RECRelatorios.PrintTAG  := Tag;
  RECRelatorios.Handle    := Self.Handle;

  oPrinterSelect(Application.Handle,'Relatórios');
  if qrppag_com = Nil then
  begin
    qrppag_com := Tqrppag_com.Create(Self,RECRelatorios);
    with qrppag_com do
    try WinControlFormCreate(qrppag_com);
    finally WinControlFormDestroy(qrppag_com);
    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_COBRANCA;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  uConstrucao('Hoje não !');
  Abort;


  oPrinterSelect(Application.Handle,'Romaneios');

  if qrpcob_ped = nil then
     qrpcob_ped := Tqrpcob_ped.Create(Self);

  try
    oOTransact(qrpcob_ped.TCadastro);
    with qrpcob_ped.relatorio do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID      ,PK.ROM_DERO  ,PK.ROM_DROM,FK.ROM_CDRO,PK.ROM_CDNF,PK.ROM_DNFS,');
      SQL.Add('       PK.ROM_CCLI,CL.CLI_FANT  ,CL.CLI_RAZA,PK.ROM_CVEN,CV.LOGIN AS DECV,PK.ROM_CREP,CR.REP_FANT,');
      SQL.Add('       PK.ROM_TSDE,PK.ROM_TDSC  ,PK.ROM_PDSC,PK.ROM_VDSC,PK.ROM_TCDE ,');
      SQL.Add('       FK.ROM_ITEM,CP.ID AS IDCP,CP.PRO_CART,CP.PRO_CPRO,FK.ROM_DPRO ,CP.PRO_COMP ,FK.DGCP,CP.PRO_CPRO||IIF(NOT FEMPTY(FK.DGCP),'' - '','''')||FK.DGCP AS DECP,');
      SQL.Add('       FK.ROM_DUNI,FK.ROM_QTDE  ,FK.ROM_QTRL,FK.ROM_UNIT,FK.ROM_TOTA ,');
      SQL.Add('       PK.ROM_STPD,PK.ROM_STCO  ,PK.ROM_CONC,PK.ROM_CPAG,TPG.PAG_DPAG,TPG.PAG_PARC,');
      SQL.Add('       PK.ROM_OBSE');
      SQL.Add('FROM '+SLPrincipal.Values['ped_ven_cab']+' AS PK');
      SQL.Add('JOIN   CAD_CLI  AS CL  ON (CL.ID  = PK.IDCL)');
      SQL.Add('JOIN   TAB_USER AS CV  ON (CV.ID  = PK.IDCV)');
      SQL.Add('JOIN   CAD_REP  AS CR  ON (CR.ID  = PK.IDCR)');
      SQL.Add('JOIN   TAB_PAG  AS TPG ON (TPG.ID = PK.CDPG)');
      SQL.Add('LEFT   JOIN '+SLPrincipal.Values['ped_ven_ite']+' AS FK ON (FK.IDPK = PK.ID)');
      SQL.Add('LEFT   JOIN   CAD_PRO  AS CP  ON (CP.ID  = FK.IDCP)');
      SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
      SQL.Add('AND    PK.ID   = '''+cdpd+'''');
      SQL.Add('ORDER  BY FK.ROM_ITEM');
      Open;
    end;

    { Cabeçalho Página }
    _Report(qrpcob_ped,
            IFThen(qrpcob_ped.relatorioROM_STPD.AsString = 'DEVOLUÇÃO' ,'Pedido de Devolução' ,
            IFThen(qrpcob_ped.relatorioROM_STPD.AsString = 'ABATIMENTO','Pedido de Abatimento',
            IFThen(qrpcob_ped.relatorioROM_STPD.AsString = 'SERVIÇO'   ,'Ordem de Serviço'    ,'Pedido de Venda de Cobrança'))));

    qrpcob_ped.qrlparc.Caption  := '('+oStrZero(qrpcob_ped.relatorioPAG_PARC.AsInteger,2)+')';
    qrpcob_ped.qrlpag.Caption   := qrpcob_ped.relatorioPAG_DPAG.AsString;
    qrpcob_ped.qrlpagina.Caption  := 'Página: '+qrpcob_ped.relatorioROM_CONC.AsString;
    qrpcob_ped.qrlrodape.Caption  := RECUsuarios.Login;

    qrpcob_ped.lanpa1.Caption  := '';
    qrpcob_ped.ladpa1.Caption  := '';
    qrpcob_ped.lavpa1.Caption  := '';
    qrpcob_ped.lanpa2.Caption  := '';
    qrpcob_ped.ladpa2.Caption  := '';
    qrpcob_ped.lavpa2.Caption  := '';
    qrpcob_ped.lanpa3.Caption  := '';
    qrpcob_ped.ladpa3.Caption  := '';
    qrpcob_ped.lavpa3.Caption  := '';
    qrpcob_ped.lanpa4.Caption  := '';
    qrpcob_ped.ladpa4.Caption  := '';
    qrpcob_ped.lavpa4.Caption  := '';
    qrpcob_ped.lanpa5.Caption  := '';
    qrpcob_ped.ladpa5.Caption  := '';
    qrpcob_ped.lavpa5.Caption  := '';
    qrpcob_ped.lanpa6.Caption  := '';
    qrpcob_ped.ladpa6.Caption  := '';
    qrpcob_ped.lavpa6.Caption  := '';
    qrpcob_ped.lanpa7.Caption  := '';
    qrpcob_ped.ladpa7.Caption  := '';
    qrpcob_ped.lavpa7.Caption  := '';
    qrpcob_ped.lanpa8.Caption  := '';
    qrpcob_ped.ladpa8.Caption  := '';
    qrpcob_ped.lavpa8.Caption  := '';
    qrpcob_ped.lanpa9.Caption  := '';
    qrpcob_ped.ladpa9.Caption  := '';
    qrpcob_ped.lavpa9.Caption  := '';
    qrpcob_ped.lanpa10.Caption := '';
    qrpcob_ped.ladpa10.Caption := '';
    qrpcob_ped.lavpa10.Caption := '';

    if cdbx = '' then
    VEN_PED_COBRANCA_SEMBAIXA
    else
    VEN_PED_COBRANCA_COMBAIXA(qrpcob_ped.relatorioROM_STCO.AsString);

    qrpcob_ped.Prepare;
    case FrmRelatorio_Geral.TAG of
      0: qrpcob_ped.PreviewModal;
      1: qrpcob_ped.Print;

      { PDF }
      2: try
           qrpcob_ped.ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_ped.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           qrpcob_ped.ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_ped.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           qrpcob_ped.ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_ped.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(qrpcob_ped.TCadastro);
    freeAndNil(qrpcob_ped);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_COBRANCA_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  with QConsulta do
  begin
    valo := qrpcob_ped.relatorioROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,');
    SQL.Add('       PAG_D010,PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018');
    SQL.Add('FROM   TAB_PAG');
    SQL.Add('WHERE  ID = '''+IntToStr(qrpcob_ped.relatorioROM_CPAG.AsInteger)+'''');
    Open;
  end;

  for i := 1 to QConsulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpcob_ped.lanpa1.Caption  := '01)';
             qrpcob_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[1].Value)));
             qrpcob_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpcob_ped.lanpa2.Caption  := '02)';
             qrpcob_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[2].Value)));
             qrpcob_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpcob_ped.lanpa3.Caption  := '03)';
             qrpcob_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[3].Value)));
             qrpcob_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpcob_ped.lanpa4.Caption  := '04)';
             qrpcob_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[4].Value)));
             qrpcob_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpcob_ped.lanpa5.Caption  := '05)';
             qrpcob_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[5].Value)));
             qrpcob_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpcob_ped.lanpa6.Caption  := '06)';
             qrpcob_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[6].Value)));
             qrpcob_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpcob_ped.lanpa7.Caption  := '07)';
             qrpcob_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[7].Value)));
             qrpcob_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpcob_ped
             .lanpa8.Caption  := '08)';
             qrpcob_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[8].Value)));
             qrpcob_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpcob_ped.lanpa9.Caption  := '09)';
             qrpcob_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[9].Value)));
             qrpcob_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpcob_ped.lanpa10.Caption  := '10)';
             qrpcob_ped.ladpa10.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,QConsulta.fields[10].Value)));
             qrpcob_ped.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_COBRANCA_COMBAIXA(stco: string);
var
  i,p: word;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  with QConsulta do
  begin
    SQL.Clear;
    if stco = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_TITU,FIN_DBAI,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai']) else
    SQL.Add('SELECT   FIN_DOCT,FIN_DBAI,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;
  end;

  QConsulta.Last;
  p := QConsulta.recno;
  QConsulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_ped.lanpa1.Caption  := '01) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        2: begin
             qrpcob_ped.lanpa2.Caption  := '02) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        3: begin
             qrpcob_ped.lanpa3.Caption  := '03) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        4: begin
             qrpcob_ped.lanpa4.Caption  := '04) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        5: begin
             qrpcob_ped.lanpa5.Caption  := '05) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        6: begin
             qrpcob_ped.lanpa6.Caption  := '06) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        7: begin
             qrpcob_ped.lanpa7.Caption  := '07) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        8: begin
             qrpcob_ped.lanpa8.Caption  := '08) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        9: begin
             qrpcob_ped.lanpa9.Caption  := '09) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
       10: begin
             qrpcob_ped.lanpa10.Caption := '10) '+QConsulta.Fields[0].AsString;
             qrpcob_ped.ladpa10.Caption := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa10.Caption := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.ROM_CAB_CONFERENCIA_001;
var
  RECRelatorios: TRECRelatorios;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);

  RECRelatorios.PrinterName := 'Relatórios';
  RECRelatorios.PrintTAG  := Tag;
  RECRelatorios.Handle    := Self.Handle;
  
  RECRelatorios.Id := cdro;
  RECRelatorios.Titulo := 'Romaneio para simples conferência';

  if qrprom_con_001 = Nil then
  begin
    qrprom_con_001 := Tqrprom_con_001.Create(Self,RECRelatorios);
    qrprom_con_001.WinControlFormCreate(qrprom_con_001);
  end;  

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_CONFERENCIA;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  oPrinterSelect(Application.Handle,'Pedidos');

  with QConsulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_QTSP,VEN_QTPC');
    SQL.Add('FROM   TAB_PED,'+SLPrincipal.Values['ped_ven_cab']+' "ROM_CAB"');
    SQL.Add('WHERE  ROM_STPD   = VEN_TIPO');
    SQL.Add('AND    ROM_CAB.ID = '''+cdpd+'''');
    Open;

    if (fields[0].AsString = '1') and (fields[1].AsString = 'PC') then
    Tag := 1;
  end;


  if qrpven_con = nil then
  qrpven_con := Tqrpven_con.Create(Self);

  with qrpven_con do
  try
    oOTransact(qrpven_con.TCadastro);
    with qrpven_con.relatorio do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID        ,PK.ROM_DERO,FK.ROM_CDRO,PK.ROM_CDNF,PK.ROM_DROM,PK.ROM_DNFS,PK.ROM_CONC,PK.ROM_TCDE,PK.ROM_TSDE,PK.ROM_STCO,PK.ROM_CPAG,TPG.PAG_DPAG,');
      SQL.Add('       PK.ROM_CCLI  ,PK.ROM_OBSE,CL.CLI_FANT,CL.CLI_RAZA,PK.ROM_CVEN  ,CV.LOGIN AS DECV,PK.ROM_CREP,CR.REP_FANT,');
      SQL.Add('       FK.ROM_CDET  ,FK.ROM_ITEM,CP.PRO_CART,CP.PRO_CPRO,CP.PRO_COMP,FK.DGCP,FK.ROM_DPRO,FK.ROM_DUNI,');
      SQL.Add('       TUC.DESCRICAO,FK.ROM_QTDE,FK.ROM_QTRL,FK.ROM_QTPD,FK.ROM_RLPD,FK.ROM_UNIT,FK.ROM_TOTA,');
      SQL.Add('       ILA.ILA_BMP1,ILA.ILA_BMP2,ILA.ILA_BMP3,ILA.ILA_BMP4,ILA.ILA_BMP5,ILA.ILA_BMP6,ILA.ILA_BMP7,ILA.ILA_BMP8');
      SQL.Add('FROM '+SLPrincipal.Values['ped_ven_cab']+' AS PK');
      SQL.Add('JOIN '+SLPrincipal.Values['ped_ven_ite']+' AS FK ON (FK.IDPK = PK.ID)');
      SQL.Add('JOIN      CAD_CLI        AS CL  ON (CL.ID   = PK.IDCL)');
      SQL.Add('JOIN      TAB_USER       AS CV  ON (CV.ID   = PK.IDCV)');
      SQL.Add('JOIN      CAD_REP        AS CR  ON (CR.ID   = PK.IDCR)');
      SQL.Add('JOIN      TAB_PAG        AS TPG ON (TPG.ID  = PK.CDPG)');
      SQL.Add('JOIN      CAD_PRO        AS CP  ON (CP.ID   = FK.IDCP)');
      SQL.Add('JOIN      TAB_UCOM       AS TUC ON (TUC.REFERENCIA = FK.UCOM)');
      SQL.Add('LEFT JOIN VW_CAD_PRO_ILA AS ILA ON (ILA.ID = CP.IDAK)');
      SQL.Add('WHERE PK.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY FK.ROM_ITEM');
      Open;
    end;

    { Cabeçalho Página }
    _Report(qrpven_con,'Pedido para Simples Conferencia');
    qrpven_con.qrlrodape.Caption    := RECUsuarios.Login;

    qrpven_con.Prepare;

    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(qrpven_con.TCadastro);
    freeAndNil(qrpven_con);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_VENDA;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  oPrinterSelect(Application.Handle,'Pedidos');

  if qrpven_ped = nil then
  qrpven_ped:= Tqrpven_ped.Create(Self);

  try
    oOTransact(qrpven_ped.TCadastro);
    with qrpven_ped.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_CAB.ID DESC');
      Open;
    end;

    with qrpven_ped.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ID      ,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,TRIM(PED_VEN_ITE.ROM_DPRO||'' ''||COALESCE(PED_VEN_ITE.DGCP,'''')) AS DESCRICAO,');
      SQL.Add('         PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_PREC,PED_VEN_ITE.ROM_VDSC,PED_VEN_ITE.ROM_TOTA,PED_VEN_ITE.ROM_OBSE');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    _Report(qrpven_ped,
            IFThen(qrpven_ped.romanROM_STPD.AsString = 'DEVOLUÇÃO' ,'Pedido de Devolução' ,
            IFThen(qrpven_ped.romanROM_STPD.AsString = 'ABATIMENTO','Pedido de Abatimento',
            IFThen(qrpven_ped.romanROM_STPD.AsString = 'SERVIÇO'   ,'Ordem de Serviço'    ,'Pedido de Venda'))));

    qrpven_ped.qrlrodape.Caption  := RECUsuarios.Login;

    qrpven_ped.qrlcli.Caption  := oStrZero(qrpven_ped.romanROM_CCLI.AsInteger,5)+' - '+qrpven_ped.romanCLI_FANT.AsString;
    qrpven_ped.qrlven.Caption  := oStrZero(qrpven_ped.romanROM_CVEN.AsInteger,5)+' - '+qrpven_ped.romanUSU_DUSU.AsString;
    qrpven_ped.qrlrep.Caption  := oStrZero(qrpven_ped.romanROM_CREP.AsInteger,5)+' - '+qrpven_ped.romanREP_FANT.AsString;


    if (qrpven_ped.romanROM_TDSC.AsString = '%') and (qrpven_ped.romanROM_PDSC.AsFloat > 0) then
        qrpven_ped.qrldesc.Caption := 'Desc (%)' else
    if (qrpven_ped.romanROM_TDSC.AsString = '$') and (qrpven_ped.romanROM_PDSC.AsFloat > 0) then
        qrpven_ped.qrldesc.Caption := 'Desc ($)' else
    begin
      qrpven_ped.qrdbROM_PDSC.DataField := '';
      qrpven_ped.qrdbROM_PDSC.DataSet   := nil;
    end;

    qrpven_ped.qrlpagina.Caption  := 'Página: '+qrpven_ped.romanROM_CONC.AsString;

    with QConsulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+IntToStr(qrpven_ped.romanROM_CPAG.AsInteger)+'''');
      Open;

      qrpven_ped.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpven_ped.qrlpag.Caption   := fields[1].AsString;
    end;

    qrpven_ped.lanpa1.Caption  := '';
    qrpven_ped.ladpa1.Caption  := '';
    qrpven_ped.lavpa1.Caption  := '';
    qrpven_ped.lanpa2.Caption  := '';
    qrpven_ped.ladpa2.Caption  := '';
    qrpven_ped.lavpa2.Caption  := '';
    qrpven_ped.lanpa3.Caption  := '';
    qrpven_ped.ladpa3.Caption  := '';
    qrpven_ped.lavpa3.Caption  := '';
    qrpven_ped.lanpa4.Caption  := '';
    qrpven_ped.ladpa4.Caption  := '';
    qrpven_ped.lavpa4.Caption  := '';
    qrpven_ped.lanpa5.Caption  := '';
    qrpven_ped.ladpa5.Caption  := '';
    qrpven_ped.lavpa5.Caption  := '';
    qrpven_ped.lanpa6.Caption  := '';
    qrpven_ped.ladpa6.Caption  := '';
    qrpven_ped.lavpa6.Caption  := '';
    qrpven_ped.lanpa7.Caption  := '';
    qrpven_ped.ladpa7.Caption  := '';
    qrpven_ped.lavpa7.Caption  := '';
    qrpven_ped.lanpa8.Caption  := '';
    qrpven_ped.ladpa8.Caption  := '';
    qrpven_ped.lavpa8.Caption  := '';
    qrpven_ped.lanpa9.Caption  := '';
    qrpven_ped.ladpa9.Caption  := '';
    qrpven_ped.lavpa9.Caption  := '';
    qrpven_ped.lanpa10.Caption := '';
    qrpven_ped.ladpa10.Caption := '';
    qrpven_ped.lavpa10.Caption := '';

    if qrpven_ped.romanROM_CDBX.AsInteger = 0 then
    VEN_PED_PEDIDO_SEMBAIXA else
    VEN_PED_PEDIDO_COMBAIXA(qrpven_ped.romanROM_STCO.AsString);

    qrpven_ped.Prepare;
    case FrmRelatorio_Geral.TAG of
      0: qrpven_ped.PreviewModal;
      1: qrpven_ped.Print;

      { PDF }
      2: try
           qrpven_ped.ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpven_ped.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           qrpven_ped.ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpven_ped.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           qrpven_ped.ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpven_ped.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(qrpven_ped.TCadastro);
    freeAndNil(qrpven_ped);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_SINTETICO;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  oPrinterSelect(Application.Handle,'Romaneios');

  if qrpcob_rom = nil then
     qrpcob_rom := Tqrpcob_rom.Create(Self);

  try
    oOTransact(qrpcob_rom.TCadastro);
    with qrpcob_rom.roman do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   ROM_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['rom_cab']+' "ROM_CAB"');
      SQL.Add('WHERE    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      ROM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      ROM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      ROM_CAB.ID = '''+cdro+'''');
      SQL.Add('ORDER BY ROM_CAB.ID DESC');
      Open;
    end;

    with qrpcob_rom.ven_efe do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT   CP.PRO_CART,CP.PRO_CPRO,');
      SQL.Add('         TRIM(CP.PRO_DPRO||'' ''||COALESCE(CP.CDGRD,'''')||'' ''||COALESCE(CP.REGRD,'''')||'' ''||COALESCE(CP.DEGRD,''''))||'' ''||TRIM(COALESCE(CP.DECOR,'''')) AS DESCRICAO,');
      SQL.Add('         PK.ROM_DUNI AS UCOM,');
      SQL.Add('         SUM(PK.ROM_QTDE) AS QTDE,SUM(PK.ROM_QTRL) AS QTRL,AVG(PK.ROM_UNIT) AS VUCOM,CAST(SUM(PK.ROM_QTDE*PK.ROM_UNIT) AS DECIMAL(15,2)) AS TOTAL');
      SQL.Add('FROM '  +SLPrincipal.Values['rom_ite']+' AS PK');
      SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID= PK.ROM_CPRO)');
      SQL.Add('WHERE    PK.ROM_CCAB = '''+cdro+'''');
      SQL.Add('GROUP BY 1,2,3,4');
      SQL.Add('ORDER BY 1,3');
      Open;
      Last;
    end;

    qrpcob_rom.QRMINFADCAD.Lines.Add(qrpcob_rom.romanROM_OBSE.AsString);
    if qrpcob_rom.ven_efe.RecNo > 65 then
       qrpcob_rom.TotalVenda.AlignToBottom := False;

    { Cabeçalho Página }
    _Report(qrpcob_rom,
            IFThen(qrpcob_rom.romanROM_STPD.AsString = 'DEVOLUÇÃO' ,'Romaneio de Devolução' ,
            IFThen(qrpcob_rom.romanROM_STPD.AsString = 'ABATIMENTO','Romaneio de Abatimento',
            IFThen(qrpcob_rom.romanROM_STPD.AsString = 'SERVIÇO'   ,'Ordem de Serviço'    ,'Romaneio de Cobrança'))));

    qrpcob_rom.qrlrodape.Caption     := RECUsuarios.Login;
    qrpcob_rom.qrlcli.Caption        := oStrZero(qrpcob_rom.romanROM_CCLI.AsInteger,5)+' - '+qrpcob_rom.romanCLI_FANT.AsString;
    qrpcob_rom.qrlven.Caption        := oStrZero(qrpcob_rom.romanROM_CVEN.AsInteger,5)+' - '+qrpcob_rom.romanUSU_DUSU.AsString;
    qrpcob_rom.qrlrep.Caption        := oStrZero(qrpcob_rom.romanROM_CREP.AsInteger,5)+' - '+qrpcob_rom.romanREP_FANT.AsString;

    qrpcob_rom.qrlpagina.Caption  := 'Página: '+qrpcob_rom.romanROM_CONC.AsString;

    with QConsulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+IntToStr(qrpcob_rom.romanROM_CPAG.AsInteger)+'''');
      Open;

      qrpcob_rom.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_rom.qrlpag.Caption   := fields[1].AsString;
    end;

    qrpcob_rom.lanpa1.Caption  := '';
    qrpcob_rom.ladpa1.Caption  := '';
    qrpcob_rom.lavpa1.Caption  := '';
    qrpcob_rom.lanpa2.Caption  := '';
    qrpcob_rom.ladpa2.Caption  := '';
    qrpcob_rom.lavpa2.Caption  := '';
    qrpcob_rom.lanpa3.Caption  := '';
    qrpcob_rom.ladpa3.Caption  := '';
    qrpcob_rom.lavpa3.Caption  := '';
    qrpcob_rom.lanpa4.Caption  := '';
    qrpcob_rom.ladpa4.Caption  := '';
    qrpcob_rom.lavpa4.Caption  := '';
    qrpcob_rom.lanpa5.Caption  := '';
    qrpcob_rom.ladpa5.Caption  := '';
    qrpcob_rom.lavpa5.Caption  := '';
    qrpcob_rom.lanpa6.Caption  := '';
    qrpcob_rom.ladpa6.Caption  := '';
    qrpcob_rom.lavpa6.Caption  := '';
    qrpcob_rom.lanpa7.Caption  := '';
    qrpcob_rom.ladpa7.Caption  := '';
    qrpcob_rom.lavpa7.Caption  := '';
    qrpcob_rom.lanpa8.Caption  := '';
    qrpcob_rom.ladpa8.Caption  := '';
    qrpcob_rom.lavpa8.Caption  := '';
    qrpcob_rom.lanpa9.Caption  := '';
    qrpcob_rom.ladpa9.Caption  := '';
    qrpcob_rom.lavpa9.Caption  := '';
    qrpcob_rom.lanpa10.Caption := '';
    qrpcob_rom.ladpa10.Caption := '';
    qrpcob_rom.lavpa10.Caption := '';

    if (cdnf <> '') and (cdnf <> '0') then
    begin
      with QConsulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT   NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
        SQL.Add('WHERE    NFE_CDNF = '''+qrpcob_rom.romanROM_CDNF.AsString+'''');
        SQL.Add('ORDER BY NFE_TITU');
        Open;
      end;

      if not QConsulta.Fields[0].IsNull then
         ROM_CAB_ROMANEIO_COBRANCA_BANCARIO
      else
      begin
        if cdbx = '' then
           ROM_CAB_ROMANEIO_COBRANCA_SEMBAIXA
        else
           ROM_CAB_ROMANEIO_COBRANCA_COMBAIXA;
      end;
    end
    else
    begin
      if cdbx = '' then
         ROM_CAB_ROMANEIO_COBRANCA_SEMBAIXA
      else
         ROM_CAB_ROMANEIO_COBRANCA_COMBAIXA;
    end;

    qrpcob_rom.Prepare;
    case FrmRelatorio_Geral.TAG of
      0: qrpcob_rom.PreviewModal;
      1: qrpcob_rom.Print;

      { PDF }
      2: try
           qrpcob_rom.ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_rom.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           qrpcob_rom.ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_rom.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           qrpcob_rom.ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_rom.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(qrpcob_rom.TCadastro);
    freeAndNil(qrpcob_rom);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  with QConsulta do
  begin
    if qrpcob_rom.romanROM_CDNF.AsInteger > 0 then
    begin
      SQL.Clear;
      SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
      SQL.Add('WHERE  NFE_CDNF = '''+qrpcob_rom.romanROM_CDNF.AsString+'''');
      SQL.Add('AND    NFE_CHAV <> '' ''');
      Open;
      valo := fields[0].AsFloat;
    end
    else valo := qrpcob_rom.romanROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,');
    SQL.Add('       PAG_D010,PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018');
    SQL.Add('FROM   TAB_PAG');
    SQL.Add('WHERE  ID = '''+IntToStr(qrpcob_rom.romanROM_CPAG.AsInteger)+'''');
    Open;
  end;

  for i := 1 to QConsulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpcob_rom.lanpa1.Caption  := '01)';
             qrpcob_rom.ladpa1.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[1].Value)));
             qrpcob_rom.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpcob_rom.lanpa2.Caption  := '02)';
             qrpcob_rom.ladpa2.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[2].Value)));
             qrpcob_rom.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpcob_rom.lanpa3.Caption  := '03)';
             qrpcob_rom.ladpa3.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[3].Value)));
             qrpcob_rom.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpcob_rom.lanpa4.Caption  := '04)';
             qrpcob_rom.ladpa4.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[4].Value)));
             qrpcob_rom.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpcob_rom.lanpa5.Caption  := '05)';
             qrpcob_rom.ladpa5.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[5].Value)));
             qrpcob_rom.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpcob_rom.lanpa6.Caption  := '06)';
             qrpcob_rom.ladpa6.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[6].Value)));
             qrpcob_rom.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpcob_rom.lanpa7.Caption  := '07)';
             qrpcob_rom.ladpa7.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[7].Value)));
             qrpcob_rom.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpcob_rom.lanpa8.Caption  := '08)';
             qrpcob_rom.ladpa8.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[8].Value)));
             qrpcob_rom.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpcob_rom.lanpa9.Caption  := '09)';
             qrpcob_rom.ladpa9.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[9].Value)));
             qrpcob_rom.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpcob_rom.lanpa10.Caption  := '10)';
             qrpcob_rom.ladpa10.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,QConsulta.fields[10].Value)));
             qrpcob_rom.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_COMBAIXA;
var
  i,p: word;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  with QConsulta do
  begin
    SQL.Clear;
    if qrpcob_rom.romanROM_STCO.AsString = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_TITU,FIN_DBAI,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai']) else
    SQL.Add('SELECT   FIN_DOCT,FIN_DBAI,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;
  end;

  QConsulta.Last;
  p := QConsulta.recno;
  QConsulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom.lanpa1.Caption  := '01) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa1.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa1.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        2: begin
             qrpcob_rom.lanpa2.Caption  := '02) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa2.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa2.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        3: begin
             qrpcob_rom.lanpa3.Caption  := '03) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa3.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa3.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        4: begin
             qrpcob_rom.lanpa4.Caption  := '04) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa4.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa4.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        5: begin
             qrpcob_rom.lanpa5.Caption  := '05) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa5.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa5.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        6: begin
             qrpcob_rom.lanpa6.Caption  := '06) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa6.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa6.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        7: begin
             qrpcob_rom.lanpa7.Caption  := '07) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa7.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa7.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        8: begin
             qrpcob_rom.lanpa8.Caption  := '08) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa8.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa8.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        9: begin
             qrpcob_rom.lanpa9.Caption  := '09) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa9.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa9.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
       10: begin
             qrpcob_rom.lanpa10.Caption := '10) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa10.Caption := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa10.Caption := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  with QConsulta do
  begin
    valo := qrpven_ped.romanROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,');
    SQL.Add('       PAG_D010,PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018');
    SQL.Add('FROM   TAB_PAG');
    SQL.Add('WHERE  ID = '''+IntToStr(qrpven_ped.romanROM_CPAG.AsInteger)+'''');
    Open;
  end;

  for i := 1 to QConsulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpven_ped.lanpa1.Caption  := '01)';
             qrpven_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[1].Value)));
             qrpven_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpven_ped.lanpa2.Caption  := '02)';
             qrpven_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[2].Value)));
             qrpven_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpven_ped.lanpa3.Caption  := '03)';
             qrpven_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[3].Value)));
             qrpven_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpven_ped.lanpa4.Caption  := '04)';
             qrpven_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[4].Value)));
             qrpven_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpven_ped.lanpa5.Caption  := '05)';
             qrpven_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[5].Value)));
             qrpven_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpven_ped.lanpa6.Caption  := '06)';
             qrpven_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[6].Value)));
             qrpven_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpven_ped.lanpa7.Caption  := '07)';
             qrpven_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[7].Value)));
             qrpven_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpven_ped
             .lanpa8.Caption  := '08)';
             qrpven_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[8].Value)));
             qrpven_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpven_ped.lanpa9.Caption  := '09)';
             qrpven_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[9].Value)));
             qrpven_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpven_ped.lanpa10.Caption  := '10)';
             qrpven_ped.ladpa10.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_ped.romanROM_DROM.AsDateTime,QConsulta.fields[10].Value)));
             qrpven_ped.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_COMBAIXA(stco: string);
var
  i,p: word;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  with QConsulta do
  begin
    SQL.Clear;
    if stco = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_TITU,FIN_DBAI,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai']) else
    SQL.Add('SELECT   FIN_DOCT,FIN_DBAI,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;
  end;

  QConsulta.Last;
  p := QConsulta.recno;
  QConsulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpven_ped.lanpa1.Caption  := '01) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        2: begin
             qrpven_ped.lanpa2.Caption  := '02) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        3: begin
             qrpven_ped.lanpa3.Caption  := '03) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        4: begin
             qrpven_ped.lanpa4.Caption  := '04) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        5: begin
             qrpven_ped.lanpa5.Caption  := '05) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        6: begin
             qrpven_ped.lanpa6.Caption  := '06) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        7: begin
             qrpven_ped.lanpa7.Caption  := '07) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        8: begin
             qrpven_ped.lanpa8.Caption  := '08) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        9: begin
             qrpven_ped.lanpa9.Caption  := '09) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
       10: begin
             qrpven_ped.lanpa10.Caption := '10) '+QConsulta.Fields[0].AsString;
             qrpven_ped.ladpa10.Caption := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa10.Caption := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_BANCARIO;
var
  i,p: word;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  QConsulta.Last;
  p := QConsulta.recno;
  QConsulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom.lanpa1.Caption  := '01) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa1.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa1.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        2: begin
             qrpcob_rom.lanpa2.Caption  := '02) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa2.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa2.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        3: begin
             qrpcob_rom.lanpa3.Caption  := '03) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa3.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa3.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        4: begin
             qrpcob_rom.lanpa4.Caption  := '04) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa4.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa4.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        5: begin
             qrpcob_rom.lanpa5.Caption  := '05) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa5.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa5.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        6: begin
             qrpcob_rom.lanpa6.Caption  := '06) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa6.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa6.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        7: begin
             qrpcob_rom.lanpa7.Caption  := '07) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa7.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa7.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        8: begin
             qrpcob_rom.lanpa8.Caption  := '08) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa8.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa8.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        9: begin
             qrpcob_rom.lanpa9.Caption  := '09) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa9.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa9.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
       10: begin
             qrpcob_rom.lanpa10.Caption := '10) '+QConsulta.Fields[0].AsString;
             qrpcob_rom.ladpa10.Caption := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa10.Caption := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_SEPARACAO(IDEP: STRING);
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  if qrpsep_ped = nil then
     qrpsep_ped := Tqrpsep_ped.Create(Self);

  with qrpsep_ped do
  try
    oOTransact(TRelatorio);
    with roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CLI_RAZA,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,REP_RAZA,PAG_DPAG,EP.FANTASIA');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,TAB_PAR_SIS AS EP,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.IDEP     = EP.ID');
      SQL.Add('AND      PED_VEN_CAB.ID       = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_CAB.ID DESC');
      Open;
    end;

    with ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   EP.FANTASIA,PVFK.ROM_CCAB AS IDPV,CAST(PVFK.ROM_ITEM AS INTEGER) AS ROM_ITEM,');
      SQL.Add('         PVFK.ROM_DPRO,PVFK.DGCP,');
      SQL.Add('         PVFK.ROM_DUNI,PVFK.ROM_QTDE,PVFK.ROM_QTRL,PVFK.ROM_UNIT,PVFK.ROM_TOTA,');
      SQL.Add('         CP.ID AS IDCP,CP.PRO_CART ,CP.PRO_CPRO,');
      SQL.Add('         CP.UCDBE,CP.UQTRL,CP.UQTDE,CP.UPSBR,CP.UPSLQ,');
      SQL.Add('         CP.UCON AS PRO_ESPC,');
      SQL.Add('         CP.REST,');
      SQL.Add('         SUM(EPE_QTDE) AS EPE_QTDE,SUM(EPE_QTRL) AS EPE_QTRL,SUM(EPR_QTDE) AS EPR_QTDE,SUM(EPR_QTRL) AS EPR_QTRL,SUM(EPS_QTDE) AS EPS_QTDE,SUM(EPS_QTRL) AS EPS_QTRL');
      SQL.Add('FROM   '+SLPrincipal.Values['ped_ven_ite']+' AS PVFK');
      SQL.Add('JOIN     CAD_PRO         AS CP ON (CP.ID = PVFK.ROM_CPRO)');
      SQL.Add('JOIN     TAB_PAR_SIS     AS EP ON (EP.ID = CP.IDEP      )');
      SQL.Add('LEFT');
      SQL.Add('JOIN     SP_CAD_PRO_EST_PSQ('+IDEP+',CP.IDEK) AS E ON (1=1)');
      SQL.Add('WHERE    PVFK.ROM_CCAB = '+CDPD);
      if RECParametros.EP_ID <> 2 then
      SQL.Add('AND      CP.IDEP = '+IDEP);
      SQL.Add('GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20');
      SQL.Add('ORDER BY ROM_ITEM');
      Open;
    end;

    { Cabeçalho }
    _Report(qrpsep_ped,'Pedido de Venda '+IFThen(IDEP = '9','PATCHBIANCO',''));

    { Rodapé }
    QRLRodapeRelatorio.Caption := 'Report '  +Name+' '+FormatDateTime('dd/mm/yy hh:mm',Now);
    QRLRodapeUsuario.Caption   := 'Usuário  '+oPrimeiraLetraMaiuscula(RECUsuarios.Login)+' Email '+RECUsuarios.Email+' '+RECParametros.TEL_NU_MASK;
    QRLRodapeSelectSQL.Caption := 'Empresa ' +RECParametros.EP_NO;

    { Define Impressora }
    if not qrpsep_ped.ven_efe.Eof then
    begin
      oPrinterSelect(Application.Handle,'Pedidos');
      Prepare;

    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
    end;
  finally
    oCTransact(TRelatorio);
    freeAndNil(qrpsep_ped);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_ORCAMENTO;
var
  VALO: double;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  oPrinterSelect(Application.Handle,'Romaneios');

  if qrpcob_ped_oca = nil then
     qrpcob_ped_oca := Tqrpcob_ped_oca.Create(self);

  try
    oOTransact(qrpcob_ped_oca.TCadastro);
    with qrpcob_ped_oca.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG,');
      SQL.Add('         CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,CAD_PRO.PIPI,');
      SQL.Add('         PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.DGCP,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_TOTA,');
      SQL.Add('(SELECT  SUM(EST_CRED) FROM CAD_PRO_EST WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD = PED_VEN_CAB.ID) AS ROM_QTPD1');
      SQL.Add('FROM     CAD_PRO,CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.ID       = PED_VEN_ITE.ROM_CCAB');
      SQL.Add('AND      CAD_PRO.ID           = PED_VEN_ITE.ROM_CPRO');
      SQL.Add('AND      PED_VEN_CAB.ID = '''+cdpd+'''');
      sql.Add('AND      (SELECT  SUM(EST_CRED) FROM CAD_PRO_EST WHERE CAD_PRO_EST.IDCP = CAD_PRO.ID AND CAD_PRO_EST.IDPK = PED_VEN_CAB.ID) > 0');
      SQL.Add('ORDER BY CAD_PRO.PRO_CPRO');
      Open;

      VALO := 0;
      while not eof do
      begin
        VALO := VALO + qrpcob_ped_oca.relatorioTOTA.AsFloat;
        next;
      end;
    end;

    { Cabeçalho Página }
    _Report(qrpcob_ped_oca,'Orçamento de Venda');

    qrpcob_ped_oca.qrlrodape.Caption    := RECUsuarios.Login;
    qrpcob_ped_oca.qrlcli.Caption       := oStrZero(qrpcob_ped_oca.relatorioROM_CCLI.AsInteger,5)+' - '+qrpcob_ped_oca.relatorioCLI_FANT.AsString;
    qrpcob_ped_oca.qrlven.Caption       := oStrZero(qrpcob_ped_oca.relatorioROM_CVEN.AsInteger,5)+' - '+qrpcob_ped_oca.relatorioUSU_DUSU.AsString;
    qrpcob_ped_oca.qrlrep.Caption       := oStrZero(qrpcob_ped_oca.relatorioROM_CREP.AsInteger,5)+' - '+qrpcob_ped_oca.relatorioREP_FANT.AsString;
    qrpcob_ped_oca.qrlpagina.Caption    := 'Página: '+qrpcob_ped_oca.relatorioROM_CONC.AsString;

    with QConsulta do
    begin
      if not qrpcob_ped_oca.relatorio.Fields[0].IsNull then
      begin
        SQL.Clear;
        SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
        SQL.Add('WHERE  ID = '''+IntToStr(qrpcob_ped_oca.relatorioROM_CPAG.AsInteger)+'''');
        Open;
        qrpcob_ped_oca.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
        qrpcob_ped_oca.qrlpag.Caption   := fields[1].AsString;
      end;
    end;

    qrpcob_ped_oca.lanpa1.Caption  := '';
    qrpcob_ped_oca.ladpa1.Caption  := '';
    qrpcob_ped_oca.lavpa1.Caption  := '';
    qrpcob_ped_oca.lanpa2.Caption  := '';
    qrpcob_ped_oca.ladpa2.Caption  := '';
    qrpcob_ped_oca.lavpa2.Caption  := '';
    qrpcob_ped_oca.lanpa3.Caption  := '';
    qrpcob_ped_oca.ladpa3.Caption  := '';
    qrpcob_ped_oca.lavpa3.Caption  := '';
    qrpcob_ped_oca.lanpa4.Caption  := '';
    qrpcob_ped_oca.ladpa4.Caption  := '';
    qrpcob_ped_oca.lavpa4.Caption  := '';
    qrpcob_ped_oca.lanpa5.Caption  := '';
    qrpcob_ped_oca.ladpa5.Caption  := '';
    qrpcob_ped_oca.lavpa5.Caption  := '';
    qrpcob_ped_oca.lanpa6.Caption  := '';
    qrpcob_ped_oca.ladpa6.Caption  := '';
    qrpcob_ped_oca.lavpa6.Caption  := '';
    qrpcob_ped_oca.lanpa7.Caption  := '';
    qrpcob_ped_oca.ladpa7.Caption  := '';
    qrpcob_ped_oca.lavpa7.Caption  := '';
    qrpcob_ped_oca.lanpa8.Caption  := '';
    qrpcob_ped_oca.ladpa8.Caption  := '';
    qrpcob_ped_oca.lavpa8.Caption  := '';
    qrpcob_ped_oca.lanpa9.Caption  := '';
    qrpcob_ped_oca.ladpa9.Caption  := '';
    qrpcob_ped_oca.lavpa9.Caption  := '';
    qrpcob_ped_oca.lanpa10.Caption := '';
    qrpcob_ped_oca.ladpa10.Caption := '';
    qrpcob_ped_oca.lavpa10.Caption := '';

    if not qrpcob_ped_oca.relatorio.Fields[0].IsNull then
    VEN_COB_ORCAMENTO_SEMBAIXA(VALO);

    qrpcob_ped_oca.Prepare;

    case FrmRelatorio_Geral.TAG of
      0: qrpcob_ped_oca.PreviewModal;
      1: qrpcob_ped_oca.Print;

      { PDF }
      2: try
           qrpcob_ped_oca.ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_ped_oca.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           qrpcob_ped_oca.ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_ped_oca.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           qrpcob_ped_oca.ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_ped_oca.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oOTransact(qrpcob_ped_oca.TCadastro);
    freeAndNil(qrpcob_ped_oca);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_COB_ORCAMENTO_SEMBAIXA(VALO:double);
var
  i: word;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  qrpcob_ped_oca.lanpa1.Caption  := '';
  qrpcob_ped_oca.ladpa1.Caption  := '';
  qrpcob_ped_oca.lavpa1.Caption  := '';
  qrpcob_ped_oca.lanpa2.Caption  := '';
  qrpcob_ped_oca.ladpa2.Caption  := '';
  qrpcob_ped_oca.lavpa2.Caption  := '';
  qrpcob_ped_oca.lanpa3.Caption  := '';
  qrpcob_ped_oca.ladpa3.Caption  := '';
  qrpcob_ped_oca.lavpa3.Caption  := '';
  qrpcob_ped_oca.lanpa4.Caption  := '';
  qrpcob_ped_oca.ladpa4.Caption  := '';
  qrpcob_ped_oca.lavpa4.Caption  := '';
  qrpcob_ped_oca.lanpa5.Caption  := '';
  qrpcob_ped_oca.ladpa5.Caption  := '';
  qrpcob_ped_oca.lavpa5.Caption  := '';
  qrpcob_ped_oca.lanpa6.Caption  := '';
  qrpcob_ped_oca.ladpa6.Caption  := '';
  qrpcob_ped_oca.lavpa6.Caption  := '';
  qrpcob_ped_oca.lanpa7.Caption  := '';
  qrpcob_ped_oca.ladpa7.Caption  := '';
  qrpcob_ped_oca.lavpa7.Caption  := '';
  qrpcob_ped_oca.lanpa8.Caption  := '';
  qrpcob_ped_oca.ladpa8.Caption  := '';
  qrpcob_ped_oca.lavpa8.Caption  := '';
  qrpcob_ped_oca.lanpa9.Caption  := '';
  qrpcob_ped_oca.ladpa9.Caption  := '';
  qrpcob_ped_oca.lavpa9.Caption  := '';
  qrpcob_ped_oca.lanpa10.Caption := '';
  qrpcob_ped_oca.ladpa10.Caption := '';
  qrpcob_ped_oca.lavpa10.Caption := '';

  with QConsulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,');
    SQL.Add('       PAG_D010,PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018');
    SQL.Add('FROM   TAB_PAG');
    SQL.Add('WHERE  ID = '''+IntToStr(qrpcob_ped_oca.relatorioROM_CPAG.AsInteger)+'''');
    Open;
  end;

  for i := 1 to QConsulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpcob_ped_oca.lanpa1.Caption  := '01)';
             qrpcob_ped_oca.ladpa1.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[1].Value)));
             qrpcob_ped_oca.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpcob_ped_oca.lanpa2.Caption  := '02)';
             qrpcob_ped_oca.ladpa2.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[2].Value)));
             qrpcob_ped_oca.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpcob_ped_oca.lanpa3.Caption  := '03)';
             qrpcob_ped_oca.ladpa3.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[3].Value)));
             qrpcob_ped_oca.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpcob_ped_oca.lanpa4.Caption  := '04)';
             qrpcob_ped_oca.ladpa4.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[4].Value)));
             qrpcob_ped_oca.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpcob_ped_oca.lanpa5.Caption  := '05)';
             qrpcob_ped_oca.ladpa5.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[5].Value)));
             qrpcob_ped_oca.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpcob_ped_oca.lanpa6.Caption  := '06)';
             qrpcob_ped_oca.ladpa6.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[6].Value)));
             qrpcob_ped_oca.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpcob_ped_oca.lanpa7.Caption  := '07)';
             qrpcob_ped_oca.ladpa7.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[7].Value)));
             qrpcob_ped_oca.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpcob_ped_oca.lanpa8.Caption  := '08)';
             qrpcob_ped_oca.ladpa8.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[8].Value)));
             qrpcob_ped_oca.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpcob_ped_oca.lanpa9.Caption  := '09)';
             qrpcob_ped_oca.ladpa9.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[9].Value)));
             qrpcob_ped_oca.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpcob_ped_oca.lanpa10.Caption  := '10)';
             qrpcob_ped_oca.ladpa10.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_ped_oca.relatorioROM_DROM.AsDateTime,QConsulta.fields[10].Value)));
             qrpcob_ped_oca.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_ANALITICO;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  oPrinterSelect(Application.Handle,'Romaneios');

  if qrpcob_rom_ref = nil then
     qrpcob_rom_ref := Tqrpcob_rom_ref.Create(Self);

  try
    oOTransact(qrpcob_rom_ref.TCadastro);
    with qrpcob_rom_ref.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ROM_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG,');
      SQL.Add('         CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,');
      SQL.Add('         ROM_ITE.ID,ROM_ITE.ROM_ITEM,TRIM(ROM_ITE.ROM_DPRO||'' ''||COALESCE(ROM_ITE.DGCP,'''')) AS DESCRICAO,');
      SQL.Add('         ROM_ITE.ROM_QTDE,ROM_ITE.ROM_UNIT,ROM_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['rom_ite']+' "ROM_ITE" ,'+SLPrincipal.Values['rom_cab']+' "ROM_CAB"');
      SQL.Add('WHERE    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      ROM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      ROM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      ROM_CAB.ID       = ROM_ITE.ROM_CCAB');
      SQL.Add('AND      CAD_PRO.ID       = ROM_ITE.ROM_CPRO');
      SQL.Add('AND      ROM_CAB.ID = '''+cdro+'''');
      SQL.Add('ORDER BY CAD_PRO.PRO_CPRO');
      Open;
    end;

    { Cabeçalho Página }
    _Report(qrpcob_rom_ref,
            IFThen(qrpcob_rom_ref.RelatorioROM_STPD.AsString = 'DEVOLUÇÃO' ,'Romaneio de Devolução' ,
            IFThen(qrpcob_rom_ref.RelatorioROM_STPD.AsString = 'ABATIMENTO','Romaneio de Abatimento',
            IFThen(qrpcob_rom_ref.RelatorioROM_STPD.AsString = 'SERVIÇO'   ,'Ordem de Serviço'    ,'Romaneio de Cobrança'))));

    qrpcob_rom_ref.qrlrodape.Caption  := RECUsuarios.Login;
    qrpcob_rom_ref.qrlrodape2.Caption := qrpcob_rom_ref.qrlrodape.Caption;

    qrpcob_rom_ref.qrlcli.Caption     := oStrZero(qrpcob_rom_ref.relatorioROM_CCLI.AsInteger,5)+' - '+qrpcob_rom_ref.relatorioCLI_FANT.AsString;
    qrpcob_rom_ref.qrlcli2.Caption    := qrpcob_rom_ref.qrlcli.Caption;

    qrpcob_rom_ref.qrlven.Caption     := oStrZero(qrpcob_rom_ref.relatorioROM_CVEN.AsInteger,5)+' - '+qrpcob_rom_ref.relatorioUSU_DUSU.AsString;
    qrpcob_rom_ref.qrlven2.Caption    := qrpcob_rom_ref.qrlven.Caption;

    qrpcob_rom_ref.qrlrep.Caption     := oStrZero(qrpcob_rom_ref.relatorioROM_CREP.AsInteger,5)+' - '+qrpcob_rom_ref.relatorioREP_FANT.AsString;
    qrpcob_rom_ref.qrlrep2.Caption    := qrpcob_rom_ref.qrlrep.Caption;

    if qrpcob_rom_ref.relatorioROM_TDSC.AsString = '%' then
    qrpcob_rom_ref.qrldesc.Caption  := 'Desconto (%)'
    else
    qrpcob_rom_ref.qrldesc.Caption  := 'Desconto ($)';
    qrpcob_rom_ref.qrldesc2.Caption := qrpcob_rom_ref.qrldesc.Caption;

    qrpcob_rom_ref.qrlpagina.Caption  := 'Página: '+qrpcob_rom_ref.relatorioROM_CONC.AsString;
    qrpcob_rom_ref.qrlpagina2.Caption := qrpcob_rom_ref.qrlpagina.Caption;

    with QConsulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+IntToStr(qrpcob_rom_ref.relatorioROM_CPAG.AsInteger)+'''');
      Open;

      qrpcob_rom_ref.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_rom_ref.qrlparc2.Caption := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_rom_ref.qrlpag.Caption   := fields[1].AsString;
      qrpcob_rom_ref.qrlpag2.Caption  := fields[1].AsString;
    end;

    qrpcob_rom_ref.lanpa1.Caption  := '';
    qrpcob_rom_ref.ladpa1.Caption  := '';
    qrpcob_rom_ref.lavpa1.Caption  := '';
    qrpcob_rom_ref.lanpa2.Caption  := '';
    qrpcob_rom_ref.ladpa2.Caption  := '';
    qrpcob_rom_ref.lavpa2.Caption  := '';
    qrpcob_rom_ref.lanpa3.Caption  := '';
    qrpcob_rom_ref.ladpa3.Caption  := '';
    qrpcob_rom_ref.lavpa3.Caption  := '';
    qrpcob_rom_ref.lanpa4.Caption  := '';
    qrpcob_rom_ref.ladpa4.Caption  := '';
    qrpcob_rom_ref.lavpa4.Caption  := '';
    qrpcob_rom_ref.lanpa5.Caption  := '';
    qrpcob_rom_ref.ladpa5.Caption  := '';
    qrpcob_rom_ref.lavpa5.Caption  := '';
    qrpcob_rom_ref.lanpa6.Caption  := '';
    qrpcob_rom_ref.ladpa6.Caption  := '';
    qrpcob_rom_ref.lavpa6.Caption  := '';
    qrpcob_rom_ref.lanpa7.Caption  := '';
    qrpcob_rom_ref.ladpa7.Caption  := '';
    qrpcob_rom_ref.lavpa7.Caption  := '';
    qrpcob_rom_ref.lanpa8.Caption  := '';
    qrpcob_rom_ref.ladpa8.Caption  := '';
    qrpcob_rom_ref.lavpa8.Caption  := '';
    qrpcob_rom_ref.lanpa9.Caption  := '';
    qrpcob_rom_ref.ladpa9.Caption  := '';
    qrpcob_rom_ref.lavpa9.Caption  := '';
    qrpcob_rom_ref.lanpa10.Caption := '';
    qrpcob_rom_ref.ladpa10.Caption := '';
    qrpcob_rom_ref.lavpa10.Caption := '';

    qrpcob_rom_ref.qrlqtrl.Caption  := qrpcob_rom_ref.relatorioROM_RLVE.AsString;
    qrpcob_rom_ref.qrlqtrl2.Caption := qrpcob_rom_ref.relatorioROM_RLVE.AsString;

    if (cdnf <> '') and (cdnf <> '0') then
    begin
      with QConsulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT NFE_VNF,ID FROM '+SLPrincipal.Values['nfe_cab']);
        SQL.Add('WHERE  NFE_CDNF = '''+qrpcob_rom_ref.relatorioROM_CDNF.AsString+'''');
        SQL.Add('AND    NFE_CHAV <> '' ''');
        Open;

        if fields[0].AsFloat > 0 then
        begin
          QConsultaAux.SQL.Clear;
          QConsultaAux.SQL.Add('SELECT NFE_QVOL FROM '+SLPrincipal.Values['nfe_tra']);
          QConsultaAux.SQL.Add('WHERE  NFE_CCAB = '''+fields[1].AsString+'''');
          QConsultaAux.Open;

          if QConsultaAux.fields[0].AsFloat > 0 then
          begin
            qrpcob_rom_ref.qrlqtrl.Caption  := QConsultaAux.Fields[0].AsString;
            qrpcob_rom_ref.qrlqtrl2.Caption := QConsultaAux.Fields[0].AsString;
          end;
        end;

        SQL.Clear;
        SQL.Add('SELECT   NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
        SQL.Add('WHERE    NFE_CDNF = '''+qrpcob_rom_ref.relatorioROM_CDNF.AsString+'''');
        SQL.Add('ORDER BY NFE_TITU');
        Open;
      end;

      if not QConsulta.Fields[0].IsNull then
         ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_BANCARIO
      else
      begin
        if cdbx = '' then
           ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_SEMBAIXA
        else
           ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_COMBAIXA;
      end;
    end
    else
    begin
      if cdbx = '' then
         ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_SEMBAIXA
      else
         ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_COMBAIXA;
    end;

    qrpcob_rom_ref.lanpa21.Caption  := qrpcob_rom_ref.lanpa1.Caption ;
    qrpcob_rom_ref.ladpa21.Caption  := qrpcob_rom_ref.ladpa1.Caption ;
    qrpcob_rom_ref.lavpa21.Caption  := qrpcob_rom_ref.lavpa1.Caption ;
    qrpcob_rom_ref.lanpa22.Caption  := qrpcob_rom_ref.lanpa2.Caption ;
    qrpcob_rom_ref.ladpa22.Caption  := qrpcob_rom_ref.ladpa2.Caption ;
    qrpcob_rom_ref.lavpa22.Caption  := qrpcob_rom_ref.lavpa2.Caption ;
    qrpcob_rom_ref.lanpa23.Caption  := qrpcob_rom_ref.lanpa3.Caption ;
    qrpcob_rom_ref.ladpa23.Caption  := qrpcob_rom_ref.ladpa3.Caption ;
    qrpcob_rom_ref.lavpa23.Caption  := qrpcob_rom_ref.lavpa3.Caption ;
    qrpcob_rom_ref.lanpa24.Caption  := qrpcob_rom_ref.lanpa4.Caption ;
    qrpcob_rom_ref.ladpa24.Caption  := qrpcob_rom_ref.ladpa4.Caption ;
    qrpcob_rom_ref.lavpa24.Caption  := qrpcob_rom_ref.lavpa4.Caption ;
    qrpcob_rom_ref.lanpa25.Caption  := qrpcob_rom_ref.lanpa5.Caption ;
    qrpcob_rom_ref.ladpa25.Caption  := qrpcob_rom_ref.ladpa5.Caption ;
    qrpcob_rom_ref.lavpa25.Caption  := qrpcob_rom_ref.lavpa5.Caption ;
    qrpcob_rom_ref.lanpa26.Caption  := qrpcob_rom_ref.lanpa6.Caption ;
    qrpcob_rom_ref.ladpa26.Caption  := qrpcob_rom_ref.ladpa6.Caption ;
    qrpcob_rom_ref.lavpa26.Caption  := qrpcob_rom_ref.lavpa6.Caption ;
    qrpcob_rom_ref.lanpa27.Caption  := qrpcob_rom_ref.lanpa7.Caption ;
    qrpcob_rom_ref.ladpa27.Caption  := qrpcob_rom_ref.ladpa7.Caption ;
    qrpcob_rom_ref.lavpa27.Caption  := qrpcob_rom_ref.lavpa7.Caption ;
    qrpcob_rom_ref.lanpa28.Caption  := qrpcob_rom_ref.lanpa8.Caption ;
    qrpcob_rom_ref.ladpa28.Caption  := qrpcob_rom_ref.ladpa8.Caption ;
    qrpcob_rom_ref.lavpa28.Caption  := qrpcob_rom_ref.lavpa8.Caption ;
    qrpcob_rom_ref.lanpa29.Caption  := qrpcob_rom_ref.lanpa9.Caption ;
    qrpcob_rom_ref.ladpa29.Caption  := qrpcob_rom_ref.ladpa9.Caption ;
    qrpcob_rom_ref.lavpa29.Caption  := qrpcob_rom_ref.lavpa9.Caption ;
    qrpcob_rom_ref.lanpa210.Caption := qrpcob_rom_ref.lanpa10.Caption;
    qrpcob_rom_ref.ladpa210.Caption := qrpcob_rom_ref.ladpa10.Caption;
    qrpcob_rom_ref.lavpa210.Caption := qrpcob_rom_ref.lavpa10.Caption;

    qrpcob_rom_ref.Prepare;

    case FrmRelatorio_Geral.TAG of
      0: qrpcob_rom_ref.PreviewModal;
      1: qrpcob_rom_ref.Print;

      { PDF }
      2: try
           qrpcob_rom_ref.ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_rom_ref.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           qrpcob_rom_ref.ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_rom_ref.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           qrpcob_rom_ref.ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + qrpcob_rom_ref.ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(qrpcob_rom_ref.TCadastro);
    freeAndNil(qrpcob_rom_ref);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  with QConsulta do
  begin
    if qrpcob_rom_ref.relatorioROM_CDNF.AsInteger > 0 then
    begin
      SQL.Clear;
      SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
      SQL.Add('WHERE  NFE_CDNF = '''+qrpcob_rom_ref.relatorioROM_CDNF.AsString+'''');
      SQL.Add('AND    NFE_CHAV <> '' ''');
      Open;
      valo := fields[0].AsFloat;
    end
    else valo := qrpcob_rom_ref.relatorioROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,');
    SQL.Add('       PAG_D010,PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018');
    SQL.Add('FROM   TAB_PAG');
    SQL.Add('WHERE  ID = '''+IntToStr(qrpcob_rom_ref.relatorioROM_CPAG.AsInteger)+'''');
    Open;
  end;

  for i := 1 to QConsulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpcob_rom_ref.lanpa1.Caption  := '01)';
             qrpcob_rom_ref.ladpa1.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[1].Value)));
             qrpcob_rom_ref.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpcob_rom_ref.lanpa2.Caption  := '02)';
             qrpcob_rom_ref.ladpa2.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[2].Value)));
             qrpcob_rom_ref.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpcob_rom_ref.lanpa3.Caption  := '03)';
             qrpcob_rom_ref.ladpa3.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[3].Value)));
             qrpcob_rom_ref.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpcob_rom_ref.lanpa4.Caption  := '04)';
             qrpcob_rom_ref.ladpa4.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[4].Value)));
             qrpcob_rom_ref.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpcob_rom_ref.lanpa5.Caption  := '05)';
             qrpcob_rom_ref.ladpa5.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[5].Value)));
             qrpcob_rom_ref.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpcob_rom_ref.lanpa6.Caption  := '06)';
             qrpcob_rom_ref.ladpa6.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[6].Value)));
             qrpcob_rom_ref.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpcob_rom_ref.lanpa7.Caption  := '07)';
             qrpcob_rom_ref.ladpa7.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[7].Value)));
             qrpcob_rom_ref.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpcob_rom_ref.lanpa8.Caption  := '08)';
             qrpcob_rom_ref.ladpa8.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[8].Value)));
             qrpcob_rom_ref.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpcob_rom_ref.lanpa9.Caption  := '09)';
             qrpcob_rom_ref.ladpa9.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[9].Value)));
             qrpcob_rom_ref.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpcob_rom_ref.lanpa10.Caption  := '10)';
             qrpcob_rom_ref.ladpa10.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,QConsulta.fields[10].Value)));
             qrpcob_rom_ref.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_COMBAIXA;
var
  i,p: word;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  with QConsulta do
  begin
    SQL.Clear;
    if qrpcob_rom_ref.relatorioROM_STCO.AsString = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_TITU,FIN_DBAI,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai']) else
    SQL.Add('SELECT   FIN_DOCT,FIN_DBAI,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;
  end;

  QConsulta.Last;
  p := QConsulta.recno;
  QConsulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom_ref.lanpa1.Caption  := '01) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa1.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa1.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        2: begin
             qrpcob_rom_ref.lanpa2.Caption  := '02) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa2.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa2.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        3: begin
             qrpcob_rom_ref.lanpa3.Caption  := '03) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa3.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa3.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        4: begin
             qrpcob_rom_ref.lanpa4.Caption  := '04) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa4.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa4.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        5: begin
             qrpcob_rom_ref.lanpa5.Caption  := '05) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa5.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa5.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        6: begin
             qrpcob_rom_ref.lanpa6.Caption  := '06) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa6.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa6.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        7: begin
             qrpcob_rom_ref.lanpa7.Caption  := '07) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa7.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa7.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        8: begin
             qrpcob_rom_ref.lanpa8.Caption  := '08) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa8.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa8.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        9: begin
             qrpcob_rom_ref.lanpa9.Caption  := '09) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa9.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa9.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
       10: begin
             qrpcob_rom_ref.lanpa10.Caption := '10) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa10.Caption := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa10.Caption := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_BANCARIO;
var
  i,p: word;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  QConsulta.Last;
  p := QConsulta.recno;
  QConsulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom_ref.lanpa1.Caption  := '01) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa1.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa1.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        2: begin
             qrpcob_rom_ref.lanpa2.Caption  := '02) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa2.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa2.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        3: begin
             qrpcob_rom_ref.lanpa3.Caption  := '03) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa3.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa3.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        4: begin
             qrpcob_rom_ref.lanpa4.Caption  := '04) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa4.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa4.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        5: begin
             qrpcob_rom_ref.lanpa5.Caption  := '05) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa5.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa5.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        6: begin
             qrpcob_rom_ref.lanpa6.Caption  := '06) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa6.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa6.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        7: begin
             qrpcob_rom_ref.lanpa7.Caption  := '07) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa7.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa7.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        8: begin
             qrpcob_rom_ref.lanpa8.Caption  := '08) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa8.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa8.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
        9: begin
             qrpcob_rom_ref.lanpa9.Caption  := '09) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa9.Caption  := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa9.Caption  := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
             QConsulta.Next;
           end;
       10: begin
             qrpcob_rom_ref.lanpa10.Caption := '10) '+QConsulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa10.Caption := formatDateTime('dd/mm/yy',QConsulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa10.Caption := formatFloat('R$ #,0.00',QConsulta.Fields[3].AsFloat);
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.FIN_REC_CONTAS;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_FIN)}

  oPrinterSelect(Application.Handle,'Relatórios');

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbFIN_REC_DATA.Text      = 'DATA FATURA' then
  cDATA := 'FR.FIN_DCAD'
  else if cbFIN_REC_DATA.Text = 'DATA VENCIMENTO' then
  cDATA := 'FR.FIN_DVEN'
  else if cbFIN_REC_DATA.Text = 'DATA PAGAMENTO' then
  cDATA := 'FR.FIN_DPAG'
  else if cbFIN_REC_DATA.Text = 'DATA BAIXA' then
  cDATA := 'FR.FIN_DBAI';

  if qrpfin_rec_ger_consolidado = nil then
     qrpfin_rec_ger_consolidado := Tqrpfin_rec_ger_consolidado.Create(Nil);
     qrpfin_rec_ger_consolidado.ReportTitle := cbFIN_REC_TREL.Text;

  with qrpfin_rec_ger_consolidado do
  try
    oOTransact(TCadastro);
    with Relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    FR.FIN_CDBX,FR.FIN_TIPO,FR.FIN_STDO,FR.FIN_CONC,');
      SQL.Add('          FR.FIN_DOCT,FR.FIN_DCAD,FR.FIN_STFI,');
      SQL.Add('          FSTRZERO(FR.FIN_CCLI,5) AS FIN_CCLI,CC.CLI_FANT,');
      SQL.Add('          CU.USU_DUSU,CR.REP_FANT,');
      SQL.Add('          TRIM(CAST(SUBSTRING(FR.FIN_OBSE FROM 1 FOR 256) AS VARCHAR(256))) AS INFADCAD,');
      SQL.Add('          SUM(COALESCE(FR.FIN_VALO,0)) AS FIN_VALO,SUM(COALESCE(FR.FIN_VPAG,0)) AS FIN_VPAG,SUM(COALESCE(FR.FIN_VPEN,0)) AS FIN_VPEN,');
      SQL.Add('          MIN(FR.FIN_DVEN) AS FIN_DTV1,MAX(FR.FIN_DVEN) AS FIN_DTV2,MAX(FR.FIN_DTMD) AS FIN_DTMD');

      SQL.Add('FROM '   +SLPrincipal.Values[IFThen(cbFIN_REC_TREL.Tag = 0,'fin_rec_ban_bai','fin_rec_car_bai')]+' AS FR');
      SQL.Add('JOIN      CAD_CLI     AS CC  ON (CC.ID       = FR.FIN_CCLI)');
      SQL.Add('JOIN      CAD_USU     AS CU  ON (CU.USU_CUSU = FR.FIN_CVEN)');
      SQL.Add('JOIN      CAD_REP     AS CR  ON (CR.ID       = FR.FIN_CREP)');

      SQL.Add('WHERE FR.IDEP     = '''+RECParametros.EP_ID+'''');
      SQL.Add('AND   FR.FIN_STFI <> ''CANCELADO''');

      if cDATA <> '' then
      begin
        qrlfil.Caption := 'Período: '+cbFIN_REC_DATA.Text+' '+formatDateTime('dd/mm/yy',Data1)+' ATE '+formatDateTime('dd/mm/yy',Data2);
        SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');
      end;

      if Pos(LeftStr(cbFIN_REC_STPD.Text,3),'DEVABA') > 0 then
      begin
        qrlfil.Caption := qrlfil.Caption+' '+cbFIN_REC_STPD.Text;
        SQL.Add('AND FR.FIN_TIPO = '''+cbFIN_REC_STPD.Text+'''');

        qrlfil.Caption := qrlfil.Caption+' '+cbFIN_REC_STFI.Text;
        SQL.Add('AND FR.FIN_STFI NOT LIKE ''BAIXADO%''');
      end else
      begin
        { Ricardo - Tipo = Todos não entra Devolução/Abatimento, pois esse relatório é para pendências }
        if (cbFIN_REC_STPD.Text <> 'TODOS') and (cbFIN_REC_STPD.Text <> 'CARTEIRA') and (cbFIN_REC_STPD.Text <> 'BANCÁRIO') and (cbFIN_REC_STPD.Text <> 'DUPLICATA') then
        begin
          qrlfil.Caption := qrlfil.Caption+' '+cbFIN_REC_STPD.Text;
          SQL.Add('AND FR.FIN_TIPO = '''+cbFIN_REC_STPD.Text+'''');
        end else
        SQL.Add('AND POSITION(LEFT(FR.FIN_TIPO,3) IN ''DEVABA'') = 0');

        { Ricardo - Status baixado, pode ser utilizado para duplicatas/carteiras }
        if cbFIN_REC_STFI.Text <> 'TODOS' then
        begin
          qrlfil.Caption := qrlfil.Caption+' '+cbFIN_REC_STFI.Text;
          if cbFIN_REC_STFI.Text = 'PENDENTE' then
          begin
            SQL.Add('AND FR.FIN_STFI NOT LIKE ''PAGO%''');
            SQL.Add('AND FR.FIN_STFI NOT LIKE ''BAIXADO%''');
          end else
          if cbFIN_REC_STFI.Text = 'VENCIDO' then
          begin
            SQL.Add('AND FR.FIN_STFI = ''PENDENTE''');
            SQL.Add('AND FR.FIN_DTMD > '''+FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA)+'''');
          end else
          if cbFIN_REC_STFI.Text = 'A VENCER' then
          begin
            SQL.Add('AND FR.FIN_STFI = ''PENDENTE''');
            SQL.Add('AND FR.FIN_DTMD < '''+FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA)+'''');
          end else
          SQL.Add('AND FR.FIN_STFI LIKE '''+cbFIN_REC_STFI.Text+'%''');
        end;
      end;

      if cbFIN_REC_DCLI.Text <> 'TODOS' then
      begin
        qrlfil.Caption := qrlfil.Caption+' CLIENTE '+cbFIN_REC_DCLI.Text;
        SQL.Add('AND CC.CLI_FANT = '''+cbFIN_REC_DCLI.Text+'''');
      end;

      if cbFIN_REC_RCLI.Text <> 'TODOS' then
      begin
        qrlfil.Caption := qrlfil.Caption+' CLIENTE '+cbFIN_REC_RCLI.Text;
        SQL.Add('AND CC.CLI_RAZA = '''+cbFIN_REC_RCLI.Text+'''');
      end;

      if cbFIN_REC_DVEN.Text <> 'TODOS' then
      begin
        qrlfil.Caption := qrlfil.Caption+' VENDEDOR '+cbFIN_REC_DVEN.Text;
        SQL.Add('AND CU.USU_DUSU = '''+cbFIN_REC_DVEN.Text+'''');
      end;

      if cbFIN_REC_DREP.Text <> 'TODOS' then
      begin
        qrlfil.Caption := qrlfil.Caption+' REPRESENTANTE '+cbFIN_REC_DREP.Text;
        SQL.Add('AND CR.REP_FANT = '''+cbFIN_REC_DREP.Text+'''');
      end;

      if cbFIN_REC_CTNR.Text <> 'TODOS' then
      begin
        qrlfil.Caption := qrlfil.Caption+' Nº CONTAINER '+cbFIN_REC_CTNR.Text;
        SQL.Add('AND FR.FIN_CTNR LIKE ''%'+cbFIN_REC_CTNR.Text+'%''');
      end;

      { Consignados }
      if cbFIN_REC_NAFA.Text <> 'TODOS' then
      begin
        SQL.Add('AND '+IFThen(cbFIN_REC_NAFA.Text = 'NÃO','NOT','')+' EXISTS (SELECT CRD.ID FROM CAD_CLI_CRD AS CRD WHERE CRD.IDEP = FR.IDEP AND CRD.IDCD = FR.FIN_CCLI AND CRD.NAFA = 1)');
        qrlfil.Caption := qrlfil.Caption+' '+IFThen(cbFIN_REC_NAFA.Text = 'SIM','CLIENTES CONSIGNADOS','CLIENTES NÃO CONSIGNADOS');
      end;

      SQL.Add('GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12');
      SQL.Add('ORDER BY FR.FIN_DOCT,FIN_DTV1');
      Prepare;
      Open;
    end;

    { Cabeçalho Página }
    _Report(qrpfin_rec_ger_consolidado,ReportTitle);
    qrlrodape.Caption := RECUsuarios.Login;

    Prepare;
    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(TCadastro);
    freeAndNil(qrpfin_rec_ger_consolidado);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.FIN_REC_TITULOS;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_FIN)}

  oPrinterSelect(Application.Handle,'Relatórios');

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbFIN_REC_DATA.Text      = 'DATA FATURA' then
  cDATA := 'PK.DTFA'
  else if cbFIN_REC_DATA.Text = 'DATA VENCIMENTO' then
  cDATA := 'PK.DTVC'
  else if cbFIN_REC_DATA.Text = 'DATA PAGAMENTO' then
  cDATA := 'PK.DTPG'
  else if cbFIN_REC_DATA.Text = 'DATA BAIXA' then
  cDATA := 'PK.DTBX';

  if Assigned(qrpfin_rec_ger) then qrpfin_rec_ger.BringToFront else
     qrpfin_rec_ger := Tqrpfin_rec_ger.Create(Self);

  { Título }
  qrpfin_rec_ger.ReportTitle := cbFIN_REC_TREL.Text;

  { WD INI }
  qrpfin_rec_ger.QRLNDUP.Tag := qrpfin_rec_ger.QRLNDUP.Width;
  qrpfin_rec_ger.QRDNDUP.Tag := qrpfin_rec_ger.QRDNDUP.Width;

  qrpfin_rec_ger.QRLVDUP.Tag := qrpfin_rec_ger.QRLVDUP.Width;
  qrpfin_rec_ger.QRDVDUP.Tag := qrpfin_rec_ger.QRDVDUP.Width;

  with qrpfin_rec_ger do
  try
    oOTransact(TCadastro);
    with Relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT PK.TITULO AS NDUP,PK.STPD,PK.RECO,PK.IDCD,CD.FANTASIA AS DECD,CV.LOGIN AS DECV,CR.FANTASIA AS DECR,');
      SQL.Add('       PK.DTFA,PK.DTVC  ,PK.DTPG,PK.DTBX,');
      SQL.Add('       TRIM(CAST(IIF(ST.ABREV IS NOT NULL,ST.ABREV,PK.DEST) AS VARCHAR(60))) AS DEST,');
      SQL.Add('       SUM(COALESCE(CAST(IIF(LEFT(PK.DEST,4) = ''PAGO'',PK.VPAG,IIF(PK.VPEN = 0,PK.VDUP,PK.VPEN)) AS NUMERIC(15,2)),0)) AS VDUP,');
      SQL.Add('       MAX(IIF(CHAR_LENGTH(PK.TITULO) > 14,75,IIF(CHAR_LENGTH(PK.TITULO) > 13,70,IIF(CHAR_LENGTH(PK.TITULO) > 12,65,IIF(CHAR_LENGTH(PK.TITULO) > 11,60,');
      SQL.Add('       IIF(CHAR_LENGTH(PK.TITULO    ) > 10,57,IIF(CHAR_LENGTH(PK.TITULO) > 09,52,IIF(CHAR_LENGTH(PK.TITULO) > 08,47,45)))))))) AS WD_NDUP,');
      SQL.Add('       MAX(IIF(CHAR_LENGTH(PK.VDUP  ) > 10,65,IIF(CHAR_LENGTH(PK.VDUP  ) > 09,60,IIF(CHAR_LENGTH(PK.VDUP  ) > 08,55,IIF(CHAR_LENGTH(PK.VDUP  ) > 07,50,45))))) AS WD_VDUP');

      SQL.Add('FROM ' + SLPrincipal.Values[IFThen(cbFIN_REC_TREL.Tag = 0,'fin_rec_ban_bai','fin_rec_car_bai')]+' AS PK');
      SQL.Add('JOIN     TAB_STA  AS ST ON (ST.ID = PK.CDST)');
      SQL.Add('JOIN     CAD_CLI  AS CD ON (CD.ID = PK.IDCD)');
      SQL.Add('JOIN     TAB_USER AS CV ON (CV.ID = PK.IDCV)');
      SQL.Add('JOIN     CAD_REP  AS CR ON (CR.ID = PK.IDCR)');

      SQL.Add('WHERE PK.IDEP = '''+RECParametros.EP_ID+'''');
      SQL.Add('AND   PK.DEST <> ''CANCELADO''');

      { Filtros }
      QRLRodapeFiltros.Caption := EmptyStr;

      if cDATA <> '' then
      begin
        SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

        QRLRodapeFiltros.Caption := Trim(QRLRodapeFiltros.Caption + ' ' + oPrimeiraLetraMaiuscula(cbFIN_REC_DATA.Text) + ': ' + formatDateTime('dd/mm/yy',Data1) + ' até ' + formatDateTime('dd/mm/yy',Data2));
        QRLRodapeFiltros.Hint    := ' - ';
      end;

      if (cbFIN_REC_STPD.Text <> 'TODOS') and (cbFIN_REC_STPD.Text <> 'CARTEIRA') and (cbFIN_REC_STPD.Text <> 'BANCÁRIO') and (cbFIN_REC_STPD.Text <> 'DUPLICATA') then
          SQL.Add('AND PK.STPD = '''+cbFIN_REC_STPD.Text+'''');

      if (cbFIN_REC_STFI.Text <> 'TODOS') and (Pos(LeftStr(cbFIN_REC_STPD.Text,3),'DEVABA') = 0) then
      begin
        if Pos(cbFIN_REC_STFI.Text,'PENDENTEVENCIDOA VENCER') > 0 then
        begin
          SQL.Add('AND PK.DEST NOT LIKE ''PAGO%''');
          SQL.Add('AND PK.DEST NOT LIKE ''BAIXADO%''');
        end;

        if cbFIN_REC_STFI.Text = 'VENCIDO' then
        begin
          SQL.Add('AND PK.DEST = ''PENDENTE''');
          SQL.Add('AND PK.DTVC > '''+FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA)+'''');
        end else
        if cbFIN_REC_STFI.Text = 'A VENCER' then
        begin
          SQL.Add('AND PK.DEST  = ''PENDENTE''');
          SQL.Add('AND PK.DTVC <= '''+FormatDateTime('mm/dd/yy',RECParametros.SHE_DATA)+'''');
        end else
        if Pos(cbFIN_REC_STFI.Text,'PENDENTEVENCIDOA VENCER') = 0 then
           SQL.Add('AND PK.DEST LIKE '''+cbFIN_REC_STFI.Text+'%''');

        QRLRodapeFiltros.Caption := Trim(QRLRodapeFiltros.Caption + QRLRodapeFiltros.Hint + 'Título(s): ' + cbFIN_REC_STFI.Text);
        QRLRodapeFiltros.Hint    := ' - ';
      end;

      if cbFIN_REC_DCLI.Text <> 'TODOS' then
      begin
        SQL.Add('AND CD.FANTASIA = '''+cbFIN_REC_DCLI.Text+'''');

        QRLRodapeFiltros.Caption := Trim(QRLRodapeFiltros.Caption + QRLRodapeFiltros.Hint + 'Cliente: ' + cbFIN_REC_DCLI.Text);
        QRLRodapeFiltros.Hint    := ' - ';
      end;

      if cbFIN_REC_RCLI.Text <> 'TODOS' then
      begin
        SQL.Add('AND CD.RAZAO = '''+cbFIN_REC_RCLI.Text+'''');

        QRLRodapeFiltros.Caption := Trim(QRLRodapeFiltros.Caption + QRLRodapeFiltros.Hint + 'Cliente: ' + cbFIN_REC_RCLI.Text);
        QRLRodapeFiltros.Hint    := ' - ';
      end;

      if cbFIN_REC_DVEN.Text <> 'TODOS' then
      begin
        SQL.Add('AND CV.LOGIN = '''+cbFIN_REC_DVEN.Text+'''');

        QRLRodapeFiltros.Caption := Trim(QRLRodapeFiltros.Caption + QRLRodapeFiltros.Hint + 'Vendedor: ' + cbFIN_REC_DVEN.Text);
        QRLRodapeFiltros.Hint    := ' - ';
      end;

      if cbFIN_REC_DREP.Text <> 'TODOS' then
      begin
        SQL.Add('AND CR.FANTASIA = ''' + cbFIN_REC_DREP.Text +'''');

        QRLRodapeFiltros.Caption := Trim(QRLRodapeFiltros.Caption + QRLRodapeFiltros.Hint + 'Representante: ' + cbFIN_REC_DREP.Text);
        QRLRodapeFiltros.Hint    := ' - ';
      end;

      if cbFIN_REC_CTNR.Text <> 'TODOS' then
      begin
        SQL.Add('AND PK.CTNR LIKE ''%'+cbFIN_REC_CTNR.Text+'%''');

        QRLRodapeFiltros.Caption := Trim(QRLRodapeFiltros.Caption + QRLRodapeFiltros.Hint + 'Container Nº: ' + cbFIN_REC_CTNR.Text);
        QRLRodapeFiltros.Hint    := ' - ';
      end;

      { Consignados }
      if cbFIN_REC_NAFA.Text <> 'TODOS' then
      begin
        SQL.Add('AND '+IFThen(cbFIN_REC_NAFA.Text = 'NÃO','NOT','') + ' EXISTS (SELECT CRD.ID FROM CAD_CLI_CRD AS CRD WHERE CRD.IDEP = PK.IDEP AND CRD.IDCD = PK.IDCD AND CRD.NAFA = 1)');

        QRLRodapeFiltros.Caption := Trim(QRLRodapeFiltros.Caption   + QRLRodapeFiltros.Hint + IFThen(cbFIN_REC_NAFA.Text = 'SIM','CLIENTES CONSIGNADOS','CLIENTES NÃO CONSIGNADOS'));
        QRLRodapeFiltros.Hint    := ' - ';
      end;

      SQL.Add('GROUP BY NDUP,STPD,RECO,IDCD,DECD,DECV,DECR,DTFA,DTVC,DTPG,DTBX,DEST');
      SQL.Add('ORDER BY NDUP,DTVC');

      Prepare;
      Open;
    end;

    { Cabeçalho Página }
    _Report(qrpfin_rec_ger,ReportTitle);

    { Sub Título }
    QRLSubTitulo.Caption := cbFIN_REC_STPD.Text;

    if cbFIN_REC_STFI.Text <> 'TODOS' then
       QRLSubTitulo.Caption := IFThen(QRLSubTitulo.Caption = EmptyStr,EmptyStr,QRLSubTitulo.Caption + ' ') + cbFIN_REC_STFI.Text;

    { RODAPÉ Filtros }
    if TQRLabel(FindComponent('QRLRodapeFiltros')) <> Nil then
       QRLRodapeFiltros.Caption := IFThen(QRLRodapeFiltros.Caption = EmptyStr,RECParametros.EP_NO,QRLRodapeFiltros.Caption);

    { RODAPÉ Usuário }
    if TQRLabel(FindComponent('QRLRodapeUsuario')) <> Nil then
       TQRLabel(FindComponent('QRLRodapeUsuario')).Caption := oPrimeiraLetraMaiuscula(RECUsuarios.Login) + ': ' + FormatDateTime('dd/mm/yyyy hh:mm',Now);

    { RODAPÉ Página }
    if TQRSysData(FindComponent('QRSDRodapePagina')) <> Nil then
       TQRSysData(FindComponent('QRSDRodapePagina')).Text := 'Página: ' + TQRSysData(FindComponent('QRSDRodapePagina')).Text;

    { RODAPÉ Dispositivo }
    if TQRLabel(FindComponent('QRLRodapeDispositivo')) <> Nil then
       TQRLabel(FindComponent('QRLRodapeDispositivo')).Caption := qrpfin_rec_ger.Name + ': ' + RECParametros.HOST + ' [' + RECParametros.IP +']';

    { Mostra coluna de pagto / baixa }
    if (cbFIN_REC_DATA.Text = 'DATA BAIXA') or (cbFIN_REC_DATA.Text = 'DATA PAGAMENTO') or (LeftStr(cbFIN_REC_STFI.Text,4) = 'PAGO') or (Pos(LeftStr(cbFIN_REC_STFI.Text,5),'BAIXAPROTECARTÓRECUPNÃO P') > 1) then
    begin
      QRLDTPG.Enabled := True;
      QRDDTPG.Enabled := True;

      if (cbFIN_REC_DATA.Text = 'DATA BAIXA') or (Pos(LeftStr(cbFIN_REC_STFI.Text,5),'BAIXAPROTECARTÓRECUPNÃO P') > 1) then
      begin
        QRLDTPG.Caption   := 'Baixa';
        QRDDTPG.DataField := 'DTBX';
      end;
    end;

    Prepare;
    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(TCadastro);
    freeAndNil(qrpfin_rec_ger);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PRG_PROGRAMACAO_VENDA;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  oPrinterSelect(Application.Handle,'Pedidos');

  if qrpven_prg = nil then
     qrpven_prg := Tqrpven_prg.Create(Self);

  with qrpven_prg do
  try
    oOTransact(qrpven_prg.TCadastro);
    with qrpven_prg.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_PRG_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_prg_cab']+' "PED_PRG_CAB"');
      SQL.Add('WHERE    PED_PRG_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_PRG_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_PRG_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_PRG_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_PRG_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_PRG_CAB.ID DESC');
      Open;
    end;

    with qrpven_prg.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_PRG_ITE.ROM_DUNI,PED_PRG_ITE.ID,PED_PRG_ITE.ROM_ITEM,PED_PRG_ITE.ROM_DCOR,PED_PRG_ITE.ROM_DPRO,PED_PRG_ITE.ROM_QTDE,PED_PRG_ITE.ROM_UNIT,PED_PRG_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_prg_ite']+' "PED_PRG_ITE"');
      SQL.Add('WHERE    PED_PRG_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_PRG_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_PRG_ITE.ROM_ITEM');
      Open;
    end;

    { Cabeçalho Página }
    _Report(qrpven_prg,qrpven_prg.ReportTitle);

    qrpven_prg.qrlcli.Caption  := '('+oStrZero(qrpven_prg.romanROM_CCLI.AsInteger,5)+') '+qrpven_prg.romanCLI_FANT.AsString;
    qrpven_prg.qrlven.Caption  := qrpven_prg.romanUSU_DUSU.AsString;
    qrpven_prg.qrlrep.Caption  := qrpven_prg.romanREP_FANT.AsString;

    if qrpven_prg.romanROM_TDSC.AsString = '%' then
    qrpven_prg.qrldesc.Caption := 'Desconto (%)'
    else
    qrpven_prg.qrldesc.Caption  := 'Desconto ($)';

    qrpven_prg.qrlpagina.Caption := 'Página: '+qrpven_prg.romanROM_CONC.AsString;

    with QConsulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+IntToStr(qrpven_prg.romanROM_CPAG.AsInteger)+'''');
      Open;

      qrpven_prg.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpven_prg.qrlpag.Caption   := fields[1].AsString;
    end;

    qrpven_prg.lanpa1.Caption  := '';
    qrpven_prg.ladpa1.Caption  := '';
    qrpven_prg.lavpa1.Caption  := '';
    qrpven_prg.lanpa2.Caption  := '';
    qrpven_prg.ladpa2.Caption  := '';
    qrpven_prg.lavpa2.Caption  := '';
    qrpven_prg.lanpa3.Caption  := '';
    qrpven_prg.ladpa3.Caption  := '';
    qrpven_prg.lavpa3.Caption  := '';
    qrpven_prg.lanpa4.Caption  := '';
    qrpven_prg.ladpa4.Caption  := '';
    qrpven_prg.lavpa4.Caption  := '';
    qrpven_prg.lanpa5.Caption  := '';
    qrpven_prg.ladpa5.Caption  := '';
    qrpven_prg.lavpa5.Caption  := '';
    qrpven_prg.lanpa6.Caption  := '';
    qrpven_prg.ladpa6.Caption  := '';
    qrpven_prg.lavpa6.Caption  := '';
    qrpven_prg.lanpa7.Caption  := '';
    qrpven_prg.ladpa7.Caption  := '';
    qrpven_prg.lavpa7.Caption  := '';
    qrpven_prg.lanpa8.Caption  := '';
    qrpven_prg.ladpa8.Caption  := '';
    qrpven_prg.lavpa8.Caption  := '';
    qrpven_prg.lanpa9.Caption  := '';
    qrpven_prg.ladpa9.Caption  := '';
    qrpven_prg.lavpa9.Caption  := '';
    qrpven_prg.lanpa10.Caption := '';
    qrpven_prg.ladpa10.Caption := '';
    qrpven_prg.lavpa10.Caption := '';

    VEN_PED_PROGRAMACAO_SEMBAIXA;

    qrpven_prg.Prepare;

    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(qrpven_prg.TCadastro);
    freeAndNil(qrpven_prg);
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.VEN_PED_PROGRAMACAO_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  with QConsulta do
  begin
    valo := qrpven_prg.romanROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,');
    SQL.Add('       PAG_D010,PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018');
    SQL.Add('FROM   TAB_PAG');
    SQL.Add('WHERE  ID = '''+IntToStr(qrpven_prg.romanROM_CPAG.AsInteger)+'''');
    Open;
  end;

  for i := 1 to QConsulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpven_prg.lanpa1.Caption  := '01)';
             qrpven_prg.ladpa1.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[1].Value)));
             qrpven_prg.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpven_prg.lanpa2.Caption  := '02)';
             qrpven_prg.ladpa2.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[2].Value)));
             qrpven_prg.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpven_prg.lanpa3.Caption  := '03)';
             qrpven_prg.ladpa3.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[3].Value)));
             qrpven_prg.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpven_prg.lanpa4.Caption  := '04)';
             qrpven_prg.ladpa4.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[4].Value)));
             qrpven_prg.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpven_prg.lanpa5.Caption  := '05)';
             qrpven_prg.ladpa5.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[5].Value)));
             qrpven_prg.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpven_prg.lanpa6.Caption  := '06)';
             qrpven_prg.ladpa6.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[6].Value)));
             qrpven_prg.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpven_prg.lanpa7.Caption  := '07)';
             qrpven_prg.ladpa7.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[7].Value)));
             qrpven_prg.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpven_prg.lanpa8.Caption  := '08)';
             qrpven_prg.ladpa8.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[8].Value)));
             qrpven_prg.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpven_prg.lanpa9.Caption  := '09)';
             qrpven_prg.ladpa9.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[9].Value)));
             qrpven_prg.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpven_prg.lanpa10.Caption  := '10)';
             qrpven_prg.ladpa10.Caption  := formatDateTime('dd/mm/yy',uRETDTVencimento(incDay(qrpven_prg.romanROM_DROM.AsDateTime,QConsulta.fields[10].Value)));
             qrpven_prg.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/QConsulta.Fields[0].AsInteger,-2));
           end;

    end;
  end;

  {$IFEND}
end;

procedure Tfrmrelatorio_geral.GER_PRG_PRO_GERAL;
begin
  {$IF DEFINED(DEF_ERP) OR DEFINED(DEF_PDV)}

  if cbGER_TVIS.Text = '' then
  raise exception.Create('Tipo de visualização não informado !');

  if cbGER_STFI.Text = '' then
  raise exception.Create('Situação não informada !');

  oPrinterSelect(Application.Handle,'Pedidos');

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := 'PED_PRG_CAB.ROM_DROM';

  qrpger_prg_pro_ger := Tqrpger_prg_pro_ger.Create(Nil);

  with qrpger_prg_pro_ger do
  try
    oOTransact(qrpger_prg_pro_ger.TCadastro);
    with qrpger_prg_pro_ger.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PRO_CART,PRO_DUNI,ROM_DPRO,CLI_FANT,REP_FANT,SUM(ROM_QTDE) "ROM_QTDE",AVG(ROM_UNIT) "ROM_UNIT"');
      SQL.Add('FROM     CAD_PRO,CAD_CLI,CAD_REP,'+SLPrincipal.Values['ped_prg_cab']+' "PED_PRG_CAB" ,'+SLPrincipal.Values['ped_prg_ite']+' "PED_PRG_ITE"');
      SQL.Add('WHERE    PED_PRG_ITE.ROM_CCAB = PED_PRG_CAB.ID');
      SQL.Add('AND      PED_PRG_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_PRG_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_PRG_CAB.ROM_CREP = CAD_REP.ID');

      qrpger_prg_pro_ger.qrlfil.Caption := qrpger_prg_pro_ger.qrlfil.Caption+' TIPO DE VISUALIZAÇÃO '+trim(cbGER_TVIS.Text);

      if cDATA <> '' then
      begin
        qrpger_prg_pro_ger.qrlfil.Caption := qrpger_prg_pro_ger.qrlfil.Caption+' '+cbGER_DATA.Text+' '+formatDateTime('dd/mm/yy',Data1)+' ATE '+formatDateTime('dd/mm/yy',Data2);
        SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');
      end;

      if cbGER_STFI.Text <> 'TODOS' then
      begin
        qrpger_prg_pro_ger.qrlfil.Caption := qrpger_prg_pro_ger.qrlfil.Caption+' SITUAÇÃO '+cbGER_STFI.Text;
        SQL.Add('AND PED_PRG_CAB.ROM_STFI = '''+cbGER_STFI.Text+'''');
      end else
      SQL.Add('AND PED_PRG_CAB.ROM_STFI <> ''CANCELADO''');

      if cbGER_FIL1.Text <> 'TODOS' then
      begin
        qrpger_prg_pro_ger.qrlfil.Caption := qrpger_prg_pro_ger.qrlfil.Caption+' Referencia '+cbGER_FIL1.Text;
        SQL.Add('AND CAD_PRO.PRO_CPRO LIKE ''%'+cbGER_FIL1.Text+'%''');
      end;

      if cbGER_FIL2.Text <> 'TODOS' then
      begin
        qrpger_prg_pro_ger.qrlfil.Caption := qrpger_prg_pro_ger.qrlfil.Caption+' Grupo '+cbGER_FIL2.Text;
        SQL.Add('AND CAD_PRO.PRO_DGRP LIKE ''%'+cbGER_FIL2.Text+'%''');
      end;

      SQL.Add('GROUP BY PRO_CART,PRO_DUNI,ROM_DPRO,CLI_FANT,REP_FANT');
      SQL.Add('ORDER BY 5');
      Open;
    end;

    { Cabeçalho Página }
    _Report(qrpger_prg_pro_ger,'Programação de Vendas de Produtos');
    qrpger_prg_pro_ger.Prepare;

    case FrmRelatorio_Geral.TAG of
      0: PreviewModal;
      1: Print;

      { PDF }
      2: try
           ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { EXCEL }
      3: try
           ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;

      { WORD }
      4: try
           ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
           oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                      'Erro: ' + E.Message + '.');
           end;
         end;
    end;
  finally
    oCTransact(qrpger_prg_pro_ger.TCadastro);
    freeAndNil(qrpger_prg_pro_ger);
  end;

  {$IFEND}
end;

end.
