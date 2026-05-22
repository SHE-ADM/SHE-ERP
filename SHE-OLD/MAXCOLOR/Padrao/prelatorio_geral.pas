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
    consulta: TIBQuery;
    imageOPC: TImageList;
    ImageList1: TImageList;
    ibTRA: TIBTransaction;
    aux: TIBQuery;
    expXLS: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    PDF: TQRPDFFilter;
    pcMAIN: TdxPageControl;
    tsCAD_CLI: TdxTabSheet;
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
    Shape139: TShape;
    clCAD_CLI_REGI: TLabel;
    Shape140: TShape;
    Shape31: TShape;
    clCAD_CLI_DREP: TLabel;
    Shape32: TShape;
    Shape33: TShape;
    clCAD_CLI_DVEN: TLabel;
    Shape34: TShape;
    Shape189: TShape;
    clCAD_CLI_CDEP: TLabel;
    Shape190: TShape;
    cbCAD_CLI_TREL: TdxImageEdit;
    cbCAD_CLI_DATA: TdxImageEdit;
    cbCAD_CLI_ESTA: TdxImageEdit;
    cbCAD_CLI_REGI: TdxImageEdit;
    cbCAD_CLI_DCLI: TdxPickEdit;
    cbCAD_CLI_DCID: TdxPickEdit;
    cbCAD_CLI_DREP: TdxPickEdit;
    cbCAD_CLI_DVEN: TdxPickEdit;
    cbCAD_CLI_CDEP: TdxImageEdit;
    tsCAD_TRA: TdxTabSheet;
    tsCAD_REP: TdxTabSheet;
    Bevel1: TBevel;
    Shape23: TShape;
    Shape24: TShape;
    clCAD_REP_DATA: TLabel;
    Shape25: TShape;
    Shape26: TShape;
    clCAD_REP_TREL: TLabel;
    Shape29: TShape;
    Shape30: TShape;
    clCAD_REP_DREP: TLabel;
    Shape27: TShape;
    Shape28: TShape;
    clCAD_REP_REGI: TLabel;
    Shape197: TShape;
    Shape198: TShape;
    clCAD_REP_CID: TLabel;
    cbCAD_REP_TREL: TdxImageEdit;
    cbCAD_REP_DATA: TdxImageEdit;
    cbCAD_REP_DREP: TdxImageEdit;
    cbCAD_REP_REGI: TdxImageEdit;
    cbCAD_REP_CID: TdxPickEdit;
    tsCAD_PRO: TdxTabSheet;
    Bevel3: TBevel;
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
    Shape45: TShape;
    Shape46: TShape;
    clCAD_PRO_DATA: TLabel;
    Shape61: TShape;
    Shape62: TShape;
    clCAD_PRO_DCAT: TLabel;
    Shape63: TShape;
    Shape64: TShape;
    clCAD_PRO_DPRO: TLabel;
    Shape107: TShape;
    Shape108: TShape;
    clCAD_PRO_TEST: TLabel;
    Shape49: TShape;
    Shape50: TShape;
    clCAD_PRO_DEMP: TLabel;
    Shape109: TShape;
    Shape110: TShape;
    Label14: TLabel;
    Shape168: TShape;
    Shape170: TShape;
    clCAD_PRO_DUNI: TLabel;
    Shape239: TShape;
    Shape240: TShape;
    clCAD_PRO_CART2: TLabel;
    cbCAD_PRO_TREL: TdxImageEdit;
    cbCAD_PRO_DGRP: TdxImageEdit;
    cbCAD_PRO_DCOL: TdxImageEdit;
    cbCAD_PRO_DATA: TdxImageEdit;
    cbCAD_PRO_DCAT: TdxImageEdit;
    cbCAD_PRO_CART1: TdxPickEdit;
    cbCAD_PRO_DPRO: TdxPickEdit;
    cbCAD_PRO_TEST: TdxImageEdit;
    cbCAD_PRO_DEMP: TdxImageEdit;
    cbCAD_PRO_OBSE: TdxMemo;
    cbCAD_PRO_DUNI: TdxImageEdit;
    cbCAD_PRO_CART2: TdxPickEdit;
    tsVEN_OCA: TdxTabSheet;
    Bevel4: TBevel;
    Shape81: TShape;
    Shape82: TShape;
    clVEN_OCA_TREL: TLabel;
    Shape83: TShape;
    Shape84: TShape;
    clVEN_OCA_DATA: TLabel;
    cbVEN_OCA_TREL: TdxImageEdit;
    cbVEN_OCA_DATA: TdxImageEdit;
    tsVEN_PRG: TdxTabSheet;
    Bevel5: TBevel;
    Shape93: TShape;
    Shape94: TShape;
    clVEN_PRG_TREL: TLabel;
    Shape103: TShape;
    Shape104: TShape;
    clVEN_PRG_DATA: TLabel;
    cbVEN_PRG_TREL: TdxImageEdit;
    cbVEN_PRG_DATA: TdxImageEdit;
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
    tsNFE_CAB: TdxTabSheet;
    Shape35: TShape;
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
    Shape101: TShape;
    Shape102: TShape;
    clNFE_CAB_DEMP: TLabel;
    Label1: TLabel;
    Shape36: TShape;
    Shape187: TShape;
    Shape188: TShape;
    clNFE_CAB_DUNI: TLabel;
    cbNFE_CAB_TREL: TdxImageEdit;
    cbNFE_CAB_STA: TdxImageEdit;
    cbNFE_CAB_DATA: TdxImageEdit;
    cbNFE_CAB_DFAV: TdxPickEdit;
    cbNFE_CAB_DVEN: TdxPickEdit;
    cbNFE_CAB_DREP: TdxPickEdit;
    cbNFE_CAB_DTRA: TdxPickEdit;
    cbNFE_CAB_CPRO: TdxPickEdit;
    cbNFE_CAB_TNFE: TdxPickEdit;
    cbNFE_CAB_DEMP: TdxImageEdit;
    edqrkg: TdxMaskEdit;
    cbrkg1: TdxPickEdit;
    cbrkg2: TdxPickEdit;
    cbNFE_CAB_DUNI: TdxPickEdit;
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
    Shape7: TShape;
    Shape8: TShape;
    clCAI_MOV_STFI: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    clCAI_MOV_DFOR: TLabel;
    Shape13: TShape;
    Shape14: TShape;
    clCAI_MOV_STCO: TLabel;
    Shape15: TShape;
    Shape16: TShape;
    clCAI_MOV_TIPO: TLabel;
    cbCAI_MOV_TREL: TdxImageEdit;
    cbCAI_MOV_DATA: TdxImageEdit;
    cbCAI_MOV_DCLI: TdxPickEdit;
    cbCAI_MOV_CDCX: TdxImageEdit;
    cbCAI_MOV_DVEN: TdxPickEdit;
    cbCAI_MOV_DREP: TdxPickEdit;
    cbCAI_MOV_CPRO: TdxPickEdit;
    cbCAI_MOV_STFI: TdxImageEdit;
    cbCAI_MOV_DFOR: TdxPickEdit;
    cbCAI_MOV_STCO: TdxImageEdit;
    cbCAI_MOV_TIPO: TdxPickEdit;
    tsFIN_DUP: TdxTabSheet;
    Bevel8: TBevel;
    Shape3: TShape;
    Shape4: TShape;
    clFIN_DUP_TREL: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    clFIN_DUP_DATA: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    clFIN_DUP_STFI: TLabel;
    Shape243: TShape;
    Shape244: TShape;
    clFIN_DUP_IDBX: TLabel;
    cbFIN_DUP_TREL: TdxImageEdit;
    cbFIN_DUP_DATA: TdxImageEdit;
    cbFIN_DUP_STFI: TdxImageEdit;
    cbFIN_DUP_IDBX: TdxImageEdit;
    tsPAG_COM: TdxTabSheet;
    Bevel9: TBevel;
    Shape19: TShape;
    Shape20: TShape;
    clPAG_COM_TREL: TLabel;
    Shape155: TShape;
    Shape156: TShape;
    clPAG_COM_DATA: TLabel;
    Shape149: TShape;
    Shape150: TShape;
    clPAG_COM_DESC: TLabel;
    cbPAG_COM_TREL: TdxImageEdit;
    cbPAG_COM_DATA: TdxImageEdit;
    cbPAG_COM_DESC: TdxMaskEdit;
    tsCAD_FUN: TdxTabSheet;
    Bevel10: TBevel;
    Shape67: TShape;
    Shape68: TShape;
    clCAD_FUN_TREL: TLabel;
    Shape71: TShape;
    Shape72: TShape;
    clCAD_FUN_DATA: TLabel;
    Shape73: TShape;
    Shape74: TShape;
    clCAD_FUN_DCAR: TLabel;
    Shape79: TShape;
    Shape80: TShape;
    clCAD_FUN_APEL: TLabel;
    Shape153: TShape;
    Shape154: TShape;
    clCAD_FUN_MES: TLabel;
    Shape157: TShape;
    Shape158: TShape;
    clCAD_FUN_ANO: TLabel;
    cbCAD_FUN_TREL: TdxImageEdit;
    cbCAD_FUN_DATA: TdxImageEdit;
    cbCAD_FUN_DCAR: TdxImageEdit;
    cbCAD_FUN_APEL: TdxPickEdit;
    cbCAD_FUN_ANO: TdxPickEdit;
    tsVEN_PRC: TdxTabSheet;
    Bevel11: TBevel;
    Shape159: TShape;
    Shape160: TShape;
    clVEN_PRC_TREL: TLabel;
    Shape161: TShape;
    Shape162: TShape;
    clVEN_PRC_DATA: TLabel;
    Shape199: TShape;
    clVEN_PRC_CART: TLabel;
    Shape200: TShape;
    Shape201: TShape;
    clVEN_PRC_STFI: TLabel;
    Shape202: TShape;
    Shape203: TShape;
    clVEN_PRC_DFOR: TLabel;
    Shape204: TShape;
    Shape205: TShape;
    clVEN_PRC_DUSU: TLabel;
    Shape206: TShape;
    cbVEN_PRC_TREL: TdxImageEdit;
    cbVEN_PRC_DATA: TdxImageEdit;
    cbVEN_PRC_CART: TdxPickEdit;
    cbVEN_PRC_STFI: TdxImageEdit;
    cbVEN_PRC_DFOR: TdxPickEdit;
    cbVEN_PRC_DUSU: TdxPickEdit;
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
    Shape91: TShape;
    Shape92: TShape;
    clFIN_REC_DCLI: TLabel;
    Shape95: TShape;
    Shape96: TShape;
    clFIN_REC_DREP: TLabel;
    Shape97: TShape;
    Shape98: TShape;
    clFIN_REC_DVEN: TLabel;
    Shape99: TShape;
    Shape100: TShape;
    clFIN_REC_RCLI: TLabel;
    Shape117: TShape;
    Shape118: TShape;
    clFIN_REC_STPD: TLabel;
    Shape163: TShape;
    Shape164: TShape;
    clFIN_REC_CTNR: TLabel;
    cbFIN_REC_TREL: TdxImageEdit;
    cbFIN_REC_DATA: TdxImageEdit;
    cbFIN_REC_DCLI: TdxPickEdit;
    cbFIN_REC_DREP: TdxPickEdit;
    cbFIN_REC_DVEN: TdxPickEdit;
    cbFIN_REC_RCLI: TdxPickEdit;
    cbFIN_REC_STPD: TdxImageEdit;
    cbFIN_REC_STFI: TdxImageEdit;
    cbFIN_REC_CTNR: TdxPickEdit;
    tsENT_PRO: TdxTabSheet;
    Bevel13: TBevel;
    Shape105: TShape;
    Shape106: TShape;
    clENT_PRO_TREL: TLabel;
    Shape113: TShape;
    Shape114: TShape;
    clENT_PRO_DATA: TLabel;
    Shape165: TShape;
    Shape166: TShape;
    clENT_PRO_CDRO: TLabel;
    Shape191: TShape;
    Shape192: TShape;
    clENT_PRO_CPRO: TLabel;
    Shape193: TShape;
    Shape194: TShape;
    clENT_PRO_OPER: TLabel;
    Shape195: TShape;
    Shape196: TShape;
    clENT_PRO_DEMP: TLabel;
    cbENT_PRO_TREL: TdxImageEdit;
    cbENT_PRO_DATA: TdxImageEdit;
    cbENT_PRO_OPER: TdxImageEdit;
    cbENT_PRO_DEMP: TdxImageEdit;
    cbENT_PRO_CDRO: TdxPickEdit;
    cbENT_PRO_CPRO: TdxPickEdit;
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
    tsGER: TdxTabSheet;
    Shape119: TShape;
    clGER_TREL: TLabel;
    slGER_DFAV: TShape;
    clGER_DFAV: TLabel;
    Shape171: TShape;
    Shape172: TShape;
    clGER_DATA: TLabel;
    sbGER_DFAV: TShape;
    Shape167: TShape;
    clGER_TVIS: TLabel;
    Shape169: TShape;
    slGER_DVEN: TShape;
    clGER_DVEN: TLabel;
    sbGER_DVEN: TShape;
    Shape120: TShape;
    slGER_DREP: TShape;
    clGER_DREP: TLabel;
    sbGER_DREP: TShape;
    slGER_FIL1: TShape;
    clGER_FIL1: TLabel;
    sbGER_FIL1: TShape;
    slGER_STPD: TShape;
    clGER_STPD: TLabel;
    sbGER_STPD: TShape;
    slGER_FIL2: TShape;
    clGER_FIL2: TLabel;
    sbGER_FIL2: TShape;
    slGER_FIL3: TShape;
    clGER_FIL3: TLabel;
    sbGER_FIL3: TShape;
    slGER_FIL4: TShape;
    clGER_FIL4: TLabel;
    sbGER_FIL4: TShape;
    slGER_STCO: TShape;
    clGER_STCO: TLabel;
    sbGER_STCO: TShape;
    slGER_STFI: TShape;
    clGER_STFI: TLabel;
    sbGER_STFI: TShape;
    cbGER_TREL: TdxImageEdit;
    cbGER_DATA: TdxImageEdit;
    cbGER_DFAV: TdxPickEdit;
    cbGER_TVIS: TdxImageEdit;
    cbGER_DVEN: TdxPickEdit;
    cbGER_DREP: TdxPickEdit;
    cbGER_FIL1: TdxPickEdit;
    cbGER_STPD: TdxImageEdit;
    cbGER_FIL2: TdxPickEdit;
    cbGER_FIL3: TdxPickEdit;
    cbGER_FIL4: TdxPickEdit;
    cbprkg1: TdxPickEdit;
    cbprkg2: TdxPickEdit;
    cbGER_STCO: TdxImageEdit;
    cbGER_STFI: TdxImageEdit;
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
    Shape185: TShape;
    Shape186: TShape;
    clFIN_PAG_DOCT: TLabel;
    Shape241: TShape;
    Shape242: TShape;
    clFIN_PAG_DUPL: TLabel;
    cbFIN_PAG_TREL: TdxImageEdit;
    cbFIN_PAG_DATA: TdxImageEdit;
    cbFIN_PAG_STFI: TdxImageEdit;
    cbFIN_PAG_DFOR: TdxPickEdit;
    cbFIN_PAG_DFIN: TdxPickEdit;
    cbFIN_PAG_DCUS: TdxPickEdit;
    cbFIN_PAG_RFOR: TdxPickEdit;
    cbFIN_PAG_DOCT: TdxPickEdit;
    cbFIN_PAG_DUPL: TdxImageEdit;
    tsNFE_LOG: TdxTabSheet;
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
    Shape213: TShape;
    clNFE_LOG_DVEN: TLabel;
    Shape215: TShape;
    clNFE_LOG_DTRA: TLabel;
    Shape214: TShape;
    Shape216: TShape;
    cbNFE_LOG_TREL: TdxImageEdit;
    cbNFE_LOG_DATA: TdxImageEdit;
    cbNFE_LOG_DEMP: TdxPickEdit;
    cbNFE_LOG_TIPO: TdxPickEdit;
    cbNFE_LOG_OPER: TdxPickEdit;
    cbNFE_LOG_DFAV: TdxPickEdit;
    cbNFE_LOG_DVEN: TdxPickEdit;
    cbNFE_LOG_DTRA: TdxPickEdit;
    tsTAB_TAR: TdxTabSheet;
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
    GBDT1: TGroupBox;
    GBDT2: TGroupBox;
    dxDT2: TMonthCalendar;
    dxDT1: TMonthCalendar;
    Shape245: TShape;
    Shape246: TShape;
    clVEN_PED_VIA: TLabel;
    cbVEN_PED_VIA: TdxImageEdit;
    cbCAD_FUN_MES: TdxImageEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSaiClick(Sender: TObject);
    procedure BVisClick(Sender: TObject);
    procedure dxDT1Click(Sender: TObject);
    procedure BSavClick(Sender: TObject);
    procedure cbCAD_CLI_TRELChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbCAI_MOV_TRELChange(Sender: TObject);
    procedure cbNFE_CAB_TRELChange(Sender: TObject);
    procedure cbPAG_COM_DESCValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbCAD_PRO_DEMPChange(Sender: TObject);
    procedure cbCAD_PRO_TRELChange(Sender: TObject);
    procedure cbENT_PRO_TRELChange(Sender: TObject);
    procedure cbVEN_PRC_TRELChange(Sender: TObject);
    procedure cbFIN_REC_TRELChange(Sender: TObject);
    procedure cbCAD_PRO_CART1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPriClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NOME_TABELA_RELATORIO: string;
    CDPD,CDRO,CDBX,CDNF: string;
    Data1,Data2: TDate;
    cDATA: string;

    procedure DEFINE_RELATORIO;
    procedure CAD_FUN_ETQ;
    procedure ENT_PRO_ROMANEIOS;
    procedure ENT_PRO_ROMANEIOS_CONFERENCIA;
    procedure CAD_PRO_ESTOQUE;
    procedure CAD_PRO_TABELA_PRECO;
    procedure CAD_PRO_FICHA_VENDA_FOTO;
    procedure VEN_PED_PEDIDO_VENDA;
    procedure VEN_PED_PEDIDO_CONFERENCIA;
    procedure VEN_PED_PEDIDO_SEPARACAO;
    procedure VEN_PED_PEDIDO_COBRANCA;
    procedure VEN_PED_PEDIDO_SEMBAIXA;
    procedure VEN_PED_PEDIDO_COMBAIXA(stco: string);
    procedure VEN_PED_COBRANCA_SEMBAIXA;
    procedure VEN_PED_COBRANCA_COMBAIXA(stco: string);
    procedure ROM_CAB_ROMANEIO_COBRANCA_SINTETICO;
    procedure ROM_CAB_ROMANEIO_COBRANCA_BANCARIO;
    procedure ROM_CAB_ROMANEIO_COBRANCA_SEMBAIXA;
    procedure ROM_CAB_ROMANEIO_COBRANCA_COMBAIXA;
    procedure ROM_CAB_ROMANEIO_COBRANCA_ANALITICO;
    procedure ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_SEMBAIXA;
    procedure ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_COMBAIXA;
    procedure ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_BANCARIO;
    procedure ROM_CAB_CONFERENCIA_001;
    procedure ROM_CAB_CONFERENCIA_002;
    procedure NFE_CAB_GERAL;
    procedure NFE_DUP_EMI;
    procedure FIN_REC_GERAL;
    procedure PAG_COM_PAGAMENTO;
    procedure CAI_MOV_GERAL_SINTETICO;
    procedure CAI_MOV_GERAL_ANALITICO;
    procedure CAI_MOV_CAIXA_SINTETICO;
    procedure CAI_MOV_CAIXA_ANALITICO;
    procedure CAI_MOV_FLUXO_CAIXA_CARTEIRA;
    procedure CAI_MOV_FLUXO_CAIXA_BANCARIO;
    procedure ENVIA_RELATORIO(WTag: Word);

    procedure PED_CUP_SCO;
    procedure PED_CUP_VEN;
  end;

var
  frmrelatorio_geral: Tfrmrelatorio_geral;
                BRet: boolean;
implementation

uses uPrincipal, parquivo_geral, qcad_pro_fic_foto,
  qent_pro_rom, qent_pro_con, QPED_CUP_VEN, QPED_CUP_SCO,
  qfin_dup, pfin_dup, qcai_mov_flx_car,
  qcai_mov_flx_ban, qcai_mov_cai_ana, qcai_mov_cai_sin, qcai_mov_ger,
  qcai_mov_ger_ana, qcob_ped, qprg_con, qrom_con_001,
  qrom_con_002, qven_con, qven_ped,
  qcob_rom, qcob_rom_ref, qsep_ped, qcad_pro_est,
  qfin_rec_ger, qpag_com, qnfe_ger, qProduto_Preco_Tabela, qcad_fun_eti;

{$R *.dfm}

procedure Tfrmrelatorio_geral.FormCreate(Sender: TObject);
begin
  tsCAD_CLI.TabVisible     := false;
  tsCAD_PRO.TabVisible     := false;
  tsCAD_REP.TabVisible     := false;
  tsCAD_TRA.TabVisible     := false;
  tsVEN_OCA.TabVisible     := false;
  tsVEN_PRG.TabVisible     := false;
  tsVEN_PRC.TabVisible     := false;
  tsVEN_PED.TabVisible     := false;
  tsROM_CAB.TabVisible     := false;
  tsNFE_CAB.TabVisible     := false;
  tsCAI_MOV.TabVisible     := false;
  tsCAD_FUN.TabVisible     := false;
  tsFIN_DUP.TabVisible     := false;
  tsFIN_REC.TabVisible     := false;
  tsGER.TabVisible         := false;

  cbCAD_FUN_MES.Text := INTTOSTR(oRETMES(Date));
  cbCAD_FUN_ANO.Text := INTTOSTR(oRETANO(Date));
end;

procedure Tfrmrelatorio_geral.FormShow(Sender: TObject);
begin
  dxDT1.Date := StartOfTheMonth(strtodate(SLPrincipal.Values['data_sistema']));
  dxDT2.Date := endOfTheMonth(strtodate(SLPrincipal.Values['data_sistema']));

  if tsGER.TabVisible then
  DEFINE_RELATORIO;
end;

procedure Tfrmrelatorio_geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  OnClose := Nil;

  frmprincipal.par_pri.First;
  if frmprincipal.par_pri.Locate('PRI_SECA','Relatórios',[]) then
  frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  Action := caFree;
end;

procedure Tfrmrelatorio_geral.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;
  
  oCTransact(IBTra);
  oCTransact(TSheild);
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

procedure Tfrmrelatorio_geral.FIN_REC_GERAL;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbFIN_REC_DATA.Text      = 'DATA FATURAMENTO' then
  cDATA := 'FIN_DCAD'
  else if cbFIN_REC_DATA.Text = 'DATA VENCIMENTO' then
  cDATA := 'FIN_DVEN'
  else if cbFIN_REC_DATA.Text = 'DATA PAGAMENTO' then
  cDATA := 'FIN_DPAG';

  if qrpfin_rec_ger = nil then
     qrpfin_rec_ger := Tqrpfin_rec_ger.Create(self);

  try
    with qrpfin_rec_ger.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FIN_REC_BAI.*,CLI_FANT,CLI_RAZA,CLI_MAIL,USU_DUSU,REP_FANT,REP_MAIL');
      if cbFIN_REC_TREL.Tag = 0 then
      SQL.Add('FROM   '+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAI"')
      else
      SQL.Add('FROM   '+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_BAI"');
      SQL.Add('LEFT     OUTER JOIN CAD_CLI ON FIN_REC_BAI.FIN_CCLI = CAD_CLI.ID');
      SQL.Add('LEFT     OUTER JOIN CAD_REP ON FIN_REC_BAI.FIN_CREP = CAD_REP.ID');
      SQL.Add('LEFT     OUTER JOIN CAD_USU ON FIN_REC_BAI.FIN_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('WHERE    NOT FIN_REC_BAI.FIN_DOCT LIKE ''%/P%''');
      SQL.Add('AND      NOT FIN_REC_BAI.FIN_DOCT LIKE ''%/N%''');

      if cDATA <> '' then
      begin
        qrpfin_rec_ger.qrlfil.Caption := qrpfin_rec_ger.qrlfil.Caption+' '+cbFIN_REC_DATA.Text+' '+formatDateTime('dd/mm/yy',Data1)+' ATE '+formatDateTime('dd/mm/yy',Data2);
        SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');
      end;

      if cbFIN_REC_STPD.Text <> 'TODOS' then
      begin
        qrpfin_rec_ger.qrlfil.Caption := qrpfin_rec_ger.qrlfil.Caption+' TIPO '+cbFIN_REC_STPD.Text;
        SQL.Add('AND FIN_REC_BAI.FIN_TIPO = '''+cbFIN_REC_STPD.Text+'''');
      end;

      if cbFIN_REC_STFI.Text <> 'TODOS' then
      begin
        qrpfin_rec_ger.qrlfil.Caption := qrpfin_rec_ger.qrlfil.Caption+' STATUS '+cbFIN_REC_STFI.Text;
        if cbFIN_REC_STFI.Text = 'PENDENTE' then
        begin
          SQL.Add('AND FIN_REC_BAI.FIN_STFI <> ''CANCELADO''');
          SQL.Add('AND FIN_REC_BAI.FIN_STFI <> ''DEVOLUÇÃO''');
          SQL.Add('AND FIN_REC_BAI.FIN_STFI <> ''ABATIMENTO''');
          SQL.Add('AND FIN_REC_BAI.FIN_STFI NOT LIKE ''PAGO%''');
        end else
        SQL.Add('AND FIN_REC_BAI.FIN_STFI = '''+cbFIN_REC_STFI.Text+'''');
      end else
      SQL.Add('AND   FIN_REC_BAI.FIN_STFI <> ''CANCELADO''');

      if cbFIN_REC_DCLI.Text <> 'TODOS' then
      begin
        qrpfin_rec_ger.qrlfil.Caption := qrpfin_rec_ger.qrlfil.Caption+' CLIENTE '+cbFIN_REC_DCLI.Text;
        SQL.Add('AND CAD_CLI.CLI_FANT = '''+cbFIN_REC_DCLI.Text+'''');
      end;

      if cbFIN_REC_RCLI.Text <> 'TODOS' then
      begin
        qrpfin_rec_ger.qrlfil.Caption := qrpfin_rec_ger.qrlfil.Caption+' CLIENTE '+cbFIN_REC_RCLI.Text;
        SQL.Add('AND CAD_CLI.CLI_RAZA = '''+cbFIN_REC_RCLI.Text+'''');
      end;

      if cbFIN_REC_DREP.Text <> 'TODOS' then
      begin
        qrpfin_rec_ger.qrlfil.Caption := qrpfin_rec_ger.qrlfil.Caption+' REPRESENTANTE '+cbFIN_REC_DREP.Text;
        SQL.Add('AND CAD_REP.REP_FANT = '''+cbFIN_REC_DREP.Text+'''');
      end;

      if cbFIN_REC_DVEN.Text <> 'TODOS' then
      begin
        qrpfin_rec_ger.qrlfil.Caption := qrpfin_rec_ger.qrlfil.Caption+' VENDEDOR '+cbFIN_REC_DVEN.Text;
        SQL.Add('AND CAD_USU.USU_DUSU = '''+cbFIN_REC_DVEN.Text+'''');
      end;

      if cbFIN_REC_CTNR.Text <> 'TODOS' then
      begin
      qrpfin_rec_ger.qrlfil.Caption := qrpfin_rec_ger.qrlfil.Caption+' No. CONTAINER '+cbFIN_REC_CTNR.Text;
      SQL.Add('AND FIN_CTNR LIKE ''%'+cbFIN_REC_CTNR.Text+'%''');
      end;

      SQL.Add('ORDER BY CLI_FANT,FIN_REC_BAI.FIN_DOCT');
      Open;
    end;

    qrpfin_rec_ger.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpfin_rec_ger.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpfin_rec_ger.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpfin_rec_ger.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpfin_rec_ger.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpfin_rec_ger.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    if cbFIN_REC_TREL.Tag = 0 then
    begin
      qrpfin_rec_ger.qrltitulo.Caption  := 'LISTAGEM GERAL DE CONTAS A RECEBER - BANCÁRIO';
      qrpfin_rec_ger.ReportTitle        := 'LISTAGEM GERAL DE CONTAS A RECEBER - BANCÁRIO';
    end
    else
    begin
      qrpfin_rec_ger.qrltitulo.Caption  := 'LISTAGEM GERAL DE CONTAS A RECEBER - CARTEIRA';
      qrpfin_rec_ger.ReportTitle        := 'LISTAGEM GERAL DE CONTAS A RECEBER - CARTEIRA';
    end;
    qrpfin_rec_ger.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpfin_rec_ger.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpfin_rec_ger.Prepare;
    if tag = 0 then
       qrpfin_rec_ger.Preview
    else if tag = 1 then
       qrpfin_rec_ger.Print
    else if tag = 2 then
    begin
      qrpfin_rec_ger.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpfin_rec_ger.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpfin_rec_ger.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpfin_rec_ger);
  end;
end;

procedure Tfrmrelatorio_geral.CAD_PRO_FICHA_VENDA_FOTO;
begin
  if (cbCAD_PRO_DPRO.Text = 'TODOS') and (cbCAD_PRO_DCAT.Text = 'TODOS') and (cbCAD_PRO_DGRP.Text = 'TODOS') and
     (cbCAD_PRO_DCOL.Text = 'TODOS') then
  begin
    if (cbCAD_PRO_CART1.Text = '') or (cbCAD_PRO_CART1.Text = 'TODOS') then
       raise exception.Create('Referencia não informada !');
  end;

  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Ficha Técnica');

  if qrpcad_pro_fic_foto = nil then
     qrpcad_pro_fic_foto := Tqrpcad_pro_fic_foto.Create(self);

  try
    if (cbCAD_PRO_CART1.Text <> '') and (cbCAD_PRO_CART1.Text <> 'TODOS') then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAD_PRO');
      SQL.Add('WHERE  PRO_CART = '''+cbCAD_PRO_CART1.Text+'''');
      Open;
    end;

    with qrpcad_pro_fic_foto.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,PRO_INS1,PRO_INS2,PRO_INS3,PRO_INS4,PRO_INS5,PRO_INS6,PRO_INS7,PRO_INS8,');
      SQL.Add('       PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO_STA ,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,PRO_COMP,');
      SQL.Add('       PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO_DULT,PRO_REPR,PRO_LARG,PRO_REND,PRO_GRAM,PRO_OBSF');
      SQL.Add('FROM   CAD_PRO,CAD_PRO_IMG');
      SQL.Add('WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');

      if (cbCAD_PRO_CART1.Text <> '') and (cbCAD_PRO_CART1.Text <> 'TODOS') then
      begin
        qrpcad_pro_fic_foto.qrlfil.Caption := qrpcad_pro_fic_foto.qrlfil.Caption+' REFERENCIA '+cbCAD_PRO_CART1.Text;
        SQL.Add('AND CAD_PRO.ID = '''+consulta.Fields[0].AsString+'''');
      end;

      if cbCAD_PRO_DCAT.Text <> 'TODOS' then
      begin
        qrpcad_pro_fic_foto.qrlfil.Caption := qrpcad_pro_fic_foto.qrlfil.Caption+' CATEGORIA '+cbCAD_PRO_DCAT.Text;
        SQL.Add('AND CAD_PRO.PRO_DCAT = '''+cbCAD_PRO_DCAT.Text+'''');
      end;

      if cbCAD_PRO_DGRP.Text <> 'TODOS' then
      begin
        qrpcad_pro_fic_foto.qrlfil.Caption := qrpcad_pro_fic_foto.qrlfil.Caption+' GRUPO '+cbCAD_PRO_DGRP.Text;
        SQL.Add('AND CAD_PRO.PRO_DGRP = '''+cbCAD_PRO_DGRP.Text+'''');
      end;

      if cbCAD_PRO_DCOL.Text <> 'TODOS' then
      begin
        qrpcad_pro_fic_foto.qrlfil.Caption := qrpcad_pro_fic_foto.qrlfil.Caption+' COLEÇÃO '+cbCAD_PRO_DCOL.Text;
        SQL.Add('AND CAD_PRO.PRO_DCOL = '''+cbCAD_PRO_DCOL.Text+'''');
      end;

      Open;
    end;

    qrpcad_pro_fic_foto.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcad_pro_fic_foto.qrlobse.Lines.Text   := trim(qrpcad_pro_fic_foto.relatorioPRO_OBSF.AsString)+' '+trim(cbCAD_PRO_OBSE.Lines.Text);
    qrpcad_pro_fic_foto.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcad_pro_fic_foto.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcad_pro_fic_foto.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcad_pro_fic_foto.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcad_pro_fic_foto.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcad_pro_fic_foto.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcad_pro_fic_foto.qrlrodape.Caption  := frmprincipal.cad_usuUSU_DUSU.AsString;
    qrpcad_pro_fic_foto.qrltitulo.Caption  := 'Ficha Técnica de Produto';
    qrpcad_pro_fic_foto.ReportTitle        := 'Ficha Técnica de Produto';
    qrpcad_pro_fic_foto.Prepare;

    if tag = 0 then
       qrpcad_pro_fic_foto.Preview
    else if tag = 1 then
       qrpcad_pro_fic_foto.Print
    else if tag = 2 then
    begin
      qrpcad_pro_fic_foto.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcad_pro_fic_foto.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcad_pro_fic_foto.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcad_pro_fic_foto);
  end;
end;

procedure Tfrmrelatorio_geral.ENT_PRO_ROMANEIOS;
begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbENT_PRO_DATA.Text = 'DATA LANÇAMENTO' then
  cDATA := 'CAD_PRO_ENC.PRO_DCAD';

  if (cbENT_PRO_CPRO.Text = 'TODOS') or (cbENT_PRO_CPRO.Text = '') then
  raise exception.Create('Referencia não informada !');

  if cbENT_PRO_CPRO.Text = '' then
  raise exception.Create('Código da referencia não informada !');

  if (tag = 0) or (tag = 1) then
  frmprincipal.FazPrnAtualVirarDefault('Etiqueta de Estoque');

  if qrpent_pro_rom = nil then
  qrpent_pro_rom := Tqrpent_pro_rom.Create(self);

  try
    with qrpent_pro_rom.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO_ENC.PRO_CDNF,CAD_PRO_ENC.PRO_DCAD,CAD_PRO_ENC.PRO_OPER,CAD_PRO_ENC.PRO_DUSU,');
      SQL.Add('         CAD_PRO.PRO_CART    ,CAD_PRO.PRO_CPRO    ,CAD_PRO.PRO_DPRO    ,CAD_PRO_ENI.PRO_QTDE,');
      SQL.Add('         CAD_PRO.PRO_DCOR    ,CAD_PRO.PRO_DUNI    ,CAD_PRO_ENI.PRO_CDET,PAR_SIS.PAR_FANT');
      SQL.Add('FROM     CAD_PRO_ENC,CAD_PRO_ENI,CAD_PRO,PAR_SIS');
      SQL.Add('WHERE    CAD_PRO_ENC.ID       = CAD_PRO_ENI.PRO_CDRO');
      SQL.Add('AND      CAD_PRO_ENC.PRO_CDEP = PAR_SIS.ID');
      SQL.Add('AND      CAD_PRO_ENI.PRO_CPRO = CAD_PRO.ID');

      if cDATA <> '' then
      begin
        qrpent_pro_rom.qrlfil.Caption := qrpent_pro_rom.qrlfil.Caption+' '+cbENT_PRO_DATA.Text+' '+formatDateTime('dd/mm/yy',Data1)+' ATE '+formatDateTime('dd/mm/yy',Data2);
        SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');
      end;

      if cbENT_PRO_DEMP.Text <> 'TODOS' then
      begin
        qrpent_pro_rom.qrlfil.Caption := qrpent_pro_rom.qrlfil.Caption+' EMPRESA '+cbENT_PRO_DEMP.Text;
        SQL.Add('AND PAR_SIS.PAR_FANT = '''+cbENT_PRO_DEMP.Text+'''');
      end;

      if cbENT_PRO_CPRO.Text <> 'TODOS' then
      begin
        qrpent_pro_rom.qrlfil.Caption := qrpent_pro_rom.qrlfil.Caption+' PRODUTO '+cbENT_PRO_CPRO.Text;
        SQL.Add('AND CAD_PRO.PRO_CART LIKE '''+cbENT_PRO_CPRO.Text+'%''');
      end;

      SQL.Add('ORDER BY CAD_PRO.PRO_CPRO,CAD_PRO_ENC.PRO_OPER');
      Open;
    end;

    qrpent_pro_rom.qrltitulo.Caption := 'ROMANEIO DE ENTRADA POR PRODUTOS';
    qrpent_pro_rom.ReportTitle       := 'ROMANEIO DE ENTRADA POR PRODUTOS';
    qrpent_pro_rom.Prepare;

    if tag = 0 then
       qrpent_pro_rom.Preview
    else if tag = 1 then
       qrpent_pro_rom.Print
    else if tag = 2 then
    begin
      qrpent_pro_rom.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpent_pro_rom.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpent_pro_rom.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpent_pro_rom);
  end;
end;

procedure Tfrmrelatorio_geral.ENT_PRO_ROMANEIOS_CONFERENCIA;
begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbENT_PRO_DATA.Text = 'DATA LANÇAMENTO' then
  cDATA := 'CAD_PRO_ENC.PRO_DCAD';

  if (cbENT_PRO_CDRO.Text = 'TODOS') or (cbENT_PRO_CDRO.Text = '') then
  raise exception.Create('Número do romaneio não informado !');

  if (tag = 0) or (tag = 1) then
  frmprincipal.FazPrnAtualVirarDefault('Etiqueta de Estoque');

  if qrpent_pro_con = nil then
  qrpent_pro_con := Tqrpent_pro_con.Create(self);

  try
    with qrpent_pro_con.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    CAD_PRO_ENC.PRO_CDNF,CAD_PRO_ENC.PRO_DCAD,CAD_PRO_ENC.PRO_OPER,CAD_PRO_ENC.PRO_DUSU,');
      SQL.Add('          CAD_PRO_ENI.ID,CAD_PRO_ENI.PRO_ITEM,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,PRO_METR,PRO_PESO,PRO_PSCN,');
      SQL.Add('          CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DPRO, CAD_PRO.PRO_DUNI,CAD_PRO_ENI.PRO_QTDE,CAD_PRO_ENI.PRO_CDET');
      SQL.Add('FROM      CAD_PRO_ENC,CAD_PRO_ENI,CAD_PRO');
      SQL.Add('WHERE     CAD_PRO_ENC.ID       = CAD_PRO_ENI.PRO_CDRO');
      SQL.Add('AND       CAD_PRO_ENI.PRO_CPRO = CAD_PRO.ID');
      SQL.Add('AND       CAD_PRO_ENI.PRO_CDRO = '''+cbENT_PRO_CDRO.Text+'''');
      SQL.Add('ORDER  BY CAD_PRO.PRO_CPRO');
      Open;
    end;  

    qrpent_pro_con.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpent_pro_con.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpent_pro_con.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpent_pro_con.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpent_pro_con.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpent_pro_con.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpent_pro_con.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpent_pro_con.qrltitulo.Caption := 'ROMANEIO DE ENTRADA PARA SIMPLES CONFERENCIA';
    qrpent_pro_con.ReportTitle       := 'ROMANEIO DE ENTRADA PARA SIMPLES CONFERENCIA';
    qrpent_pro_con.qrlrodape.Caption := frmprincipal.cad_usuUSU_DUSU.AsString;
    qrpent_pro_con.Prepare;

    if tag = 0 then
       qrpent_pro_con.Preview
    else if tag = 1 then
       qrpent_pro_con.Print
    else if tag = 2 then
    begin
      qrpent_pro_con.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpent_pro_con.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpent_pro_con.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpent_pro_con);
  end;
end;

procedure Tfrmrelatorio_geral.NFE_DUP_EMI;
begin
  if (tag = 0) or (tag = 1) then
  frmprincipal.FazPrnAtualVirarDefault('Duplicatas');

  if qrpfin_dup = nil then
  qrpfin_dup := Tqrpfin_dup.Create(self);

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
    Close;
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
    {} else
    if cData <> '' then
    SelectSQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

    SelectSQL.Add('ORDER BY NFE_TITU');
    Open;

  end;

  try
    qrpfin_dup.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpfin_dup.qrlraza1.Caption  := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpfin_dup.qrllogr1.Caption  := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpfin_dup.qrlend1.Caption   := frmprincipal.parametrosPAR_BAI.AsString;
    qrpfin_dup.qrlend2.Caption   := 'CEP '+frmprincipal.parametrosPAR_CEP.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpfin_dup.qrltel1.Caption   := 'TEL ('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                                            copy(frmprincipal.parametrosPAR_FONE.AsString,5,4)+' - '+
                                    'FAX ('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                                            copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);

    qrpfin_dup.qrlcnpj1.Caption  := copy(frmprincipal.parametrosPAR_CNPJ.AsString,1,2)+'.'+copy(frmprincipal.parametrosPAR_CNPJ.AsString,3,3)+'.'+
                                    copy(frmprincipal.parametrosPAR_CNPJ.AsString,6,3)+'/'+copy(frmprincipal.parametrosPAR_CNPJ.AsString,9,4)+'-'+
                                    copy(frmprincipal.parametrosPAR_CNPJ.AsString,13,2);
    qrpfin_dup.qrlinsc1.Caption  := frmprincipal.parametrosPAR_INSC.AsString;

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
    if tag = 0 then
       qrpfin_dup.Preview
    else if tag = 1 then
       qrpfin_dup.Print
    else if tag = 2 then
    begin
      qrpfin_dup.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpfin_dup.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpfin_dup.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpfin_dup);
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_FLUXO_CAIXA_CARTEIRA;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_flx_car = nil then
     qrpcai_mov_flx_car := Tqrpcai_mov_flx_car.Create(self);

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'FIN_DCAD';

  try
    with qrpcai_mov_flx_car.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_TIPO,FIN_STFI,FIN_CONC,FIN_DOCT,FIN_DCAD,FIN_DPAG,');
      SQL.Add('          SUM(FIN_VALO) "FIN_VALO",SUM(FIN_VPEN) "FIN_VPEN",SUM(FIN_VPAG) "FIN_VPAG"');
      SQL.Add('FROM      CAD_CLI,CAD_USU,CAD_REP,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
      SQL.Add('WHERE     CAD_CLI.ID       = FIN_CCLI');
      SQL.Add('AND       CAD_USU.USU_CUSU = FIN_CVEN');
      SQL.Add('AND       CAD_REP.ID       = FIN_CREP');
//      SQL.Add('AND       FIN_CREP <> '''+frmprincipal.parametrosPAR_CREP.AsString+'''');
      SQL.Add('AND       FIN_TIPO = ''CARTEIRA''');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND FIN_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
      begin
        if cbCAI_MOV_STFI.Text = 'PENDENTE' then
        begin
          SQL.Add('AND FIN_STFI <> ''CANCELADO''');
          SQL.Add('AND FIN_STFI <> ''DEVOLUÇÃO''');
          SQL.Add('AND FIN_STFI <> ''ABATIMENTO''');
          SQL.Add('AND FIN_STFI NOT LIKE ''PAGO%''');
        end else
        SQL.Add('AND FIN_STFI = '''+cbCAI_MOV_STFI.Text+'''');
      end else
      SQL.Add('AND FIN_STFI <> ''CANCELADO''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      SQL.Add('GROUP BY  CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_TIPO,FIN_STFI,FIN_CONC,FIN_DOCT,FIN_DCAD,FIN_DPAG');
      SQL.Add('ORDER BY  7,10,9');
      Open;
    end;

    qrpcai_mov_flx_car.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_flx_car.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_flx_car.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_flx_car.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_flx_car.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_flx_car.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_flx_car.qrltitulo.Caption    := 'Fluxo de Caixa de Carteira';
    qrpcai_mov_flx_car.ReportTitle          := 'Fluxo de Caixa de Carteira';
    qrpcai_mov_flx_car.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_flx_car.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_flx_car.Prepare;
    if tag = 0 then
       qrpcai_mov_flx_car.Preview
    else if tag = 1 then
       qrpcai_mov_flx_car.Print
    else if tag = 2 then
    begin
      qrpcai_mov_flx_car.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_flx_car.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_flx_car.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_flx_car);
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_FLUXO_CAIXA_BANCARIO;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_flx_ban = nil then
     qrpcai_mov_flx_ban := Tqrpcai_mov_flx_ban.Create(self);

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'FIN_DCAD';

  try
    with qrpcai_mov_flx_ban.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_TIPO,FIN_STFI,FIN_CONC,FIN_DOCT,FIN_DCAD,FIN_DPAG,');
      SQL.Add('          SUM(FIN_VALO) "FIN_VALO",SUM(FIN_VPEN) "FIN_VPEN",SUM(FIN_VPAG) "FIN_VPAG"');
      SQL.Add('FROM      CAD_CLI,CAD_USU,CAD_REP,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI"');
      SQL.Add('WHERE     CAD_CLI.ID       = FIN_CCLI');
      SQL.Add('AND       CAD_USU.USU_CUSU = FIN_CVEN');
      SQL.Add('AND       CAD_REP.ID       = FIN_CREP');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND FIN_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
      begin
        if cbCAI_MOV_STFI.Text = 'PENDENTE' then
        begin
          SQL.Add('AND FIN_STFI <> ''CANCELADO''');
          SQL.Add('AND FIN_STFI <> ''DEVOLUÇÃO''');
          SQL.Add('AND FIN_STFI <> ''ABATIMENTO''');
          SQL.Add('AND FIN_STFI NOT LIKE ''PAGO%''');
        end else
        SQL.Add('AND FIN_STFI = '''+cbCAI_MOV_STFI.Text+'''');
      end else
      SQL.Add('AND FIN_STFI <> ''CANCELADO''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      SQL.Add('GROUP BY  CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_TIPO,FIN_STFI,FIN_CONC,FIN_DOCT,FIN_DCAD,FIN_DPAG');
      SQL.Add('ORDER BY  7,10,9');
      Open;
    end;

    qrpcai_mov_flx_ban.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_flx_ban.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_flx_ban.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_flx_ban.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_flx_ban.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_flx_ban.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_flx_ban.qrltitulo.Caption    := 'Fluxo de Caixa Bancário';
    qrpcai_mov_flx_ban.ReportTitle          := 'Fluxo de Caixa Bancário';
    qrpcai_mov_flx_ban.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_flx_ban.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_flx_ban.Prepare;
    if tag = 0 then
       qrpcai_mov_flx_ban.Preview
    else if tag = 1 then
       qrpcai_mov_flx_ban.Print
    else if tag = 2 then
    begin
      qrpcai_mov_flx_ban.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_flx_ban.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_flx_ban.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_flx_ban);
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_CAIXA_ANALITICO;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'FIN_DCAD';

  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_cai_ana = nil then
     qrpcai_mov_cai_ana := Tqrpcai_mov_cai_ana.Create(self);

  try
    with qrpcai_mov_cai_ana.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    ROM_DERO,PED_VEN_CAB.ID,CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_CONC,FIN_TIPO,FIN_DCAD,FIN_DOCT,SUM(FIN_VALO) "FIN_VALO"');
      SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     CAD_CLI.ID = FIN_CCLI');
      SQL.Add('AND       CAD_REP.ID = FIN_CREP');
      SQL.Add('AND       ROM_CDBX   = FIN_CDBX');
      SQL.Add('AND       USU_CUSU   = FIN_CVEN');
      SQL.Add('AND       FIN_STFI <> ''CANCELADO''');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND FIN_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
      begin
        if cbCAI_MOV_STFI.Text = 'PENDENTE' then
        begin
          SQL.Add('AND FIN_STFI <> ''CANCELADO''');
          SQL.Add('AND FIN_STFI <> ''DEVOLUÇÃO''');
          SQL.Add('AND FIN_STFI <> ''ABATIMENTO''');
          SQL.Add('AND FIN_STFI NOT LIKE ''PAGO%''');
        end else
        SQL.Add('AND FIN_STFI = '''+cbCAI_MOV_STFI.Text+'''');
      end else
      SQL.Add('AND FIN_STFI <> ''CANCELADO''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      if cbCAI_MOV_TIPO.Text <> 'TODOS' then
         SQL.Add('AND FIN_TIPO LIKE ''%'+cbCAI_MOV_TIPO.Text+'%''');

      SQL.Add('GROUP BY  ROM_DERO,PED_VEN_CAB.ID,CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_CONC,FIN_TIPO,FIN_DCAD,FIN_DOCT');
      SQL.Add('UNION');

      SQL.Add('SELECT    ROM_DERO,PED_VEN_CAB.ID,CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_CONC,FIN_TIPO,FIN_DCAD,FIN_DOCT,SUM(FIN_VALO) "FIN_VALO"');
      SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     CAD_CLI.ID = FIN_CCLI');
      SQL.Add('AND       CAD_REP.ID = FIN_CREP');
      SQL.Add('AND       ROM_CDBX   = FIN_CDBX');
      SQL.Add('AND       USU_CUSU   = FIN_CVEN');
      SQL.Add('AND       FIN_STFI <> ''CANCELADO''');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND FIN_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
      begin
        if cbCAI_MOV_STFI.Text = 'PENDENTE' then
        begin
          SQL.Add('AND FIN_STFI <> ''CANCELADO''');
          SQL.Add('AND FIN_STFI <> ''DEVOLUÇÃO''');
          SQL.Add('AND FIN_STFI <> ''ABATIMENTO''');
          SQL.Add('AND FIN_STFI NOT LIKE ''PAGO%''');
        end else
        SQL.Add('AND FIN_STFI = '''+cbCAI_MOV_STFI.Text+'''');
      end else
      SQL.Add('AND FIN_STFI <> ''CANCELADO''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      if cbCAI_MOV_TIPO.Text <> 'TODOS' then
         SQL.Add('AND FIN_TIPO LIKE ''%'+cbCAI_MOV_TIPO.Text+'%''');

      SQL.Add('GROUP BY  ROM_DERO,PED_VEN_CAB.ID,CLI_FANT,USU_DUSU,REP_FANT,FIN_CDBX,FIN_STDO,FIN_CONC,FIN_TIPO,FIN_DCAD,FIN_DOCT');
      SQL.Add('ORDER BY  9,2');
      Open;
    end;

    qrpcai_mov_cai_ana.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_cai_ana.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_cai_ana.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_cai_ana.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_cai_ana.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_cai_ana.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_cai_ana.qrltitulo.Caption    := 'Fluxo de Caixa - Analítico';
    qrpcai_mov_cai_ana.ReportTitle          := 'Fluxo de Caixa - Analítico';
    qrpcai_mov_cai_ana.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_cai_ana.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_cai_ana.Prepare;
    if tag = 0 then
       qrpcai_mov_cai_ana.Preview
    else if tag = 1 then
       qrpcai_mov_cai_ana.Print
    else if tag = 2 then
    begin
      qrpcai_mov_cai_ana.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_cai_ana.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_cai_ana.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_cai_ana);
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_CAIXA_SINTETICO;
var
  vcred,vdebi: double;

function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';
  vcred := 0;
  vdebi := 0;

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'CAI_DCAD';

  if (tag = 0) or (tag = 1) then
  frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_cai_sin = nil then
  qrpcai_mov_cai_sin := Tqrpcai_mov_cai_sin.Create(self);

  try
    with qrpcai_mov_cai_sin.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM CAI_MOV');
      SQL.Add('WHERE ID > 0');

      if cDATA <> '' then
      SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
      SQL.Add('AND CAI_CCAB = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cDATA = '' then
      SQL.Add('ORDER BY CAI_DESC,CAI_CONC')
      else
      SQL.Add('ORDER BY ID');
      Open;

      while not eof do
      begin
        consulta.SQL.Clear;
        consulta.SQL.Add('SELECT ID FROM TAB_COB');
        consulta.SQL.Add('WHERE  VEN_TIPO = '''+qrpcai_mov_cai_sin.relatorioCAI_DESC.AsString+'''');
        consulta.SQL.Add('AND    VEN_TIPO <> ''DINHEIRO''');
        consulta.Open;

        if consulta.Fields[0].IsNull then
        begin
          vcred := vcred + qrpcai_mov_cai_sin.relatorioCAI_CRED.AsFloat;

          if qrpcai_mov_cai_sin.relatorioCAI_DEBI.AsFloat > 0 then
          vdebi := vdebi + qrpcai_mov_cai_sin.relatorioCAI_DEBI.AsFloat;
        end;
        next;
      end;
    end;
    qrpcai_mov_cai_sin.qrlcaixa.Caption := formatFloat('#,0.00',vcred-vdebi);

    qrpcai_mov_cai_sin.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_cai_sin.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_cai_sin.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_cai_sin.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_cai_sin.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_cai_sin.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_cai_sin.qrltitulo.Caption    := 'Fluxo de Caixa - Sintético';
    qrpcai_mov_cai_sin.ReportTitle          := 'Fluxo de Caixa - Sintético';
    qrpcai_mov_cai_sin.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_cai_sin.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_cai_sin.Prepare;
    if tag = 0 then
       qrpcai_mov_cai_sin.Preview
    else if tag = 1 then
       qrpcai_mov_cai_sin.Print
    else if tag = 2 then
    begin
      qrpcai_mov_cai_sin.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_cai_sin.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_cai_sin.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_cai_sin);
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_GERAL_SINTETICO;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'ROM_DROM';

  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_ger = nil then
     qrpcai_mov_ger := Tqrpcai_mov_ger.Create(self);

  try
    with qrpcai_mov_ger.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');

      if (cDATA <> '') and (cbCAI_MOV_CDCX.Text = 'TODOS') then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND PED_VEN_CAB.ROM_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
         SQL.Add('AND PED_VEN_CAB.ROM_STFI = '''+cbCAI_MOV_STFI.Text+'''');

      if cbCAI_MOV_STCO.Text <> 'TODOS' then
         SQL.Add('AND PED_VEN_CAB.ROM_STCO = '''+cbCAI_MOV_STCO.Text+'''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      SQL.Add('ORDER BY PED_VEN_CAB.ID');
      Open;
    end;

    qrpcai_mov_ger.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_ger.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_ger.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_ger.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_ger.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_ger.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_ger.qrltitulo.Caption    := 'Fluxo Geral de Vendas - Sintético';
    qrpcai_mov_ger.ReportTitle          := 'Fluxo Geral de Vendas - Analítico';
    qrpcai_mov_ger.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_ger.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_ger.Prepare;
    if tag = 0 then
       qrpcai_mov_ger.Preview
    else if tag = 1 then
       qrpcai_mov_ger.Print
    else if tag = 2 then
    begin
      qrpcai_mov_ger.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_ger.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_ger.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_ger);
  end;
end;

procedure Tfrmrelatorio_geral.CAI_MOV_GERAL_ANALITICO;
function RETORNA_CDCX(old: string) : string;
var
  i,j: word;
  cdcx: string;
begin
  cdcx := '';
  for j := 1 to Length(old) do
  begin
    if copy(old,j,1) = '(' then
       break;
  end;

  inc(j);

  for i := j to Length(old) do
  begin
    if copy(old,i,1) = ')' then
       break;

    cdcx := trim(cdcx + copy(old,i,1));
  end;

  result := cdcx;
end;

begin
  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAI_MOV_DATA.Text = 'DATA LANÇAMENTO' then
     cDATA := 'ROM_DROM';

  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcai_mov_ger_ana = nil then
     qrpcai_mov_ger_ana := Tqrpcai_mov_ger_ana.Create(self);

  try
    with qrpcai_mov_ger_ana.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT    ROM_DERO,ROM_DROM,ROM_CONC,ROM_STCO,ROM_STPD,ROM_STFI,CLI_FANT,USU_DUSU,REP_FANT,SUM(ROM_TCDE) "ROM_VALO"');
      SQL.Add('FROM      CAD_REP,CAD_USU,CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE     CAD_CLI.ID = ROM_CCLI');
      SQL.Add('AND       CAD_REP.ID = ROM_CREP');
      SQL.Add('AND       USU_CUSU   = ROM_CVEN');
      SQL.Add('AND       ROM_STFI <> ''CANCELADO''');

      if cDATA <> '' then
         SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');

      if cbCAI_MOV_CDCX.Text <> 'TODOS' then
         SQL.Add('AND ROM_CDCX = '''+RETORNA_CDCX(cbCAI_MOV_CDCX.Text)+'''');

      if cbCAI_MOV_STFI.Text <> 'TODOS' then
         SQL.Add('AND ROM_STFI = '''+cbCAI_MOV_STFI.Text+'''');

      if cbCAI_MOV_DCLI.Text <> 'TODOS' then
         SQL.Add('AND CAD_CLI.CLI_FANT LIKE ''%'+cbCAI_MOV_DCLI.Text+'%''');

      if cbCAI_MOV_DVEN.Text <> 'TODOS' then
         SQL.Add('AND CAD_USU.USU_DUSU LIKE ''%'+cbCAI_MOV_DVEN.Text+'%''');

      if cbCAI_MOV_DREP.Text <> 'TODOS' then
         SQL.Add('AND CAD_REP.REP_FANT LIKE ''%'+cbCAI_MOV_DREP.Text+'%''');

      if cbCAI_MOV_TIPO.Text <> 'TODOS' then
         SQL.Add('AND ROM_STCO LIKE ''%'+cbCAI_MOV_TIPO.Text+'%''');

      SQL.Add('GROUP BY  ROM_DERO,ROM_DROM,ROM_CONC,ROM_STCO,ROM_STPD,ROM_STFI,CLI_FANT,USU_DUSU,REP_FANT');
      SQL.Add('ORDER BY  4,1');
      Open;
    end;

    qrpcai_mov_ger_ana.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcai_mov_ger_ana.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcai_mov_ger_ana.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcai_mov_ger_ana.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcai_mov_ger_ana.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcai_mov_ger_ana.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcai_mov_ger_ana.qrltitulo.Caption    := 'Fluxo Geral de Vendas - Analítico';
    qrpcai_mov_ger_ana.ReportTitle          := 'Fluxo Geral de Vendas - Analítico';
    qrpcai_mov_ger_ana.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcai_mov_ger_ana.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcai_mov_ger_ana.Prepare;
    if tag = 0 then
       qrpcai_mov_ger_ana.Preview
    else if tag = 1 then
       qrpcai_mov_ger_ana.Print
    else if tag = 2 then
    begin
      qrpcai_mov_ger_ana.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcai_mov_ger_ana.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcai_mov_ger_ana.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcai_mov_ger_ana);
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_COBRANCA;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Romaneios');

  if qrpcob_ped = nil then
     qrpcob_ped := Tqrpcob_ped.Create(self);

  try
    with qrpcob_ped.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG,');
      SQL.Add('         CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_COMP,');
      SQL.Add('         PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_TOTA,PED_VEN_ITE.ROM_OBSE');
      SQL.Add('FROM     CAD_PRO,CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.ID       = PED_VEN_ITE.ROM_CCAB');
      SQL.Add('AND      CAD_PRO.ID           = PED_VEN_ITE.ROM_CPRO');
      SQL.Add('AND      PED_VEN_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY CAD_PRO.PRO_CPRO');
      Open;
    end;

    qrpcob_ped.qrmemo1.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));
    qrpcob_ped.qrmemo2.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));

    qrpcob_ped.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    qrpcob_ped.qrlraza.Caption       := frmprincipal.parametrosPAR_RAZA.AsString;

    qrpcob_ped.qrlend1.Caption       := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcob_ped.qrlend2.Caption       := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;

    qrpcob_ped.qrlemai_site.Caption  := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;

    qrpcob_ped.qrlfone.Caption       := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcob_ped.ReportTitle           := 'Pedido de Venda de Cobrança';
    qrpcob_ped.qrltitulo.Caption     := 'Pedido de Venda de Cobrança';

    if qrpcob_ped.relatorioROM_STPD.AsString = 'DEVOLUÇÃO' then
    begin
      qrpcob_ped.ReportTitle           := 'Pedido de Devolução';
      qrpcob_ped.qrltitulo.Caption     := 'Pedido de Devolução';
    end
    else if qrpcob_ped.relatorioROM_STPD.AsString = 'ABATIMENTO' then
    begin
      qrpcob_ped.ReportTitle           := 'Pedido de Abatimento';
      qrpcob_ped.qrltitulo.Caption     := 'Pedido de Abatimento';
    end
    else if qrpcob_ped.relatorioROM_STPD.AsString = 'SERVIÇO' then
    begin
      qrpcob_ped.ReportTitle           := 'Pedido de Serviço';
      qrpcob_ped.qrltitulo.Caption     := 'Pedido de Serviço';
    end;

    qrpcob_ped.qrlrodape.Caption     := frmprincipal.cad_usuUSU_DUSU.AsString;
    qrpcob_ped.qrlrodape2.Caption    := qrpcob_ped.qrlrodape.Caption;

    qrpcob_ped.qrlcli.Caption        := oStrZero(qrpcob_ped.relatorioROM_CCLI.AsInteger,5)+' - '+qrpcob_ped.relatorioCLI_FANT.AsString;
    qrpcob_ped.qrlcli2.Caption       := qrpcob_ped.qrlcli.Caption;

    qrpcob_ped.qrlven.Caption        := oStrZero(qrpcob_ped.relatorioROM_CVEN.AsInteger,5)+' - '+qrpcob_ped.relatorioUSU_DUSU.AsString;
    qrpcob_ped.qrlven2.Caption       := qrpcob_ped.qrlven.Caption;

    qrpcob_ped.qrlrep.Caption        := oStrZero(qrpcob_ped.relatorioROM_CREP.AsInteger,5)+' - '+qrpcob_ped.relatorioREP_FANT.AsString;
    qrpcob_ped.qrlrep2.Caption       := qrpcob_ped.qrlrep.Caption;

    qrpcob_ped.qrldesc.Caption  := '';
    if (qrpcob_ped.relatorioROM_TDSC.AsString = '%') and (qrpcob_ped.relatorioROM_PDSC.AsFloat > 0) then
    qrpcob_ped.qrldesc.Caption  := 'Desc (%)' else
    if (qrpcob_ped.relatorioROM_TDSC.AsString = '$') and (qrpcob_ped.relatorioROM_PDSC.AsFloat > 0) then
    qrpcob_ped.qrldesc.Caption  := 'Desc ($)';
    qrpcob_ped.qrldesc2.Caption := qrpcob_ped.qrldesc.Caption;

    if qrpcob_ped.qrldesc.Caption = '' then
    begin
      qrpcob_ped.qrdbROM_PDSC.DataField := '';
      qrpcob_ped.qrdbROM_PDSC.DataSet   := nil;
      qrpcob_ped.qrdbROM_PDS2.DataField := '';
      qrpcob_ped.qrdbROM_PDS2.DataSet   := nil;
    end;

    qrpcob_ped.qrlpagina.Caption  := 'Página: '+qrpcob_ped.relatorioROM_CONC.AsString;
    qrpcob_ped.qrlpagina2.Caption := qrpcob_ped.qrlpagina.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+qrpcob_ped.relatorioROM_CPAG.AsString+'''');
      Open;

      qrpcob_ped.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_ped.qrlparc2.Caption := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_ped.qrlpag.Caption   := fields[1].AsString;
      qrpcob_ped.qrlpag2.Caption  := fields[1].AsString;

      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
      qrpcob_ped.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;

      qrpcob_ped.qrlrodape3.Caption := '';
      if qrpcob_ped.relatorioROM_CBAI.AsInteger > 0 then
      begin
        SQL.Clear;
        SQL.Add('SELECT USU_DUSU FROM CAD_USU');
        SQL.Add('WHERE  USU_CUSU = '''+qrpcob_ped.relatorioROM_CBAI.AsString+'''');
        Open;
        qrpcob_ped.qrlrodape3.Caption := fields[0].AsString+' '+formatDateTime('dd/mm/yy hh:mm:ss',qrpcob_ped.relatorioROM_TBAI.AsDateTime);
      end;
      qrpcob_ped.qrlrodape4.Caption := qrpcob_ped.qrlrodape3.Caption;
    end;

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

    qrpcob_ped.lanpa21.Caption  := qrpcob_ped.lanpa1.Caption ;
    qrpcob_ped.ladpa21.Caption  := qrpcob_ped.ladpa1.Caption ;
    qrpcob_ped.lavpa21.Caption  := qrpcob_ped.lavpa1.Caption ;
    qrpcob_ped.lanpa22.Caption  := qrpcob_ped.lanpa2.Caption ;
    qrpcob_ped.ladpa22.Caption  := qrpcob_ped.ladpa2.Caption ;
    qrpcob_ped.lavpa22.Caption  := qrpcob_ped.lavpa2.Caption ;
    qrpcob_ped.lanpa23.Caption  := qrpcob_ped.lanpa3.Caption ;
    qrpcob_ped.ladpa23.Caption  := qrpcob_ped.ladpa3.Caption ;
    qrpcob_ped.lavpa23.Caption  := qrpcob_ped.lavpa3.Caption ;
    qrpcob_ped.lanpa24.Caption  := qrpcob_ped.lanpa4.Caption ;
    qrpcob_ped.ladpa24.Caption  := qrpcob_ped.ladpa4.Caption ;
    qrpcob_ped.lavpa24.Caption  := qrpcob_ped.lavpa4.Caption ;
    qrpcob_ped.lanpa25.Caption  := qrpcob_ped.lanpa5.Caption ;
    qrpcob_ped.ladpa25.Caption  := qrpcob_ped.ladpa5.Caption ;
    qrpcob_ped.lavpa25.Caption  := qrpcob_ped.lavpa5.Caption ;
    qrpcob_ped.lanpa26.Caption  := qrpcob_ped.lanpa6.Caption ;
    qrpcob_ped.ladpa26.Caption  := qrpcob_ped.ladpa6.Caption ;
    qrpcob_ped.lavpa26.Caption  := qrpcob_ped.lavpa6.Caption ;
    qrpcob_ped.lanpa27.Caption  := qrpcob_ped.lanpa7.Caption ;
    qrpcob_ped.ladpa27.Caption  := qrpcob_ped.ladpa7.Caption ;
    qrpcob_ped.lavpa27.Caption  := qrpcob_ped.lavpa7.Caption ;
    qrpcob_ped.lanpa28.Caption  := qrpcob_ped.lanpa8.Caption ;
    qrpcob_ped.ladpa28.Caption  := qrpcob_ped.ladpa8.Caption ;
    qrpcob_ped.lavpa28.Caption  := qrpcob_ped.lavpa8.Caption ;
    qrpcob_ped.lanpa29.Caption  := qrpcob_ped.lanpa9.Caption ;
    qrpcob_ped.ladpa29.Caption  := qrpcob_ped.ladpa9.Caption ;
    qrpcob_ped.lavpa29.Caption  := qrpcob_ped.lavpa9.Caption ;
    qrpcob_ped.lanpa210.Caption := qrpcob_ped.lanpa10.Caption;
    qrpcob_ped.ladpa210.Caption := qrpcob_ped.ladpa10.Caption;
    qrpcob_ped.lavpa210.Caption := qrpcob_ped.lavpa10.Caption;

    qrpcob_ped.Prepare;

    if tag = 0 then
       qrpcob_ped.Preview
    else if tag = 1 then
       qrpcob_ped.Print
    else if tag = 2 then
    begin
      qrpcob_ped.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcob_ped.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcob_ped.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcob_ped);
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_COBRANCA_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  with consulta do
  begin
    valo := qrpcob_ped.relatorioROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+qrpcob_ped.relatorioROM_CPAG.AsString+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpcob_ped.lanpa1.Caption  := '01)';
             qrpcob_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[1].Value)));
             qrpcob_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpcob_ped.lanpa2.Caption  := '02)';
             qrpcob_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[2].Value)));
             qrpcob_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpcob_ped.lanpa3.Caption  := '03)';
             qrpcob_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[3].Value)));
             qrpcob_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpcob_ped.lanpa4.Caption  := '04)';
             qrpcob_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[4].Value)));
             qrpcob_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpcob_ped.lanpa5.Caption  := '05)';
             qrpcob_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[5].Value)));
             qrpcob_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpcob_ped.lanpa6.Caption  := '06)';
             qrpcob_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[6].Value)));
             qrpcob_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpcob_ped.lanpa7.Caption  := '07)';
             qrpcob_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[7].Value)));
             qrpcob_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpcob_ped
             .lanpa8.Caption  := '08)';
             qrpcob_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[8].Value)));
             qrpcob_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpcob_ped.lanpa9.Caption  := '09)';
             qrpcob_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[9].Value)));
             qrpcob_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpcob_ped.lanpa10.Caption  := '10)';
             qrpcob_ped.ladpa10.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_ped.relatorioROM_DROM.AsDateTime,consulta.fields[10].Value)));
             qrpcob_ped.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;

    end;
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_COBRANCA_COMBAIXA(stco: string);
var
  i,p: word;
begin
  with consulta do
  begin
    SQL.Clear;
    if stco = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_rec']) else
    SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_rec']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;

    if fields[3].IsNull then
    begin
    SQL.Clear;
    if stco = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai']) else
    SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;
    end

  end;

  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_ped.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpcob_ped.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpcob_ped.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpcob_ped.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpcob_ped.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpcob_ped.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpcob_ped.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpcob_ped.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpcob_ped.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpcob_ped.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpcob_ped.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_ped.lavpa10.Caption := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;


procedure Tfrmrelatorio_geral.ROM_CAB_CONFERENCIA_001;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Romaneios');

  if qrprom_con_001 = nil then
     qrprom_con_001 := Tqrprom_con_001.Create(self);

  try
    with qrprom_con_001.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT ROM_CAB.ID      ,ROM_CAB.ROM_DERO,ROM_CAB.ROM_CDNF,ROM_CAB.ROM_DROM,ROM_CAB.ROM_DNFS,ROM_CAB.ROM_CONC,ROM_CAB.ROM_TCDE,ROM_CAB.ROM_TSDE,ROM_CAB.ROM_STCO,ROM_CAB.ROM_CPAG,TAB_PAG.PAG_DPAG,ROM_CAB.ROM_CVEN,ROM_CAB.ROM_OBSE,');
      SQL.Add('       CAD_USU.USU_DUSU,ROM_CAB.ROM_CREP,CAD_REP.REP_FANT,ROM_CAB.ROM_CCLI,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,');
      SQL.Add('       ROM_ITE.ROM_CDET,ROM_ITE.ROM_ITEM,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_COMP,ROM_ITE.ROM_DCOR,ROM_ITE.ROM_DPRO,ROM_ITE.ROM_DUNI,TAB_UNI.UNI_DUNI,ROM_ITE.ROM_QTDE,ROM_ITE.ROM_QTPD,ROM_ITE.ROM_UNIT,ROM_ITE.ROM_TOTA,');
      SQL.Add('       CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.PRO_INS3,CAD_PRO_IMG.PRO_INS4,CAD_PRO_IMG.PRO_INS5,CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.PRO_INS8,');
      SQL.Add('       CAD_PRO.PRO_METR,CAD_PRO.PRO_PESO,CAD_PRO.PRO_PSCN');
      SQL.Add('FROM   TAB_UNI,CAD_PRO,CAD_PRO_IMG,TAB_PAG,CAD_USU,CAD_REP,CAD_CLI,'+SLPrincipal.Values['rom_cab']+' "ROM_CAB" ,'+SLPrincipal.Values['rom_ite']+' "ROM_ITE"');
      SQL.Add('WHERE  ROM_CAB.ID       = ROM_ITE.ROM_CCAB');
      SQL.Add('AND    ROM_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND    CAD_PRO.PRO_DUNI = TAB_UNI.UNI_REFE');
      SQL.Add('AND    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
      SQL.Add('AND    ROM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND    ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND    ROM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    ROM_CAB.ID = '''+cdro+'''');
      SQL.Add('ORDER BY CAD_PRO.PRO_CPRO,ROM_ITE.ROM_CDET');
      Open;
    end;

//    qrprom_con_001.qrmemo1.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));
    qrprom_con_001.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrprom_con_001.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrprom_con_001.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrprom_con_001.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrprom_con_001.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrprom_con_001.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrprom_con_001.qrltitulo.Caption    := 'Romaneio para Simples Conferencia';
    qrprom_con_001.ReportTitle          := 'Romaneio para Simples Conferencia';
    qrprom_con_001.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrprom_con_001.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrprom_con_001.Prepare;
    if tag = 0 then
       qrprom_con_001.Preview
    else if tag = 1 then
       qrprom_con_001.Print
    else if tag = 2 then
    begin
      qrprom_con_001.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrprom_con_001.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrprom_con_001.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrprom_con_001);
  end;
end;

procedure Tfrmrelatorio_geral.ROM_CAB_CONFERENCIA_002;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Romaneios');

  if qrprom_con_002 = nil then
     qrprom_con_002 := Tqrprom_con_002.Create(self);

  try
    with qrprom_con_002.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT ROM_CAB.ID      ,ROM_CAB.ROM_DERO,ROM_CAB.ROM_CDNF,ROM_CAB.ROM_DROM,ROM_CAB.ROM_DNFS,ROM_CAB.ROM_CONC,ROM_CAB.ROM_TCDE,ROM_CAB.ROM_TSDE,ROM_CAB.ROM_STCO,ROM_CAB.ROM_CPAG,TAB_PAG.PAG_DPAG,ROM_CAB.ROM_CVEN,ROM_CAB.ROM_OBSE,');
      SQL.Add('       CAD_USU.USU_DUSU,ROM_CAB.ROM_CREP,CAD_REP.REP_FANT,ROM_CAB.ROM_CCLI,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,');
      SQL.Add('       ROM_ITE.ROM_CDET,ROM_ITE.ROM_ITEM,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_COMP,ROM_ITE.ROM_DCOR,ROM_ITE.ROM_DPRO,ROM_ITE.ROM_DUNI,TAB_UNI.UNI_DUNI,ROM_ITE.ROM_QTDE,ROM_ITE.ROM_QTPD,ROM_ITE.ROM_UNIT,ROM_ITE.ROM_TOTA,');
      SQL.Add('       CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.PRO_INS3,CAD_PRO_IMG.PRO_INS4,CAD_PRO_IMG.PRO_INS5,CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.PRO_INS8,');
      SQL.Add('       CAD_PRO.PRO_METR,CAD_PRO.PRO_PESO,CAD_PRO.PRO_PSCN');
      SQL.Add('FROM   TAB_UNI,CAD_PRO,CAD_PRO_IMG,TAB_PAG,CAD_USU,CAD_REP,CAD_CLI,'+SLPrincipal.Values['rom_cab']+' "ROM_CAB" ,'+SLPrincipal.Values['rom_ite']+' "ROM_ITE"');
      SQL.Add('WHERE  ROM_CAB.ID       = ROM_ITE.ROM_CCAB');
      SQL.Add('AND    ROM_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND    CAD_PRO.PRO_DUNI = TAB_UNI.UNI_REFE');
      SQL.Add('AND    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
      SQL.Add('AND    ROM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND    ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND    ROM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    ROM_CAB.ID = '''+cdro+'''');
      SQL.Add('ORDER BY ROM_ITE.ROM_ITEM');
      Open;
    end;

//    qrprom_con_002.qrmemo1.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));
    qrprom_con_002.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrprom_con_002.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrprom_con_002.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrprom_con_002.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrprom_con_002.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrprom_con_002.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrprom_con_002.qrltitulo.Caption    := 'Romaneio para Simples Conferencia';
    qrprom_con_002.ReportTitle          := 'Romaneio para Simples Conferencia';
    qrprom_con_002.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrprom_con_002.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrprom_con_002.Prepare;
    if tag = 0 then
       qrprom_con_002.Preview
    else if tag = 1 then
       qrprom_con_002.Print
    else if tag = 2 then
    begin
      qrprom_con_002.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrprom_con_002.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrprom_con_002.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrprom_con_002);
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_CONFERENCIA;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos');

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT VEN_QTSP,VEN_QTPC');
    SQL.Add('FROM   TAB_PED,'+SLPrincipal.Values['ped_ven_cab']+' "ROM_CAB"');
    SQL.Add('WHERE  ROM_STPD   = VEN_TIPO');
    SQL.Add('AND    ROM_CAB.ID = '''+cdpd+'''');
    Open;

    if (fields[0].AsString = '1') and (fields[1].AsString = 'PC') then
    frmprincipal.consulta.tag := 1;
  end;


  if qrpven_con = nil then
  qrpven_con := Tqrpven_con.Create(self);

  try
    with qrpven_con.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT ROM_CAB.ROM_CDRO,ROM_CAB.ROM_DERO,ROM_CAB.ROM_CDNF,ROM_CAB.ROM_DROM,ROM_CAB.ROM_DNFS,ROM_CAB.ROM_CONC,ROM_CAB.ROM_TCDE,ROM_CAB.ROM_TSDE,ROM_CAB.ROM_STCO,ROM_CAB.ROM_CPAG,TAB_PAG.PAG_DPAG,ROM_CAB.ROM_CVEN,ROM_CAB.ROM_OBSE,');
      SQL.Add('       CAD_USU.USU_DUSU,ROM_CAB.ROM_CREP,CAD_REP.REP_FANT,ROM_CAB.ROM_CCLI,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,');
      SQL.Add('       ROM_ITE.ROM_CDET,ROM_ITE.ROM_ITEM,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_COMP,ROM_ITE.ROM_DCOR,ROM_ITE.ROM_DPRO,ROM_ITE.ROM_DUNI,TAB_UNI.UNI_DUNI,ROM_ITE.ROM_QTDE,ROM_ITE.ROM_QTRL,ROM_ITE.ROM_UNIT,ROM_ITE.ROM_TOTA,');
      SQL.Add('       CAD_PRO_IMG.PRO_INS1,CAD_PRO_IMG.PRO_INS2,CAD_PRO_IMG.PRO_INS3,CAD_PRO_IMG.PRO_INS4,CAD_PRO_IMG.PRO_INS5,CAD_PRO_IMG.PRO_INS6,CAD_PRO_IMG.PRO_INS7,CAD_PRO_IMG.PRO_INS8');
      SQL.Add('FROM   TAB_UNI,CAD_PRO,CAD_PRO_IMG,TAB_PAG,CAD_USU,CAD_REP,CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']+' "ROM_CAB" ,'+SLPrincipal.Values['ped_ven_ite']+' "ROM_ITE"');
      SQL.Add('WHERE  ROM_CAB.ID       = ROM_ITE.ROM_CCAB');
      SQL.Add('AND    ROM_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND    CAD_PRO.PRO_DUNI = TAB_UNI.UNI_REFE');
      SQL.Add('AND    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
      SQL.Add('AND    ROM_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND    ROM_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND    ROM_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND    ROM_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    ROM_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY ROM_ITE.ROM_ITEM');
      Open;
    end;

    qrpven_con.qrmemo1.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));
    
    qrpven_con.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpven_con.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpven_con.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpven_con.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpven_con.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpven_con.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpven_con.qrltitulo.Caption    := 'Pedido para Simples Conferencia';
    qrpven_con.ReportTitle          := 'Pedido para Simples Conferencia';
    qrpven_con.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_con.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpven_con.Prepare;

    if tag = 0 then
       qrpven_con.Preview
    else if tag = 1 then
       qrpven_con.Print
    else if tag = 2 then
    begin
      qrpven_con.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpven_con.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpven_con.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpven_con);
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_VENDA;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos');

  if qrpven_ped = nil then
  qrpven_ped:= Tqrpven_ped.Create(self);

  try

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
      SQL.Add('         PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_PREC,PED_VEN_ITE.ROM_VDSC,PED_VEN_ITE.ROM_TOTA,PED_VEN_ITE.ROM_OBSE');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    qrpven_ped.qrmemo1.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));
    qrpven_ped.qrmemo2.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));

    qrpven_ped.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpven_ped.carregaFoto2(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    qrpven_ped.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpven_ped.qrlraza2.Caption     := qrpven_ped.qrlraza.Caption;

    qrpven_ped.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpven_ped.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpven_ped.qrlend3.Caption      := qrpven_ped.qrlend1.Caption;
    qrpven_ped.qrlend4.Caption      := qrpven_ped.qrlend2.Caption;

    qrpven_ped.qrlemai_site.Caption  := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpven_ped.qrlemai_site2.Caption := qrpven_ped.qrlemai_site.Caption;

    qrpven_ped.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpven_ped.qrlfone2.Caption     := qrpven_ped.qrlfone.Caption;

    qrpven_ped.ReportTitle          := 'Pedido de Venda';
    qrpven_ped.qrltitulo.Caption    := 'Pedido de Venda';

    if qrpven_ped.romanROM_STPD.AsString = 'DEVOLUÇÃO' then
    begin
      qrpven_ped.ReportTitle           := 'Pedido de Devolução';
      qrpven_ped.qrltitulo.Caption     := 'Pedido de Devolução';
    end
    else if qrpven_ped.romanROM_STPD.AsString = 'ABATIMENTO' then
    begin
      qrpven_ped.ReportTitle           := 'Pedido de Abatimento';
      qrpven_ped.qrltitulo.Caption     := 'Pedido de Abatimento';
    end
    else if qrpven_ped.romanROM_STPD.AsString = 'SERVIÇO' then
    begin
      qrpven_ped.ReportTitle           := 'Pedido de Serviço';
      qrpven_ped.qrltitulo.Caption     := 'Pedido de Serviço';
    end;

    qrpven_ped.qrltitulo2.Caption := qrpven_ped.qrltitulo.Caption;
    qrpven_ped.qrlrodape.Caption  := frmprincipal.cad_usuUSU_DUSU.AsString;

    qrpven_ped.qrlrodape3.Caption := '';
    if qrpven_ped.romanROM_CBAI.AsInteger > 0 then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_DUSU FROM CAD_USU');
      SQL.Add('WHERE  USU_CUSU = '''+qrpven_ped.romanROM_CBAI.AsString+'''');
      Open;
      qrpven_ped.qrlrodape3.Caption := fields[0].AsString+' '+formatDateTime('dd/mm/yy hh:mm:ss',qrpven_ped.romanROM_TBAI.AsDateTime);
    end;

    qrpven_ped.qrlrodape2.Caption   := qrpven_ped.qrlrodape.Caption;
    qrpven_ped.qrlrodape4.Caption   := qrpven_ped.qrlrodape3.Caption;

    qrpven_ped.qrlcli.Caption  := oStrZero(qrpven_ped.romanROM_CCLI.AsInteger,5)+' - '+qrpven_ped.romanCLI_FANT.AsString;
    qrpven_ped.qrlcli2.Caption := qrpven_ped.qrlcli.Caption;

    qrpven_ped.qrlven.Caption  := oStrZero(qrpven_ped.romanROM_CVEN.AsInteger,5)+' - '+qrpven_ped.romanUSU_DUSU.AsString;
    qrpven_ped.qrlven2.Caption := qrpven_ped.qrlven.Caption;

    qrpven_ped.qrlrep.Caption  := oStrZero(qrpven_ped.romanROM_CREP.AsInteger,5)+' - '+qrpven_ped.romanREP_FANT.AsString;
    qrpven_ped.qrlrep2.Caption := qrpven_ped.qrlrep.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_ped.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    if frmprincipal.parametrosPAR_NVIA.AsString = '1' then
    begin
      qrpven_ped.qtitulo2.Height    := 0;
      qrpven_ped.qsubtitulo2.Height := 0;
      qrpven_ped.qdetalhe2.Height   := 0;
      qrpven_ped.qsumario2.Height   := 0;
    end;

    qrpven_ped.qrldesc.Caption := '';
    if (qrpven_ped.romanROM_TDSC.AsString = '%') and (qrpven_ped.romanROM_PDSC.AsFloat > 0) then
    qrpven_ped.qrldesc.Caption := 'Desc (%)' else
    if (qrpven_ped.romanROM_TDSC.AsString = '$') and (qrpven_ped.romanROM_PDSC.AsFloat > 0) then
    qrpven_ped.qrldesc.Caption  := 'Desc ($)';
    qrpven_ped.qrldesc2.Caption := qrpven_ped.qrldesc.Caption;

    if qrpven_ped.qrldesc.Caption = '' then
    begin
      qrpven_ped.qrdbROM_PDSC.DataField := '';
      qrpven_ped.qrdbROM_PDSC.DataSet   := nil;
    end;  

    qrpven_ped.qrlpagina.Caption  := 'Página: '+qrpven_ped.romanROM_CONC.AsString;
    if (qrpven_ped.romanROM_PPRN.AsInteger) >= 1 then
    qrpven_ped.qrlpagina.Caption  := 'Página: '+qrpven_ped.romanROM_CONC.AsString+'/'+inttostr(qrpven_ped.romanROM_PPRN.AsInteger + 1);
    qrpven_ped.qrlpagina2.Caption := qrpven_ped.qrlpagina.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+qrpven_ped.romanROM_CPAG.AsString+'''');
      Open;

      qrpven_ped.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpven_ped.qrlparc2.Caption := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpven_ped.qrlpag.Caption   := fields[1].AsString;
      qrpven_ped.qrlpag2.Caption  := fields[1].AsString;

      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpven_ped.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
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

    if cdbx = '' then
    VEN_PED_PEDIDO_SEMBAIXA
    else
    VEN_PED_PEDIDO_COMBAIXA(qrpven_ped.romanROM_STCO.AsString);

    qrpven_ped.lanpa21.Caption  := qrpven_ped.lanpa1.Caption ;
    qrpven_ped.ladpa21.Caption  := qrpven_ped.ladpa1.Caption ;
    qrpven_ped.lavpa21.Caption  := qrpven_ped.lavpa1.Caption ;
    qrpven_ped.lanpa22.Caption  := qrpven_ped.lanpa2.Caption ;
    qrpven_ped.ladpa22.Caption  := qrpven_ped.ladpa2.Caption ;
    qrpven_ped.lavpa22.Caption  := qrpven_ped.lavpa2.Caption ;
    qrpven_ped.lanpa23.Caption  := qrpven_ped.lanpa3.Caption ;
    qrpven_ped.ladpa23.Caption  := qrpven_ped.ladpa3.Caption ;
    qrpven_ped.lavpa23.Caption  := qrpven_ped.lavpa3.Caption ;
    qrpven_ped.lanpa24.Caption  := qrpven_ped.lanpa4.Caption ;
    qrpven_ped.ladpa24.Caption  := qrpven_ped.ladpa4.Caption ;
    qrpven_ped.lavpa24.Caption  := qrpven_ped.lavpa4.Caption ;
    qrpven_ped.lanpa25.Caption  := qrpven_ped.lanpa5.Caption ;
    qrpven_ped.ladpa25.Caption  := qrpven_ped.ladpa5.Caption ;
    qrpven_ped.lavpa25.Caption  := qrpven_ped.lavpa5.Caption ;
    qrpven_ped.lanpa26.Caption  := qrpven_ped.lanpa6.Caption ;
    qrpven_ped.ladpa26.Caption  := qrpven_ped.ladpa6.Caption ;
    qrpven_ped.lavpa26.Caption  := qrpven_ped.lavpa6.Caption ;
    qrpven_ped.lanpa27.Caption  := qrpven_ped.lanpa7.Caption ;
    qrpven_ped.ladpa27.Caption  := qrpven_ped.ladpa7.Caption ;
    qrpven_ped.lavpa27.Caption  := qrpven_ped.lavpa7.Caption ;
    qrpven_ped.lanpa28.Caption  := qrpven_ped.lanpa8.Caption ;
    qrpven_ped.ladpa28.Caption  := qrpven_ped.ladpa8.Caption ;
    qrpven_ped.lavpa28.Caption  := qrpven_ped.lavpa8.Caption ;
    qrpven_ped.lanpa29.Caption  := qrpven_ped.lanpa9.Caption ;
    qrpven_ped.ladpa29.Caption  := qrpven_ped.ladpa9.Caption ;
    qrpven_ped.lavpa29.Caption  := qrpven_ped.lavpa9.Caption ;
    qrpven_ped.lanpa210.Caption := qrpven_ped.lanpa10.Caption;
    qrpven_ped.ladpa210.Caption := qrpven_ped.ladpa10.Caption;
    qrpven_ped.lavpa210.Caption := qrpven_ped.lavpa10.Caption;

    qrpven_ped.Prepare;

    if tag = 0 then
       qrpven_ped.Preview
    else if tag = 1 then
       qrpven_ped.Print
    else if tag = 2 then
    begin
      qrpven_ped.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpven_ped.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpven_ped.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpven_ped);
  end;
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_SINTETICO;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Romaneios');

  if qrpcob_rom = nil then
     qrpcob_rom := Tqrpcob_rom.Create(self);

  try
    with qrpcob_rom.roman do
    begin
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
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         ROM_ITE.ROM_DUNI,ROM_ITE.ID,ROM_ITE.ROM_ITEM,ROM_ITE.ROM_DCOR,ROM_ITE.ROM_DPRO,ROM_ITE.ROM_QTDE,ROM_ITE.ROM_UNIT,ROM_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['rom_ite']+' "ROM_ITE"');
      SQL.Add('WHERE    ROM_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      ROM_ITE.ROM_CCAB = '''+cdro+'''');
      SQL.Add('ORDER BY ROM_ITE.ROM_ITEM');
      Open;
    end;

    qrpcob_rom.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    qrpcob_rom.qrlraza.Caption       := frmprincipal.parametrosPAR_RAZA.AsString;

    qrpcob_rom.qrlend1.Caption       := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcob_rom.qrlend2.Caption       := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;

    qrpcob_rom.qrlemai_site.Caption  := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;

    qrpcob_rom.qrlfone.Caption       := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcob_rom.ReportTitle           := 'Romaneio de Cobrança';
    qrpcob_rom.qrltitulo.Caption     := 'Romaneio de Cobrança';

    if qrpcob_rom.romanROM_STPD.AsString = 'DEVOLUÇÃO' then
    begin
      qrpcob_rom.ReportTitle           := 'Romaneio de Devolução';
      qrpcob_rom.qrltitulo.Caption     := 'Romaneio de Devolução';
    end
    else if qrpcob_rom.romanROM_STPD.AsString = 'ABATIMENTO' then
    begin
      qrpcob_rom.ReportTitle           := 'Romaneio de Abatimento';
      qrpcob_rom.qrltitulo.Caption     := 'Romaneio de Abatimento';
    end
    else if qrpcob_rom.romanROM_STPD.AsString = 'SERVIÇO' then
    begin
      qrpcob_rom.ReportTitle           := 'Romaneio de Serviço';
      qrpcob_rom.qrltitulo.Caption     := 'Romaneio de Serviço';
    end;

    qrpcob_rom.qrlrodape.Caption     := frmprincipal.cad_usuUSU_DUSU.AsString;
    qrpcob_rom.qrlrodape2.Caption    := qrpcob_rom.qrlrodape.Caption;

    qrpcob_rom.qrlcli.Caption        := oStrZero(qrpcob_rom.romanROM_CCLI.AsInteger,5)+' - '+qrpcob_rom.romanCLI_FANT.AsString;
    qrpcob_rom.qrlcli2.Caption       := qrpcob_rom.qrlcli.Caption;

    qrpcob_rom.qrlven.Caption        := oStrZero(qrpcob_rom.romanROM_CVEN.AsInteger,5)+' - '+qrpcob_rom.romanUSU_DUSU.AsString;
    qrpcob_rom.qrlven2.Caption       := qrpcob_rom.qrlven.Caption;

    qrpcob_rom.qrlrep.Caption        := oStrZero(qrpcob_rom.romanROM_CREP.AsInteger,5)+' - '+qrpcob_rom.romanREP_FANT.AsString;
    qrpcob_rom.qrlrep2.Caption       := qrpcob_rom.qrlrep.Caption;

    if qrpcob_rom.romanROM_TDSC.AsString = '%' then
    qrpcob_rom.qrldesc.Caption := 'Desconto (%)'
    else
    qrpcob_rom.qrldesc.Caption  := 'Desconto ($)';
    qrpcob_rom.qrldesc2.Caption := qrpcob_rom.qrldesc.Caption;

    qrpcob_rom.qrlpagina.Caption  := 'Página: '+qrpcob_rom.romanROM_CONC.AsString;
    qrpcob_rom.qrlpagina2.Caption := qrpcob_rom.qrlpagina.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+qrpcob_rom.romanROM_CPAG.AsString+'''');
      Open;

      qrpcob_rom.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_rom.qrlparc2.Caption := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_rom.qrlpag.Caption   := fields[1].AsString;
      qrpcob_rom.qrlpag2.Caption  := fields[1].AsString;

      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcob_rom.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
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

//    qrpcob_rom.qrltcde.Caption  := formatFloat('R$ #,0.00',qrpcob_rom.romanROM_TCDE.AsFloat);
//    qrpcob_rom.qrltcde2.Caption := formatFloat('R$ #,0.00',qrpcob_rom.romanROM_TCDE.AsFloat);

    if (cdnf <> '') and (cdnf <> '0') then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT NFE_VNF,ID FROM '+SLPrincipal.Values['nfe_cab']);
        SQL.Add('WHERE  NFE_CDNF = '''+qrpcob_rom.romanROM_CDNF.AsString+'''');
        Open;

        if fields[0].AsFloat > 0 then
        begin
//          qrpcob_rom.qrltcde.Caption  := formatFloat('R$ #,0.00',fields[0].AsFloat);
//          qrpcob_rom.qrltcde2.Caption := formatFloat('R$ #,0.00',fields[0].AsFloat);

//          qrpcob_rom.qrltcde.Caption := formatFloat('R$ #,0.00',fields[0].AsFloat);
        end;

        SQL.Clear;
        SQL.Add('SELECT   NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
        SQL.Add('WHERE    NFE_CDNF = '''+qrpcob_rom.romanROM_CDNF.AsString+'''');
        SQL.Add('ORDER BY NFE_TITU');
        Open;
      end;

      if not consulta.Fields[0].IsNull then
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

    qrpcob_rom.lanpa21.Caption  := qrpcob_rom.lanpa1.Caption ;
    qrpcob_rom.ladpa21.Caption  := qrpcob_rom.ladpa1.Caption ;
    qrpcob_rom.lavpa21.Caption  := qrpcob_rom.lavpa1.Caption ;
    qrpcob_rom.lanpa22.Caption  := qrpcob_rom.lanpa2.Caption ;
    qrpcob_rom.ladpa22.Caption  := qrpcob_rom.ladpa2.Caption ;
    qrpcob_rom.lavpa22.Caption  := qrpcob_rom.lavpa2.Caption ;
    qrpcob_rom.lanpa23.Caption  := qrpcob_rom.lanpa3.Caption ;
    qrpcob_rom.ladpa23.Caption  := qrpcob_rom.ladpa3.Caption ;
    qrpcob_rom.lavpa23.Caption  := qrpcob_rom.lavpa3.Caption ;
    qrpcob_rom.lanpa24.Caption  := qrpcob_rom.lanpa4.Caption ;
    qrpcob_rom.ladpa24.Caption  := qrpcob_rom.ladpa4.Caption ;
    qrpcob_rom.lavpa24.Caption  := qrpcob_rom.lavpa4.Caption ;
    qrpcob_rom.lanpa25.Caption  := qrpcob_rom.lanpa5.Caption ;
    qrpcob_rom.ladpa25.Caption  := qrpcob_rom.ladpa5.Caption ;
    qrpcob_rom.lavpa25.Caption  := qrpcob_rom.lavpa5.Caption ;
    qrpcob_rom.lanpa26.Caption  := qrpcob_rom.lanpa6.Caption ;
    qrpcob_rom.ladpa26.Caption  := qrpcob_rom.ladpa6.Caption ;
    qrpcob_rom.lavpa26.Caption  := qrpcob_rom.lavpa6.Caption ;
    qrpcob_rom.lanpa27.Caption  := qrpcob_rom.lanpa7.Caption ;
    qrpcob_rom.ladpa27.Caption  := qrpcob_rom.ladpa7.Caption ;
    qrpcob_rom.lavpa27.Caption  := qrpcob_rom.lavpa7.Caption ;
    qrpcob_rom.lanpa28.Caption  := qrpcob_rom.lanpa8.Caption ;
    qrpcob_rom.ladpa28.Caption  := qrpcob_rom.ladpa8.Caption ;
    qrpcob_rom.lavpa28.Caption  := qrpcob_rom.lavpa8.Caption ;
    qrpcob_rom.lanpa29.Caption  := qrpcob_rom.lanpa9.Caption ;
    qrpcob_rom.ladpa29.Caption  := qrpcob_rom.ladpa9.Caption ;
    qrpcob_rom.lavpa29.Caption  := qrpcob_rom.lavpa9.Caption ;
    qrpcob_rom.lanpa210.Caption := qrpcob_rom.lanpa10.Caption;
    qrpcob_rom.ladpa210.Caption := qrpcob_rom.ladpa10.Caption;
    qrpcob_rom.lavpa210.Caption := qrpcob_rom.lavpa10.Caption;

    qrpcob_rom.Prepare;

    if tag = 0 then
       qrpcob_rom.Preview
    else if tag = 1 then
       qrpcob_rom.Print
    else if tag = 2 then
    begin
      qrpcob_rom.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcob_rom.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcob_rom.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcob_rom);
  end;
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_ANALITICO;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Romaneios');

  if qrpcob_rom_ref = nil then
     qrpcob_rom_ref := Tqrpcob_rom_ref.Create(self);

  try
    with qrpcob_rom_ref.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   ROM_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG,');
      SQL.Add('         CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         ROM_ITE.ID,ROM_ITE.ROM_ITEM,ROM_ITE.ROM_DCOR,ROM_ITE.ROM_DPRO,ROM_ITE.ROM_QTDE,ROM_ITE.ROM_UNIT,ROM_ITE.ROM_TOTA');
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

    qrpcob_rom_ref.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    qrpcob_rom_ref.qrlraza.Caption       := frmprincipal.parametrosPAR_RAZA.AsString;

    qrpcob_rom_ref.qrlend1.Caption       := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcob_rom_ref.qrlend2.Caption       := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;

    qrpcob_rom_ref.qrlemai_site.Caption  := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;

    qrpcob_rom_ref.qrlfone.Caption       := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpcob_rom_ref.ReportTitle           := 'Romaneio de Cobrança';
    qrpcob_rom_ref.qrltitulo.Caption     := 'Romaneio de Cobrança';

    if qrpcob_rom_ref.relatorioROM_STPD.AsString = 'DEVOLUÇÃO' then
    begin
      qrpcob_rom_ref.ReportTitle           := 'Romaneio de Devolução';
      qrpcob_rom_ref.qrltitulo.Caption     := 'Romaneio de Devolução';
    end
    else if qrpcob_rom_ref.relatorioROM_STPD.AsString = 'ABATIMENTO' then
    begin
      qrpcob_rom_ref.ReportTitle           := 'Romaneio de Abatimento';
      qrpcob_rom_ref.qrltitulo.Caption     := 'Romaneio de Abatimento';
    end
    else if qrpcob_rom_ref.relatorioROM_STPD.AsString = 'SERVIÇO' then
    begin
      qrpcob_rom_ref.ReportTitle           := 'Romaneio de Serviço';
      qrpcob_rom_ref.qrltitulo.Caption     := 'Romaneio de Serviço';
    end;

    qrpcob_rom_ref.qrlrodape.Caption     := frmprincipal.cad_usuUSU_DUSU.AsString;
    qrpcob_rom_ref.qrlrodape2.Caption    := qrpcob_rom_ref.qrlrodape.Caption;

    qrpcob_rom_ref.qrlcli.Caption        := oStrZero(qrpcob_rom_ref.relatorioROM_CCLI.AsInteger,5)+' - '+qrpcob_rom_ref.relatorioCLI_FANT.AsString;
    qrpcob_rom_ref.qrlcli2.Caption       := qrpcob_rom_ref.qrlcli.Caption;

    qrpcob_rom_ref.qrlven.Caption        := oStrZero(qrpcob_rom_ref.relatorioROM_CVEN.AsInteger,5)+' - '+qrpcob_rom_ref.relatorioUSU_DUSU.AsString;
    qrpcob_rom_ref.qrlven2.Caption       := qrpcob_rom_ref.qrlven.Caption;

    qrpcob_rom_ref.qrlrep.Caption        := oStrZero(qrpcob_rom_ref.relatorioROM_CREP.AsInteger,5)+' - '+qrpcob_rom_ref.relatorioREP_FANT.AsString;
    qrpcob_rom_ref.qrlrep2.Caption       := qrpcob_rom_ref.qrlrep.Caption;

    if qrpcob_rom_ref.relatorioROM_TDSC.AsString = '%' then
    qrpcob_rom_ref.qrldesc.Caption := 'Desconto (%)'
    else
    qrpcob_rom_ref.qrldesc.Caption  := 'Desconto ($)';
    qrpcob_rom_ref.qrldesc2.Caption := qrpcob_rom_ref.qrldesc.Caption;

    qrpcob_rom_ref.qrlpagina.Caption  := 'Página: '+qrpcob_rom_ref.relatorioROM_CONC.AsString;
    qrpcob_rom_ref.qrlpagina2.Caption := qrpcob_rom_ref.qrlpagina.Caption;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PAG_PARC,PAG_DPAG FROM TAB_PAG');
      SQL.Add('WHERE  ID = '''+qrpcob_rom_ref.relatorioROM_CPAG.AsString+'''');
      Open;

      qrpcob_rom_ref.qrlparc.Caption  := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_rom_ref.qrlparc2.Caption := '('+oStrZero(fields[0].AsInteger,2)+')';
      qrpcob_rom_ref.qrlpag.Caption   := fields[1].AsString;
      qrpcob_rom_ref.qrlpag2.Caption  := fields[1].AsString;

      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcob_rom_ref.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
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


    qrpcob_rom_ref.qrltcde.Caption  := formatFloat('R$ #,0.00',qrpcob_rom_ref.relatorioROM_TCDE.AsFloat);
    qrpcob_rom_ref.qrltcde2.Caption := formatFloat('R$ #,0.00',qrpcob_rom_ref.relatorioROM_TCDE.AsFloat);
    qrpcob_rom_ref.qrlqtrl.Caption  := qrpcob_rom_ref.relatorioROM_RLVE.AsString;
    qrpcob_rom_ref.qrlqtrl2.Caption := qrpcob_rom_ref.relatorioROM_RLVE.AsString;

    if (cdnf <> '') and (cdnf <> '0') then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT NFE_VNF,ID FROM '+SLPrincipal.Values['nfe_cab']);
        SQL.Add('WHERE  NFE_CDNF = '''+qrpcob_rom_ref.relatorioROM_CDNF.AsString+'''');
        Open;

        if fields[0].AsFloat > 0 then
        begin
          qrpcob_rom_ref.qrltcde.Caption  := formatFloat('R$ #,0.00',fields[0].AsFloat);
          qrpcob_rom_ref.qrltcde2.Caption := formatFloat('R$ #,0.00',fields[0].AsFloat);

          aux.SQL.Clear;
          aux.SQL.Add('SELECT NFE_QVOL FROM '+SLPrincipal.Values['nfe_tra']);
          aux.SQL.Add('WHERE  NFE_CCAB = '''+fields[1].AsString+'''');
          aux.Open;

          if aux.fields[0].AsFloat > 0 then
          begin
            qrpcob_rom_ref.qrlqtrl.Caption  := aux.Fields[0].AsString;
            qrpcob_rom_ref.qrlqtrl2.Caption := aux.Fields[0].AsString;
          end;

          qrpcob_rom_ref.qrltcde.Caption := formatFloat('R$ #,0.00',fields[0].AsFloat);
        end;

        SQL.Clear;
        SQL.Add('SELECT   NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
        SQL.Add('WHERE    NFE_CDNF = '''+qrpcob_rom_ref.relatorioROM_CDNF.AsString+'''');
        SQL.Add('ORDER BY NFE_TITU');
        Open;
      end;

      if not consulta.Fields[0].IsNull then
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

    if tag = 0 then
       qrpcob_rom_ref.Preview
    else if tag = 1 then
       qrpcob_rom_ref.Print
    else if tag = 2 then
    begin
      qrpcob_rom_ref.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcob_rom_ref.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcob_rom_ref.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcob_rom_ref);
  end;
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  with consulta do
  begin
    if qrpcob_rom.romanROM_CDNF.AsInteger > 0 then
    begin
      SQL.Clear;
      SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
      SQL.Add('WHERE  NFE_CDNF = '''+qrpcob_rom.romanROM_CDNF.AsString+'''');
      Open;
      valo := fields[0].AsFloat;
    end
    else valo := qrpcob_rom.romanROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+qrpcob_rom.romanROM_CPAG.AsString+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpcob_rom.lanpa1.Caption  := '01)';
             qrpcob_rom.ladpa1.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[1].Value)));
             qrpcob_rom.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpcob_rom.lanpa2.Caption  := '02)';
             qrpcob_rom.ladpa2.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[2].Value)));
             qrpcob_rom.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpcob_rom.lanpa3.Caption  := '03)';
             qrpcob_rom.ladpa3.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[3].Value)));
             qrpcob_rom.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpcob_rom.lanpa4.Caption  := '04)';
             qrpcob_rom.ladpa4.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[4].Value)));
             qrpcob_rom.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpcob_rom.lanpa5.Caption  := '05)';
             qrpcob_rom.ladpa5.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[5].Value)));
             qrpcob_rom.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpcob_rom.lanpa6.Caption  := '06)';
             qrpcob_rom.ladpa6.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[6].Value)));
             qrpcob_rom.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpcob_rom.lanpa7.Caption  := '07)';
             qrpcob_rom.ladpa7.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[7].Value)));
             qrpcob_rom.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpcob_rom.lanpa8.Caption  := '08)';
             qrpcob_rom.ladpa8.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[8].Value)));
             qrpcob_rom.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpcob_rom.lanpa9.Caption  := '09)';
             qrpcob_rom.ladpa9.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[9].Value)));
             qrpcob_rom.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpcob_rom.lanpa10.Caption  := '10)';
             qrpcob_rom.ladpa10.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom.romanROM_DROM.AsDateTime,consulta.fields[10].Value)));
             qrpcob_rom.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;

    end;
  end;
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  with consulta do
  begin
    if qrpcob_rom_ref.relatorioROM_CDNF.AsInteger > 0 then
    begin
      SQL.Clear;
      SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
      SQL.Add('WHERE  NFE_CDNF = '''+qrpcob_rom_ref.relatorioROM_CDNF.AsString+'''');
      Open;
      valo := fields[0].AsFloat;
    end
    else valo := qrpcob_rom_ref.relatorioROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+qrpcob_rom_ref.relatorioROM_CPAG.AsString+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpcob_rom_ref.lanpa1.Caption  := '01)';
             qrpcob_rom_ref.ladpa1.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[1].Value)));
             qrpcob_rom_ref.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpcob_rom_ref.lanpa2.Caption  := '02)';
             qrpcob_rom_ref.ladpa2.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[2].Value)));
             qrpcob_rom_ref.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpcob_rom_ref.lanpa3.Caption  := '03)';
             qrpcob_rom_ref.ladpa3.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[3].Value)));
             qrpcob_rom_ref.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpcob_rom_ref.lanpa4.Caption  := '04)';
             qrpcob_rom_ref.ladpa4.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[4].Value)));
             qrpcob_rom_ref.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpcob_rom_ref.lanpa5.Caption  := '05)';
             qrpcob_rom_ref.ladpa5.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[5].Value)));
             qrpcob_rom_ref.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpcob_rom_ref.lanpa6.Caption  := '06)';
             qrpcob_rom_ref.ladpa6.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[6].Value)));
             qrpcob_rom_ref.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpcob_rom_ref.lanpa7.Caption  := '07)';
             qrpcob_rom_ref.ladpa7.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[7].Value)));
             qrpcob_rom_ref.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpcob_rom_ref.lanpa8.Caption  := '08)';
             qrpcob_rom_ref.ladpa8.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[8].Value)));
             qrpcob_rom_ref.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpcob_rom_ref.lanpa9.Caption  := '09)';
             qrpcob_rom_ref.ladpa9.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[9].Value)));
             qrpcob_rom_ref.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpcob_rom_ref.lanpa10.Caption  := '10)';
             qrpcob_rom_ref.ladpa10.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpcob_rom_ref.relatorioROM_DROM.AsDateTime,consulta.fields[10].Value)));
             qrpcob_rom_ref.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;

    end;
  end;
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_COMBAIXA;
var
  i,p: word;
begin
  with consulta do
  begin
    SQL.Clear;
    if qrpcob_rom.romanROM_STCO.AsString = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_rec'])
    else
    SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_rec']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;

    if fields[3].IsNull then
    begin
      SQL.Clear;
      if qrpcob_rom.romanROM_STCO.AsString = 'BANCÁRIO' then
      SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai'])
      else
      SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
      SQL.Add('ORDER BY FIN_DVEN');
      Open;
    end

  end;

  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa1.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpcob_rom.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa2.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpcob_rom.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa3.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpcob_rom.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa4.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpcob_rom.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa5.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpcob_rom.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa6.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpcob_rom.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa7.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpcob_rom.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa8.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpcob_rom.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa9.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpcob_rom.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa10.Caption := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_COMBAIXA;
var
  i,p: word;
begin
  with consulta do
  begin
    SQL.Clear;
    if qrpcob_rom_ref.relatorioROM_STCO.AsString = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_rec'])
    else
    SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_rec']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;

    if fields[3].IsNull then
    begin
      SQL.Clear;
      if qrpcob_rom_ref.relatorioROM_STCO.AsString = 'BANCÁRIO' then
      SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai'])
      else
      SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
      SQL.Add('ORDER BY FIN_DVEN');
      Open;
    end;
  end;

  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom_ref.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa1.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpcob_rom_ref.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa2.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpcob_rom_ref.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa3.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpcob_rom_ref.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa4.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpcob_rom_ref.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa5.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpcob_rom_ref.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa6.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpcob_rom_ref.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa7.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpcob_rom_ref.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa8.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpcob_rom_ref.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa9.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpcob_rom_ref.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa10.Caption := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_SEMBAIXA;
var
  i: word;
  valo: double;
begin
  with consulta do
  begin
    valo := qrpven_ped.romanROM_TCDE.AsFloat;

    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+qrpven_ped.romanROM_CPAG.AsString+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    case i of
        1: begin
             qrpven_ped.lanpa1.Caption  := '01)';
             qrpven_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[1].Value)));
             qrpven_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        2: begin
             qrpven_ped.lanpa2.Caption  := '02)';
             qrpven_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[2].Value)));
             qrpven_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        3: begin
             qrpven_ped.lanpa3.Caption  := '03)';
             qrpven_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[3].Value)));
             qrpven_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        4: begin
             qrpven_ped.lanpa4.Caption  := '04)';
             qrpven_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[4].Value)));
             qrpven_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        5: begin
             qrpven_ped.lanpa5.Caption  := '05)';
             qrpven_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[5].Value)));
             qrpven_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        6: begin
             qrpven_ped.lanpa6.Caption  := '06)';
             qrpven_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[6].Value)));
             qrpven_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        7: begin
             qrpven_ped.lanpa7.Caption  := '07)';
             qrpven_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[7].Value)));
             qrpven_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        8: begin
             qrpven_ped
             .lanpa8.Caption  := '08)';
             qrpven_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[8].Value)));
             qrpven_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
        9: begin
             qrpven_ped.lanpa9.Caption  := '09)';
             qrpven_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[9].Value)));
             qrpven_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
       10: begin
             qrpven_ped.lanpa10.Caption  := '10)';
             qrpven_ped.ladpa10.Caption  := formatDateTime('dd/mm/yy',frmprincipal.RETORNA_DATA_VENCIMENTO(incDay(qrpven_ped.romanROM_DROM.AsDateTime,consulta.fields[10].Value)));
             qrpven_ped.lavpa10.Caption  := formatFloat('R$ #,0.00',roundto(valo/consulta.Fields[0].AsInteger,-2));
           end;
    end;
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_COMBAIXA(stco: string);
var
  i,p: word;
begin
  with consulta do
  begin
    SQL.Clear;
    if stco = 'BANCÁRIO' then
    SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_rec']) else
    SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_rec']);
    SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
    SQL.Add('ORDER BY FIN_DVEN');
    Open;

    if fields[3].IsNull then
    begin
      SQL.Clear;
      if stco = 'BANCÁRIO' then
      SQL.Add('SELECT   FIN_DOCT,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_ban_bai']) else
      SQL.Add('SELECT   FIN_NCHQ,FIN_DCAD,FIN_DVEN,FIN_VALO FROM '+SLPrincipal.Values['fin_rec_car_bai']);
      SQL.Add('WHERE    FIN_CDBX = '''+cdbx+'''');
      SQL.Add('ORDER BY FIN_DVEN');
      Open;
    end
  end;

  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpven_ped.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa1.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpven_ped.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa2.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpven_ped.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa3.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpven_ped.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa4.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpven_ped.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa5.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpven_ped.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa6.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpven_ped.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa7.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpven_ped.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa8.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpven_ped.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa9.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpven_ped.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpven_ped.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpven_ped.lavpa10.Caption := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_BANCARIO;
var
  i,p: word;
begin
  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa1.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpcob_rom.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa2.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpcob_rom.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa3.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpcob_rom.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa4.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpcob_rom.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa5.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpcob_rom.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa6.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpcob_rom.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa7.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpcob_rom.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa8.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpcob_rom.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa9.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpcob_rom.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpcob_rom.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom.lavpa10.Caption := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

procedure Tfrmrelatorio_geral.ROM_CAB_ROMANEIO_COBRANCA_ANALITICO_BANCARIO;
var
  i,p: word;
begin
  consulta.Last;
  p := consulta.recno;
  consulta.First;

  for i := 1 to p do
  begin
    case i of
        1: begin
             qrpcob_rom_ref.lanpa1.Caption  := '01) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa1.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa1.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        2: begin
             qrpcob_rom_ref.lanpa2.Caption  := '02) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa2.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa2.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        3: begin
             qrpcob_rom_ref.lanpa3.Caption  := '03) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa3.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa3.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        4: begin
             qrpcob_rom_ref.lanpa4.Caption  := '04) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa4.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa4.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        5: begin
             qrpcob_rom_ref.lanpa5.Caption  := '05) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa5.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa5.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        6: begin
             qrpcob_rom_ref.lanpa6.Caption  := '06) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa6.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa6.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        7: begin
             qrpcob_rom_ref.lanpa7.Caption  := '07) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa7.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa7.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        8: begin
             qrpcob_rom_ref.lanpa8.Caption  := '08) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa8.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa8.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
        9: begin
             qrpcob_rom_ref.lanpa9.Caption  := '09) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa9.Caption  := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa9.Caption  := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
             consulta.Next;
           end;
       10: begin
             qrpcob_rom_ref.lanpa10.Caption := '10) '+consulta.Fields[0].AsString;
             qrpcob_rom_ref.ladpa10.Caption := formatDateTime('dd/mm/yy',consulta.Fields[2].AsDateTime);
             qrpcob_rom_ref.lavpa10.Caption := formatFloat('R$ #,0.00',consulta.Fields[3].AsFloat);
           end;

    end;
  end;
end;

procedure Tfrmrelatorio_geral.VEN_PED_PEDIDO_SEPARACAO;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos');

  if qrpsep_ped = nil then
     qrpsep_ped := Tqrpsep_ped.Create(self);

  try
    with qrpsep_ped.roman do
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

    with qrpsep_ped.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_DUNI,CAD_PRO.PRO_METR,CAD_PRO.PRO_PESO,CAD_PRO.PRO_PSCN,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_QTRL,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_TOTA,');

      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST2,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST2,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST3,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST3,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST4,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST4,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST5,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST5,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST6,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST6,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST7,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST7,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST8,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST8,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST9,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST9,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES2,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES2,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES3,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES3,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES4,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES4,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES5,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES5,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES6,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES6,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES7,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES7,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES8,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES8,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES9,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES9,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP2,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP2,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP3,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP3,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP4,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP4,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP5,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP5,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP6,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP6,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP7,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP7,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP8,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP8,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP9,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP9,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,');
      SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,');
      SQL.Add('         (SELECT SUM(EST_CRED)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRC,');
      SQL.Add('         (SELECT SUM(EST_DEBI)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,');
      SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRC,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QDEF,');
      SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RDEF ');

      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY ROM_ITEM');
      Open;
    end;

    qrpsep_ped.qrmemo1.Lines.Add(TRIM(frmprincipal.parametrosPAR_OPED.AsString));

    qrpsep_ped.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpsep_ped.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpsep_ped.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpsep_ped.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpsep_ped.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpsep_ped.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpsep_ped.qrltitulo.Caption    := 'Separação de Pedido de Venda';
    qrpsep_ped.ReportTitle          := 'Separação de Pedido de Venda';

    if qrpsep_ped.romanROM_STPD.AsString = 'DEVOLUÇÃO' then
    begin
      qrpsep_ped.ReportTitle           := 'Separação de Pedido de Devolução';
      qrpsep_ped.qrltitulo.Caption     := 'Separação de Pedido de Devolução';
    end
    else if qrpsep_ped.romanROM_STPD.AsString = 'ABATIMENTO' then
    begin
      qrpsep_ped.ReportTitle           := 'Separação de Pedido de Abatimento';
      qrpsep_ped.qrltitulo.Caption     := 'Separação de Pedido de Abatimento';
    end
    else if qrpsep_ped.romanROM_STPD.AsString = 'SERVIÇO' then
    begin
      qrpsep_ped.ReportTitle           := 'Separação de Pedido de Serviço';
      qrpsep_ped.qrltitulo.Caption     := 'Separação de Pedido de Serviço';
    end;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpsep_ped.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpsep_ped.Prepare;

    if tag = 0 then
       qrpsep_ped.Preview
    else if tag = 1 then
       qrpsep_ped.Print
    else if tag = 2 then
    begin
      qrpsep_ped.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpsep_ped.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpsep_ped.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpsep_ped);
  end;
end;

procedure Tfrmrelatorio_geral.CAD_PRO_ESTOQUE;
var
  BRet: boolean;
begin
  if cbCAD_PRO_TEST.Text = '' then
  begin
    cbCAD_PRO_TEST.SetFocus;
    raise exception.Create('Tipo de estoque não selecionado !');
  end;

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbCAD_PRO_DATA.Text      = 'DATA VENDA' then
     cDATA := 'EST_DCAD'
  else if cbCAD_PRO_DATA.Text = 'DATA ENTRADA' then
     cDATA := 'EST_DCAD'
  else if cbCAD_PRO_DATA.Text = 'DATA CADASTRO' then
     cDATA := 'PRO_DCAD';

  if frmprincipal.cad_usuUSU_DIAS.AsInteger > 0 then
  begin
    Data1 := strtodate(SLPrincipal.Values['data_limite']);

    if dxDT1.Date > Data1 then
       Data1 := dxDT1.Date;

    Data2 := incDay(Data1,strtoint(formatfloat('0',frmprincipal.cad_usuUSU_DIAS.AsInteger)));
  end;

  if (cDATA <> '') and (Data1 > Data2) then
  begin
    messageBox(handle,PChar('Data Final não pode ser maior que Data Inicial !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  if tag <> 2 then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpcad_pro_est = nil then
     qrpcad_pro_est := Tqrpcad_pro_est.Create(self);

  try
    qrpcad_pro_est.qrltitulo.Caption    := 'Estoque de Produtos';
    qrpcad_pro_est.ReportTitle          := 'Estoque de Produtos';
    qrpcad_pro_est.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with qrpcad_pro_est.cad_pro_est do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DPRO,CAD_PRO.PRO_DCAT,CAD_PRO.PRO_DGRP,CAD_PRO.PRO_DCOL,CAD_PRO.PRO_DUNI,');
      SQL.Add('         CAD_PRO.PRO_METR,CAD_PRO.PRO_REND,CAD_PRO.PRO_PESO,CAD_PRO.PRO_PSCN,CAD_PRO.PRO_PSMR,');

      if frmprincipal.parametrosPAR_PECA.AsString = '1' then
      begin
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST2,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST2,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST3,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST3,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST4,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST4,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST5,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST5,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST6,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST6,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST7,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST7,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST8,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST8,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_QEST9,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL AND EST_CRED > 0 AND EST_FLAG = ''E'') AS PRO_REST9,');
      end
      else
      begin
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST2,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST2,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST3,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST3,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST4,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST4,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST5,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST5,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST6,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST6,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST7,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST7,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST8,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST8,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST9,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST9,');
      end;

      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES2,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_002 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES2,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES3,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_003 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES3,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES4,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_004 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES4,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES5,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_005 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES5,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES6,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_006 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES6,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES7,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_007 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES7,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES8,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_008 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES8,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES9,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES_009 WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES9,');

      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP2,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_002 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP2,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP3,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_003 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP3,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP4,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_004 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP4,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP5,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_005 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP5,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP6,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_006 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP6,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP7,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_007 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP7,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP8,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_008 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP8,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP9,');
      SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP_009 WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP9,');

      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,');
      SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,');
      SQL.Add('         (SELECT SUM(EST_CRED)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRC,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,');
      SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRC,');
      SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QDEF,');
      SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RDEF ');

      SQL.Add('FROM     CAD_PRO');
      SQL.Add('WHERE    PRO_STA  = ''0''');

      if frmprincipal.parametrosPAR_SPRO.AsString = '1' then
      SQL.Add('AND PRO_CDFO = '''+frmprincipal.parametrosID.AsString+'''');

      if cDATA <> '' then
      begin
        qrpcad_pro_est.qrlfil.Caption := qrpcad_pro_est.qrlfil.Caption+' '+cbCAD_PRO_DATA.Text+' '+formatDateTime('dd/mm/yy',Data1)+' ATE '+formatDateTime('dd/mm/yy',Data2);
        SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');
      end;

      if (cbCAD_PRO_CART1.Text <> 'TODOS') and (cbCAD_PRO_CART1.Text <> '') then
      begin
        if cbCAD_PRO_CART1.Text <> cbCAD_PRO_CART2.Text then
        begin
          qrpcad_pro_est.qrlfil.Caption := qrpcad_pro_est.qrlfil.Caption+' REFERENCIA '+cbCAD_PRO_CART1.Text+' ATE '+cbCAD_PRO_CART2.Text;
          SQL.Add('AND PRO_CART BETWEEN '''+cbCAD_PRO_CART1.Text+''' AND '''+cbCAD_PRO_CART2.Text+'''');
        end else
        begin
          qrpcad_pro_est.qrlfil.Caption := qrpcad_pro_est.qrlfil.Caption+' REFERENCIA '+cbCAD_PRO_CART1.Text;
          SQL.Add('AND PRO_CPRO LIKE '''   +cbCAD_PRO_CART1.Text+'%''');
        end;
      end;

      if cbCAD_PRO_DUNI.Text <> 'TODOS' then
      begin
        qrpcad_pro_est.qrlfil.Caption := qrpcad_pro_est.qrlfil.Caption+' UNIDADE '+cbCAD_PRO_DUNI.Text;
        SQL.Add('AND PRO_DUNI LIKE '''+cbCAD_PRO_DUNI.Text+'%''');
      end;

      if cbCAD_PRO_DPRO.Text <> 'TODOS' then
      begin
        qrpcad_pro_est.qrlfil.Caption := qrpcad_pro_est.qrlfil.Caption+' DESCRIÇÃO '+cbCAD_PRO_DPRO.Text;
        SQL.Add('AND PRO_DPRO LIKE ''%'+cbCAD_PRO_DPRO.Text+'%''');
      end;

      if cbCAD_PRO_DGRP.Text <> 'TODOS' then
      begin
        qrpcad_pro_est.qrlfil.Caption := qrpcad_pro_est.qrlfil.Caption+' GRUPO '+cbCAD_PRO_DGRP.Text;
        SQL.Add('AND PRO_DGRP = '''+cbCAD_PRO_DGRP.Text+'''');
      end;

      if cbCAD_PRO_DCOL.Text <> 'TODOS' then
      begin
        qrpcad_pro_est.qrlfil.Caption := qrpcad_pro_est.qrlfil.Caption+' COLEÇÃO '+cbCAD_PRO_DCOL.Text;
        SQL.Add('AND PRO_DCOL = '''+cbCAD_PRO_DCOL.Text+'''');
      end;

      if cbCAD_PRO_DCAT.Text <> 'TODOS' then
      begin
        qrpcad_pro_est.qrlfil.Caption := qrpcad_pro_est.qrlfil.Caption+' CATEGORIA '+cbCAD_PRO_DCAT.Text;
        SQL.Add('AND PRO_DCAT = '''+cbCAD_PRO_DCAT.Text+'''');
      end;

      SQL.Add('AND      CAD_PRO.PRO_STAV <> ''I''');
      SQL.Add('GROUP BY CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DPRO,CAD_PRO.PRO_DCAT,CAD_PRO.PRO_DGRP,CAD_PRO.PRO_DCOL,CAD_PRO.PRO_DUNI,');
      SQL.Add('         CAD_PRO.PRO_METR,CAD_PRO.PRO_REND,CAD_PRO.PRO_PESO,CAD_PRO.PRO_PSCN,CAD_PRO.PRO_PSMR');
      SQL.Add('ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR');
      Open;
    end;

    with qrpcad_pro_est.relatorio do
    begin
      if not qrpcad_pro_est.tSHEILD.Active then
             qrpcad_pro_est.tSHEILD.StartTransaction;

      Close;
      SelectSQL.Clear;
      SelectSQL.Add('DELETE FROM CAD_PRO_EST');
      ExecSQL;
      qrpcad_pro_est.tSHEILD.CommitRetaining;

      SelectSQL.Clear;
      SelectSQL.Add('SELECT * FROM CAD_PRO_EST');
      Open;
    end;

    qrpcad_pro_est.cad_pro_est.First;
    while not qrpcad_pro_est.cad_pro_est.Eof do
    begin
      BRet := false;

      if cbCAD_PRO_TEST.Text = 'DISPONÍVEL' then
      begin
        if qrpcad_pro_est.cad_pro_estQDIS.AsFloat > 0 then
        BRet := true;
      end else
      if cbCAD_PRO_TEST.Text = 'NEGATIVO' then
      begin
        if qrpcad_pro_est.cad_pro_estQDIS.AsFloat < 0 then
        BRet := true;
      end else
      if cbCAD_PRO_TEST.Text = 'ZERADO' then
      begin
        if qrpcad_pro_est.cad_pro_estQDIS.AsFloat = 0 then
        BRet := true;
      end else
      if cbCAD_PRO_TEST.Text = 'NORMAL' then
      BRet := true;

      if BRet then
      begin
        qrpcad_pro_est.relatorio.Append;
        qrpcad_pro_est.relatorioID.Value       := 0;
        qrpcad_pro_est.relatorioPRO_CART.Value := qrpcad_pro_est.cad_pro_estPRO_CART.AsString;
        qrpcad_pro_est.relatorioPRO_CPRO.Value := qrpcad_pro_est.cad_pro_estPRO_CPRO.AsString;
        qrpcad_pro_est.relatorioPRO_DPRO.Value := qrpcad_pro_est.cad_pro_estPRO_DPRO.AsString;
        qrpcad_pro_est.relatorioPRO_DCOR.Value := qrpcad_pro_est.cad_pro_estPRO_DCOR.AsString;
        qrpcad_pro_est.relatorioPRO_DUNI.Value := qrpcad_pro_est.cad_pro_estPRO_DUNI.AsString;
        qrpcad_pro_est.relatorioPRO_QRES.Value := qrpcad_pro_est.cad_pro_estQRES.AsFloat;
        qrpcad_pro_est.relatorioPRO_QDIS.Value := qrpcad_pro_est.cad_pro_estQDIS.AsFloat;
        qrpcad_pro_est.relatorioPRO_RDIS.Value := qrpcad_pro_est.cad_pro_estRDIS.AsInteger;
        qrpcad_pro_est.relatorio.Post;
        qrpcad_pro_est.tSHEILD.CommitRetaining;
      end;
      qrpcad_pro_est.cad_pro_est.Next;
    end;
    qrpcad_pro_est.relatorio.Close;
    qrpcad_pro_est.relatorio.Open;

    with qrpcad_pro_est.consulta_s do
    begin
      SQL.Clear;
      SQL.Add('SELECT SUM(PRO_QDIS),SUM(PRO_RDIS) FROM CAD_PRO_EST');
      SQL.Add('WHERE  PRO_QDIS > 0');
      Open;

      qrpcad_pro_est.qdis := fields[0].AsFloat;
      qrpcad_pro_est.rdis := fields[1].AsInteger;
    end;

    qrpcad_pro_est.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpcad_pro_est.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpcad_pro_est.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpcad_pro_est.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpcad_pro_est.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpcad_pro_est.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpcad_pro_est.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpcad_pro_est.Prepare;

    if tag = 0 then
       qrpcad_pro_est.Preview
    else if tag = 1 then
       qrpcad_pro_est.Print
    else if tag = 2 then
    begin
      qrpcad_pro_est.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcad_pro_est.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcad_pro_est.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcad_pro_est);
  end;
end;

procedure Tfrmrelatorio_geral.CAD_PRO_TABELA_PRECO;
begin
  if tag <> 2 then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrpProduto_Preco_Tabela = nil then
     qrpProduto_Preco_Tabela := TqrpProduto_Preco_Tabela.Create(self);

  with qrpProduto_Preco_Tabela do
  try
    with Relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PRO_CART AS SKU,PRO_DPRO||'' ''||COALESCE(PRO_DCOR,'''')||'' ''||PRO_DUNI AS NOME,');
      SQL.Add('         PRO_PREC AS VUAT,PRO_VPRC AS VUVA,PRO_RPRC AS VURP');
      SQL.Add('FROM     CAD_PRO');
      SQL.Add('WHERE    PRO_STAV <> ''I''');

      if (cbCAD_PRO_CART1.Text <> 'TODOS') and (cbCAD_PRO_CART1.Text <> '') then
          if cbCAD_PRO_CART1.Text <> cbCAD_PRO_CART2.Text then
             SQL.Add('AND PRO_CART BETWEEN '''+cbCAD_PRO_CART1.Text+''' AND '''+cbCAD_PRO_CART2.Text+'''')
          else
             SQL.Add('AND PRO_CPRO LIKE '''   +cbCAD_PRO_CART1.Text+'%''');

      if cbCAD_PRO_DUNI.Text <> 'TODOS' then
         SQL.Add('AND PRO_DUNI LIKE '''+cbCAD_PRO_DUNI.Text+'%''');

      if cbCAD_PRO_DPRO.Text <> 'TODOS' then
         SQL.Add('AND PRO_DPRO LIKE ''%'+cbCAD_PRO_DPRO.Text+'%''');

      if cbCAD_PRO_DGRP.Text <> 'TODOS' then
         SQL.Add('AND PRO_DGRP = '''+cbCAD_PRO_DGRP.Text+'''');

      if cbCAD_PRO_DCOL.Text <> 'TODOS' then
         SQL.Add('AND PRO_DCOL = '''+cbCAD_PRO_DCOL.Text+'''');

      if cbCAD_PRO_DCAT.Text <> 'TODOS' then
         SQL.Add('AND PRO_DCAT = '''+cbCAD_PRO_DCAT.Text+'''');

      SQL.Add('GROUP BY 1,2,3,4,5');
      SQL.Add('ORDER BY 1');
      Open;
    end;

    CarregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);

    QRLEmpresa.Caption := FrmPrincipal.parametrosPAR_FANT.AsString+' - '+FrmPrincipal.parametrosPAR_RAZA.AsString;
    QRLTitulo.Caption  := 'Tabela de Preços de Produtos';
    ReportTitle        := QRLTitulo.Caption;

    QRLRodapeRelatorio.Caption := 'Report '+Name+' '+FormatDateTime('dd/mm/yy hh:mm',Now);
    QRLRodapeUsuario.Caption   := oREPPrimeiraLetraMaiuscula(frmprincipal.cad_usuUSU_DUSU.AsString);

    { Cabeçalho + Detalhes }
    QRLPRC_1.Enabled := ((cbCAD_PRO_TEST.Text = 'ATACADO') or (cbCAD_PRO_TEST.Text = 'TODOS'));
    QRDPRC_1.Enabled := QRLPRC_1.Enabled;

    QRLPRC_2.Enabled := ((cbCAD_PRO_TEST.Text = 'VAREJO') or (cbCAD_PRO_TEST.Text = 'TODOS'));
    QRDPRC_2.Enabled := QRLPRC_2.Enabled;

    QRLPRC_3.Enabled := ((cbCAD_PRO_TEST.Text = 'REPRESENTANTE') or (cbCAD_PRO_TEST.Text = 'TODOS'));
    QRDPRC_3.Enabled := QRLPRC_3.Enabled;

    Prepare;
    if FrmRelatorio_Geral.Tag = 0 then
       Preview else
    if FrmRelatorio_Geral.Tag = 1 then
       Print else
    if FrmRelatorio_Geral.Tag = 2 then
    begin
      ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end else
    if tag = 3 then
    begin
      ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end else
    if tag = 4 then
    begin
      ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpProduto_Preco_Tabela);
  end;
end;

procedure Tfrmrelatorio_geral.PAG_COM_PAGAMENTO;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  if qrppag_com = nil then
  qrppag_com := Tqrppag_com.Create(self);

  try
    if cbPAG_COM_TREL.Tag = 0 then
    begin
      qrppag_com.qrpcab.Expression  := 'relatorio.FIN_VEND';
      qrppag_com.qrpsub.Expression  := 'relatorio.FIN_VEND';
      qrppag_com.qrdbdrep.DataField := 'FIN_VEND';
      qrppag_com.qrdbvend.DataField := 'FIN_DREP';
      qrppag_com.qrlvend.Caption    := 'Representante';
    end
    else
    begin
      qrppag_com.qrpcab.Expression  := 'relatorio.FIN_DREP';
      qrppag_com.qrpsub.Expression  := 'relatorio.FIN_DREP';
      qrppag_com.qrdbdrep.DataField := 'FIN_DREP';
      qrppag_com.qrdbvend.DataField := 'FIN_VEND';
      qrppag_com.qrlvend.Caption    := 'Vendedor';
    end;

    with qrppag_com.relatorio do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM FIN_PAG');
      if cbPAG_COM_TREL.Tag = 0 then
      SQL.Add('ORDER BY FIN_VEND,FIN_DOCT')
      else
      SQL.Add('ORDER BY FIN_DREP,FIN_DOCT');
      Open;
    end;

    qrppag_com.qrldata.Caption := cbPAG_COM_DESC.Hint;
    if cbPAG_COM_DESC.Hint = 'Pagamento' then
    qrppag_com.qrdbdata.DataField := 'FIN_DCAD';
    
    if cbPAG_COM_DATA.Tag = 0 then
    begin
      qrppag_com.qrltipo.Caption    := 'VENDAS PAGAS';
      if tsPAG_COM.Hint = 'CARTEIRA' then
      qrppag_com.qrltipo.Caption    := 'CARTEIRA(S) PAGA(S)'
      else if tsPAG_COM.Hint = 'BANCÁRIO' then
      qrppag_com.qrltipo.Caption    := 'DUPLICATAS(S) PAGA(S)';
    end
    else
      qrppag_com.qrltipo.Caption    := 'VENDA(S) FATURADA(S)';

    with qrppag_com.consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VCOM) FROM FIN_PAG');
      Open;
    end;

    qrppag_com.qrldesc.Caption := formatfloat('#,0.00',oTextToValor(cbPAG_COM_DESC.Text));
    qrppag_com.qrltota.Caption := formatfloat('R$ #,0.00',qrppag_com.consulta_S.Fields[0].AsFloat);
    if oTextToValor(cbPAG_COM_DESC.Text) > 0 then
    qrppag_com.qrltota.Caption := formatfloat('R$ #,0.00',qrppag_com.consulta_S.Fields[0].AsFloat-((qrppag_com.consulta_S.Fields[0].AsFloat*oTextToValor(cbPAG_COM_DESC.Text))/100));


    qrppag_com.qrlper.Caption := trim(dxDT1.Hint)+' ate '+trim(dxDT2.Hint);
    if tsPAG_COM.Hint <> 'TODOS' then
    qrppag_com.qrlper.Caption := tsPAG_COM.Hint+' - '+qrppag_com.qrlper.Caption;

    qrppag_com.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrppag_com.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrppag_com.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrppag_com.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrppag_com.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrppag_com.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrppag_com.qrltitulo.Caption    := 'Pagamento de Comissão de Venda';
    qrppag_com.ReportTitle          := 'Pagamento de Comissão de Venda';
    qrppag_com.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;
    qrppag_com.qrlass1.Caption      := frmprincipal.parametrosPAR_FANT.AsString;
    qrppag_com.qrlass2.Caption      := trim(cbPAG_COM_TREL.Hint);

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrppag_com.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrppag_com.Prepare;
    if tag = 0 then
       qrppag_com.Preview
    else if tag = 1 then
       qrppag_com.Print
    else if tag = 2 then
    begin
      qrppag_com.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrppag_com.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrppag_com.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrppag_com);
  end;
end;

procedure Tfrmrelatorio_geral.NFE_CAB_GERAL;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Relatórios');

  Data1 := dxDT1.Date;
  Data2 := dxDT2.Date;
  cDATA := '';

  if cbNFE_CAB_DATA.Text = 'DATA EMISSÃO' then
     cDATA := 'NFE_DEMI';

  if qrpnfe_ger = nil then
     qrpnfe_ger := Tqrpnfe_ger.Create(self);

  try
    with qrpnfe_ger.relatorio do
    begin
      if cbNFE_CAB_DEMP.Text <> 'TODOS' then
      begin
        qrpnfe_ger.qrlfil.Caption := qrpnfe_ger.qrlfil.Caption+' EMPRESA '+cbNFE_CAB_DEMP.Text;

        consulta.SQL.Clear;
        consulta.SQL.Add('SELECT ID FROM PAR_SIS');
        consulta.SQL.Add('WHERE  PAR_FANT = '''+cbNFE_CAB_DEMP.Text+'''');
        consulta.Open;

        if consulta.Fields[0].AsInteger = 1 then
        begin
          cbNFE_CAB_DEMP.Hint := 'NFE_CAB';
          clNFE_CAB_DEMP.Hint := 'NFE_ITE';
        end
        else
        begin
          cbNFE_CAB_DEMP.Hint := 'NFE_CAB_'+oStrZero(consulta.Fields[0].AsInteger,3);
          clNFE_CAB_DEMP.Hint := 'NFE_ITE_'+oStrZero(consulta.Fields[0].AsInteger,3);
        end;

        SQL.Clear;
        SQL.Add('SELECT NFE_CAB.NFE_CDNF,NFE_CAB.NFE_CONC,NFE_CAB.NFE_DFAV,NFE_CAB.NFE_DVEN,NFE_CAB.NFE_DREP,NFE_CAB.NFE_DTRA,NFE_CAB.NFE_DEMI,NFE_ITE.NFE_CFOP,TAB_NAT.NAT_DNAT,TAB_NAT.NAT_TIPO,TAB_NAT.NAT_OPER,');
        SQL.Add('SUM(NFE_ITE.NFE_VICMS) "NFE_VICMS",SUM(NFE_ITE.NFE_VIPI) "NFE_VIPI",SUM(NFE_ITE.NFE_VPIS) "NFE_VPIS",SUM(NFE_ITE.NFE_VCOFINS) "NFE_VCOFINS",SUM(NFE_ITE.NFE_VNF) "NFE_VNF"');
        SQL.Add('FROM  TAB_NAT,'+cbNFE_CAB_DEMP.Hint+' "NFE_CAB" ,'+clNFE_CAB_DEMP.Hint+' "NFE_ITE"');
        SQL.Add('WHERE NFE_CAB.NFE_CDNF = NFE_ITE.NFE_CDNF');
        SQL.Add('AND   NFE_ITE.NFE_CFOP = TAB_NAT.NAT_CNAT');

        if cDATA <> '' then
        begin
          qrpnfe_ger.qrlfil.Caption := qrpnfe_ger.qrlfil.Caption+' '+cbNFE_CAB_DATA.Text+' '+formatDateTime('dd/mm/yy',Data1)+' ATE '+formatDateTime('dd/mm/yy',Data2);
          SQL.Add('AND '+cDATA+' BETWEEN '''+formatDateTime('mm/dd/yy',Data1)+''' AND '''+formatDateTime('mm/dd/yy',Data2)+'''');
        end;

        qrpnfe_ger.qrlfil.Caption := qrpnfe_ger.qrlfil.Caption+' TIPO '+cbNFE_CAB_TNFE.Text;
        if cbNFE_CAB_TNFE.Text <> 'TODOS' then
        SQL.Add('AND NAT_TIPO = '''+cbNFE_CAB_TNFE.Text+'''');

        qrpnfe_ger.qrlfil.Caption := qrpnfe_ger.qrlfil.Caption+' STATUS '+cbNFE_CAB_STA.Text;
        if cbNFE_CAB_STA.Text <> 'TODOS' then
        begin
          if cbNFE_CAB_STA.Text = 'AUTORIZADA' then
          SQL.Add('AND NFE_STA = ''0''')
          else
          SQL.Add('AND NFE_STA = ''1''');
        end;

        if cbNFE_CAB_DFAV.Text <> 'TODOS' then
        begin
          qrpnfe_ger.qrlfil.Caption := qrpnfe_ger.qrlfil.Caption+' FAVORECIDO '+cbNFE_CAB_DFAV.Text;
          SQL.Add('AND NFE_DFAV = '''+cbNFE_CAB_DFAV.Text+'''');
        end;

        if cbNFE_CAB_DVEN.Text <> 'TODOS' then
        begin
          qrpnfe_ger.qrlfil.Caption := qrpnfe_ger.qrlfil.Caption+' VENDEDOR '+cbNFE_CAB_DVEN.Text;
          SQL.Add('AND NFE_DVEN = '''+cbNFE_CAB_DVEN.Text+'''');
        end;

        if cbNFE_CAB_DREP.Text <> 'TODOS' then
        begin
          qrpnfe_ger.qrlfil.Caption := qrpnfe_ger.qrlfil.Caption+' REPRESENTANTE '+cbNFE_CAB_DREP.Text;
          SQL.Add('AND NFE_DREP = '''+cbNFE_CAB_DREP.Text+'''');
        end;

        SQL.Add('GROUP BY NFE_CAB.NFE_CDNF,NFE_CAB.NFE_CONC,NFE_CAB.NFE_DFAV,NFE_CAB.NFE_DVEN,NFE_CAB.NFE_DREP,NFE_CAB.NFE_DTRA,NFE_CAB.NFE_DEMI,NFE_ITE.NFE_CFOP,TAB_NAT.NAT_DNAT,TAB_NAT.NAT_TIPO,TAB_NAT.NAT_OPER');
        SQL.Add('ORDER BY NAT_TIPO,NFE_CDNF');
        Open;
      end;
    end;

    qrpnfe_ger.carregaFoto(frmprincipal.parametrosPAR_FOT3.BlobSize,frmprincipal.parametrosPAR_FOT3,frmprincipal.parametros,frmprincipal.parametros);
    qrpnfe_ger.qrlraza.Caption      := frmprincipal.parametrosPAR_RAZA.AsString;
    qrpnfe_ger.qrlend1.Caption      := frmprincipal.parametrosPAR_TLOG.AsString+' '+frmprincipal.parametrosPAR_LOGR.AsString+', '+frmprincipal.parametrosPAR_NUME.AsString;
    qrpnfe_ger.qrlend2.Caption      := frmprincipal.parametrosPAR_BAI.AsString+' - '+frmprincipal.parametrosPAR_CID.AsString+' - '+frmprincipal.parametrosPAR_UF.AsString;
    qrpnfe_ger.qrlemai_site.Caption := frmprincipal.parametrosPAR_MAIL.AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    qrpnfe_ger.qrlfone.Caption      := '('+frmprincipal.parametrosPAR_DDD.AsString+')'+' '+copy(frmprincipal.parametrosPAR_FONE.AsString,1,4)+'-'+
                                                                              copy(frmprincipal.parametrosPAR_FONE.AsString,5,4);
    qrpnfe_ger.qrltitulo.Caption    := 'Listagem Geral de Notas Fiscais';
    qrpnfe_ger.ReportTitle          := 'Listagem Geral de Notas Fiscais';
    qrpnfe_ger.qrlrodape.Caption    := frmprincipal.cad_usuUSU_DUSU.AsString;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT FUN_MAIL FROM CAD_FUN');
      SQL.Add('WHERE  ID = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
      Open;

      if fields[0].AsString <> '' then
         qrpnfe_ger.qrlemai_site.Caption := fields[0].AsString+' / '+frmprincipal.parametrosPAR_SITE.AsString;
    end;

    qrpnfe_ger.Prepare;
    if tag = 0 then
       qrpnfe_ger.Preview
    else if tag = 1 then
       qrpnfe_ger.Print
    else if tag = 2 then
    begin
      qrpnfe_ger.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpnfe_ger.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpnfe_ger.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpnfe_ger);
  end;
end;

procedure Tfrmrelatorio_geral.BSaiClick(Sender: TObject);
begin
  frmrelatorio_geral.close;
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
  else if tsVEN_PRC.TabVisible then
  begin
    if (cbVEN_PRC_DATA.Enabled) and (cbVEN_PRC_DATA.Text = '') then
    begin
      if cbVEN_PRC_TREL.Text = 'SITUAÇÃO DE PROGRAMAÇÃO DE COMPRA' then
      cbVEN_PRC_DATA.Text := 'DATA PREVISÃO CHEGADA';
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
  else if tsCAD_FUN.TabVisible then
  begin
    if (cbCAD_FUN_DATA.Enabled) and (cbCAD_FUN_DATA.Text = '') then
    begin
      cbCAD_FUN_DATA.SetFocus;
      raise exception.Create('Tipo de Data de Pesquisa não Selecionado !');
    end;
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
    cbFIN_REC_DATA.Text := 'DATA VENCIMENTO'
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

procedure Tfrmrelatorio_geral.BVisClick(Sender: TObject);
begin
  ENVIA_RELATORIO(0);
end;

procedure Tfrmrelatorio_geral.BPriClick(Sender: TObject);
begin
  ENVIA_RELATORIO(1);
end;

procedure TFrmRelatorio_Geral.ENVIA_RELATORIO(WTag: Word);
begin
  try
    tag := WTag;
    if tsCAD_PRO.TabVisible then
    begin
      if cbCAD_PRO_TREL.Text      = 'ESTOQUE DE PRODUTOS' then
      CAD_PRO_ESTOQUE else
      if cbCAD_PRO_TREL.Text = 'FICHA TÉCNICA COM FOTO' then
      CAD_PRO_FICHA_VENDA_FOTO else
      if cbCAD_PRO_TREL.Text = 'TABELA DE PREÇOS' then
      CAD_PRO_TABELA_PRECO;
    end else
    if tsGER.TabVisible then
    begin
    end
    else if tsCAD_REP.TabVisible then
    begin
    end
    else if tsCAD_CON.TabVisible then
    begin
    end
    else if tsCAD_CLI.TabVisible then
    begin
    end
    else if tsVEN_OCA.TabVisible then
    begin
      //  VEN_OCA_ORCAMENTO_VENDA_CUPOM;
    end
    else if tsENT_PRO.TabVisible then
    begin
      if cbENT_PRO_TREL.Text = 'ROMANEIO DE ENTRADA POR PRODUTOS' then
      ENT_PRO_ROMANEIOS else
      if cbENT_PRO_TREL.Text = 'ROMANEIO DE ENTRADA PARA SIMPLES CONFERENCIA' then
      ENT_PRO_ROMANEIOS_CONFERENCIA;
    end
    else if tsVEN_PRC.TabVisible then
    begin
    end
    else if tsVEN_PRG.TabVisible then
    begin
    end
    else if tsROM_CAB.TabVisible then
    begin
      if cbROM_CAB_TREL.Text = 'ROMANEIO PARA SIMPLES CONFERENCIA' then
      begin
        if cdro = '' then
        raise exception.Create('Número do romaneio não selecionado !');

        with consulta do
        begin
          SQL.Clear;
          SQL.Add('SELECT VEN_QTSP,VEN_QTPC');
          SQL.Add('FROM   TAB_PED,'+SLPrincipal.Values['rom_cab']+' "ROM_CAB"');
          SQL.Add('WHERE  ROM_STPD   = VEN_TIPO');
          SQL.Add('AND    ROM_CAB.ID = '''+cdro+'''');
          Open;

          if (fields[0].AsString = '1') and (fields[1].AsString = 'PC') then
          ROM_CAB_CONFERENCIA_001 else
          ROM_CAB_CONFERENCIA_002;
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
      begin
        if cdpd = '' then
           raise exception.Create('Número do pedido não selecionado !');

        VEN_PED_PEDIDO_VENDA;
      end

      else if cbVEN_PED_TREL.Text = 'PEDIDO DE VENDA (CUPOM)' then
      begin
        if cdpd = '' then
           raise exception.Create('Número do pedido não selecionado !');

        PED_CUP_VEN;
      end
      else if cbVEN_PED_TREL.Text = 'SIMPLES CONFERENCIA' then
      begin
        if cdpd = '' then
        raise exception.Create('Número do pedido não selecionado !');

        VEN_PED_PEDIDO_CONFERENCIA;
      end
      else if cbVEN_PED_TREL.Text = 'SIMPLES CONFERENCIA (MATRICIAL)' then
      begin
      end
      else if cbVEN_PED_TREL.Text = 'SIMPLES CONFERENCIA (CUPOM)' then
      begin
        if cdpd = '' then
           raise exception.Create('Número do pedido não selecionado !');

        PED_CUP_SCO;
      end
      else if cbVEN_PED_TREL.Text = 'SEPARAÇÃO DE PEDIDO DE VENDA' then
        VEN_PED_PEDIDO_SEPARACAO
      else if cbVEN_PED_TREL.Text = 'PEDIDO DE VENDA DE COBRANÇA' then
        VEN_PED_PEDIDO_COBRANCA;
    end
    else if tsCAD_FUN.TabVisible then
    begin
      CAD_FUN_ETQ;
    end
    else if tsCAI_MOV.TabVisible then
    begin
      if cbCAI_MOV_TREL.Text = '' then
      raise exception.Create('Tipo de relatório não selecionado !');

      if cbCAI_MOV_TREL.Text = 'FLUXO GERAL DE VENDAS - SINTÉTICO' then
         CAI_MOV_GERAL_SINTETICO
      else if cbCAI_MOV_TREL.Text = 'FLUXO GERAL DE VENDAS - ANALÍTICO' then
         CAI_MOV_GERAL_ANALITICO
      else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA - SINTÉTICO' then
         CAI_MOV_CAIXA_SINTETICO
      else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA - ANALÍTICO' then
         CAI_MOV_CAIXA_ANALITICO
      else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA DE CARTEIRA' then
         CAI_MOV_FLUXO_CAIXA_CARTEIRA
      else if cbCAI_MOV_TREL.Text = 'FLUXO DE CAIXA BANCÁRIO' then
         CAI_MOV_FLUXO_CAIXA_BANCARIO;
    end
    else if tsFIN_DUP.TabVisible then
    begin
      if cbFIN_DUP_TREL.Text = '' then
         raise exception.Create('Tipo de relatório não selecionado !');

      if cbFIN_DUP_TREL.Text = 'DUPLICATAS' then
      NFE_DUP_EMI;
    end
    else if tsFIN_PAG.TabVisible then
    begin
    end
    else if tsFIN_REC.TabVisible  then
    begin
      if cbFIN_REC_TREL.Text = '' then
      raise exception.Create('Tipo de relatório não selecionado !');

      if cbFIN_REC_TREL.Text      = 'LISTAGEM GERAL DE CONTAS A RECEBER' then
      FIN_REC_GERAL;
    end
    else if tsNFE_CAB.TabVisible then
    begin
      if cbNFE_CAB_TREL.Text = '' then
      raise exception.Create('Tipo de relatório não selecionado !');

      if cbNFE_CAB_TREL.Text      = 'LISTAGEM GERAL DE NOTAS FISCAIS'             then
      NFE_CAB_GERAL;
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

procedure Tfrmrelatorio_geral.BSavClick(Sender: TObject);
begin
  frmarquivo_geral := Tfrmarquivo_geral.Create(self);
  frmarquivo_geral.Position          := poDesigned;
  frmarquivo_geral.Top               := 0;
  frmarquivo_geral.Left              := 0;

  if tsCAD_PRO.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAD_PRO_TREL.Text
  else if tsVEN_OCA.TabVisible then
     frmarquivo_geral.edfile.Text := cbVEN_OCA_TREL.Text
  else if tsENT_PRO.TabVisible then
     frmarquivo_geral.edfile.Text := cbENT_PRO_TREL.Text
  else if tsGER.TabVisible then
     frmarquivo_geral.edfile.Text := cbGER_TREL.Text
  else if tsVEN_PRC.TabVisible then
     frmarquivo_geral.edfile.Text := cbVEN_PRC_TREL.Text
  else if tsVEN_PRG.TabVisible then
     frmarquivo_geral.edfile.Text := cbVEN_PRG_TREL.Text
  else if tsVEN_PED.TabVisible then
     frmarquivo_geral.edfile.Text := cbVEN_PED_TREL.Text
  else if tsROM_CAB.TabVisible then
     frmarquivo_geral.edfile.Text := cbROM_CAB_TREL.Text
  else if tsCAI_MOV.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAI_MOV_TREL.Text
  else if tsCAD_FUN.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAD_FUN_TREL.Text
  else if tsFIN_REC.TabVisible then
     frmarquivo_geral.edfile.Text := cbFIN_REC_TREL.Text
  else if tsNFE_CAB.TabVisible then
     frmarquivo_geral.edfile.Text := cbNFE_CAB_TREL.Text
  else if tsCAD_CLI.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAD_CLI_TREL.Text
  else if tsCAD_CON.TabVisible then
     frmarquivo_geral.edfile.Text := cbCAD_CON_TREL.Text;


  try
    frmarquivo_geral.ShowModal;
  finally
    freeAndNil(frmarquivo_geral);
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

procedure Tfrmrelatorio_geral.cbCAD_PRO_DEMPChange(Sender: TObject);
begin
  if cbCAD_PRO_DEMP.Text <> 'TODOS' then
  begin
    with aux do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM PAR_SIS');
      SQL.Add('WHERE  PAR_FANT = '''+cbCAD_PRO_DEMP.Text+'''');
      Open;
      cbCAD_PRO_DEMP.Tag := fields[0].AsInteger;
    end;
  end
  else
    cbCAD_PRO_DEMP.Tag := 0;
end;

procedure Tfrmrelatorio_geral.DEFINE_RELATORIO;
begin
  cbGER_FIL1.Text := 'TODOS';
  cbGER_FIL2.Text := 'TODOS';
  cbGER_FIL3.Text := 'TODOS';
  cbGER_FIL4.Text := 'TODOS';

  cbGER_STFI.Values.Clear;
  cbGER_STFI.Descriptions.Clear;
  cbGER_STFI.Values.Add('VENCIDO');
  cbGER_STFI.Descriptions.Add('VENCIDO');
  cbGER_STFI.Values.Add('A VENCER');
  cbGER_STFI.Descriptions.Add('A VENCER');
  cbGER_STFI.Values.Add('TODOS');
  cbGER_STFI.Descriptions.Add('TODOS');
  cbGER_STFI.Text := 'TODOS';

  cbGER_STPD.Values.Clear;
  cbGER_STPD.Descriptions.Clear;
  cbGER_STPD.Values.Add('TODOS');
  cbGER_STPD.Descriptions.Add('TODOS');
  cbGER_STPD.Text := 'TODOS';

  cbGER_STCO.Values.Clear;
  cbGER_STCO.Descriptions.Clear;
  cbGER_STCO.Values.Add('TODOS');
  cbGER_STCO.Descriptions.Add('TODOS');
  cbGER_STCO.Text := 'TODOS';

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_002');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_003');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_004');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_005');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_006');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_007');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_008');
    SQL.Add('UNION');
    SQL.Add('SELECT ROM_STFI FROM PED_VEN_CAB_009');
    SQL.Add('GROUP  BY ROM_STFI');
    SQL.Add('ORDER  BY 1');
    Open;

    while not eof do
    begin
      cbGER_STFI.Values.Add(fields[0].AsString);
      cbGER_STFI.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_PED');
    SQL.Add('WHERE    VEN_STA = ''1''');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      cbGER_STPD.Values.Add(fields[0].AsString);
      cbGER_STPD.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('WHERE    VEN_STA = ''1''');
    SQL.Add('ORDER BY VEN_TIPO');
    Open;

    while not eof do
    begin
      cbGER_STCO.Values.Add(fields[0].AsString);
      cbGER_STCO.Descriptions.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   CLI_FANT FROM CAD_CLI,'+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    CAD_CLI.ID = ROM_CCLI');
    SQL.Add('GROUP BY CLI_FANT');
    SQL.Add('ORDER BY CLI_FANT');
    Open;

    cbGER_DFAV.Text := 'TODOS';
    cbGER_DFAV.Items.Add('TODOS');
    while not eof do
    begin
      cbGER_DFAV.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   USU_DUSU FROM CAD_USU,'+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    CAD_USU.USU_CUSU = ROM_CVEN');
    SQL.Add('GROUP BY USU_DUSU');
    SQL.Add('ORDER BY USU_DUSU');
    Open;

    cbGER_DVEN.Text := 'TODOS';
    cbGER_DVEN.Items.Add('TODOS');
    while not eof do
    begin
      cbGER_DVEN.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   REP_FANT FROM CAD_REP,'+SLPrincipal.Values['ped_ven_cab']);
    SQL.Add('WHERE    CAD_REP.ID = ROM_CREP');
    SQL.Add('GROUP BY REP_FANT');
    SQL.Add('ORDER BY REP_FANT');
    Open;

    cbGER_DREP.Text := 'TODOS';
    cbGER_DREP.Items.Add('TODOS');
    while not eof do
    begin
      cbGER_DREP.Items.Add(fields[0].AsString);
      next;
    end;
  end;

  if cbGER_TREL.Text = 'VENDAS FATURADAS POR CATEGORIAS' then
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA VENDA');
    cbGER_DATA.Values.Add('DATA BAIXA');
    cbGER_DATA.Values.Add('DATA VENCIMENTO');
    cbGER_DATA.Values.Add('DATA DEVOLUÇÃO');
    cbGER_DATA.Values.Add('DATA CANCELAMENTO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA VENDA');
    cbGER_DATA.Descriptions.Add('DATA BAIXA');
    cbGER_DATA.Descriptions.Add('DATA VENCIMENTO');
    cbGER_DATA.Descriptions.Add('DATA DEVOLUÇÃO');
    cbGER_DATA.Descriptions.Add('DATA CANCELAMENTO');
    cbGER_DATA.Text := 'DATA VENDA';
  end else
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA PEDIDO');
    cbGER_DATA.Values.Add('DATA FATURA');
    cbGER_DATA.Values.Add('DATA VENCIMENTO');
    cbGER_DATA.Values.Add('DATA PAGAMENTO');
    cbGER_DATA.Values.Add('DATA NOTA FISCAL');
    cbGER_DATA.Values.Add('DATA CANCELAMENTO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA PEDIDO');
    cbGER_DATA.Descriptions.Add('DATA FATURA');
    cbGER_DATA.Descriptions.Add('DATA VENCIMENTO');
    cbGER_DATA.Descriptions.Add('DATA PAGAMENTO');
    cbGER_DATA.Descriptions.Add('DATA NOTA FISCAL');
    cbGER_DATA.Descriptions.Add('DATA CANCELAMENTO');
    cbGER_DATA.Text := 'DATA PEDIDO';
  end;

  cbGER_TVIS.Values.Clear;
  cbGER_TVIS.Descriptions.Clear;
  cbGER_TVIS.Values.Add('PEDIDO');
  cbGER_TVIS.Descriptions.Add('PEDIDO');
  cbGER_TVIS.Values.Add('FATURADO');
  cbGER_TVIS.Descriptions.Add('FATURADO');
  cbGER_TVIS.Text := 'PEDIDO';

  if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS POR CATEGORIA') or (cbGER_TREL.Text = 'KARDEX DE PRODUTOS POR CATEGORIA') or
     (cbGER_TREL.Text = 'PEDIDOS DE VENDAS POR CATEGORIAS') or (cbGER_TREL.Text = 'VENDAS FATURADAS POR CATEGORIAS') then
  begin
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    begin
      clGER_DVEN.Enabled := false;
      cbGER_DVEN.Enabled := false;
      cbGER_DVEN.Text    := frmprincipal.cad_usuUSU_DUSU.AsString;
    end;

    cbGER_TVIS.Enabled := false;
    if cbGER_TREL.Text = 'PEDIDOS DE VENDAS POR CATEGORIAS' then
    cbGER_TVIS.Text := 'PEDIDO' else
    if cbGER_TREL.Text = 'VENDAS FATURADAS POR CATEGORIAS' then
    cbGER_TVIS.Text := 'FATURADO';

    clGER_FIL1.Caption := 'Categoria';
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAT_DCAT FROM CAD_PRO_CAC');
      SQL.Add('WHERE    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY CAT_DCAT');
      SQL.Add('ORDER BY CAT_DCAT');
      Open;

      cbGER_FIL1.Text := 'TODOS';
      cbGER_FIL1.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL1.Items.Add(fields[0].AsString);
        next;
      end;
    end;
  end else
  if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - GERAL')                 or (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - RANKING')          or
     (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - RANKING POR CATEGORIA') or (cbGER_TREL.Text = 'VENDAS DE PRODUTOS POR CLIENTES')       or
     (cbGER_TREL.Text = 'VENDAS DE PRODUTOS POR VENDEDORES')          or (cbGER_TREL.Text = 'VENDAS DE PRODUTOS POR REPRESENTANTES') or
     (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - DEVOLUÇÃO') then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   GRP_DGRP FROM CAD_PRO_GRP');
//      SQL.Add('WHERE    GRP_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY GRP_DGRP');
      SQL.Add('ORDER BY GRP_DGRP');
      Open;

      cbGER_FIL2.Text := 'TODOS';
      cbGER_FIL2.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL2.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CAT_DCAT FROM CAD_PRO_CAC');
      SQL.Add('WHERE    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY CAT_DCAT');
      SQL.Add('ORDER BY CAT_DCAT');
      Open;

      cbGER_FIL3.Text := 'TODOS';
      cbGER_FIL3.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL3.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   COL_DCOL FROM TAB_COL');
      SQL.Add('GROUP BY COL_DCOL');
      SQL.Add('ORDER BY COL_DCOL');
      Open;

      cbGER_FIL4.Text := 'TODOS';
      cbGER_FIL4.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL4.Items.Add(fields[0].AsString);
        next;
      end;

      if cbGER_TREL.Text = 'VENDAS - GERAL' then
      begin
        dxDT1.Date      := strtodate(SLPrincipal.Values['data_sistema']);
        dxDT2.Date      := strtodate(SLPrincipal.Values['data_sistema']);
        cbGER_STFI.Text := 'TODOS';
      end;
    end;

    clGER_FIL1.Caption := 'Referencia';

    clGER_FIL2.Caption := 'Grupo';
    clGER_FIL2.Visible := true;
    cbGER_FIL2.Visible := true;
    slGER_FIL2.Visible := true;
    sbGER_FIL2.Visible := true;
    clGER_FIL3.Caption := 'Categoria';
    clGER_FIL3.Visible := true;
    cbGER_FIL3.Visible := true;
    slGER_FIL3.Visible := true;
    sbGER_FIL3.Visible := true;
    clGER_FIL4.Caption := 'Coleção';
    clGER_FIL4.Visible := true;
    cbGER_FIL4.Visible := true;
    slGER_FIL4.Visible := true;
    sbGER_FIL4.Visible := true;

    if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - DEVOLUÇÃO') then
    cbGER_STPD.Text := 'DEVOLUÇÃO';

    if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - RANKING') then
    begin
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT   COL_DCOL FROM TAB_COL');
        SQL.Add('GROUP BY COL_DCOL');
        SQL.Add('ORDER BY COL_DCOL');
        Open;

        cbGER_FIL1.Items.Clear;
        cbGER_FIL1.Text := 'TODOS';
        cbGER_FIL1.Items.Add('TODOS');
        while not eof do
        begin
          cbGER_FIL1.Items.Add(fields[0].AsString);
          next;
        end;
      end;
      
      cbGER_TVIS.Enabled := false;
      clGER_TVIS.Enabled := false;
      clGER_FIL1.Caption := 'Coleção';
      clGER_FIL1.Visible := true;
      cbGER_FIL1.Visible := true;
      slGER_FIL1.Visible := true;
      sbGER_FIL1.Visible := true;

      clGER_FIL4.Caption := 'Ranking';
      cbGER_FIL4.Items.Clear;
      cbGER_FIL4.Text    := '15';
      
      cbprkg1.Visible    := true;
      cbprkg2.Visible    := true;
    end;

    if (cbGER_TREL.Text = 'VENDAS DE PRODUTOS - RANKING POR CATEGORIA') then
    begin
      clGER_FIL3.Caption := 'Ranking';
      cbGER_FIL3.Text    := '15';
      clGER_FIL3.Visible := true;
      cbGER_FIL3.Visible := true;
      slGER_FIL3.Visible := true;
      sbGER_FIL3.Visible := true;

      cbprkg1.Visible    := true;
      cbprkg2.Visible    := true;
    end;
  end else
  if (cbGER_TREL.Text = 'RESUMO DE NOTAS FISCAIS')           or (cbGER_TREL.Text = 'FATURAMENTO POR NÚMERO DE CONTAINER') or
     (cbGER_TREL.Text = 'FATURAMENTO POR TIPOS DE CRÉDITOS') or (cbGER_TREL.Text = 'FATURAMENTO POR TIPOS DE PEDIDOS')    then
  begin
    cbGER_DATA.Text    := 'DATA VENDA';
    clGER_FIL1.Caption := 'Empresa';

    if cbGER_TREL.Text = 'FATURAMENTO POR NÚMERO DE CONTAINER' then
    cbGER_DATA.Text    := 'DATA PEDIDO';

    if cbGER_TREL.Text = 'RESUMO DE NOTAS FISCAIS' then
    begin
      clGER_FIL2.Caption := 'Tipo de NF';
      clGER_FIL2.Visible := true;
      cbGER_FIL2.Visible := true;
      slGER_FIL2.Visible := true;
      sbGER_FIL2.Visible := true;
    end;
    
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PAR_FANT FROM PAR_SIS');
      SQL.Add('ORDER BY PAR_FANT');
      Open;

      cbGER_FIL1.Text := 'TODOS';
      cbGER_FIL1.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL1.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   NAT_TIPO FROM TAB_NAT');
      SQL.Add('GROUP BY NAT_TIPO');
      SQL.Add('ORDER BY NAT_TIPO');
      Open;

      cbGER_FIL2.Text := 'TODOS';
      cbGER_FIL2.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL2.Items.Add(fields[0].AsString);
        next;
      end;
    end;
    if frmprincipal.cad_usuUSU_ADM.AsString <> '1' then
    begin
      cbGER_FIL1.Text    := frmprincipal.parametrosPAR_FANT.AsString;
      cbGER_FIL1.Enabled := false;
    end;
  end else
  if (cbGER_TREL.Text = 'COMPRAS - GERAL')      or (cbGER_TREL.Text = 'COMPRAS POR FORNECEDORES') or
     (cbGER_TREL.Text = 'COMPRAS POR PRODUTOS') or (cbGER_TREL.Text = 'COMPRAS POR CONTAINER') then
  begin
    cbGER_STFI.Values.Clear;
    cbGER_STFI.Values.Add('TODOS');
    cbGER_STFI.Values.Add('PENDENTE');
    cbGER_STFI.Values.Add('FINALIZADO');
    cbGER_STFI.Values.Add('CANCELADO');

    cbGER_STFI.Descriptions.Clear;
    cbGER_STFI.Descriptions.Add('TODOS');
    cbGER_STFI.Descriptions.Add('PENDENTE');
    cbGER_STFI.Descriptions.Add('FINALIZADO');
    cbGER_STFI.Descriptions.Add('CANCELADO');

    cbGER_STFI.DropDownRows := 4;
    cbGER_STFI.Text := 'TODOS';

    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA LANÇAMENTO');
    cbGER_DATA.Values.Add('DATA CHEGADA - PREVISÃO');
    cbGER_DATA.Values.Add('DATA CHEGADA - REAL');
    cbGER_DATA.Values.Add('DATA EMBARQUE - PREVISÃO');
    cbGER_DATA.Values.Add('DATA EMBARQUE - REAL');
    cbGER_DATA.Values.Add('DATA DESEMBARQUE - PREVISÃO');
    cbGER_DATA.Values.Add('DATA DESEMBARQUE - REAL');
    cbGER_DATA.Values.Add('DATA PRODUÇÃO - PREVISÃO');
    cbGER_DATA.Values.Add('DATA PRODUÇÃO - REAL');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA LANÇAMENTO');
    cbGER_DATA.Descriptions.Add('DATA CHEGADA - PREVISÃO');
    cbGER_DATA.Descriptions.Add('DATA CHEGADA - REAL');
    cbGER_DATA.Descriptions.Add('DATA EMBARQUE - PREVISÃO');
    cbGER_DATA.Descriptions.Add('DATA EMBARQUE - REAL');
    cbGER_DATA.Descriptions.Add('DATA DESEMBARQUE - PREVISÃO');
    cbGER_DATA.Descriptions.Add('DATA DESEMBARQUE - REAL');
    cbGER_DATA.Descriptions.Add('DATA PRODUÇÃO - PREVISÃO');
    cbGER_DATA.Descriptions.Add('DATA PRODUÇÃO - REAL');
    cbGER_DATA.Text    := 'DATA LANÇAMENTO';
    clGER_FIL1.Caption := 'Referencia';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PRO_CART');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_com_ite']);
      SQL.Add('WHERE    ROM_CPRO = CAD_PRO.ID');
      SQL.Add('GROUP BY PRO_CART');
      SQL.Add('ORDER BY PRO_CART');
      Open;

      cbGER_FIL1.Text := 'TODOS';
      cbGER_FIL1.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL1.Items.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   FOR_FANT FROM CAD_FOR');
      SQL.Add('ORDER BY FOR_FANT');
      Open;

      cbGER_FIL2.Text := 'TODOS';
      cbGER_FIL2.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_FIL2.Items.Add(fields[0].AsString);
        next;
      end;
    end;
  end else
  if (cbGER_TREL.Text = 'PROGRAMAÇÃO DE VENDAS POR CLIENTES') then
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA PROGRAMAÇÃO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA PROGRAMAÇÃO');

    cbGER_TVIS.Enabled := false;
    cbGER_STFI.Enabled := false;
    clGER_FIL1.Caption := 'Referencia';

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   EST_DFAV');
      SQL.Add('FROM '   +SLPrincipal.Values['cad_pro_prg']);
      SQL.Add('GROUP BY EST_DFAV');
      SQL.Add('ORDER BY EST_DFAV');
      Open;

      cbGER_DFAV.Items.Clear;
      cbGER_DFAV.Text := 'TODOS';
      cbGER_DFAV.Items.Add('TODOS');
      while not eof do
      begin
        cbGER_DFAV.Items.Add(fields[0].AsString);
        next;
      end;
    end;
  end else
  if (cbGER_TREL.Text = 'PROGRAMAÇÃO DE VENDAS POR PRODUTOS') then
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA PROGRAMAÇÃO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA PROGRAMAÇÃO');

    cbGER_TVIS.Text    := 'ANALÍTICO';
    cbGER_TVIS.Enabled := false;
    cbGER_STFI.Enabled := false;

    clGER_FIL1.Caption := 'Referencia';
  end else
  if (cbGER_TREL.Text = 'KARDEX DE VENDAS POR PRODUTOS') then
  begin
    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA VENDA+DATA PREVISTA DE CHEGADA');
    cbGER_DATA.Values.Add('DATA VENDA+DATA REAL DE CHEGADA');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA VENDA+DATA PREVISTA DE CHEGADA');
    cbGER_DATA.Descriptions.Add('DATA VENDA+DATA REAL DE CHEGADA');

    cbGER_TVIS.Text    := 'ANALÍTICO';
    cbGER_TVIS.Enabled := false;
    cbGER_STFI.Enabled := false;

    clGER_FIL1.Caption := 'Referencia';
  end else
  if (cbGER_TREL.Text = 'PEDIDOS POR CLIENTES')       or
     (cbGER_TREL.Text = 'PEDIDOS POR VENDEDORES')     or
     (cbGER_TREL.Text = 'PEDIDOS POR REPRESENTANTES') or
     (cbGER_TREL.Text = 'PEDIDOS - GERAL')            then
  begin
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    begin
      clGER_DVEN.Enabled := false;
      cbGER_DVEN.Enabled := false;
      cbGER_DVEN.Text    := frmprincipal.cad_usuUSU_DUSU.AsString;
    end;
  
    clGER_TVIS.Enabled := false;
    cbGER_TVIS.Enabled := false;

    dxDT1.Date := StartOfTheMonth(dxDT1.Date);
    dxDT2.Date := EndOFTheMonth(dxDT2.Date);

    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA PEDIDO');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA PEDIDO');
    cbGER_DATA.Text := 'DATA PEDIDO';

    clGER_FIL1.Visible := false;
    cbGER_FIL1.Visible := false;
    slGER_FIL1.Visible := false;
    sbGER_FIL1.Visible := false;
  end else
  if (cbGER_TREL.Text = 'VENDAS FATURADAS POR CLIENTES')       or
     (cbGER_TREL.Text = 'VENDAS FATURADAS POR VENDEDORES')     or
     (cbGER_TREL.Text = 'VENDAS FATURADAS POR REPRESENTANTES') or
     (cbGER_TREL.Text = 'VENDAS FATURADAS - GERAL')            then
  begin
    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    begin
      clGER_DVEN.Enabled := false;
      cbGER_DVEN.Enabled := false;
      cbGER_DVEN.Text    := frmprincipal.cad_usuUSU_DUSU.AsString;
    end;

    clGER_TVIS.Enabled := true;
    cbGER_TVIS.Enabled := true;

    cbGER_TVIS.Values.Clear;
    cbGER_TVIS.Descriptions.Clear;
    cbGER_TVIS.Values.Add('ANALÍTICO');
    cbGER_TVIS.Descriptions.Add('ANALÍTICO');
    cbGER_TVIS.Values.Add('SINTÉTICO');
    cbGER_TVIS.Descriptions.Add('SINTÉTICO');
    cbGER_TVIS.Text := 'ANALÍTICO';

    dxDT1.Date := StartOfTheMonth(dxDT1.Date);
    dxDT2.Date := EndOFTheMonth(dxDT2.Date);

    cbGER_DATA.Values.Clear;
    cbGER_DATA.Values.Add('');
    cbGER_DATA.Values.Add('DATA VENDA');

    cbGER_DATA.Descriptions.Clear;
    cbGER_DATA.Descriptions.Add('');
    cbGER_DATA.Descriptions.Add('DATA VENDA');
    cbGER_DATA.Text := 'DATA VENDA';

    clGER_FIL1.Visible := false;
    cbGER_FIL1.Visible := false;
    slGER_FIL1.Visible := false;
    sbGER_FIL1.Visible := false;
  end;
end;

procedure Tfrmrelatorio_geral.cbCAD_PRO_TRELChange(Sender: TObject);
begin
  cbCAD_PRO_TEST.Descriptions.Clear;
  cbCAD_PRO_TEST.Values.Clear;
  if cbCAD_PRO_TREL.Text = 'TABELA DE PREÇOS' then
  begin
    cbCAD_PRO_TEST.Descriptions.Add('ATACADO');
    cbCAD_PRO_TEST.Descriptions.Add('VAREJO');
    cbCAD_PRO_TEST.Descriptions.Add('REPRESENTANTE');
    cbCAD_PRO_TEST.Descriptions.Add('TODOS');
    cbCAD_PRO_TEST.Values.Add('ATACADO');
    cbCAD_PRO_TEST.Values.Add('VAREJO');
    cbCAD_PRO_TEST.Values.Add('REPRESENTANTE');
    cbCAD_PRO_TEST.Values.Add('TODOS');
    cbCAD_PRO_TEST.Text := 'ATACADO';
  end else
  begin
    cbCAD_PRO_TEST.Descriptions.Add('DISPONÍVEL');
    cbCAD_PRO_TEST.Descriptions.Add('NEGATIVO');
    cbCAD_PRO_TEST.Descriptions.Add('ZERADO');
    cbCAD_PRO_TEST.Descriptions.Add('NORMAL');
    cbCAD_PRO_TEST.Values.Add('DISPONÍVEL');
    cbCAD_PRO_TEST.Values.Add('NEGATIVO');
    cbCAD_PRO_TEST.Values.Add('ZERADO');
    cbCAD_PRO_TEST.Values.Add('NORMAL');
    cbCAD_PRO_TEST.Text := 'DISPONÍVEL';

    if (cbCAD_PRO_TREL.Text = 'ESTOQUE DE PRODUTOS') then
    cbCAD_PRO_TEST.Text := 'DISPONÍVEL' else
    if (cbCAD_PRO_TREL.Text = 'CATÁLOGO DE PRODUTOS') then
    cbCAD_PRO_TEST.Text := '';
  end;
end;

procedure Tfrmrelatorio_geral.cbENT_PRO_TRELChange(Sender: TObject);
begin
  cbENT_PRO_CDRO.Enabled := not (cbENT_PRO_TREL.Text = 'ROMANEIO DE ENTRADA POR PRODUTOS');
  if not cbENT_PRO_CDRO.Enabled then
  cbENT_PRO_CDRO.Text := '';
end;

procedure Tfrmrelatorio_geral.cbVEN_PRC_TRELChange(Sender: TObject);
begin
  cbVEN_PRC_DATA.Enabled := (cbVEN_PRC_TREL.Text = 'SITUAÇÃO DE PROGRAMAÇÃO DE COMPRA');

  cbVEN_PRC_DATA.Text    := '';
  if cbVEN_PRC_DATa.Enabled then
  cbVEN_PRC_DATA.Text    := 'DATA PREVISÃO CHEGADA';
end;

procedure Tfrmrelatorio_geral.cbFIN_REC_TRELChange(Sender: TObject);
begin
  cbFIN_REC_STFI.Text    := 'TODOS';
  cbFIN_REC_STFI.Enabled := true;

  if cbFIN_REC_TREL.Text = 'LISTAGEM DE CONTAS A RECEBER VENCIDOS \ A VENCER' then
  begin
    cbFIN_REC_DATA.Text    := 'DATA VENCIMENTO';
    cbFIN_REC_STFI.Text    := 'PENDENTE';
    cbFIN_REC_STFI.Enabled := false;
  end;
end;

procedure Tfrmrelatorio_geral.cbCAD_PRO_CART1Change(Sender: TObject);
begin
  cbCAD_PRO_CART2.Text := cbCAD_PRO_CART1.Text;
end;

procedure Tfrmrelatorio_geral.CAD_FUN_ETQ;
begin
  if qrpcad_fun_eti <> nil then
  Exit;

  try
    qrpcad_fun_eti := Tqrpcad_fun_eti.Create(self);
    qrpcad_fun_eti.Prepare;
    qrpcad_fun_eti.relatorio.Open;

    qrpcad_fun_eti.qrlmes.Caption := cbCAD_FUN_MES.Descriptions[cbCAD_FUN_MES.Values.IndexOf(cbCAD_FUN_MES.Text)];
    qrpcad_fun_eti.qrlano.Caption := cbCAD_FUN_ANO.Text;

    if tag = 0 then
       qrpcad_fun_eti.Preview
    else if tag = 1 then
       qrpcad_fun_eti.Print
    else if tag = 2 then
    begin
      qrpcad_fun_eti.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      qrpcad_fun_eti.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      qrpcad_fun_eti.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    freeAndNil(qrpcad_fun_eti);
  end;

end;

procedure Tfrmrelatorio_geral.PED_CUP_VEN;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos (Cupom)');

  if QRPPED_CUP_VEN = nil then
     QRPPED_CUP_VEN := TQRPPED_CUP_VEN.Create(self);

  try
    with QRPPED_CUP_VEN.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_ESTA,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG,PED_VEN_CAB.ROM_TSDE - PED_VEN_CAB.ROM_TCDE AS ROM_VDSC,');
      SQL.Add('         TRIM(IIF(POSITION(''VISTA'' IN PED_VEN_CAB.ROM_STCO) = 0,PED_VEN_CAB.ROM_STCO,'''') || '' '' || IIF(TAB_PAG.ID > 1 ,TAB_PAG.PAG_PARC||''x''||'' [''||TAB_PAG.PAG_DPAG||'']'',''A VISTA'')) AS DECO,');
      SQL.Add('         IIF(NULLIF(PED_VEN_CAB.ROM_DSEP,'''') IS NULL,PED_VEN_CAB.ROM_DSEP,CAD_USU.USU_DUSU) AS DESP');

      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');

      SQL.Add('AND      PED_VEN_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_CAB.ID DESC');
      Open;
    end;

    with QRPPED_CUP_VEN.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_VDSC,PED_VEN_ITE.ROM_PREC,PED_VEN_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    QRPPED_CUP_VEN.ReportTitle          := QRPPED_CUP_VEN.romanROM_STPD.AsString;
    QRPPED_CUP_VEN.QRLTitulo.Caption    := QRPPED_CUP_VEN.romanROM_STPD.AsString;
    QRPPED_CUP_VEN.QRLSubTitulo.Caption := QRPPED_CUP_VEN.romanROM_STCO.AsString;

    QRPPED_CUP_VEN.qrlpagina.Caption  := 'Pág: ' +  QRPPED_CUP_VEN.romanROM_CONC.AsString;
    if (QRPPED_CUP_VEN.romanROM_PPRN.AsInteger) >= 1 then
    QRPPED_CUP_VEN.qrlpagina.Caption  := 'Pág: '+QRPPED_CUP_VEN.romanROM_CONC.AsString+'/'+inttostr(QRPPED_CUP_VEN.romanROM_PPRN.AsInteger + 1);
    QRPPED_CUP_VEN.Prepare;

    if tag = 0 then
       QRPPED_CUP_VEN.Preview
    else if tag = 1 then
       QRPPED_CUP_VEN.Print
    else if tag = 2 then
    begin
      QRPPED_CUP_VEN.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      QRPPED_CUP_VEN.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      QRPPED_CUP_VEN.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    FreeAndNil(QRPPED_CUP_VEN);
  end;
end;

procedure Tfrmrelatorio_geral.PED_CUP_SCO;
begin
  if (tag = 0) or (tag = 1) then
     frmprincipal.FazPrnAtualVirarDefault('Pedidos (Cupom)');

  if QRPPED_CUP_SCO = nil then
     QRPPED_CUP_SCO := TQRPPED_CUP_SCO.Create(self);

  try
    with QRPPED_CUP_SCO.roman do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_CLI.CLI_RAZA,CAD_CLI.CLI_ESTA,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG,PED_VEN_CAB.ROM_TSDE - PED_VEN_CAB.ROM_TCDE AS ROM_VDSC,');
      SQL.Add('         TRIM(IIF(POSITION(''VISTA'' IN PED_VEN_CAB.ROM_STCO) = 0,PED_VEN_CAB.ROM_STCO,'''') || '' '' || IIF(TAB_PAG.ID > 1 ,TAB_PAG.PAG_PARC||''x''||'' [''||TAB_PAG.PAG_DPAG||'']'',''A VISTA'')) AS DECO,');
      SQL.Add('         IIF(NULLIF(PED_VEN_CAB.ROM_DSEP,'''') IS NULL,PED_VEN_CAB.ROM_DSEP,CAD_USU.USU_DUSU) AS DESP');

      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');

      SQL.Add('AND      PED_VEN_CAB.ID = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_CAB.ID DESC');
      Open;
    end;

    with QRPPED_CUP_SCO.ven_efe do
    begin
      SQL.Clear;
      SQL.Add('SELECT   CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
      SQL.Add('         PED_VEN_ITE.ROM_DUNI,PED_VEN_ITE.ID,PED_VEN_ITE.ROM_ITEM,PED_VEN_ITE.ROM_DCOR,PED_VEN_ITE.ROM_DPRO,PED_VEN_ITE.ROM_QTDE,PED_VEN_ITE.ROM_UNIT,PED_VEN_ITE.ROM_VDSC,PED_VEN_ITE.ROM_PREC,PED_VEN_ITE.ROM_TOTA');
      SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
      SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
      SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = '''+cdpd+'''');
      SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
      Open;
    end;

    QRPPED_CUP_SCO.ReportTitle := 'SIMPLES CONFERÊNCIA Nº ' + QRPPED_CUP_SCO.romanROM_DERO.AsString;
    QRPPED_CUP_SCO.Prepare;

    if tag = 0 then
       QRPPED_CUP_SCO.Preview
    else if tag = 1 then
       QRPPED_CUP_SCO.Print
    else if tag = 2 then
    begin
      QRPPED_CUP_SCO.ExportToFilter(
                  TQRPDFDocumentFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.PDF')));
    end
    else if tag = 3 then
    begin
      QRPPED_CUP_SCO.ExportToFilter(
                  TQRXLSFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.XLS')));
    end
    else if tag = 4 then
    begin
      QRPPED_CUP_SCO.ExportToFilter(
                  TQRRTFExportFilter.Create(PChar(frmarquivo_geral.cblfile.Text+'\'+frmarquivo_geral.edfile.Text+'.DOC')));
    end;
  finally
    FreeAndNil(QRPPED_CUP_SCO);
  end;
end;

end.
