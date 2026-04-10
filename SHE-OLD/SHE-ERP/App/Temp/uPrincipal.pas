
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
  IBSQL, dxDBGrid, dxTL, dxDBCtrl, TypInfo;

type
  TFrmPrincipal = class(TForm)
    MMPrincipal: TMainMenu;
    MPCadastros: TMenuItem;
    MPTabelas: TMenuItem;
    MPVendas: TMenuItem;
    AMPrincipal: TActionManager;
    ACTClientes: TAction;
    MICAD_REP: TMenuItem;
    MICAD_COM: TMenuItem;
    MICAD_TRA: TMenuItem;
    MITAB_NAT: TMenuItem;
    MITAB_PRZ: TMenuItem;
    MPNotaFiscal: TMenuItem;
    MINFE_LAN: TMenuItem;
    MINotaFiscal: TMenuItem;
    MIFIN_REC_DUP: TMenuItem;
    MPConteudo: TMenuItem;
    MIHELP: TMenuItem;
    MIABOUT: TMenuItem;
    ACTProdutos: TAction;
    ACTRepresentantes: TAction;
    ACTTransportadoras: TAction;
    ACTFornecedores: TAction;
    ACTTAB_PRZ: TAction;
    ACTTAB_GRD_COR: TAction;
    ACTTAB_COL: TAction;
    ACTEST_LAN: TAction;
    ACTEstoque: TAction;
    ACTRomaneios: TAction;
    ACTAgenda: TAction;
    ACTLogin: TAction;
    ACTPassword: TAction;
    ACTPrinters: TAction;
    ACTSistema: TAction;
    ACTPED_LAN: TAction;
    MPFinanceiro: TMenuItem;
    MICompras: TMenuItem;
    ACTCOM_LAN: TAction;
    ACTHELP: TAction;
    MPCompras: TMenuItem;
    MIFIN_CAL_VCT: TMenuItem;
    MIFIN_N3: TMenuItem;
    MIFIN_REC_BOL: TMenuItem;
    MPCaixa: TMenuItem;
    MIFIN_EMI_REC: TMenuItem;
    MIFIN_EMI_VFU: TMenuItem;
    MITAB_N4: TMenuItem;
    MIEST_LAN: TMenuItem;
    MIEstoque: TMenuItem;
    ACTFIN_PAG_CMV: TAction;
    MICAD_CLI: TMenuItem;
    MICAD_FOR: TMenuItem;
    MICAD_N1: TMenuItem;
    MICAI_TSS: TMenuItem;
    ACTTAB_SSP: TAction;
    MICAI_ABR: TMenuItem;
    MICAI_FEC: TMenuItem;
    MICAI_N2: TMenuItem;
    MICAI_MSS: TMenuItem;
    MICAI_N3: TMenuItem;
    ACTCAI_FLC: TAction;
    MICAI_MOV: TMenuItem;
    ACTCAI_SSP: TAction;
    ACTPRG_LAN: TAction;
    ACTEXP_MAN: TAction;
    MITAB_ORI: TMenuItem;
    ACTTAB_CAT: TAction;
    ACTCAI_ABR: TAction;
    MPSheild: TMenuItem;
    ACTCAI_FEC: TAction;
    ACTFIN_REC_DUP: TAction;
    MIFIN_PAG_CMV: TMenuItem;
    ACTFIN_REC_CAR: TAction;
    ACTFIN_REC_BAN: TAction;
    MICAI_RAB: TMenuItem;
    MICAI_N1: TMenuItem;
    ACTCAI_RAB: TAction;
    ACTEST_ETQ: TAction;
    MPRelatorios: TMenuItem;
    MIFIN_REC_IBB: TMenuItem;
    ACTCAD_CTNR: TAction;
    ACTTAB_NAT: TAction;
    IPrincipal: TImage;
    MICheques: TMenuItem;
    MIComissao: TMenuItem;
    MIRelProdutos: TMenuItem;
    MIRelatorios_1: TMenuItem;
    MIRelClientes: TMenuItem;
    MIRelVendedores: TMenuItem;
    MIRelRepresentantes: TMenuItem;
    MIRelatorios_3: TMenuItem;
    MIRelGerencial: TMenuItem;
    MIRelProduto_Venda: TMenuItem;
    MIRelProduto_Ranking: TMenuItem;
    MIRelProdutos_2: TMenuItem;
    MIRelGProduto_Tabela_Preco: TMenuItem;
    MIRelProdutos_3: TMenuItem;
    MIRelProduto_Estoque: TMenuItem;
    MIRelProdutosSPEDFiscal: TMenuItem;
    MIRelProdutos_4: TMenuItem;
    MIRelProduto_Compra_Planejamento: TMenuItem;
    MIRelProdutosKardex: TMenuItem;
    MIRelCliente_Venda_Produto: TMenuItem;
    MIRelClientesRanking: TMenuItem;
    MIRelClientes_1: TMenuItem;
    MIRelClientesFicha: TMenuItem;
    MIRelCliente_Cadastro_Listagem: TMenuItem;
    MIRelVendedoresFat: TMenuItem;
    MIRelVendedoresRanking: TMenuItem;
    MIRelVendedores_1: TMenuItem;
    MIRelVendedoresComissoes: TMenuItem;
    MIRelVendedoresVales: TMenuItem;
    MIRelRepresentante_Venda_Produto: TMenuItem;
    MIRelRepresentante_Ranking: TMenuItem;
    MIRelRepresentantes_1: TMenuItem;
    MIRelRepresentantesComissoes: TMenuItem;
    MIRelRepresentantesVales: TMenuItem;
    MIRelRepresentantes_2: TMenuItem;
    MIRelRepresentantesFicha: TMenuItem;
    MIRelRepresentante_Cadastro_Listagem: TMenuItem;
    MIRelGerenciaisNFe: TMenuItem;
    ACTPRO_ETQ: TAction;
    ACTRelatorios: TAction;
    MIRelProduto_Devolucao_Cancelamento: TMenuItem;
    ACTProduto_Venda: TAction;
    ACTProduto_Ranking: TAction;
    ACTProduto_Compra_Planejamento: TAction;
    ACTGProduto_Tabela_Preco: TAction;
    ACTProduto_Estoque: TAction;
    ACTRPROSPEDFiscal: TAction;
    ACTRPROKardex: TAction;
    ACTGerencial_Tipo_Credito: TAction;
    ACTRGERNF: TAction;
    ACTEmConstrucao: TAction;
    MIFIN_REC_CAR: TMenuItem;
    MIFIN_REC_BAN: TMenuItem;
    ACBrBarCode: TACBrBarCode;
    N5: TMenuItem;
    MIRelGerenciaisCFeSat: TMenuItem;
    ACTCFE_LAN: TAction;
    MIRelProdutosProg: TMenuItem;
    SBRodape: TdxStatusBar;
    MITAB_N3: TMenuItem;
    PNLUtil: TPanel;
    TBPrincipal: TToolBar;
    TBN: TToolButton;
    RTBNFConsulta: TRxSpeedButton;
    RTBCFEmissao: TRxSpeedButton;
    TBN2: TToolButton;
    RTBPEtiquetas: TRxSpeedButton;
    RTBPrinters: TRxSpeedButton;
    TBN4: TToolButton;
    RTBLogin: TRxSpeedButton;
    RTBPassword: TRxSpeedButton;
    TBN6: TToolButton;
    RTBSistema: TRxSpeedButton;
    RTBBackup: TRxSpeedButton;
    TBN8: TToolButton;
    RTBAbout: TRxSpeedButton;
    TBN10: TToolButton;
    RTBSaida: TRxSpeedButton;
    MINFE_LAN_TER: TMenuItem;
    MINFE_N1: TMenuItem;
    ACTPAGPROComissao: TAction;
    TTempo: TTimer;
    RTBNFSaidas: TRxSpeedButton;
    ACTNFE_LAN: TAction;
    ACBrBarCodeV: TACBrBarCode;
    ACTRCLVEN: TAction;
    MIRelCliente_Ranking: TMenuItem;
    ACTCliente_Ranking: TAction;
    ACTRCLABC: TAction;
    ACTRepresentante_Venda_Produto: TAction;
    ACTRepresentante_Ranking: TAction;
    ACTRCRABC: TAction;
    MIDSP_CTNR: TMenuItem;
    ACTTAB_SEG: TAction;
    ACTTAB_GRP: TAction;
    ACTTAB_SGP: TAction;
    ACTTAB_SCT: TAction;
    MITAB_ICMS_ST: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    ACTProduto_Devolucao_Cancelamento: TAction;
    N16: TMenuItem;
    MIRelFinanceiro: TMenuItem;
    MIRelFinanceiro_Abatimento: TMenuItem;
    ACTFinanceiro_Abatimento: TAction;
    N18: TMenuItem;
    ACTCliente_Venda_Produto: TAction;
    ACTCliente_Produto_Atendido: TAction;
    MIRelCliente_Produto_Atendido: TMenuItem;
    ACTCliente_Cadastro_Listagem: TAction;
    MIRelCliente_Grupo_Venda_Produto: TMenuItem;
    N19: TMenuItem;
    ACTCliente_Grupo_Venda_Produto: TAction;
    MIRelProduto_Estoque_Etiqueta: TMenuItem;
    ACTPRO_FCT: TAction;
    MIRelFinanceiro_Cadastros_Duplicata: TMenuItem;
    ACTFinanceiro_Cadastros_Duplicata: TAction;
    ACTRepresentante_Cadastro_Listagem: TAction;
    MIRelProduto_Tabela_Preco: TMenuItem;
    ACTProduto_Tabela_Preco: TAction;
    MIRelGerencial_Tipo_Credito: TMenuItem;
    MIRelGerencial_Tipo_Venda: TMenuItem;
    MIRelGerencial_N1: TMenuItem;
    MIRelGerencial_Estoque_Unidade_Medida: TMenuItem;
    ACTGerencial_Estoque_Unidade_Medida: TAction;
    ACTGerencial_Tipo_Venda: TAction;
    N24: TMenuItem;
    MIRelGerencial_NF_Tipo_Operacao: TMenuItem;
    MIRelGerencial_NF_Peso: TMenuItem;
    ACTGerencial_NF_Tipo_Operacao: TAction;
    ACTGerencial_NF_Peso: TAction;
    MIRelGerencial_Performance_Venda: TMenuItem;
    N25: TMenuItem;
    ACTGerencial_Performance_Venda: TAction;
    MIRelProduto_Venda_Inativo: TMenuItem;
    ACTProduto_Venda_Inativo: TAction;
    MIRelProduto_Venda_Mensal: TMenuItem;
    N28: TMenuItem;
    ACTProduto_Venda_Mensal: TAction;
    MIRelProduto_Venda_Localidade: TMenuItem;
    ACTProduto_Venda_Regiao_Nacional: TAction;
    MIProduto_Venda_Regiao_UF: TMenuItem;
    MIProduto_Venda_Regiao_Nacional: TMenuItem;
    ACTProduto_Venda_Regiao_UF: TAction;
    Fornecedores1: TMenuItem;
    MIRelFornecedoresCPCAD: TMenuItem;
    ACTGFornecedoresProdutosCadastrados: TAction;
    MPEstoque: TMenuItem;
    MIEST_N2: TMenuItem;
    MIEST_QUA: TMenuItem;
    MITAB_N5: TMenuItem;
    ACTEST_QUA: TAction;
    MIRelCliente_Produto_Nao_Atendido: TMenuItem;
    ACTCliente_Produto_Nao_Atendido: TAction;
    N22: TMenuItem;
    ACTNotaFiscal: TAction;
    ACTNFE_PSQ: TAction;
    ACTEXP_COL: TAction;
    ACTPagamentos: TAction;
    ACTExecPrinter: TAction;
    ACTNFE_LAN_TER: TAction;
    MIEXP_MAN: TMenuItem;
    ACTDSP_CTNR: TAction;
    MIFIN_N4: TMenuItem;
    MIEXP_COL: TMenuItem;
    ACTSaida: TAction;
    MIEST_ETQ: TMenuItem;
    MIEST_N1: TMenuItem;
    PNLPrincipal: TPanel;
    RSBClientes: TRxSpeedButton;
    RSBRepresentantes: TRxSpeedButton;
    RSBTransportadoras: TRxSpeedButton;
    RSBFornecedores: TRxSpeedButton;
    ACTCompras: TAction;
    ACTProgramados: TAction;
    RSBContainers: TRxSpeedButton;
    RSBCustos: TRxSpeedButton;
    RSBProdutos: TRxSpeedButton;
    RSBGrade: TRxSpeedButton;
    RSBEST_LAN: TRxSpeedButton;
    RSBEstoque: TRxSpeedButton;
    RSBEST_ETQ: TRxSpeedButton;
    RSBEST_DEF: TRxSpeedButton;
    RSBEXP_COL: TRxSpeedButton;
    RSBEXP_MAN: TRxSpeedButton;
    RSBCOM_LAN: TRxSpeedButton;
    RSBCompras: TRxSpeedButton;
    RSBPRG_LAN: TRxSpeedButton;
    RSBProgramados: TRxSpeedButton;
    RSBVEN_LAN: TRxSpeedButton;
    RSBPedidos: TRxSpeedButton;
    RSBRomaneios: TRxSpeedButton;
    RSBTAB_PRZ: TRxSpeedButton;
    RSBNFE_LAN: TRxSpeedButton;
    RSBNotaFiscal: TRxSpeedButton;
    RSBNFE_LAN_TER: TRxSpeedButton;
    RSBTAB_NAT: TRxSpeedButton;
    esteCompras1: TMenuItem;
    MICAD_N2: TMenuItem;
    MPProdutos: TMenuItem;
    MICAD_PRO: TMenuItem;
    MIPRO_N1: TMenuItem;
    MITAB_COR: TMenuItem;
    MITAB_GRD: TMenuItem;
    MIPRO_N2: TMenuItem;
    MIPRO_ETQ: TMenuItem;
    MIPRO_FCT: TMenuItem;
    MIPRO_N3: TMenuItem;
    MITAB_SEG: TMenuItem;
    MITAB_COL: TMenuItem;
    MIPRO_N4: TMenuItem;
    MITAB_GRP: TMenuItem;
    MITAB_SGP: TMenuItem;
    MIPRO_N5: TMenuItem;
    MITAB_CAT: TMenuItem;
    MITAB_SCT: TMenuItem;
    MITAB_N1: TMenuItem;
    MITAB_COB: TMenuItem;
    MITAB_PED: TMenuItem;
    MITAB_N2: TMenuItem;
    MITAB_NCM: TMenuItem;
    MITAB_UCOM: TMenuItem;
    MITAB_CMUN: TMenuItem;
    MITAB_ICMS: TMenuItem;
    MICOM_LAN: TMenuItem;
    MPContainers: TMenuItem;
    MICAD_CTNR: TMenuItem;
    MPProgramados: TMenuItem;
    MIPRG_LAN: TMenuItem;
    MIProgramados: TMenuItem;
    MIPED_LAN: TMenuItem;
    MIPedidos: TMenuItem;
    MPRomaneios: TMenuItem;
    MIROM_LAN: TMenuItem;
    MIRomaneios: TMenuItem;
    MIFIN_N1: TMenuItem;
    MPExpedicao: TMenuItem;
    MPCupomFiscal: TMenuItem;
    MICFE_LAN: TMenuItem;
    MICupomFiscal: TMenuItem;
    MICAD_VEN: TMenuItem;
    ImageList1: TImageList;
    ACTCupomFiscal: TAction;
    ACTPedidos: TAction;
    ACTTAB_GRD_EST: TAction;
    ACTFIN_REC_BOL: TAction;
    ACTCHQ_LAN: TAction;
    ACTCheques: TAction;
    MPCheques: TMenuItem;
    MICHQ_LAN: TMenuItem;
    ACTROM_LAN: TAction;
    MINFE_N2: TMenuItem;
    MI: TMenuItem;
    ACTCAD_VEN: TAction;
    ACTCAD_COM: TAction;
    ACTNFE_SAI_LAN: TAction;
    ACTNFE_SAI: TAction;
    ACTFIN_REC_IBB: TAction;
    ACTFIN_CAL_VCT: TAction;
    ACTFIN_EMI_REC: TAction;
    ACTFIN_EMI_VFU: TAction;
    MIFIN_N2: TMenuItem;
    ACTTAB_COB: TAction;
    ACTTAB_PED: TAction;
    ACTTAB_NCM: TAction;
    ACTTAB_UCOM: TAction;
    ACTTAB_CMUN: TAction;
    ACTTAB_ICMS: TAction;
    ACTTAB_ICMS_ST: TAction;
    ACTTAB_ORI: TAction;
    AMRelatorios: TActionManager;
    ACRCOM_POR_ITEM_PED: TAction;
    ACTCOM_POR_ITEM_PED: TAction;
    procedure FormCreate(Sender: TObject);
    procedure ACTClientesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ACTRepresentantesExecute(Sender: TObject);
    procedure ACTTransportadorasExecute(Sender: TObject);
    procedure ACTFornecedoresExecute(Sender: TObject);
    procedure ACTEST_LANExecute(Sender: TObject);
    procedure ACTEstoqueExecute(Sender: TObject);
    procedure ACTLoginExecute(Sender: TObject);
    procedure ACTPrintersExecute(Sender: TObject);
    procedure ACTHELPExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ACTCAI_FLCExecute(Sender: TObject);
    procedure ACTEXP_MANExecute(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure ACTRomaneiosExecute(Sender: TObject);
    procedure ACTTAB_CATExecute(Sender: TObject);
    procedure ACTCAI_ABRExecute(Sender: TObject);
    procedure ACTCAI_SSPExecute(Sender: TObject);
    procedure ACTCAI_FECExecute(Sender: TObject);
    procedure ACTFIN_REC_DUPExecute(Sender: TObject);
    procedure ACTFIN_REC_CARExecute(Sender: TObject);
    procedure ACTFIN_REC_BANExecute(Sender: TObject);
    procedure ACTCAI_RABExecute(Sender: TObject);
    procedure ACTEST_ETQExecute(Sender: TObject);
    procedure ACTCAD_CTNRExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TTempoTimer(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTEmConstrucaoExecute(Sender: TObject);
    procedure ACTPRO_ETQExecute(Sender: TObject);
    procedure ACTProdutosExecute(Sender: TObject);
    procedure ACTFIN_PAG_CMVExecute(Sender: TObject);
    procedure ACTPasswordExecute(Sender: TObject);
    procedure ACTCFE_LANExecute(Sender: TObject);
    procedure ACTTAB_GRPExecute(Sender: TObject);
    procedure ACTTAB_SEGExecute(Sender: TObject);
    procedure ACTTAB_SGPExecute(Sender: TObject);
    procedure ACTTAB_SCTExecute(Sender: TObject);
    procedure ACTTAB_GRD_CORExecute(Sender: TObject);
    procedure ACTExecPrinterExecute(Sender: TObject);
    procedure MIComissaoClick(Sender: TObject);
    procedure ACTCOM_LANExecute(Sender: TObject);
    procedure ACTPRG_LANExecute(Sender: TObject);
    procedure ACTEST_QUAExecute(Sender: TObject);
    procedure MIRelProdutosProgClick(Sender: TObject);
    procedure ACTNFE_LAN_TERExecute(Sender: TObject);
    procedure ACTEXP_COLExecute(Sender: TObject);
    procedure ACTDSP_CTNRExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ACTTAB_PRZExecute(Sender: TObject);
    procedure ACTPedidosExecute(Sender: TObject);
    procedure ACTTAB_GRD_ESTExecute(Sender: TObject);
    procedure ACTTAB_COLExecute(Sender: TObject);
    procedure ACTCAD_VENExecute(Sender: TObject);
    procedure ACTCAD_COMExecute(Sender: TObject);
    procedure ACTComprasExecute(Sender: TObject);
    procedure ACTProgramadosExecute(Sender: TObject);
    procedure ACTPED_LANExecute(Sender: TObject);
    procedure ACTROM_LANExecute(Sender: TObject);
    procedure ACTNFE_SAI_LANExecute(Sender: TObject);
    procedure ACTNFE_SAIExecute(Sender: TObject);
    procedure ACTNFE_LANExecute(Sender: TObject);
    procedure ACTNotaFiscalExecute(Sender: TObject);
    procedure ACTNFE_PSQExecute(Sender: TObject);
    procedure ACTTAB_NATExecute(Sender: TObject);
    procedure ACTCupomFiscalExecute(Sender: TObject);
    procedure ACTFIN_REC_BOLExecute(Sender: TObject);
    procedure ACTFIN_REC_IBBExecute(Sender: TObject);
    procedure ACTFIN_CAL_VCTExecute(Sender: TObject);
    procedure ACTFIN_EMI_RECExecute(Sender: TObject);
    procedure ACTFIN_EMI_VFUExecute(Sender: TObject);
    procedure ACTPagamentosExecute(Sender: TObject);
    procedure ACTCHQ_LANExecute(Sender: TObject);
    procedure ACTChequesExecute(Sender: TObject);
    procedure ACTTAB_SSPExecute(Sender: TObject);
    procedure ACTTAB_COBExecute(Sender: TObject);
    procedure ACTTAB_PEDExecute(Sender: TObject);
    procedure ACTTAB_NCMExecute(Sender: TObject);
    procedure ACTTAB_UCOMExecute(Sender: TObject);
    procedure ACTTAB_CMUNExecute(Sender: TObject);
    procedure ACTTAB_ICMSExecute(Sender: TObject);
    procedure ACTTAB_ICMS_STExecute(Sender: TObject);
    procedure ACTTAB_ORIExecute(Sender: TObject);
    procedure ACRCOM_POR_ITEM_PEDExecute(Sender: TObject);
  private
    { Private declarations }
    procedure _Aviso_Reserva;
    procedure _TrimAppMemorySize;
    procedure _Login(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;
    function  _SetMouseTracking: Boolean;
  public
    { Public declarations }
  end;

{ procedures do Sistema }
procedure uPSQCAD(var ARECPedido : TRECPedidos); STDCall; { Cadastros: Clientes, Fornecedores, Transportadoras, Compradores, Vendedores, Representantes e Agenda; }
procedure uPSQEND(var ARECEndereco: TRECPedidos;AForceShowModal: Boolean = False); STDCall;
procedure uPSQCMUN(var RECEndereco: TRECPedidos); STDCall;
procedure uPSQPED(var ARECPedido : TRECPedidos); STDCall;
procedure uPSQPRO(var ARECProduto: TRECProdutos); STDCall;

procedure uPSQPD (var ARECEdicao: TRECEdicao); STDCall;
procedure uPSQNF (var ARECPSQNF : TRECEdicao;ASQLConsulta: TIBSQL;AWinControl: TWinControl); STDCall;

procedure uPSQLogradouros(var ARECEndereco: TRECEnderecos); STDCall;

procedure uPesquisa(var RECPrincipal: TRECPrincipal); STDCall;
procedure uPSQSCORE(ATForm: TForm;AIDCadastro,ADECadastro: Variant); STDCall;
procedure uLiberaFinanceiro; STDCall;
procedure uEmConstrucao(ACaption: String = ''); STDCall;
procedure uFrmCreate(AOwner: TComponent;AFClass: TFormClass; var AInstance); STDCall;
procedure uBXPedidos(AaIDPedido: array of Integer; ABSheildEdicao: Boolean = False); STDCall;
procedure uBX_DUP(AEmpresa,ANotaFiscal,AIDRomaneio: Variant); STDCall;
procedure uBxCaixa(AIDPedido: Integer); STDCAll;
procedure uRepaintMainForm(AForm: TForm); STDCall;
procedure uDisabledMainForm; STDCall;
procedure uFKPesquisa(ATabela: String;AValue: Variant); STDCall;

{ Funções do Sistema }
function uRETDTVencimento(AData: TDate): TDate; STDCall;
function uPSQNotaFiscal(ACDNF: Variant;Mostrar: Boolean = True): Boolean; STDCall;
function uLoadZoom(Imagem: TPicture; aProduto: Array of String): LongInt; STDCall;
function uPSQCadastroFiscal(ATexto: String): TRECCadastros; STDCall;
function uPesquisa_Produto(AIDEP: Integer = 0;ADTXT: String = '';AFTXT: String = 'ARTIGO';AWHERE: String = '=';ALIKE1: String = '';ALIKE2: String = '';ADDT1: TDate = 0;ADDT2: TDate = 0;AFDT: String = ''): Integer; STDCall;

{ Funções de Controle Financeiro }
function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String; STDCall;
function uLimiteVenda(ASTCobranca,ASTFatura,AIDCliente: String;ATotal: Double): string; STDCall;

var
  FrmPrincipal  : TFrmPrincipal;
  DATA_MEDIA    : TDate;
  ITENS_PEDIDO,
  ITENS_BANCARIO,
  ITENS_CARTEIRA: Integer;
  VALOR_PEDIDO,
  VALOR_SALDO,
  VALOR_BANCARIO,
  VALOR_CARTEIRA: Double;
  ATrackMouseEvent: TTrackMouseEvent;
  APSQ_PED_PRG,APSQ_PED_VEN,APSQ_ROM_CAB: String;

implementation

uses bPrincipal,
  AJBarcode,
  pLogin, pcad_cli, pSobre,
  pcad_rep, pcad_tra, pcad_for,
  ptab_nat, ptab_pag,
  pent_pro,
  pcai_abr, pcai_mov,
  pven_prg, pctr_prg, pctr_ped,
  pctr_rom, pctr_nfe,
  pcai_sar, pcai_fec,
  pven_prc, pctr_prc,
  pven_nfd, pcad_con,
  pcai_sar_edi, ppesquisa_geral,
  pfin_rec_con, petiqueta_geral,
  pEmConstrucao, pRelatorios, pcad_cli_inf, pSenha, pImpressoras,
  pPesquisa, pNFeConsulta, pemail, pven_nfe,
  pConsultaCNPJ, pCFeSat,
  peti_pro, pNFeSaida,
  pNFeSaidaConsulta,
  pProduto_Custo_Importado,pProduto_Custo_Importado_Edicao,
  pAviso_Reserva, pProduto_SubCategoria,pProduto_Grupo,
  pProduto_SubGrupo, pProduto_Categoria,
  pPesquisaCodigoMunicipal, pProduto_Cor, pProduto_Imagem, pfin_dup,
  ppag_com, pProduto, pNFeConsultaSefaz,
  pPesquisaLogradouros, pEstoqueDefeitos,
  prelatorio_geral, pProduto_Pesquisa, pPSQCAD,
  pSegmentos, pEstoque, pPSQEND, peti_pro_new, pNFeSaida_NEW,
  pEXP_PED_SEP_MAN, pEXP_PED_SEP_COL, pven_ped;

{$R *.dfm}

procedure uEmConstrucao(ACaption: String = ''); STDCall;
begin
  uFrmCreate(Nil,TFrmEmConstrucao,FrmEmConstrucao);
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
              TFrmPSQEND.ExecForm(Nil,FrmPSQEND,fsStayOnTop,-3,'Consulta',ARECEndereco.CDCD,ARECEndereco.FIELD+' '+IFThen(Pos('ID',ARECEndereco.FIELD) > 0,'=','CONTAINING')+' '''+ARECEndereco.VALUE+'''');
               FrmPSQEND.RECDefault.Top  := ARECEndereco.APoint.Y + ARECEndereco.AWinControl.Height;
               FrmPSQEND.RECDefault.Left := ARECEndereco.APoint.X;
               FrmPSQEND.Consulta.SQL.Clear;
               FrmPSQEND.Consulta.SQL.Assign(ARECEndereco.AQConsulta.SQL);
               FrmPSQEND.ShowModal;
            finally
              if (FrmPSQEND.RECDefault.Selected) or (AForceShowModal) then
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
        SQL.Add('LEFT JOIN CAD_CLI_CRD AS FK ON (FK.IDCD = PK.IDCD AND FK.IDEP = '''+IFThen(ARECPedido.CDCD = 0,RECParametros.Id,'99')+''')');

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
             TFrmPSQCAD.ExecForm(Nil,FrmPSQCAD,fsStayOnTop,-3,'Consulta',ARECPedido.CDCD,ARECPedido.FIELD+' '+IFThen(Pos('ID',ARECPedido.FIELD) > 0,'=','CONTAINING')+' '''+ARECPedido.VALUE+'''');
              FrmPSQCAD.RECDefault.Top  := ARECPedido.APoint.Y + ARECPedido.AWinControl.Height;
              FrmPSQCAD.RECDefault.Left := ARECPedido.APoint.X;
              FrmPSQCAD.Consulta.SQL.Clear;
              FrmPSQCAD.Consulta.SQL.Assign(ARECPedido.AQConsulta.SQL);
              FrmPSQCAD.ShowModal;
           finally
             if FrmPSQCAD.RECDefault.Selected then
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
        ARECPedido.CFOP := Current.ByName(IFThen((ARECPedido.UF = EmptyStr) or (ARECPEdido.UF = RECParametros.SGUF),'CFOPDUF','CFOFDUF')).AsString;

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
             TFrmPesquisaPRO.ExecForm(Nil,FrmPesquisaPRO,fsStayOnTop,-3,ARECProduto.FIPD+ARECProduto.RPPD,ARECProduto.IDEV);
             FrmPesquisaPRO.Consulta.SQL.Clear;
             FrmPesquisaPRO.Consulta.SQL.Assign(ARECProduto.AQConsulta.SQL);
             FrmPesquisaPRO.ShowModal;
           finally
             if FrmPesquisaPRO.RECDefault.Selected then
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
    SQL.Add('FROM ' + oREPZero(ARECEdicao.TBPK,'_',RECParametros.Id,3) + ' AS PK');

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

procedure uRepaintMainForm(AForm: TForm); STDCall;
var
  BPNLPrincipal,BPNLUtil: Boolean;
  PNLPrincipal ,PNLUtil : TPanel;
  i: Word;
begin
  if (Application.MainForm <> Nil) and (AForm <> Nil) then
      with Application.MainForm do
      begin
        AForm.HelpKeyword := '4';

        PNLPrincipal := FindComponent('PNLPrincipal') as TPanel;
        PNLUtil      := FindComponent('PNLUtil')      as TPanel;

        if (PNLPrincipal <> Nil) and (PNLUtil <> Nil) then
            if (not PNLPrincipal.Visible) or (not PNLUtil.Visible) then
            begin
              BPNLPrincipal := True;
              BPNLUtil      := True;

              if MDIChildCount > 0 then
                 for I := MDIChildCount-1 downto 0 do
                     if MDIChildren[I].Name <> AForm.Name then
                        if MDIChildren[I].HelpKeyword = '1' then
                           BPNLUtil := False
                        else
                           if MDIChildren[I].HelpKeyword = '2' then
                              BPNLPrincipal := False
                           else
                              if MDIChildren[I].HelpKeyword = '3' then
                              begin
                                BPNLPrincipal := False;
                                BPNLUtil      := False;
                              end;

              PNLPrincipal.Visible := BPNLPrincipal;
              PNLPrincipal.Refresh;

              PNLUtil.Visible := BPNLUtil;
              PNLUtil.Refresh;
            end;
      end;
end;

procedure uDisabledMainForm; STDCall;
var
  PNLPrincipal,
  PNLUtil: TPanel;
begin
  if   Application.MainForm <> Nil then
  with Application.MainForm do
  begin
    PNLPrincipal := FindComponent('PNLPrincipal') as TPanel;
    PNLUtil      := FindComponent('PNLUtil')      as TPanel;

    if (PNLPrincipal <> Nil) and (PNLUtil <> Nil) then
    begin
      PNLPrincipal.Visible := False;
      PNLPrincipal.Refresh;

      PNLUtil.Visible := False;
      PNLUtil.Refresh;

      Repaint;
    end;
  end;
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

procedure uPSQCMUN(var RECEndereco: TRECPedidos); STDCall;
begin
  with FrmPesquisaCodigoMunicipal do
  try
    TFrmPesquisaCodigoMunicipal.ExecForm(Nil,FrmPesquisaCodigoMunicipal,fsNormal,RECEndereco.CMUN,-1,RECEndereco.UF);
  finally
    if RECPrincipal.Selected then
       RECEndereco.CMUN := RECPrincipal.Tabela;
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
    TFrmPesquisaLogradouros.ExecForm(Nil,FrmPesquisaLogradouros,fsNormal);
  finally
    if RECPrincipal.Selected then
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

procedure uPesquisa(var RECPrincipal: TRECPrincipal); STDCall;
begin
  FrmPesquisa := TFrmPesquisa.Create(Nil,RECPrincipal);
  FrmPesquisa.ShowModal;
  try
    RECPrincipal.Selected := FrmPesquisa.RECPesquisa.Selected;
    if RECPrincipal.Selected then
       RECPrincipal := FrmPesquisa.RECPesquisa;
  finally
    FreeAndNil(FrmPesquisa);
  end;
end;

function uLoadZoom(Imagem: TPicture; aProduto: Array of String): LongInt; STDCall;
begin
  result := 0;
  if (Imagem <> Nil) and (not oEmpty(aProduto[0])) then
  try
    FrmProduto_Imagem := TFrmProduto_Imagem.Create(Nil,Imagem,aProduto);
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
      SQL.Add('SELECT * FROM SP_CAD_PRO_PSQ');
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

procedure uPSQSCORE(ATForm: TForm;AIDCadastro,ADECadastro: Variant); STDCall;
begin
  if Assigned(frmcad_cli_inf) then
  begin
    frmcad_cli_inf._Pedidos(AIDCadastro,ADECadastro);
    frmcad_cli_inf.BringToFront;
    frmcad_cli_inf.SetFocus;
  end else
  begin
    frmcad_cli_inf := Tfrmcad_cli_inf.Create(Nil,AIDCadastro,ADECadastro);
    frmcad_cli_inf.Show;
  end;
end;

function uPSQCadastroFiscal(ATexto: String): TRECCadastros; STDCall;
begin
  FrmConsultaCNPJ := TFrmConsultaCNPJ.Create(Nil,ATexto);
  try FrmConsultaCNPJ.ShowModal
  finally
    Result := FrmConsultaCNPJ.RECCadastros;
    FreeAndNil(FrmConsultaCNPJ);
  end;
end;

function uRETDTVencimento(AData: TDate): TDate; STDCall;
begin
  if AData <= 0 then
     AData := RECParametros.DTServer;

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

function uPSQNotaFiscal(ACDNF: Variant;Mostrar: Boolean = True): Boolean; STDCall;
var
  i: Word;
begin
  result := True;
  if ACDNF = 0 then
  begin
    oErro(Application.Handle,'Número não informado ou incorreto !');
    result := False;
    Abort;
  end;  

  try
    oOTransact(Fbird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      for i := 1 to 9 do
      begin
        SQL.Add('SELECT NFE_CDNF,NFE_DEMI,NFE_DFAV,NFE_DTRA,NFE_DVEN,NFE_DREP');
        SQL.Add('FROM   TAB_PAR_SIS AS EP,'+oREPZero('nfe_cab','_',i,3)+ ' "NFE_CAB"');
        SQL.Add('WHERE  EP.ID     = '''+IntToStr(i)+'''');
        SQL.Add('AND    EP.CNPJ   = '''+RECParametros.CNPJ+'''');
        SQL.Add('AND    NFE_CAB.NFE_CDNF   = '''+ACDNF             +'''');
        SQL.Add('AND    NFE_CAB.NFE_FINNFE < 5');
        SQL.Add('AND    CHAR_LENGTH(NFE_CAB.NFE_CHAV) = 44');
        if i < 9 then
        SQL.Add('UNION');
      end;
      ExecQuery;

      if Current.Vars[0].AsInteger > 0 then
      begin
        result := False;
        if Mostrar then
           oErro(Application.Handle,'Número de Nota Fiscal já Emitida !'+#13+#13+
                                    'Favorecido: '         +Current.Vars[2].AsString+IFThen((Current.Vars[4].AsString <> '') and (Current.Vars[5].AsString <> ''),#13+
                                    'Vendedores: '         +Current.Vars[4].AsString+' / ' + Current.Vars[5].AsString,'')+#13+#13+
                                    'Emitido em: '         +FormatDateTime('dd/mm/yy hh:mm', Current.Vars[1].AsDateTime )+#13+
                                    'Frete por conta de: ' +Current.Vars[3].AsString);
      end;
    end;  
  finally
    oCTransact(FBird.TFBConsulta);
  end;
end;

function uFIN_BLQ(ASTCobranca,ASTFatura,AIDCliente: String): String;
begin
  result := EmptyStr;
  if (RECParametros.FIN_LIMITE_CARTEIRA > 0) and (ASTCobranca <> 'SEM COBRANÇA') and (ASTFatura = '1') and (AIDCliente <> RECParametros.IDCL_PAD) then
  try
    oOTransact(FBird.TFBConsulta);
    with FBird.SQLFBConsulta do
    begin
      { Carteira Logada }
      Close;
      SQL.Clear;
      SQL.Add('SELECT   ''AGUARDANDO LIBERAÇÃO'' AS STFI FROM ' + oREPZero('VW_FIN_REC_CAR','_',RECParametros.Id,3) + ' AS PK');
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
      Close;
      SQL.Clear;
      SQL.Add('SELECT VCRD FROM CAD_CLI_CRD');
      SQL.Add('WHERE  IDEP = ''' + RECParametros.ID + '''');
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
      SQL.Add('FROM '+oREPZero('VW_PED_VEN_CAB','_',RECParametros.Id,3)+' AS PK');
      SQL.Add('WHERE  PK.IDEP = '''+RECParametros.Id+'''');
      SQL.Add('AND    PK.IDCD = '''+AIDCliente      +'''');
      SQL.Add('AND    PK.FAPD = 1'); // Tipo   Faturamento
      SQL.Add('AND    PK.BQPD = 1'); // Tipo   Bloqueável Financeiramente
      SQL.Add('AND    PK.APST = 1'); // Status Pendente
      SQL.Add('AND    PK.CSCD = 0'); // Status Pendente
      ExecQuery;
      VALOR_PEDIDO := Current.Vars[0].AsFloat;
      ITENS_PEDIDO := Current.Vars[1].AsInteger;
    end;

    VALOR_SALDO := AVCRD - (VALOR_BANCARIO+VALOR_CARTEIRA);
    if VALOR_SALDO < 0 then
    VALOR_SALDO := 0;

    if ATotal > VALOR_SALDO then
    result := 'AGUARDANDO CRÉDITO';
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

procedure TFrmPrincipal.TTempoTimer(Sender: TObject);
          function SecondsIdle: DWord;
          var
            liInfo: TLastInputInfo;
          begin
            liInfo.cbSize := SizeOf(TLastInputInfo);
            GetLastInputInfo(liInfo);

            Result := (GetTickCount - liinfo.dwTime) DIV 1000;
          end;
begin
  if FrmPrincipal <> Nil then
     with FrmPrincipal, FBird do
     begin
       RECParametros.SecondsIdle := SecondsIdle;

       ACTCAI_ABR.Enabled := (((RECParametros.STCX = 'Caixa Fechado') or (RECParametros.STCX = 'Caixa não aberto')) and (RECUsuarios.Caixa));
       ACTCAI_RAB.Enabled := (ACTCAI_ABR.Enabled);
       ACTCAI_FEC.Enabled := ((not ACTCAI_ABR.Enabled) and (RECUsuarios.Caixa));

       SBRodape.Panels[2].Text := RECParametros.STCX;
       SBRodape.Panels[4].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]);

       if RECParametros.SecondsIdle > 0 then
          if RECParametros.SecondsIdle mod 180 = 0  then
          begin
            { Main DB }
            if not FBird.DBErp.TestConnected then
               try
                 DBErp.CloseDataSets;
                 DBErp.ForceClose;

                 SleepEx(100,False);
                 DBErp.Connected := True;
               except
                 ;
               end;

            if FBird.DBErp.TestConnected then
               bResumo_Pedido;
               
            { Edição }
            if not FBird.DBEdicao.TestConnected then
               try
                 DBEdicao.CloseDataSets;
                 DBEdicao.ForceClose;

                 SleepEx(100,False);
                 DBEdicao.Connected := true;
               except
                 ;
               end;

            if FBird.DBErp.TestConnected then
               try
                 oOTransact(TFBSEdicao);
                 with SQLFBSEdicao do
                 begin
                   Close;
                   SQL.Clear;
                   SQL.Add('SELECT * FROM rdb$Database');
                   ExecQuery;
                 end;
                 oCTransact(TFBSEdicao);
               except
                 oCTransact(TFBSEdicao,ltRollback);
               end;

            if RECParametros.CDCX = 0 then
               bExecEvent('Caixa');

            try _TrimAppMemorySize;
            except ;
            end;
          end;
     end;     
end;

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

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if ClientHandle <> 0 then
     if (not(GetWindowLong(ClientHandle, GWL_USERDATA) <> 0))  then
         SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP);

  _SetHintDefault;
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
        if MDIChildren[i] <> Nil then
           MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas !'+#13+
                      'Favor fechá-los manualmente.'+#13+#13+
                      'Error Code: '+E.Message);
  end;

  if oYesNo(Handle,'Sair do Sistema ?') = mrNo then
     Abort;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  FrmPrincipal := Nil;
  _TrimAppMemorySize;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
var
  XRect   : TRect;
  WLargura: Word;
begin
  if Showing then
  begin
    WLargura := SBRodape.Panels[3].MinWidth;
    Case Length(SBRodape.Panels[3].Text) of
      25..30: WLargura := 185;
          31: WLargura := 190;
          32: WLargura := 195;
      33..40: WLargura := 210;
    end;
    SBRodape.Panels[3].Width := WLargura;

    { Painel Usuário }
    WLargura := SBRodape.Panels[1].MinWidth;
    Case Length(SBRodape.Panels[1].Text) of
      31..35: WLargura := 250;
      36..40: WLargura := 300;
      41..45: WLargura := 350;
      46..50: WLargura := 400;
      51..55: WLargura := 450;
      56..60: WLargura := 500;
      61..65: WLargura := 550;
      66..70: WLargura := 600;
    end;
    SBRodape.Panels[1].Width := WLargura;
    SBRodape.Panels[0].Width := SBRodape.Width - 20 - (SBRodape.Panels[1].Width+SBRodape.Panels[2].Width+SBRodape.Panels[3].Width+
                                                       SBRodape.Panels[4].Width+SBRodape.Panels[5].Width+SBRodape.Panels[6].Width);
    XRect.Left   := 0;
    XRect.Right  := Screen.Width;
    XRect.Top    := 0;
    XRect.Bottom := Screen.Height;

    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);

    if Screen.Height <= 768 then
       for WLargura := MDIChildCount - 1 downto 0 do
           if MDIChildren[WLargura] <> Nil then
              MDIChildren[WLargura].Repaint;
  end;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
  if FrmPrincipal <> Nil then
     Paint;
end;

procedure TFrmPrincipal.ACTPrintersExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmImpressoras,FrmImpressoras);
end;

procedure TFrmPrincipal.ACTExecPrinterExecute(Sender: TObject);
begin
  if oEmpty(ACTExecPrinter.Hint) then
            ACTExecPrinter.Hint := 'Relatórios';

  try
    oExecPrinter(Handle,ACTExecPrinter.Hint);
  finally
    ACTExecPrinter.Hint := EmptyStr;
  end;
end;

procedure TFrmPrincipal.ACTRelatoriosExecute(Sender: TObject);
begin
  FrmRelatorios := TFrmRelatorios.Create(Nil,TAction(Sender).Hint,TAction(Sender).Tag,TAction(Sender).HelpContext,TAction(Sender).HelpKeyword,TAction(Sender).HelpKeyword);
  Try FrmRelatorios.ShowModal;
  Finally FreeAndNil(FrmRelatorios);
  End;
end;

procedure TFrmPrincipal.ACTLoginExecute(Sender: TObject);
var
  i: integer;
begin
  for i := MDIChildCount - 1 downto 0 do
  if MDIChildren[i] <> Nil then
     MDIChildren[i].Close;

  FrmLogin := TFrmLogin.create(Nil);
  FrmLogin.Caption := 'Alternando usuário';
  try
    FrmLogin.ShowModal;
  finally
    if (FBird.DBErp.TestConnected) and (FrmLogin.RECLogin.Selected) then
       _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP) else
    begin
      RECUsuarios.Id := 0;
      Close;
    end;
    FreeAndNil(FrmLogin);
  end;
  _Aviso_Reserva;
end;

procedure TFrmPrincipal.ACTPasswordExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmSenha,FrmSenha);
end;

procedure TFrmPrincipal.ACTHELPExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmsobre,Frmsobre);
end;

procedure TFrmPrincipal.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.ACTEmConstrucaoExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal._TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, False, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
    ;
  end;
end;

procedure TFrmPrincipal._Aviso_Reserva;
var
  nRecNo: Integer;
begin
  if RECUsuarios.Id = 0 then
     Exit;
     
  nRecNo := 0;
  if ((RECUsuarios.Grupo = 'VEN') or (RECUsuarios.Grupo = 'DIR') or (bPSQUSER('USU_AUTO','Vendas','Pedidos','Autorizar Outros Usuários',False))) then
  with FBird do
  try
    oOTransact(TFBConsulta);
    with SQLFBConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(PK.ID) FROM VW_PED_VEN_AVR AS PK');
      SQL.Add('WHERE  PK.IDEP = '''+RECParametros.Id+'''');

      if RECUsuarios.Grupo = 'VEN' then
         SQL.Add('AND PK.IDCV = '''+RECUsuarios.Id+'''');

      ExecQuery;
      nRecNo := Current.Vars[0].AsInteger;
    end;
  finally
    oCTransact(TFBConsulta);
  end;

  if nRecNo > 0 then
     TFrmAviso_Reserva.ExecForm(Nil,FrmAviso_Reserva);
end;

procedure TFrmPrincipal.MIComissaoClick(Sender: TObject);
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
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= DATEADD(MONTH,-1,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE))');
                SQL.Add('AND      PK.FAPD  = 1');
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
                  SBRodape.Panels[1].Text := 'OTMPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[25].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
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
                    if ((FBird.SQLFBConsulta.Current.Vars[4].AsInteger <= 21) and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= PrecoTabelaMenos5))             or
                       ((DtMedia <= 75 )                              and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat  = FBird.SQLFBFKConsulta.Current.Vars[3].AsFloat)) or
                       ((DtMedia >  75 )                              and (FBird.SQLFBFKConsulta.Current.Vars[2].AsFloat >= PrecoTabelaMais5 )) then
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

                    SBRodape.Panels[1].Text := 'OTMErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
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

                  SBRodape.Panels[1].Text := 'OTM Erro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[1].Text := 'Otimotex Fim';
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
                SQL.Add('WHERE    CAST(PK.DTBX AS DATE) >= DATEADD(MONTH,-1,DATEADD(1 - EXTRACT(DAY FROM CURRENT_DATE) DAY TO CURRENT_DATE))');
                SQL.Add('AND      PK.FAPD  = 1');
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
                    SBRodape.Panels[2].Text := 'LEBPed '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' de '+FormatDateTime('dd/mm/yy',FBird.SQLFBConsulta.Current.Vars[4].AsDateTime)+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
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

                      SBRodape.Panels[2].Text := 'LEBErro Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
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

                  SBRodape.Panels[2].Text := 'LEBErro Cabec Ped '+FBird.SQLFBConsulta.Current.Vars[0].AsString+' Item '+FBird.SQLFBFKConsulta.Current.Vars[0].AsString;
                  SBRodape.Refresh;

                  Abort;
                end;
                FBird.SQLFBConsulta.Next;
              end;
            finally
              oCTransact(FBird.TFBConsulta);

              SBRodape.Panels[2].Text := 'Lebianco Fim';
              SBRodape.Refresh;
            end;
          end;
begin
  OTMComissoes;
  LEBComissoes;
end;

procedure TFrmPrincipal.MIRelProdutosProgClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(Self);
  try
    frmrelatorio_geral.CDPD                   := '0';
    frmrelatorio_geral.CDRO                   := '0';
    frmrelatorio_geral.CDBX                   := '0';
    frmrelatorio_geral.CDNF                   := '0';
    frmrelatorio_geral.tsVEN_PRG.TabVisible   := true;
    frmrelatorio_geral.cbVEN_PRG_TREL.Text    := 'PROGRAMAÇÕES DE VENDAS DE PRODUTOS - GERAL';
    frmrelatorio_geral.cbVEN_PRG_TREL.Enabled := False;
    frmrelatorio_geral.pcMAIN.ActivePage      := frmrelatorio_geral.tsVEN_PRG;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
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


{ ********** CADASTROS ********** }
procedure TFrmPrincipal.ACTClientesExecute(Sender: TObject);
begin
  TFrmcad_cli.ExecForm(Nil,frmcad_cli);
end;

procedure TFrmPrincipal.ACTTransportadorasExecute(Sender: TObject);
begin
  TFrmcad_tra.ExecForm(Nil,Frmcad_tra);
end;

procedure TFrmPrincipal.ACTRepresentantesExecute(Sender: TObject);
begin
  TFrmcad_rep.ExecForm(Nil,Frmcad_rep);
end;

procedure TFrmPrincipal.ACTCAD_VENExecute(Sender: TObject);
begin
  UEmConstrucao;
end;

procedure TFrmPrincipal.ACTFornecedoresExecute(Sender: TObject);
begin
  TFrmcad_for.ExecForm(Nil,Frmcad_for);
end;

procedure TFrmPrincipal.ACTCAD_COMExecute(Sender: TObject);
begin
  UEmConstrucao;
end;

{ ********** PRODUTOS ********** }
procedure TFrmPrincipal.ACTProdutosExecute(Sender: TObject);
begin
  TFrmProduto.ExecForm(Nil,FrmProduto);
end;

procedure TFrmPrincipal.ACTTAB_GRD_CORExecute(Sender: TObject);
begin
  TFrmProduto_Cor.ExecForm(Nil,FrmProduto_Cor);
end;

procedure TFrmPrincipal.ACTTAB_GRD_ESTExecute(Sender: TObject);
begin
  UEmConstrucao;
end;

procedure TFrmPrincipal.ACTPRO_ETQExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmEtiqueta_Geral,FrmEtiqueta_Geral);
end;

procedure TFrmPrincipal.ACTTAB_COLExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTTAB_SEGExecute(Sender: TObject);
begin
  TFrmSegmentos.ExecForm(Nil,FrmSegmentos);
end;

procedure TFrmPrincipal.ACTTAB_GRPExecute(Sender: TObject);
begin
  TFrmProduto_Grupo.ExecForm(Nil,FrmProduto_Grupo);
end;

procedure TFrmPrincipal.ACTTAB_SGPExecute(Sender: TObject);
begin
  TFrmProduto_SubGrupo.ExecForm(Nil,FrmProduto_SubGrupo);
end;

procedure TFrmPrincipal.ACTTAB_CATExecute(Sender: TObject);
begin
  TFrmProduto_Categoria.ExecForm(Nil,FrmProduto_Categoria);
end;

procedure TFrmPrincipal.ACTTAB_SCTExecute(Sender: TObject);
begin
  TFrmProduto_SubCategoria.ExecForm(Nil,FrmProduto_SubCategoria);
end;

{ ********** ESTOQUE ********** }
procedure TFrmPrincipal.ACTEST_LANExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrment_pro,Frment_pro);
end;

procedure TFrmPrincipal.ACTEstoqueExecute(Sender: TObject);
begin
  TFrmEstoque.ExecForm(Nil,FrmEstoque);
end;

procedure TFrmPrincipal.ACTEST_ETQExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmeti_pro,frmeti_pro);
end;

procedure TFrmPrincipal.ACTEST_QUAExecute(Sender: TObject);
begin
  TFrmEstoqueDefeitos.ExecForm(Nil,FrmEstoqueDefeitos);
end;

{ ********** EXPEDIÇÃO ********** }
procedure TFrmPrincipal.ACTEXP_COLExecute(Sender: TObject);
begin
  TFrmEXP_PED_SEP_COL.ExecForm(Nil,FrmEXP_PED_SEP_COL);
end;

procedure TFrmPrincipal.ACTEXP_MANExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmEXP_PED_SEP_MAN,FrmEXP_PED_SEP_MAN);
end;

{ ********** CONTAINERS ********** }
procedure TFrmPrincipal.ACTCAD_CTNRExecute(Sender: TObject);
begin
  Tfrmcad_con.ExecForm(Nil,frmcad_con);
end;

procedure TFrmPrincipal.ACTDSP_CTNRExecute(Sender: TObject);
begin
  TFrmProduto_Custo_Importado.ExecForm(Nil,FrmProduto_Custo_Importado);
end;

{ ********** COMPRAS ********** }
procedure TFrmPrincipal.ACTCOM_LANExecute(Sender: TObject);
begin
  if Assigned(frmven_prc) then
  begin
    frmven_prc.BringToFront;
    frmven_prc.SetFocus;
  end else
  begin
    bExecEvent('Caixa',lwShowWarning);
    uFrmCreate(Nil,Tfrmven_prc,frmven_prc);
  end;
end;

procedure TFrmPrincipal.ACTComprasExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_prc,Frmctr_prc);
end;

{ ********** PROGRAMAÇÕES ********** }
procedure TFrmPrincipal.ACTPRG_LANExecute(Sender: TObject);
begin
  if Assigned(frmven_prg) then
  begin
    frmven_prg.BringToFront;
    frmven_prg.SetFocus;
  end else
  begin
    bExecEvent('Caixa',lwShowWarning);
    uFrmCreate(Nil,Tfrmven_prg,frmven_prg);
  end;
end;

procedure TFrmPrincipal.ACTProgramadosExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_prg,Frmctr_prg);
end;

{ ********** PEDIDOS ********** }
procedure TFrmPrincipal.ACTPED_LANExecute(Sender: TObject);
begin
  if Assigned(frmven_ped) then
  begin
    frmven_ped.BringToFront;
    frmven_ped.SetFocus;
  end else
  begin
    bExecEvent('Caixa',lwShowWarning);
    uFrmCreate(Nil,Tfrmven_ped,frmven_ped);
  end;
end;

procedure TFrmPrincipal.ACTPedidosExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmctr_ped,Frmctr_ped);
end;

{ ********** ROMANEIOS ********** }
procedure TFrmPrincipal.ACTROM_LANExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTRomaneiosExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmctr_rom,Frmctr_rom);
end;

{ ********** NOTA FISCAL ********** }
procedure TFrmPrincipal.ACTNFE_LANExecute(Sender: TObject);
begin
  if Assigned(frmven_nfe) then
  begin
    frmven_nfe.BringToFront;
    frmven_nfe.SetFocus;
  end else
  uFrmCreate(Nil,Tfrmven_nfe,frmven_nfe);
end;

procedure TFrmPrincipal.ACTNotaFiscalExecute(Sender: TObject);
begin
   uFrmCreate(Nil,Tfrmctr_nfe,Frmctr_nfe);
end;

procedure TFrmPrincipal.ACTNFE_LAN_TERExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmven_nfd,frmven_nfd);
end;

procedure TFrmPrincipal.ACTNFE_PSQExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmNFeConsulta,FrmNFeConsulta);
end;

procedure TFrmPrincipal.ACTNFE_SAI_LANExecute(Sender: TObject);
begin
  TFrmNFeSaida.ExecForm(Nil,FrmNFeSaida);
end;

procedure TFrmPrincipal.ACTNFE_SAIExecute(Sender: TObject);
begin
  TFrmNFeSaidaConsulta.ExecForm(Nil,FrmNFeSaidaConsulta);
end;

{ ********** CUPOM FISCAL ********** }
procedure TFrmPrincipal.ACTCFE_LANExecute(Sender: TObject);
var
  Numero: String;
begin
  if oEmpty(RECParametros.CFE_API_TOKEN) then
     oException(Nil,'Emissor de CFeSat não Disponível !');

  if Assigned(frmctr_ped) then
  Numero := frmctr_ped.cadastroDEPK.AsString else
  Numero := '0';

  FrmCFeSat := TFrmCFeSat.Create(Nil,Numero);
  try FrmCFeSat.ShowModal;
  finally FreeAndNil(FrmCFeSat);
  end;
end;

procedure TFrmPrincipal.ACTCupomFiscalExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

{ ********** RECEBIMENTOS ********** }
procedure TFrmPrincipal.ACTFIN_REC_BANExecute(Sender: TObject);
begin
  SLPrincipal.Values['fin_caption']  := 'Consultas de Recebimentos Bancários';
  SLPrincipal.Values['fin_hint']     := 'DUPLICATA';
  SLPrincipal.Values['fin_baixa']    := SLPrincipal.Values['fin_rec_ban_bai'];
  SLPrincipal.Values['fin_consulta'] := SLPrincipal.Values['fin_rec_car_bai'];

  TFrmfin_rec_con.ExecForm(Nil,Frmfin_rec_con,'',-2);
end;

procedure TFrmPrincipal.ACTFIN_REC_CARExecute(Sender: TObject);
begin
  SLPrincipal.Values['fin_caption']  := 'Consultas de Recebimentos em Carteira';
  SLPrincipal.Values['fin_hint']     := 'CARTEIRA';
  SLPrincipal.Values['fin_baixa']    := SLPrincipal.Values['fin_rec_car_bai'];
  SLPrincipal.Values['fin_consulta'] := SLPrincipal.Values['fin_rec_ban_bai'];

  TFrmfin_rec_con.ExecForm(Nil,Frmfin_rec_con,'',-2);
end;

procedure TFrmPrincipal.ACTFIN_REC_DUPExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmfin_dup,Frmfin_dup);
end;

procedure TFrmPrincipal.ACTFIN_REC_BOLExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTFIN_REC_IBBExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTFIN_CAL_VCTExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTFIN_EMI_RECExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTFIN_EMI_VFUExecute(Sender: TObject);
begin
 uEmConstrucao;
end;

{ ********** PAGAMENTOS ********** }
procedure TFrmPrincipal.ACTFIN_PAG_CMVExecute(Sender: TObject);
begin
  uFrmCreate(Nil,TFrmpag_com,Frmpag_com);
end;

procedure TFrmPrincipal.ACTPagamentosExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

{ ********** CHEQUES ********** }
procedure TFrmPrincipal.ACTCHQ_LANExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTChequesExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

{ ********** CAIXA ********** }
procedure TFrmPrincipal.ACTCAI_ABRExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcai_abr,Frmcai_abr);
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
  uFrmCreate(Nil,Tfrmcai_fec,Frmcai_fec);
end;

procedure TFrmPrincipal.ACTCAI_SSPExecute(Sender: TObject);
begin
  Tfrmcai_sar.ExecForm(Nil,frmcai_sar);
end;

procedure TFrmPrincipal.ACTTAB_SSPExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTCAI_FLCExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmcai_mov,frmcai_mov);
end;

{ ********** TABELAS ********** }
procedure TFrmPrincipal.ACTTAB_PRZExecute(Sender: TObject);
begin
  uFrmCreate(Nil,Tfrmtab_pag,Frmtab_pag);
end;

procedure TFrmPrincipal.ACTTAB_NATExecute(Sender: TObject);
begin
  Tfrmtab_nat.ExecForm(Nil,Frmtab_nat);
end;

procedure TFrmPrincipal.ACTTAB_COBExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTTAB_PEDExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTTAB_NCMExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTTAB_UCOMExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTTAB_CMUNExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTTAB_ICMSExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTTAB_ICMS_STExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal.ACTTAB_ORIExecute(Sender: TObject);
begin
  uEmConstrucao;
end;

procedure TFrmPrincipal._Login(AIDUSER: Variant; AIDEP,ADEEP: String);
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
  i: Word;
begin
  if oEmpty(AIDUSER) then
     Exit;

  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBFKEdicao do
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
    bExecPrinter;
    bExecCaixa;
  except
    { nothing }
  end;

  { Parâmetros de Aberturas de Querys }
  FreeAndNil(SLPrincipal);
  SLPrincipal := TStringList.Create;

  { Array de Pesquisas }
  aPesquisa := Nil;
  SetLength(aPesquisa,Length(aPerfilPesquisa));
  for i := Low(aPerfilPesquisa) to High(aPerfilPesquisa) do
  begin
    SetLength(aPesquisa[i],13);
    aPesquisa[i,00] := aPerfilPesquisa[i,00];
    aPesquisa[i,01] := aPerfilPesquisa[i,01];
    aPesquisa[i,02] := aPerfilPesquisa[i,02];
    aPesquisa[i,03] := aPerfilPesquisa[i,03];
    aPesquisa[i,04] := aPerfilPesquisa[i,04];
    aPesquisa[i,05] := aPerfilPesquisa[i,05];
    aPesquisa[i,06] := '';
    aPesquisa[i,07] := '';
    aPesquisa[i,08] := '';
    aPesquisa[i,09] := '';
    aPesquisa[i,10] := '';
    aPesquisa[i,11] := '';
    aPesquisa[i,12] := '';
  end;

  { OBJ Tabelas }
  SLPrincipal.Values['fin_rec_ban_bai'] := oREPZero('fin_rec_ban_bai','_',RECParametros.Id,3);
  SLPrincipal.Values['fin_rec_car_bai'] := oREPZero('fin_rec_car_bai','_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_cab']         := oREPZero('nfe_cab'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_dup']         := oREPZero('nfe_dup'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_ite']         := oREPZero('nfe_ite'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['nfe_tra']         := oREPZero('nfe_tra'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_com_cab']     := oREPZero('ped_com_cab'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_com_ite']     := oREPZero('ped_com_ite'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_prg_cab']     := oREPZero('ped_prg_cab'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_prg_ite']     := oREPZero('ped_prg_ite'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_ven_cab']     := oREPZero('ped_ven_cab'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['ped_ven_ite']     := oREPZero('ped_ven_ite'    ,'_',RECParametros.Id,3);
  SLPrincipal.Values['rom_cab']         := oREPZero('rom_cab'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['rom_ite']         := oREPZero('rom_ite'        ,'_',RECParametros.Id,3);
  SLPrincipal.Values['fin_caption']     := 'Consultas em Carteira';
  SLPrincipal.Values['fin_hint']        := '';
  SLPrincipal.Values['fin_baixa']       := '';
  SLPrincipal.Values['fin_consulta']    := '';

  { Grant Users }
  { Cadastros }
  ACTClientes.Enabled        := bPSQUSER('USU_VISU','Clientes'       ,'Cadastro','Permissões Gerais',False);
  ACTTransportadoras.Enabled := bPSQUSER('USU_VISU','Transportadoras','Cadastro','Permissões Gerais',False);
  ACTRepresentantes.Enabled  := bPSQUSER('USU_VISU','Representantes' ,'Cadastro','Permissões Gerais',False);
  ACTFornecedores.Enabled    := bPSQUSER('USU_VISU','Fornecedores'   ,'Cadastro','Permissões Gerais',False);

  { Produtos }
  ACTProdutos.Enabled := bPSQUSER('USU_VISU','Produtos','Cadastro'     ,'Permissões Gerais',False);

  ACTPRO_FCT.Enabled := bPSQUSER('USU_VISU','Produtos','Ficha Técnica','Permissões Gerais',False);
  ACTPRO_ETQ.Enabled := bPSQUSER('USU_VISU','Produtos','Etiquetas'    ,'Permissões Gerais',False);

  { Estoque }
  ACTEstoque.Enabled := bPSQUSER('USU_VISU','Produtos','Estoque','Controle de Lançamentos');
  ACTEST_LAN.Enabled := bPSQUSER('USU_NOVO','Produtos','Estoque','Lançamentos');
  ACTEST_ETQ.Enabled := bPSQUSER('USU_NOVO','Produtos','Estoque','Lançamentos');
  ACTEST_QUA.Enabled := bPSQUSER('USU_NOVO','Produtos','Estoque','Qualidade');

  { Expedição }
  ACTEXP_MAN.Enabled := bPSQUSER('USU_AUTO','Vendas','Pedidos','Separar');
  ACTEXP_COL.Enabled := ACTEXP_MAN.Enabled;

  { Containers }
  ACTCAD_CTNR.Enabled := bPSQUSER('USU_VISU','Tabelas','Containers','Permissões Gerais');
  ACTDSP_CTNR.Enabled := bPSQUSER('USU_VISU','Tabelas','Custo de Artigos Importados','Permissões Gerais');

  { Compras }
  ACTCOM_LAN.Enabled := bPSQUSER('USU_NOVO','Compras','Programações','Controlar');
  ACTCompras.Enabled := bPSQUSER('USU_VISU','Compras','Programações','Controlar');

  { Programações }
  ACTPRG_LAN.Enabled     := bPSQUSER('USU_NOVO','Vendas','Programações','Controlar');
  ACTProgramados.Enabled := bPSQUSER('USU_VISU','Vendas','Programações','Controlar');

  { Vendas }
  ACTPED_LAN.Enabled := bPSQUSER('USU_NOVO','Vendas','Pedidos','Incluir');
  ACTPedidos.Enabled := bPSQUSER('USU_VISU','Vendas','Pedidos','Controlar') or (Pos(RECUsuarios.Grupo,'PCPEXP') > 0);

  { Romaneios }
  ACTRomaneios.Enabled := bPSQUSER('USU_VISU','Vendas','Romaneios','Controlar');

  { Notas Fiscais }
  ACTNFE_LAN.Enabled     := bPSQUSER('USU_VISU','Nota Fiscal','Vendas' ,'Incluir');
  ACTNotaFiscal.Enabled  := bPSQUSER('USU_VISU','Nota Fiscal','Vendas' ,'Incluir');
  ACTNFE_LAN_TER.Enabled := bPSQUSER('USU_VISU','Nota Fiscal','Compras','Incluir');
  ACTNFE_SAI_LAN.Enabled := bPSQUSER('USU_NOVO','Nota Fiscal','Logística','Permissões Gerais');

  { Cupons Fiscai }
  ACTCFE_LAN.Enabled     := bPSQUSER('USU_NOVO','Fiscal','CFE','Permissões Gerais');
  ACTCupomFiscal.Enabled := bPSQUSER('USU_CTRL','Fiscal','CFE','Permissões Gerais');

  { Recebimentos }
  ACTFIN_REC_BAN.Enabled   := bPSQUSER('USU_VISU','Financeiro','Contas a Receber','Permissões Gerais');
  ACTFIN_REC_CAR.Enabled   := ACTFIN_REC_BAN.Enabled;
  ACTFIN_REC_DUP.Enabled := bPSQUSER('USU_VISU','Financeiro','Controle Bancário','Duplicatas');

  { Pagamentos }
  ACTFIN_PAG_CMV.Enabled := bPSQUSER('USU_VISU','Financeiro','Contas a Pagar'   ,'Permissões Gerais');

  { Cheques }
  ACTCHQ_LAN.Enabled := bPSQUSER('USU_NOVO','Cheques','Cadastro','Permissões Gerais');
  ACTCheques.Enabled := bPSQUSER('USU_CTRL','Cheques','Cadastro','Permissões Gerais');

  { Caixa }
  ACTCAI_ABR.Enabled := bPSQUSER('USU_VISU','Financeiro','Caixa','Abertura');
  ACTCAI_FEC.Enabled := bPSQUSER('USU_VISU','Financeiro','Caixa','Fechamento');
  ACTCAI_SSP.Enabled := bPSQUSER('USU_VISU','Financeiro','Caixa','Sangria \ Reforço');
  ACTTAB_SSP.Enabled := bPSQUSER('USU_VISU','Financeiro','Caixa','Tipos de Sangria \ Reforço');
  ACTCAI_FLC.Enabled := bPSQUSER('USU_VISU','Financeiro','Caixa','Movimentos');

  { Tabelas }
  ACTTAB_NAT.Enabled := bPSQUSER('USU_VISU','Tabelas','Naturezas de Operações' ,'Permissões Gerais');
  ACTTAB_PRZ.Enabled := bPSQUSER('USU_VISU','Tabelas','Condições de Pagamentos','Permissões Gerais');

  ACTTAB_GRD_COR.Enabled := bPSQUSER('USU_VISU','Tabelas','Cores'   ,'Permissões Gerais',False);
  ACTTAB_GRD_EST.Enabled := bPSQUSER('USU_VISU','Tabelas','Estampas','Permissões Gerais',False);

  ACTTAB_COL.Enabled := bPSQUSER('USU_VISU','Tabelas','Coleções'      ,'Permissões Gerais',False);
  ACTTAB_SEG.Enabled := bPSQUSER('USU_VISU','Tabelas','Segmentos'     ,'Permissões Gerais',False);

  ACTTAB_GRP.Enabled := bPSQUSER('USU_VISU','Tabelas','Grupos'        ,'Permissões Gerais',False);
  ACTTAB_SGP.Enabled := bPSQUSER('USU_VISU','Tabelas','Sub Grupos'    ,'Permissões Gerais',False);

  ACTTAB_CAT.Enabled := bPSQUSER('USU_VISU','Tabelas','Categorias'    ,'Permissões Gerais',False);
  ACTTAB_SCT.Enabled := bPSQUSER('USU_VISU','Tabelas','Sub Categorias','Permissões Gerais',False);

  { Sheild }
  MPSheild.Visible := (RECUsuarios.Grupo = 'DEV');

  with FrmPrincipal do
  begin
    if RECUsuarios.Grupo = 'PCP' then
    begin
      { Linha 1}
      _RSBAction(ACTProdutos,RSBProdutos,'Produtos');
      RSBProdutos.Top     := 3;
      RSBProdutos.Left    := 3;
      RSBProdutos.Visible := True;

      _RSBAction(ACTEST_ETQ,RSBEST_ETQ);
      RSBEST_ETQ.Top     := 03;
      RSBEST_ETQ.Left    := 80;
      RSBEST_ETQ.Visible := True;

      { Linha 2}
      _RSBAction(ACTEST_LAN,RSBEST_LAN,'Estoque');
      RSBEST_LAN.Top     := 70;
      RSBEST_LAN.Left    := 03;
      RSBEST_LAN.Visible := True;

      _RSBAction(ACTEstoque,RSBEstoque,'Controle...');
      RSBEstoque.Top     := 70;
      RSBEstoque.Left    := 80;
      RSBEstoque.Visible := True;

      { Linha 3}
      _RSBAction(ACTEXP_COL,RSBEXP_COL);
      RSBEXP_COL.Top     := 137;
      RSBEXP_COL.Left    := 003;
      RSBEXP_COL.Visible := True;

      _RSBAction(ACTEXP_MAN,RSBEXP_MAN);
      RSBEXP_MAN.Top     := 137;
      RSBEXP_MAN.Left    := 080;
      RSBEXP_MAN.Visible := True;

      { Linha 4}
      _RSBAction(ACTPedidos,RSBPedidos,'Pedidos');
      RSBPedidos.Top     := 204;
      RSBPedidos.Left    := 003;
      RSBPedidos.Visible := True;

      _RSBAction(ACTRomaneios,RSBRomaneios,'Romaneios');
      RSBRomaneios.Top     := 204;
      RSBRomaneios.Left    := 080;
      RSBRomaneios.Visible := True;
    end;

    { Preenchendo o rodapé do Form Principal }
    SBRodape.Width          := Screen.Width + 1;
    SBRodape.Panels[0].Text := RECParametros.Fantasia;
    SBRodape.Panels[1].Text := RECUsuarios.Login+' - '+RECUsuarios.Cargo;
    SBRodape.Panels[3].Text := RECParametros.ServerHost;
    SBRodape.Panels[6].Text := 'Copyright © '+oStrZero(YearOf(Date),4)+' Sheild';

    Caption := 'Sheild '+IFThen(RECUsuarios.Grupo = 'PCP','PCP',
                         IFThen(RECUsuarios.Grupo = 'EXP','EXP',
                         IFThen(RECUsuarios.Grupo = 'FIN','Financeiro','Erp')));

    { Foto de Fundo da Tela Principal}
    oLoadJPG(RECParametros.IMG_JPG_SPLASH,IPrincipal.Picture);
    Application.ProcessMessages;
    Repaint;
  end;

  { Resumo }
  bResumo_Pedido;
end;

procedure TFrmPrincipal.ACRCOM_POR_ITEM_PEDExecute(Sender: TObject);
begin
{  QRPCOM_POR_ITEM_PED := TQRPCOM_POR_ITEM_PED.Create(Self,RECRelatorios);
  QRPCOM_POR_ITEM_PED.WinControlFormCreate(QRPCOM_POR_ITEM_PED);}
end;

end.
