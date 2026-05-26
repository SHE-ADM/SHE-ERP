unit pEXP_SEP_COL;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicao, cxGraphics, dxsbar, ActnList, dxDockControl,
  dxBar, dxBarExtItems, ImgList, IBEvents, IBStoredProc, DB, math, StrUtils,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, dxDockPanel, ExtCtrls,
  dxPageControl, cxControls, dxStatusBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, rxSpeedbar, StdCtrls, dxDBTLCl, dxGrClms, ComCtrls;

type
  TFrmEXP_SEP_COL = class(TFrmDefaultEdicao)
    Edicao: TIBDataSet;
    TSEdicao: TIBTransaction;
    SQLSEdicao: TIBSQL;
    DTSEdicao: TDataSource;
    ODExplorer: TOpenDialog;
    EdicaoC_QTFI: TStringField;
    EdicaoC_QTDI: TStringField;
    Erros: TIBQuery;
    DTSErros: TDataSource;
    SQLEdicaoAux: TIBSQL;
    SQLConsultaAux: TIBSQL;
    ACTColetor: TAction;
    ACTETQ_REL_PAD: TAction;
    BLQETQ_REL_RED: TdxBarLargeButton;
    ACTETQ_REL_RED: TAction;
    BLBColetor: TdxBarLargeButton;
    BLBETQ_REL_PAD: TdxBarLargeButton;
    PCEdicao: TdxPageControl;
    TSSeparados: TdxTabSheet;
    SBEdicaoGrade: TSpeedBar;
    SSEdicao: TSpeedbarSection;
    SIEInclui: TSpeedItem;
    SIEAltera: TSpeedItem;
    SIEExclui: TSpeedItem;
    SIESalva: TSpeedItem;
    SIECancela: TSpeedItem;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoPRO_DERO: TdxDBGridButtonColumn;
    DBGEdicaoPRO_CDET: TdxDBGridColumn;
    DBGEdicaoPRO_QTDE: TdxDBGridCurrencyColumn;
    DBGEdicaoPRO_QCOR: TdxDBGridCurrencyColumn;
    DBGEdicaoPRO_CART: TdxDBGridMaskColumn;
    DBGEdicaoPRO_CPRO: TdxDBGridMaskColumn;
    DBGEdicaoPRO_DUNI: TdxDBGridMaskColumn;
    TSConferencia: TdxTabSheet;
    DBGPedidos: TdxDBGrid;
    TSErros: TdxTabSheet;
    PNLRodape: TPanel;
    PBPrincipal: TProgressBar;
    SQLFKConsulta: TIBSQL;
    SQLFKEdicao: TIBSQL;
    SQLSFKEdicao: TIBSQL;
    EdicaoID: TIntegerField;
    EdicaoPRO_CDEP: TSmallintField;
    EdicaoPRO_CDPD: TIntegerField;
    EdicaoPRO_DERO: TIBStringField;
    EdicaoPRO_ITEM: TIntegerField;
    EdicaoPRO_CDET: TLargeintField;
    EdicaoPRO_CTNR: TIBStringField;
    EdicaoPRO_IPRO: TIntegerField;
    EdicaoPRO_CART: TIBStringField;
    EdicaoPRO_CCLF: TIBStringField;
    EdicaoPRO_CPRO: TIBStringField;
    EdicaoPRO_CBAR: TIBStringField;
    EdicaoPRO_DPRO: TIBStringField;
    EdicaoPRO_PCOR: TIBStringField;
    EdicaoPRO_DCOR: TIBStringField;
    EdicaoPRO_DGCP: TIBStringField;
    EdicaoPRO_DUNI: TIBStringField;
    EdicaoPRO_UCON: TIBStringField;
    EdicaoPRO_QTUN: TIBBCDField;
    EdicaoPRO_PBUN: TIBBCDField;
    EdicaoPRO_PLUN: TIBBCDField;
    EdicaoPRO_QTDE: TIBBCDField;
    EdicaoPRO_QTRL: TIntegerField;
    EdicaoPRO_QCOR: TIBBCDField;
    EdicaoPRO_RCOR: TIntegerField;
    EdicaoPRO_PREC: TFloatField;
    EdicaoPRO_UNIT: TFloatField;
    EdicaoPRO_TSDE: TIBBCDField;
    EdicaoPRO_TCDE: TIBBCDField;
    EdicaoPRO_DSEP: TIBStringField;
    EdicaoPRO_NFCI: TIBStringField;
    EdicaoPRO_FOTO: TBlobField;
    EdicaoPRO_STAV: TIBStringField;
    EdicaoPRO_FLAG: TSmallintField;
    EdicaoPRO_CCLI: TIntegerField;
    EdicaoPRO_DCLI: TIBStringField;
    EdicaoPRO_CVEN: TSmallintField;
    EdicaoPRO_DVEN: TIBStringField;
    EdicaoPRO_CREP: TSmallintField;
    EdicaoPRO_DREP: TIBStringField;
    EdicaoPRO_DEDF: TIBStringField;
    DBGEdicaoPRO_DGCP: TdxDBGridMaskColumn;
    EdicaoPRO_CDBE: TIBStringField;
    EdicaoPRO_STPD: TIBStringField;
    EdicaoPRO_CLST: TIBStringField;
    EdicaoPRO_STCO: TIBStringField;
    EdicaoPRO_FATU: TIBStringField;
    EdicaoPRO_ERRO: TIBStringField;
    EdicaoPRO_STFI: TIBStringField;
    EdicaoPRO_CDSP: TIntegerField;
    ErrosID: TIntegerField;
    ErrosPRO_CDEP: TSmallintField;
    ErrosPRO_CDPD: TIntegerField;
    ErrosPRO_DERO: TIBStringField;
    ErrosPRO_STCO: TIBStringField;
    ErrosPRO_STPD: TIBStringField;
    ErrosPRO_FATU: TIBStringField;
    ErrosPRO_STFI: TIBStringField;
    ErrosPRO_CLST: TIBStringField;
    ErrosPRO_CCLI: TIntegerField;
    ErrosPRO_DCLI: TIBStringField;
    ErrosPRO_CVEN: TSmallintField;
    ErrosPRO_DVEN: TIBStringField;
    ErrosPRO_CREP: TSmallintField;
    ErrosPRO_DREP: TIBStringField;
    ErrosPRO_ITEM: TIntegerField;
    ErrosPRO_CDET: TLargeintField;
    ErrosPRO_CTNR: TIBStringField;
    ErrosPRO_IPRO: TIntegerField;
    ErrosPRO_CART: TIBStringField;
    ErrosPRO_CCLF: TIBStringField;
    ErrosPRO_CPRO: TIBStringField;
    ErrosPRO_CBAR: TIBStringField;
    ErrosPRO_DPRO: TIBStringField;
    ErrosPRO_PCOR: TIBStringField;
    ErrosPRO_DCOR: TIBStringField;
    ErrosPRO_DGCP: TIBStringField;
    ErrosPRO_CDBE: TIBStringField;
    ErrosPRO_DUNI: TIBStringField;
    ErrosPRO_UCON: TIBStringField;
    ErrosPRO_QTUN: TIBBCDField;
    ErrosPRO_PBUN: TIBBCDField;
    ErrosPRO_PLUN: TIBBCDField;
    ErrosPRO_QTDE: TIBBCDField;
    ErrosPRO_QTRL: TIntegerField;
    ErrosPRO_QCOR: TIBBCDField;
    ErrosPRO_RCOR: TIntegerField;
    ErrosPRO_PREC: TFloatField;
    ErrosPRO_UNIT: TFloatField;
    ErrosPRO_TSDE: TIBBCDField;
    ErrosPRO_TCDE: TIBBCDField;
    ErrosPRO_CDSP: TIntegerField;
    ErrosPRO_DSEP: TIBStringField;
    ErrosPRO_DEDF: TIBStringField;
    ErrosPRO_NFCI: TIBStringField;
    ErrosPRO_FOTO: TBlobField;
    ErrosPRO_ERRO: TIBStringField;
    ErrosPRO_STAV: TIBStringField;
    ErrosPRO_FLAG: TSmallintField;
    EdicaoPRO_CDDF: TSmallintField;
    ErrosPRO_CDDF: TSmallintField;
    DBGPedidosDEPK: TdxDBGridMaskColumn;
    DBGPedidosITEM: TdxDBGridMaskColumn;
    DBGPedidosARTIGO: TdxDBGridMaskColumn;
    DBGPedidosSKU: TdxDBGridMaskColumn;
    DBGPedidosDECP: TdxDBGridMaskColumn;
    DBGPedidosDGCP: TdxDBGridMaskColumn;
    DBGPedidosUCOM: TdxDBGridMaskColumn;
    DBGPedidosQTDE: TdxDBGridMaskColumn;
    DBGPedidosQTRL: TdxDBGridMaskColumn;
    DBGPedidosQTSP: TdxDBGridMaskColumn;
    DBGPedidosRLSP: TdxDBGridMaskColumn;
    DBGPedidosVPRC_COM: TdxDBGridMaskColumn;
    SQLSConsulta: TIBSQL;
    EdicaoC_ID: TIntegerField;
    DBGEdicaoC_ID: TdxDBGridColumn;
    EdicaoFLAG: TIntegerField;
    Pedidos: TIBQuery;
    DTSPedidos: TDataSource;
    PedidosID: TIntegerField;
    PedidosIDFK: TIntegerField;
    PedidosITEM: TIntegerField;
    PedidosIDCP: TIntegerField;
    PedidosARTIGO: TIBStringField;
    PedidosSKU: TIBStringField;
    PedidosDECP: TIBStringField;
    PedidosDGCP: TIBStringField;
    PedidosUCOM: TIBStringField;
    PedidosQTDE: TIBBCDField;
    PedidosQTRL: TIntegerField;
    EdicaoPRO_LOTE: TIBStringField;
    EdicaoPRO_VIPI: TIBBCDField;
    PedidosUCON: TIBStringField;
    PedidosVPRC_PAD_INI: TFloatField;
    PedidosVPRC_PAD_FIM: TFloatField;
    PedidosVPRC_PAD: TFloatField;
    PedidosPDSC: TIBBCDField;
    PedidosVDSC: TFloatField;
    PedidosVPRC_COM: TFloatField;
    PedidosNCM: TIBStringField;
    PedidosPIPI: TIBBCDField;
    PedidosUPSBR: TIBBCDField;
    PedidosUPSLQ: TIBBCDField;
    DBGErros: TdxDBGrid;
    DBGErrosPRO_CDET: TdxDBGridColumn;
    DBGErrosPRO_CART: TdxDBGridMaskColumn;
    DBGErrosPRO_CPRO: TdxDBGridMaskColumn;
    DBGErrosPRO_DGCP: TdxDBGridMaskColumn;
    DBGErrosPRO_DUNI: TdxDBGridMaskColumn;
    DBGErrosPRO_UCON: TdxDBGridMaskColumn;
    DBGErrosPRO_ERRO: TdxDBGridMaskColumn;
    DBGErrosC_ID: TdxDBGridColumn;
    DBGErrosPRO_DERO: TdxDBGridMaskColumn;
    DBGErrosPRO_QTDE: TdxDBGridMaskColumn;
    DBGEdicaoPRO_UCON: TdxDBGridMaskColumn;
    DBGEdicaoPRO_ERRO: TdxDBGridMaskColumn;
    PNLConsultaRodape: TPanel;
    ErrosPRO_LOTE: TIBStringField;
    ErrosPRO_VIPI: TIBBCDField;
    ErrosFLAG: TIntegerField;
    PedidosIDEP: TSmallintField;
    PedidosIDPK: TIntegerField;
    PedidosDEPK: TIBStringField;
    PedidosDTPK: TDateTimeField;
    PedidosCTNR: TIBStringField;
    PedidosIDCD: TIntegerField;
    PedidosIDCV: TSmallintField;
    PedidosIDCR: TSmallintField;
    PedidosTPCO: TSmallintField;
    PedidosRECO: TIBStringField;
    PedidosCDPG: TSmallintField;
    PedidosINFADPED: TIBStringField;
    PedidosINFADFIN: TIBStringField;
    PedidosCP_IDEP: TSmallintField;
    PedidosCEAN: TIBStringField;
    PedidosPSBR: TIBBCDField;
    PedidosPSLQ: TIBBCDField;
    PedidosTSDE: TIBBCDField;
    PedidosTCDE: TIBBCDField;
    PedidosORIG: TSmallintField;
    PedidosVIPI: TFloatField;
    PedidosINFADCAD: TIBStringField;
    PedidosIDEV: TLargeintField;
    PedidosIP: TIBStringField;
    PedidosHOST: TIBStringField;
    PedidosQTSP: TIBBCDField;
    PedidosRLSP: TIntegerField;
    PedidosDECD: TIBStringField;
    PedidosDECV: TIBStringField;
    PedidosDECR: TIBStringField;
    PedidosCDRO: TLargeintField;
    PedidosDTRO: TDateTimeField;
    PedidosCDNF: TLargeintField;
    PedidosDTNF: TDateTimeField;
    PedidosREST: TIBStringField;
    PedidosDEST: TIBStringField;
    BLBDelete: TdxBarLargeButton;
    ACTDelete: TAction;
    PNLDescricao: TPanel;
    DBGConsultaPedido: TdxDBGrid;
    DBGConsultaPedidoPRO_DVEN: TdxDBGridMaskColumn;
    DBGConsultaPedidoPRO_DCLI: TdxDBGridMaskColumn;
    EdicaoPRO_QSEP: TIBBCDField;
    EdicaoPRO_RSEP: TIntegerField;
    DBGEdicaoPRO_RSEP: TdxDBGridMaskColumn;
    EdicaoPRO_QDIS: TIBBCDField;
    EdicaoPRO_RDIS: TIntegerField;
    DBGEdicaoPRO_QDIS: TdxDBGridMaskColumn;
    PedidosCDST: TSmallintField;
    PedidosSTCO: TIBStringField;
    PedidosSTPD: TIBStringField;
    PedidosCD_REST: TIBStringField;
    PedidosFAPD: TSmallintField;
    PedidosCDBX: TLargeintField;
    SQLPKConsulta: TIBSQL;
    procedure ACTColetorExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure ACTSalvaExecute(Sender: TObject);
    procedure ACTETQ_REL_PADExecute(Sender: TObject);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SIEAlteraClick(Sender: TObject);
    procedure SIESalvaClick(Sender: TObject);
    procedure SIECancelaClick(Sender: TObject);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EdicaoBeforeEdit(DataSet: TDataSet);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure DBGEdicaoPRO_QCORValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoCalcFields(DataSet: TDataSet);
    procedure EdicaoBeforeOpen(DataSet: TDataSet);
    procedure EdicaoAfterScroll(DataSet: TDataSet);
    procedure PedidosAfterScroll(DataSet: TDataSet);
    procedure PedidosBeforeOpen(DataSet: TDataSet);
    procedure SIEExcluiClick(Sender: TObject);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure DTSErrosDataChange(Sender: TObject; Field: TField);
    procedure PedidosAfterOpen(DataSet: TDataSet);
    procedure ACTDeleteExecute(Sender: TObject);
    procedure DBGEdicaoPRO_RSEPValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure ACTETQ_REL_REDExecute(Sender: TObject);
  private
    { Private declarations }
    AREC_SHE_EDI: TREC_SHE_EDI;
    
    CDET_INI,
    CDET_FIM: LongInt;
    
    procedure _Empty;
    function  _Etiquetas: Boolean;
    function  _ETQDuplicidade(ACDET: Integer = 0): Boolean;
  public
    { Public declarations }
  end;

var
  FrmEXP_SEP_COL: TFrmEXP_SEP_COL;

implementation

uses uPrincipal, bPrincipal,
  qEST_ETQ_PAD, qEST_ETQ_PEQ;

{$R *.dfm}

procedure TFrmEXP_SEP_COL.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_EST'; { Eventos }

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Estoque';
  REC_SHE_DEF.GReferencia := 'Expedição';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  CDET_INI := 0;
  CDET_FIM := 0;

  oOTransact(TConsulta);
  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FK.ID,FK.IDEP  ,');
    SQL.Add('         PK.ID AS IDPK  ,PK.DEPK,PK.DTCA AS DTPK,PK.CTNR,');
    SQL.Add('         PK.CDRO,PK.DTRO,PK.CDNF,PK.DTNF,PK.CDBX,PK.CDST,PK.REST,PK.DEST,');
    SQL.Add('         PK.IDCD,CD.FANTASIA AS DECD,CD.REST AS CD_REST,PK.IDCV,CV.LOGIN AS DECV,PK.IDCR,CR.FANTASIA AS DECR,');
    SQL.Add('         PK.TPCO,PK.RECO,PK.CDPG,');
    SQL.Add('         TRIM(CAST(SUBSTRING(PK.INFADPED FROM 1 FOR 812) AS VARCHAR(812))) AS INFADPED,');
    SQL.Add('         TRIM(CAST(SUBSTRING(PK.INFADFIN FROM 1 FOR 812) AS VARCHAR(812))) AS INFADFIN,');
    SQL.Add('         FK.ID AS IDFK,FK.ITEM,');
    SQL.Add('         FK.IDCP,FK.CP_IDEP,');
    SQL.Add('         FK.ARTIGO,FK.SKU,FK.CEAN,FK.DECP,FK.DGCP,');
    SQL.Add('         FK.UCOM,FK.UCON,CP.UPSBR,CP.UPSLQ,');
    SQL.Add('         FK.QTDE,FK.QTRL,FK.QTSP,FK.RLSP,FK.PSBR,FK.PSLQ,');
    SQL.Add('         FK.VPRC_PAD_INI,FK.VPRC_PAD_FIM,');
    SQL.Add('         FK.VPRC_PAD,FK.VPRC_COM,');
    SQL.Add('         FK.PDSC,FK.VDSC,');
    SQL.Add('         FK.TSDE,FK.TCDE,');
    SQL.Add('         FK.ORIG,FK.NCM ,FK.PIPI,FK.VIPI,');
    SQL.Add('         PK.STCO,PK.FAPD,PK.STPD,');
    SQL.Add('         NULLIF(TRIM(CAST(IIF(CP.PRO_COMP IS NOT NULL,CP.PRO_COMP||ASCII_CHAR(13)||ASCII_CHAR(10),'''') AS VARCHAR(120)))||');
    SQL.Add('                TRIM(CAST(IIF(CP.INFADCAD IS NOT NULL,SUBSTRING(CP.INFADCAD FROM 1 FOR 640)      ,'''') AS VARCHAR(640))),'''') AS INFADCAD,');
    SQL.Add('         PK.IDEV,PK.IP,PK.HOST');

    SQL.Add('FROM '  + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PK');
    SQL.Add('JOIN     CAD_CLI   AS CD ON (CD.ID   = PK.IDCD)');
    SQL.Add('JOIN     TAB_USER  AS CV ON (CV.ID   = PK.IDCV)');
    SQL.Add('JOIN     CAD_REP   AS CR ON (CR.IDCR = PK.IDCR)');

    SQL.Add('JOIN '  + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS FK ON (FK.IDPK = PK.IDPK)');
    SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = FK.IDCP)');

    SQL.Add('WHERE    PK.DEPK = :DEPK ');
    SQL.Add('ORDER BY FK.VPRC_COM DESC');
    Prepare;

    Params[0].Value := '0';
  end;

  _Empty;
end;

procedure TFrmEXP_SEP_COL.ACTColetorExecute(Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;
  PBCount  : Integer;
  CEAN13,
  CDET,
  DEPK,
  NewPed,
  Linha,
  AERRO: String;
begin
  ActiveControl := Nil;
  if not ODExplorer.Execute then
     Abort;

  AssignFile(TFArquivo,ODExplorer.FileName);
  Reset(TFArquivo);

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(ODExplorer.FileName);

  PBPrincipal.Position := 0;
  PBPrincipal.Max      := SLTexto.Count -1;
  PBCount := 0;

  PNLRodape.Height  := 20;
  PNLRodape.Visible := True;

  _Empty;
  try
    ACTColetor.Enabled := False;
    ACTSaida.Enabled   := False;

    SBEdicaoGrade.Enabled := False;

    Edicao.DisableControls;
    While not Eof(TFArquivo) do
    Begin
      PBPrincipal.Position := PBPrincipal.Position + 1;
      Inc(PBCount);

      Readln(TFArquivo,Linha);
      Delimitador := 0;
      Linha       := oUTF8ToStr(Linha);

      Caption := 'Lendo Linha ... ' + IntToStr(PBCount) + ' de ' + IntToStr(PBPrincipal.Max);
      Application.ProcessMessages;

      AERRO  := '';
      CEAN13 := Trim(oGetLinha(Linha,','));
      CDET   := IFThen(Length(CEAN13) >= 13,Copy(CEAN13,5,8),CEAN13);
      CDET   := IFThen(Length(CDET)    = 00,'0',CDET);
      CDET   := oStrZero(StrToInt(CDET),10);
      NewPed := Trim(oGetLinha(Linha));
      DEPK   := IFThen(oEmpty(NewPed),DEPK,NewPed);

      if (not oEmpty(CDET)) and (not oEmpty(Linha)) then
      begin
        if (not oEmpty(DEPK)) and (PedidosId.Tag = 0) then
        begin
          Pedidos.Close;
          Pedidos.Params[0].Value := DEPK;
          Pedidos.Open;

          if PedidosREST.AsString = 'C' then
             oException(Nil,'Pedidos Cancelado !');

          if PedidosCDRO.AsInteger > 0 then
             oException(Nil,'Pedidos já Romaneado !');

          if PedidosCDNF.AsInteger > 0 then
             oException(Nil,'Pedidos já Faturado !');

          if PedidosCDBX.AsInteger > 0 then
             oException(Nil,'Pedidos Finalizado !');
        end;

        with SQLConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT DISTINCT ');
          SQL.Add('       PK.ID    ,PK.IDEP,EP.FANTASIA AS DEEP,');
          SQL.Add('       PK.IDCA  ,PK.DTCA,TB_CA.LOGIN AS DECA,');
          SQL.Add('       PK.CDRO  ,PK.DTRO,');
          SQL.Add('       PK.CDET  ,PK.CTNR,PK.LOTE,');
          SQL.Add('       PK.IDSP  ,PK.CDSP,PK.DTSP,TB_SP.LOGIN AS DESP,');
          SQL.Add('       PK.IDPK  ,PK.DEPK,PK.DTPK,');
          SQL.Add('       PK.IDCD  ,PK.DECD,PK.IDCV,PK.DECV,PK.IDCR,PK.DECR,');
          SQL.Add('       PK.IDCP  ,PK.CP_IDEP,PK.IDAK,');
          SQL.Add('       CP.ARTIGO,CP.SKU ,CP.CEAN   ,');
          SQL.Add('       CP.DECP  ,CP.DGCP,');
          SQL.Add('       CP.UCOM  ,CP.UCON,CP.UCDBE,CP.UQTDE   ,');
          SQL.Add('       PK.QTDE  ,PK.QTRL,PK.REOP ,PK.VPRC_COM,');
          SQL.Add('       PK.CDDF  ,TB_DF.LOGIN AS DEDF,PK.DTDF ,');
          SQL.Add('       PK.NFCI  ,NULLIF(TRIM(CAST(SUBSTRING(PK.INFADCAD FROM 1 FOR 1064) AS VARCHAR(1064))),'''') AS INFADCAD,');

          SQL.Add('       -- Estoque Pronta Entrega');
          SQL.Add('       CAST(SUM(EL.EPE_QTDE) OVER(PARTITION BY PK.IDCP) AS NUMERIC(12,2))  AS EPE_QTDE,CAST(SUM(EL.EPE_QTRL) OVER(PARTITION BY PK.IDCP) AS INTEGER) AS EPE_QTRL');

          SQL.Add('FROM   CAD_PRO_EST AS PK');
          SQL.Add('JOIN   TAB_PAR_SIS AS EP    ON (EP.ID    = PK.IDEP   )');
          SQL.Add('JOIN   TAB_PAR_SIS AS EP_CP ON (EP_CP.ID = PK.CP_IDEP)');

          SQL.Add('JOIN   CAD_PRO     AS CP    ON (CP.ID    = PK.IDCP   )');

          SQL.Add('JOIN   TAB_USER    AS TB_CA ON (TB_CA.ID = PK.IDCA   )');
          SQL.Add('JOIN   TAB_USER    AS TB_SP ON (TB_SP.ID = PK.IDSP   )');
          SQL.Add('JOIN   TAB_USER    AS TB_DF ON (TB_DF.ID = PK.CDDF   )');

          SQL.Add('LEFT JOIN VW_CAD_PRO_EST_LAN_PSQ AS EL ON (EL.EL_IDEP  = ''' + RECParametros.EP_ID + ''' AND EL.IDCP = PK.IDCP) -- Estoque');

          SQL.Add('WHERE    PK.CDET = ''' + CDET + '''');
          SQL.Add('AND      PK.REOP = ''E''');
          SQL.Add('ORDER BY PK.CDET');

          Prepare;
          ExecQuery;

          if Current.ByName('CDET').AsInteger = 0 then
          AERRO := 'Etiqueta não Encontrada' else

          if Current.ByName('IDPK').AsInteger > 0 then
          AERRO := 'Etiqueta já Separada - Pedido Nº ' + Current.ByName('DEPK').AsString + ' de ' + FormatDateTime('dd/mm/yy hh:mm',Current.ByName('DTPK').AsDateTime);
        end;

        with SQLPKConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT PK.ID FROM '  + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS PK');
          SQL.Add('WHERE  PK.IDPK = ''' + PedidosIDPK.AsString + '''');
          SQL.Add('AND    PK.IDCP = ''' + INTTOSTR(SQLConsulta.Current.ByName('IDCP').AsInteger) + '''');
          ExecQuery;

          if Current.ByName('ID').AsInteger = 0 then
          AERRO := 'Produto não encontrado nesse pedido';
        end;

        try
          with SQLSEdicao do
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE OR INSERT');
            SQL.Add('INTO ETIQUETAS');

            SQL.Add('(');
            SQL.Add('ID,PRO_ITEM,PRO_QCOR,PRO_RCOR,PRO_QSEP,PRO_RSEP,');
            SQL.Add('   PRO_UNIT,FLAG,');

            SQL.Add('   PRO_CDPD,PRO_DERO,PRO_CCLI,PRO_DCLI,');
            SQL.Add('   PRO_CVEN,PRO_DVEN,PRO_CREP,PRO_DREP,');

            SQL.Add('   PRO_CBAR,PRO_CDET,');
            SQL.Add('   PRO_CDEP,PRO_CTNR,PRO_LOTE,');

            SQL.Add('   PRO_IPRO,PRO_CART,PRO_CPRO,PRO_DPRO,PRO_DGCP,');
            SQL.Add('   PRO_DUNI,PRO_UCON,');

            SQL.Add('   PRO_CDBE,PRO_QTUN,');
            SQL.Add('   PRO_QDIS,PRO_RDIS,');
            SQL.Add('   PRO_QTDE,PRO_QTRL,');
            SQL.Add('   PRO_NFCI,PRO_ERRO,');
            SQL.Add('   PRO_FLAG');
            SQL.Add(')');

            SQL.Add('VALUES');
            SQL.Add('(');

            SQL.Add('0,');
            SQL.Add('0,');
            SQL.Add('0,');
            SQL.Add('0,');
            SQL.Add('0,');
            SQL.Add('0,');

            SQL.Add('0,');
            SQL.Add('0,');

            SQL.Add('''' + PedidosIDPK.AsString + ''',');
            SQL.Add('''' + PedidosDEPK.AsString + ''',');
            SQL.Add('''' + PedidosIDCD.AsString + ''',');
            SQL.Add('''' + PedidosDECD.AsString + ''',');
            SQL.Add('''' + PedidosIDCV.AsString + ''',');
            SQL.Add('''' + PedidosDECV.AsString + ''',');
            SQL.Add('''' + PedidosIDCR.AsString + ''',');
            SQL.Add('''' + PedidosDECR.AsString + ''',');

            SQL.Add('''' + CEAN13 + ''',');
            SQL.Add('''' + CDET   + ''',');

            SQL.Add('''' + SQLConsulta.Current.ByName('IDEP').AsString + ''',');
            SQL.Add('''' + SQLConsulta.Current.ByName('CTNR').AsString + ''',');
            SQL.Add('''' + SQLConsulta.Current.ByName('LOTE').AsString + ''',');

            SQL.Add('''' + SQLConsulta.Current.ByName('IDCP'  ).AsString + ''',');
            SQL.Add('''' + SQLConsulta.Current.ByName('ARTIGO').AsString + ''',');
            SQL.Add('''' + SQLConsulta.Current.ByName('SKU'   ).AsString + ''',');
            SQL.Add('''' + SQLConsulta.Current.ByName('DECP'  ).AsString + ''',');
            SQL.Add('''' + SQLConsulta.Current.ByName('DGCP'  ).AsString + ''',');

            SQL.Add('''' + SQLConsulta.Current.ByName('UCOM').AsString + ''',');
            SQL.Add('''' + SQLConsulta.Current.ByName('UCON').AsString + ''',');

            SQL.Add('''' + SQLConsulta.Current.ByName('UCDBE').AsString + ''',');
            SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('UQTDE').AsString  ,',','.') + ''',');

            SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('EPE_QTDE').AsString,',','.') + ''',');
            SQL.Add('''' + SQLConsulta.Current.ByName('EPE_QTRL').AsString                   + ''',');

            SQL.Add('''' + oStrTran(SQLConsulta.Current.ByName('QTDE').AsString,',','.') + ''',');
            SQL.Add('''' + SQLConsulta.Current.ByName('QTRL').AsString                   + ''',');

            SQL.Add('''' + SQLConsulta.Current.ByName('NFCI').AsString + ''',');


            SQL.Add('''' + AERRO + ''',');
            SQL.Add('''' + IFThen(AERRO = EmptyStr,'0','1') + '''');
            SQL.Add(')');
            SQL.Add('MATCHING (PRO_CDET)');

            ExecQuery;
          end;

        except
          on E: Exception do
          begin
             oErro(Application.Handle,'Falha ao tentar coletar informações !'   + #13 + #13 +
                                      'Linha Nº '    + IntToStr(PBPrincipal.Position) + #13 +
                                      'Etiquta Nº '  + CDET                     + #13 + #13 +
                                      'Error Code: ' + E.Message +'.'           + #13 + #13 +
                                      'Favor entrar em contato com o administrador do sistema.');
          end;
        end;
      end;

      Next;
    end;
  finally
    ACTColetor.Enabled := True;
    ACTSaida.Enabled   := True;

    SBEdicaoGrade.Enabled := True;

    Edicao.Locate('PRO_ERRO','DUPLICIDADE',[]);
    Edicao.EnableControls;

    PNLRodape.Visible        := False;
    Caption                  := 'Separação de Pedidos';
    PCEdicao.ActivePageIndex := IFThen(Erros.RecNo > 0,2,0);

    CloseFile(TFArquivo);
    SLTexto.Free;
  end;
  oRTransact(TSEdicao);

  ACTSalva.Enabled       := (Erros.RecNo = 0) and (not _ETQDuplicidade);
  ACTETQ_REL_PAD.Enabled :=  ACTSalva.Enabled;
  ACTETQ_REL_RED.Enabled :=  ACTETQ_REL_PAD.Enabled;
  Application.ProcessMessages;

  if ACTSalva.Enabled then
     oAviso(handle,'Etiquetas Coletadas com Sucesso !') else
  begin
    DBGEdicao.FocusedColumn := DBGEdicaoPRO_CDET.ColIndex;

    if Erros.RecNo > 0 then
    begin
      ACTDelete.Enabled   := True;
      PCEdicao.ActivePage := TSErros;
    end;

    oException(Nil,'ATENÇÃO, coletor com etiquetas ' +
    IFThen(Pos('DUP'     ,ErrosPRO_ERRO.AsString) > 0,'duplicadas',
    IFThen(Pos('ENCONTRA',ErrosPRO_ERRO.AsString) > 0,'não encontradas',
    IFThen(Pos('SEPARA'  ,ErrosPRO_ERRO.AsString) > 0,'já separadas',
    IFThen(Pos('SEPARA'  ,ErrosPRO_ERRO.AsString) > 0,'que não fazem parte do pedido','erradas')))) + #13+#13+
                                                      'Favor Verificar.');
  end;
end;

procedure TFrmEXP_SEP_COL.ACTSalvaExecute(Sender: TObject);
begin
  inherited;
  if Edicao.State in [dsInsert,dsEdit] then
     Edicao.Post;

  if oYesNo(handle,'Salvar Separação ?') = mrNo then
     Abort;

  Pedidos.First;
  if PedidosIDPK.AsInteger = 0 then
     oException(Nil,'Pedido não Informado !');

  if PedidosDEPK.AsString <> EdicaoPRO_DERO.AsString then
     oException(Nil,'Pedido difere do coletor !');

  try
    oOTransact(TEdicao);
    oRTransact(TSEdicao,ltRead_Only);

    if Edicao.RecNo = 0 then
       oException(Nil,'Etiqueta(s) para separação não informada(s)');
       
    while not Edicao.Eof do
    begin
      if EdicaoPRO_ERRO.AsString = 'DUPLICIDADE' then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoPRO_CDET.ColIndex;
        oException(Nil,'ATENÇÃO, coletor com etiquetas duplicadas.' +#13+#13+
                       'Favor Verificar.');
      end;

      if EdicaoPRO_QCOR.AsFloat > 0 then
      begin
        DBGEdicao.FocusedColumn := DBGEdicaoPRO_QCOR.ColIndex;
        oException(Nil,'Etiqueta de corte não definida !');
      end;

      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAD_PRO_EST');
        SQL.Add('WHERE  IDPK > 0');
        SQL.Add('AND    CDET = '''+IntToStr(EdicaoPRO_CDET.AsInteger)+'''');
        ExecQuery;
        if not Eof then
           oException(Nil,'Etiqueta Nº '+oStrZero(EdicaoPRO_CDET.AsInteger,10)+' já Utilizada !');
      end;

      Edicao.Next;
    end;

    try
      Edicao.First;
      while not Edicao.Eof do
      begin
        Pedidos.Locate('IDCP',EdicaoPRO_IPRO.AsInteger,[]);

        SPEdicao.Close;
        SPEdicao.StoredProcName := 'SP_CAD_PRO_SEP';
        SPEdicao.Prepare;

        SPEdicao.ParamByName('AIDEP').Value := RECParametros.EP_ID;
        SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.Id;

        SPEdicao.ParamByName('ACDPK').Value := PedidosIDPK.AsInteger;
        SPEdicao.ParamByName('ADEPK').Value := PedidosDEPK.AsString;
        SPEdicao.ParamByName('ADTPK').Value := PedidosDTPK.AsDateTime;

        SPEdicao.ParamByName('AIDCL').Value := PedidosIDCD.AsInteger;
        SPEdicao.ParamByName('ADECL').Value := PedidosDECD.AsString;
        SPEdicao.ParamByName('AIDCV').Value := PedidosIDCV.AsInteger;
        SPEdicao.ParamByName('ADECV').Value := PedidosDECV.AsString;
        SPEdicao.ParamByName('AIDCR').Value := PedidosIDCR.AsInteger;
        SPEdicao.ParamByName('ADECR').Value := PedidosDECR.AsString;

        SPEdicao.ParamByName('ACDET').Value := oStrZero(EdicaoPRO_CDET.AsInteger,10);
        SPEdicao.ParamByName('ACTNR').Value := EdicaoPRO_CTNR.AsString;
        SPEdicao.ParamByName('ALOTE').Value := EdicaoPRO_LOTE.AsString;
        SPEdicao.ParamByName('ANFCI').Value := EdicaoPRO_NFCI.AsString;

        SPEdicao.ParamByName('AIDSP').Value := RECUsuarios.Id;
        SPEdicao.ParamByName('ADESP').Value := RECUsuarios.Login;

        SPEdicao.ParamByName('AIDFK').Value := PedidosIDFK.AsInteger;
        SPEdicao.ParamByName('AITEM').Value := PedidosITEM.AsInteger;

        SPEdicao.ParamByName('AIDCP').Value := PedidosIDCP.AsInteger;
        SPEdicao.ParamByName('ADECP').Value := PedidosDECP.AsString;
        SPEdicao.ParamByName('ADGCP').Value := PedidosDGCP.AsString;

        SPEdicao.ParamByName('AUCOM').Value := PedidosUCOM.AsString;
        SPEdicao.ParamByName('AUCON').Value := PedidosUCON.AsString;

        SPEdicao.ParamByName('AQTDE').Value := EdicaoPRO_QTDE.AsFloat;
        SPEdicao.ParamByName('AQTRL').Value := EdicaoPRO_QTRL.AsInteger;

        SPEdicao.ParamByName('APSBR').Value := PedidosUPSBR.AsFloat * EdicaoPRO_QTDE.AsFloat;
        SPEdicao.ParamByName('APSLQ').Value := PedidosUPSLQ.AsFloat * EdicaoPRO_QTDE.AsFloat;

        SPEdicao.ParamByName('AVPRC_PAD_INI').Value := PedidosVPRC_PAD_INI.AsFloat;
        SPEdicao.ParamByName('AVPRC_PAD_FIM').Value := PedidosVPRC_PAD_FIM.AsFloat;
        SPEdicao.ParamByName('AVPRC').Value := PedidosVPRC_COM.AsFloat;

        SPEdicao.ParamByName('ANCM').Value  := PedidosNCM.AsString;
        SPEdicao.ParamByName('APIPI').Value := PedidosPIPI.AsFloat;
        SPEdicao.ExecProc;

        Edicao.Next;
      end;
      Edicao.First;

      { Separa Preços }
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.IDEP,PK.IDPK,PK.IDCP,PK.ITEM,PK.QTDE,PK.VPRC_COM');
        SQL.Add('FROM (');

        SQL.Add('SELECT   PK.IDEP,PK.IDPK,PK.IDCP,MIN(PK.VPRC_COM) AS VPRC_COM');
        SQL.Add('FROM ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS PK');

        SQL.Add('WHERE PK.IDEP = ''' + PedidosIDEP.AsString + '''');
        SQL.Add('AND   PK.IDPK = ''' + PedidosIDPK.AsString + '''');
        SQL.Add('AND   EXISTS (SELECT SP.ID FROM CAD_PRO_SEP AS SP WHERE SP.IDPK = PK.IDPK AND SP.IDEP = PK.IDEP AND SP.IDCP = PK.IDCP)');

        SQL.Add('GROUP BY 1,2,3');
        SQL.Add('HAVING COUNT(*) > 1) AS FK');

        SQL.Add('JOIN ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3) + ' AS PK ON (PK.IDPK = FK.IDPK AND PK.IDEP = FK.IDEP AND PK.IDCP = FK.IDCP AND PK.VPRC_COM = FK.VPRC_COM)');
        ExecQuery;
      end;

      while not SQLEdicao.Eof do
      begin
        while true do
        begin
          with SQLFKEdicao do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT SUM(QTDE) AS QTDE FROM CAD_PRO_SEP');
            SQL.Add('WHERE  IDPK     = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''');
            SQL.Add('AND    IDEP     = ''' + SQLEdicao.Current.ByName('IDEP').AsString + '''');
            SQL.Add('AND    IDCP     = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''');
            SQL.Add('AND    VPRC_COM = ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
            ExecQuery;

            if SQLFKEdicao.Current.ByName('QTDE').AsFloat < SQLEdicao.Current.ByName('QTDE').AsFloat then
            begin
              { Busca pela maior etiqueta com mesma quantidade }
              Close;
              SQL.Clear;
              SQL.Add('SELECT MAX(CDET) FROM CAD_PRO_SEP');
              SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''');
              SQL.Add('AND    IDEP      = ''' + SQLEdicao.Current.ByName('IDEP').AsString + '''');
              SQL.Add('AND    IDCP      = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''' );
              SQL.Add('AND    QTDE      = ''' + oStrTran(SQLEdicao.Current.ByName('QTDE').AsString    ,',','.') + '''');
              SQL.Add('AND    VPRC_COM <> ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
              ExecQuery;

              if SQLFKEdicao.Current.Vars[0].AsInteger = 0 then
              begin
                { Busca pela maior etiqueta + menor quantidade }
                Close;
                SQL.Clear;
                SQL.Add('SELECT MAX(CDET) FROM CAD_PRO_SEP');
                SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''');
                SQL.Add('AND    IDEP      = ''' + SQLEdicao.Current.ByName('IDEP').AsString + '''');
                SQL.Add('AND    IDCP      = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''' );
                SQL.Add('AND    QTDE     <= ''' + oStrTran(SQLEdicao.Current.ByName('QTDE').AsString    ,',','.') + '''');
                SQL.Add('AND    VPRC_COM <> ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
                ExecQuery;
              end;

              if SQLFKEdicao.Current.Vars[0].AsInteger = 0 then
              begin
                { Busca Maior Etiqueta }
                Close;
                SQL.Clear;
                SQL.Add('SELECT MAX(CDET) FROM CAD_PRO_SEP');
                SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''');
                SQL.Add('AND    IDEP      = ''' + SQLEdicao.Current.ByName('IDEP').AsString + '''');
                SQL.Add('AND    IDCP      = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''');
                SQL.Add('AND    VPRC_COM <> ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
                ExecQuery;
              end;

                 SQLFKEdicao.Tag := SQLFKEdicao.Current.Vars[0].AsInteger;
              if SQLFKEdicao.Tag  = 0 then
                 Break;

              Close;
              SQL.Clear;
              SQL.Add('UPDATE CAD_PRO_SEP');
              SQL.Add('SET    ITEM     = ''' + SQLEdicao.Current.ByName('ITEM').AsString + ''',');
              SQL.Add('       EST_UNIT = ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
              
              SQL.Add('WHERE  CDET     = ''' + IntToStr(SQLFKEdicao.Tag) + '''');
              ExecQuery;
            end else
            Break;
          end;
        end;
        SQLEdicao.Next;
      end;

      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ITEM,PK.IDCP,COALESCE(SUM(QTDE),0) AS QTDE,COALESCE(SUM(QTRL),0) AS QTRL,MAX(DTCA) AS DTCA');
        SQL.Add('FROM   CAD_PRO_SEP AS PK');

        SQL.Add('WHERE  PK.IDPK = ''' + PedidosIDPK.AsString + '''');
        SQL.Add('AND    PK.IDEP = ''' + PedidosIDEP.AsString + '''');

        SQL.Add('GROUP BY 1,2');
        SQL.Add('ORDER BY 1  ');
        ExecQuery;
      end;
      while not SQLEdicao.Eof do
      begin
        with SQLFKEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE ' + oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3));
          SQL.Add('SET');

          SQL.Add('ROM_IDSP = ''' + RECUsuarios.ID + ''',');
          SQL.Add('DTSP     = ''' + FormatDateTime('mm/dd/yy hh:mm',SQLEdicao.Current.Vars[4].AsDateTime) + ''',');

          SQL.Add('ROM_QTPD = ''' + oStrTran(SQLEdicao.Current.Vars[2].AsString,',','.') + ''',');
          SQL.Add('ROM_RLPD = ''' + oStrTran(SQLEdicao.Current.Vars[3].AsString,',','.') + ''' ');

          SQL.Add('WHERE IDPK = ''' + PedidosIDPK.AsString + '''');
          SQL.Add('AND   IDEP = ''' + PedidosIDEP.AsString + '''');

          SQL.Add('AND   ITEM = ''' + SQLEdicao.Current.Vars[0].AsString + '''');
          SQL.Add('AND   IDCP = ''' + SQLEdicao.Current.Vars[1].AsString + '''');
          ExecQuery;
        end;

        SQLEdicao.Next;
      end;

      oCTransact(TEdicao,ltRead_Only_Release_Commit);
      oAviso(handle,'Pedido separado( com Sucesso !');
    except
      on E: Exception do
      begin
        oCTransact(TEdicao ,ltRead_Only_Release_Rollback);
        oRTransact(TSEdicao,ltRead_Only_Release_Rollback);

        oException(Nil,'Falha ao tentar separar pedido !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    oOTransact(TSEdicao);
  end;

  { ATUALIZA ESTOQUE }
  uCAD_PRO_EST_LAN_UPD(oREPZero('PED_VEN_ITE','_',RECParametros.EP_ID,3),
                       RECParametros.EP_ID ,
                       PedidosIDPK.AsString,

                       'EP_ID',
                       'IDPK' ,
                       'CP_ID');
  Close;
end;

procedure TFrmEXP_SEP_COL.ACTDeleteExecute(Sender: TObject);
begin
  if oYesNo(handle,'Confirma Retirada dos Erros ?') = mrNo then
     Abort;

  if EdicaoId.AsInteger = 0 then
     oException(Nil,'Separação de pedidos sem etiquetas coletadas !');

  if ErrosId.AsInteger = 0 then
     oException(Nil,'Nenhum erro foi encontrado no coletor !');

  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM ETIQUETAS WHERE PRO_FLAG = 1');
    ExecQuery;
  end;

  oRTransact(TSEdicao);

  ACTSalva.Enabled       := True;
  ACTDelete.Enabled      := False;
  ACTETQ_REL_PAD.Enabled := True;
  ACTETQ_REL_RED.Enabled := ACTETQ_REL_PAD.Enabled;
end;

procedure TFrmEXP_SEP_COL.ACTETQ_REL_PADExecute(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  ActiveControl := Nil;
  CDET_INI := 0;
  CDET_FIM := 0;

  if _Etiquetas then
  try
    oIRECRelatorios(RECRelatorios);
    if Assigned(qrpEST_ETQ_PAD) then qrpEST_ETQ_PAD.BringToFront else
    begin
      RECRelatorios.Titulo := 'Etiquetas de Estoque';
      RECRelatorios.Tipo   := 'TODOS';

      RECRelatorios.PEC1CodigoText := IntToStr(CDET_INI);
      RECRelatorios.PEC2CodigoText := IntToStr(CDET_FIM);

      RECRelatorios.PrintTAG := 1;
      RECRelatorios.Handle   := Self.Handle;

      qrpEST_ETQ_PAD := TqrpEST_ETQ_PAD.Create(Self,RECRelatorios);
      qrpEST_ETQ_PAD.Tag := 3;
      qrpEST_ETQ_PAD.WinControlFormCreate(qrpEST_ETQ_PAD);
    end;
  finally
    oFRECRelatorios(RECRelatorios);
  end;
end;

procedure TFrmEXP_SEP_COL.ACTETQ_REL_REDExecute(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  ActiveControl := Nil;
  CDET_INI := 0;
  CDET_FIM := 0;

  if _Etiquetas then
  try
    oIRECRelatorios(RECRelatorios);
    if Assigned(qrpEST_ETQ_PEQ) then qrpEST_ETQ_PEQ.BringToFront else
    begin
      RECRelatorios.Titulo := 'Etiquetas de Estoque';
      RECRelatorios.Tipo   := 'TODOS';

      RECRelatorios.PEC1CodigoText := IntToStr(CDET_INI);
      RECRelatorios.PEC2CodigoText := IntToStr(CDET_FIM);

      RECRelatorios.PrintTAG := 1;
      RECRelatorios.Handle   := Self.Handle;

      qrpEST_ETQ_PEQ := TqrpEST_ETQ_PEQ.Create(Self,RECRelatorios);
      qrpEST_ETQ_PEQ.Tag := 3;
      qrpEST_ETQ_PEQ.WinControlFormCreate(qrpEST_ETQ_PEQ);
    end;
  finally
    oFRECRelatorios(RECRelatorios);
  end;
end;

function TFrmEXP_SEP_COL._Etiquetas: Boolean;
var
  ETQ_IDCP,
  ETQ_CDET: Variant;

  ETQ_CUT_QTDE: Currency;
  ETQ_CUT_QTRL: Integer;

  ETQ_EST_QTDE: Currency;
  ETQ_EST_QTRL: Integer;

  i: Word;

//  RECEdicao: TRECEdicao;
begin
  oIREC_SHE_EDI(AREC_SHE_EDI);
  AREC_SHE_EDI.FB_SP      := SPEdicao;
  AREC_SHE_EDI.FB_SP_NAME := 'SP_CAD_PRO_EST_RFK_NEW';

  result := False;

  if (EdicaoPRO_CDET.AsInteger > 0) and (EdicaoPRO_QCOR.AsFloat > 0) then
     try
       oOTransact(TEdicao);
       with SQLEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT ETQ.ID  ,ETQ.IDEP,');
         SQL.Add('       ETQ.IDCA,ETQ.LGCA,');
         SQL.Add('       ETQ.CDET,ETQ.CTNR,ETQ.LOTE,');
         SQL.Add('       ETQ.CDRO,ETQ.CDOP,ETQ.REOP,ETQ.CDTP,');
         SQL.Add('       ETQ.IDCP,ETQ.CP_IDEP,ETQ.CP_DEEP,ETQ.IDAK ,ETQ.IDEK,ETQ.CEAN,');
         SQL.Add('       ETQ.ARTIGO,ETQ.SKU,ETQ.DECP,ETQ.DGCP,ETQ.UCOM,ETQ.UCON,ETQ.UCDBE,ETQ.UQTDE,'); { RICARDO }
         SQL.Add('       EST.EPE_QTDE,EST.EPE_QTRL ,ETQ.QTDE,ETQ.QTRL,ETQ.PSBR,ETQ.PSLQ,');
         SQL.Add('       ETQ.CF_VPRC_PAD_ORI,ETQ.CF_VPRC_PAD,ETQ.CF_VPRC_COM,');
         SQL.Add('       ETQ.CDSP,ETQ.IDSP,ETQ.DTSP,ETQ.LGSP,ETQ.IDPK,ETQ.DTPK,ETQ.DEPK,');
         SQL.Add('       ETQ.COL_ID,ETQ.NFCI');
         SQL.Add('FROM   VW_CAD_PRO_EST AS ETQ');
         SQL.Add('JOIN   SP_CAD_PRO_EST_PSQ(:IDEP,ETQ.IDEK) AS EST ON (1 = 1)');
         SQL.Add('WHERE  ETQ.CDET = ''' + EdicaoPRO_CDET.AsString +'''');

         ParamByName('IDEP').Value := RECParametros.EP_ID;
         ExecQuery;

         if Eof then
         DataBaseError('Etiqueta não Encontrada !');
       end;

       ETQ_IDCP := SQLEdicao.Current.ByName('IDCP').AsString;
       ETQ_CDET := SQLEdicao.Current.ByName('CDET').AsString;

       { Etqueta Original }
       ETQ_EST_QTDE := SQLEdicao.Current.ByName('QTDE').AsCurrency;
       ETQ_EST_QTRL := SQLEdicao.Current.ByName('QTRL').AsInteger;

       { Etqueta Cortada }
       if DBGEdicao.FocusedColumn = DBGEdicaoPRO_QCOR.ColIndex then
       begin
         ETQ_CUT_QTDE := EdicaoPRO_QCOR.AsCurrency;
         ETQ_CUT_QTRL := EdicaoPRO_RCOR.AsInteger;
       end else
       begin
         ETQ_CUT_QTDE := SQLEdicao.Current.ByName('UQTDE').AsCurrency;
         ETQ_CUT_QTRL := 1;
       end;

       if (ETQ_CUT_QTDE > ETQ_EST_QTDE) or (ETQ_CUT_QTRL > ETQ_EST_QTRL) then
       DataBaseError('Quantidade informada não pode ser maior que quantidade disponível !');

       result := True;

       for i := 1 to ETQ_CUT_QTRL do

       if ETQ_EST_QTDE > ETQ_CUT_QTDE then { Faça enquanto qtde cortada menor qtde original }
       begin
         { Gera Etiqueta }
         with SQLConsulta do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SELECT GEN_ID(ID_NO_PRO_CDET,1) FROM RDB$DATABASE');
           ExecQuery;
         end;

         with AREC_SHE_EDI do
         begin
           { Inicializar Parâmetros: FLAG + campos de pesquisa (IDEP,IDPK,IDFK) }
           AFLAG := 0;
           ACDET := SQLConsulta.Current.Vars[0].AsInt64; { Etiquetas }

           { Cadastro }
           AIDEP := SQLEdicao.Current.ByName('IDEP').AsInteger;
           AIDLG := RECUsuarios.ID;

           { Situação }
           ACDST := 30;
           AREST := 'A';
           ADEST := 'ATIVO';

           { Romaneio }
           ACDRO := SQLEdicao.Current.ByName('CDRO').AsInteger;
           AITEM := 0;

           { Etiqueta }
           ALOTE := SQLEdicao.Current.ByName('LOTE').AsString;
           ACDI  := 0;
           AMAPA := EmptyStr;

           { Processos }
           ACDOP := SQLEdicao.Current.ByName('CDOP').AsInteger;
           AREOP := SQLEdicao.Current.ByName('REOP').AsString;
           ACDTP := SQLEdicao.Current.ByName('CDTP').AsInteger;

           { Produtos }
           AIDCP    := SQLEdicao.Current.ByName('IDCP').AsInteger;
           AIDAK    := SQLEdicao.Current.ByName('IDAK').AsInteger;
           ACP_IDEP := SQLEdicao.Current.ByName('CP_IDEP').AsInteger;
           ACEAN    := SQLEdicao.Current.ByName('CEAN').AsString;

           { Lançamento }
           AQTDE := ETQ_CUT_QTDE;
           AQTRL := 1;

           { Custo }
           ACF_VPRC_PAD_ORI := SQLEdicao.Current.ByName('CF_VPRC_PAD_ORI').AsString;
           ACF_VPRC_PAD     := SQLEdicao.Current.ByName('CF_VPRC_PAD').AsFloat;
           ACF_VPRC_COM     := SQLEdicao.Current.ByName('CF_VPRC_COM').AsFloat;

           { Classificações }
           ACOL_ID := SQLEdicao.Current.ByName('COL_ID').AsInteger; { Coleção - Compras }
           ANFCI   := SQLEdicao.Current.ByName('NFCI'  ).AsString; { Ficha de Conteúdo de Importação }

           { Defeitos }
           AIDDF := 0;
           ACDDF := 0;

           { Informações Adicionais }
           AINFADCAD := 'Peça Cortada ' + RECUsuarios.Login + ' - ' + FormatDateTime('dd/mm/yy hh:mm',Now);

           oSP_CAD_PRO_EST_RFK(AREC_SHE_EDI); { Execute Procedure }

           ETQ_EST_QTDE := ETQ_EST_QTDE - AQTDE;
           ETQ_EST_QTRL := 1;
         end;

         if i = 1 then
         CDET_INI := SPEdicao.ParamByName('ACDET').Value;

         if i = ETQ_CUT_QTRL then
         CDET_FIM := SPEdicao.ParamByName('ACDET').Value;


         if i = 1 then
         begin
           Edicao.Edit;
           EdicaoPRO_CBAR.Value := SPEdicao.ParamByName('ACDET').Value;
           EdicaoPRO_CDET.Value := SPEdicao.ParamByName('ACDET').Value;
           EdicaoPRO_QTDE.Value := SPEdicao.ParamByName('AQTDE').Value;
           EdicaoPRO_QTRL.Value := SPEdicao.ParamByName('AQTRL').Value;
           EdicaoPRO_QCOR.Value := 0;
           EdicaoPRO_RCOR.Value := 0;
           EdicaoPRO_QSEP.Value := 0;
           EdicaoPRO_RSEP.Value := 0;
           Edicao.Post;
         end else
         begin
           Edicao.Append;
           EdicaoPRO_CBAR.Value := SPEdicao.ParamByName('ACDET').Value;
           EdicaoPRO_CDET.Value := SPEdicao.ParamByName('ACDET').Value;
           EdicaoPRO_QTDE.Value := SPEdicao.ParamByName('AQTDE').Value;
           EdicaoPRO_QTRL.Value := SPEdicao.ParamByName('AQTRL').Value;
           EdicaoPRO_QCOR.Value := 0;
           EdicaoPRO_RCOR.Value := 0;
           EdicaoPRO_QSEP.Value := 0;
           EdicaoPRO_RSEP.Value := 0;

           EdicaoPRO_CDPD.Value := PedidosIDPK.AsInteger;
           EdicaoPRO_DERO.Value := PedidosDEPK.AsString;
           EdicaoPRO_CCLI.Value := PedidosIDCD.AsInteger;
           EdicaoPRO_DCLI.Value := PedidosDECD.AsString;
           EdicaoPRO_CVEN.Value := PedidosIDCV.AsInteger;
           EdicaoPRO_DVEN.Value := PedidosDECV.AsString;
           EdicaoPRO_CREP.Value := PedidosIDCR.AsInteger;
           EdicaoPRO_DREP.Value := PedidosDECR.AsString;

           EdicaoPRO_CDEP.Value := SQLEdicao.Current.ByName('IDEP').AsInteger;
           EdicaoPRO_CTNR.Value := SQLEdicao.Current.ByName('CTNR').AsString;
           EdicaoPRO_LOTE.Value := SQLEdicao.Current.ByName('LOTE').AsString;

           EdicaoPRO_IPRO.Value := SQLEdicao.Current.ByName('IDCP'  ).AsInteger;
           EdicaoPRO_CART.Value := SQLEdicao.Current.ByName('ARTIGO').AsString;
           EdicaoPRO_CPRO.Value := SQLEdicao.Current.ByName('SKU'   ).AsString;
           EdicaoPRO_DPRO.Value := SQLEdicao.Current.ByName('DECP'  ).AsString;
           EdicaoPRO_DGCP.Value := SQLEdicao.Current.ByName('DGCP'  ).AsString;

           EdicaoPRO_DUNI.Value := SQLEdicao.Current.ByName('UCOM').AsString;
           EdicaoPRO_UCON.Value := SQLEdicao.Current.ByName('UCON').AsString;

           EdicaoPRO_CDBE.Value := SQLEdicao.Current.ByName('UCDBE').AsString;
           EdicaoPRO_QTUN.Value := SQLEdicao.Current.ByName('UQTDE').AsCurrency; { RICARDO }

           EdicaoPRO_QDIS.Value := SQLEdicao.Current.ByName('EPE_QTDE').AsCurrency;
           EdicaoPRO_RDIS.Value := SQLEdicao.Current.ByName('EPE_QTRL').AsInteger;

           EdicaoPRO_NFCI.Value := SQLEdicao.Current.ByName('NFCI').AsString;
           Edicao.Post;
         end;
       end;

       if result then
       with SQLEdicao do
       begin
         { Etiqueta Original }
         Close;
         SQL.Clear;
         SQL.Add('UPDATE CAD_PRO_EST');
         SQL.Add('SET    QTDE = ''' + oStrTran(CurrToStr(ETQ_EST_QTDE),',','.') + ''',');
         SQL.Add('       QTRL = ''' + oStrTran(IntToStr (ETQ_EST_QTRL),',','.') + ''' ');

         SQL.Add('WHERE  CDET = ''' + ETQ_CDET + '''');
         ExecQuery;

         Close;
         SQL.Clear;
         SQL.Add('EXECUTE PROCEDURE SP_CAD_PRO_EST_LAN(');
         SQL.Add('''' + RECParametros.EP_ID +''',');
         SQL.Add('''' + ETQ_IDCP         +''')');
         ExecQuery;
       end;
     finally
       oCTransact(TEdicao);
     end;

   Edicao.Next;
end;

procedure TFrmEXP_SEP_COL.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value       := 0;
  EdicaoPRO_ITEM.Value := 0;

  EdicaoPRO_QCOR.Value := 0;
  EdicaoPRO_RCOR.Value := 0;
  EdicaoPRO_QSEP.Value := 0;
  EdicaoPRO_RSEP.Value := 0;

  EdicaoPRO_UNIT.Value := 0;

  EdicaoPRO_ERRO.Value := EmptyStr;

  EdicaoPRO_FLAG.Value := 0;
  EdicaoFLAG.Value     := 0;
end;

procedure TFrmEXP_SEP_COL.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  ACTETQ_REL_PAD.Enabled := (EdicaoPRO_QCOR.AsFloat > 0) or (EdicaoPRO_QSEP.AsFloat > 0);
  ACTETQ_REL_RED.Enabled :=  ACTETQ_REL_PAD.Enabled;

  DBGEdicaoPRO_QCOR.DisableEditor := (EdicaoPRO_ERRO.AsString <> EmptyStr) or (EdicaoPRO_CDBE.AsString  = 'PF');
  DBGEdicaoPRO_RSEP.DisableEditor := (EdicaoPRO_ERRO.AsString <> EmptyStr);

  PNLDescricao.Caption :=  EdicaoPRO_DPRO.AsString;

  if Edicao.State = dsBrowse then
  begin
    DBGEdicao.ApplyBestFit(DBGEdicaoPRO_DERO);
    DBGEdicao.ApplyBestFit(DBGEdicaoPRO_CPRO);
    DBGEdicao.ApplyBestFit(DBGEdicaoPRO_DGCP);
    DBGEdicao.ApplyBestFit(DBGEdicaoPRO_UCON);  
  end;
end;

procedure TFrmEXP_SEP_COL.EdicaoBeforeEdit(DataSet: TDataSet);
begin
  if PCEdicao.ActivePageIndex = 0 then
     DBGEdicao.SetFocus;
end;

procedure TFrmEXP_SEP_COL.EdicaoBeforePost(DataSet: TDataSet);
begin
  if EdicaoPRO_ERRO.AsString <> EmptyStr then
     EdicaoPRO_FLAG.Value := 1;
     
  if (EdicaoPRO_QCOR.AsFloat > 0) and (Pos(EdicaoPRO_CDBE.AsString,'PIQT') = 0) then
  if ((EdicaoPRO_QCOR.AsInteger mod EdicaoPRO_QTUN.AsInteger <> 0) or
      (EdicaoPRO_QCOR.AsInteger > EdicaoPRO_QTDE.AsInteger)) then

  DataBaseError('Quantidade de Corte Inválido !');
end;

procedure TFrmEXP_SEP_COL.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SIECancela.Click;
       vk_insert: SIEInclui.Click;
//       vk_return: SIEAltera.Click;
       vk_delete: SIEExclui.Click;
  end;
end;

procedure TFrmEXP_SEP_COL.SIEAlteraClick(Sender: TObject);
begin
  oEdit(Edicao);
end;

procedure TFrmEXP_SEP_COL.SIEExcluiClick(Sender: TObject);
begin
  oDelete(Edicao);
end;

procedure TFrmEXP_SEP_COL.SIESalvaClick(Sender: TObject);
begin
  oPost(Edicao);
end;

procedure TFrmEXP_SEP_COL.SIECancelaClick(Sender: TObject);
begin
  oCancel(Edicao);
end;

procedure TFrmEXP_SEP_COL.DTSEdicaoStateChange(Sender: TObject);
begin
  oState(Edicao,SBEdicaoGrade);
end;

procedure TFrmEXP_SEP_COL.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if Edicao.Eof then
  begin
    Edicao.Close;
    Edicao.Open;
    Abort;
  end;
end;

procedure TFrmEXP_SEP_COL.ACTSaidaExecute(Sender: TObject);
begin
  if Edicao.State in [dsInsert,dsEdit] then
     Edicao.Cancel
  else
     inherited;
end;

procedure TFrmEXP_SEP_COL._Empty;
begin
  ACTSalva.Enabled  := False;
  ACTDelete.Enabled := False;
  ACTETQ_REL_PAD.Enabled := False;
  ACTETQ_REL_RED.Enabled :=  ACTETQ_REL_PAD.Enabled;

  Pedidos.Params[0].Value := '0';
  oRTransact(TConsulta);
  PedidosId.Tag := 0;

  oOTransact(TSEdicao);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM ETIQUETAS');
    ExecQuery;
  end;
  oRTransact(TSEdicao);
end;

procedure TFrmEXP_SEP_COL.EdicaoAfterPost(DataSet: TDataSet);
begin
  TSEdicao.CommitRetaining;
end;

function TFrmEXP_SEP_COL._ETQDuplicidade(ACDET: Integer = 0): Boolean;
begin
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    if ACDET > 0 then
    begin
      SQL.Add('SELECT ID FROM ETIQUETAS');
      SQL.Add('WHERE  PRO_CDET = '''+IntToStr(ACDET)+'''');
    end else
    begin
      SQL.Add('SELECT PRO_CDET AS CDET,COUNT(*) AS QTDE FROM ETIQUETAS');
      SQL.Add('GROUP  BY 1');
      SQL.Add('HAVING COUNT(*) > 1');
    end;
    ExecQuery;

    result := (not Eof);
    if not Eof then
    begin
      Close;
      SQL.Clear;
      SQL.Add('MERGE INTO ETIQUETAS AS PK');
      SQL.Add('USING (');
      SQL.Add('SELECT PRO_CDET AS CDET,MAX(ID) AS ID FROM ETIQUETAS');
      SQL.Add('GROUP  BY 1');
      SQL.Add('HAVING COUNT(*) > 1) AS FK');
      SQL.Add('ON');
      SQL.Add('PK.ID = FK.ID');
      SQL.Add('WHEN MATCHED THEN');
      SQL.Add('UPDATE SET');
      SQL.Add('PK.PRO_ERRO = ''DUPLICIDADE'',');
      SQL.Add('PK.PRO_FLAG = 0');
      ExecQuery;

      oRTransact(TSEdicao);
    end;
  end;
end;

procedure TFrmEXP_SEP_COL.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGEdicaoC_ID.Index] mod 2 <> 0 then
       AColor := $00EFF0F1;

    if (AColor = $00EFF0F1) and (AFont.Color = clWhite) then
        AFont.Color := clBlack;

    if (AColumn = DBGEdicaoPRO_DERO) or (AColumn = DBGEdicaoPRO_CDET) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
    end;

    if (AColumn = DBGEdicaoPRO_QTDE) then
    begin
      AColor      := clGray;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end;

    if AColumn = DBGEdicaoPRO_QDIS then
    begin
      AColor      := clInfoBk;
      AFont.Color := clBlack;
    end;

    if AColumn = DBGEdicaoPRO_QCOR then
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;

      if ANode.Values[DBGEdicaoPRO_QCOR.Index] > 0 then
         AFont.Style := [fsBold];
    end;

    if AColumn = DBGEdicaoPRO_RSEP then
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;

      if ANode.Values[DBGEdicaoPRO_RSEP.Index] > 0 then
         AFont.Style := [fsBold];
    end;

    if ANode.Values[DBGEdicaoPRO_ERRO.Index] = 'DUPLICIDADE' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TFrmEXP_SEP_COL.DBGEdicaoPRO_QCORValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsInsert,dsEdit]) and (not oEmpty(DBGEdicao.EditingText)) then
  begin
    EdicaoPRO_QCOR.Value := StrToFloat(DBGEdicao.EditingText);
    EdicaoPRO_RCOR.Value := 1;
    EdicaoPRO_QSEP.Value := 0;
    EdicaoPRO_RSEP.Value := 0;
    Edicao.Post;
  end;
end;

procedure TFrmEXP_SEP_COL.DBGEdicaoPRO_RSEPValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if (Edicao.State in [dsInsert,dsEdit]) and (not oEmpty(DBGEdicao.EditingText)) then
  begin
    EdicaoPRO_QCOR.Value := 0;
    EdicaoPRO_RCOR.Value := 0;
    EdicaoPRO_QSEP.Value := EdicaoPRO_QTUN.AsFloat * StrToInt(DBGEdicao.EditingText);
    EdicaoPRO_RSEP.Value := StrToInt(DBGEdicao.EditingText);
    Edicao.Post;
  end;
end;

procedure TFrmEXP_SEP_COL.EdicaoAfterOpen(DataSet: TDataSet);
begin
  DBGEdicao.FocusedColumn := DBGEdicaoPRO_QCOR.ColIndex;
end;

procedure TFrmEXP_SEP_COL.EdicaoCalcFields(DataSet: TDataSet);
begin
  EdicaoC_ID.Value := Edicao.RecNo;
end;

procedure TFrmEXP_SEP_COL.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  DBGEdicaoPRO_CART.Visible := False;
end;

procedure TFrmEXP_SEP_COL.EdicaoAfterScroll(DataSet: TDataSet);
begin
  if EdicaoPRO_CART.AsString <> EdicaoPRO_CPRO.AsString then
     DBGEdicaoPRO_CART.Visible := True;
end;

procedure TFrmEXP_SEP_COL.PedidosBeforeOpen(DataSet: TDataSet);
begin
  DBGPedidosARTIGO.Visible := False;
end;

procedure TFrmEXP_SEP_COL.PedidosAfterOpen(DataSet: TDataSet);
begin
  PedidosId.Tag := 1;

  if (not oEmpty(Pedidos.Params[0].AsString)) and (Pedidos.Params[0].AsString <> '0') then
  begin
    if (PedidosIDPK.AsInteger = 0) or (PedidosCDRO.AsInteger > 0) or (PedidosCDNF.AsInteger > 0) then
    begin
      ACTSalva.Enabled       := False;
      ACTETQ_REL_PAD.Enabled := ACTSalva.Enabled;
      ACTETQ_REL_RED.Enabled := ACTETQ_REL_PAD.Enabled;
    end;

    if PedidosIDPK.AsInteger = 0 then
       oErro(Application.Handle,'Falha ao tentar coletar etiquetas do estoque !' +#13+
                      'Pedido Nº ' + Pedidos.Params[0].Value + ' não Encontrado.');

    if PedidosCDNF.AsInteger > 0 then
       oErro(Application.Handle,'Falha ao tentar coletar etiquetas do estoque !' +#13+
                      'Pedido Nº ' + Pedidos.Params[0].Value + ' já Faturado.' +#13+#13+

                      'Nota Fiscal Nº ' + PedidosCDNF.AsString + #13+
                      'Emissão '        + FormatDateTime('dd/mm/yy hh:mm',PedidosDTNF.AsDateTime) + #13+#13+

                      PedidosDECV.AsString + #13+
                      PedidosDECD.AsString);

    if PedidosCDRO.AsInteger > 0 then
       oErro(Application.Handle,'Falha ao tentar coletar etiquetas do estoque !' +#13+
                      'Pedido Nº ' + Pedidos.Params[0].Value + ' já Romaneado.' +#13+#13+

                      'Romaneio Nº ' + PedidosCDRO.AsString + #13+
                      'Emissão '     + FormatDateTime('dd/mm/yy hh:mm',PedidosDTRO.AsDateTime) + #13+#13+

                      PedidosDECV.AsString + #13+
                      PedidosDECD.AsString);
  end;
end;

procedure TFrmEXP_SEP_COL.PedidosAfterScroll(DataSet: TDataSet);
begin
  if PedidosArtigo.AsString <> PedidosSKU.AsString then
     DBGPedidosARTIGO.Visible := True;
end;

procedure TFrmEXP_SEP_COL.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(Handle,'Confirma Exclusão ?' +#13+#13+
                   'Etiqueta Nº ' + EdicaoPRO_CDET.AsString +#13+
                    EdicaoPRO_CPRO.AsString + ' ' + EdicaoPRO_DGCP.AsString) = mrNo then
     Abort;               
end;

procedure TFrmEXP_SEP_COL.EdicaoAfterDelete(DataSet: TDataSet);
begin
  oRTransact(TSEdicao);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*)');
    SQL.Add('FROM   ETIQUETAS AS PK');
    SQL.Add('WHERE  PK.PRO_FLAG = 0');
    SQL.Add('AND    PK.PRO_ERRO CONTAINING ''DUPLICIDADE''');
    ExecQuery;
  end;

  if SQLSEdicao.Current.Vars[0].AsInteger > 0 then
     oErro(handle,'Ainda restam ' + SQLSEdicao.Current.Vars[0].AsString + ' duplicidade(s).' +#13+#13+
                  'É necessário excluir todas as etiquetas duplicadas para poder salvar.') else
  begin
     oAviso(handle,'Parabéns !' +#13+#13+
                   'Todas as etiquetas duplicadas foram eliminadas.');

     ACTSalva.Enabled       := True;
     ACTETQ_REL_PAD.Enabled := True;
     ACTETQ_REL_RED.Enabled := ACTETQ_REL_PAD.Enabled;
  end;
end;

procedure TFrmEXP_SEP_COL.DTSErrosDataChange(Sender: TObject; Field: TField);
begin
  DBGErros.ApplyBestFit(DBGErrosPRO_UCON);
end;

end.
