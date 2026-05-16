unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, RXCtrls, ToolWin, StdCtrls, Buttons,
  DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable, ActnList, ActnMan,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, DateUtils, Printers, StrUtils,
  Grids, DBGrids, IBStoredProc, ImgList, Shellapi, DBTables, jpeg, math,
  XPStyleActnCtrls, IdBaseComponent, IdComponent, qrPrev,
  IdIPWatch, Provider, cxGraphics, cxControls, dxStatusBar, ACBrBarCode,
  IBSQL, dxDBGrid, dxTL, dxDBCtrl, TypInfo, dxsbar, dxDockPanel,
  dxDockControl, dxBar, dxBarExtItems, rxAnimate, rxGIFCtrl;

type
  TRunProcessThread = class(TThread)
  protected
    procedure Execute; override;
    procedure SyncEvent;

  public
    ATHR_TB_PK: String;
    ATHR_EP_ID,
    ATHR_PK_ID,

    FTHR_EP_ID,
    FTHR_PK_ID,
    FTHR_CP_ID: String;

    constructor Create(const ATB_PK: String;
                             AEP_ID,
                             APK_ID: Variant;

                             FEP_ID,
                             FPK_ID,
                             FCP_ID: String);

    destructor  Destroy; override;
  end;

type
  TFrmPrincipal = class(TForm)
    TPrincipal: TTimer;
    EPrincipal: TOpenDialog;
    IPrincipal: TImage;
    ILPrincipal: TImageList;

    ACBrBarCode: TACBrBarCode;
    ACBrBarCodeV: TACBrBarCode;

    AMPrincipal: TActionManager;
    ACTMP_ABOUT: TAction;
    ACTMP_SAIDA: TAction;

    ACTADM_DENIED: TAction;
    ACTADM_PARAMETROS: TAction;
    ACTADM_BACKUP: TAction;
    ACTADM_COMISSAO: TAction;

    ACTUSER_LOGIN: TAction;
    ACTUSER_PASSWORD: TAction;

    ACTCAI_ABR_PAD: TAction;
    ACTCAI_ABR_FST: TAction;
    ACTCAI_FEC: TAction;
    ACTCAI_RAB: TAction;
    ACTCAI_LSS: TAction;
    ACTCAI_TSS: TAction;
    ACTCAI_FLC: TAction;

    ACTPRN_ADM: TAction;
    ACTPRN_EXE: TAction;

    ACTRelatorios: TAction;
    ACTREL_GER_PDV_CRD: TAction;

    ACTCAD_PRO_ADM: TAction;
    ACTCAD_PRO_GRD_COR: TAction;
    ACTCAD_PRO_EST_ADM: TAction;
    ACTCAD_PRO_EST_LCT: TAction;
    ACTCAD_PRO_EST_EXP_COL: TAction;
    ACTCAD_PRO_EST_EXP_MAN: TAction;
    ACTCAD_PRO_EST_ETQ: TAction;

    ACTPED_PDV_ADM: TAction;
    ACTPED_PDV_CLT: TAction;
    ACTPED_RDV_ADM: TAction;

    ACTPED_PDC_ADM: TAction;

    ACTFIS_NFE_ADM: TAction;
    PNLUtil: TPanel;
    TBPrincipal: TToolBar;
    TBN: TToolButton;
    RSBMU_FIS_NFE_PSQ: TRxSpeedButton;
    RSBMU_FIS_NFE_SAI: TRxSpeedButton;
    TBN1: TToolButton;
    RSBMU_FIS_CFE_EDT: TRxSpeedButton;
    TBN2: TToolButton;
    TBN3: TToolButton;
    RSBMU_Etiquetas: TRxSpeedButton;
    RSBMU_Impressoras: TRxSpeedButton;
    TBN4: TToolButton;
    TBN5: TToolButton;
    RSBMU_USER_LOGIN: TRxSpeedButton;
    RSBMU_USER_PASSWORD: TRxSpeedButton;
    TBN7: TToolButton;
    RSBADM_PARAMETROS: TRxSpeedButton;
    RSBADM_BACKUP: TRxSpeedButton;
    TBN8: TToolButton;
    TBN9: TToolButton;
    RSBMU_ABOUT: TRxSpeedButton;
    TBN10: TToolButton;
    RSBMU_SAIDA: TRxSpeedButton;
    PNLPrincipal: TPanel;
    Bevel8: TBevel;
    PNLADM: TPanel;
    RSBCliente: TRxSpeedButton;
    RSBProdutos: TRxSpeedButton;
    RSBRomaneios: TRxSpeedButton;
    RSBPedidos: TRxSpeedButton;
    RSBCompras: TRxSpeedButton;
    RSBProgramados: TRxSpeedButton;
    RSBRepresentante: TRxSpeedButton;
    RSBPEDEstoque: TRxSpeedButton;
    RSBFornecedor: TRxSpeedButton;
    RSBTransportadora: TRxSpeedButton;
    RSBNFControle: TRxSpeedButton;
    RSBNFTerceiros: TRxSpeedButton;
    Panel7: TPanel;
    LALegenda: TLabel;
    ACTMU_FIS_NFE_PSQ: TAction;
    ACTMU_FIS_NFE_SAI: TAction;
    ACTMU_FIS_CFE_EDT: TAction;
    ACTMU_Etiquetas: TAction;
    ACTMU_Impressoras: TAction;
    ACTMU_USER_LOGIN: TAction;
    ACTMU_USER_PASSWORD: TAction;
    ACTMU_ABOUT: TAction;
    ACTMU_SAIDA: TAction;
    MMPrincipal: TMainMenu;
    MPCadastros: TMenuItem;
    MICAD_CLI_ADM: TMenuItem;
    MICAD_REP_ADM: TMenuItem;
    NPCadastros: TMenuItem;
    MICAD_FOR_ADM: TMenuItem;
    MICAD_TRA_ADM: TMenuItem;
    NPCadastros1: TMenuItem;
    MICAD_CTNR_ADM: TMenuItem;
    MPEstoque: TMenuItem;
    MICAD_PRO_EST_ETQ: TMenuItem;
    SNEstoque1: TMenuItem;
    MICAD_PRO_EST_LCT: TMenuItem;
    MICAD_PRO_EST_ADM: TMenuItem;
    SNEstoque2: TMenuItem;
    MICAD_PRO_EST_EXP_COL: TMenuItem;
    MICAD_PRO_EST_EXP_MAN: TMenuItem;
    SNEstoque3: TMenuItem;
    MICAD_PRO_EST_DEF: TMenuItem;
    MPCompras: TMenuItem;
    MIPED_PDC_ADM: TMenuItem;
    MIPED_PDC_CUSTO: TMenuItem;
    MPVendas: TMenuItem;
    MIPED_PDP_ADM: TMenuItem;
    NPVendas: TMenuItem;
    MIPED_PDV_ADM: TMenuItem;
    MIPED_RDV_ADM: TMenuItem;
    MPFiscal: TMenuItem;
    MIFIS_NFE_EDI_TER: TMenuItem;
    MIFIS_NFE_ADM: TMenuItem;
    MPFinanceiro: TMenuItem;
    MIFIN_REC_BAN: TMenuItem;
    MIFIN_REC_CRT: TMenuItem;
    SNRecebimentos: TMenuItem;
    MIFIN_REC_DUP: TMenuItem;
    MIFIN_REC_BOL: TMenuItem;
    MIFIN_REC_CHQ: TMenuItem;
    NPFinanceiro1: TMenuItem;
    MIFIN_PAG_CMV: TMenuItem;
    NPFinanceiro2: TMenuItem;
    MIRecibos: TMenuItem;
    MIVales: TMenuItem;
    MPCaixa: TMenuItem;
    MICAI_ABR_PAD: TMenuItem;
    MICAI_RAB: TMenuItem;
    NPCaixa: TMenuItem;
    MICAI_FEC: TMenuItem;
    NPCaixa2: TMenuItem;
    MICAI_LSS: TMenuItem;
    MCAI_TSS: TMenuItem;
    NPCaixa3: TMenuItem;
    MICAI_FLC: TMenuItem;
    MPRelatorios: TMenuItem;
    MPTabelas: TMenuItem;
    MINFCFOP: TMenuItem;
    MIPrazos: TMenuItem;
    MPUtilitarios: TMenuItem;
    MIUsuarios: TMenuItem;
    MILogin: TMenuItem;
    MIPassword: TMenuItem;
    NPUtilitarios3: TMenuItem;
    MIHOST: TMenuItem;
    NPUtilitarios4: TMenuItem;
    MIPrinters: TMenuItem;
    MISistema: TMenuItem;
    NPUtilitarios5: TMenuItem;
    MIBackup: TMenuItem;
    MPSheild: TMenuItem;
    MIComissao: TMenuItem;
    estedemesa1: TMenuItem;
    MPSistema: TMenuItem;
    MIMU_ABOUT: TMenuItem;
    ACTCAD_CLI_ADM: TAction;
    ACTCAD_FOR_ADM: TAction;
    ACTCAD_REP_ADM: TAction;
    ACTCAD_TRA_ADM: TAction;
    ACTCAD_PRO_GRD_EST: TAction;
    ACTCAD_PRO_COL: TAction;
    ACTCAD_PRO_SEG: TAction;
    ACTCAD_PRO_GRP: TAction;
    ACTCAD_PRO_SGP: TAction;
    ACTCAD_PRO_CAT: TAction;
    ACTCAD_PRO_SCT: TAction;
    ACTCAD_PRO_EST_DEF: TAction;
    ACTPED_PDP_ADM: TAction;
    ACTTAB_PRZ: TAction;
    ACTTAB_CFOP: TAction;
    ACTFIS_NFE_EDI_TER: TAction;
    RSBTAB_CFOP: TRxSpeedButton;
    ACTCAD_CTNR_ADM: TAction;
    MPProdutos: TMenuItem;
    MICAD_PRO_ADM: TMenuItem;
    MICAD_PRO_GRD_COR: TMenuItem;
    MICAD_PRO_GRD_EST: TMenuItem;
    N3: TMenuItem;
    MICAD_PRO_COL: TMenuItem;
    MICAD_PRO_SEG: TMenuItem;
    N4: TMenuItem;
    MICAD_PRO_GRP: TMenuItem;
    MICAD_PRO_SGP: TMenuItem;
    N6: TMenuItem;
    MICAD_PRO_CAT: TMenuItem;
    MICAD_PRO_SCT: TMenuItem;
    ACTPED_PDC_CUSTO: TAction;
    ACTFIN_REC_BAN: TAction;
    ACTFIN_REC_CRT: TAction;
    ACTFIN_REC_DUP: TAction;
    ACTFIN_PAG_CMV: TAction;
    N7: TMenuItem;
    MIPED_PDV_CLT: TMenuItem;
    ACTFIN_PAG_ADM: TAction;
    N8: TMenuItem;
    RSBCAD_PRO_GRD_COR: TRxSpeedButton;
    RSBCAD_PRO_EST_LCT: TRxSpeedButton;
    RSBFIS_NFE_LCT: TRxSpeedButton;
    ACTFIS_NFE_LCT: TAction;
    MIREL_PRODUTO: TMenuItem;
    MIREL_N1: TMenuItem;
    MIREL_CLIENTE: TMenuItem;
    MIREL_REPRESENTANTE: TMenuItem;
    MIREL_VENDEDOR: TMenuItem;
    MIREL_N3: TMenuItem;
    MIREL_FORNECEDOR: TMenuItem;
    MIREL_FINANCEIRO: TMenuItem;
    MIREL_GER: TMenuItem;
    MIREL_FISCAL: TMenuItem;
    MIREL_N2: TMenuItem;
    MIREL_N5: TMenuItem;
    MIREL_N7: TMenuItem;
    MIREL_N6: TMenuItem;
    MIREL_N4: TMenuItem;
    MIREL_GER_N1: TMenuItem;
    MIREL_GER_N2: TMenuItem;
    MIREL_GER_PDV_CRD: TMenuItem;
    ACTREL_GER_EST_PRO: TAction;
    MIREL_GER_EST_PRO: TMenuItem;
    ACTREL_GER_FIS_CFOP: TAction;
    ACTREL_GER_FIS_PESO: TAction;
    MIREL_GER_FIS_CFOP: TMenuItem;
    ACTREL_GER_EST_INV: TAction;
    MIREL_GER_EST_INV: TMenuItem;
    MIREL_GER_PDV_TPO: TMenuItem;
    ACTREL_GER_PDV_TPO: TAction;
    MIREL_GER_FIS_PESO: TMenuItem;
    MIREL_PRO_PDC_PLN: TMenuItem;
    ACTREL_PRO_PDC_PLN: TAction;
    ACTREL_PRO_EST: TAction;
    ACTREL_PRO_EST_ETQ: TAction;
    ACTREL_PRO_CAD_FCT: TAction;
    ACTREL_PRO_PDC_LST: TAction;
    MIREL_PRO_EST: TMenuItem;
    MIREL_PRO_EST_ETQ: TMenuItem;
    MIREL_PRO_CAD_FCT: TMenuItem;
    N1: TMenuItem;
    MIREL_PRO_PDC_LST: TMenuItem;
    N5: TMenuItem;
    ACTCAD_PRO_GRD_TAM: TAction;
    MICAD_PRO_GRD_TAM: TMenuItem;
    PNLSBRodape: TPanel;
    PNLSyncEvent: TPanel;
    PNLSyncAnimate: TPanel;
    GFASyncEvent: TRxGIFAnimator;
    PNLSyncRecords: TPanel;
    SBSyncRecords: TdxStatusBar;
    PNLMainEvent: TPanel;
    SBRodape: TdxStatusBar;
    PNLFIN: TPanel;
    RSBFIN_CAD_CLI_ADM: TRxSpeedButton;
    RSBFIN_REC_BAN: TRxSpeedButton;
    RSBFIN_PED_RDV_ADM: TRxSpeedButton;
    RSBFIN_PED_PDV_ADM: TRxSpeedButton;
    RSBFIN_PAG_CMV: TRxSpeedButton;
    RSBFIN_REC_CRT: TRxSpeedButton;
    RSBFIN_PAG_ADM: TRxSpeedButton;
    RSBFIN_REC_BOL: TRxSpeedButton;
    RSBFIN_REC_DUP: TRxSpeedButton;
    ACTFIN_REC_BOL: TAction;
    RSBFIN_CAD_REP_ADM: TRxSpeedButton;
    ACTFIN_FIS_NFE_LCT: TRxSpeedButton;
    ACTFIN_FIS_NFE_ADM: TRxSpeedButton;
    ACTFIN_TAB_CFOP: TRxSpeedButton;
    ACTFIN_FIS_NFE_EDI_TER: TRxSpeedButton;
    PNLPCP: TPanel;
    RSBPCP_CAD_PRO_EST_EXP_COL: TRxSpeedButton;
    RSBPCP_CAD_PRO_EST_EXP_MAN: TRxSpeedButton;
    RSBPCP_CAD_PRO_EST_ETQ: TRxSpeedButton;
    RSBPCP_CAD_PRO_ADM: TRxSpeedButton;
    RSBPCP_CAD_PRO_EST_LCT: TRxSpeedButton;
    RSBPCP_CAD_PRO_EST_ADM: TRxSpeedButton;
    RSBPCP_PED_PDV_ADM: TRxSpeedButton;
    RSBPCP_PED_RDV_ADM: TRxSpeedButton;
    N2: TMenuItem;
    ACTREL_FOR_PRO_CAD: TAction;
    MIREL_FOR_PRO_CAD: TMenuItem;
    ACTREL_REP_PDV_RKG: TAction;
    MIREL_REP_PDV_RKG: TMenuItem;
    ACTREL_FOR_PDC_REC: TAction;
    MIREL_FOR_PDC_REC: TMenuItem;
    ACTREL_PRO_VEN_DIA: TAction;
    ACTREL_PRO_VEN_MES: TAction;
    N9: TMenuItem;
    MIREL_PRO_VEN_DIA: TMenuItem;
    MIREL_PRO_VEN_MES: TMenuItem;
    MIFIN_PAG: TMenuItem;
    ACTFIN_PAG: TAction;
    N10: TMenuItem;
    MIREL_PRO_TAB_PRC: TMenuItem;
    ACTREL_PRO_TAB_PRC: TAction;
    RSBNFControlePCP: TRxSpeedButton;

    procedure _DoneEvent(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TPrincipalTimer(Sender: TObject);

    { Menu Principal }
    procedure ACTMP_ABOUTExecute(Sender: TObject);
    procedure ACTMP_SAIDAExecute(Sender: TObject);

    { Admin }
    procedure ACTADM_DENIEDExecute(Sender: TObject);
    procedure ACTADM_PARAMETROSExecute(Sender: TObject);
    procedure ACTADM_BACKUPExecute(Sender: TObject);
    procedure ACTADM_COMISSAOExecute(Sender: TObject);

    { Usuários }
    procedure ACTUSER_LOGINExecute(Sender: TObject);
    procedure ACTUSER_PASSWORDExecute(Sender: TObject);
    procedure ACTUSER_LOGINUpdate(Sender: TObject);
    
    procedure ACTCAI_ABR_PADExecute(Sender: TObject);
    procedure ACTCAI_ABR_FSTExecute(Sender: TObject);
    procedure ACTCAI_FECExecute(Sender: TObject);
    procedure ACTCAI_RABExecute(Sender: TObject);
    procedure ACTCAI_LSSExecute(Sender: TObject);
    procedure ACTCAI_TSSExecute(Sender: TObject);
    procedure ACTCAI_FLCExecute(Sender: TObject);
    procedure ACTPRN_ADMExecute(Sender: TObject);
    procedure ACTPRN_EXEExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    
    procedure ACTMU_FIS_NFE_PSQExecute(Sender: TObject);
    procedure ACTMU_FIS_NFE_SAIExecute(Sender: TObject);
    procedure ACTMU_FIS_CFE_EDTExecute(Sender: TObject);
    procedure ACTMU_EtiquetasExecute(Sender: TObject);
    procedure ACTMU_USER_LOGINExecute(Sender: TObject);
    procedure ACTMU_USER_PASSWORDExecute(Sender: TObject);
    procedure ACTMU_ABOUTExecute(Sender: TObject);
    procedure ACTMU_SAIDAExecute(Sender: TObject);
    procedure ACTCAD_CLI_ADMExecute(Sender: TObject);
    procedure ACTCAD_FOR_ADMExecute(Sender: TObject);
    procedure ACTCAD_REP_ADMExecute(Sender: TObject);
    procedure ACTCAD_TRA_ADMExecute(Sender: TObject);
    procedure ACTCAD_PRO_ADMExecute(Sender: TObject);
    procedure ACTCAD_PRO_GRD_CORExecute(Sender: TObject);
    procedure ACTCAD_PRO_GRD_ESTExecute(Sender: TObject);
    procedure ACTCAD_PRO_COLExecute(Sender: TObject);
    procedure ACTCAD_PRO_SEGExecute(Sender: TObject);
    procedure ACTCAD_PRO_GRPExecute(Sender: TObject);
    procedure ACTCAD_PRO_SGPExecute(Sender: TObject);
    procedure ACTCAD_PRO_CATExecute(Sender: TObject);
    procedure ACTCAD_PRO_SCTExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_ADMExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_LCTExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_ETQExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_DEFExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_EXP_COLExecute(Sender: TObject);
    procedure ACTCAD_PRO_EST_EXP_MANExecute(Sender: TObject);
    procedure ACTPED_PDC_ADMExecute(Sender: TObject);
    procedure ACTPED_PDP_ADMExecute(Sender: TObject);
    procedure ACTPED_PDV_ADMExecute(Sender: TObject);
    procedure ACTPED_RDV_ADMExecute(Sender: TObject);
    procedure ACTPED_PDV_CLTExecute(Sender: TObject);
    procedure ACTTAB_PRZExecute(Sender: TObject);
    procedure ACTTAB_CFOPExecute(Sender: TObject);
    procedure ACTFIS_NFE_ADMExecute(Sender: TObject);
    procedure ACTFIS_NFE_EDI_TERExecute(Sender: TObject);
    procedure ACTCAD_CTNR_ADMExecute(Sender: TObject);
    procedure ACTPED_PDC_CUSTOExecute(Sender: TObject);
    procedure ACTFIN_REC_BANExecute(Sender: TObject);
    procedure ACTFIN_REC_CRTExecute(Sender: TObject);
    procedure ACTFIN_REC_DUPExecute(Sender: TObject);
    procedure ACTFIN_PAG_CMVExecute(Sender: TObject);
    procedure ACTFIS_NFE_LCTExecute(Sender: TObject);
    procedure ACTREL_GER_PDV_TPOExecute(Sender: TObject);
    procedure ACTCAD_PRO_GRD_TAMExecute(Sender: TObject);
    procedure ACTFIN_PAGExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    AREC_SHE_DEF: TREC_SHE_DEF;
    
    procedure _USER_LOGIN(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;
    function  _SetMouseTracking: Boolean;

    procedure _Aviso_Reserva;
  public
    { Public declarations }
  end;

{ MAIN PROCEDURES }
procedure uCAD_PRO_EST_LAN_UPD(ATHR_TB_PK: String;
                               ATHR_EP_ID,
                               ATHR_PK_ID: Variant;

                               FTHR_EP_ID,
                               FTHR_PK_ID,
                               FTHR_CP_ID: String); STDCALL;

procedure uSP_CAD_PRO_EST_LAN(ASPEdicao: TIBStoredProc; AEP_ID: Variant; ACP_ID: Variant);

{ OLD PROCEDURE }
procedure uConstrucao(ACaption: String = ''); STDCall;
procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;

procedure uPSQ_CAD_PAD(var AREC_SHE_DEF: TREC_SHE_DEF); STDCALL;
procedure uPSQ_CAD_PRO(var AREC_SHE_PSQ: TREC_SHE_PSQ); STDCALL;

procedure uPSQCAD(var ARECPedido : TRECPedidos); STDCall; { Cadastros: Clientes, Fornecedores, Transportadoras, Compradores, Vendedores, Representantes e Agenda; }
procedure uPSQEND(var ARECEndereco: TRECPedidos;AForceShowModal: Boolean = False); STDCall;
procedure uPSQCMUN(var RECEndereco: TRECPedidos); STDCall;
procedure uPSQPED(var ARECPedido : TRECPedidos); STDCall;
procedure uPSQPRO(var ARECProduto: TRECProdutos); STDCall;

procedure uPSQPD (var ARECEdicao: TRECEdicao); STDCall;
procedure uPSQNF (var ARECPSQNF : TRECEdicao;ASQLConsulta: TIBSQL;AWinControl: TWinControl); STDCall;

procedure uPSQLogradouros(var ARECEndereco: TRECEnderecos); STDCall;

procedure uPSQSCORE(ATForm: TForm; AIDPK: Variant; ADEPK: String); STDCall;
procedure uLiberaFinanceiro; STDCall;
procedure uBXPedidos(AaIDPedido: array of Integer; ABSheildEdicao: Boolean = False); STDCall;
procedure uBX_DUP(AEmpresa,ANotaFiscal,AIDRomaneio: Variant); STDCall;
procedure uBxCaixa(AIDPedido: Integer); STDCAll;
procedure uFKPesquisa(ATabela: String;AValue: Variant); STDCall;

{ Funções do Sistema }
function uPSQ_NFE_MAX(AEP_GP_NO: String): Variant; STDCALL;
function uPSQ_NFE_REG(AEP_GP_NO: String ; ACDNF: Variant): Boolean; STDCall;



function uRETDTVencimento(AData: TDate): TDate; STDCall;
function uLoadZoom(Imagem: TPicture; aProduto: Array of String): LongInt; STDCall;
function uPSQCadastroFiscal(ATexto: String): TRECCadastros; STDCall;
function uPesquisa_Produto(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '=';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;

{ Funções de Controle Financeiro }
function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String; STDCall;
function uLimiteVenda(ASTCobranca,ASTFatura,AIDCliente: String;ATotal: Double): string; STDCall;

var
  FrmPrincipal: TFrmPrincipal;

  ATrackMouseEvent: TTrackMouseEvent;
  ATHR_ITEM: LongInt;
  ATHR_SYNC: String;


  //***** RICARDO - TENPORÁRIO *****/
  DATA_MEDIA    : TDate;
  ITENS_PEDIDO,
  ITENS_BANCARIO,
  ITENS_CARTEIRA: Integer;
  VALOR_PEDIDO,
  VALOR_SALDO,
  VALOR_BANCARIO,
  VALOR_CARTEIRA: Double;

  APSQ_CAD_PAD,
  APSQ_CAD_ADC,
  APSQ_CAD_PRD,

  APSQ_PDV_PAD,
  APSQ_PDV_ADC,
  APSQ_PDV_PRD,

  APSQ_PED_PDC,
  APSQ_PED_PDP,
  APSQ_PED_PDV,
  APSQ_PED_RDV,

  APSQ_FIS_NFE,
  APSQ_FIN_REC: String;

  APSQ_CAD,
  APSQ_CAD_FOR,
  APSQ_CAD_REP,
  APSQ_CAD_TRA: String;


implementation

uses bPrincipal,
  pSobre, pLogin, psenha, pImpressoras, pProduto, pPSQEND,
  pPSQCAD, pPesquisaCodigoMunicipal, pPesquisaLogradouros, 
  pcad_cli_inf, pPSQ_CAD_PAD, pProduto_Imagem, pProduto_Pesquisa,
  pConsultaCNPJ, pcai_abr, pcai_fec, pcai_sar, pcai_mov, pProduto_Cor, pProduto_Grupo,
  pProduto_SubGrupo, pProduto_Categoria, pProduto_SubCategoria, pctr_ped,
  pctr_rom, pNFeConsulta, pNFeSaida, pNFeSaidaConsulta, pEtiqueta_Geral,
  pEstoque, pent_pro, peti_pro, pEstoqueDefeitos, pEXP_SEP_COL,
  pEXP_SEP_MAN, pctr_prc, pctr_prg, ptab_nat, ptab_pag, pctr_nfe, pven_nfd,
  pcad_con, pProduto_Custo_Importado, pfin_rec_con, pfin_dup, ppag_com,
  pProduto_Segmento, pCAD_PRO_PSQ, pven_nfe, pcad_cli, pcad_rep, pcad_for,
  pcad_tra, pAviso_Reserva, pRelatorios, pConstrucao, pRelatorios_OLD,
  pven_prc, pven_ped, pven_prg, pCAD_PRO_EDI, pPesquisa, pPesquisa_OLD,
  pSHE_DEF_PED;

{$R *.dfm}

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Nil;
  Result   := 0;
  try
    Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
    case msg of
         WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                            SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL or WS_CAPTION));
    end;
    Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
  except
    ;
  end;
end;

function uPSQ_NFE_MAX(AEP_GP_NO: String): Variant; STDCALL;
begin
  result := '0';

  if AEP_GP_NO = EmptyStr then
  oException(Nil,'Grupo não Informado !');

  with FBird.SQLFBConsulta do
  try
    oOTransact(Fbird.TFBConsulta);

    Close;
    SQL.Clear;
    SQL.Add('SELECT RCDNF FROM SP_PSQ_NFE_MAX (');
    SQL.Add('''' +  AEP_GP_NO + ''')');
    ExecQuery;

    result := INTTOSTR(Current.Vars[0].AsInt64);
  finally
    oCTransact(FBird.TFBConsulta);
  end;
end;

function uPSQ_NFE_REG(AEP_GP_NO: String ; ACDNF: Variant): Boolean; STDCall;
begin
//  result := False;

  if AEP_GP_NO = EmptyStr then
  oException(Nil,'Grupo não Informado !');

  if ACDNF = 0 then
  oException(Nil,'Número da nota fiscal não informado !');

  with FBird.SQLFBConsulta do
  try
    oOTransact(Fbird.TFBConsulta);

    Close;
    SQL.Clear;
    SQL.Add('SELECT RCDNF FROM SP_PSQ_NFE_REG (');
    SQL.Add('''' +  AEP_GP_NO + ''',');
    SQL.Add('''' +  ACDNF     + ''')');
    ExecQuery;

    result := (Current.Vars[0].AsInteger > 0);
  finally
    oCTransact(FBird.TFBConsulta);
  end;
end;

procedure uCAD_PRO_EST_LAN_UPD (ATHR_TB_PK: String;
                                ATHR_EP_ID,
                                ATHR_PK_ID: Variant;

                                FTHR_EP_ID,
                                FTHR_PK_ID,
                                FTHR_CP_ID: String); STDCALL;
var
  Thread: TRunProcessThread;
begin
  if (ATHR_TB_PK <> EmptyStr) and (ATHR_EP_ID <> EmptyStr)  and (ATHR_PK_ID <> EmptyStr) then

  with FrmPrincipal do
  begin
    Thread := TRunProcessThread.Create(ATHR_TB_PK,
                                       ATHR_EP_ID,
                                       ATHR_PK_ID,

                                       FTHR_EP_ID,
                                       FTHR_PK_ID,
                                       FTHR_CP_ID);

    Thread.OnTerminate := _DoneEvent;
    Thread.Priority    := tpTimeCritical;
    Thread.Resume;
  end;
end;

constructor TRunProcessThread.Create(const ATB_PK: String;
                                           AEP_ID,
                                           APK_ID: Variant;

                                           FEP_ID,
                                           FPK_ID,
                                           FCP_ID: String);

begin
  inherited Create(True);

  FreeOnTerminate := True;

  ATHR_TB_PK := ATB_PK;
  ATHR_EP_ID := AEP_ID;
  ATHR_PK_ID := APK_ID;

  FTHR_EP_ID := FEP_ID;
  FTHR_PK_ID := FPK_ID;
  FTHR_CP_ID := FCP_ID;

  oCTransact(FBird.TFBEdicao);
  oOTransact(FBird.TFBEdicao);
end;

destructor TRunProcessThread.Destroy;
begin
  ATHR_ITEM := 0;
  ATHR_SYNC := EmptyStr;
  
  oCTransact(FBird.TFBEdicao);
  inherited;
end;

procedure TRunProcessThread.SyncEvent;
begin
  if ATHR_ITEM > 0 then
  with Frmprincipal do
  begin
    if not GFASyncEvent.Animate then
    begin
      GFASyncEvent.Animate := True;
      PNLSyncEvent.Width := 300;
      PNLSyncEvent.Update;
    end;
    
    SBSyncRecords.Panels[0].Text := ATHR_SYNC;
    SBSyncRecords.Update;
  end
end;

procedure TRunProcessThread.Execute;
begin
  inherited;
  with FrmPrincipal do
  try
    ATHR_ITEM := 0;
    ATHR_SYNC := EmptyStr;

    with FBird.SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CP.CP_ID,CP.SKU');

      SQL.Add('FROM ' + ATHR_TB_PK + ' AS PK');
      SQL.Add('JOIN CAD_PRO AS CP ON (CP.CP_ID = PK.' + FTHR_CP_ID + ')');

      SQL.Add('WHERE ' + 'PK.' + FTHR_EP_ID + ' = ''' + ATHR_EP_ID + '''');
      SQL.Add('AND '   + 'PK.' + FTHR_PK_ID + ' = ''' + ATHR_PK_ID + '''');

      SQL.Add('GROUP BY 1,2');
      SQL.Add('ORDER BY 2');

      Prepare;
      ExecQuery;
    end;

    while not FBird.SQLFBEdicao.Eof do
    begin
      INC(ATHR_ITEM);
      ATHR_SYNC := 'Atualizando Estoque ... ' +
                   'Produto: ' + FBird.SQLFBEdicao.Current.ByName('SKU').AsString;
      Synchronize(SyncEvent);

      uSP_CAD_PRO_EST_LAN(FBird.SPFBEdicao,ATHR_EP_ID,FBird.SQLFBEdicao.Current.ByName('CP_ID').AsInteger);
      FBird.SQLFBEdicao.Next;
    end;

  except
    oCTransact(FBird.TFBEdicao,ltRollback);
  end;
end;

procedure TFrmPrincipal._DoneEvent(Sender: TObject);
begin
  if ATHR_ITEM > 0 then
  with Frmprincipal do
  begin
    { ENCERRA SINCRONIA }
    GFASyncEvent.Animate := False;
    PNLSyncEvent.Width   := 0;
    SBSyncRecords.Panels[0].Text := EmptyStr;
    
    Application.ProcessMessages;
  end;
end;

procedure uSP_CAD_PRO_EST_LAN(ASPEdicao: TIBStoredProc; AEP_ID: Variant; ACP_ID: Variant);
begin
  ASPEdicao.StoredProcName := 'SP_CAD_PRO_EST_LAN';
  ASPEdicao.Prepare;

  ASPEdicao.ParamByName('AEP_ID').Value := AEP_ID;
  ASPEdicao.ParamByName('ACP_ID').Value := ACP_ID;
  ASPEdicao.ParamByName('AIDEV' ).Value := 0;

  ASPEdicao.ExecProc;
  ASPEdicao.UnPrepare;
end;

procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
begin
  with FrmPrincipal do
       if Assigned(TForm(AInstance)) then
       begin
         TForm(AInstance).WindowState := wsNormal;
         TForm(AInstance).BringToFront;
         TForm(AInstance).SetFocus;
       end else
       begin
         TForm(AInstance) := AFClass.Create(AOwner);
         if TForm(AInstance).FormStyle = fsNormal then
            try
              TForm(AInstance).BorderIcons := [];
              TForm(AInstance).Visible     := False;
              TForm(AInstance).ShowModal;
            finally
              FreeAndNil(TForm(AInstance));
            end;
       end;
end;

procedure uConstrucao(ACaption: String = ''); STDCall;
begin
  FrmConstrucao := TFrmConstrucao.Create(Application,ACaption);
  FrmConstrucao.Show;
end;

procedure uPSQ_CAD_PAD(var AREC_SHE_DEF: TREC_SHE_DEF); STDCALL;
begin
end;

procedure uPSQ_CAD_PRO(var AREC_SHE_PSQ: TREC_SHE_PSQ); STDCALL;
begin
  AREC_SHE_PSQ.PSQ_OK := False;

  if AREC_SHE_PSQ.FWinControl <> Nil then
  begin
    if AREC_SHE_PSQ.FWinControl.ClassType = TdxDBGridMaskColumn then
    AREC_SHE_PSQ.FPoint     := AREC_SHE_PSQ.FWinControl.ClientToScreen(Point(0,0));
    AREC_SHE_PSQ.PSQ_TFD_PK := EmptyStr;
    AREC_SHE_PSQ.PSQ_TVD_PK := EmptyStr;

    if AREC_SHE_PSQ.FWinControl.ClassType = TdxEdit then
    begin
      AREC_SHE_PSQ.PSQ_TFD_PK := TdxEdit(AREC_SHE_PSQ.FWinControl).HelpKeyword;
      AREC_SHE_PSQ.PSQ_TVD_PK := TdxEdit(AREC_SHE_PSQ.FWinControl).Text;
    end else

    if AREC_SHE_PSQ.FWinControl.ClassType = TdxMaskEdit then
    begin
      AREC_SHE_PSQ.PSQ_TFD_PK := TdxMaskEdit(AREC_SHE_PSQ.FWinControl).HelpKeyword;
      AREC_SHE_PSQ.PSQ_TVD_PK := TdxMaskEdit(AREC_SHE_PSQ.FWinControl).Text;
    end else

    if AREC_SHE_PSQ.FWinControl.ClassType = TdxCurrencyEdit then
    begin
      AREC_SHE_PSQ.PSQ_TFD_PK := TdxCurrencyEdit(AREC_SHE_PSQ.FWinControl).HelpKeyword;
      AREC_SHE_PSQ.PSQ_TVD_PK := TdxCurrencyEdit(AREC_SHE_PSQ.FWinControl).Text;
    end else

    if AREC_SHE_PSQ.FWinControl.ClassType = TdxButtonEdit then
    begin
      AREC_SHE_PSQ.PSQ_TFD_PK := TdxButtonEdit(AREC_SHE_PSQ.FWinControl).HelpKeyword;
      AREC_SHE_PSQ.PSQ_TVD_PK := TdxButtonEdit(AREC_SHE_PSQ.FWinControl).Text;
    end else

    if AREC_SHE_PSQ.FWinControl.ClassType = TdxDBGridMaskColumn then
    begin
      AREC_SHE_PSQ.PSQ_TFD_PK := TdxDBGridMaskColumn(AREC_SHE_PSQ.FWinControl).FieldName;
      AREC_SHE_PSQ.PSQ_TVD_PK := TdxDBGridMaskColumn(AREC_SHE_PSQ.FWinControl).Field.AsString;
    end;
  end;

  if  (AREC_SHE_PSQ.PSQ_TVD_PK <> EmptyStr) and (AREC_SHE_PSQ.PSQ_TFD_PK <> EmptyStr) then
  begin
    AREC_SHE_PSQ.FException := 'Produto não Encontrado !';

    IF Pos('ID',AREC_SHE_PSQ.PSQ_TFD_PK) > 0 then
    begin
      AREC_SHE_PSQ.PSQ_WHERE := ' = ';
      AREC_SHE_PSQ.PSQ_LKPK  := '''';
      AREC_SHE_PSQ.PSQ_LKFK  := '''';
    end else
    begin
      AREC_SHE_PSQ.PSQ_WHERE := ' LIKE ';
      AREC_SHE_PSQ.PSQ_LKPK  := '''' ;
      AREC_SHE_PSQ.PSQ_LKFK  := '%''';
    end;

    if not AREC_SHE_PSQ.FB_SQL.Transaction.InTransaction then
    oOTransact(AREC_SHE_PSQ.FB_SQL.Transaction);

    with AREC_SHE_PSQ.FB_SQL do
    begin
      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.*');
      SQL.Add('FROM   VW_PSQ_CAD_PRO AS PK');

      SQL.Add('),'); { RECURSIVE FIM }

      { CTE INI }
      SQL.Add('CTE_PSQ');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.* FROM PK');
      SQL.Add('WHERE ' + AREC_SHE_PSQ.PSQ_TFD_PK + AREC_SHE_PSQ.PSQ_WHERE + AREC_SHE_PSQ.PSQ_LKPK + AREC_SHE_PSQ.PSQ_TVD_PK + AREC_SHE_PSQ.PSQ_LKFK);
      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT DISTINCT PK.*,');

      SQL.Add('       -- Estoque Pronta Entrega');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPE_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPE_QTDE,COALESCE(CAST(SUM(EF.EPE_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPE_QTRL,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EST_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EST_QTDE,COALESCE(CAST(SUM(EF.EST_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EST_QTRL,');

      SQL.Add('       -- Estoque Antecipado');
      SQL.Add('       COALESCE(CAST(SUM(EF.EAT_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EAT_QTDE,COALESCE(CAST(SUM(EF.EAT_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EAT_QTRL,');

      SQL.Add('       -- Estoque Revisado');
      SQL.Add('       COALESCE(CAST(SUM(EF.ERV_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ERV_QTDE,COALESCE(CAST(SUM(EF.ERV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ERV_QTRL,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EAA_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EAA_QTDE,COALESCE(CAST(SUM(EF.EAA_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EAA_QTRL,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EA_QTDE ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EA_QTDE ,COALESCE(CAST(SUM(EF.EA_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EA_QTRL ,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EB_QTDE ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EB_QTDE ,COALESCE(CAST(SUM(EF.EB_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EB_QTRL ,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EC_QTDE ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EC_QTDE ,COALESCE(CAST(SUM(EF.EC_QTRL ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EC_QTRL ,');

      SQL.Add('       -- Pilotagem');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPI_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPI_QTDE,COALESCE(CAST(SUM(EF.EPI_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPI_QTRL,');

      SQL.Add('       -- Estoque Substituto');
      SQL.Add('       COALESCE(CAST(SUM(EF.ESU_QTDE_ENT) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ESU_QTDE_ENT,COALESCE(CAST(SUM(EF.ESU_QTRL_ENT) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ESU_QTRL_ENT,');
      SQL.Add('       COALESCE(CAST(SUM(EF.ESU_QTDE_SAI) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ESU_QTDE_SAI,COALESCE(CAST(SUM(EF.ESU_QTRL_SAI) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS ESU_QTRL_SAI,');

      SQL.Add('       -- Compras');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPC_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPC_QTDE,COALESCE(CAST(SUM(EF.EPC_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPC_QTRL,');
      SQL.Add('       MAX(EF.EPC_CTNR) OVER(PARTITION BY PK.CP_ID) AS EPC_CTNR,');

      SQL.Add('       -- Vendas Programadas');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPP_QTDE     ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPP_QTDE     ,COALESCE(CAST(SUM(EF.EPP_QTRL     ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPP_QTRL     ,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPP_QTDE_CTNR) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPP_QTDE_CTNR,COALESCE(CAST(SUM(EF.EPP_QTRL_CTNR) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EPP_QTRL_CTNR,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EEP_QTDE     ) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EEP_QTDE     ,COALESCE(CAST(SUM(EF.EEP_QTRL     ) OVER(PARTITION BY PK.CP_ID) AS INTEGER),0) AS EEP_QTRL     ,');

      SQL.Add('       -- Vendas Pronta Entrega');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPV_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS EPV_QTDE,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER      ),0) AS EPV_QTRL,');

      SQL.Add('       -- Vendas Separadas');
      SQL.Add('       COALESCE(CAST(SUM(EF.ESP_QTDE) OVER(PARTITION BY PK.CP_ID) AS NUMERIC(12,2)),0) AS ESP_QTDE,');
      SQL.Add('       COALESCE(CAST(SUM(EF.EPV_QTRL) OVER(PARTITION BY PK.CP_ID) AS INTEGER      ),0) AS ESP_QTRL ');

                                              
      SQL.Add('FROM     CTE_PSQ AS PK');
      SQL.Add('LEFT     JOIN VW_PSQ_CAD_PRO_EST_SLD AS EF ON (EF.CP_ID = PK.CP_ID AND EF.EP_LG = ''' + RECParametros.EP_ID + ''')');
      SQL.Add('ORDER BY PK.ARTIGO,PK.GRD_NO');

      Prepare;
      ExecQuery;

      if Eof then
      if AREC_SHE_PSQ.FWinControl = Nil then
      oException(Nil,AREC_SHE_PSQ.FException) else

      if AREC_SHE_PSQ.FWinControl.ClassType = TdxDBGridMaskColumn then
      oException(Nil,AREC_SHE_PSQ.FException) else
      oException(AREC_SHE_PSQ.FWinControl,AREC_SHE_PSQ.FException) else
    end;

    if oLast(AREC_SHE_PSQ.FB_SQL) > 1 then

    try
      if Assigned(FrmCAD_PRO_PSQ) then FrmCAD_PRO_PSQ.BringToFront else
      begin
        TFrmCAD_PRO_PSQ._ExecForm(

        Application,    { Owner    }
        FrmCAD_PRO_PSQ, { Form     }
        False,      { Pesquisa }
        fsStayOnTop, { Tipo     }

        0,  { Código Principal }
        '', { Descrição Principal }

        0,  { Evento Principal }
        2,  { Tipo   Evento - 0: Copiado    1: Vazio  2: Romaneado }
        1,  { Código Evento - 0: Triangular 1: Normal 2: Complementar 3: Ajustes 4:Devolução }

        '', { Tabela }
        AREC_SHE_PSQ.FB_SQL.SQL.GetText { Get }
        );
      end;

      if AREC_SHE_PSQ.FWinControl <> Nil then
      begin
        FrmCAD_PRO_PSQ.REC_SHE_PSQ.FTop  := AREC_SHE_PSQ.FPoint.Y + AREC_SHE_PSQ.FWinControl.Height;
        FrmCAD_PRO_PSQ.REC_SHE_PSQ.FLeft := AREC_SHE_PSQ.FPoint.X;
      end;

      oOTransact(FrmCAD_PRO_PSQ.TConsulta);

      FrmCAD_PRO_PSQ.REC_SHE_PSQ.PSQ_TFD_TP := AREC_SHE_PSQ.PSQ_TFD_TP;

      FrmCAD_PRO_PSQ.Consulta.Close;
      FrmCAD_PRO_PSQ.Consulta.SQL.Clear;
      FrmCAD_PRO_PSQ.Consulta.SQL.Assign(AREC_SHE_PSQ.FB_SQL.SQL);
      
      FrmCAD_PRO_PSQ.Consulta.Prepare;
      FrmCAD_PRO_PSQ.Consulta.Open;

      FrmCAD_PRO_PSQ.REC_SHE_PSQ.FInitialize := True;
      FrmCAD_PRO_PSQ.ShowModal;

    finally
      if FrmCAD_PRO_PSQ.REC_SHE_PSQ.PSQ_OK then
      begin
        AREC_SHE_PSQ.FWinControl := Nil;
        AREC_SHE_PSQ.PSQ_TFD_PK   := 'PK.CP_ID';
        AREC_SHE_PSQ.PSQ_TVD_PK   := IntToStr(FrmCAD_PRO_PSQ.ConsultaCP_ID.AsInteger);

        uPSQ_CAD_PRO(AREC_SHE_PSQ);
      end;
    end else

    AREC_SHE_PSQ.PSQ_OK := True;
  end;

  if AREC_SHE_PSQ.FWinControl <> Nil then
  begin
    if not AREC_SHE_PSQ.PSQ_OK then
    begin
      if AREC_SHE_PSQ.FWinControl.ClassType = TdxEdit then
      TdxEdit(AREC_SHE_PSQ.FWinControl).Reset else

      if AREC_SHE_PSQ.FWinControl.ClassType = TdxMaskEdit then
      TdxMaskEdit(AREC_SHE_PSQ.FWinControl).Reset else

      if AREC_SHE_PSQ.FWinControl.ClassType = TdxCurrencyEdit then
      TdxCurrencyEdit(AREC_SHE_PSQ.FWinControl).Reset else

      if AREC_SHE_PSQ.FWinControl.ClassType = TdxButtonEdit then
      TdxButtonEdit(AREC_SHE_PSQ.FWinControl).Reset else

      if AREC_SHE_PSQ.FWinControl.ClassType = TdxMemo then
      TdxMemo(AREC_SHE_PSQ.FWinControl).Reset;

      if (AREC_SHE_PSQ.FWinControl.Showing) and (AREC_SHE_PSQ.FWinControl.Enabled) then
      TWinControl(AREC_SHE_PSQ.FWinControl).SetFocus;
    end;

    AREC_SHE_PSQ.FWinControl := Nil;
  end;

{  if AREC_SHE_PSQ.FB_SQL <> Nil then
  begin
    AREC_SHE_PSQ.FB_SQL.Close;
    AREC_SHE_PSQ.FB_SQL := Nil;
  end;}
end;

procedure uPSQEND(var ARECEndereco: TRECPedidos;AForceShowModal: Boolean = False); STDCall;
begin
  ARECEndereco.Selected   := False;
  ARECEndereco.AException := 'Endereço não Encontrado !';

  if ARECEndereco.AWinControl <> Nil then
  begin
    ARECEndereco.APoint := ARECEndereco.AWinControl.ClientToScreen(Point(0,0));

    if ARECEndereco.AWinControl.ClassType = TdxEdit then
    begin
      ARECEndereco.Value := TdxEdit(ARECEndereco.AWinControl).Text;
      ARECEndereco.Field := TdxEdit(ARECEndereco.AWinControl).HelpKeyword;
    end else
    if ARECEndereco.AWinControl.ClassType = TdxMaskEdit then
    begin
      ARECEndereco.Value := TdxMaskEdit(ARECEndereco.AWinControl).Text;
      ARECEndereco.Field := TdxMaskEdit(ARECEndereco.AWinControl).HelpKeyword;
    end else
    if ARECEndereco.AWinControl.ClassType = TdxCurrencyEdit then
    begin
      ARECEndereco.Value := TdxCurrencyEdit(ARECEndereco.AWinControl).Text;
      ARECEndereco.Field := TdxCurrencyEdit(ARECEndereco.AWinControl).HelpKeyword;
    end else
    if ARECEndereco.AWinControl.ClassType = TdxButtonEdit then
    begin
      ARECEndereco.Value := TdxButtonEdit(ARECEndereco.AWinControl).Text;
      ARECEndereco.Field := TdxButtonEdit(ARECEndereco.AWinControl).HelpKeyword;
    end else
    if ARECEndereco.AWinControl.ClassType = TdxDBGridMaskColumn then
    begin
      ARECEndereco.Value := TdxDBGridMaskColumn(ARECEndereco.AWinControl).Field.AsString;
      ARECEndereco.Field := TdxDBGridMaskColumn(ARECEndereco.AWinControl).FieldName;
    end;
  end;

  if  ((ARECEndereco.VALUE <> EmptyStr) and (ARECEndereco.FIELD <> EmptyStr)) or (AForceShowModal) then
  begin
    if (ARECEndereco.VALUE <> EmptyStr) and (ARECEndereco.FIELD <> EmptyStr) then
        with ARECEndereco.AQConsulta do
        begin
          Close;
          SQL.Clear;

          SQL.Add('SELECT * FROM SP_PSQ_TAB_CEP');
          SQL.Add('(');
          SQL.Add('''' + ARECEndereco.Value + ''',');
          SQL.Add('''' + ARECEndereco.Field + ''',');

          if Pos('Log',ARECEndereco.Field) > 0 then
          SQL.Add('''CONTAINING''') else
          begin
            SQL.Add(''''',');
            SQL.Add('''%''');
          end;

          SQL.Add(')');

          Open;
          Last;
        end;

        if (ARECEndereco.AQConsulta.Current.Vars[0].AsInteger = 0) and (ARECEndereco.AWinControl <> Nil) and (not AForceShowModal) then
            if ARECEndereco.AWinControl.ClassType = TdxDBGridMaskColumn then
               oException(Nil,ARECEndereco.AException) else
               oErro(ARECEndereco.AWinControl.Handle,ARECEndereco.AException);

        if (ARECEndereco.AQConsulta.RecNo = 1) and (not AForceShowModal) then
        begin
          ARECEndereco.Selected := True;

          { Endereço }
          ARECEndereco.LOG_NU :=  ARECEndereco.AQConsulta.Current.ByName('ID').AsString;
          ARECEndereco.TLO_TX :=  ARECEndereco.AQConsulta.Current.ByName('TIPO').AsString;
          ARECEndereco.LOG_NO :=  ARECEndereco.AQConsulta.Current.ByName('LOGRADOURO').AsString;
          ARECEndereco.XCPL   :=  ARECEndereco.AQConsulta.Current.ByName('COMPLEMENTO').AsString;
          ARECEndereco.CEP    :=  ARECEndereco.AQConsulta.Current.ByName('CEP').AsString;
          ARECEndereco.BAI_NO :=  ARECEndereco.AQConsulta.Current.ByName('BAIRRO').AsString;
          ARECEndereco.LOC_NO :=  ARECEndereco.AQConsulta.Current.ByName('CIDADE').AsString;
          ARECEndereco.CMUN   :=  ARECEndereco.AQConsulta.Current.ByName('CMUN').AsString;
          ARECEndereco.UF     :=  ARECEndereco.AQConsulta.Current.ByName('UF').AsString;
        end else
        if (ARECEndereco.AQConsulta.RecNo > 1) or (AForceShowModal) then
            try
              TFrmPSQEND._ExecForm(Application,FrmPSQEND,false,fsStayOnTop); //,-3,'Consulta',ARECPedido.CDCD,ARECPedido.FIELD+' '+IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');

              FrmPSQEND.Consulta.Close;
              FrmPSQEND.Consulta.SQL.Clear;
              FrmPSQEND.Consulta.SQL.Assign(ARECEndereco.AQConsulta.SQL);
              FrmPSQEND.Consulta.Open;

              FrmPSQEND.REC_SHE_DEF.FTop  := ARECEndereco.APoint.Y + ARECEndereco.AWinControl.Height;
              FrmPSQEND.REC_SHE_DEF.FLeft := ARECEndereco.APoint.X;
              FrmPSQEND.ShowModal;
            finally
              if (FrmPSQEND.REC_SHE_DEF.Selected) or (AForceShowModal) then
              begin
                if FrmPSQEND.ConsultaID.AsInteger > 0 then
                begin
                  ARECEndereco.Value := IntToStr(FrmPSQEND.ConsultaID.AsInteger);
                  ARECEndereco.Field := 'ID';
                end;

                ARECEndereco.AWinControl := Nil;
                uPSQEND(ARECEndereco);
              end;
            end;
  end;

  { Permite limpar os dados }
  if (not ARECEndereco.Selected) and (ARECEndereco.VALUE = EmptyStr) then
          ARECEndereco.Selected  := True;

  if ARECEndereco.AWinControl <> Nil then
  begin
    { RETIRADO POIS NÃO DEIXA USUÁRIO CONCLUIR CADASTRO
      ***** URGENTE ATUALIZAR CEP CORREIOS *****

    if not ARECEndereco.Selected then
    begin
      if oYesNo(ARECEndereco.AWinControl.Handle,'Continuar Editando ?') = mrNo then
      begin
        if ARECEndereco.AWinControl.ClassType = TdxEdit         then TdxEdit(ARECEndereco.AWinControl).Reset else
        if ARECEndereco.AWinControl.ClassType = TdxMaskEdit     then TdxMaskEdit(ARECEndereco.AWinControl).Reset else
        if ARECEndereco.AWinControl.ClassType = TdxCurrencyEdit then TdxCurrencyEdit(ARECEndereco.AWinControl).Reset else
        if ARECEndereco.AWinControl.ClassType = TdxButtonEdit   then TdxButtonEdit(ARECEndereco.AWinControl).Reset else
        if ARECEndereco.AWinControl.ClassType = TdxMemo         then TdxMemo(ARECEndereco.AWinControl).Reset;
      end else
      begin
        if ARECEndereco.AWinControl.ClassType = TdxEdit         then TdxEdit(ARECEndereco.AWinControl).Modified         := False else
        if ARECEndereco.AWinControl.ClassType = TdxMaskEdit     then TdxMaskEdit(ARECEndereco.AWinControl).Modified     := False else
        if ARECEndereco.AWinControl.ClassType = TdxCurrencyEdit then TdxCurrencyEdit(ARECEndereco.AWinControl).Modified := False else
        if ARECEndereco.AWinControl.ClassType = TdxButtonEdit   then TdxButtonEdit(ARECEndereco.AWinControl).Modified   := False else
        if ARECEndereco.AWinControl.ClassType = TdxMemo         then TdxMemo(ARECEndereco.AWinControl).Modified         := False;
      end;

      if (ARECEndereco.AWinControl.Showing) and (ARECEndereco.AWinControl.Enabled) then
          TWinControl(ARECEndereco.AWinControl).SetFocus;
    end;

    }
    ARECEndereco.AWinControl := Nil;
  end;

  if ARECEndereco.AQConsulta <> Nil then
  begin
    if ARECEndereco.AQConsulta.State = dsBrowse then
       ARECEndereco.AQConsulta.Close;
       ARECEndereco.AQConsulta := Nil;
  end;
end;

procedure uPSQCAD(var ARECPedido: TRECPedidos); STDCall;
begin
  ARECPedido.Selected := False;
  ARECPedido.VWCD     := 'VW_CAD_' +
                           IFThen(ARECPedido.CDCD = 0,'CLI',
                           IFThen(ARECPedido.CDCD = 1,'FOR',
                           IFThen(ARECPedido.CDCD = 2,'REP',
                           IFThen(ARECPedido.CDCD = 3,'TRA'))));

  ARECPedido.AException := IFThen(ARECPedido.CDCD = 0,'Cliente',
                           IFThen(ARECPedido.CDCD = 1,'Fornecedor',
                           IFThen(ARECPedido.CDCD = 2,'Representante',
                           IFThen(ARECPedido.CDCD = 3,'Transportadora')))) + ' não Encontrado !';

  if ARECPedido.AWinControl <> Nil then
  begin
    ARECPedido.APoint := ARECPedido.AWinControl.ClientToScreen(Point(0,0));

    if ARECPedido.AWinControl.ClassType = TdxEdit then
    begin
      ARECPedido.Value := TdxEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
    begin
      ARECPedido.Value := TdxMaskEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxMaskEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
    begin
      ARECPedido.Value := TdxCurrencyEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxCurrencyEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
    begin
      ARECPedido.Value := TdxButtonEdit(ARECPedido.AWinControl).Text;
      ARECPedido.Field := TdxButtonEdit(ARECPedido.AWinControl).HelpKeyword;
    end else
    if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then
    begin
      ARECPedido.Value := TdxDBGridMaskColumn(ARECPedido.AWinControl).Field.AsString;
      ARECPedido.Field := TdxDBGridMaskColumn(ARECPedido.AWinControl).FieldName;
    end;
  end;

  if (ARECPedido.VALUE <> EmptyStr) and (ARECPedido.FIELD <> EmptyStr) then
      with ARECPedido.AQConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.IDCD,PK.CDCD,PK.DECD,PK.RZCD,PK.GPCD,');

        { CAD_CLI_CRD }
        SQL.Add('COALESCE(FK.IDEP    ,0) AS FIN_IDEP    ,COALESCE(FK.VCRD        ,0) AS FIN_VCRD        ,COALESCE(FK.NAFA        ,0   ) AS FIN_CSPD,');
        SQL.Add('COALESCE(FK.PDSC    ,0) AS FIN_PDSC    ,COALESCE(FK.VDSC        ,0) AS FIN_VDSC        ,NULLIF(FK.INFADCAD_L1   ,'''') AS FIN_INFADCAD_L1 ,NULLIF(FK.INFADCAD_L2    ,'''') AS FIN_INFADCAD_L2,');
        SQL.Add('COALESCE(FK.PDSC_001,0) AS FIN_PDSC_001,COALESCE(FK.VDSC_INI_001,0) AS FIN_VDSC_INI_001,COALESCE(FK.VDSC_FIM_001,0   ) AS FIN_VDSC_FIM_001,NULLIF(FK.INFADCAD_L1_001,'''') AS FIN_INFADCAD_L1_001,NULLIF(FK.INFADCAD_L2_001,'''') AS FIN_INFADCAD_L2_001,');
        SQL.Add('COALESCE(FK.PDSC_002,0) AS FIN_PDSC_002,COALESCE(FK.VDSC_INI_002,0) AS FIN_VDSC_INI_002,COALESCE(FK.VDSC_FIM_002,0   ) AS FIN_VDSC_FIM_002,NULLIF(FK.INFADCAD_L1_002,'''') AS FIN_INFADCAD_L1_002,NULLIF(FK.INFADCAD_L2_002,'''') AS FIN_INFADCAD_L2_002,');
        SQL.Add('COALESCE(FK.PDSC_003,0) AS FIN_PDSC_003,COALESCE(FK.VDSC_INI_003,0) AS FIN_VDSC_INI_003,COALESCE(FK.VDSC_FIM_003,0   ) AS FIN_VDSC_FIM_003,NULLIF(FK.INFADCAD_L1_003,'''') AS FIN_INFADCAD_L1_003,NULLIF(FK.INFADCAD_L2_003,'''') AS FIN_INFADCAD_L2_003,');

        SQL.Add('PK.DTCA,PK.DTFU,PK.DTPC,PK.DTPP,PK.DTPV,');
        SQL.Add('PK.CDST,PK.REST,PK.DEST  ,');
        SQL.Add('PK.CNPJ,PK.FIS_CRT,PK.FIS_CREDICMS,');
        SQL.Add('PK.IE  ,PK.FIS_INDIEDEST,PK.FIS_INDFINAL,');
        SQL.Add('PK.ISUF,PK.IM,');
        SQL.Add('PK.CPF ,PK.IDESTRANGEIRO,');
        SQL.Add('PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,PK.IDCC,PK.DECC,');
        SQL.Add('PK.CDPD,PK.CDCO,PK.CDPG,PK.DEPG,');
        SQL.Add('PK.IDCT,PK.DECT,PK.MFRT,');
        SQL.Add('PK.CONTATO,PK.DDD,PK.TEL,PK.EMAIL,PK.ENVEMAIL,PK.D_FONE,PK.D_CONTATO,PK.D_CONTATO2,PK.D_CONTATO3,PK.D_CEL_CONTATO,PK.D_CEL_CONTATO2,PK.D_ZAP_CONTATO,');
        SQL.Add('PK.LOG_NU ,PK.TLO_TX,PK.LOG_NO,PK.NRO,PK.XCPL,PK.CEP,PK.BAI_NO,PK.LOC_NO,PK.CMUN,ZFM_CMUN,ZFM_CENQ,PK.UF,PK.CPAIS,PK.XPAIS,PK.D_LOG,');
        SQL.Add('PK.ENT_LOG_NU,PK.ENT_TLO_TX,PK.ENT_LOG_NO,PK.ENT_NRO,PK.ENT_XCPL,PK.ENT_CEP,PK.ENT_BAI_NO,PK.ENT_LOC_NO,PK.ENT_CMUN,PK.ENT_UF,');
        SQL.Add('PK.INFADCAD,PK.INFADFIN');

        SQL.Add('FROM ' + ARECPedido.VWCD + ' AS PK');
        SQL.Add('LEFT JOIN CAD_CLI_CRD AS FK ON (FK.IDCD = PK.IDCD AND FK.IDEP = '''+IFThen(ARECPedido.CDCD = 0,RECParametros.EP_ID,'99')+''')');

        SQL.Add('WHERE ' + ARECPedido.FIELD + ' ' + IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');
        SQL.Add('ORDER BY PK.DECD,PK.REST');
        
        Open;
        Last;

        if Current.Vars[0].AsInteger = 0 then
           if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then oException(Nil,ARECPedido.AException) else
              if ARECPedido.AWinControl.Showing then oException(ARECPedido.AWinControl  ,ARECPedido.AException) else
                                                     oErro     (Application.Handle      ,ARECPedido.AException);

        if RecNo = 1 then
        begin
          ARECPedido.Selected := True;

          { Destinatário }
          ARECPedido.IDCD := IntToStr(Current.ByName('IDCD').AsInteger);
          ARECPedido.DECD := StringReplace(oREPApostrofos(Current.ByName('DECD').AsString),Char(39),'',[rfReplaceAll]);
          ARECPedido.RZCD := StringReplace(oREPApostrofos(Current.ByName('RZCD').AsString),Char(39),'',[rfReplaceAll]);

          { Cadastro }
          ARECPedido.CONTATO := Current.ByName('CONTATO').AsString;
          ARECPedido.DDD     := Current.ByName('DDD'    ).AsString;
          ARECPedido.TEL     := Current.ByName('TEL'    ).AsString;
          ARECPedido.D_FONE  := Current.ByName('D_FONE' ).AsString;

          ARECPedido.EMAIL    :=  Current.ByName('EMAIL'   ).AsString;
          ARECPedido.ENVEMAIL := (Current.ByName('ENVEMAIL').AsInteger = 1);

          ARECPedido.CNPJ          := Current.ByName('CNPJ'         ).AsString;
          ARECPedido.IE            := Current.ByName('IE'           ).AsString;
          ARECPedido.ISUF          := Current.ByName('ISUF'         ).AsString;
          ARECPedido.IM            := Current.ByName('IM'           ).AsString;
          ARECPedido.CPF           := Current.ByName('CPF'          ).AsString;
          ARECPedido.IDESTRANGEIRO := Current.ByName('IDESTRANGEIRO').AsString;

          { Endereço Comercial }
          ARECPedido.LOG_NU   :=  Current.ByName('LOG_NU'  ).AsString;
          ARECPedido.TLO_TX   :=  Current.ByName('TLO_TX'  ).AsString;
          ARECPedido.LOG_NO   :=  Current.ByName('LOG_NO'  ).AsString;
          ARECPedido.NRO      :=  Current.ByName('NRO'     ).AsString;
          ARECPedido.XCPL     :=  Current.ByName('XCPL'    ).AsString;
          ARECPedido.CEP      :=  Current.ByName('CEP'     ).AsString;
          ARECPedido.BAI_NO   :=  Current.ByName('BAI_NO'  ).AsString;
          ARECPedido.LOC_NO   :=  Current.ByName('LOC_NO'  ).AsString;
          ARECPedido.CMUN     :=  Current.ByName('CMUN'    ).AsString;
          ARECPedido.ZFM_CMUN := (Current.ByName('ZFM_CMUN').AsInteger > 0);
          ARECPedido.ZFM_CENQ :=  Current.ByName('ZFM_CENQ').AsString;
          ARECPedido.UF       :=  Current.ByName('UF'      ).AsString;

          { Zona Franca }
          if oEmpty(ARECPedido.ISUF) then
             ARECPedido.ZFM_CMUN := False;

          if not ARECPedido.ZFM_CMUN then
             ARECPedido.ZFM_CENQ := EmptyStr;

          ARECPedido.CPAIS := IntToStr(Current.ByName('CPAIS').AsInteger);
          ARECPedido.XPAIS :=          Current.ByName('XPAIS').AsString;

          { Endereço Entrega }
          ARECPedido.ENT_LOG_NU :=  Current.ByName('ENT_LOG_NU').AsString;
          ARECPedido.ENT_TLO_TX :=  Current.ByName('ENT_TLO_TX').AsString;
          ARECPedido.ENT_LOG_NO :=  Current.ByName('ENT_LOG_NO').AsString;
          ARECPedido.ENT_NRO    :=  Current.ByName('ENT_NRO'   ).AsString;
          ARECPedido.ENT_XCPL   :=  Current.ByName('ENT_XCPL'  ).AsString;
          ARECPedido.ENT_CEP    :=  Current.ByName('ENT_CEP'   ).AsString;
          ARECPedido.ENT_BAI_NO :=  Current.ByName('ENT_BAI_NO').AsString;
          ARECPedido.ENT_LOC_NO :=  Current.ByName('ENT_LOC_NO').AsString;
          ARECPedido.ENT_CMUN   :=  Current.ByName('ENT_CMUN'  ).AsString;
          ARECPedido.ENT_UF     :=  Current.ByName('ENT_UF'    ).AsString;

          { Vendedor / Representante }
          ARECPedido.IDCV := Current.ByName('IDCV').AsString;
          ARECPedido.DECV := Current.ByName('DECV').AsString;
          ARECPedido.IDCR := Current.ByName('IDCR').AsString;
          ARECPedido.DECR := Current.ByName('DECR').AsString;

          { Transportadora / Frete }
          ARECPedido.IDCT := Current.ByName('IDCT').AsString;
          ARECPedido.DECT := Current.ByName('DECT').AsString;
          ARECPedido.MFRT := Current.ByName('MFRT').AsString;

          { Financeiro }
          ARECPedido.FIN_IDEP :=  Current.ByName('FIN_IDEP').AsString;
          ARECPedido.FIN_VCRD :=  Current.ByName('FIN_VCRD').AsFloat;
          ARECPedido.FIN_CSPD := (Current.ByName('FIN_CSPD').AsInteger = 1);

          { Desconto Geral }
          ARECPedido.FIN_PDSC        := Current.ByName('FIN_PDSC').AsFloat;
          ARECPedido.FIN_VDSC        := Current.ByName('FIN_VDSC').AsFloat;
          ARECPedido.FIN_INFADCAD_L1 := Current.ByName('FIN_INFADCAD_L1').AsString;
          ARECPedido.FIN_INFADCAD_L2 := Current.ByName('FIN_INFADCAD_L2').AsString;

          { Desconto Especial }
          ARECPedido.FIN_PDSC_001        := Current.ByName('FIN_PDSC_001').AsFloat;
          ARECPedido.FIN_VDSC_INI_001    := Current.ByName('FIN_VDSC_INI_001').AsFloat;
          ARECPedido.FIN_VDSC_FIM_001    := Current.ByName('FIN_VDSC_FIM_001').AsFloat;
          ARECPedido.FIN_INFADCAD_L1_001 := Current.ByName('FIN_INFADCAD_L1_001').AsString;
          ARECPedido.FIN_INFADCAD_L2_001 := Current.ByName('FIN_INFADCAD_L2_001').AsString;

          ARECPedido.FIN_PDSC_002        := Current.ByName('FIN_PDSC_002').AsFloat;
          ARECPedido.FIN_VDSC_INI_002    := Current.ByName('FIN_VDSC_INI_002').AsFloat;
          ARECPedido.FIN_VDSC_FIM_002    := Current.ByName('FIN_VDSC_FIM_002').AsFloat;
          ARECPedido.FIN_INFADCAD_L1_002 := Current.ByName('FIN_INFADCAD_L1_002').AsString;
          ARECPedido.FIN_INFADCAD_L2_002 := Current.ByName('FIN_INFADCAD_L2_002').AsString;

          ARECPedido.FIN_PDSC_003        := Current.ByName('FIN_PDSC_003').AsFloat;
          ARECPedido.FIN_VDSC_INI_003    := Current.ByName('FIN_VDSC_INI_003').AsFloat;
          ARECPedido.FIN_VDSC_FIM_003    := Current.ByName('FIN_VDSC_FIM_003').AsFloat;
          ARECPedido.FIN_INFADCAD_L1_003 := Current.ByName('FIN_INFADCAD_L1_003').AsString;
          ARECPedido.FIN_INFADCAD_L2_003 := Current.ByName('FIN_INFADCAD_L2_003').AsString;

          { Prazos }
          ARECPedido.CDPG := IntToStr(Current.ByName('CDPG').AsInteger); { Código }
          ARECPedido.DEPG := Current.ByName('DEPG').AsString;            { Descrição }

          { Fiscal }
          ARECPedido.FIS_INDIEDEST  := Current.ByName('FIS_INDIEDEST').AsString;
          ARECPedido.FIS_INDFINAL   := Current.ByName('FIS_INDFINAL' ).AsString;
          ARECPedido.FIS_CRT        := Current.ByName('FIS_CRT'      ).AsString;
          ARECPedido.FIS_CREDICMS   := Current.ByName('FIS_CREDICMS' ).AsString;

          { Status }
          ARECPedido.RSCD := Current.ByName('REST').AsString;

          { Informações Adicionais }
          ARECPedido.INFADCAD := Current.ByName('INFADCAD').AsString;
          ARECPedido.INFADCPL := Current.ByName('INFADFIN').AsString;
        end else
        if RecNo > 1 then
           try
             TFrmPSQCAD._ExecForm(Application,FrmPSQCAD,false,fsStayOnTop); //,-3,'Consulta',ARECPedido.CDCD,ARECPedido.FIELD+' '+IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');

             FrmPSQCAD.Consulta.Close;
             FrmPSQCAD.Consulta.SQL.Clear;
             FrmPSQCAD.Consulta.SQL.Assign(ARECPedido.AQConsulta.SQL);
             FrmPSQCAD.Consulta.Open;

             FrmPSQCAD.REC_SHE_DEF.FTop  := ARECPedido.APoint.Y + ARECPedido.AWinControl.Height;
             FrmPSQCAD.REC_SHE_DEF.FLeft := ARECPedido.APoint.X;
             FrmPSQCAD.ShowModal;
           finally
             if FrmPSQCAD.REC_SHE_DEF.Selected then
             begin
               ARECPedido.AWinControl := Nil;
               ARECPedido.Value := IntToStr(FrmPSQCAD.ConsultaIDCD.AsInteger);
               ARECPedido.Field := 'PK.IDCD';

               uPSQCAD(ARECPedido);
             end;
           end;
      end;

  if ARECPedido.AWinControl <> Nil then
  begin
    if not ARECPedido.Selected then
    begin
      if ARECPedido.AWinControl.ClassType = TdxEdit then
         TdxEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
         TdxMaskEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
         TdxCurrencyEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
         TdxButtonEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMemo then
         TdxMemo(ARECPedido.AWinControl).Reset;

      if (ARECPedido.AWinControl.Showing) and (ARECPedido.AWinControl.Enabled) then
          TWinControl(ARECPedido.AWinControl).SetFocus;
    end;

    ARECPedido.AWinControl := Nil;
  end;

  if ARECPedido.AQConsulta <> Nil then
  begin
    ARECPedido.AQConsulta.Close;
    ARECPedido.AQConsulta := Nil;
  end;
end;

procedure uPSQPED(var ARECPedido: TRECPedidos); STDCall;
begin
  if ARECPedido.AWinControl <> Nil then
     if ARECPedido.AWinControl.ClassType = TdxEdit then
     begin
       ARECPedido.Value := TdxEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
     begin
       ARECPedido.Value := TdxMaskEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxMaskEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
     begin
       ARECPedido.Value := TdxCurrencyEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxCurrencyEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
     begin
       ARECPedido.Value := TdxButtonEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxButtonEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxImageEdit then
     begin
       ARECPedido.Value := TdxImageEdit(ARECPedido.AWinControl).Text;
       ARECPedido.Field := TdxImageEdit(ARECPedido.AWinControl).HelpKeyword;
     end else
     if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then
     begin
       ARECPedido.Value := TdxDBGridMaskColumn(ARECPedido.AWinControl).Field.AsString;
       ARECPedido.Field := TdxDBGridMaskColumn(ARECPedido.AWinControl).FieldName;
     end;

  { DEU RUIM! }
  ARECPedido.Selected := False;

  if (ARECPedido.VALUE <> EmptyStr) and (ARECPedido.FIELD <> EmptyStr) then
      with ARECPedido.ASQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.* FROM VW_TAB_TPO AS PK');
        SQL.Add('WHERE '+ARECPedido.FIELD+' '+IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');
        SQL.Add('AND    PK.REST = ''A''');
        ExecQuery;

        if Eof then
           if ARECPedido.AWinControl.ClassType = TdxDBGridMaskColumn then
              oException(Nil,'Cadastro não Encontrado !') else
              if ARECPedido.AWinControl.Showing then
                 oException(ARECPedido.AWinControl,'Cadastro não Encontrado !') else
                 Abort;

        { Tipo }
        ARECPedido.PED_CDPD :=  IntToStr(Current.ByName('ID').AsInteger); { Código }
        ARECPedido.STPD :=  Current.ByName('DESCRICAO').AsString;     { Descrição }
        ARECPedido.FAPD := (Current.ByName('FAPD').AsInteger = 1);    { Faturar }
        ARECPedido.SVPD := (Current.ByName('SVPD').AsInteger = 1);    { Serviço }
        ARECPedido.BQPD := (Current.ByName('BQPD').AsInteger = 1);    { Bloqueável }

        { Status }
        ARECPedido.PK_CDST := IntToStr(Current.ByName('PED_CDST').AsInteger); { Código }
        ARECPedido.PK_REST := Current.ByName('PED_REST').AsString;            { Referência }
        ARECPedido.PK_DEST := Current.ByName('PED_DEST').AsString;            { Descrição }

        ARECPedido.PKPD :=  Current.ByName('PKPD').AsString;       { Pesquisa Padrão }
        ARECPedido.VPRC_PAD_TAB :=  Current.ByName('VPRC_PAD_TAB').AsString; { Preço Padrão }
        ARECPedido.TIPD := (Current.ByName('TIPD').AsInteger = 1); { Soma IPI no Total }
        ARECPedido.TGPD := (Current.ByName('TGPD').AsInteger = 1); { Tingimento }

        { Descontos }
        ARECPedido.PDPD := (Current.ByName('PDPD').AsInteger = 1); { Permite }
        ARECPedido.MDPD :=  Current.ByName('MDPD').AsInteger; { % Máximo }

        { Estoque }
        ARECPedido.BXEK := (Current.ByName('BXEK').AsInteger = 1); { Baixar }
        ARECPedido.SPEK := (Current.ByName('SPEK').AsInteger = 1); { Separar }
        ARECPedido.RLEK := (Current.ByName('RLEK').AsString  = 'PC'); { Peças / Rolos }

        { Tipo de Estoque }
        ARECPedido.CDEK :=  IntToStr(Current.ByName('CDEK').AsInteger); { Código }
        ARECPedido.REEK :=  Current.ByName('REEK').AsString;            { Referência }
        ARECPedido.DEEK :=  Current.ByName('DEEK').AsString;            { Descrição }

        { Cobrança }
        ARECPedido.CDCO :=  IntToStr(Current.ByName('CDCO').AsInteger); { Código }
        ARECPedido.STCO :=  Current.ByName('STCO').AsString;            { Descrição }

        { Prazos }
        ARECPedido.CDPG :=  IntToStr(Current.ByName('CDPG').AsInteger); { Código }
        ARECPedido.DEPG :=  Current.ByName('DEPG').AsString;            { Descrição }
        ARECPedido.BXPG := (Current.ByName('BXPG').AsInteger = 1);      { Baixa Automática }

        { CFOP }
        ARECPedido.CFOP := Current.ByName(IFThen((ARECPedido.UF = EmptyStr) or (ARECPEdido.UF = RECParametros.LOG_UF),'CFOPDUF','CFOFDUF')).AsString;

        { DEU BOM! }
        ARECPedido.Selected := True;
      end;

  if ARECPedido.AWinControl <> Nil then
  begin
    if not ARECPedido.Selected then
    begin
      if ARECPedido.AWinControl.ClassType = TdxEdit then
         TdxEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMaskEdit then
         TdxMaskEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxCurrencyEdit then
         TdxCurrencyEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxButtonEdit then
         TdxButtonEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxImageEdit then
         TdxImageEdit(ARECPedido.AWinControl).Reset else
      if ARECPedido.AWinControl.ClassType = TdxMemo then
         TdxMemo(ARECPedido.AWinControl).Reset;

      if (ARECPedido.AWinControl.Showing) and (ARECPedido.AWinControl.Enabled) then
          TWinControl(ARECPedido.AWinControl).SetFocus;
    end;
    ARECPedido.AWinControl := Nil;
  end;

  if ARECPedido.ASQLConsulta <> Nil then
  begin
    ARECPedido.ASQLConsulta.Close;
    ARECPedido.ASQLConsulta := Nil;
  end;
end;

procedure uPSQPRO(var ARECProduto: TRECProdutos); STDCall;
begin
  if ARECProduto.AWinControl <> Nil then
     if ARECProduto.AWinControl.ClassType = TdxEdit then
     begin
       ARECProduto.Value := TdxEdit(ARECProduto.AWinControl).Text;
       ARECProduto.Field := TdxEdit(ARECProduto.AWinControl).HelpKeyword;
     end else
     if ARECProduto.AWinControl.ClassType = TdxMaskEdit then
     begin
       ARECProduto.Value := TdxMaskEdit(ARECProduto.AWinControl).Text;
       ARECProduto.Field := TdxMaskEdit(ARECProduto.AWinControl).HelpKeyword;
     end else
     if ARECProduto.AWinControl.ClassType = TdxCurrencyEdit then
     begin
       ARECProduto.Value := TdxCurrencyEdit(ARECProduto.AWinControl).Text;
       ARECProduto.Field := TdxCurrencyEdit(ARECProduto.AWinControl).HelpKeyword;
     end else
     if ARECProduto.AWinControl.ClassType = TdxButtonEdit then
     begin
       ARECProduto.Value := TdxButtonEdit(ARECProduto.AWinControl).Text;
       ARECProduto.Field := TdxButtonEdit(ARECProduto.AWinControl).HelpKeyword;
     end else
     if ARECProduto.AWinControl.ClassType = TdxDBGridMaskColumn then
     begin
       ARECProduto.Value := TdxDBGridMaskColumn(ARECProduto.AWinControl).Field.AsString;
       ARECProduto.Field := TdxDBGridMaskColumn(ARECProduto.AWinControl).FieldName;
     end;

  if (ARECProduto.VALUE <> EmptyStr) and (ARECProduto.FIELD <> EmptyStr) then
      with ARECProduto.AQConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ID    ,PK.IDEP ,PK.DEEP,');
        SQL.Add('       PK.CDST  ,PK.REST ,PK.DEST,');
        SQL.Add('       PK.ARTIGO,PK.NCM  ,PK.PIPI,PK.EXTIPI,PK.CEST,');
        SQL.Add('       PK.SKU   ,PK.CEAN ,');
        SQL.Add('       PK.DECP  ,PK.DGCP ,');
        SQL.Add('       PK.UCOM  ,PK.UTRIB,PK.UCON,PK.UQTDE,PK.UQTRL,PK.UPSBR,PK.UPSLQ,');
        SQL.Add('       PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');

        { Tipo de Tabela de Preço }
        SQL.Add(IFThen(ARECProduto.RPPD = 'ATACAREJO'       ,'PK.VPRC_ATV',
                IFThen(ARECProduto.RPPD = 'COMPRAS'         ,'PK.VPRC_COM_PAD',
                IFThen(ARECProduto.RPPD = 'LOJA VIRTUAL'    ,'PK.VPRC_LJV',
                IFThen(ARECProduto.RPPD = 'REPRESENTANTE'   ,'PK.VPRC_REP',
                IFThen(ARECProduto.RPPD = 'VAREJO'          ,'PK.VPRC_VAR',
                                                             'PK.VPRC_PAD')))))+' AS VPRC_PAD,');
        { Tipo de Estoque }
        SQL.Add('COALESCE(E.' + IFThen(ARECProduto.FIPD = 'VENDAS','EPE_QTDE','EEP_QTDE') + ',0) AS EST_QTDE,');
        SQL.Add('COALESCE(E.' + IFThen(ARECProduto.FIPD = 'VENDAS','EPE_QTRL','EEP_QTRL') + ',0) AS EST_QTRL,');

        { Imagem do Produto }
        SQL.Add('PK.IMG_ID  ,PK.IMG_PAD ,');

        { Instruções de Lavagem }
        SQL.Add('PK.ILA_BMP1,PK.ILA_INS1,PK.ILA_BMP2,PK.ILA_INS2,PK.ILA_BMP3,PK.ILA_INS3,PK.ILA_BMP4,PK.ILA_INS4,');
        SQL.Add('PK.ILA_BMP5,PK.ILA_INS5,PK.ILA_BMP6,PK.ILA_INS6,PK.ILA_BMP7,PK.ILA_INS7,PK.ILA_BMP8,PK.ILA_INS8,' );

        SQL.Add('PK.CMP_PAD,PK.INFADCAD');

        SQL.Add('FROM VW_CAD_PRO AS PK');
        SQL.Add('JOIN SP_CAD_PRO_EST_PSQ(:IDEP,PK.IDEK) AS E ON (1 = 1)');

        SQL.Add('WHERE '+ARECProduto.FIELD+' '+IFThen(Pos('ID',ARECProduto.FIELD) > 0,'=','CONTAINING')+' '''+ARECProduto.VALUE+'''');
        Open;
        Last;

        if RecNo = 0 then
           if ARECProduto.AWinControl.ClassType = TdxDBGridMaskColumn then
              oException(Nil,'Cadastro não Encontrado !') else
              if ARECProduto.AWinControl.Showing then
                 oException(ARECProduto.AWinControl,'Cadastro não Encontrado !') else
                 Abort;

        if RecNo = 1 then
           with ARECProduto.AQConsulta do
           begin
             if ARECProduto.AEdicao.State = dsBrowse then
                ARECProduto.AEdicao.Append;

             ARECProduto.AEdicao.FieldByName('IDCP').Value := FieldByName('ID').Value;

             ARECProduto.AEdicao.FieldByName('IDEP').Value := FieldByName('IDEP').Value;
             ARECProduto.AEdicao.FieldByName('DEEP').Value := FieldByName('DEEP').Value;

             ARECProduto.AEdicao.FieldByName('CDST').Value := FieldByName('CDST').Value;
             ARECProduto.AEdicao.FieldByName('REST').Value := FieldByName('REST').Value;
             ARECProduto.AEdicao.FieldByName('DEST').Value := FieldByName('DEST').Value;

             ARECProduto.AEdicao.FieldByName('ARTIGO').Value := FieldByName('ARTIGO').Value;
             ARECProduto.AEdicao.FieldByName('NCM').Value    := FieldByName('NCM'   ).Value;
             ARECProduto.AEdicao.FieldByName('PIPI').Value   := FieldByName('PIPI'  ).Value;

             ARECProduto.AEdicao.FieldByName('SKU').Value  := FieldByName('SKU' ).Value;
             ARECProduto.AEdicao.FieldByName('CEAN').Value := FieldByName('CEAN').Value;

             ARECProduto.AEdicao.FieldByName('DECP').Value := FieldByName('DECP').Value;
             ARECProduto.AEdicao.FieldByName('DGCP').Value := FieldByName('DGCP').Value;

             ARECProduto.AEdicao.FieldByName('CMP_PAD').Value := FieldByName('CMP_PAD').Value;

             ARECProduto.AEdicao.FieldByName('UCOM').Value  := FieldByName('UCOM' ).Value;
             ARECProduto.AEdicao.FieldByName('UCON').Value  := FieldByName('UCON' ).Value;

             ARECProduto.AEdicao.FieldByName('UQTDE').Value := FieldByName('UQTDE').Value;
             ARECProduto.AEdicao.FieldByName('UQTRL').Value := FieldByName('UQTRL').Value;
             ARECProduto.AEdicao.FieldByName('UPSBR').Value := FieldByName('UPSBR').Value;
             ARECProduto.AEdicao.FieldByName('UPSLQ').Value := FieldByName('UPSLQ').Value;

             ARECProduto.AEdicao.FieldByName('EST_QTDE').Value := FieldByName('EST_QTDE').Value;
             ARECProduto.AEdicao.FieldByName('EST_QTRL').Value := FieldByName('EST_QTRL').Value;

             ARECProduto.AEdicao.FieldByName('VPRC_PAD_INI').Value := FieldByName('VPRC_PAD_INI').Value;
             ARECProduto.AEdicao.FieldByName('VPRC_PAD_FIM').Value := FieldByName('VPRC_PAD_FIM').Value;

             ARECProduto.AEdicao.FieldByName('VPRC_PAD').Value := FieldByName('VPRC_PAD').Value;
             ARECProduto.AEdicao.FieldByName('VPRC_COM').Value := FieldByName('VPRC_PAD').Value;

             ARECProduto.AEdicao.FieldByName('IMG_ID').Value  := FieldByName('IMG_ID' ).Value;
             ARECProduto.AEdicao.FieldByName('IMG_PAD').Value := FieldByName('IMG_PAD').Value;

             ARECProduto.AEdicao.FieldByName('ILA_BMP1').Value := FieldByName('ILA_BMP1').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS1').Value := FieldByName('ILA_INS1').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP2').Value := FieldByName('ILA_BMP2').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS2').Value := FieldByName('ILA_INS2').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP3').Value := FieldByName('ILA_BMP3').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS3').Value := FieldByName('ILA_INS3').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP4').Value := FieldByName('ILA_BMP4').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS4').Value := FieldByName('ILA_INS4').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP5').Value := FieldByName('ILA_BMP5').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS5').Value := FieldByName('ILA_INS5').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP6').Value := FieldByName('ILA_BMP6').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS6').Value := FieldByName('ILA_INS6').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP7').Value := FieldByName('ILA_BMP7').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS7').Value := FieldByName('ILA_INS7').Value;
             ARECProduto.AEdicao.FieldByName('ILA_BMP8').Value := FieldByName('ILA_BMP8').Value;
             ARECProduto.AEdicao.FieldByName('ILA_INS8').Value := FieldByName('ILA_INS8').Value;

             ARECProduto.AEdicao.FieldByName('INFADCAD').Value := FieldByName('INFADCAD').Value;
           end else
{           try
             TFrmPesquisaPRO._ExecForm(Application,FrmPesquisaPRO,false,fsStayOnTop,-3,ARECProduto.FIPD+ARECProduto.RPPD,ARECProduto.IDEV);
             FrmPesquisaPRO.Consulta.SQL.Clear;
             FrmPesquisaPRO.Consulta.SQL.Assign(ARECProduto.AQConsulta.SQL);
             FrmPesquisaPRO.ShowModal;
           finally
             if FrmPesquisaPRO.REC_SHE_DEF.Selected then
             begin
               ARECProduto.AWinControl := Nil;
               ARECProduto.Value := IntToStr(FrmPesquisaPRO.ConsultaID.AsInteger);
               ARECProduto.Field := 'ID';

               uPSQPRO(ARECProduto);
             end;
           end;}
      end;

  if ARECProduto.AWinControl <> Nil then
  begin
    if not ARECProduto.Selected then
    begin
      if ARECProduto.AWinControl.ClassType = TdxEdit then
         TdxEdit(ARECProduto.AWinControl).Reset else
      if ARECProduto.AWinControl.ClassType = TdxMaskEdit then
         TdxMaskEdit(ARECProduto.AWinControl).Reset else
      if ARECProduto.AWinControl.ClassType = TdxCurrencyEdit then
         TdxCurrencyEdit(ARECProduto.AWinControl).Reset else
      if ARECProduto.AWinControl.ClassType = TdxButtonEdit then
         TdxButtonEdit(ARECProduto.AWinControl).Reset else
      if ARECProduto.AWinControl.ClassType = TdxMemo then
         TdxMemo(ARECProduto.AWinControl).Reset;

      if (ARECProduto.AWinControl.Showing) and (ARECProduto.AWinControl.Enabled) then
          TWinControl(ARECProduto.AWinControl).SetFocus;
    end;
    ARECProduto.AWinControl := Nil;
  end;

  if ARECProduto.AQConsulta <> Nil then
  begin
    ARECProduto.AQConsulta.Close;
    ARECProduto.AQConsulta := Nil;
  end;
end;

procedure uPSQPD(var ARECEdicao: TRECEdicao); STDCall;
begin
  if ARECEdicao.AWinControl <> Nil then
     if ARECEdicao.AWinControl.ClassType = TdxEdit then
     begin
       ARECEdicao.AValue := TdxEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxMaskEdit then
     begin
       ARECEdicao.AValue := TdxMaskEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxMaskEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxCurrencyEdit then
     begin
       ARECEdicao.AValue := TdxCurrencyEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxCurrencyEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxButtonEdit then
     begin
       ARECEdicao.AValue := TdxButtonEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxButtonEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxImageEdit then
     begin
       ARECEdicao.AValue := TdxImageEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxImageEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxPickEdit then
     begin
       ARECEdicao.AValue := TdxPickEdit(ARECEdicao.AWinControl).Text;
       ARECEdicao.AField := TdxPickEdit(ARECEdicao.AWinControl).HelpKeyword;
     end else
     if ARECEdicao.AWinControl.ClassType = TdxDBGridMaskColumn then
     begin
       ARECEdicao.AValue := TdxDBGridMaskColumn(ARECEdicao.AWinControl).Field.AsString;
       ARECEdicao.AField := TdxDBGridMaskColumn(ARECEdicao.AWinControl).FieldName;
     end;

  { DEU RUIM! }
  ARECEdicao.Selected := False;

  if (ARECEdicao.AValue = '0') or (ARECEdicao.AValue = EmptyStr) then
  begin
    ARECEdicao.IDPK := '0';
    ARECEdicao.DTPK :=  0 ;
    ARECEdicao.CDPK := '0';
    ARECEdicao.DEFK := EmptyStr;

    ARECEdicao.IDCD := '0';
    ARECEdicao.DECD := EmptyStr;
    ARECEdicao.IDCV := '0';
    ARECEdicao.DECV := EmptyStr;
    ARECEdicao.IDCC := '0';
    ARECEdicao.DECC := EmptyStr;
    ARECEdicao.IDCR := '0';
    ARECEdicao.DECR := EmptyStr;

    ARECEdicao.Selected := True;
  end else
  if   ARECEdicao.AFIELD <> EmptyStr then
  with ARECEdicao.AQConsulta do
  begin
    Close;
    SQL.Clear;

    SQL.Add('SELECT PK.ID  ,PK.IDEP,EP.FANTASIA AS DEEP,');
    SQL.Add('       PK.IDCA,PK.DTCA,PK.CDST,PK.REST,PK.DEST,');
    SQL.Add('       PK.IDPK,CAST(PK.DTCA AS DATE) AS DTPK,LG_PK.LOGIN AS LGPK,PK.CDPK,PK.DEPK,');
    SQL.Add('       PK.IDCD,CD.FANTASIA  AS DECD,PK.IDCR ,CR.REP_FANT AS DECR');
    SQL.Add('FROM ' + oREPZero(ARECEdicao.TBPK,'_',RECParametros.EP_ID,3) + ' AS PK');

    if ARECEdicao.TPPK = 1 then { Compras }
    SQL.Add('JOIN  CAD_FOR     AS CD    ON (CD.ID    = PK.IDCD)');
    SQL.Add('JOIN  TAB_PAR_SIS AS EP    ON (EP.ID    = PK.IDEP)');
    SQL.Add('JOIN  CAD_REP     AS CR    ON (CR.ID    = PK.IDCR)');
    SQL.Add('JOIN  TAB_USER    AS LG_PK ON (LG_PK.ID = PK.IDPK)');

    SQL.Add('WHERE PK.IDEP = ''' + ARECEdicao.IDEP + '''');
    SQL.Add('AND ' + ARECEdicao.AField + ' = ''' + ARECEdicao.AValue + '''');
    Open;

    if Eof then
       oException(ARECEdicao.AWinControl,'Pedido não Encontrado !');

    ARECEdicao.IDPK := FieldByName('IDPK').AsString;
    ARECEdicao.DTPK := FieldByName('DTPK').AsDateTime;
    ARECEdicao.CDPK := FieldByName('CDPK').AsString;
    ARECEdicao.DEPK := FieldByName('DEPK').AsString;

    ARECEdicao.IDCD := FieldByName('IDCD').AsString;
    ARECEdicao.DECD := FieldByName('DECD').AsString;

    ARECEdicao.Selected := True;
  end;
end;

procedure uPSQNF (var ARECPSQNF : TRECEdicao;ASQLConsulta: TIBSQL;AWinControl: TWinControl); STDCall;
var
  lPoint: TPoint;
begin
  ARECPSQNF.Selected := False;
  lPoint := AWinControl.ClientToScreen(Point(0,0));

  if (ARECPSQNF.AValue = '0') or (ARECPSQNF.AValue = EmptyStr) then
  begin
    ARECPSQNF.ID   := '0';
    ARECPSQNF.IDCV := '0';
    ARECPSQNF.DECV := '0';
    ARECPSQNF.CDNF := '0';
    ARECPSQNF.DTNF := 0;
    ARECPSQNF.IDCD := '0';
    ARECPSQNF.DECD := EmptyStr;

    ARECPSQNF.Selected := True;
  end;

  if (ARECPSQNF.AValue <> '0') and (ARECPSQNF.AValue <> EmptyStr) and (ARECPSQNF.AFIELD <> EmptyStr) then
  begin
    oOTransact(ASQLConsulta.Transaction);
    with ASQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SP_NFE_CAB_PSQ (');
      SQL.Add(''''+ARECPSQNF.IDEP    +''',');
      SQL.Add(''''+ARECPSQNF.AValue  +''',');
      SQL.Add(''''+ARECPSQNF.FKAValue+''')');
      ExecQuery;

      if Eof then
         oException(AWinControl,'Nota Fiscal não Encontrada !');

      if oLast(ASQLConsulta) = 1 then
      begin
        ARECPSQNF.ID   := IntToStr(ASQLConsulta.Current.ByName('rID').AsInteger);

        ARECPSQNF.IDCD := IntToStr(ASQLConsulta.Current.ByName('rIDFV').AsInteger);
        ARECPSQNF.DECD := ASQLConsulta.Current.ByName('rDEFV').AsString;

        ARECPSQNF.IDCV := IntToStr(ASQLConsulta.Current.ByName('rIDCV').AsInteger);
        ARECPSQNF.DECV := ASQLConsulta.Current.ByName('rDECV').AsString;

        ARECPSQNF.IDCR := IntToStr(ASQLConsulta.Current.ByName('rIDCR').AsInteger);
        ARECPSQNF.DECR := ASQLConsulta.Current.ByName('rDECR').AsString;

        ARECPSQNF.CDNF := IntToStr(ASQLConsulta.Current.ByName('rCDNF').AsInteger);
        ARECPSQNF.DTNF := ASQLConsulta.Current.ByName('rDTNF').AsDateTime;

        ARECPSQNF.Selected := True;
      end;
    end;
  end;
end;

procedure uFKPesquisa(ATabela: String;AValue: Variant); STDCall;
begin
  ATabela := UpperCase(ATabela);
  if ((not oEmpty(ATabela)) and (not oEmpty(AValue)) and (AValue <> '0')) then
  with FrmPrincipal,FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;

      if (ATabela = 'TAB_CAT') or (ATabela = 'TAB_SCT') then
         SQL.Add('SELECT PRO_CPRO,PRO_DPRO FROM CAD_PRO WHERE IDSCT = '''+AValue+'''');

      Prepare;
      ExecQuery;

      if not Eof then
         oException(Nil,'Acesso Negado !'+#13+
                        'Sub Categoria registrada no cadastro de produtos.'+#13+#13+
                         Current.Vars[0].AsString+#13+
                         Current.Vars[1].AsString);

    end
  finally
    oCTransact(TFBConsulta);
  end;
end;

procedure uPSQCMUN(var RECEndereco: TRECPedidos); STDCall;
begin
  with FrmPesquisaCodigoMunicipal do
  try
    TFrmPesquisaCodigoMunicipal._ExecForm(Application,FrmPesquisaCodigoMunicipal,False,fsNormal,0,0,0,0,RECEndereco.UF); //,False,fsNormal,0,0,RECEndereco.CMUN,0,'');
  finally
    if REC_SHE_DEF.Selected then
    RECEndereco.CMUN := REC_SHE_DEF.FB_SQL_TAB;
  end;
end;

procedure uPSQLogradouros(var ARECEndereco: TRECEnderecos); STDCall;
begin
  ARECEndereco.Selected         := False;
  ARECEndereco.Id               := 0;
  ARECEndereco.Tipo             := EmptyStr;
  ARECEndereco.Logradouro       := EmptyStr;
  ARECEndereco.Logradouro_Abrev := EmptyStr;
  ARECEndereco.Complemento      := EmptyStr;
  ARECEndereco.Cep              := EmptyStr;
  ARECEndereco.Bairro           := EmptyStr;
  ARECEndereco.Bairro_Abrev     := EmptyStr;
  ARECEndereco.Cidade           := EmptyStr;
  ARECEndereco.Cidade_Abrev     := EmptyStr;
  ARECEndereco.CMUN             := EmptyStr;
  ARECEndereco.UF               := EmptyStr;
  ARECEndereco.UF_NO            := EmptyStr;
  ARECEndereco.Value            := EmptyStr;
  ARECEndereco.Field            := EmptyStr;

  with FrmPesquisaLogradouros do
  try
    TFrmPesquisaLogradouros._ExecForm(Application,FrmPesquisaLogradouros,false,fsNormal);
  finally
    if REC_SHE_DEF.Selected then
       with FrmPesquisaLogradouros do
       begin
         ARECEndereco.Selected         := True;
         ARECEndereco.Id               := CadastroId.AsInteger;
         ARECEndereco.Tipo             := CadastroTipo.AsString;
         ARECEndereco.Logradouro       := CadastroLogradouro.AsString;
         ARECEndereco.Logradouro_Abrev := CadastroLogradouro_Abrev.AsString;
         ARECEndereco.Complemento      := CadastroComplemento.AsString;
         ARECEndereco.Cep              := CadastroCep.AsString;
         ARECEndereco.Bairro           := CadastroBairro.AsString;
         ARECEndereco.Bairro_Abrev     := CadastroBairro_Abrev.AsString;
         ARECEndereco.Cidade           := CadastroCidade.AsString;
         ARECEndereco.Cidade_Abrev     := CadastroCidade_Abrev.AsString;
         ARECEndereco.CMUN             := CadastroCMUN.AsString;
         ARECEndereco.UF               := CadastroUF.AsString;
       end;
  end;
end;

function uLoadZoom(Imagem: TPicture; aProduto: Array of String): LongInt; STDCall;
begin
  result := 0;
  if (Imagem <> Nil) and (not oEmpty(aProduto[0])) then
  try
    FrmProduto_Imagem := TFrmProduto_Imagem.Create(Application,Imagem,aProduto);
    FrmProduto_Imagem.ShowModal;
  finally
    FreeAndNil(FrmProduto_Imagem);
  end;
end;

function uPesquisa_Produto(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '=';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;
begin
  { ATipo
    0 - Apenas Atacado
    1 - Atacado
    2 - Atacarejo
    3 - Compras
  }
  with FrmPrincipal,FBird do
  try
    with FBCAD_PRO do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SP_CAD_PRO_PSQ_TMP');
      SQL.Add('(');

      SQL.Add(''''+IntToStr(AIDEP)+''',');
      SQL.Add(''''+ADTXT +''',');
      SQL.Add(''''+AFTXT +''',');
      SQL.Add('NULL,');
      SQL.Add('NULL,');
      SQL.Add(''''+AWHERE+''',');
      SQL.Add(''''+ALIKE1+''',');
      SQL.Add(''''+ALIKE2+''',');
      SQL.Add(''''+AFDT  +''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT1)+''',');
      SQL.Add(''''+FormatDateTime('mm/dd/yy',ADDT2)+''',');
      SQL.Add('''ARTIGO,DGCP''');
      SQL.Add(')');
      Open;
    end;
  finally
    result := 0;
    if FBCAD_PRO.State = dsBrowse then
    begin
      FBCAD_PRO.Last;
      result := FBCAD_PROId.AsInteger;
      if FBCAD_PRO.RecNo > 1 then
      try
        FrmProduto_Pesquisa := TFrmProduto_Pesquisa.Create(Nil);
        FrmProduto_Pesquisa.DBGConsulta.FocusedAbsoluteIndex := IFThen((Pos('NCM',AFTXT) > 0) or (oEmpty(FBCAD_PRODGCP.AsString)),FrmProduto_Pesquisa.DBGConsultaDECP.Index,FrmProduto_Pesquisa.DBGConsultaDGCP.Index);
        FrmProduto_Pesquisa.ShowModal;
      finally
        result := IFThen(FrmProduto_Pesquisa.Editado,FBCAD_PROId.AsInteger,0);
        FreeAndNil(FrmProduto_Pesquisa);
      end;
    end;
  end;
end;

procedure uBxCaixa(AIDPedido: Integer); STDCAll;
begin
end;

procedure uBX_DUP(AEmpresa,ANotaFiscal,AIDRomaneio: Variant); STDCall;
begin
  if ((oEmpty(ANotaFiscal)) or (oEmpty(AIDRomaneio))) then
     Exit;

  with FBird,FrmPrincipal do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
    end;
  finally
    oCTransact(TFBConsulta);
  end;
  { Ricardo - Use TRecord + Ponteiros para capturar as informações }
end;

procedure uBXPedidos(AaIDPedido: array of Integer; ABSheildEdicao: Boolean = False); STDCall;
begin
end;

procedure uPSQSCORE(ATForm: TForm; AIDPK: Variant; ADEPK: String); STDCall;
begin
  if Assigned(frmcad_cli_inf) then
  begin
    frmcad_cli_inf._Pedidos(AIDPK,ADEPK);
    frmcad_cli_inf.BringToFront;
    frmcad_cli_inf.SetFocus;
  end else
  begin
    frmcad_cli_inf := Tfrmcad_cli_inf.Create(Application,AIDPK,ADEPK);
    frmcad_cli_inf.Show;
  end;
end;

function uPSQCadastroFiscal(ATexto: String): TRECCadastros; STDCall;
begin
  FrmConsultaCNPJ := TFrmConsultaCNPJ.Create(Application,ATexto);
  try FrmConsultaCNPJ.ShowModal
  finally
    Result := FrmConsultaCNPJ.RECCadastros;
    FreeAndNil(FrmConsultaCNPJ);
  end;
end;

function uRETDTVencimento(AData: TDate): TDate; STDCall;
begin
  if AData <= 0 then
     AData := RECParametros.SHE_DATA;

 { with FrmPrincipal,FBird do
  try
    oRTransact(TFBCadastro);
    with FBTAB_FER do
         repeat
           Close;
           Params[0].Value := FormatDateTime('dd/mm',AData);
           Prepare;
           Open;
           if not Eof then
              AData := IncDay(AData,1);

           if DayOfWeek(AData) = 1 then // domingo
              AData := IncDay(AData,1) else
           if DayOfWeek(AData) = 7 then // sábado
              AData := IncDay(AData,2);
         until Eof;
  finally
    oCTransact(TFBCadastro);
  end; }

  result := AData;
end;

function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String;
begin
  result := EmptyStr;
  if (RECParametros.FIN_LIMITE_CARTEIRA > 0) and (ASTCobranca <> 'SEM COBRANÇA') and (ASTFatura = '1') and (AIDCliente <> RECParametros.CD_ID) then
  try
    oOTransact(FBird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      { VER FUNCIONÁRIOS / REPRESENTANTES }
      Close;
      SQL.Clear;
      SQL.Add('SELECT 1 FROM CAD_CLI');
      SQL.Add('WHERE  CD_ID = ''' + AIDCLIENTE + '''');
      SQL.Add('AND (FANTASIA CONTAINING ''FUNCION''' );
      SQL.Add('OR   FANTASIA CONTAINING ''REPRESE'')');
      ExecQuery;

      if Eof then
      begin
        { Carteira Logada }
        Close;
        SQL.Clear;
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM ' + oREPZero('VW_FIN_REC_CAR','_',RECParametros.EP_ID,3) + ' AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');

        { Bancários }
        SQL.Add('UNION');
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');
        SQL.Add('UNION');
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_002 AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');
        SQL.Add('UNION');
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_003 AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');
        SQL.Add('UNION');
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_004 AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');
        SQL.Add('UNION');
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_005 AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');
        SQL.Add('UNION');
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_006 AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');
        SQL.Add('UNION');
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_007 AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');
        SQL.Add('UNION');
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_008 AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');
        SQL.Add('UNION');
        SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM VW_FIN_REC_BAN_009 AS PK');
        SQL.Add('WHERE    PK.IDCD    = :IDCD');
        SQL.Add('AND      PK.FIN_BLQ = 1');
        SQL.Add('GROUP BY 1');

        ParamByName('IDCD').Value := AIDCliente;
        Prepare;
        ExecQuery;

        result := Trim(Current.Vars[0].AsString);
      end;  
    end;
  finally
    oCTransact(FBird.TFBConsulta);
  end;
end;

function uLimiteVenda(ASTCobranca,ASTFatura,AIDCliente: String;ATotal: Double): string; STDCall;
var
  AVCRD: Double;
begin
  result := '';

  if (RECParametros.FIN_LIMITE_CREDITO) and (ASTCobranca <> 'SEM COBRANÇA') and (ASTFatura = '1') then
  try
    oRTransact(FBird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      { VER FUNCIONÁRIOS / REPRESENTANTES }
      Close;
      SQL.Clear;
      SQL.Add('SELECT 1 FROM CAD_CLI');
      SQL.Add('WHERE  CD_ID = ''' + AIDCLIENTE + '''');
      SQL.Add('AND (FANTASIA CONTAINING ''FUNCION''' );
      SQL.Add('OR   FANTASIA CONTAINING ''REPRESE'')');
      ExecQuery;

      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT VCRD FROM CAD_CLI_CRD');
        SQL.Add('WHERE  IDEP = ''' + RECParametros.EP_ID + '''');
        SQL.Add('AND    IDCD = ''' + AIDCLIENTE       + '''');
        ExecQuery;
        AVCRD := Current.Vars[0].AsCurrency;

        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(FIN_VPEN),COUNT(*) FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
        SQL.Add('WHERE  FIN_CCLI = '''+AIDCliente+'''');
        SQL.Add('AND    FIN_STFI NOT CONTAINING ''CANCELADO''');
        SQL.Add('AND    FIN_STFI NOT CONTAINING ''BAIXADO''');
        SQL.Add('AND    FIN_STFI NOT LIKE ''PAGO%''');
        ExecQuery;
        VALOR_BANCARIO := Current.Vars[0].AsFloat;
        ITENS_BANCARIO := Current.Vars[1].AsInteger;

        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(FIN_VPEN*IIF(FIN_CONC > 0,FIN_CONC,1)),COUNT(*) FROM '+SLPrincipal.Values['fin_rec_car_bai']);
        SQL.Add('WHERE  FIN_CCLI = '''+AIDCliente+'''');
        SQL.Add('AND    FIN_STFI NOT CONTAINING ''CANCELADO''');
        SQL.Add('AND    FIN_STFI NOT CONTAINING ''BAIXADO''');
        SQL.Add('AND    FIN_STFI NOT LIKE ''PAGO%''');
        ExecQuery;
        VALOR_CARTEIRA := Current.Vars[0].AsFloat;
        ITENS_CARTEIRA := Current.Vars[1].AsInteger;

        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(PK.TCDE),COUNT(*)');
        SQL.Add('FROM '+oREPZero('VW_PED_VEN_CAB','_',RECParametros.EP_ID,3)+' AS PK');
        SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
        SQL.Add('AND    PK.IDCD = '''+AIDCliente      +'''');
        SQL.Add('AND    PK.FAPD = 1'); // Tipo   Faturamento
        SQL.Add('AND    PK.BQPD = 1'); // Tipo   Bloqueável Financeiramente
        SQL.Add('AND    PK.APST = 1'); // Status Pendente
        SQL.Add('AND    PK.CSCD = 0'); // Status Pendente
        ExecQuery;
        VALOR_PEDIDO := Current.Vars[0].AsFloat;
        ITENS_PEDIDO := Current.Vars[1].AsInteger;

        VALOR_SALDO := AVCRD - (VALOR_BANCARIO+VALOR_CARTEIRA);
        if VALOR_SALDO < 0 then
        VALOR_SALDO := 0;

        if ATotal > VALOR_SALDO then
        result := 'AGUARDANDO CRÉDITO';
      end;
    end;
  finally
    if not oEmpty(result) then
    with FBird.SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*)');
      SQL.Add('FROM   CAD_CLI');
      SQL.Add('WHERE  ID = '''+AIDCliente+'''');
      SQL.Add('AND    EXISTS (SELECT EP.ID FROM TAB_PAR_SIS AS EP WHERE EP.CNPJ = CLI_CNPJ)');
      ExecQuery;
      if Current.Vars[0].AsInteger > 0 then
         result := EmptyStr;
    end;
    oCTransact(FBird.TFBConsulta);
  end;
end;

procedure uLiberaFinanceiro; STDCall;
begin
end;

procedure TFrmPrincipal.TPrincipalTimer(Sender: TObject);
          function SecondsIdle: DWord;
          var
            liInfo: TLastInputInfo;
          begin
            liInfo.cbSize := SizeOf(TLastInputInfo);
            GetLastInputInfo(liInfo);

            Result := (GetTickCount - liinfo.dwTime) DIV 1000;
          end;
var
  i: word;          
begin
  if FrmPrincipal <> Nil then
  with FrmPrincipal, FBird do
  begin
    RECParametros.SecondsIdle := SecondsIdle;

    { RODAPÉ }
    SBRodape.Panels[4].Text := RECParametros.STCX; { Caixa }
    SBRodape.Panels[6].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]); { Tempo }

    if RECParametros.SecondsIdle > 0 then
    begin
      if RECParametros.SecondsIdle mod 300 = 0  then
      begin
        { MAIN DB }
        if not FBird.DBErp.TestConnected then
        try
          DBErp.CloseDataSets;
          DBErp.ForceClose;

          DBErp.Connected := True;
        except
          ;
        end;

        try
          oOTransact(TFBConsulta);
          with SQLFBConsulta do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT * FROM rdb$relation_fields');
            ExecQuery;
          end;
          oCTransact(TFBConsulta);
        except
          oCTransact(TFBConsulta,ltRollback);
        end;
      end;

      if RECParametros.SecondsIdle mod 600 = 0  then
      begin
        RECParametros.ForceClose := False;

        { VER FORMS FSNORMAL }
        if (not Assigned(FrmVEN_PRC)) and
           (not Assigned(FrmVEN_PED)) and
           (not Assigned(FrmVEN_PRG)) and
           (not Assigned(FrmVEN_NFE)) and
           (not Assigned(FrmCAD_PRO_EDI)) and
           (not Assigned(FrmPesquisa)) and
           (not Assigned(FrmPesquisa_OLD)) then
        begin
          { VER FORMS }
          try
            for i := MDIChildCount - 1 downto 0 do
            if MDIChildren[i] <> Nil then
            if MDIChildren[i].HelpKeyword <> '0' then
            Exit;
          except
            Application.ProcessMessages;
          end;

          { FECHA FORMS }
          try
            for i := MDIChildCount - 1 downto 0 do
            if MDIChildren[i] <> Nil then
            if MDIChildren[i].HelpKeyword = '0' then
            MDIChildren[i].Free;
          except
            Application.ProcessMessages;
          end;

          { VER FORMS ABERTOS }
          try
            for i := MDIChildCount - 1 downto 0 do
            if MDIChildren[i] <> Nil then
            Exit;
          except
            Application.ProcessMessages;
          end;

          RECParametros.ForceClose := True;
          Self.Close;
        end;  
      end;
    end;

    { VER CAIXA }
    if RECParametros.CDCX = 0 then
    bExecEvent('Caixa');

    { EXEC CAIXA }
    ACTCAI_ABR_PAD.Enabled := (((RECParametros.STCX = 'Caixa Fechado') or (RECParametros.STCX = 'Caixa não aberto')) and (RECUsuarios.Caixa));
    ACTCAI_RAB.Enabled     := (ACTCAI_ABR_PAD.Enabled);
    ACTCAI_FEC.Enabled     := ((not ACTCAI_ABR_PAD.Enabled) and (RECUsuarios.Caixa));
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Randomize;

  if ClientHandle <> 0 then
  if not(GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)  then
  SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  try TPrincipal.Enabled := False;

  _SetHintDefault;
  _USER_LOGIN(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP);

  finally TPrincipal.Enabled := True;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if oEmpty(RECUsuarios.Id) then
  Close;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if oEmpty(RECUsuarios.Id) then
  Exit;

  if Pos(RECUsuarios.Grupo,'DIRVEN') > 0 then
  TFrmCTR_PED._ExecForm(Application,FrmCTR_PED);

  _Aviso_Reserva;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var i: Word;
begin
  if oEmpty(RECUsuarios.Id) then
  Exit;

  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  if not RECParametros.ForceClose then
  if oYesNo(Handle,'Sair do Sistema ?') = mrNo then
  Abort;

  RECParametros.ForceClose := False;
end;


procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
begin
  SBRodape.Panels[3].Width := SBRodape.Width - 20 - (SBRodape.Panels[0].Width + SBRodape.Panels[1].Width + SBRodape.Panels[2].Width + SBRodape.Panels[4].Width + SBRodape.Panels[5].Width + SBRodape.Panels[6].Width + SBRodape.Panels[7].Width);
  SBRodape.Repaint;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
var
  XRect: TRect;
begin
  if FrmPrincipal <> Nil then
  begin
    GetWindowRect(Application.MainForm.ClientHandle,XRect);
    XRect.Top := IPrincipal.Top;

    Canvas.FillRect(XRect);
    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);

    Paint;
  end;
end;

procedure TFrmPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  APoint  : TPoint;
  AControl: TControl;
begin
  if _SetMouseTracking then
  begin
    GetCursorPos(APoint);
    AControl := FindDragTarget(APoint, True);  { Mouse.CursorPos }

    if (AControl = Nil) or (AControl <> Sender) then
        Perform(WM_MOUSELEAVE, 0, 0) else
        AControl.Hint := IFThen(Self.Hint <> EmptyStr,Self.Hint + 'SAIU',AControl.HelpKeyword);
  end;
end;

procedure TFrmPrincipal._SetMouseLeave(var AMessage: TMessage);
begin
  inherited;
  AMessage.Result := 1;
end;

function TFrmPrincipal._SetMouseTracking: Boolean;
begin
  with ATrackMouseEvent do
  begin
    cbSize      := sizeof(ATrackMouseEvent);
    dwFlags     := TME_LEAVE;
    hwndTrack   := Self.Handle;
    dwHoverTime := HOVER_DEFAULT;
  end;

  result := TrackMouseEvent(ATrackMouseEvent);
end;

procedure TFrmPrincipal._SetHintDefault;
var
  AhintBK: String;
  AHintPI,
  AHelpPI: PPropInfo;
  i: Word;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i].ClassType = TPanel then
       tag := 0;

    AHelpPI := GetPropInfo(Components[i].ClassInfo,'HelpKeyword');
    AHintPI := GetPropInfo(Components[i].ClassInfo,'Hint');

    if (AHintPI <> Nil) and (AHelpPI <> Nil) then
    begin
       AHintBK := GetStrProp(Components[i] , AHintPI);
       SetStrProp(Components[i], AHelpPI   , AHintBK);
    end;
  end;
end;

procedure TFrmPrincipal.ACTMP_ABOUTExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmsobre,Frmsobre);
end;

procedure TFrmPrincipal.ACTMP_SAIDAExecute(Sender: TObject);
begin
  if ATHR_ITEM = 0 THEN
  Close;
end;

procedure TFrmPrincipal.ACTADM_DENIEDExecute(Sender: TObject);
begin
  raise exception.Create(PChar(ACTADM_DENIED.Caption) + #13 +
                         PChar(ACTADM_DENIED.Hint));
end;

procedure TFrmPrincipal.ACTADM_PARAMETROSExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTADM_BACKUPExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTADM_COMISSAOExecute(Sender: TObject);
          procedure OTMComissoes;
          var
            DtMedia: Integer;
            v1,v2,
            PrecoTabelaMais5,
            PrecoTabelaMenos5,
            ComissaoPedido,
            ComissaoItem: double;
          begin
            try
              oOTransact(FBird.TFBConsulta);
              { Abre os cabeçalhos das Vendas - PED_VEN_CAB }
              with FBird.SQLFBConsulta do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT   PK.ID,ROM_STPD,REP_COMI,PAG_PARC,PAG_PRAZ,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,');
                SQL.Add('         PAG_D010,PAG_D011,PAG_D012,PAG_D013,PAG_D014,PAG_D015,PAG_D016,PAG_D017,PAG_D018,PAG_D019,PAG_D020,PK.ROM_DBAI');
                SQL.Add('FROM     PED_VEN_CAB AS PK');
                SQL.Add('JOIN     CAD_REP     AS CR ON (CR.ID = PK.IDCR)');
                SQL.Add('JOIN     TAB_PAG     AS PG ON (PG.ID = PK.CDPG)');
               // SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= DATEADD(MONTH,-1,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE))');
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= ''04/01/26''');
              //SQL.Add('AND      PK.DEPD = ''109506''');
                SQL.Add('ORDER BY PK.DTBX');
                ExecQuery;
              end;

              while not FBird.SQLFBConsulta.Eof do
              begin
                DtMedia := Trunc((FBird.SQLFBConsulta.Current.Vars[05].AsInteger+FBird.SQLFBConsulta.Current.Vars[06].AsInteger+FBird.SQLFBConsulta.Current.Vars[07].AsInteger+FBird.SQLFBConsulta.Current.Vars[08].AsInteger+FBird.SQLFBConsulta.Current.Vars[09].AsInteger+
                                  FBird.SQLFBConsulta.Current.Vars[10].AsInteger+FBird.SQLFBConsulta.Current.Vars[11].AsInteger+FBird.SQLFBConsulta.Current.Vars[12].AsInteger+FBird.SQLFBConsulta.Current.Vars[13].AsInteger+FBird.SQLFBConsulta.Current.Vars[14].AsInteger+
                                  FBird.SQLFBConsulta.Current.Vars[15].AsInteger+FBird.SQLFBConsulta.Current.Vars[16].AsInteger+FBird.SQLFBConsulta.Current.Vars[17].AsInteger+FBird.SQLFBConsulta.Current.Vars[18].AsInteger+FBird.SQLFBConsulta.Current.Vars[19].AsInteger+
                                  FBird.SQLFBConsulta.Current.Vars[20].AsInteger+FBird.SQLFBConsulta.Current.Vars[21].AsInteger+FBird.SQLFBConsulta.Current.Vars[22].AsInteger+FBird.SQLFBConsulta.Current.Vars[23].AsInteger+FBird.SQLFBConsulta.Current.Vars[24].AsInteger)/
                                  FBird.SQLFBConsulta.Current.Vars[03].AsInteger);

                { Abre os itens do cabeçalho - PED_VEN_ITE }
                with FBird.SQLFBFKConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT   PK.ITEM,PK.IDCP,ROM_UNIT,PRO_PREC,PRO_PPRZ');
                  SQL.Add('FROM     PED_VEN_ITE AS PK');
                  SQL.Add('JOIN     CAD_PRO     AS CP ON (CP.ID = PK.IDCP)');
                  SQL.Add('WHERE    PK.IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                  SQL.Add('ORDER BY PK.ITEM');
                  ExecQuery;
                end;

                while not FBird.SQLFBFKConsulta.Eof do
                begin
                  Application.ProcessMessages;
                  SBRodape.Panels[0].Text := 'OTMPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[25].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  { Subtraindo 5% do Preco de Tabela }
                  PrecoTabelaMenos5 := FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat - ((FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat*5)/100);

                  { Adicionando 5% do Preco de Tabela }
                  PrecoTabelaMais5  := FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat + ((FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat*5)/100);

                  { Iniciando ComissaoItem com o valor da comissao do Consulta de representantes }
                  ComissaoItem := FBird.SQLFBConsulta.Current.Vars[2].AsFloat;

                  { Descartar o cálculo para os representantes cadastrados com comissão default superior à 3%
                    Descartar Abatimentos Devoluções }
                  if (ComissaoItem = 3) and
                     (FBird.SQLFBConsulta.Current.Vars[1].AsString <> 'ABATIMENTO') and (FBird.SQLFBConsulta.Current.Vars[1].AsString <> 'DEVOLUÇÃO') then
                  begin
                    if ((FBird.SQLFBConsulta.Current.Vars[4].AsInteger <= 21) and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= PrecoTabelaMenos5)) or
                       ((DtMedia <= 75 )                                      and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat  = FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat)) or
                       ((DtMedia >  75 )                                      and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= PrecoTabelaMais5 )) then
                    ComissaoItem := 4;
                  end;

                  try
                    oOTransact(FBird.TFBEdicao);
                    with FBird.SQLFBEdicao do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('UPDATE PED_VEN_ITE');
                      SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoItem),',','.')+'''');
                      SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString  +'''');
                      SQL.Add('AND    ITEM = '''+FBird.SQLFBFKConsulta.Current.Vars[0].AsString+'''');
                      SQL.Add('AND    IDCP = '''+FBird.SQLFBFKConsulta.Current.Vars[1].AsString+'''');
                      ExecQuery;
                    end;
                    FBird.TFBEdicao.Commit;
                  except
                    FBird.TFBEdicao.Rollback;

                    SBRodape.Panels[0].Text := 'OTMErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                    SBRodape.Refresh;
          
                    Abort;
                  end;
                  FBird.SQLFBFKConsulta.Next;
                end;
          
                { Utiliza a formula da média ponderada para calcular comissão total do pedido de venda
                  Ignora caso Algum item esteja sem comissao }

                with FBird.SQLFBPKConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT SUM(ROM_UNIT*ROM_COMI),SUM(ROM_UNIT)');
                  SQL.Add('FROM   PED_VEN_ITE');
                  SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                  SQL.Add('AND    ROM_COMI > 0');
                  ExecQuery;

                  v1 := Current.Vars[0].AsFloat;
                  v2 := Current.Vars[1].AsFloat;
                  ComissaoPedido := 0;
                  if (v1 > 0) and (v2 > 0) then
                  ComissaoPedido := RoundTO(v1/v2,-2);
                end;

                try
                  oOTransact(FBird.TFBEdicao);
                  with FBird.SQLFBEdicao do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('UPDATE PED_VEN_CAB');
                    SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoPedido),',','.')+'''');
                    SQL.Add('WHERE        ID = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    ExecQuery;
                  end;
                  FBird.TFBEdicao.Commit;
                except
                  FBird.TFBEdicao.Rollback;

                  SBRodape.Panels[0].Text := 'OTM Erro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[0].Text := 'Otimotex Fim';
              SBRodape.Refresh;
            end;
          end;

          procedure LEBComissoes;
          var
            v1,v2,
            ComissaoPedido,ComissaoItem: double;
          begin
            try
              oOTransact(FBird.TFBConsulta);
              { Abre os cabeçalhos das Vendas - ROM_CAB }
              with FBird.SQLFBConsulta do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT   PK.ID,PK.IDCR,ROM_COMI,ROM_TCDE,ROM_DNFS,ROM_STPD');
                SQL.Add('FROM     PED_VEN_CAB_004 AS PK');
                SQL.Add('JOIN     CAD_REP         AS CR ON (CR.ID = PK.IDCR)');
                SQL.Add('JOIN     TAB_PAG         AS PG ON (PG.ID = PK.CDPG)');
                //SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= DATEADD(MONTH,-1,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE))');
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= ''04/01/26''');
              //SQL.Add('AND      PK.DEPD = ''99669''');
                SQL.Add('ORDER BY PK.DTBX');
                ExecQuery;
              end;

              while not FBird.SQLFBConsulta.Eof do
              begin
                if FBird.SQLFBConsulta.Current.Vars[5].AsString <> 'ABATIMENTO' then
                begin
                  { Abre os itens do cabeçalho - ROM_ITE }
                  with FBird.SQLFBFKConsulta do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('SELECT   ITEM,IDCP,ROM_UNIT,ROM_COMI');
                    SQL.Add('FROM     PED_VEN_ITE_004');
                    SQL.Add('WHERE    IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    SQL.Add('ORDER BY ITEM');
                    ExecQuery;
                  end;

                  ComissaoItem := 0;
                  while not FBird.SQLFBFKConsulta.Eof do
                  begin
                    Application.ProcessMessages;
                    SBRodape.Panels[1].Text := 'LEBPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[4].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                    SBRodape.Refresh;

                    { Procura na tabela de categorias a faixa de preço correspondente }
                    with FBird.SQLFBPKConsulta do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('SELECT   CP.SKU,FK.SEQUENCIA,FK.VUPRC_INI,FK.VUPRC_FIM,FK.PUCOM_PAD');
                      SQL.Add('FROM     CAD_PRO     AS CP');
                      SQL.Add('JOIN     TAB_SCT     AS PK ON (PK.ID = CP.IDSCT)');
                      SQL.Add('JOIN     TAB_SCT_PRC AS FK ON (FK.ID = PK.ID)');
                      SQL.Add('WHERE    CP.ID = '''+FBird.SQLFBFKConsulta.Current.Vars[1].AsString+'''');
                      SQL.Add('ORDER BY FK.SEQUENCIA');
                      ExecQuery;
                    end;

                    { Começa pegando a comissão mais baixa na faixa de preços }
                    ComissaoItem := FBird.SQLFBPKConsulta.Current.Vars[4].AsFloat;
                    if (ComissaoItem = 0) then
                       Tag := 0;
                    while not FBird.SQLFBPKConsulta.Eof do
                    begin
                      { Atualiza a comissão mínima }
                      if FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= FBird.SQLFBPKConsulta.Current.Vars[2].AsFloat then
                      ComissaoItem := FBird.SQLFBPKConsulta.Current.Vars[4].AsFloat;

                      { Atualiza a comissão conforme a faixa de preço }
                      if (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= FBird.SQLFBPKConsulta.Current.Vars[2].AsFloat) and
                         (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat <= FBird.SQLFBPKConsulta.Current.Vars[3].AsFloat) then
                      begin
                        ComissaoItem := FBird.SQLFBPKConsulta.Current.Vars[4].AsFloat;
                        Break;
                      end;

                      FBird.SQLFBPKConsulta.Next;
                    end;

                    try
                      oOTransact(FBird.TFBEdicao);
                      with FBird.SQLFBEdicao do
                      begin
                        Close;
                        SQL.Clear;
                        SQL.Add('UPDATE PED_VEN_ITE_004');
                        SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoItem),',','.')+'''');
                        SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString  +'''');
                        SQL.Add('AND    ITEM = '''+FBird.SQLFBFKConsulta.Current.Vars[0].AsString+'''');
                        SQL.Add('AND    IDCP = '''+FBird.SQLFBFKConsulta.Current.Vars[1].AsString+'''');
                        ExecQuery;
                      end;
                      FBird.TFBEdicao.Commit;
                    except
                      FBird.TFBEdicao.Rollback;

                      SBRodape.Panels[1].Text := 'LEBErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                      SBRodape.Refresh;

                      Abort;
                    end;
                    FBird.SQLFBFKConsulta.Next;
                  end;

                  { Utiliza a formula da média ponderada para calcular comissão total do pedido de venda
                    Ignora caso Algum item esteja sem comissao }

                  if ComissaoItem > 0 then
                  with FBird.SQLFBPKConsulta do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('SELECT SUM(ROM_UNIT*ROM_COMI),SUM(ROM_UNIT)');
                    SQL.Add('FROM   PED_VEN_ITE_004');
                    SQL.Add('WHERE  IDPK = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    SQL.Add('AND    ROM_COMI > 0');
                    ExecQuery;

                    v1 := Current.Vars[0].AsFloat;
                    v2 := Current.Vars[1].AsFloat;
                    ComissaoPedido := RoundTO(v1/v2,-2);
                  end else
                  ComissaoPedido := 0;
                end else
                ComissaoPedido   := 4;

                try
                  oOTransact(FBird.TFBEdicao);
                  with FBird.SQLFBEdicao do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('UPDATE PED_VEN_CAB_004');
                    SQL.Add('SET    ROM_COMI = '''+OStrTran(FloatToStr(ComissaoPedido),',','.')+'''');
                    SQL.Add('WHERE        ID = '''+FBird.SQLFBConsulta.Current.Vars[0].AsString+'''');
                    ExecQuery;
                  end;
                  FBird.TFBEdicao.Commit;
                except
                  FBird.TFBEdicao.Rollback;

                  SBRodape.Panels[1].Text := 'LEBErro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[1].Text := 'Lebianco Fim';
              SBRodape.Refresh;
            end;
          end;
begin
  try
    IPrincipal.Enabled := False;
  OTMComissoes;
  LEBComissoes;

  finally
    IPrincipal.Enabled := True;
  end;
end;

procedure TFrmPrincipal.ACTUSER_LOGINExecute(Sender: TObject);
var
  i: integer;
begin
  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  FrmLogin         := TFrmLogin.create(Nil);
  FrmLogin.Caption := 'Login de Usuário';

  try
    FrmLogin.ShowModal;
  finally
    try
      if (FBird.DBErp.TestConnected) and (FrmLogin.RECLogin.Selected) then
          _USER_LOGIN(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP) else
      begin
        RECUsuarios.Id := 0;
        Close;
      end;
    finally
      FreeAndNil(FrmLogin);
    end;
  end;
end;

procedure TFrmPrincipal.ACTUSER_PASSWORDExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmSenha,FrmSenha);
end;

procedure TFrmPrincipal.ACTUSER_LOGINUpdate(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPrincipal._USER_LOGIN(AIDUSER: Variant; AIDEP,ADEEP: String);
          procedure _RSBAction(AAction: TAction; ARxSpeedButton: TRxSpeedButton; ARxSpeedCaption: String = '');
          begin
            ARxSpeedButton.Glyph   := Nil;
            ARxSpeedButton.Action  := Nil;

            AAction.ImageIndex := AAction.Tag + IFThen(AAction.Enabled,0,1);

            ARxSpeedButton.Action  := AAction;
            ARxSpeedButton.Enabled := True;
            ARxSpeedButton.Cursor  := IFThen(AAction.Enabled,crHandPoint,crNo);
            ARxSpeedButton.Caption := IFThen(ARxSpeedCaption = EmptyStr ,ARXSpeedButton.Caption,ARxSpeedCaption);
          end;
var
  AREC_SHE_DEF: TREC_SHE_DEF;
begin
  if oEmpty(AIDUSER) then
  Exit;

  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_USER');
      SQL.Add('SET    IDEP_UEP = ''' + AIDEP + ''',');
      SQL.Add('       IDEP_UDT = CURRENT_TIMESTAMP,');

      SQL.Add('       IP   = ''' + RECParametros.IP   + ''',');
      SQL.Add('       HOST = ''' + RECParametros.HOST + '''' );
      SQL.Add('WHERE  ID   = ''' + AIDUSER + '''');
      ExecQuery;
    end;
    oCTransact(TFBEdicao);

    bExecParametros(AIDEP);
    bExecUsuarios(AIDUSER);
    bExecCaixa;

    { PATH - Área de Trabalho }
    EPrincipal.InitialDir := RECParametros.SHE_PATH_DESKTOP;

    if EPrincipal.InitialDir  = EmptyStr then
       EPrincipal.InitialDir := 'C:\Sheild\Coletor';

    Application.ProcessMessages;
  except
    { nothing }
  end;

  { Parâmetros de Aberturas de Querys }
  FreeAndNil(SLPrincipal);
  SLPrincipal := TStringList.Create;

  SLPrincipal.Values['fin_rec_ban_bai'] := oREPZero('fin_rec_ban_bai','_',RECParametros.EP_ID,3);
  SLPrincipal.Values['fin_rec_car_bai'] := oREPZero('fin_rec_car_bai','_',RECParametros.EP_ID,3);
  SLPrincipal.Values['nfe_cab']         := oREPZero('nfe_cab'        ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['nfe_dup']         := oREPZero('nfe_dup'        ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['nfe_ite']         := oREPZero('nfe_ite'        ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['nfe_tra']         := oREPZero('nfe_tra'        ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['ped_com_cab']     := oREPZero('ped_com_cab'    ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['ped_com_ite']     := oREPZero('ped_com_ite'    ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['ped_prg_cab']     := oREPZero('ped_prg_cab'    ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['ped_prg_ite']     := oREPZero('ped_prg_ite'    ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['ped_ven_cab']     := oREPZero('ped_ven_cab'    ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['ped_ven_ite']     := oREPZero('ped_ven_ite'    ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['rom_cab']         := oREPZero('rom_cab'        ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['rom_ite']         := oREPZero('rom_ite'        ,'_',RECParametros.EP_ID,3);
  SLPrincipal.Values['fin_caption']     := 'Consultas em Carteira';
  SLPrincipal.Values['fin_hint']        := '';
  SLPrincipal.Values['fin_baixa']       := '';
  SLPrincipal.Values['fin_consulta']    := '';

  { Sheild }
  MPSheild.Visible := (RECUsuarios.Grupo = 'DEV');

  { Menu Lateral }
  if RECUsuarios.Grupo = 'FIN' then
  begin
    PNLFIN.Visible := True;
    PNLADM.Visible := False;
    PNLPCP.Visible := False;
  end else

  if Pos(RECUsuarios.Grupo,'LOGEXPPCP') > 0 then
  begin
    PNLPCP.Visible := True;
    PNLADM.Visible := False;
    PNLFIN.Visible := False;
  end else
  begin
    PNLADM.Visible := True;
    PNLFIN.Visible := False;
    PNLPCP.Visible := False;
  end;

  Application.ProcessMessages;

  { GRANT USER }
  oIREC_SHE_DEF(AREC_SHE_DEF);
  try
    { ACESSOS UTILITÁRIOS }
    { Nota Fiscal }
    AREC_SHE_DEF.GDescricao := 'Fiscal'; AREC_SHE_DEF.GReferencia := 'NFe'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTFIS_NFE_ADM.Enabled  := AREC_SHE_DEF.GView;

    { Logística }
    AREC_SHE_DEF.GDescricao := 'Logística'; AREC_SHE_DEF.GReferencia := 'Saídas'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTFIS_NFE_ADM.Enabled  := AREC_SHE_DEF.GView;

    { Cupom Fiscal Eletrônico }
    AREC_SHE_DEF.GDescricao := 'Fiscal'; AREC_SHE_DEF.GReferencia := 'CFe'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTFIS_NFE_ADM.Enabled  := AREC_SHE_DEF.GView;


    { ACESSOS CADASTROS }
    { Clientes }
    AREC_SHE_DEF.GDescricao := 'Cadastro'; AREC_SHE_DEF.GReferencia := 'Clientes'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_CLI_ADM.Enabled  := AREC_SHE_DEF.GView;

    { Representantes }
    AREC_SHE_DEF.GDescricao := 'Cadastro'; AREC_SHE_DEF.GReferencia := 'Representantes'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_REP_ADM.Enabled  := AREC_SHE_DEF.GView;

    { Fornecedores }
    AREC_SHE_DEF.GDescricao := 'Cadastro'; AREC_SHE_DEF.GReferencia := 'Fornecedores'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_FOR_ADM.Enabled  := AREC_SHE_DEF.GView;

    { Transportadoras }
    AREC_SHE_DEF.GDescricao := 'Cadastro'; AREC_SHE_DEF.GReferencia := 'Transportadoras'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_TRA_ADM.Enabled  := AREC_SHE_DEF.GView;

    { Containers }
    AREC_SHE_DEF.GDescricao := 'Cadastro'; AREC_SHE_DEF.GReferencia := 'Containers'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_CTNR_ADM.Enabled := AREC_SHE_DEF.GView;

    
    { ACESSOS CAIXA }
    { Abartura }
    AREC_SHE_DEF.GDescricao := 'Caixa'; AREC_SHE_DEF.GReferencia := 'Abertura'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAI_ABR_PAD.Enabled  := AREC_SHE_DEF.GView;

    { Fechamento }
    AREC_SHE_DEF.GDescricao := 'Caixa'; AREC_SHE_DEF.GReferencia := 'Fechamento'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAI_FEC.Enabled      := AREC_SHE_DEF.GView;

    { Sangrias }
    AREC_SHE_DEF.GDescricao := 'Caixa'; AREC_SHE_DEF.GReferencia := 'Sangrias'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAI_LSS.Enabled      := AREC_SHE_DEF.GView;

    { Tabelas de Sangrias }
    AREC_SHE_DEF.GDescricao := 'Caixa'; AREC_SHE_DEF.GReferencia := 'Tabela de Sangrias'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAI_TSS.Enabled      := AREC_SHE_DEF.GView;

    { Fluxo de Caixa }
    AREC_SHE_DEF.GDescricao := 'Caixa'; AREC_SHE_DEF.GReferencia := 'Fluxo de Caixa'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAI_FLC.Enabled      := AREC_SHE_DEF.GView;


    { ACESSOS COMPRAS }
    AREC_SHE_DEF.GDescricao := 'Pedidos'; AREC_SHE_DEF.GReferencia := 'Compras'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTPED_PDC_ADM.Enabled  := AREC_SHE_DEF.GView;


    { ACESSOS CUSTOS }
    AREC_SHE_DEF.GDescricao  := 'Custos'; AREC_SHE_DEF.GReferencia := 'Produtos'; AREC_SHE_DEF.GRegra := 'Importados'; oUSER(AREC_SHE_DEF);
    ACTPED_PDC_CUSTO.Enabled := AREC_SHE_DEF.GView;


    { ACESSOS ESTOQUE }
    { Controle }
    AREC_SHE_DEF.GDescricao    := 'Estoque'; AREC_SHE_DEF.GReferencia := 'Produtos'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_EST_ADM.Enabled := AREC_SHE_DEF.GView; { Controle }
    ACTCAD_PRO_EST_LCT.Enabled := AREC_SHE_DEF.GAppend; { Entradas }

    { Etiquetas }
    AREC_SHE_DEF.GDescricao    := 'Estoque'; AREC_SHE_DEF.GReferencia := 'Etiquetas'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_EST_ETQ.Enabled := AREC_SHE_DEF.GAppend;

    { Qualidade }
    AREC_SHE_DEF.GDescricao    := 'Estoque'; AREC_SHE_DEF.GReferencia := 'Qualidade'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_EST_DEF.Enabled := AREC_SHE_DEF.GView;


    { ACESSOS EXPEDIÇÃO }
    AREC_SHE_DEF.GDescricao        := 'Estoque'; AREC_SHE_DEF.GReferencia := 'Expedição'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_EST_EXP_COL.Enabled := AREC_SHE_DEF.GView; { Coletor }
    ACTCAD_PRO_EST_EXP_MAN.Enabled := AREC_SHE_DEF.GView; { Manual  }


    { ACESSOS FINANCEIRO }
    { Recebimentos Bancários }
    AREC_SHE_DEF.GDescricao := 'Financeiro'; AREC_SHE_DEF.GReferencia := 'Recebimentos Bancários'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTFIN_REC_BAN.Enabled  := AREC_SHE_DEF.GView;

    { Recebimentos em Carteira }
    AREC_SHE_DEF.GDescricao := 'Financeiro'; AREC_SHE_DEF.GReferencia := 'Recebimentos Carteira'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTFIN_REC_CRT.Enabled  := AREC_SHE_DEF.GView;

    { Duplicatas }
    AREC_SHE_DEF.GDescricao := 'Financeiro'; AREC_SHE_DEF.GReferencia := 'Recebimentos Bancários'; AREC_SHE_DEF.GRegra := 'Boletos'; oUSER(AREC_SHE_DEF);
    ACTFIN_REC_DUP.Enabled  := AREC_SHE_DEF.GView;

    { Controle de Pagamentos }
    AREC_SHE_DEF.GDescricao := 'Financeiro'; AREC_SHE_DEF.GReferencia := 'Pagamentos'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTFIN_PAG_CMV.Enabled  := AREC_SHE_DEF.GView;

    { Pagamentos de Comissões }
    AREC_SHE_DEF.GDescricao := 'Financeiro'; AREC_SHE_DEF.GReferencia := 'Pagamentos'; AREC_SHE_DEF.GRegra := 'Comissões'; oUSER(AREC_SHE_DEF);
    ACTFIN_PAG_CMV.Enabled  := AREC_SHE_DEF.GView;


    { ACESSOS FISCAIS }
    { Nossa }
    AREC_SHE_DEF.GDescricao    := 'Fiscal'; AREC_SHE_DEF.GReferencia := 'NFe'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTFIS_NFE_ADM.Enabled     := AREC_SHE_DEF.GView;
    ACTFIS_NFE_LCT.Enabled     := AREC_SHE_DEF.GView;

    { Terceiros }
    AREC_SHE_DEF.GDescricao    := 'Fiscal'; AREC_SHE_DEF.GReferencia := 'NFe Terceiros'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTFIS_NFE_EDI_TER.Enabled := AREC_SHE_DEF.GView;


    { ACESSOS PRODUTOS }
    { Cadastro }
    AREC_SHE_DEF.GDescricao := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Cadastro'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_ADM.Enabled  := AREC_SHE_DEF.GView;

    { Grade de Cores }
    AREC_SHE_DEF.GDescricao    := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Grade de Cores'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_GRD_COR.Enabled := AREC_SHE_DEF.GView;

    { Grade de Estampas }
    AREC_SHE_DEF.GDescricao    := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Grade de Estampas'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_GRD_EST.Enabled := AREC_SHE_DEF.GView;

    { Grade de Tamanhos }
    AREC_SHE_DEF.GDescricao    := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Grade de Tamanhos'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_GRD_TAM.Enabled := AREC_SHE_DEF.GView;

    { Coleções }
    AREC_SHE_DEF.GDescricao    := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Coleções'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_COL.Enabled     := AREC_SHE_DEF.GView;

    { Segmentos }
    AREC_SHE_DEF.GDescricao    := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Segmentos'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_SEG.Enabled     := AREC_SHE_DEF.GView;

    { Grupos }
    AREC_SHE_DEF.GDescricao    := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Grupos'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_GRP.Enabled     := AREC_SHE_DEF.GView;
    ACTCAD_PRO_SGP.Enabled     := AREC_SHE_DEF.GView;

    { Sub Grupos }
    AREC_SHE_DEF.GDescricao    := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Sub Grupos'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_GRP.Enabled     := AREC_SHE_DEF.GView;
    ACTCAD_PRO_SGP.Enabled     := AREC_SHE_DEF.GView;

    { Categorias }
    AREC_SHE_DEF.GDescricao    := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Categorias'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_CAT.Enabled     := AREC_SHE_DEF.GView;
    ACTCAD_PRO_SCT.Enabled     := AREC_SHE_DEF.GView;

    { Sub Categorias }
    AREC_SHE_DEF.GDescricao    := 'Produtos'; AREC_SHE_DEF.GReferencia := 'Sub Categorias'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTCAD_PRO_CAT.Enabled     := AREC_SHE_DEF.GView;
    ACTCAD_PRO_SCT.Enabled     := AREC_SHE_DEF.GView;


    { ACESSOS VENDAS PROGRAMADAS }
    AREC_SHE_DEF.GDescricao := 'Pedidos'; AREC_SHE_DEF.GReferencia := 'Programados'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTPED_PDP_ADM.Enabled  := AREC_SHE_DEF.GView;


    { ACESSOS TABELAS }
    { Natureza de Operações }
    AREC_SHE_DEF.GDescricao  := 'Tabelas'; AREC_SHE_DEF.GReferencia := 'CFOP'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTTAB_CFOP.Enabled      := AREC_SHE_DEF.GView;

    { Condições de Pagamentos }
    AREC_SHE_DEF.GDescricao  := 'Tabelas'; AREC_SHE_DEF.GReferencia := 'Prazos'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTTAB_PRZ.Enabled       := AREC_SHE_DEF.GView;


    { ACESSOS VENDAS PRONTA ENTREGA }
    AREC_SHE_DEF.GDescricao := 'Pedidos'; AREC_SHE_DEF.GReferencia := 'Vendas'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTPED_PDV_ADM.Enabled  := AREC_SHE_DEF.GView; { Controle }
    ACTPED_PDV_CLT.Enabled  := AREC_SHE_DEF.GView; { Coletor }


    { ACESSOS VENDAS ROMANEADAS }
    AREC_SHE_DEF.GDescricao := 'Pedidos'; AREC_SHE_DEF.GReferencia := 'Romaneios'; AREC_SHE_DEF.GRegra := 'Permissões Gerais'; oUSER(AREC_SHE_DEF);
    ACTPED_RDV_ADM.Enabled  := AREC_SHE_DEF.GView;

  finally

    oFREC_SHE_DEF(AREC_SHE_DEF);
  end;

  with FrmPrincipal do
  begin
    { RODAPÉ }
    SBRodape.Width := Screen.Width + 1;

    { EMPRESA }
    SBRodape.Panels[0].Text  := RECParametros.EP_NO;
    SBRodape.Panels[0].Width := Length(SBRodape.Panels[0].Text) * 12;

    { USUÁRIO }
    SBRodape.Panels[1].Text  := oPrimeiraLetraMaiuscula(RECUsuarios.Login) + ' - ' + oPrimeiraLetraMaiuscula(RECUsuarios.Cargo);
    SBRodape.Panels[1].Width := Length(SBRodape.Panels[1].Text) * IFThen(Length(SBRodape.Panels[1].Text) > 15,7,9);

    { DEPARTAMENTO }
    SBRodape.Panels[2].Text  := 'Departamento de ' + oPrimeiraLetraMaiuscula(RECUsuarios.Departamento);
    SBRodape.Panels[2].Width := Length(SBRodape.Panels[2].Text) * IFThen(Length(SBRodape.Panels[2].Text) > 15,7,9);

    { HOST }
    SBRodape.Panels[5].Text  := RECParametros.ServerHost;
    SBRodape.Panels[5].Width := Length(SBRodape.Panels[5].Text) * IFThen(Length(SBRodape.Panels[5].Text) > 15,6,8);

    { SHEILD }
    SBRodape.Panels[3].Text := EmptyStr;
    SBRodape.Panels[7].Text := 'Copyright © ' + oStrZero(YearOf(Date),4) + ' Sheild';
    SBRodape.Refresh;

    _oLoadJPG(Nil,Nil,IPrincipal,True,'JPG_SPLASH');
    Repaint;
  end;

  { Impressoras }
  oPrinterSelect(Application.Handle,'Relatórios');

  { ADMIN }
  if RECUsuarios.ID > 0 then
  //BSIADM.Visible := ivNever;
end;

procedure TFrmPrincipal.ACTCAI_ABR_PADExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmcai_abr,Frmcai_abr);
end;

procedure TFrmPrincipal.ACTCAI_ABR_FSTExecute(Sender: TObject);
var
  ACAI_LAF_ID,
  ACAI_TSR_ID: Variant;
begin
  if oYesNo(handle,'Confirma abertura do caixa ?') = mrno then
  Abort;

  with FBird do
  try
    oOTransact(TFBEdicao);

    with SQLFBEdicao do
    begin
      { VER CAIXA INICIAL }
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_TSR');
      SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
      ExecQuery;
      ACAI_TSR_ID := Current.Vars[0].AsString;

      if Eof then
      oException(Nil,'CAIXA INICIAL não encontrado !');

      { VER TERMINAIS }
      Close;
      SQL.Clear;
      SQL.Add('SELECT EP.FANTASIA,CAI_IP,CAI_DABR,CAI_HABR,USU_DUSU,CAI_DECX,CAI_DFEC,CAI_HFEC');
      SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');

      SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
      SQL.Add('AND    EP.ID            = CAI_CDEP');
      SQL.Add('AND    CAI_CDEP         = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    CAI_DABR         = ''' + formatDateTime('mm/dd/yy',RECParametros.SHE_DATA) +'''');
      SQL.Add('AND    CAI_DFEC IS NOT NULL');
      ExecQuery;

      if Eof then
      oException(Nil,'Caixa '       + Current.Vars[5].AsString + ' selecionado já está registrado !' + #13 + #13 +
                     'Empresa: '    + Current.Vars[0].AsString + #13 +

                     'Abertura: '   + FormatDateTime('dd/mm/yy',Current.Vars[2].AsDateTime) + ' '   +
                                      FormatDateTime('hh:mm:ss',Current.Vars[3].AsDateTime) + ' - ' +
                                      'Terminal: ' + Current.Vars[1].AsString + #13 +

                     'Fechamento: ' + FormatDateTime('dd/mm/yy',Current.Vars[6].AsDateTime) + ' '   +
                                      FormatDateTime('hh:mm:ss',Current.Vars[7].AsDateTime) + ' - ' +
                                      'Terminal: ' + Current.Vars[1].AsString + #13 +

                     'Usuário  : '  + Current.Vars[4].AsString);

      { VER CAIXA ABERTO }
      Close;
      SQL.Clear;
      SQL.Add('SELECT FANTASIA,CAI_IP,CAI_DABR,CAI_HABR,USU_DUSU,CAI_DECX');
      SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');

      SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
      SQL.Add('AND    EP.ID            = CAI_CDEP');
      SQL.Add('AND    CAI_CDEP         = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    CAI_DFEC IS NULL');
      ExecQuery;

      if not Eof then
      oException(Nil,'Caixa '      + Current.Vars[5].AsString + ' selecionado já está aberto !' + #13 + #13 +
                     'Empresa: '   + Current.Vars[0].AsString + #13 +

                     'Abertura: '  + FormatDateTime('dd/mm/yy',Current.Vars[2].AsDateTime) + '  '  +
                                     FormatDateTime('hh:mm:ss',Current.Vars[3].AsDateTime) + ' - ' +
                                     'Terminal: '+ Current.Vars[1].AsString + #13  +

                     'Usuário  : ' + Current.Vars[4].AsString);

      { VER TERMINAL }
      Close;
      SQL.Clear;
      SQL.Add('SELECT FANTASIA,CAI_DECX,CAI_DABR,CAI_HABR,USU_DUSU');
      SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');
      SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
      
      SQL.Add('AND    EP.ID    = CAI_CDEP');
      SQL.Add('AND    CAI_IP   = ''' + RECParametros.IP + '''');
      SQL.Add('AND    CAI_CDEP = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    CAI_DFEC IS NULL');
      ExecQuery;

      if not Current.Vars[0].IsNull then
      oException(Nil,'Terminal já possui caixa aberto !'      + #13   + #13 +
                     'Empresa: '   + Current.Vars[0].AsString + #13   +
                     'Caixa:'      + Current.Vars[1].AsString + ' - ' +

                     'Abertura: '  + FormatDateTime('dd/mm/yy',Current.Vars[2].AsDateTime) + ' ' +
                                     FormatDateTime('hh:mm:ss',Current.Vars[3].AsDateTime) + #13 +

                     'Usuário  : ' + Current.Vars[4].AsString);

      { ID CAI_LAF }
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAI_LAF,1) FROM RDB$DATABASE');
      ExecQuery;
      ACAI_LAF_ID := Current.Vars[0].AsString;
    end;

    SPFBEdicao.Close;
    SPFBEdicao.StoredProcName := 'SP_CAI_LAF';
    SPFBEdicao.Prepare;

    SPFBEdicao.ParamByName('ID' ).Value  := 0;
    SPFBEdicao.ParamByName('CDEP').Value := RECParametros.EP_ID;
    SPFBEdicao.ParamByName('CDCX').Value := '1';
    SPFBEdicao.ParamByName('DECX').Value := '1 - CAIXA';
    SPFBEdicao.ParamByName('DABR').Value := RECParametros.SHE_DATA;
    SPFBEdicao.ParamByName('HABR').Value := FormatDateTime('hh:mm',Now);
    SPFBEdicao.ParamByName('VABR').Value := 0;
    SPFBEdicao.ParamByName('DFEC').Value := null;
    SPFBEdicao.ParamByName('HFEC').Value := null;
    SPFBEdicao.ParamByName('VFEC').Value := 0;
    SPFBEdicao.ParamByName('CUSU').Value := RECUsuarios.Id;
    SPFBEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
    SPFBEdicao.ParamByName('DETE').Value := RECParametros.HOST;
    SPFBEdicao.ExecProc;

    SPFBEdicao.Close;
    SPFBEdicao.StoredProcName := 'SP_CAI_MOV';
    SPFBEdicao.Prepare;

    SPFBEdicao.ParamByName('ID'  ).Value := 0;
    SPFBEdicao.ParamByName('CCAB').Value := ACAI_LAF_ID;
    SPFBEdicao.ParamByName('CTSR').Value := ACAI_TSR_ID;
    SPFBEdicao.ParamByName('CONC').Value := 1;
    SPFBEdicao.ParamByName('DOCT').Value := ACAI_LAF_ID + oStrZero(ACAI_LAF_ID,20 - Length(ACAI_LAF_ID));
    SPFBEdicao.ParamByName('DEMV').Value := 'CAIXA INICIAL';
    SPFBEdicao.ParamByName('DCAD').Value := RECParametros.SHE_DATA;
    SPFBEdicao.ParamByName('CRED').Value := 0;
    SPFBEdicao.ParamByName('DEBI').Value := 0;
    SPFBEdicao.ExecProc;

    oCTransact(TFBEdicao);
    oAviso(Application.Handle,'Abertura de caixa efetuada com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TFBEdicao,ltRollback);
      oException(Nil,'Falha ao tentar abrir caixa !' + #13 + #13 +
                     'Código do Erro: ' + E.Message  + '.' + #13);
    end;
  end;

  bExecEvent('Caixa');
end;

procedure TFrmPrincipal.ACTCAI_RABExecute(Sender: TObject);
begin
  if oYesNo(handle,'Confirma re-abertura do caixa ?') = mrno then
     Abort;

  if RECParametros.STCX = 'Caixa Aberto' then
     oException(Nil,'Falha ao tentar re-abrir caixa.' + #13 +
                    'Caixa já está aberto !');

  if RECParametros.DTCX <> Date then
     oException(Nil,'Falha ao tentar re-abrir caixa.' + #13 +
                    'Não há registro de caixa para o dia de hoje !');

  try
    oOTransact(FBird.TFBEdicao);
    with FBird.SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAI_LAF');
      SQL.Add('SET    CAI_DFEC = NULL,');
      SQL.Add('       CAI_HFEC = NULL' );
      SQL.Add('WHERE  ID = ''' + RECParametros.CDCX + '''');
      SQL.Add('AND    CAI_DABR = CURRENT_DATE');
      ExecQuery;
    end;
  finally
    oCTransact(FBird.TFBEdicao);
  end;

  oAviso(Handle,'Re-Abertura do caixa registrado com sucesso !');
  bExecEvent('Caixa');
end;

procedure TFrmPrincipal.ACTCAI_FECExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmcai_fec,Frmcai_fec);
end;

procedure TFrmPrincipal.ACTCAI_LSSExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmcai_sar,Frmcai_sar);
end;

procedure TFrmPrincipal.ACTCAI_TSSExecute(Sender: TObject);
begin
  // RICARDO uFrmCreate(Application,Tfrmcai_tsr,Frmcai_tsr);
end;

procedure TFrmPrincipal.ACTCAI_FLCExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmcai_mov,frmcai_mov);
end;

procedure TFrmPrincipal.ACTPRN_ADMExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmImpressoras,FrmImpressoras);
end;

procedure TFrmPrincipal.ACTPRN_EXEExecute(Sender: TObject);
begin
  if oEmpty(ACTPRN_EXE.Hint) then
            ACTPRN_EXE.Hint := 'Relatórios';

  try
    oPrinterSelect(Handle,ACTPRN_EXE.Hint);
  finally
    ACTPRN_EXE.Hint := EmptyStr;
  end;
end;

procedure TFrmPrincipal.ACTRelatoriosExecute(Sender: TObject);
begin
  if Pos('ACTREL_GER',TAction(Sender).Name) = 0 then
  begin
    FrmRelatorios_OLD := TFrmRelatorios_OLD.Create(Nil,TAction(Sender).Hint,TAction(Sender).Tag,TAction(Sender).HelpContext,TAction(Sender).HelpKeyword,TAction(Sender).HelpKeyword);
    Try FrmRelatorios_OLD.ShowModal;
    Finally FreeAndNil(FrmRelatorios_OLD);
    End;
  end else

  try
    FrmRelatorios := TFrmRelatorios.Create(Application,TAction(Sender));
    FrmRelatorios.ShowModal;

  finally
    FreeAndNil(FrmRelatorios);
  end;
end;

procedure TFrmPrincipal.ACTMU_FIS_NFE_PSQExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmNFeConsulta,FrmNFeConsulta);
end;

procedure TFrmPrincipal.ACTMU_FIS_NFE_SAIExecute(Sender: TObject);
begin
  AREC_SHE_DEF.GDescricao := 'Logística'; AREC_SHE_DEF.GReferencia := 'Saídas'; AREC_SHE_DEF.GRegra := 'Permissões Gerais';
  oUSER(AREC_SHE_DEF);

  if AREC_SHE_DEF.GAppend then
  TFrmNFeSaida._ExecForm(Application,FrmNFeSaida) else
  TFrmNFeSaidaConsulta._ExecForm(Application,FrmNFeSaidaConsulta);
end;

procedure TFrmPrincipal.ACTMU_FIS_CFE_EDTExecute(Sender: TObject);
//var
//  Numero: String;
begin
//  if oEmpty(RECParametros.CFE_API_TOKEN) then
//     oException(Application,'Emissor de CFeSat não Disponível !');
//
//  if Assigned(frmctr_ped) then
//  Numero := frmctr_ped.cadastroDEPK.AsString else
//  Numero := '0';
//
//  FrmCFeSat := TFrmCFeSat.Create(Application,Numero);
//  try FrmCFeSat.ShowModal;
//  finally FreeAndNil(FrmCFeSat);
//  end;
end;

procedure TFrmPrincipal.ACTMU_EtiquetasExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmEtiqueta_Geral,FrmEtiqueta_Geral);
end;

procedure TFrmPrincipal.ACTMU_USER_LOGINExecute(Sender: TObject);
begin
  ACTUSER_LOGIN.Execute;
end;

procedure TFrmPrincipal.ACTMU_USER_PASSWORDExecute(Sender: TObject);
begin
  ACTUSER_PASSWORD.Execute;
end;

procedure TFrmPrincipal.ACTMU_ABOUTExecute(Sender: TObject);
begin
  ACTMP_ABOUT.Execute;
end;

procedure TFrmPrincipal.ACTMU_SAIDAExecute(Sender: TObject);
begin
  ACTMP_SAIDA.Execute;
end;

procedure TFrmPrincipal.ACTCAD_CLI_ADMExecute(Sender: TObject);
begin
  TFrmcad_cli._ExecForm(Application,frmcad_cli);
end;

procedure TFrmPrincipal.ACTCAD_REP_ADMExecute(Sender: TObject);
begin
  TFrmcad_rep._ExecForm(Application,Frmcad_rep);
end;

procedure TFrmPrincipal.ACTCAD_FOR_ADMExecute(Sender: TObject);
begin
  TFrmcad_for._ExecForm(Application,Frmcad_for);
end;

procedure TFrmPrincipal.ACTCAD_TRA_ADMExecute(Sender: TObject);
begin
  TFrmcad_tra._ExecForm(Application,Frmcad_tra);
end;

procedure TFrmPrincipal.ACTCAD_PRO_ADMExecute(Sender: TObject);
begin
  TFrmProduto._ExecForm(Application,FrmProduto, True);
end;

procedure TFrmPrincipal.ACTCAD_PRO_GRD_CORExecute(Sender: TObject);
begin
  TFrmProduto_Cor._ExecForm(Application,FrmProduto_Cor);
end;

procedure TFrmPrincipal.ACTCAD_PRO_GRD_ESTExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTCAD_PRO_GRD_TAMExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTCAD_PRO_COLExecute(Sender: TObject);
begin
  ACTADM_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTCAD_PRO_SEGExecute(Sender: TObject);
begin
  TFrmProduto_Segmento._ExecForm(Application,FrmProduto_Segmento);
end;

procedure TFrmPrincipal.ACTCAD_PRO_GRPExecute(Sender: TObject);
begin
  TFrmProduto_Grupo._ExecForm(Application,FrmProduto_Grupo);
end;

procedure TFrmPrincipal.ACTCAD_PRO_SGPExecute(Sender: TObject);
begin
  TFrmProduto_SubGrupo._ExecForm(Application,FrmProduto_SubGrupo);
end;

procedure TFrmPrincipal.ACTCAD_PRO_CATExecute(Sender: TObject);
begin
  TFrmProduto_Categoria._ExecForm(Application,FrmProduto_Categoria);
end;

procedure TFrmPrincipal.ACTCAD_PRO_SCTExecute(Sender: TObject);
begin
  TFrmProduto_SubCategoria._ExecForm(Application,FrmProduto_SubCategoria);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_ADMExecute(Sender: TObject);
begin
  TFrmEstoque._ExecForm(Application,FrmEstoque);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_LCTExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrment_pro,Frment_pro);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_ETQExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmeti_pro,frmeti_pro);
//  TFrmCAD_PRO_EST_ETQ._ExecForm(Application,FrmCAD_PRO_EST_ETQ);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_DEFExecute(Sender: TObject);
begin
  TFrmEstoqueDefeitos._ExecForm(Application,FrmEstoqueDefeitos);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_EXP_COLExecute(Sender: TObject);
begin
  TFrmEXP_SEP_COL._ExecForm(Application,FrmEXP_SEP_COL);
end;

procedure TFrmPrincipal.ACTCAD_PRO_EST_EXP_MANExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmEXP_SEP_MAN,FrmEXP_SEP_MAN);
end;

procedure TFrmPrincipal.ACTPED_PDC_ADMExecute(Sender: TObject);
begin
  TFrmCTR_PRC._ExecForm(Application,FrmCTR_PRC);
end;

procedure TFrmPrincipal.ACTPED_PDP_ADMExecute(Sender: TObject);
begin
  TFrmCTR_PRG._ExecForm(Application,FrmCTR_PRG);
end;

procedure TFrmPrincipal.ACTPED_PDV_ADMExecute(Sender: TObject);
begin
  TFrmCTR_PED._ExecForm(Application,FrmCTR_PED);
end;

procedure TFrmPrincipal.ACTPED_RDV_ADMExecute(Sender: TObject);
begin
  TFrmCTR_ROM._ExecForm(Application,FrmCTR_ROM);
end;

procedure TFrmPrincipal.ACTPED_PDV_CLTExecute(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;

  AFileName,
  ALinha,
  ACDET: String;

  AEtiquetas: Array of String;
  Etiquetas,
  i: integer;

  AIDG_IDEV_PDV: Variant;
begin
  if RECParametros.STCX <> 'Caixa Aberto' then
  oException(Nil,RECParametros.STCX + ' !' + #13 +
                'Favor efetuar os procedimentos para a abertura do caixa.');

  if not EPrincipal.Execute then
  Abort;

  AFileName := ExtractFileName(EPrincipal.FileName);
  AFileName := LeftStr(AFileName,Length(AFileName) - 4);

  AssignFile(TFArquivo,EPrincipal.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(EPrincipal.FileName);

  SetLength(AEtiquetas,SLTexto.Count);

  AIDG_IDEV_PDV := '0';
  Etiquetas := 0;
  i:= 0;

  try
    if SLTexto.Count = 0 then
    oException(Nil,'Nenhuma Etiqueta Coletada !' + #13 +
                   'Verifique o conteúdo do arquivo selecionado.');

    try
      While not Eof(TFArquivo) do
      Begin
        Readln(TFArquivo,ALinha);
        Delimitador := 0;
        ALinha      := oUTF8ToStr(ALinha);

        ACDET := Trim(oGetLinha(ALinha,','));
        ACDET := IFThen(Length(ACDET)  >= 13,Copy(ACDET,5,8),ACDET);
        ACDET := IFThen(Length(ACDET)   = 00,'0',ACDET);
        ACDET := oStrZero(StrToInt64(ACDET),10);

        if ACDET <> EmptyStr then
        AEtiquetas[i] := ACDET;
        inc(i);

        Next;
      end;
    except
      on E: Exception do
      begin
        oException(Nil,'Falha ao tentar coletar informações !' + #13 + #13 +
                       'Registro: ' + ALinha);
      end;
    end;

    Etiquetas := i;
  finally
    CloseFile(TFArquivo);
    SLTexto.Free;
  end;

  with FBird do
  try
    { VER ETIQUETAS }
    oOTransact(TFBETQConsulta);
    for  i := LOW(AEtiquetas) to HIGH(AEtiquetas) do
    begin
      with SQLFBETQConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.IDPK,PK.DEPK,PK.DTPK,');

        SQL.Add('       PK.IDCD,CD.FANTASIA AS DECD,');
        SQL.Add('       PK.IDCR,CR.FANTASIA AS DECR,');
        SQL.Add('       PK.IDCV,CV.LOGIN    AS DECV,');
        SQL.Add('       LG_SP.LOGIN AS LGSP,PK.DTSP ');

        SQL.Add('FROM   CAD_PRO_EST AS PK');
        SQL.Add('JOIN   CAD_CLI     AS CD    ON (CD.IDCD    = PK.IDCD)');
        SQL.Add('JOIN   CAD_REP     AS CR    ON (CR.IDCR    = PK.IDCR)');
        SQL.Add('JOIN   TAB_USER    AS CV    ON (CV.IDLG    = PK.IDCV)');
        SQL.Add('JOIN   TAB_USER    AS LG_SP ON (LG_SP.IDLG = PK.IDSP)');

        SQL.Add('WHERE  PK.CDET = ''' + AEtiquetas[i] + '''');
        ExecQuery;

        if Eof then
        oErro(Application.Handle,'Etiqueta Nº ' + AEtiquetas[i] + ' não Encontrada.');

     {   if Current.ByName('IDPK').AsInteger > 0 then
        oException(Nil,'Etiqueta Nº ' + AEtiquetas[i] + ' já Separada !' + #13 +
                       Current.ByName('LGSP').AsString  + ' - ' + FormatDateTime('dd/mm/yy',Current.ByName('DTSP').AsDateTime) + #13 + #13 +

                       'Pedido Nº '   + Current.ByName('DEPK').AsString  + ' - ' + FormatDateTime('dd/mm/yy',Current.ByName('DTPK').AsDateTime) + #13 +
                       Current.ByName('DECD').AsString + #13 +
                       Current.ByName('DECV').AsString);
      }
      end;
    end;
    oCTransact(TFBConsulta);

    try
      oOTransact(TFBEdicao);

      { GERAR PEDIDO }
      with SQLFBEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(IDG_IDEV_PDV,1) FROM RDB$DATABASE');
        ExecQuery;

        AIDG_IDEV_PDV := Current.Vars[0].AsString;
      end;

      for  i := LOW(AEtiquetas) to HIGH(AEtiquetas) do
      begin
        with SQLFBEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CAD_PRO_EST');
          SQL.Add('SET    IDEV = ''' + AIDG_IDEV_PDV + ''',');
          SQL.Add('       CDEV = 28');
          SQL.Add('WHERE  CDET = ''' + AEtiquetas[i] + '''' );
          ExecQuery;
        end;
      end;

      oCTransact(TFBEdicao);
    except
      on E: Exception do
      begin
        oCTransact(TFBEdicao,ltRollback);
        oException(Nil,'Falha ao tentar salvar eventos de estoque !' + #13 + #13 +
                       'Evento: ' + AIDG_IDEV_PDV + '.' + #13 +
                        E.Message);
      end;
    end;

    try
      oOTransact(TFBEdicao);

      with SPFBEdicao do
      begin
        Close;
        StoredProcName := 'SP_PED_PDV_CLD';
        Prepare;

        ParamByName('AEP_ID').Value := RECParametros.EP_ID;
        ParamByName('AIDEV' ).Value := AIDG_IDEV_PDV;
        ParamByName('AIDCA' ).Value := RECUsuarios.ID;
        ParamByName('ACDCX' ).Value := RECParametros.CDCX;
        ParamByName('APDSC' ).Value := 14;
        ParamByName('AFILE' ).Value := AFileName;
        ExecProc;
      end;

      oCTransact(TFBEdicao);
      oAviso(Application.Handle,'Pedido Gerado com Sucesso !' + #13 +
                                INTTOSTR(Etiquetas) + 'separada(s).');
    except
      on E: Exception do
      begin
        oCTransact(TFBEdicao,ltRollback);
        oException(Nil,'Falha ao tentar salvar cabeçalho !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    oCTransact(TFBConsulta);
  end;

  { Renomeia e move para a basta de backup }
  oFileRename(EPrincipal.FileName,ExtractFilePath(EPrincipal.FileName) + '\Backup\' + AFileName + ' - ' + FormatDateTime('dd-mm-yy hh-mm',Now) + '.txt');
end;

procedure TFrmPrincipal.ACTTAB_CFOPExecute(Sender: TObject);
begin
  Tfrmtab_nat._ExecForm(Application,Frmtab_nat);
end;

procedure TFrmPrincipal.ACTTAB_PRZExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmtab_pag,Frmtab_pag);
end;

procedure TFrmPrincipal.ACTFIS_NFE_ADMExecute(Sender: TObject);
begin
  TFrmCTR_NFE._ExecForm(Application,FrmCTR_NFE);
end;

procedure TFrmPrincipal.ACTFIS_NFE_LCTExecute(Sender: TObject);
begin
  TFrmVEN_NFE._ExecForm(

  Application, { Owner    }
  FrmVEN_NFE,  { Form     }
  False,       { Pesquisa }
  fsMDIChild,  { Tipo     }

  0,  { IDPK - Código Principal }
  '', { DEPK - Descrição Principal }

  0,  { IDEV - Evento Principal }
  1,  { CDEV - Código Evento - 0: Triangular 1: Normal 2: Complementar 3: Ajustes 4:Devolução }
  1,  { TPEV - Tipo   Evento - 0: Copiado    1: Vazio  2: Romaneado }

  '', { AFB_SQL_TAB - Tabela }
  ''  { AFB_SQL_GET - Get }
  );
end;

procedure TFrmPrincipal.ACTFIS_NFE_EDI_TERExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmven_nfd,Frmven_nfd);
end;

procedure TFrmPrincipal.ACTCAD_CTNR_ADMExecute(Sender: TObject);
begin
  Tfrmcad_con._ExecForm(Application,frmcad_con);
end;

procedure TFrmPrincipal.ACTPED_PDC_CUSTOExecute(Sender: TObject);
begin
  TFrmProduto_Custo_Importado._ExecForm(Application,FrmProduto_Custo_Importado);
end;

procedure TFrmPrincipal.ACTFIN_REC_BANExecute(Sender: TObject);
begin
  SLPrincipal.Values['fin_caption']  := 'Consultas de Recebimentos Bancários';
  SLPrincipal.Values['fin_hint']     := 'DUPLICATA';
  SLPrincipal.Values['fin_baixa']    := SLPrincipal.Values['fin_rec_ban_bai'];
  SLPrincipal.Values['fin_consulta'] := SLPrincipal.Values['fin_rec_car_bai'];

  TFrmfin_rec_con._ExecForm(Application,Frmfin_rec_con);
end;

procedure TFrmPrincipal.ACTFIN_REC_CRTExecute(Sender: TObject);
begin
  SLPrincipal.Values['fin_caption']  := 'Consultas de Recebimentos em Carteira';
  SLPrincipal.Values['fin_hint']     := 'CARTEIRA';
  SLPrincipal.Values['fin_baixa']    := SLPrincipal.Values['fin_rec_car_bai'];
  SLPrincipal.Values['fin_consulta'] := SLPrincipal.Values['fin_rec_ban_bai'];

  TFrmfin_rec_con._ExecForm(Application,Frmfin_rec_con);
end;

procedure TFrmPrincipal.ACTFIN_REC_DUPExecute(Sender: TObject);
begin
  uFrmCreate(Application,Tfrmfin_dup,Frmfin_dup);
end;

procedure TFrmPrincipal.ACTFIN_PAG_CMVExecute(Sender: TObject);
begin
  uFrmCreate(Application,TFrmpag_com,Frmpag_com);
end;

procedure TFrmPrincipal.ACTFIN_PAGExecute(Sender: TObject);
begin
  TFrmSHE_DEF_PED._ExecForm(Application,FrmSHE_DEF_PED);
end;

procedure TFrmPrincipal._Aviso_Reserva;
var
  nRecNo: Integer;
begin
  if RECUsuarios.Id = 0 then
     Exit;
     
  nRecNo := 0;
  if (RECParametros.EP_ID = 1) then
  if (RECUsuarios.Grupo = 'VEN') or (RECUsuarios.Grupo = 'GER') then
  with FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(PK.ID) FROM VW_PED_VEN_AVR AS PK');
      SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');

      if RECUsuarios.Grupo = 'VEN' then
         SQL.Add('AND PK.IDCV = '''+RECUsuarios.Id+'''');

      ExecQuery;
      nRecNo := Current.Vars[0].AsInteger;
    end;
  finally
    oCTransact(TFBConsulta);
  end;

  if nRecNo > 0 then
  TFrmAviso_Reserva._ExecForm(Nil,FrmAviso_Reserva);
end;

procedure TFrmPrincipal.ACTREL_GER_PDV_TPOExecute(Sender: TObject);
begin
  uConstrucao('Em desenvolvimento ...');
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
  Close;
end;

end.
