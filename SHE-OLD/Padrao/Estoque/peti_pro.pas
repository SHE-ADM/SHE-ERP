unit peti_pro;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr3, ImgList, IBStoredProc, IBDatabase, DB,
  IBCustomDataSet, IBQuery,  ComCtrls, ExtCtrls, StdCtrls, StrUtils, math,
  dxCntner, dxEditor, dxEdLib, dxExEdtr, rxSpeedbar, IBEvents, IBSQL,
  ActnList;

type
  Tfrmeti_pro = class(TFrmPadr3)
    siPRI: TSpeedItem;
    siVIS: TSpeedItem;
    siCSE: TSpeedItem;
    Panel1: TPanel;
    siALT: TSpeedItem;
    ped_ven_cab: TIBQuery;
    ped_ven_ite: TIBQuery;
    cli_sta: TIBQuery;
    cad_cli_crd: TIBDataSet;
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
    GBRomaneio: TGroupBox;
    Label1: TLabel;
    lanlan: TLabel;
    Label3: TLabel;
    ladlan: TLabel;
    Label2: TLabel;
    larlan: TLabel;
    Label4: TLabel;
    laolan: TLabel;
    Label6: TLabel;
    laelan: TLabel;
    laipro: TLabel;
    lacpro: TLabel;
    Label12: TLabel;
    ladpro: TLabel;
    ladcor: TLabel;
    Label16: TLabel;
    GBPedido: TGroupBox;
    Label13: TLabel;
    ladcli: TLabel;
    Label20: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ladven: TLabel;
    lanped: TLabel;
    ladsep: TLabel;
    cli_staFIN_TITU: TIBStringField;
    cli_staFIN_DVEN: TDateField;
    cli_staFIN_VALO: TIBBCDField;
    SQLConsulta: TIBSQL;
    Panel2: TPanel;
    laeped: TLabel;
    SQLEdicao: TIBSQL;
    SQLFKEdicao: TIBSQL;
    ped_ven_iteID: TIntegerField;
    ped_ven_iteIDPK: TLargeintField;
    ped_ven_iteITEM: TIntegerField;
    ped_ven_iteIDCP: TIntegerField;
    ped_ven_iteARTIGO: TIBStringField;
    ped_ven_iteSKU: TIBStringField;
    ped_ven_iteCEAN: TIBStringField;
    ped_ven_iteDECP: TIBStringField;
    ped_ven_iteDGCP: TIBStringField;
    ped_ven_iteUCOM: TIBStringField;
    ped_ven_iteUCON: TIBStringField;
    ped_ven_iteUPSBR: TIBBCDField;
    ped_ven_iteUPSLQ: TIBBCDField;
    ped_ven_iteQTDE: TIBBCDField;
    ped_ven_iteQTRL: TIntegerField;
    ped_ven_iteVPRC_PAD_INI: TFloatField;
    ped_ven_iteVPRC_PAD_FIM: TFloatField;
    ped_ven_iteVPRC_PAD: TFloatField;
    ped_ven_iteVPRC_COM: TFloatField;
    ped_ven_itePDSC: TIBBCDField;
    ped_ven_iteVDSC: TFloatField;
    ped_ven_iteTCDE: TIBBCDField;
    ped_ven_iteTSDE: TIBBCDField;
    ped_ven_iteNCM: TIBStringField;
    ped_ven_itePIPI: TIBBCDField;
    ped_ven_iteVIPI: TFloatField;
    cad_cli_crdID: TIntegerField;
    cad_cli_crdIDEP: TSmallintField;
    cad_cli_crdIDCL: TIntegerField;
    cad_cli_crdVCRD: TIBBCDField;
    ped_ven_cabID: TIntegerField;
    ped_ven_cabDEPD: TIBStringField;
    ped_ven_cabDTPD: TDateField;
    ped_ven_cabCTNR: TIBStringField;
    ped_ven_cabCDRO: TLargeintField;
    ped_ven_cabCDNF: TLargeintField;
    ped_ven_cabCDBX: TLargeintField;
    ped_ven_cabIDCD: TIntegerField;
    ped_ven_cabDECD: TIBStringField;
    ped_ven_cabIDCV: TSmallintField;
    ped_ven_cabDECV: TIBStringField;
    ped_ven_cabIDCR: TSmallintField;
    ped_ven_cabDECR: TIBStringField;
    ped_ven_cabQTDE: TIBBCDField;
    ped_ven_cabQTSP: TIBBCDField;
    ped_ven_cabTCDE: TIBBCDField;
    ped_ven_cabCDPD: TSmallintField;
    ped_ven_cabSTPD: TIBStringField;
    ped_ven_cabFAPD: TSmallintField;
    ped_ven_cabCDCO: TSmallintField;
    ped_ven_cabSTCO: TIBStringField;
    ped_ven_cabTPCO: TSmallintField;
    ped_ven_cabRECO: TIBStringField;
    ped_ven_cabCDPG: TSmallintField;
    ped_ven_cabCDST: TSmallintField;
    ped_ven_cabREST: TIBStringField;
    ped_ven_cabDEST: TIBStringField;
    ped_ven_cabINFADPED: TMemoField;
    ped_ven_cabSEPD: TSmallintField;
    ped_ven_iteIDEP: TSmallintField;
    ped_ven_iteIDFK: TIntegerField;
    ped_ven_iteCP_IDEP: TSmallintField;
    ped_ven_itePSBR: TIBBCDField;
    ped_ven_itePSLQ: TIBBCDField;
    ped_ven_iteORIG: TSmallintField;
    GroupBox3: TGroupBox;
    IETDEF: TdxImageEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    EMINFADROM: TdxMemo;
    GroupBox4: TGroupBox;
    EMINFADETQ: TdxMemo;
    GroupBox1: TGroupBox;
    Label33: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EDLote: TdxMaskEdit;
    EDCDET: TdxMaskEdit;
    IETipo: TdxImageEdit;
    IECTNR: TdxImageEdit;
    GroupBox5: TGroupBox;
    CEQTDE: TdxCurrencyEdit;
    CEQTCO: TdxCurrencyEdit;
    Label14: TLabel;
    procedure siCSEClick(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EDCDETValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure IETipoChange(Sender: TObject);
    procedure CEQTDEValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CEQTCOValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure siCANClick(Sender: TObject);
    procedure siPRIClick(Sender: TObject);
  private
    { Private declarations }
    RECEstoque: TRECPedidos;
    REC_SHE_EDI: TREC_SHE_EDI;

    procedure STATUS_ETIQUETA;
    procedure ALTERA_ETIQUETA;
    procedure CANCELA_ETIQUETA;
    procedure CANCELA_SEPARACAO;
    procedure LIMPA_ETIQUETA;
    procedure PESQUISA_ETIQUETA;
    procedure _CAD_PRO_EST_LAN_UPD;
    function  RETORNA_STFI: string;
  public
    { Public declarations }
  end;

var
  frmeti_pro: Tfrmeti_pro;

implementation

uses uPrincipal, bPrincipal,
  qEST_ETQ_PAD;

{$R *.dfm}

procedure Tfrmeti_pro.FormCreate(Sender: TObject);
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
  REC_SHE_DEF.GReferencia := 'Etiquetas';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  oIRECPedidos(RECEstoque);
  RECEstoque.ASPEdicao := ibSP;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CON_CTNR FROM CAD_CON WHERE NOT FEMPTY(CON_CTNR) GROUP BY 1 ORDER BY 1');
    ExecQuery;
    while not eof do
    begin
      IECTNR.Values.Add(Current.Vars[0].AsString);
      IECTNR.Descriptions.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO AS PK WHERE PK.EST_ENT = 1 AND PK.REST = ''A'' ORDER BY PK.DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IETipo.Values.Add(Current.Vars[0].AsString);
      IETipo.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DEDF FROM TAB_DEF WHERE DESCRICAO IS NOT NULL AND REST = ''A'' ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IETDEF.Values.Add(Current.Vars[0].AsString);
      IETDEF.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
  end;
end;

procedure Tfrmeti_pro.FormDestroy(Sender: TObject);
begin
  oFRECPedidos(RECEstoque);
  inherited;

  frmeti_pro := Nil;
end;

procedure Tfrmeti_pro.STATUS_ETIQUETA;
begin
  siVIS.Enabled := false;
{ RICARDO   siALT.Enabled := //RICARDObPSQUSER('USU_AUTO','Produtos','Estoque','Alterar Estoque');
  siCSE.Enabled := //RICARDObPSQUSER('USU_AUTO','Produtos','Estoque','Cancelar Separação');
  siCAN.Enabled := bPSQUSER('USU_AUTO','Produtos','Estoque','Cancelar Estoque');
          }
  if laolan.Caption = 'ENTRADA' then
  begin
    siVIS.Enabled := true;
    siALT.Enabled := true;
    siCAN.Enabled := true;
  end;

  if laeped.Caption = 'SEPARADO' then
  begin
//    siPRI.Enabled := false;
//    siVIS.Enabled := false;
    siALT.Enabled := false;
    siCAN.Enabled := false;
    siCSE.Enabled := true;
  end;

  if laolan.Caption = 'FATURADO' then
  begin
    siPRI.Enabled := false;
    siVIS.Enabled := false;
    siALT.Enabled := false;
    siCAN.Enabled := false;
    siCSE.Enabled := false;
  end else
  siCSE.Enabled := (lanped.Tag > 0);
end;

procedure Tfrmeti_pro.ALTERA_ETIQUETA;
var
  RECEdicao: TRECEdicao;
begin
  oIRECEdicao(RECEdicao); { Inicializa TRecord }

  RECEdicao.MSGMotivo := IFThen(CEQTCO.Value > 0,'Confirma inclusão do corte manual','Confirma alteração do estoque') + ' ?';
  if oYesNo(handle,RECEdicao.MSGMotivo) = mrno then
  Abort;

  if laeped.Caption = 'SEPARADO' then
  oException(EDCDET,'Não é possível alterar etiqueta em separação.');

  if laolan.Caption <> 'ENTRADA' then
  oException(EDCDET,'Etiqueta inválida. '+#13+
                    'Apenas etiquetas de entrada de estoque podem ser alteradas.');

  if EDCDET.Tag > 0 then
  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DERO,PK.DTCA,PK.CDNF,PK.DTNF');
    SQL.Add('FROM  '+SLPrincipal.Values['rom_ite']+' AS FK');
    SQL.Add('JOIN  '+SLPrincipal.Values['rom_cab']+' AS PK ON (PK.ID = FK.IDPK)');
    SQL.Add('WHERE  FK.CDET = '''+EDCDET.Text+'''');
    Open;

    if Fields[3].AsInteger > 0 then
    oException(EDCDET,'Etiqueta já Faturada !'+#13+
                         'Nota Fiscal Nº '+Fields[3].AsString+' de '+FormatDateTime('dd/mm/yy',Fields[4].AsDateTime));

    if Fields[0].AsInteger > 0 then
    oException(EDCDET,'Etiqueta já Romaneada !'+#13+
                      'Romaneio Nº '+Fields[1].AsString+' de '+FormatDateTime('dd/mm/yy hh:mm',Fields[2].AsDateTime));
  end;

  try
    with SQLEdicao do
    begin
      { Romaneio }
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_ENC');
      SQL.Add('SET    INFADCAD = '''+EMINFADROM.Text     +'''');
      SQL.Add('WHERE  ID       = '''+IntToStr(LANLAN.Tag)+'''');
      ExecQuery;

      { Etiqueta Original }
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_EST');
      SQL.Add('SET');

      SQL.Add('CDTP = '''+IETipo.Text +''',');
      SQL.Add('CTNR = '''+IECTNR.Text +''',');
      SQL.Add('LOTE = '''+EDLote.Text +''',');

      SQL.Add('QTDE = '''+oStrTran(FloatToStr(CEQTDE.Value - CEQTCO.Value),',','.')+''',');

      SQL.Add('CDDF     = '''+IETDEF.Text    +''',');
      SQL.Add('INFADCAD = '''+EMINFADETQ.Text+'''' );

      SQL.Add('WHERE CDET = '''+EDCDET.Text+'''');
      ExecQuery;
    end;

    { Corte Manual }
    if CEQTCO.Value > 0 then
    begin
      { Etiqueta Original }
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
        SQL.Add('WHERE  ETQ.CDET = ''' + EDCDET.Text +'''');

        ParamByName('IDEP').Value := RECParametros.EP_ID;
        ExecQuery;
      end;

      { Nota Etiqueta }
      with SQLFKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(ID_NO_PRO_CDET,1) FROM RDB$DATABASE');
        ExecQuery;
        EDCDET.Hint := EDCDET.Text;
        EDCDET.Text := oStrZero(Current.Vars[0].AsInt64,10);
      end;

      with RECEdicao do
      begin
        { Inicializar Parâmetros: FLAG + campos de pesquisa (IDEP,IDPK,IDFK) }
        FLAG := 0;
        CDET := EDCDET.Text; { Etiquetas }

        { Cadastro }
        IDEP := SQLEdicao.Current.ByName('IDEP').AsInteger;
        IDCA := RECUsuarios.ID;

        { Situação }
        CDST := 30;
        REST := 'A';
        DEST := 'ATIVO';

        { Romaneio }
        CDRO := SQLEdicao.Current.ByName('CDRO').AsInteger;
        ITEM := 0;

        { Etiqueta }
        CTNR := SQLEdicao.Current.ByName('CTNR').AsString;
        LOTE := SQLEdicao.Current.ByName('LOTE').AsString;
        CDI  := 0;
        MAPA := EmptyStr;

        { Processos }
        CDOP := SQLEdicao.Current.ByName('CDOP').AsInteger;
        REOP := SQLEdicao.Current.ByName('REOP').AsString;
        CDTP := SQLEdicao.Current.ByName('CDTP').AsInteger;

        { Produtos }
        IDCP    := SQLEdicao.Current.ByName('IDCP').AsInteger;
        CP_IDEP := SQLEdicao.Current.ByName('CP_IDEP').AsInteger;
        IDAK    := SQLEdicao.Current.ByName('IDAK').AsInteger;
        CEAN    := SQLEdicao.Current.ByName('CEAN').AsString;

        { Lançamento }
        QTDE := CEQTCO.Value;
        QTRL := 1;

        { Custo }
        CF_VPRC_PAD_ORI := SQLEdicao.Current.ByName('CF_VPRC_PAD_ORI').AsString;
        CF_VPRC_PAD     := SQLEdicao.Current.ByName('CF_VPRC_PAD').AsFloat;
        CF_VPRC_COM     := SQLEdicao.Current.ByName('CF_VPRC_COM').AsFloat;

        { Classificações }
        COL_ID := SQLEdicao.Current.ByName('COL_ID').AsInteger; { Coleção - Compras }
        NFCI   := SQLEdicao.Current.ByName('NFCI'  ).AsString; { Ficha de Conteúdo de Importação }

        { Defeitos }
        IDDF := 0;
        CDDF := 0;

        { Informações Adicionais }
        INFADCAD := 'Peça Cortada ' + RECUsuarios.Login + ' - ' + FormatDateTime('dd/mm/yy hh:mm',Now) + '.'  + #13 +
                    'Número da Etiqueta de Origem: ' + EDCDET.Hint;

        { Registros }
        IDEV := 0;

        ASPEdicao := IBSP; { Stored Procedure }
        oSP_CAD_PRO_EST_RFK(REC_SHE_EDI); { Execute Procedure }
      end;
    end;

    oRTransact(IBTra);
    oAviso(Handle,'Estoque Atualiado com Sucesso !' + #13+
                  'Etiqueta Nº ' + EDCDET.Text + '.');
  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollbackRetaining);
      oException(Nil,'Falha ao tentar alterar etiqueta !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  PESQUISA_ETIQUETA;
  if EDCDET.Enabled then
     EDCDET.SetFocus;
end;

procedure Tfrmeti_pro.CANCELA_SEPARACAO;
begin
  if oYesNo(Handle,'Confirma cancelamento da separação ?') = mrno then
  Abort;

  if laeped.Caption <> 'SEPARADO' then
  oException(EDCDET,'Etiqueta não reservada para separação !');

  if EDCDET.Tag > 0 then
  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DERO,PK.DTCA,PK.CDNF,PK.DTNF');
    SQL.Add('FROM  '+SLPrincipal.Values['rom_ite']+' AS FK');
    SQL.Add('JOIN  '+SLPrincipal.Values['rom_cab']+' AS PK ON (PK.ID = FK.IDPK)');
    SQL.Add('WHERE  FK.CDET = '''+EDCDET.Text+'''');
    Open;

    if Fields[3].AsInteger > 0 then
    oException(EDCDET,'Etiqueta já Faturada !'+#13+
                      'Nota Fiscal Nº '+Fields[3].AsString+' de '+FormatDateTime('dd/mm/yy',Fields[4].AsDateTime));

    if Fields[0].AsInteger > 0 then
    oException(EDCDET,'Etiqueta já Romaneada !'+#13+
                      'Romaneio Nº ' + Fields[1].AsString + ' de ' + FormatDateTime('dd/mm/yy hh:mm',Fields[2].AsDateTime));
  end;

  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_SEP');
      SQL.Add('WHERE  CDET = '''+EDCDET.Text+'''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_EST');
      SQL.Add('SET    EST_CDPD = NULL,');
      SQL.Add('       IDSP     = NULL,');
      SQL.Add('       CDSP     = NULL,');
      SQL.Add('       DTSP     = NULL ');

      SQL.Add('WHERE  CDET     = '''+EDCDET.Text+'''');
      ExecQuery;

      { Separa Preços }
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.IDPK,PK.IDCP,PK.ITEM,PK.QTDE,PK.VPRC_COM');
      SQL.Add('FROM (');
      SQL.Add('SELECT   PK.IDPK,PK.IDCP,MIN(PK.VPRC_COM) AS VPRC_COM');
      SQL.Add('FROM '  +SLPrincipal.Values['ped_ven_ite']+' AS PK');
      SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = PK.IDCP)');
      SQL.Add('WHERE    PK.IDPK = ''' + ped_ven_cabID.AsString + '''');
      SQL.Add('AND      EXISTS (SELECT SP.ID FROM CAD_PRO_SEP AS SP WHERE SP.IDPK = PK.IDPK AND SP.IDCP = PK.IDCP)');
      SQL.Add('GROUP BY 1,2');
      SQL.Add('HAVING COUNT(*) > 1)  AS FK');
      SQL.Add('JOIN ' + SLPrincipal.Values['ped_ven_ite']+' AS PK ON (PK.IDPK = FK.IDPK AND PK.IDCP = FK.IDCP AND PK.VPRC_COM = FK.VPRC_COM)');
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
          SQL.Add('AND    IDCP     = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''');
          SQL.Add('AND    VPRC_COM = ''' + oStrTran(SQLEdicao.Current.ByName('VPRC_COM').AsString,',','.') + '''');
          ExecQuery;

          if SQLFKEdicao.Current.ByName('QTDE').AsCurrency < SQLEdicao.Current.ByName('QTDE').AsCurrency then
          begin
            { Busca pela maior etiqueta com mesma quantidade }
            Close;
            SQL.Clear;
            SQL.Add('SELECT MAX(CDET) FROM CAD_PRO_SEP');
            SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''' );
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
              SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''' );
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
              SQL.Add('WHERE  IDPK      = ''' + SQLEdicao.Current.ByName('IDPK').AsString + '''' );
              SQL.Add('AND    IDCP      = ''' + SQLEdicao.Current.ByName('IDCP').AsString + '''' );
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

    { Itens }
    ped_ven_ite.First;
    while not ped_ven_ite.Eof do
    begin
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(QTDE),SUM(QTRL) FROM CAD_PRO_SEP');
        SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID        +'''');
        SQL.Add('AND    IDPK = '''+ped_ven_iteIDPK.AsString+'''');
        SQL.Add('AND    IDCP = '''+ped_ven_iteIDCP.AsString+'''');
        SQL.Add('AND    ITEM = '''+ped_ven_iteITEM.AsString+'''');
        ExecQuery;
      end;
      with SQLFKEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_ite']);
        SQL.Add('SET   ROM_QTPD = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[0].AsCurrency  ),',','.')+''',');
        SQL.Add('      ROM_RLPD = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[1].AsInteger),',','.')+''',');
        SQL.Add('      ROM_IDSP = '''+RECUsuarios.Id                      +''',');
        SQL.Add('      ROM_DSEP = '''+RECUsuarios.Login                   +''',');
        SQL.Add('      ROM_DTPD = '''+FormatDateTime('mm/dd/yy hh:mm',Now)+'''' );
        SQL.Add('WHERE IDEP     = '''+RECParametros.EP_ID        +'''');
        SQL.Add('AND   IDPK     = '''+ped_ven_iteIDPK.AsString+'''');
        SQL.Add('AND   IDCP     = '''+ped_ven_iteIDCP.AsString+'''');
        SQL.Add('AND   ITEM     = '''+ped_ven_iteITEM.AsString+'''');
        ExecQuery;

        { Reservados }
        if SQLEdicao.Current.Vars[0].AsCurrency > 0 then
        begin
          { Excluir da reserva apenas os produtos separados }
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM CAD_PRO_RES');
          SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID        +'''');
          SQL.Add('AND    IDPK = '''+ped_ven_iteIDPK.AsString+'''');
          SQL.Add('AND    IDCP = '''+ped_ven_iteIDCP.AsString+'''');
          ExecQuery;
        end else
        with RECEstoque do
        begin
          IDEP := RECParametros.EP_ID;
          IDCA := RECUsuarios.Id;

          IDPK := ped_ven_cabID.AsInteger;
          DEPK := ped_ven_cabDEPD.AsString;
          DTPK := ped_ven_cabDTPD.AsDateTime;
          CTNR := ped_ven_cabCTNR.AsString;

          IDCD := ped_ven_cabIDCD.AsInteger;
          IDCV := ped_ven_cabIDCV.AsInteger;
          IDCR := ped_ven_cabIDCR.AsInteger;

          TPCO := ped_ven_cabTPCO.AsInteger;
          RECO := ped_ven_cabRECO.AsString;
          CDPG := ped_ven_cabCDPG.AsInteger;

          IDFK := ped_ven_iteID.AsInteger;
          ITEM := ped_ven_iteITEM.AsInteger;

          IDCP := ped_ven_iteIDCP.AsInteger;
          CEAN := ped_ven_iteCEAN.AsString;
          DECP := ped_ven_iteDECP.AsString;
          DGCP := ped_ven_iteDGCP.AsString;

          UCOM := ped_ven_iteUCOM.AsString;
          UCON := ped_ven_iteUCON.AsString;

          QTDE := ped_ven_iteQTDE.AsCurrency;
          QTRL := ped_ven_iteQTRL.AsInteger;
          PSBR := ped_ven_iteQTDE.AsCurrency * ped_ven_iteUPSBR.AsCurrency;
          PSLQ := ped_ven_iteQTDE.AsCurrency * ped_ven_iteUPSLQ.AsCurrency;

          VPRC_PAD_INI := ped_ven_iteVPRC_PAD_INI.AsFloat;
          VPRC_PAD_FIM := ped_ven_iteVPRC_PAD_FIM.AsFloat;
          VPRC_PAD := ped_ven_iteVPRC_PAD.AsFloat;
          VPRC_COM := ped_ven_iteVPRC_COM.AsFloat;

          PDSC := ped_ven_itePDSC.AsCurrency;
          VDSC := ped_ven_iteVDSC.AsCurrency;

          TSDE := ped_ven_iteTSDE.AsCurrency;
          TCDE := ped_ven_iteTCDE.AsCurrency;

          NCM  := ped_ven_iteNCM.AsString;
          PIPI := ped_ven_itePIPI.AsCurrency;
          VIPI := ped_ven_iteVIPI.AsCurrency;

          INFADCAD := ped_ven_cabINFADPED.AsString;

          IDEV := 0;
          FLAG := 0;
          oSP_CAD_PRO_EST_RES(RECEstoque);
        end;
      end;

      ped_ven_ite.Next;
    end;

    { Cabeçalho }
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT  SUM(QTDE),SUM(QTRL),SUM(QTSP),SUM(RLSP),SUM(VTSP)');
      SQL.Add('FROM ' +SLPrincipal.Values['ped_ven_ite']);
      SQL.Add('WHERE   IDEP = '''+RECParametros.EP_ID            +'''');
      SQL.Add('AND     IDPK = '''+ped_ven_iteIDPK.AsString+'''');
      ExecQuery;
    end;
    with SQLFKEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_CDSP,1) FROM RDB$DATABASE');
      ExecQuery;
      SQLFKEdicao.Tag := Current.Vars[0].AsInt64;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    CDSP     = '''+IntToStr(SQLFKEdicao.Tag)+''',');
      SQL.Add('       ROM_QTVE = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[0].AsCurrency),',','.')+''',');
      SQL.Add('       ROM_RLVE = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[1].AsInteger),',','.')+''',');
      SQL.Add('       ROM_QTPD = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[2].AsCurrency),',','.')+''',');
      SQL.Add('       ROM_RLPD = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[3].AsInteger),',','.')+''',');
      SQL.Add('       VTSP     = '''+oStrTran(FloatToStr(SQLEdicao.Current.Vars[4].AsCurrency),',','.')+''',');
      SQL.Add('       ROM_STFI = '''+RETORNA_STFI                +'''');
      SQL.Add('WHERE  IDEP     = '''+RECParametros.EP_ID            +'''');
      SQL.Add('AND    ID       = '''+ped_ven_iteIDPK.AsString+'''');
      ExecQuery;
    end;

    oRTransact(IBTra);
    oAviso(Handle,'Cancelamento da separação efetuado com sucesso ! !');

  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollbackRetaining);
      oException(Nil,'Falha ao tentar cancelar separação !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  PESQUISA_ETIQUETA;
  if EDCDET.Enabled then
     EDCDET.SetFocus;
end;

procedure Tfrmeti_pro.CANCELA_ETIQUETA;
begin
  if oYesNo(Handle,'Confirma exclusão do estoque ?') = mrno then
  Abort;

  if laeped.Caption  = 'SEPARADO' then
  oException(EDCDET,'Não é possível cancelar.'+#13+
                    'Etiqueta em separação.');

  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_EST');
      SQL.Add('WHERE  CDET = '''+EDCDET.Text+'''');
      ExecQuery;
    end;
    
    oRTransact(IBTra);
    oAviso(Handle,'Exclusão do estoque efetuado com sucesso !');
  except
    on E: Exception do
    begin
      oRTransact(IBTra,ltRollback);
      oException(Nil,'Falha ao tentar cancelar etiqueta !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure Tfrmeti_pro.LIMPA_ETIQUETA;
begin
  EDCDET.Hint := EmptyStr;

  LANLAN.Tag := 0;
  EDCDET.Tag := 0;
  LANPED.Tag := 0;
  LACPRO.Tag := 0;

  lacpro.Caption := 'NADA CONSTA';
  ladpro.Caption := 'NADA CONSTA';
  ladcor.Caption := 'NADA CONSTA';
  lanlan.Caption := 'NADA CONSTA';
  ladlan.Caption := 'NADA CONSTA';
  laelan.Caption := 'NADA CONSTA';

  laolan.Caption := 'NADA CONSTA';
  larlan.Caption := 'NADA CONSTA';
  lanped.Caption := 'NADA CONSTA';
  ladven.Caption := 'NADA CONSTA';
  ladcli.Caption := 'NADA CONSTA';
  laeped.Caption := 'NADA CONSTA';
  ladsep.Caption := 'NADA CONSTA';

  CEQTDE.Value := 0;
  CEQTCO.Value := 0;

  IETipo.Text := EmptyStr;
  EDLote.Text := EmptyStr;
  IETDEF.Text := EmptyStr;

  EMINFADROM.Lines.Clear;
  EMINFADETQ.Lines.Clear;

  Application.ProcessMessages;
end;

procedure Tfrmeti_pro.PESQUISA_ETIQUETA;
var
  BRet: Boolean;
begin
  LIMPA_ETIQUETA;
  if oEmpty(EDCDET.Text) then
  Abort;

  BRet := False;
  try
    if not oBSONumero(EDCDET.Text) then
    oException(EDCDET,'Número da etiqueta inválido !');

    EDCDET.Text := oStrZero(strtoint(EDCDET.Text),10);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.* FROM VW_CAD_PRO_EST AS PK');
      SQL.Add('WHERE  PK.CDET = '''+EDCDET.Text+'''');
      ExecQuery;

      if Eof then
      oException(EDCDET,'Número de etiqueta não encontrado !');

      EDCDET.Hint := EmptyStr;

      LANLAN.Tag := Current.ByName('CDRO').AsInteger;
      EDCDET.Tag := Current.ByName('IDPK').AsInteger;
      LANPED.Tag := Current.ByName('IDPK').AsInteger;
      LACPRO.Tag := Current.ByName('IDCP').AsInteger;

      lanlan.Caption := Current.ByName('CDRO').AsString;
      ladlan.Caption := FormatDateTime('dd/mm/yy',Current.ByName('DTRO').AsDateTime);

      CEQTDE.Value   := Current.ByName('QTDE').AsCurrency;
      CEQTDE.Enabled := (LANPED.Tag = 0);
      CEQTCO.Enabled := (LANPED.Tag = 0);

      larlan.Caption := Current.ByName('LGCA').AsString;

      lacpro.Caption := Current.ByName('SKU' ).AsString;
      ladcor.Caption := Current.ByName('DGCP').AsString;
      ladpro.Caption := Current.ByName('DECP').AsString;

      siCSE.Enabled  :=(Current.ByName('IDPK').AsInteger > 0);
      ladsep.Caption := Current.ByName('LGSP').AsString;

      if Current.ByName('REOP').AsString = 'E' then
      begin
        laolan.Caption := 'ENTRADA';
        laeped.Caption := 'NADA CONSTA';
        if (lanped.Tag > 0) or (EDCDET.Tag > 0) then
        laeped.Caption := 'SEPARADO';
      end else

      if Current.ByName('REOP').AsString = 'S' then
      laolan.Caption := 'SAÍDA' else

      if Current.ByName('REOP').AsString = 'I' then
      laolan.Caption := 'INVENTÁRIO' else

      if Current.ByName('REOP').AsString = 'V' then
      begin
        label7.Hint := Current.ByName('DEPK').AsString;
        laolan.Caption := 'FATURADO';
      end;

      IETipo.Text := Current.ByName('CDTP').AsString;
      IECTNR.Text := Current.ByName('CTNR').AsString;
      EDLote.Text := Current.ByName('LOTE').AsString;
      IETDEF.Text := Current.ByName('CDDF').AsString;

      EMINFADROM.Text := Current.ByName('INFADROM').AsString;
      EMINFADETQ.Text := Current.ByName('INFADETQ').AsString;
    end;

    if EDCDET.Tag > 0 then
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT PED_VEN_CAB.ID,ROM_DERO,ROM_DROM,CLI_FANT,LOGIN,REP_FANT,ROM_QTVE,ROM_RLVE,PED_VEN_CAB.ROM_CDNF,PED_VEN_CAB.ROM_DNFS');
      SQL.Add('FROM   CAD_CLI,CAD_FUN,CAD_REP,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE" ,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE  PED_VEN_CAB.ID       = PED_VEN_ITE.ROM_CCAB');
      SQL.Add('AND    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CVEN = CAD_FUN.ID');
      SQL.Add('AND    PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND    PED_VEN_CAB.ID       = '''+inttostr(lanped.Tag)+'''');
      SQL.Add('AND    PED_VEN_ITE.ROM_CPRO = '''+inttostr(lacpro.Tag)+'''');
      Open;

      if not fields[0].IsNull then
      begin
        lanped.Caption := fields[1].AsString + ' '   + formatDateTime('dd/mm/yy',fields[2].AsDateTime);
        ladven.Caption := fields[4].AsString + ' / ' + fields[5].AsString;
        ladcli.Caption := fields[3].AsString;

        if laolan.Caption <> 'FATURADO' then
        begin
          SQL.Clear;
          SQL.Add('SELECT ID FROM CAD_PRO_RES');
          SQL.Add('WHERE  IDEP = ''' + RECParametros.EP_ID  + '''');
          SQL.Add('AND    IDPK = ''' + inttostr(lanped.Tag) + '''');
          SQL.Add('AND    IDCP = ''' + inttostr(lacpro.Tag) + '''');
          Open;
        end;
      end;
    end;

    STATUS_ETIQUETA;
    if lanped.Tag > 0 then
    begin
      with ped_ven_cab do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ID  ,PK.DEPD,CAST(PK.DTCA AS DATE) AS DTPD,PK.CTNR,');
        SQL.Add('       PK.CDRO,PK.CDNF,PK.CDBX,');
        SQL.Add('       PK.IDCD,CD.CLI_FANT AS DECD,PK.IDCV,CV.LOGIN AS DECV,PK.IDCR,CR.REP_FANT AS DECR,');
        SQL.Add('       PK.QTDE,PK.QTSP,PK.TCDE,');
        SQL.Add('       PK.CDPD,PK.STPD,PK.FAPD,TP.PED_EST_QTSP AS SEPD,PK.CDCO,PK.STCO,PK.TPCO,PK.RECO,PK.CDPG,PK.CDST,PK.REST,PK.DEST,');
        SQL.Add('       PK.INFADPED');
        SQL.Add('FROM '+SLPrincipal.Values['ped_ven_cab'] + ' AS PK');
        SQL.Add('JOIN   CAD_CLI  AS CD ON (CD.ID = PK.IDCD)');
        SQL.Add('JOIN   TAB_USER AS CV ON (CV.ID = PK.IDCV)');
        SQL.Add('JOIN   CAD_REP  AS CR ON (CR.ID = PK.IDCR)');
        SQL.Add('JOIN   TAB_TPO  AS TP ON (TP.ID = PK.CDPD)');
        SQL.Add('Where  PK.ID = '''+IntToStr(lanped.Tag)+'''');
        Open;
      end;

      with ped_ven_ite do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.ID,PK.IDEP,');
        SQL.Add('         PK.IDPK,PK.ID AS IDFK,PK.ITEM,');
        SQL.Add('         PK.IDCP,PK.CP_IDEP,');
        SQL.Add('         CP.ARTIGO,CP.SKU,PK.CEAN,PK.DECP,PK.DGCP,');
        SQL.Add('         PK.UCOM,PK.UCON,CP.UPSBR,CP.UPSLQ,');
        SQL.Add('         PK.QTDE,PK.QTRL,PK.PSBR,PK.PSLQ,');
        SQL.Add('         PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,');
        SQL.Add('         PK.VPRC_PAD,PK.VPRC_COM,');
        SQL.Add('         PK.PDSC,PK.VDSC,');
        SQL.Add('         PK.TSDE,PK.TCDE,');
        SQL.Add('         PK.ORIG,PK.NCM ,PK.PIPI,PK.VIPI');
        SQL.Add('FROM ' + SLPrincipal.Values['ped_ven_ite'] + ' AS PK');
        SQL.Add('JOIN     CAD_PRO AS CP ON (CP.ID = PK.IDCP)');
        SQL.Add('WHERE    PK.IDPK = '''+inttostr(lanped.Tag)+'''');
        SQL.Add('ORDER BY PK.VPRC_COM DESC');
        Open;
      end;

      with psq_cli do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT CAD_CLI.ID,CLI_FANT,CLI_RAZA,CLI_CNPJ,CLI_CPF,CLI_CRED,CLI_CID,CLI_BAI,CLI_TLOG,CLI_LOGR,CLI_NUME,CLI_CEP,CLI_COMP,CLI_ESTA,CLI_STA,CLI_STAV,CLI_DPAG,');
        SQL.Add('       CLI_VDSC,CLI_DCAD,CLI_DFUN,CLI_DALT,CLI_DULT,CLI_VULT,CLI_DDD,CLI_TEL1,REP_FANT,USU_DUSU,CLI_STPD,CLI_DTRA,CLI_DUSU,');
        SQL.Add('       TRIM(CAST(SUBSTRING(CLI_OBSO FROM 1 FOR 512) AS VARCHAR(512))) CLI_OBSO');
        SQL.Add('FROM   CAD_CLI');
        SQL.Add('LEFT   OUTER JOIN CAD_USU ON CAD_CLI.CLI_CVEN = CAD_USU.USU_CUSU');
        SQL.Add('LEFT   OUTER JOIN CAD_REP ON CAD_CLI.CLI_CREP = CAD_REP.ID');
        SQL.Add('WHERE  CAD_CLI.ID = '''+IntToStr(ped_ven_cabIDCD.AsInteger)+'''');
        Open;
      end;

      with cad_cli_crd do
      begin
        Close;
        SelectSQL.Clear;
        SelectSQL.Add('SELECT ID,IDEP,IDCL,VCRD FROM CAD_CLI_CRD');
        SelectSQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
        SelectSQL.Add('AND    IDCL = '''+IntToStr(psq_cliID.AsInteger)+'''');
        Open;
      end;
    end;
    
    BRet := True;
  finally
    if BRet then
    begin
      if CEQTDE.Enabled then
      CEQTDE.SetFocus;
    end else
    begin
      LIMPA_ETIQUETA;
      EDCDET.Text := EmptyStr;

      if EDCDET.Enabled then
      EDCDET.SetFocus;
    end;
  end;

  Application.ProcessMessages;
end;

procedure Tfrmeti_pro.EDCDETValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  PESQUISA_ETIQUETA;
end;

function Tfrmeti_pro.RETORNA_STFI: String;
var
  stfi: string;
begin
  stfi := uFIN_BLQ(ped_ven_cabSTCO.AsString,ped_ven_cabFAPD.AsString,psq_cliID.AsString);

  if stfi  = EmptyStr then
     stfi := uLimiteVenda(ped_ven_cabSTCO.AsString,ped_ven_cabFAPD.AsString,psq_cliID.AsString,ped_ven_cabTCDE.AsCurrency);
     stfi := IFThen(stfi = EmptyStr,'PENDENTE',stfi);

  result  := stfi;   
end;

procedure Tfrmeti_pro.IETipoChange(Sender: TObject);
begin
  if IETipo.Text <> EmptyStr then
  if IETipo.Descriptions[IETipo.Values.IndexOf(IETipo.Text)] = '1º QUALIDADE AA' then
     EDLote.Text := '1' else
  if IETipo.Descriptions[IETipo.Values.IndexOf(IETipo.Text)] = '1º QUALIDADE A' then
     EDLote.Text := '2' else
  if IETipo.Descriptions[IETipo.Values.IndexOf(IETipo.Text)] = '1º QUALIDADE B' then
     EDLote.Text := '3' else
  if IETipo.Descriptions[IETipo.Values.IndexOf(IETipo.Text)] = '2º QUALIDADE C' then
     EDLote.Text := '4';
end;

procedure Tfrmeti_pro.CEQTDEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEQTDE.Font.Style := [fsBold];
end;

procedure Tfrmeti_pro.CEQTCOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  CEQTCO.Font.Style := [fsBold];
end;

procedure Tfrmeti_pro.siPRIClick(Sender: TObject);
var
  RECRelatorios: TRECRelatorios;
begin
  ActiveControl := Nil;
  if oEmpty(EDCDET.Text) then
  oException(EDCDET,'Número de Etiqueta não Informado !');

  try
    oIRECRelatorios(RECRelatorios);
    if Assigned(qrpEST_ETQ_PAD) then qrpEST_ETQ_PAD.BringToFront else
    begin
      RECRelatorios.Titulo   := 'Etiquetas de Estoque';
      RECRelatorios.Tipo     := 'TODOS';
      RECRelatorios.Handle   := Self.Handle;

      RECRelatorios.PEC1ConsultaText  := EDCDET.Text;
      RECRelatorios.IEC1ConsultaField := 'PK.CDET';

      RECRelatorios.PrintTAG := 1;
      RECRelatorios.Handle   := Self.Handle;

      qrpEST_ETQ_PAD     := TqrpEST_ETQ_PAD.Create(Self,RECRelatorios);
      qrpEST_ETQ_PAD.Tag := 4;
      qrpEST_ETQ_PAD.WinControlFormCreate(qrpEST_ETQ_PAD);
    end;
  finally
    oFRECRelatorios(RECRelatorios);
  end;
end;

procedure Tfrmeti_pro.siCANClick(Sender: TObject);
begin
  if Length(EDCDET.Text) < 10 then
  oException(EDCDET,'Número da etiqueta não informado !');

  CANCELA_ETIQUETA;
  _CAD_PRO_EST_LAN_UPD;
end;

procedure Tfrmeti_pro.siCSEClick(Sender: TObject);
begin
  if Length(EDCDET.Text) < 10 then
  oException(EDCDET,'Número da etiqueta não informado !');

  CANCELA_SEPARACAO;
  _CAD_PRO_EST_LAN_UPD;
end;

procedure Tfrmeti_pro.siALTClick(Sender: TObject);
begin
  if Length(EDCDET.Text) < 10 then
  oException(EDCDET,'Número da etiqueta não informado !');

  ALTERA_ETIQUETA;
  _CAD_PRO_EST_LAN_UPD;
end;

procedure Tfrmeti_pro._CAD_PRO_EST_LAN_UPD;
begin
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('EXECUTE PROCEDURE SP_CAD_PRO_EST_LAN(');
    SQL.Add('''' + RECParametros.EP_ID  + ''',');
    SQL.Add('''' + IntToStr(lacpro.Tag) + ''')');
    ExecQuery;

    oRTransact(IBTRA);
  end;
end;

end.
