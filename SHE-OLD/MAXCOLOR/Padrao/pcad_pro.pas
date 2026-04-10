unit pcad_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, IBEvents, IBStoredProc, IBDatabase,
  ImgList, DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid,  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, Buttons,
  DBCtrls, StdCtrls, dxPageControl, jpeg, dxExEdtr, dxEdLib, dxEditor, DateUtils,
  dxDBELib, QRCtrls, math, shellapi, Menus, rxSpeedbar, StrUtils;

type
  Tfrmcad_pro = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroPRO_CART: TIBStringField;
    cadastroPRO_CPRO: TIBStringField;
    cadastroPRO_DPRO: TIBStringField;
    cadastroPRO_FOTO: TBlobField;
    cadastroPRO_CBAR: TIBStringField;
    cadastroPRO_STA: TIBStringField;
    cadastroPRO_DCOR: TIBStringField;
    cadastroPRO_DGRP: TIBStringField;
    cadastroPRO_DCOL: TIBStringField;
    cadastroPRO_OBSE: TMemoField;
    dbgConsultaPRO_CPRO: TdxDBGridMaskColumn;
    dbgConsultaPRO_DPRO: TdxDBGridMaskColumn;
    dbgConsultaPRO_DGRP: TdxDBGridMaskColumn;
    dbgConsultaPRO_PREC: TdxDBGridMaskColumn;
    cadastroPRO_DUNI: TIBStringField;
    dbgConsultaPRO_DUNI: TdxDBGridMaskColumn;
    ImageOPC2: TImageList;
    dbgConsultaPRO_DCOR: TdxDBGridMaskColumn;
    dbgConsultaPRO_CART: TdxDBGridMaskColumn;
    cadastroPRO_GRAD: TIBStringField;
    dbgConsultaPRO_GRAD: TdxDBGridMaskColumn;
    cadastroPRO_DCAD: TDateField;
    dbgConsultaPRO_DCAD: TdxDBGridDateColumn;
    cadastroPRO_DPRG: TDateField;
    cadastroPRO_DENT: TDateField;
    cadastroPRO_DULT: TDateField;
    dbgConsultaPRO_DPRG: TdxDBGridDateColumn;
    dbgConsultaPRO_DENT: TdxDBGridDateColumn;
    dbgConsultaPRO_DULT: TdxDBGridDateColumn;
    cadastroPRO_CDFO: TIntegerField;
    cadastroPRO_DCAT: TIBStringField;
    dbgConsultaPRO_DCAT: TdxDBGridMaskColumn;
    cadastroPRO_REPR: TIBStringField;
    GroupBox1: TGroupBox;
    dtscad_pro_est: TDataSource;
    tSHEILD: TIBTransaction;
    pnlfoto: TPanel;
    GroupBox2: TGroupBox;
    imag: TImage;
    pcEST: TdxPageControl;
    tsGER: TdxTabSheet;
    tsMOV: TdxTabSheet;
    tsPRGS: TdxTabSheet;
    pcMOV: TdxPageControl;
    tsSEP: TdxTabSheet;
    tsENT: TdxTabSheet;
    tsSAI: TdxTabSheet;
    cad_pro_res: TIBQuery;
    dtscad_pro_res: TDataSource;
    cad_pro_resEST_DUSU: TIBStringField;
    cad_pro_resPRO_CPRO: TIBStringField;
    cad_pro_resPRO_DCOR: TIBStringField;
    cad_pro_ent: TIBQuery;
    dtscad_pro_ent: TDataSource;
    cad_pro_entID: TIntegerField;
    cad_pro_entEST_DUSU: TIBStringField;
    cad_pro_entPRO_CPRO: TIBStringField;
    cad_pro_entPRO_DCOR: TIBStringField;
    cad_pro_entEST_CRED: TIBBCDField;
    cad_pro_entEST_CDET: TIBStringField;
    cad_pro_sai: TIBQuery;
    dtscad_pro_sai: TDataSource;
    cad_pro_prc: TIBQuery;
    dtscad_pro_prc: TDataSource;
    cad_pro_prcROM_DEXP: TDateField;
    cad_pro_prcFUN_APEL: TIBStringField;
    cad_pro_prcROM_DERO: TIBStringField;
    cad_pro_prcROM_DROM: TDateField;
    cad_pro_prcROM_STFI: TIBStringField;
    cad_pro_prcPRO_CPRO: TIBStringField;
    cad_pro_prcROM_DCOR: TIBStringField;
    cad_pro_prcROM_PCOR: TIBStringField;
    cad_pro_prcROM_DPRO: TIBStringField;
    cad_pro_prcROM_QTDE: TIBBCDField;
    pcprg: TdxPageControl;
    tsprc: TdxTabSheet;
    dbgprc: TdxDBGrid;
    tsprg: TdxTabSheet;
    cad_pro_prcID: TIntegerField;
    dbgprcROM_DEXP: TdxDBGridDateColumn;
    dbgprcFUN_APEL: TdxDBGridMaskColumn;
    dbgprcROM_DERO: TdxDBGridMaskColumn;
    dbgprcROM_DROM: TdxDBGridDateColumn;
    dbgprcPRO_CPRO: TdxDBGridMaskColumn;
    dbgprcROM_DCOR: TdxDBGridMaskColumn;
    dbgprcROM_QTDE: TdxDBGridMaskColumn;
    cad_pro_def: TIBQuery;
    dtscad_pro_def: TDataSource;
    cad_pro_defEST_DUSU: TIBStringField;
    cad_pro_defPRO_CPRO: TIBStringField;
    cad_pro_defPRO_DCOR: TIBStringField;
    cad_pro_resEST_DFAV: TIBStringField;
    cad_pro_resEST_CRED: TIBBCDField;
    cad_pro_resEST_CDET: TIBStringField;
    cad_pro_resID: TIntegerField;
    cad_pro_defID: TIntegerField;
    cad_pro_defEST_CDET: TIBStringField;
    cad_pro_defEST_CRED: TIBBCDField;
    cadastroPRO_PCOR: TIBStringField;
    cadastroPRO_STAV: TIBStringField;
    cadastroSTAV: TStringField;
    dbgConsultaSTAV: TdxDBGridColumn;
    cad_pro_prg: TIBQuery;
    dtscad_pro_prg: TDataSource;
    cad_pro_prgEST_DUSU: TIBStringField;
    cad_pro_prgEST_DFAV: TIBStringField;
    cad_pro_prgPRO_CPRO: TIBStringField;
    cad_pro_prgPRO_DCOR: TIBStringField;
    dxDBGrid2: TdxDBGrid;
    cad_pro_prcROM_DBAI: TDateField;
    cad_pro_prcROM_QTPD: TIBBCDField;
    tsDEF: TdxTabSheet;
    dbgdef: TdxDBGrid;
    dbgdefEST_DUSU: TdxDBGridMaskColumn;
    dbgdefPRO_CPRO: TdxDBGridMaskColumn;
    dbgdefPRO_DCOR: TdxDBGridMaskColumn;
    dbgdefEST_CDET: TdxDBGridMaskColumn;
    dbgdefEST_CRED: TdxDBGridMaskColumn;
    dbgsai: TdxDBGrid;
    dbgsaiEST_DUSU: TdxDBGridMaskColumn;
    dbgsaiPRO_CPRO: TdxDBGridMaskColumn;
    dbgsaiPRO_DCOR: TdxDBGridMaskColumn;
    dbgsaiEST_CDET: TdxDBGridMaskColumn;
    dbgsaiEST_DEBI: TdxDBGridMaskColumn;
    dbgent: TdxDBGrid;
    dbgentEST_DUSU: TdxDBGridMaskColumn;
    dbgentPRO_CPRO: TdxDBGridMaskColumn;
    dbgentPRO_DCOR: TdxDBGridMaskColumn;
    dbgentEST_CDET: TdxDBGridMaskColumn;
    dbgentEST_CRED: TdxDBGridMaskColumn;
    cad_pro_resROM_DERO: TIBStringField;
    cad_pro_resEST_DROM: TDateField;
    cad_pro_resEST_HROM: TTimeField;
    cad_pro_entEST_CDRO: TIntegerField;
    cad_pro_entEST_DCAD: TDateField;
    cad_pro_entEST_HCAD: TTimeField;
    dbgentEST_CDRO: TdxDBGridMaskColumn;
    dbgsaiEST_DFAV: TdxDBGridMaskColumn;
    cad_pro_saiID: TIntegerField;
    cad_pro_saiEST_DUSU: TIBStringField;
    cad_pro_saiPRO_CPRO: TIBStringField;
    cad_pro_saiPRO_DCOR: TIBStringField;
    cad_pro_saiEST_DEBI: TIBBCDField;
    cad_pro_saiEST_CDET: TIBStringField;
    cad_pro_saiEST_CDRO: TIntegerField;
    cad_pro_saiEST_DROM: TDateField;
    cad_pro_saiEST_HROM: TTimeField;
    cad_pro_saiEST_DFAV: TIBStringField;
    cad_pro_prgID: TIntegerField;
    cad_pro_prgEST_CRED: TIBBCDField;
    cad_pro_prgEST_CDET: TIBStringField;
    cad_pro_prgEST_CDRO: TIntegerField;
    cad_pro_prgROM_DERO: TIBStringField;
    cad_pro_prgEST_DCAD: TDateField;
    cad_pro_prgEST_HCAD: TTimeField;
    dxDBGrid2EST_DUSU: TdxDBGridMaskColumn;
    dxDBGrid2EST_DFAV: TdxDBGridMaskColumn;
    dxDBGrid2EST_CRED: TdxDBGridMaskColumn;
    dxDBGrid2EST_DCAD: TdxDBGridDateColumn;
    dxDBGrid2PRO_DCOR: TdxDBGridMaskColumn;
    dxDBGrid2PRO_CPRO: TdxDBGridMaskColumn;
    dxDBGrid2ROM_DERO: TdxDBGridMaskColumn;
    cad_pro_saiEST_FLAG: TIBStringField;
    cad_pro_prgEST_DEBI: TIBBCDField;
    dbgprcROM_QTPD: TdxDBGridMaskColumn;
    dbgprcROM_STFI: TdxDBGridMaskColumn;
    dbgprcROM_DBAI: TdxDBGridDateColumn;
    cad_pro_prcROM_DDES: TDateField;
    cad_pro_prcROM_RDES: TDateField;
    dbgprcROM_DDES: TdxDBGridDateColumn;
    dbgprcROM_RDES: TdxDBGridDateColumn;
    cad_pro_saiEST_DOCU: TIBStringField;
    dbgsaiEST_DOCU: TdxDBGridMaskColumn;
    cad_pro_saiEST_DCAD: TDateField;
    cad_pro_saiEST_HCAD: TTimeField;
    cad_pro_saiEST_DATA: TDateField;
    cad_pro_saiEST_HORA: TTimeField;
    dbgsaiEST_DATA: TdxDBGridColumn;
    cad_pro_prcROM_OBSE: TMemoField;
    sbPRC: TStatusBar;
    cad_pro_prcROM_CDPD: TIntegerField;
    dbgprcROM_CDPD: TdxDBGridMaskColumn;
    aux: TIBQuery;
    cadastroPRO_DUSU: TIBStringField;
    dbgConsultaPRO_DUSU: TdxDBGridMaskColumn;
    cadastroPRO_DALT: TDateField;
    dbgConsultaPRO_DALT: TdxDBGridDateColumn;
    cad_pro_defPRO_TIPO: TIBStringField;
    dbgdefPRO_TIPO: TdxDBGridMaskColumn;
    cadastroPRO_PREC: TFloatField;
    cadastroPRO_CUST: TFloatField;
    cadastroPRO_PCOM: TFloatField;
    cad_pro_resEST_DSEP: TIBStringField;
    cad_pro_entEST_DSEP: TIBStringField;
    cad_pro_saiEST_DSEP: TIBStringField;
    cad_pro_defEST_DSEP: TIBStringField;
    dbgentEST_DSEP: TdxDBGridMaskColumn;
    dbgsaiEST_DSEP: TdxDBGridMaskColumn;
    cad_pro_prgEST_DMAP: TIBStringField;
    cad_pro_prgEST_CTNR: TIBStringField;
    cad_pro_defEST_DMAP: TIBStringField;
    cad_pro_defEST_CTNR: TIBStringField;
    cad_pro_saiEST_DMAP: TIBStringField;
    cad_pro_saiEST_CTNR: TIBStringField;
    cad_pro_entEST_DMAP: TIBStringField;
    cad_pro_entEST_CTNR: TIBStringField;
    cad_pro_resEST_DMAP: TIBStringField;
    cad_pro_resEST_CTNR: TIBStringField;
    dbgentEST_DMAP: TdxDBGridMaskColumn;
    dbgentEST_CTNR: TdxDBGridMaskColumn;
    dbgsaiEST_DMAP: TdxDBGridMaskColumn;
    dbgsaiEST_CTNR: TdxDBGridMaskColumn;
    dbgdefEST_DMAP: TdxDBGridMaskColumn;
    dbgdefEST_CTNR: TdxDBGridMaskColumn;
    cad_pro_resEST_LOTE: TIBStringField;
    cad_pro_entEST_LOTE: TIBStringField;
    cad_pro_saiEST_LOTE: TIBStringField;
    cad_pro_defEST_LOTE: TIBStringField;
    cad_pro_prgEST_LOTE: TIBStringField;
    dbgentEST_LOTE: TdxDBGridMaskColumn;
    dbgsaiEST_LOTE: TdxDBGridMaskColumn;
    dbgdefEST_LOTE: TdxDBGridMaskColumn;
    cadastroFOR_FANT: TIBStringField;
    dbgConsultaFOR_FANT: TdxDBGridMaskColumn;
    tsTPRC: TdxTabSheet;
    cad_pro_tab: TIBQuery;
    dtscad_pro_tab: TDataSource;
    dbgtab: TdxDBGrid;
    cad_pro_tabID: TIntegerField;
    cad_pro_tabPRO_CART: TIBStringField;
    cad_pro_tabPRO_CPRO: TIBStringField;
    cad_pro_tabPRO_DCOR: TIBStringField;
    cad_pro_tabPRO_TIPO: TIBStringField;
    cad_pro_tabPRO_PRC1: TFloatField;
    cad_pro_tabPRO_DAT1: TDateField;
    cad_pro_tabPRO_USU1: TIBStringField;
    cad_pro_tabPRO_PRC2: TFloatField;
    cad_pro_tabPRO_DAT2: TDateField;
    cad_pro_tabPRO_USU2: TIBStringField;
    dbgtabPRO_CPRO: TdxDBGridMaskColumn;
    dbgtabPRO_DCOR: TdxDBGridMaskColumn;
    dbgtabPRO_TIPO: TdxDBGridMaskColumn;
    dbgtabPRO_PRC1: TdxDBGridMaskColumn;
    dbgtabPRO_DAT1: TdxDBGridDateColumn;
    dbgtabPRO_USU1: TdxDBGridMaskColumn;
    cad_pro_prcROM_CTNR: TIBStringField;
    dbgprcROM_CTNR: TdxDBGridMaskColumn;
    dxTabSheet1: TdxTabSheet;
    cad_pro_sep: TIBQuery;
    dtscad_pro_sep: TDataSource;
    cad_pro_sepID: TIntegerField;
    cad_pro_sepROM_DERO: TIBStringField;
    cad_pro_sepEST_DROM: TDateField;
    cad_pro_sepEST_HROM: TTimeField;
    cad_pro_sepEST_DUSU: TIBStringField;
    cad_pro_sepEST_DFAV: TIBStringField;
    cad_pro_sepPRO_CPRO: TIBStringField;
    cad_pro_sepPRO_DCOR: TIBStringField;
    cad_pro_sepEST_CRED: TIBBCDField;
    cad_pro_sepEST_CDET: TIBStringField;
    cad_pro_sepEST_DSEP: TIBStringField;
    cad_pro_sepEST_DMAP: TIBStringField;
    cad_pro_sepEST_CTNR: TIBStringField;
    cad_pro_sepEST_LOTE: TIBStringField;
    dbgres: TdxDBGrid;
    dbgresPRO_CPRO: TdxDBGridMaskColumn;
    dbgresPRO_DCOR: TdxDBGridMaskColumn;
    dbgresROM_DERO: TdxDBGridMaskColumn;
    dbgresEST_DROM: TdxDBGridDateColumn;
    dbgresEST_DUSU: TdxDBGridMaskColumn;
    dbgresEST_DFAV: TdxDBGridMaskColumn;
    dbgresEST_CRED: TdxDBGridMaskColumn;
    dbgentEST_DCAD: TdxDBGridDateColumn;
    dbgsep: TdxDBGrid;
    cad_pro_sepEST_DCAD: TDateField;
    dbgsepPRO_CPRO: TdxDBGridMaskColumn;
    dbgsepPRO_DCOR: TdxDBGridMaskColumn;
    dbgsepEST_CRED: TdxDBGridMaskColumn;
    dbgsepEST_CDET: TdxDBGridMaskColumn;
    dbgsepEST_DSEP: TdxDBGridMaskColumn;
    dbgsepROM_DERO: TdxDBGridMaskColumn;
    dbgsepEST_DROM: TdxDBGridDateColumn;
    dbgsepEST_DCAD: TdxDBGridDateColumn;
    dbgsepEST_DUSU: TdxDBGridMaskColumn;
    dbgsepEST_DFAV: TdxDBGridMaskColumn;
    cad_pro_est: TIBQuery;
    cad_pro_estPRO_CPRO: TIBStringField;
    cad_pro_estPRO_DCOR: TIBStringField;
    cad_pro_estPRO_DUNI: TIBStringField;
    cad_pro_estPRO_METR: TIBBCDField;
    cad_pro_estPRO_PESO: TIBBCDField;
    cad_pro_estPRO_PSCN: TIBBCDField;
    cad_pro_estPRO_CCST: TIBStringField;
    cad_pro_estPRO_STAV: TIBStringField;
    cad_pro_estC_DCST: TStringField;
    cad_pro_estC_STAV: TStringField;
    cad_pro_estC_QDIS: TFloatField;
    cad_pro_estC_RDIS: TIntegerField;
    cad_pro_estC_QEST: TFloatField;
    cad_pro_estC_REST: TIntegerField;
    cad_pro_estC_QRES: TFloatField;
    cad_pro_estC_RRES: TIntegerField;
    cad_pro_estC_QSEP: TFloatField;
    cad_pro_estC_RSEP: TIntegerField;
    cad_pro_estC_QDEF: TFloatField;
    cad_pro_estC_RDEF: TIntegerField;
    cad_pro_estC_QCOM: TFloatField;
    cad_pro_estC_RCOM: TIntegerField;
    cad_pro_estC_QPRG: TFloatField;
    cad_pro_estC_RPRG: TIntegerField;
    cad_pro_estC_QSLD: TFloatField;
    cad_pro_estC_RSLD: TIntegerField;
    DBGEstoque: TdxDBGrid;
    DBGEstoquePRO_CPRO: TdxDBGridMaskColumn;
    DBGEstoquePRO_DCOR: TdxDBGridMaskColumn;
    DBGEstoqueC_QDIS: TdxDBGridColumn;
    DBGEstoqueC_RDIS: TdxDBGridColumn;
    DBGEstoqueC_QDEF: TdxDBGridColumn;
    DBGEstoqueC_RDEF: TdxDBGridColumn;
    DBGEstoqueC_QEST: TdxDBGridColumn;
    DBGEstoqueC_REST: TdxDBGridColumn;
    DBGEstoqueC_QRES: TdxDBGridColumn;
    DBGEstoqueC_RRES: TdxDBGridColumn;
    DBGEstoqueC_QSEP: TdxDBGridColumn;
    DBGEstoqueC_RSEP: TdxDBGridColumn;
    DBGEstoqueC_QCOM: TdxDBGridColumn;
    DBGEstoqueC_RCOM: TdxDBGridColumn;
    DBGEstoqueC_QPRG: TdxDBGridColumn;
    DBGEstoqueC_RPRG: TdxDBGridColumn;
    DBGEstoqueC_QSLD: TdxDBGridColumn;
    DBGEstoqueC_RSLD: TdxDBGridColumn;
    DBGEstoquePRO_STAV: TdxDBGridMaskColumn;
    cad_pro_estPRO_QEST: TIBBCDField;
    cad_pro_estPRO_REST: TLargeintField;
    cad_pro_estPRO_QRES: TIBBCDField;
    cad_pro_estPRO_RRES: TLargeintField;
    cad_pro_estPRO_QSEP: TIBBCDField;
    cad_pro_estPRO_RSEP: TLargeintField;
    cad_pro_estPRO_QPRG: TIBBCDField;
    cad_pro_estPRO_RPRG: TLargeintField;
    cad_pro_estPRO_QCOM: TIBBCDField;
    cad_pro_estPRO_RCOM: TLargeintField;
    cad_pro_estPRO_QDEF: TIBBCDField;
    cad_pro_estPRO_RDEF: TLargeintField;
    CadastroPRO_CCLF: TIBStringField;
    CadastroPRO_PPRZ: TFloatField;
    CadastroPRO_PPRO: TFloatField;
    DBGConsultaPRO_CCLF: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siPSQClick(Sender: TObject);
    procedure cad_pro_estCalcFields(DataSet: TDataSet);
    procedure siPRNClick(Sender: TObject);
    procedure cadastroCalcFields(DataSet: TDataSet);
    procedure cad_pro_saiCalcFields(DataSet: TDataSet);
    procedure imagClick(Sender: TObject);
    procedure dtscad_pro_saiDataChange(Sender: TObject; Field: TField);
    procedure dtscad_pro_entDataChange(Sender: TObject; Field: TField);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure dtscad_pro_resDataChange(Sender: TObject; Field: TField);
    procedure dtscad_pro_sepDataChange(Sender: TObject; Field: TField);
    procedure FormDestroy(Sender: TObject);
    procedure dtscad_pro_estDataChange(Sender: TObject; Field: TField);
    procedure DBGEstoqueCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure CadastroAfterScroll(DataSet: TDataSet);
    procedure SIMEAppendClick(Sender: TObject);
    procedure SIMEEditClick(Sender: TObject);
    procedure SIMEDeleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
  public
    { Public declarations }
  end;

var
  frmcad_pro: Tfrmcad_pro;

implementation

uses uPrincipal, pcad_pro_edi,
  ppesquisa, prelatorio_geral, pcad_pro_img;

{$R *.dfm}

procedure Tfrmcad_pro.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_PRO';
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,PRO_CCLF,');
    SQL.Add('         PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO_STA ,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,PRO_PPRZ,PRO_PPRO,');
    SQL.Add('         PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO_DULT,PRO_REPR,PRO_STAV,PRO_DUSU,PRO_DALT,FOR_FANT');
    SQL.Add('FROM     CAD_PRO,CAD_PRO_IMG,CAD_FOR');
    SQL.Add('WHERE    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
    SQL.Add('AND      CAD_PRO.PRO_CDFO = CAD_FOR.ID');
    SQL.Add('AND      PRO_STA = ''0''');
    SQL.Add('AND      CAD_PRO.ID = 0');
    SQL.Add('ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR');
    Prepare;
  end;

  with cad_pro_est do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PRO_CPRO,PRO_DCOR,PRO_DUNI,PRO_METR,PRO_PESO,PRO_PSCN,PRO_STAV,PRO_STAV,PRO_CCST,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QEST,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_EST     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_REST,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QRES,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_RES     WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RRES,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_QSEP,');
    SQL.Add('         (SELECT COUNT(*)               FROM CAD_PRO_SEP     WHERE EST_CPRO = CAD_PRO.ID AND EST_FLAG = ''R'') AS PRO_RSEP,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QPRG,');
    SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prg']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RPRG,');
    SQL.Add('         (SELECT SUM(EST_CRED)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_QCOM,');
    SQL.Add('         (SELECT SUM(EST_DEBI)          FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QPRD,');
    SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_prc']+' WHERE EST_CPRO = CAD_PRO.ID AND EST_CDPD IS NULL) AS PRO_RCOM,');
    SQL.Add('         (SELECT SUM(EST_CRED-EST_DEBI) FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_QDEF,');
    SQL.Add('         (SELECT COUNT(*)               FROM '+SLPrincipal.Values['cad_pro_def']+' WHERE EST_CPRO = CAD_PRO.ID) AS PRO_RDEF ');
    SQL.Add('FROM     CAD_PRO');
    SQL.Add('WHERE    PRO_CART = :PRO_CART');
    SQL.Add('ORDER BY PRO_CART,PRO_DCOR');
    Prepare;
  end;

  with cad_pro_res do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_RES.ID,ROM_DERO,EST_DROM,EST_HROM,EST_DUSU,EST_DFAV,PRO_CPRO,PRO_DCOR,EST_CRED,EST_CDET,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_res']+' "CAD_PRO_RES" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE    CAD_PRO.ID     = EST_CPRO');
    SQL.Add('AND      PED_VEN_CAB.ID = EST_CDPD');
    SQL.Add('AND      PRO_CART       = :PRO_CART');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_RES.ID DESC');
    Prepare;
  end;

  with cad_pro_sep do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_SEP.ID,ROM_DERO,EST_DCAD,EST_DROM,EST_HROM,EST_DUSU,EST_DFAV,PRO_CPRO,PRO_DCOR,EST_CRED,EST_CDET,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_sep']+' "CAD_PRO_SEP" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE    CAD_PRO.ID     = EST_CPRO');
    SQL.Add('AND      PED_VEN_CAB.ID = EST_CDPD');
    SQL.Add('AND      PRO_CART       = :PRO_CART');
    SQL.Add('AND      EST_FLAG       = ''R''');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_SEP.ID DESC');
    Prepare;
  end;

  with cad_pro_def do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_DEF.ID,EST_DUSU,PRO_CPRO,PRO_DCOR,EST_CDET,EST_CRED,PRO_TIPO,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_def']+' "CAD_PRO_DEF"');
    SQL.Add('LEFT     OUTER JOIN CAD_PRO_ENC ON CAD_PRO_ENC.ID       = CAD_PRO_DEF.EST_CDRO');
    SQL.Add('WHERE    CAD_PRO.ID       =  EST_CPRO');
    SQL.Add('AND      CAD_PRO.PRO_CART = :PRO_CART');
    SQL.Add('AND      CAD_PRO_DEF.EST_CDPD IS NULL');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_DEF.ID DESC');
    Prepare;
  end;

  with cad_pro_ent do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_EST.ID,EST_DUSU,PRO_CPRO,PRO_DCOR,EST_CRED,EST_CDET,EST_CDRO,EST_DCAD,EST_HCAD,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
    SQL.Add('WHERE    CAD_PRO.ID =  EST_CPRO');
    SQL.Add('AND      PRO_CART   = :PRO_CART');
    SQL.Add('AND      EST_FLAG   = ''E''');
    SQL.Add('AND      EST_CRED > 0');
    SQL.Add('AND      EST_CDPD IS NULL');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_EST.ID DESC');
    Prepare;
  end;

  with cad_pro_sai do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_EST.ID,EST_DUSU,PRO_CPRO,PRO_DCOR,EST_DEBI,EST_CDET,EST_CDRO,EST_DOCU,EST_DCAD,EST_HCAD,EST_DROM,EST_HROM,EST_DFAV,EST_FLAG,EST_DSEP,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_est']+' "CAD_PRO_EST"');
    SQL.Add('WHERE    CAD_PRO.ID       = EST_CPRO');
    SQL.Add('AND      PRO_CART         = :PRO_CART');
    SQL.Add('AND      EST_FLAG = ''V''');
    SQL.Add('OR       CAD_PRO.ID = EST_CPRO');
    SQL.Add('AND      CAD_PRO.PRO_CART = :PRO_CART');
    SQL.Add('AND      EST_FLAG = ''S''');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_EST.ID DESC');
    Prepare;
  end;

  with cad_pro_prc do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_COM_ITE.ID,PED_COM_ITE.ROM_CDPD,PED_COM_ITE.ROM_DEXP,PED_COM_ITE.ROM_DBAI,PED_COM_ITE.ROM_DDES,PED_COM_ITE.ROM_RDES,FUN_APEL,ROM_DERO,');
    SQL.Add('         PED_COM_ITE.ROM_DROM,ROM_STFI,CAD_PRO.PRO_CPRO,PED_COM_ITE.ROM_DCOR,PED_COM_ITE.ROM_PCOR,PED_COM_ITE.ROM_DPRO,PED_COM_ITE.ROM_QTDE,PED_COM_ITE.ROM_QTPD,PED_COM_ITE.ROM_OBSE,PED_COM_ITE.ROM_CTNR,PED_COM_ITE.ROM_UNIT');
    SQL.Add('FROM     CAD_FUN,CAD_PRO,'+SLPrincipal.Values['ped_com_ite']+' "PED_COM_ITE" ,'+SLPrincipal.Values['ped_com_cab']+' "PED_COM_CAB"');
    SQL.Add('WHERE    PED_COM_CAB.ROM_STA  = ''0''');
    SQL.Add('AND      CAD_FUN.ID           = ROM_CCOM');
    SQL.Add('AND      PED_COM_CAB.ID       = ROM_CCAB');
    SQL.Add('AND      PED_COM_ITE.ROM_CPRO = CAD_PRO.ID');
    SQL.Add('AND      PRO_CART             = :PRO_CART');
    SQL.Add('ORDER BY ROM_DCOR,PED_COM_CAB.ID');
    Prepare;
  end;

  with cad_pro_prg do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_PRO_PRG.ID,EST_DUSU,PRO_CPRO,PRO_DCOR,EST_CRED,EST_DEBI,EST_CDET,EST_CDRO,EST_DCAD,EST_HCAD,ROM_DERO,EST_DFAV,EST_DMAP,EST_CTNR,EST_LOTE');
    SQL.Add('FROM     CAD_PRO,'+SLPrincipal.Values['cad_pro_prg']+' "CAD_PRO_PRG" ,'+SLPrincipal.Values['ped_prg_cab']+' "PED_PRG_CAB"');
    SQL.Add('WHERE    CAD_PRO.ID           = EST_CPRO');
    SQL.Add('AND      PED_PRG_CAB.ID       = EST_CDRO');
    SQL.Add('AND      PRO_CART             = :PRO_CART');
    SQL.Add('AND      EST_CDPD IS NULL');
    SQL.Add('AND      EST_FLAG = ''P''');
    SQL.Add('ORDER BY PRO_DCOR,CAD_PRO_PRG.ID');
    Prepare;
  end;
end;

procedure Tfrmcad_pro.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_pro := Nil;
end;

procedure Tfrmcad_pro.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 1;
    if frmprincipal.parametrosPAR_PGRD.AsString = '0' then
    frmpesquisa.cbCAMPO.Text := 'Referencia' else
    if frmprincipal.parametrosPAR_PGRD.AsString = '4' then
    frmpesquisa.cbCAMPO.Text := 'Descrição' else
    frmpesquisa.cbCAMPO.Text := 'Produto';
    frmpesquisa.cbDATA.Text  := 'Cadastro';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) and (cField <> 'Todos') then
         {nothing}
      else
      with cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,PRO_CCLF,');
        SQL.Add('       PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO_STA ,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,PRO_PPRZ,PRO_PPRO,');
        SQL.Add('       PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO_DULT,PRO_REPR,PRO_STAV,PRO_DUSU,PRO_DALT,FOR_FANT');
        SQL.Add('FROM   CAD_PRO,CAD_PRO_IMG,CAD_FOR');
        SQL.Add('WHERE  CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
        SQL.Add('AND    CAD_PRO.PRO_CDFO = CAD_FOR.ID');
        SQL.Add('AND    PRO_STA = ''0''');

        if frmprincipal.parametrosPAR_SPRO.AsString = '1' then
        SQL.Add('AND PRO_CDFO = '''+frmprincipal.parametrosID.AsString+'''');

        if cField <> 'Todos' then
        begin
          if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
          SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

          if edtxt.Text <> '' then
          begin
            if cField = 'CAD_PRO.PRO_STAV' then
            SQL.Add('AND '+cField+' = '''+copy(edtxt.Text,1,1)+'''') else
            SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
          end;
        end;
        SQL.Add('ORDER BY CAD_PRO.PRO_CART,CAD_PRO.PRO_DCOR');
        Open;
      end;
      dbgconsulta.SetFocus;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmcad_pro.SIMEAppendClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  PCampo[0] := 'USU_VISU';
  PCampo[1] := 'Fornecedores';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  FRMCAD_PRO_EDI     := TFRMCAD_PRO_EDI.Create(Self);
  FRMCAD_PRO_EDI.Tag := frmcad_pro.Tag;
  try
    FRMCAD_PRO_EDI.ShowModal;
  finally
    if FRMCAD_PRO_EDI.editado then
    begin
      with cadastro do
      begin
        SQL.Clear;
        SQL.Add('SELECT CAD_PRO.ID,CAD_PRO.PRO_CART,PRO_CPRO,PRO_DPRO,PRO_FOTO,PRO_CCLF,');
        SQL.Add('       PRO_CBAR,PRO_DCOR,PRO_PCOR,PRO_DGRP,PRO_DCAT,PRO_DCOL,PRO_STA ,PRO_OBSE,PRO_CUST,PRO_PCOM,PRO_PREC,PRO_PPRZ,PRO_PPRO,');
        SQL.Add('       PRO_CDFO,PRO_DUNI,PRO_GRAD,PRO_DCAD,PRO_DPRG,PRO_DENT,PRO_DULT,PRO_REPR,PRO_STAV,PRO_DUSU,PRO_DALT,FOR_FANT');
        SQL.Add('FROM     CAD_PRO,CAD_PRO_IMG,CAD_FOR');
        SQL.Add('WHERE    CAD_PRO.PRO_CART = CAD_PRO_IMG.PRO_CART');
        SQL.Add('AND      CAD_PRO.PRO_CDFO = CAD_FOR.ID');
        SQL.Add('AND      PRO_STA  = ''0''');
        SQL.Add('AND      CAD_PRO.PRO_CART = '''+FRMCAD_PRO_EDI.edcart.Text+'''');
        SQL.Add('ORDER BY PRO_CPRO');
        Open;
      end;
      ExecuteEvent;
    end;

    freeAndNil(FRMCAD_PRO_EDI);
  end;
end;

procedure Tfrmcad_pro.SIMEEditClick(Sender: TObject);
begin
  sbMSG.Panels[0].Text := 'Alteração';
  sbMSG.Update;

  if cadastro.Fields[0].IsNull then abort;

  FRMCAD_PRO_EDI := TFRMCAD_PRO_EDI.Create(Self);
  try
    FRMCAD_PRO_EDI.Tag := 1;
    FRMCAD_PRO_EDI.ShowModal;
  finally
    if FRMCAD_PRO_EDI.editado then
    ExecuteEvent;

    freeAndNil(FRMCAD_PRO_EDI);
  end;
end;

procedure Tfrmcad_pro.SIMEDeleteClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Produtos';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  if oYesNo(handle,'Confirma a exclusão do produto '+cadastroPRO_DPRO.AsString+' ?') = mrno then
     Abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   FIRST 1 PV.ROM_DERO,PV.ROM_DROM,CC.CLI_FANT,CV.USU_DUSU');
    SQL.Add('FROM     PED_VEN_CAB AS PV');
    SQL.Add('JOIN     CAD_CLI     AS CC   ON (CC.ID         = PV.ROM_CCLI)');
    SQL.Add('JOIN     CAD_USU     AS CV   ON (CV.USU_CUSU   = PV.ROM_CVEN)');
    SQL.Add('JOIN     PED_VEN_ITE AS PVFK ON (PVFK.ROM_CCAB = PV.ID)');
    SQL.Add('JOIN     CAD_PRO     AS CP   ON (CP.ID         = PVFK.ROM_CPRO)');
    SQL.Add('WHERE    CP.ID = '''+CadastroId.AsString+'''');
    SQL.Add('ORDER BY 1 DESC');
    Prepare;
    Open;

    if not Fields[0].IsNull then
       oException(DBGConsulta,'Falha ao tentar excluir !'+#13+
                              'Produto possui venda efetuada !');

    SQL.Clear;
    SQL.Add('DELETE FROM CAD_PRO');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
  end;

  IBTra.CommitRetaining;
  ExecuteEvent;
end;


procedure Tfrmcad_pro.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    try
      JPEGImage.LoadFromStream(BlobStream);
    except
      ;
    end;
    imag.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmcad_pro.dbgConsultaDblClick(Sender: TObject);
begin
  if cadastroPRO_STA.AsString <> '0' then
  raise exception.Create('Produto Enviado para a Lixeira !');
  inherited;
end;

procedure Tfrmcad_pro.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { SITUAÇÕES  }
    { Pré Cadastro }
    if AColumn = DBGConsultaSTAV then
    if ANode.Values[DBGConsultaSTAV.Index] = 'P' then
       AFont.Color := $00C8F0F0 else

    { Cancelados }
    if ANode.Values[DBGConsultaSTAV.Index] = 'C' then
       AFont.Color := $000024B3 else

    { Fora Linha / Prazo }
    if LeftStr(ANode.Values[DBGConsultaSTAV.Index],1) = 'F' then
       AFont.Color := $000024B3 else

    { Inativos }
    if ANode.Values[DBGConsultaSTAV.Index] = 'I' then
       AFont.Color := $00002EE6 else

    { Suspenso }
    if ANode.Values[DBGConsultaSTAV.Index] = 'S' then
       AFont.Color := $00002EE6;
  end;

  if ANode.Selected then
  begin
    { Pré Cadastro }
    if LeftStr(ANode.Values[DBGConsultaSTAV.Index],1) = 'P' then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clWindowText;
    end else

    { Cancelados }
    if LeftStr(ANode.Values[DBGConsultaSTAV.Index],1) = 'C' then
    begin
      AColor      := $000024B3;
      AFont.Color := clHighlightText;
    end else

    { Fora de Linha / Prazo }
    if LeftStr(ANode.Values[DBGConsultaSTAV.Index],1) = 'F' then
    begin
      AColor      := $000024B3;
      AFont.Color := clHighlightText;
    end else

    { Inativos }
    if LeftStr(ANode.Values[DBGConsultaSTAV.Index],1) = 'I' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else

    { Suspenso }
    if LeftStr(ANode.Values[DBGConsultaSTAV.Index],1) = 'S' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else
    begin
      AColor      := $00750000;//$00400000;
      AFont.Color := clHighlightText;
    end;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure Tfrmcad_pro.cad_pro_estCalcFields(DataSet: TDataSet);
begin
  cad_pro_estC_QEST.Value := cad_pro_estPRO_QEST.AsFloat;
  cad_pro_estC_QRES.Value := cad_pro_estPRO_QRES.AsFloat;
  cad_pro_estC_QSEP.Value := cad_pro_estPRO_QSEP.AsFloat;

  cad_pro_estC_QDEF.Value := cad_pro_estPRO_QDEF.AsFloat;
  cad_pro_estC_QEST.Value := cad_pro_estC_QEST.AsFloat + cad_pro_estC_QSEP.AsFloat;
  cad_pro_estC_QDIS.Value := cad_pro_estC_QEST.AsFloat - cad_pro_estC_QRES.AsFloat - cad_pro_estC_QSEP.AsFloat;
  if cad_pro_estC_QDIS.AsFloat < 0 then
  cad_pro_estC_QDIS.Value := 0;

  if cad_pro_estPRO_STAV.AsString = 'P' then
  cad_pro_estC_STAV.Value := 'PRÉ-CADASTRO' else
  if cad_pro_estPRO_STAV.AsString = 'I' then
  cad_pro_estC_STAV.Value := 'INATIVO';

  if cad_pro_estPRO_CCST.AsString = '0' then
  cad_pro_estC_DCST.Value := 'Nacional' else
  if cad_pro_estPRO_CCST.AsString = '1' then
  cad_pro_estC_DCST.Value := 'Estrangeira - Importação Direta' else
  if cad_pro_estPRO_CCST.AsString = '2' then
  cad_pro_estC_DCST.Value := 'Estrangeira - Adiquirida no Mercado Interno';
end;

procedure Tfrmcad_pro.siPRNClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.cbCAD_PRO_DEMP.Text := frmprincipal.parametrosPAR_FANT.AsString;
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   UNI_REFE FROM TAB_UNI');
      SQL.Add('ORDER BY UNI_REFE');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DUNI.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DUNI.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   PAR_FANT FROM PAR_SIS');
      SQL.Add('ORDER BY PAR_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DEMP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DEMP.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   CAT_DCAT FROM CAD_PRO_CAC');
      SQL.Add('WHERE    CAT_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY CAT_DCAT');
      SQL.Add('ORDER BY CAT_DCAT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DCAT.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DCAT.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   GRP_DGRP FROM CAD_PRO_GRP');
//      SQL.Add('WHERE    GRP_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('GROUP BY GRP_DGRP');
      SQL.Add('ORDER BY GRP_DGRP');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DGRP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DGRP.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   COL_DCOL FROM TAB_COL');
      SQL.Add('GROUP BY COL_DCOL');
      SQL.Add('ORDER BY COL_DCOL');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_PRO_DCOL.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_PRO_DCOL.Descriptions.Add(fields[0].AsString);
        next;
      end;
    end;

    frmrelatorio_geral.cbCAD_PRO_CART1.Text  := cadastroPRO_CART.AsString;
    frmrelatorio_geral.tsCAD_PRO.TabVisible  := true;
    frmrelatorio_geral.pcMAIN.ActivePage     := frmrelatorio_geral.tsCAD_PRO;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmcad_pro.cadastroCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cadastroPRO_STAV.AsString = 'A' then
  cadastroSTAV.Value := 'ATIVO' else
  if cadastroPRO_STAV.AsString = 'P' then
  cadastroSTAV.Value := 'PRÉ-CADASTRO' else
  if cadastroPRO_STAV.AsString = 'I' then
  cadastroSTAV.Value := 'INATIVO';
end;

procedure Tfrmcad_pro.cad_pro_saiCalcFields(DataSet: TDataSet);
begin
  cad_pro_saiEST_DATA.Value := cad_pro_saiEST_DCAD.AsDateTime;
  cad_pro_saiEST_HORA.Value := cad_pro_saiEST_HCAD.AsDateTime;

  if cad_pro_saiEST_DCAD.AsDateTime <= 0 then
  begin
    cad_pro_saiEST_DATA.Value := cad_pro_saiEST_DROM.AsDateTime;
    cad_pro_saiEST_HORA.Value := cad_pro_saiEST_HROM.AsDateTime;
  end;
end;

procedure Tfrmcad_pro.imagClick(Sender: TObject);
begin
  frmcad_pro_img := tfrmcad_pro_img.create(self);
  try
    frmcad_pro_img.carregaFoto(cadastroPRO_FOTO.BlobSize,cadastroPRO_FOTO,cadastro,frmprincipal.parametros);
    frmcad_pro_img.Caption := cadastroPRO_DPRO.AsString;
    frmcad_pro_img.showmodal;
  finally
    FreeAndNil(frmcad_pro_img);
    frmcad_pro_img.free;
  end;    
end;

procedure Tfrmcad_pro.cadastroAfterOpen(DataSet: TDataSet);
begin
  if not cad_pro_est.Active then
  cad_pro_est.Open;

  if not cad_pro_res.Active then
  cad_pro_res.Open;

  if not cad_pro_sep.Active then
  cad_pro_sep.Open;

  if not cad_pro_ent.Active then
  cad_pro_ent.Open;

  if not cad_pro_sai.Active then
  cad_pro_sai.Open;

  if not cad_pro_prc.Active then
  cad_pro_prc.Open;

  if not cad_pro_prg.Active then
  cad_pro_prg.Open;

  if not cad_pro_def.Active then
  cad_pro_def.Open;

  if not cad_pro_tab.Active then
  cad_pro_tab.Open;
end;

procedure Tfrmcad_pro.dtscadastroDataChange(Sender: TObject;
  Field: TField);
begin
  if Cadastro.State = dsBrowse then
  begin
    DBGConsulta.ApplyBestFit(DBGConsultaPRO_CART);
    DBGConsulta.ApplyBestFit(DBGConsultaPRO_CPRO);
    DBGConsulta.ApplyBestFit(DBGConsultaPRO_DCOR);
    DBGConsulta.ApplyBestFit(DBGConsultaPRO_DPRO);
    DBGConsulta.ApplyBestFit(DBGConsultaFOR_FANT);

    DBGConsulta.ApplyBestFit(DBGConsultaPRO_DGRP);
    DBGConsulta.ApplyBestFit(DBGConsultaPRO_DCAT);

    carregaFoto(cadastroPRO_FOTO.BlobSize,cadastroPRO_FOTO,cadastro,frmprincipal.parametros);
  end;
end;

procedure Tfrmcad_pro.dtscad_pro_resDataChange(Sender: TObject;
  Field: TField);
begin
  if Cadastro.State = dsBrowse then
  dbgresPRO_DCOR.Visible := (cad_pro_resPRO_DCOR.AsString <> '');
end;

procedure Tfrmcad_pro.dtscad_pro_entDataChange(Sender: TObject;
  Field: TField);
begin
  if Cadastro.State = dsBrowse then
  begin
    dbgentPRO_DCOR.Visible := (cad_pro_entPRO_DCOR.AsString <> '');
    dbgentEST_DSEP.Visible := (cad_pro_entEST_DSEP.AsString <> '');
    dbgentEST_DMAP.Visible := (cad_pro_entEST_DMAP.AsString <> '');
    dbgentEST_CTNR.Visible := (cad_pro_entEST_CTNR.AsString <> '');
    dbgentEST_LOTE.Visible := (cad_pro_entEST_LOTE.AsString <> '');
    dbgentEST_CDET.Visible := (frmprincipal.parametrosPAR_PECA.AsString = '1');
  end;
end;

procedure Tfrmcad_pro.dtscad_pro_saiDataChange(Sender: TObject;
  Field: TField);
begin
  if Cadastro.State = dsBrowse then
  begin
    dbgsaiPRO_DCOR.Visible := (cad_pro_saiPRO_DCOR.AsString <> '');
    dbgsaiEST_DSEP.Visible := (cad_pro_saiEST_DSEP.AsString <> '');
    dbgsaiEST_DMAP.Visible := (cad_pro_saiEST_DMAP.AsString <> '');
    dbgsaiEST_CTNR.Visible := (cad_pro_saiEST_CTNR.AsString <> '');
    dbgsaiEST_LOTE.Visible := (cad_pro_saiEST_LOTE.AsString <> '');
    dbgsaiEST_CDET.Visible := (frmprincipal.parametrosPAR_PECA.AsString = '1');
  end;  
end;

procedure Tfrmcad_pro.dtscad_pro_sepDataChange(Sender: TObject;
  Field: TField);
begin
  if Cadastro.State = dsBrowse then
  begin
    dbgsepPRO_DCOR.Visible := (cad_pro_saiPRO_DCOR.AsString <> '');
    dbgsepEST_DSEP.Visible := (cad_pro_saiEST_DSEP.AsString <> '');

  end;
end;

procedure Tfrmcad_pro.dtscad_pro_estDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State = dsBrowse then
  begin
    DBGEstoquePRO_DCOR.Visible := (not oEmpty(cad_pro_estPRO_DCOR.AsString));
    DBGEstoqueC_RDIS.Visible   := (cad_pro_estC_RDIS.AsInteger > 0);
    DBGEstoqueC_QDEF.Visible   := (cad_pro_estC_QDEF.AsFloat   > 0);
    DBGEstoqueC_RDEF.Visible   := (cad_pro_estC_RDEF.AsInteger > 0);
    DBGEstoqueC_REST.Visible   := (cad_pro_estC_REST.AsInteger > 0);
    DBGEstoqueC_RRES.Visible   := (cad_pro_estC_RRES.AsInteger > 0);
    DBGEstoqueC_RSEP.Visible   := (cad_pro_estC_RSEP.AsInteger > 0);
    DBGEstoqueC_RCOM.Visible   := (cad_pro_estC_RCOM.AsInteger > 0);
    DBGEstoqueC_RPRG.Visible   := (cad_pro_estC_RPRG.AsInteger > 0);
    DBGEstoqueC_RSLD.Visible   := (cad_pro_estC_RSLD.AsInteger > 0);

    DBGEstoque.ApplyBestFit(DBGEstoquePRO_CPRO);
    DBGEstoque.ApplyBestFit(DBGEstoquePRO_DCOR);
  end;  
end;

procedure Tfrmcad_pro.DBGEstoqueCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if not ASelected then
  begin
    Value  := ANode.Values[18];

    if Value = 'P' then
    begin
       AFont.Color := clBlack;
       AColor      := $00BEEFF8;
    end else
    if Value = 'I' then
    begin
       AFont.Color := clwhite;
       AColor      := RGB(StrToInt( '$ED') ,
                          StrToInt( '$1F') ,
                          StrToInt( '$43') );
    end;
  end;
end;

procedure Tfrmcad_pro.CadastroBeforeOpen(DataSet: TDataSet);
begin
  DBGConsultaPRO_DCOR.Visible := False;
  DBGConsultaPRO_DGRP.Visible := False;
  DBGConsultaPRO_DCAT.Visible := False;

  DBGConsultaPRO_DALT.Visible := False;
  DBGConsultaPRO_DENT.Visible := False;
  DBGConsultaPRO_DPRG.Visible := False;
  DBGConsultaPRO_DULT.Visible := False;
end;

procedure Tfrmcad_pro.CadastroAfterScroll(DataSet: TDataSet);
begin
  if CadastroPRO_DCOR.AsString <> EmptyStr then
  DBGConsultaPRO_DCOR.Visible := True;

  if CadastroPRO_DGRP.AsString <> EmptyStr then
  DBGConsultaPRO_DGRP.Visible := True;

  if CadastroPRO_DCAT.AsString <> EmptyStr then
  DBGConsultaPRO_DCAT.Visible := True;

  if CadastroPRO_DALT.AsDateTime > 0 then
  DBGConsultaPRO_DALT.Visible := True;

  if CadastroPRO_DENT.AsDateTime > 0 then
  DBGConsultaPRO_DENT.Visible := True;

  if CadastroPRO_DPRG.AsDateTime > 0 then
  DBGConsultaPRO_DPRG.Visible := True;

  if CadastroPRO_DULT.AsDateTime > 0 then
  DBGConsultaPRO_DULT.Visible := True;
end;

end.

