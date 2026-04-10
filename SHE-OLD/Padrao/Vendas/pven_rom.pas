unit pven_rom;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils, FMTBcd,
  IBEvents, rxSpeedbar, IBSQL, cxGraphics, cxControls, dxStatusBar,
  ActnList;

type
  Tfrmven_rom = class(TForm)
    DTSEdicao: TDataSource;
    PNLConsulta: TPanel;
    pnlpri: TPanel;
    TSEdicao: TIBTransaction;
    Edicao: TIBDataSet;
    FKPedidos: TIBQuery;
    Pedidos: TIBQuery;
    GBEtiquetas: TGroupBox;
    ILMenu: TImageList;
    SBMenu: TSpeedBar;
    SSMenu: TSpeedbarSection;
    SIMSalva: TSpeedItem;
    SIMNFe: TSpeedItem;
    SIMSaida: TSpeedItem;
    EdicaoID: TIntegerField;
    EdicaoROM_ITEM: TIBStringField;
    EdicaoROM_IPRO: TIntegerField;
    EdicaoROM_CART: TIBStringField;
    EdicaoROM_CPRO: TIBStringField;
    EdicaoROM_CBAR: TIBStringField;
    EdicaoROM_DPRO: TIBStringField;
    EdicaoROM_COMP: TIBStringField;
    EdicaoROM_CDET: TIBStringField;
    EdicaoROM_CTNR: TIBStringField;
    EdicaoROM_LOTE: TIBStringField;
    EdicaoROM_DUNI: TIBStringField;
    EdicaoROM_QTDE: TIBBCDField;
    EdicaoROM_QTRL: TIntegerField;
    EdicaoROM_VDSC: TIBBCDField;
    EdicaoROM_PREC: TFloatField;
    EdicaoROM_UNIT: TFloatField;
    EdicaoROM_TSDE: TIBBCDField;
    EdicaoROM_TOTA: TIBBCDField;
    EdicaoROM_CCLF: TIBStringField;
    EdicaoROM_PIPI: TIBBCDField;
    EdicaoROM_VIPI: TIBBCDField;
    EdicaoROM_IDSP: TIntegerField;
    EdicaoROM_DSEP: TIBStringField;
    EdicaoROM_PSBR: TIBBCDField;
    EdicaoROM_PSLQ: TIBBCDField;
    EdicaoROM_CCST: TIBStringField;
    EdicaoROM_NFCI: TIBStringField;
    EdicaoROM_STAV: TIBStringField;
    EdicaoROM_FLAG: TSmallintField;
    EdicaoROM_APRO: TIBStringField;
    EdicaoROM_OBSE: TMemoField;
    DBGConsulta: TdxDBGrid;
    DBGConsultaROM_ITEM: TdxDBGridMaskColumn;
    DBGConsultaROM_CART: TdxDBGridMaskColumn;
    DBGConsultaROM_CPRO: TdxDBGridMaskColumn;
    DBGConsultaROM_DUNI: TdxDBGridPickColumn;
    DBGConsultaROM_CDET: TdxDBGridMaskColumn;
    DBGConsultaROM_QTDE: TdxDBGridCalcColumn;
    DBGConsultaROM_QTRL: TdxDBGridMaskColumn;
    DBGConsultaROM_COMP: TdxDBGridMaskColumn;
    PNLDescricao: TPanel;
    EdicaoROM_PESO: TIBBCDField;
    EdicaoROM_PSCN: TIBBCDField;
    EdicaoROM_REND: TIBBCDField;
    FKPedidosIDPK: TLargeintField;
    FKPedidosITEM: TIntegerField;
    FKPedidosIDCP: TIntegerField;
    FKPedidosCP_IDEP: TSmallintField;
    FKPedidosARTIGO: TIBStringField;
    FKPedidosSKU: TIBStringField;
    FKPedidosCEAN: TIBStringField;
    FKPedidosDECP: TIBStringField;
    FKPedidosDGCP: TIBStringField;
    FKPedidosUCOM: TIBStringField;
    FKPedidosQTDE: TIBBCDField;
    FKPedidosQTRL: TIntegerField;
    FKPedidosVPRC_PAD: TFloatField;
    FKPedidosPDSC: TIBBCDField;
    FKPedidosVPRC_COM: TFloatField;
    FKPedidosTSDE: TIBBCDField;
    FKPedidosTCDE: TIBBCDField;
    FKPedidosNCM: TIBStringField;
    FKPedidosPIPI: TIBBCDField;
    FKPedidosPSBR: TIBBCDField;
    FKPedidosPSLQ: TIBBCDField;
    FKPedidosORIG: TSmallintField;
    FKPedidosCPAIS: TSmallintField;
    FKPedidosHOST: TIBStringField;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    SQLSEdicao: TIBSQL;
    FKPedidosID: TIntegerField;
    SQLEtiquetas: TIBSQL;
    EdicaoROM_CDTP: TSmallintField;
    EdicaoROM_CDDF: TSmallintField;
    EdicaoROM_DEDF: TIBStringField;
    EdicaoROM_PDSC: TIBBCDField;
    FKPedidosUPSCN: TIBBCDField;
    FKPedidosUMETRO: TIBBCDField;
    FKPedidosUREND: TIBBCDField;
    FKPedidosINFADCAD: TIBStringField;
    FKPedidosIP: TIBStringField;
    SQLEvent: TIBSQL;
    SBRodape: TdxStatusBar;
    EdicaoROM_PTABI: TFloatField;
    EdicaoROM_PTABF: TFloatField;
    FKPedidosVPRC_PAD_INI: TFloatField;
    FKPedidosVPRC_PAD_FIM: TFloatField;
    PedidosID: TIntegerField;
    PedidosIDEP: TSmallintField;
    PedidosCDST: TSmallintField;
    PedidosREST: TIBStringField;
    PedidosDEST: TIBStringField;
    PedidosIDPK: TLargeintField;
    PedidosDEPK: TIBStringField;
    PedidosDTPK: TDateField;
    PedidosCTNR: TIBStringField;
    PedidosIDCD: TIntegerField;
    PedidosDECD: TIBStringField;
    PedidosUFCD: TIBStringField;
    PedidosCSCD: TSmallintField;
    PedidosIDCV: TSmallintField;
    PedidosDECV: TIBStringField;
    PedidosIDCR: TSmallintField;
    PedidosDECR: TIBStringField;
    PedidosPDSC: TIBBCDField;
    PedidosVDSC: TIBBCDField;
    PedidosTDSC: TIBStringField;
    PedidosCDPD: TSmallintField;
    PedidosSTPD: TIBStringField;
    PedidosFAPD: TSmallintField;
    PedidosBEPD: TSmallintField;
    PedidosSEPD: TSmallintField;
    PedidosCDCO: TSmallintField;
    PedidosSTCO: TIBStringField;
    PedidosRECO: TIBStringField;
    PedidosTPCO: TSmallintField;
    PedidosCDPG: TSmallintField;
    PedidosDEPG: TIBStringField;
    PedidosCFOP: TIBStringField;
    PedidosIDCT: TSmallintField;
    PedidosDECT: TIBStringField;
    PedidosMFRT: TSmallintField;
    PedidosVFRT: TIBBCDField;
    PedidosINFADCAD: TIBStringField;
    ALPrincipal: TActionList;
    ACTXMLCreate: TAction;
    ACTPesquisa: TAction;
    ACTXMLValidate: TAction;
    ACTConsulta: TAction;
    ACTPSQ_NFE_ADM: TAction;
    ACTXMLLoteCreate: TAction;
    ACTPSQ_PED_RDV: TAction;
    ACTPSQ_NFE_NUM: TAction;
    ACTPSQ_NFE_SEQ: TAction;
    ACTPSQ_TAB_CFOP: TAction;
    ACTPSQ_CAD_TRA: TAction;
    ACTPSQ_CAD_PRO: TAction;
    ACTXMLLoteRetorno: TAction;
    ACTNFeEdicao: TAction;
    ACTNFeTriangular: TAction;
    ACTNFeValidate: TAction;
    ACTNFeCalculate: TAction;
    ACTNFeICMS: TAction;
    ACTNFeCST: TAction;
    ACTRefresh: TAction;
    ACTNFeDesconto: TAction;
    ACTEveRegister: TAction;
    ACTNFeCFOP: TAction;
    ACTNFeFrete: TAction;
    ACTNFeSeguro: TAction;
    ACTNFeINFADCAD: TAction;
    ACTNFeBoleto: TAction;
    ACTXMLSend: TAction;
    ACTEveExecute: TAction;
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
    ACTEmail: TAction;
    ACTImporta: TAction;
    ACTEDI_CAD_PAD: TAction;
    ACTVisualiza: TAction;
    ACTNFePDF: TAction;
    ACTXMLImporta: TAction;
    ACTEDI_CAD_PRO: TAction;
    ACTEDI_CAD_PRO_EST: TAction;
    FKPedidosUPESO: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SIMSalvaClick(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure FormPaint(Sender: TObject);
    procedure SIMNFeClick(Sender: TObject);
    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTEveExpressExecute(Sender: TObject);
  private
    { Private declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    FMSGRodape: String;
    FCaixa,
    ForceClose: Boolean;

    { Definindo uma propriedade no form
      Criado um atributo FMSGCaption e um método SetMSGCaption para trabalhar com a propriedade
      FMSGCaption   - Encapsula a informação
      SetMSGCaption - Método de acesso que recebe a atualização da informação MSGCaption
      Não usarei o método SetMSGCaption para atribuir informação a FMSGRodpae,
      vou apenas utilizar a propriedade }

    { método para atribuição\validação de valor }
    procedure SetMSGRodape(const AValue: String);
    procedure SetCaixa(const AValue: Boolean);
  public
    { Public declarations }
    RECPedido : TRECPedidos;
    ROM_QTDE,
    ROM_TSDE,
    ROM_TCDE,
    ROM_PSBR,
    ROM_PSLQ: Double;
    ROM_QTRL: Integer;

    property SMSGRodape: String read FMSGRodape write SetMSGRodape;
    property BCaixa: Boolean    read FCaixa     write SetCaixa;

    procedure _Etiquetas;
    procedure _Produtos;
    procedure _Salva;

    Constructor Create(AOwner: TComponent; const AIDPK: Integer); reintroduce; overload;
  end;

var
  frmven_rom: Tfrmven_rom;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure Tfrmven_rom.SetMSGRodape(const AValue: String);
begin
  FMSGRodape := AValue;
end;

procedure Tfrmven_rom.SetCaixa(const AValue: Boolean);
begin
  FCaixa := AValue;
end;

Constructor TFrmven_rom.Create(AOwner: TComponent; const AIDPK: Integer);
begin
  oIRECPedidos(RECPedido);
  RECPedido.IDPK := IntToStr(AIDPK);

  inherited Create(AOwner);
end;

procedure Tfrmven_rom.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'PED_PDV_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := '';
  REC_SHE_DEF.GReferencia := '';
  REC_SHE_DEF.GRegra      := '';
  REC_SHE_DEF.GAdmin      := True;

  { Métodos }
  SMSGRodape := 'Inclusão de Romaneios';
  BCaixa     := True;

  if (RECParametros.STCX <> 'Caixa Aberto') and (BCaixa) then
  begin
    oErro(Handle,'Acesso Negado !'+#13+
                 'Abertura de caixa não registrada.');
    PostMessage(Handle, WM_CLOSE, 0, 0);
    ForceClose := True;
    Abort;
  end;

  oOTransact(TSEdicao);
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM ROM_ITE');
    ExecQuery;
  end;
  oRTransact(TSEdicao);

  oOTransact(TConsulta);
  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.IDEP,');
    SQL.Add('       PK.CDST,PK.REST,PK.DEST,');
    SQL.Add('       PK.IDPK,PK.DEPK,PK.DTPK,PK.CTNR,');
    SQL.Add('       PK.IDCD,PK.DECD,PK.UFCD,PK.CSCD,');
    SQL.Add('       PK.IDCV,PK.DECV,');
    SQL.Add('       PK.IDCR,PK.DECR,');
    SQL.Add('       PK.PDSC,PK.VDSC,PK.TDSC,');
    SQL.Add('       PK.CDPD,PK.STPD,PK.FAPD,PK.BEPD,PK.SEPD,');
    SQL.Add('       PK.CDCO,PK.STCO,PK.RECO,PK.TPCO,PK.CDPG,PK.DEPG,');
    SQL.Add('       PK.CFOP,');
    SQL.Add('       PK.IDCT,PK.DECT,PK.MFRT,PK.VFRT,');
    SQL.Add('       PK.INFADCAD');

    SQL.Add('FROM '+oREPZero('VW_PED_VEN_CAB','_',RECParametros.EP_ID,3)+' AS PK');
    SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND    PK.ID   = '''+RECPedido.IDPK  +'''');
  end;

  with FKPedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.ID    ,PK.IDPK   ,PK.ITEM,');
    SQL.Add('         PK.IDCP  ,PK.CP_IDEP,');
    SQL.Add('         PK.ARTIGO,PK.SKU    ,PK.CEAN,');
    SQL.Add('         PK.DECP  ,PK.DGCP   ,');
    SQL.Add('         PK.UCOM  ,PK.UPSLQ AS UPESO,PK.UPSCN,PK.UMETRO,PK.UREND,');
    SQL.Add('         IIF(PK.QTSP > 0,PK.QTSP,PK.QTDE) AS QTDE,');
    SQL.Add('         IIF(PK.QTSP > 0,PK.RLSP,PK.QTRL) AS QTRL,');
    SQL.Add('         PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
    SQL.Add('         PK.VPRC_PAD,PK.PDSC,PK.VPRC_COM,');
    SQL.Add('         PK.TSDE,PK.TCDE ,');
    SQL.Add('         PK.NCM ,PK.PIPI ,');
    SQL.Add('         PK.PSBR,PK.PSLQ ,');
    SQL.Add('         PK.ORIG,PK.CPAIS,');
    SQL.Add('         PK.INFADCAD,');
    SQL.Add('         PK.IP,PK.HOST');
    SQL.Add('FROM '+oREPZero('VW_PED_VEN_ITE','_',RECParametros.EP_ID,3)+' AS PK');
    SQL.Add('WHERE    PK.IDEP = '''+RECParametros.EP_ID+'''');
    SQL.Add('AND      PK.IDPK = '''+RECPedido.IDPK  +'''');
    SQL.Add('ORDER BY PK.ITEM');
  end;
end;

procedure Tfrmven_rom.FormShow(Sender: TObject);
begin
  OnShow := Nil;
end;

procedure Tfrmven_rom.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if ForceClose then
  Abort;

  try
    ACTEveRegister.Execute; { Registro }
  finally
    Screen.Cursor := crDefault;
    Tag := 0;
  end;
end;

procedure Tfrmven_rom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmven_rom.FormDestroy(Sender: TObject);
begin
  OnDestroy := Nil;

  try
    oFTransact(TConsulta);
  except
    on E: Exception do
    begin
      oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                               'Error Code: '+E.Message+'.'      +#13+
                                Self.Caption+'.');
    end;
  end;

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

  frmven_rom := Nil;
end;

procedure Tfrmven_rom.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: Close;
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
       121      : if SIMSalva.Enabled then SIMSalva.Click;
  end;
end;

procedure Tfrmven_rom.FormPaint(Sender: TObject);
var
  AScreen: TRect;
begin
  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AScreen);

  Left   := AScreen.Left   + 5;
  Height := AScreen.Bottom - AScreen.Top;
  Top    := AScreen.Top    + 5;
end;

procedure Tfrmven_rom.FormResize(Sender: TObject);
begin
  if frmven_rom <> Nil then
     Paint;
end;

procedure Tfrmven_rom.SIMSalvaClick(Sender: TObject);
begin
  _Salva;
  RECPedido.IDFK := 0;
  if not SIMSalva.Enabled then
  Close;
end;

procedure Tfrmven_rom.SIMNFeClick(Sender: TObject);
begin
  _Salva;
  if not SIMSalva.Enabled then
  Close;
end;

procedure Tfrmven_rom.SIMSaidaClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmven_rom.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value       := 0;
  EdicaoROM_FLAG.Value := 0;
end;

procedure Tfrmven_rom.EdicaoBeforePost(DataSet: TDataSet);
begin
  if EdicaoROM_DPRO.AsString  = '' then EdicaoROM_DPRO.Value := 'DESCRIÇÂO NÃO CADASTRADA ! OBRIGATÓRIO CADASTRAR DESCRIÇÃO ';
  if EdicaoROM_QTRL.AsInteger = 0  then EdicaoROM_QTRL.Value := 1;

  { Redução }
  if (RECParametros.PED_IPI) and (RECParametros.NFE_CRT = 3) and (PedidosTPCO.AsInteger > 0) and (EdicaoROM_PIPI.AsCurrency > 0) and (EdicaoROM_CCST.AsInteger = 1) then
  EdicaoROM_UNIT.Value := EdicaoROM_PREC.AsCurrency / ((EdicaoROM_PIPI.AsCurrency / 100) + 1);

  { Crédito }
  EdicaoROM_QTDE.Value := EdicaoROM_QTDE.AsCurrency;
  EdicaoROM_PREC.Value := EdicaoROM_PREC.AsCurrency / IFThen(PedidosTPCO.AsInteger > 1,PedidosTPCO.AsInteger,1);
  EdicaoROM_UNIT.Value := EdicaoROM_UNIT.AsCurrency / IFThen(PedidosTPCO.AsInteger > 1,PedidosTPCO.AsInteger,1);

  { Totais }
  EdicaoROM_TSDE.Value := RoundTO(EdicaoROM_QTDE.AsCurrency *  EdicaoROM_PREC.AsCurrency, -2);
  EdicaoROM_TOTA.Value := RoundTO(EdicaoROM_QTDE.AsCurrency *  EdicaoROM_UNIT.AsCurrency, -2);
  EdicaoROM_VDSC.Value := EdicaoROM_TOTA.AsCurrency         * (EdicaoROM_PDSC.AsCurrency / 100);

  { IPI }
  EdicaoROM_VIPI.Value := EdicaoROM_TOTA.AsCurrency * (EdicaoROM_PIPI.AsCurrency / 100);

  { Peso Líquido }
  if  LeftStr(EdicaoROM_DUNI.AsString,1) = 'K' then EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsCurrency else
      if EdicaoROM_REND.AsFloat > 0 then
         EdicaoROM_PSLQ.Value := EdicaoROM_QTDE.AsCurrency / EdicaoROM_REND.AsCurrency else
         EdicaoROM_PSLQ.Value := EdicaoROM_PESO.AsCurrency * EdicaoROM_QTDE.AsCurrency;
  { Peso Bruto }
  EdicaoROM_PSBR.Value := EdicaoROM_PSLQ.AsCurrency + (EdicaoROM_QTRL.AsInteger * EdicaoROM_PSCN.AsCurrency);
end;

procedure Tfrmven_rom.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  if Edicao.State = dsBrowse then
  begin
    DBGConsulta.ApplyBestFit(DBGConsultaROM_CPRO);
    DBGConsulta.ApplyBestFit(DBGConsultaROM_COMP);

    PNLDescricao.Caption := EdicaoROM_DPRO.AsString;
    PNLDescricao.Height  := IFThen(PNLDescricao.Caption = EmptyStr,0,35);
  end;
end;

procedure Tfrmven_rom._Etiquetas;
begin
  try
    FKPedidos.DisableControls;
    FKPedidos.First;
    while not FKPedidos.Eof do
    begin
      with SQLEtiquetas do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.ID  ,PK.IDEP,');
        SQL.Add('         PK.CDET,PK.CTNR,PK.LOTE,');
        SQL.Add('         PK.CDOP,PK.CDTP,');
        SQL.Add('         PK.QTDE,PK.QTRL,');
        SQL.Add('         PK.IDSP,PK.DESP,PK.DTSP,');
        SQL.Add('         PK.NFCI,PK.CDDF,PK.DEDF,');
        SQL.Add('         PK.INFADETQ');
        SQL.Add('FROM     VW_CAD_PRO_EST_SEP AS PK');
        SQL.Add('WHERE    PK.IDEP = '''+RECParametros.EP_ID      +'''');
        SQL.Add('AND      PK.CDPV = '''+PedidosId.AsString    +'''');
        SQL.Add('AND      PK.IDCP = '''+FKPedidosIDCP.AsString+'''');
        SQL.Add('AND      PK.ITEM = '''+FKPedidosITEM.AsString+'''');
        SQL.Add('ORDER BY PK.CDET');
        ExecQuery;
      end;
      while not SQLEtiquetas.Eof do
      begin
        Edicao.Append;
        EdicaoROM_ITEM.Value := FKPedidosITEM.AsString;
        EdicaoROM_IPRO.Value := FKPedidosIDCP.AsInteger;

        EdicaoROM_CART.Value := FKPedidosArtigo.AsString;
        EdicaoROM_CPRO.Value := FKPedidosSKU.AsString;
        EdicaoROM_CBAR.Value := FKPedidosCEAN.AsString;

        EdicaoROM_DPRO.Value := FKPedidosDECP.AsString;
        EdicaoROM_COMP.Value := FKPedidosDGCP.AsString;

        EdicaoROM_DUNI.Value := FKPedidosUCOM.AsString;
        EdicaoROM_PESO.Value := FKPedidosUPESO.AsFloat;
        EdicaoROM_PSCN.Value := FKPedidosUPSCN.AsFloat;
        EdicaoROM_REND.Value := FKPedidosUREND.AsFloat;

        EdicaoROM_CCLF.Value := FKPedidosNCM.AsString;
        EdicaoROM_PIPI.Value := FKPedidosPIPI.AsFloat;
        EdicaoROM_CCST.Value := FKPedidosORIG.AsString;

        EdicaoROM_CDET.Value := oStrZero(SQLEtiquetas.Current.ByName('CDET').AsInteger,10);
        EdicaoROM_CTNR.Value := SQLEtiquetas.Current.ByName('CTNR').AsString;
        EdicaoROM_LOTE.Value := SQLEtiquetas.Current.ByName('LOTE').AsString;

        EdicaoROM_IDSP.Value := SQLEtiquetas.Current.ByName('IDSP').AsInteger;
        EdicaoROM_DSEP.Value := SQLEtiquetas.Current.ByName('DESP').AsString;

        EdicaoROM_CDTP.Value := SQLEtiquetas.Current.ByName('CDTP').AsInteger;
        EdicaoROM_QTDE.Value := SQLEtiquetas.Current.ByName('QTDE').AsCurrency;
        EdicaoROM_QTRL.Value := SQLEtiquetas.Current.ByName('QTRL').AsInteger;

        EdicaoROM_CDDF.Value := SQLEtiquetas.Current.ByName('CDDF').AsInteger;
        EdicaoROM_DEDF.Value := SQLEtiquetas.Current.ByName('DEDF').AsString;
        EdicaoROM_NFCI.Value := SQLEtiquetas.Current.ByName('NFCI').AsString;

        EdicaoROM_PTABI.AsFloat := FKPedidosVPRC_PAD_INI.AsFloat;
        EdicaoROM_PTABF.AsFloat := FKPedidosVPRC_PAD_FIM.AsFloat;

        EdicaoROM_PREC.AsFloat := FKPedidosVPRC_PAD.AsFloat;
        EdicaoROM_PDSC.Value   := FKPedidosPDSC.AsFloat;
        EdicaoROM_UNIT.AsFloat := FKPedidosVPRC_PAD.AsFloat;

        EdicaoROM_APRO.Value := FKPedidosINFADCAD.AsString;
        EdicaoROM_OBSE.Value := SQLEtiquetas.Current.ByName('INFADETQ').AsString;
        Edicao.Post;

        SQLEtiquetas.Next;
      end;
      FKPedidos.Next;
    end;
  finally
    FKPedidos.EnableControls;
  end;
end;

procedure Tfrmven_rom._Produtos;
begin
  while not FKPedidos.Eof do
  begin
    Edicao.Append;
    EdicaoROM_ITEM.Value := FKPedidosITEM.AsString;
    EdicaoROM_IPRO.Value := FKPedidosIDCP.AsInteger;
    EdicaoROM_CDET.Value := '0';


    EdicaoROM_CART.Value := FKPedidosArtigo.AsString;
    EdicaoROM_CPRO.Value := FKPedidosSKU.AsString;
    EdicaoROM_CBAR.Value := FKPedidosCEAN.AsString;

    EdicaoROM_DPRO.Value := FKPedidosDECP.AsString;
    EdicaoROM_COMP.Value := FKPedidosDGCP.AsString;

    EdicaoROM_DUNI.Value := FKPedidosUCOM.AsString;

    EdicaoROM_CCLF.Value := FKPedidosNCM.AsString;
    EdicaoROM_PIPI.Value := FKPedidosPIPI.AsFloat;
    EdicaoROM_CCST.Value := FKPedidosORIG.AsString;

    EdicaoROM_CDTP.Value := 78;
    EdicaoROM_QTDE.Value := FKPedidosQTDE.AsCurrency;
    EdicaoROM_QTRL.Value := FKPedidosQTRL.AsInteger;

    EdicaoROM_PTABI.AsFloat := FKPedidosVPRC_PAD_INI.AsFloat;
    EdicaoROM_PTABF.AsFloat := FKPedidosVPRC_PAD_FIM.AsFloat;

    EdicaoROM_PREC.AsFloat := FKPedidosVPRC_PAD.AsFloat;
    EdicaoROM_PDSC.Value   := FKPedidosPDSC.AsFloat;
    EdicaoROM_UNIT.AsFloat := FKPedidosVPRC_PAD.AsFloat;

    EdicaoROM_PESO.Value := FKPedidosUPESO.AsFloat;
    EdicaoROM_PSCN.Value := FKPedidosUPSCN.AsFloat;
    EdicaoROM_REND.Value := FKPedidosUREND.AsFloat;

    EdicaoROM_PSBR.Value := FKPedidosPSBR.AsFloat;
    EdicaoROM_PSLQ.Value := FKPedidosPSLQ.AsFloat;

    EdicaoROM_APRO.Value := FKPedidosINFADCAD.AsString;
    Edicao.Post;

    FKPedidos.Next;
  end;
end;

procedure Tfrmven_rom._Salva;
begin
  oRTransact(TSEdicao);
  RECPEdido.IDFK := 0;

  if PedidosId.AsInteger = 0 then
  oException(Nil,'Pedido não Encontrado !');

  if EdicaoId.AsInteger = 0 then
  oException(Nil,'Itens do Pedido não Encontrado !');

  { Verifica Duplicidades }
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ROM_CDET,COUNT(*) AS QT FROM ROM_ITE');
    SQL.Add('WHERE  ROM_CDET <> ''0''');
    SQL.Add('AND    ROM_CDET <> '' ''');
    SQL.Add('GROUP  BY 1');
    SQL.Add('HAVING COUNT(*) > 1');
    ExecQuery;

    if Current.Vars[1].AsInteger > 0 then
       oException(Nil,'Falha ao tentar salvar romaneio !' + #13 +
                      'Etiqueta Nº ' + Current.Vars[0].AsString + ' em duplicidade.' + #13 + #13 +
                      'Favor entrar em contato com o responsável pela separação.');
  end;

  { Sumário }
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(PK.ROM_QTDE) AS QTDE,SUM(PK.ROM_QTRL) AS QTRL,SUM(PK.ROM_TSDE) AS TSDE,SUM(PK.ROM_TOTA) AS TCDE,SUM(PK.ROM_PSBR) AS PSBR,SUM(PK.ROM_PSLQ) AS PSLQ');
    SQL.Add('FROM   ROM_ITE AS PK');
    SQL.Add('WHERE  PK.ROM_FLAG = 0 ');
    ExecQuery;

    RECPedido.PK_QTDE := Current.ByName('QTDE').AsCurrency;
    RECPedido.PK_QTRL := Current.ByName('QTRL').AsInteger;

    RECPedido.PK_VDSC := PedidosVDSC.AsCurrency;
    RECPedido.PK_PDSC := RoundTO((RECPedido.PK_VDSC * 100) / Current.ByName('TSDE').AsCurrency,-2);

    RECPedido.PK_TSDE := Current.ByName('TSDE').AsCurrency;
    RECPedido.PK_TCDE := Current.ByName('TCDE').AsCurrency - RECPedido.PK_VDSC;

    RECPedido.PK_PSBR := Current.ByName('PSBR').AsCurrency;
    RECPedido.PK_PSLQ := Current.ByName('PSLQ').AsCurrency;
  end;

  { Cabeçalho }
  try
    oOTransact(TEdicao);

    SPEdicao.StoredProcName := 'SP_ROM_CAB';
    SPEdicao.Prepare;

    SPEdicao.ParamByName('ped').Value  := oREPZero('ROM_CAB','_',RECParametros.EP_ID,3);
    SPEdicao.ParamByName('id').Value   := 0;

    SPEdicao.ParamByName('dero').Value := PedidosDEPK.AsString;
    SPEdicao.ParamByName('ctnr').Value := PedidosCTNR.AsString;
    SPEdicao.ParamByName('cdcx').Value := RECParametros.CDCX;

    SPEdicao.ParamByName('ccli').Value := PedidosIDCD.AsInteger;
    SPEdicao.ParamByName('cven').Value := PedidosIDCV.AsInteger;
    SPEdicao.ParamByName('crep').Value := PedidosIDCR.AsInteger;

    SPEdicao.ParamByName('qtve').Value := RECPedido.PK_QTDE;
    SPEdicao.ParamByName('rlve').Value := RECPedido.PK_QTRL;

    SPEdicao.ParamByName('tsde').Value := RECPedido.PK_TSDE;
    SPEdicao.ParamByName('tdsc').Value := PedidosTDSC.AsString;
    SPEdicao.ParamByName('pdsc').Value := RECPedido.PK_PDSC;
    SPEdicao.ParamByName('vdsc').Value := RECPedido.PK_VDSC;
    SPEdicao.ParamByName('tcde').Value := RECPedido.PK_TCDE;

    SPEdicao.ParamByName('ctra').Value := PedidosIDCT.AsInteger;
    SPEdicao.ParamByName('dtra').Value := PedidosDECT.AsString;
    SPEdicao.ParamByName('mfrt').Value := PedidosMFRT.AsString;
    SPEdicao.ParamByName('cfrt').Value := EmptyStr;
    SPEdicao.ParamByName('vfrt').Value := 0;
    SPEdicao.ParamByName('psbr').Value := RECPEdido.PK_PSBR;
    SPEdicao.ParamByName('pslq').Value := RECPEdido.PK_PSLQ;

    SPEdicao.ParamByName('stpd').Value := PedidosSTPD.AsString;
    SPEdicao.ParamByName('stco').Value := PedidosSTCO.AsString;
    SPEdicao.ParamByName('conc').Value := PedidosTPCO.AsInteger;
    SPEdicao.ParamByName('cpag').Value := PedidosCDPG.AsInteger;
    SPEdicao.ParamByName('stfi').Value := PedidosDEST.AsString;
    SPEdicao.ExecProc;
    SPEdicao.UnPrepare;

    RECPedido.IDFK := IntToStr(SPEdicao.ParamByName('rID').AsInteger);

    if RECPedido.IDFK = 0 then
    Abort;
  except
    on E: Exception do
    begin
      SIMSalva.Enabled := True;

      oCTransact(TEdicao,ltRollback);
      oException(Nil    ,'Falha ao tentar registrar romaneio !'+#13+
                         'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                         'Erro: '+E.Message);
    end;
  end;

  { Itens }
  try
    Edicao.First;
    while not Edicao.Eof do
    begin
      Application.ProcessMessages;

      SPEdicao.StoredProcName := 'SP_ROM_ITE';
      SPEdicao.Prepare;

      SPEdicao.ParamByName('AID'  ).Value := 0;
      SPEdicao.ParamByName('AIDEP').Value := RECParametros.EP_ID;
      SPEdicao.ParamByName('AIDCA').Value := RECUsuarios.ID;
      SPEdicao.ParamByName('AIDPK').Value := RECPedido.IDFK;

      SPEdicao.ParamByName('AITEM').Value := EdicaoROM_ITEM.AsString;
      SPEdicao.ParamByName('ACDET').Value := EdicaoROM_CDET.AsString;
      SPEdicao.ParamByName('AIDCP').Value := EdicaoROM_IPRO.AsInteger;
      SPEdicao.ParamByName('ACEAN').Value := EdicaoROM_CBAR.AsString;
      SPEdicao.ParamByName('ADECP').Value := EdicaoROM_DPRO.AsString;
      SPEdicao.ParamByName('ADGCP').Value := EdicaoROM_COMP.AsString;

      SPEdicao.ParamByName('AUCOM').Value := EdicaoROM_DUNI.AsString;
      SPEdicao.ParamByName('AUCON').Value := '';

      SPEdicao.ParamByName('AQTDE').Value := EdicaoROM_QTDE.AsCurrency;
      SPEdicao.ParamByName('AQTRL').Value := EdicaoROM_QTRL.AsCurrency;
      SPEdicao.ParamByName('APSBR').Value := EdicaoROM_PSBR.AsFloat;
      SPEdicao.ParamByName('APSLQ').Value := EdicaoROM_PSLQ.AsFloat;

      SPEdicao.ParamByName('AVPRC_PAD_INI').Value := EdicaoROM_PTABI.AsFloat;
      SPEdicao.ParamByName('AVPRC_PAD_FIM').Value := EdicaoROM_UNIT.AsFloat;
      SPEdicao.ParamByName('AVPRC_PAD').Value := EdicaoROM_PREC.AsFloat;
      SPEdicao.ParamByName('AVPRC_COM').Value := EdicaoROM_UNIT.AsFloat;

      SPEdicao.ParamByName('APDSC').Value := EdicaoROM_PDSC.AsFloat;
      SPEdicao.ParamByName('AVDSC').Value := EdicaoROM_VDSC.AsFloat;

      SPEdicao.ParamByName('ATSDE').Value := EdicaoROM_TSDE.AsCurrency;
      SPEdicao.ParamByName('ATCDE').Value := EdicaoROM_TOTA.AsCurrency;

      SPEdicao.ParamByName('ANCM' ).Value := EdicaoROM_CCLF.AsString;
      SPEdicao.ParamByName('APIPI').Value := EdicaoROM_PIPI.AsCurrency;
      SPEdicao.ParamByName('AVIPI').Value := EdicaoROM_VIPI.AsCurrency;
      SPEdicao.ParamByName('AIP'  ).Value := RECParametros.IP;
      SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;
      SPEdicao.ParamByName('AFLAG').Value := 0;
      
      SPEdicao.ExecProc;
      SPEdicao.UnPrepare;

      Edicao.Next;
    end;
  except
    on E: Exception do
    begin
      SIMSalva.Enabled := True;

      oCTransact(TEdicao,ltRollback);
      oException(Nil    ,'Falha ao tentar registrar os itens do romaneio !'       +#13+
                         'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                         'Erro: '+E.Message);
    end;
  end;

  { Pedido }
  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('EXECUTE BLOCK');
      SQL.Add('RETURNS (CDRO bigint)');
      SQL.Add('AS');
      SQL.Add('BEGIN');

      SQL.Add('UPDATE ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3));
      SQL.Add('SET    ROM_CDRO = '''+RECPedido.IDFK+''',');
      SQL.Add('       DTRO     = CURRENT_TIMESTAMP,');
      SQL.Add('       ROM_QTPD = '''+oStrTran(FloatToStr(RECPedido.PK_QTDE),',','.')+''',');
      SQL.Add('       ROM_RLPD = '''+oStrTran(IntToStr  (RECPedido.PK_QTRL),',','.')+'''');
      SQL.Add('WHERE  IDEP     = '''+RECParametros.EP_ID  +'''');
      SQL.Add('AND    ID       = '''+PedidosId.AsString+'''');
      SQL.Add('RETURNING CDRO INTO :CDRO;');

      SQL.Add('SUSPEND;');
      SQL.Add('END;');

      ParamCheck := False;
      Prepare;
      ExecQuery;
      ParamCheck := True;
    end;

    if RECPedido.IDFK <> SQLEdicao.Current.Vars[0].AsInteger then
    oException(Nil,'Falha ao tentar gerar romaneio !');
  except
    on E: Exception do
    begin
      SIMSalva.Enabled := True;

      oCTransact(TEdicao,ltRollback);
      oException(Nil    ,'Falha ao tentar atualizar pedido(s) !'+#13+
                         'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                         'Erro: '+E.Message);
    end;
  end;
  oCTransact(TEdicao);
  SIMSalva.Enabled := False;
  ACTEveExecute.Execute;
end;

procedure TFrmVEN_ROM.ACTEveRegisterExecute(Sender: TObject);
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

procedure TFrmVEN_ROM.ACTEveExecuteExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then { SQL INJECTION }
    oRefresh(Edicao);
  end else

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

procedure TFrmVEN_ROM.ACTEveExpressExecute(Sender: TObject);
begin
  ACTEveRegister.Execute;
  ACTEveExecute.Execute;
end;

end.
