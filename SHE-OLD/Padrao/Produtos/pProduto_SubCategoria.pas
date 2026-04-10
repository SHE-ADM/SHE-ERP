unit pProduto_SubCategoria;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicaoGrid, cxGraphics, dxExEdtr, IBCustomDataSet,
  dxsbar, ActnList, dxDockControl, dxBar, dxBarExtItems, ImgList, IBEvents,
  IBStoredProc, IBSQL, IBDatabase, DB, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDockPanel, ExtCtrls, dxPageControl, cxControls, dxStatusBar,
  dxDBTLCl, dxGrClms, math, StrUtils, StdCtrls, rxSpeedbar, Menus, ComCtrls;

type
  TFrmProduto_SubCategoria = class(TFrmDefaultEdicaoGrid)
    DTSFKCadastro: TDataSource;
    Produtos: TIBQuery;
    DTSProdutos: TDataSource;
    BLBAplica_Cadastro: TdxBarLargeButton;
    ACTAplica_Cadastro: TAction;
    ACTAplica_B2B_Geral: TAction;
    BLBAplica_B2B_Geral: TdxBarLargeButton;
    BLBAplica_B2B_Item: TdxBarLargeButton;
    ACTAplica_B2B_Item: TAction;
    BLBExcluido: TdxBarLargeButton;
    ACTExcluido: TAction;
    BLBImporta_Planilha: TdxBarLargeButton;
    ACTImporta_Planilha: TAction;
    ODExplorer: TOpenDialog;
    BLBImportar_Planilha_Cadastro: TdxBarLargeButton;
    BLBImportar_Planilha_B2B: TdxBarLargeButton;
    ACTImporta_Planilha_Cadastro: TAction;
    ACTImporta_Planilha_B2B: TAction;
    BLBPrecos: TdxBarLargeButton;
    ACTPrecos: TAction;
    PNLRodape: TPanel;
    PNLFKCadastro: TPanel;
    DSFKCadastro: TdxDockSite;
    DPFKCadastro: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    PNLProdutos: TPanel;
    DSProdutos: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DPProdutos: TdxDockPanel;
    DBGFKCadastro: TdxDBGrid;
    DBGProdutos: TdxDBGrid;
    CadastroIDEP: TSmallintField;
    CadastroIDCA: TSmallintField;
    CadastroDTCA: TDateTimeField;
    CadastroIDED: TSmallintField;
    CadastroDTED: TDateTimeField;
    CadastroIDST: TSmallintField;
    CadastroIP: TIBStringField;
    CadastroHOST: TIBStringField;
    CadastroREFERENCIA: TIBStringField;
    CadastroARTIGO: TIBStringField;
    CadastroDESCRICAO: TIBStringField;
    CadastroNCM: TIBStringField;
    CadastroPESO: TIBBCDField;
    CadastroPSCN: TIBBCDField;
    CadastroMETRO: TIBBCDField;
    CadastroRENDIMENTO: TIBBCDField;
    CadastroGRAMATURA: TIBBCDField;
    CadastroLARG_U: TIBBCDField;
    CadastroLARG_T: TIBBCDField;
    CadastroELAS_L: TIBBCDField;
    CadastroELAS_C: TIBBCDField;
    CadastroENCO_L: TIBBCDField;
    CadastroENCO_C: TIBBCDField;
    CadastroDEEP: TIBStringField;
    CadastroDECA: TIBStringField;
    CadastroLOGCA: TIBStringField;
    CadastroDEED: TIBStringField;
    CadastroLOGED: TIBStringField;
    CadastroDEST: TIBStringField;
    CadastroLOGST: TIBStringField;
    CadastroDESTA: TIBStringField;
    CadastroTRIBIPI: TIBBCDField;
    CadastroFLAG_ERP_INS: TSmallintField;
    CadastroFLAG_ERP_DEL: TSmallintField;
    CadastroAPI_B2B: TSmallintField;
    CadastroFLAG_B2B_INS: TSmallintField;
    CadastroFLAG_B2B_DEL: TSmallintField;
    CadastroAPI_B2C: TSmallintField;
    CadastroFLAG_B2C_INS: TSmallintField;
    CadastroFLAG_B2C_DEL: TSmallintField;
    DBGConsultaID: TdxDBGridColumn;
    DBGConsultaREFERENCIA: TdxDBGridMaskColumn;
    DBGConsultaARTIGO: TdxDBGridMaskColumn;
    DBGConsultaDESCRICAO: TdxDBGridMaskColumn;
    DBGConsultaTRIBIPI: TdxDBGridMaskColumn;
    DBGConsultaPESO: TdxDBGridMaskColumn;
    DBGConsultaPSCN: TdxDBGridMaskColumn;
    DBGConsultaMETRO: TdxDBGridMaskColumn;
    DBGConsultaRENDIMENTO: TdxDBGridMaskColumn;
    DBGConsultaGRAMATURA: TdxDBGridMaskColumn;
    DBGConsultaLARG_U: TdxDBGridMaskColumn;
    DBGConsultaLARG_T: TdxDBGridMaskColumn;
    DBGConsultaELAS_L: TdxDBGridMaskColumn;
    DBGConsultaELAS_C: TdxDBGridMaskColumn;
    DBGConsultaENCO_L: TdxDBGridMaskColumn;
    DBGConsultaENCO_C: TdxDBGridMaskColumn;
    DBGConsultaLOGCA: TdxDBGridMaskColumn;
    DBGConsultaLOGED: TdxDBGridMaskColumn;
    DBGConsultaLOGST: TdxDBGridMaskColumn;
    DBGConsultaFLAG_ERP_INS: TdxDBGridCheckColumn;
    DBGConsultaFLAG_ERP_DEL: TdxDBGridCheckColumn;
    DBGConsultaFLAG_B2B_INS: TdxDBGridCheckColumn;
    DBGConsultaFLAG_B2B_DEL: TdxDBGridCheckColumn;
    DBGConsultaFLAG_B2C_INS: TdxDBGridCheckColumn;
    DBGConsultaFLAG_B2C_DEL: TdxDBGridCheckColumn;
    CadastroC_ID: TIntegerField;
    ProdutosID: TIntegerField;
    ProdutosARTIGO: TIBStringField;
    ProdutosSKU: TIBStringField;
    ProdutosUCOM: TIBStringField;
    ProdutosEPE_QTDE: TIBBCDField;
    ProdutosEPE_QTRL: TIntegerField;
    DBGProdutosARTIGO: TdxDBGridMaskColumn;
    DBGProdutosSKU: TdxDBGridMaskColumn;
    DBGProdutosDEST: TdxDBGridMaskColumn;
    DBGProdutosUCOM: TdxDBGridMaskColumn;
    DBGProdutosEPE_QTDE: TdxDBGridMaskColumn;
    DBGProdutosEPE_QTRL: TdxDBGridMaskColumn;
    CadastroAPI_MKP: TSmallintField;
    CadastroFLAG_MKP_INS: TSmallintField;
    CadastroFLAG_MKP_DEL: TSmallintField;
    DBGConsultaFLAG_MKP_INS: TdxDBGridCheckColumn;
    DBGConsultaFLAG_MKP_DEL: TdxDBGridCheckColumn;
    CadastroID: TSmallintField;
    DBGFKCadastroSEQUENCIA: TdxDBGridMaskColumn;
    DBGFKCadastroVUPRC_INI: TdxDBGridColumn;
    DBGFKCadastroVUPRC_FIM: TdxDBGridColumn;
    CadastroPUCOM_PAD: TIBBCDField;
    DBGConsultaVUPRC_PAD: TdxDBGridMaskColumn;
    DBGConsultaVUPRC_PRZ: TdxDBGridMaskColumn;
    DBGConsultaVUPRC_PRO: TdxDBGridMaskColumn;
    DBGConsultaPUCOM_PAD: TdxDBGridMaskColumn;
    DBGConsultaVUPRC_COMPRA: TdxDBGridMaskColumn;
    DBGConsultaVUPRC_COMPRA_IMP: TdxDBGridMaskColumn;
    DBGFKCadastroPUCOM_PAD: TdxDBGridMaskColumn;
    CadastroVUPRC_PAD: TFloatField;
    CadastroVUPRC_PRZ: TFloatField;
    CadastroVUPRC_PRO: TFloatField;
    CadastroVUPRC_COMPRA: TFloatField;
    CadastroVUPRC_COMPRA_IMP: TFloatField;
    CadastroDTST: TDateTimeField;
    FKCadastro: TIBDataSet;
    FKCadastroID: TSmallintField;
    FKCadastroSEQUENCIA: TIBStringField;
    FKCadastroREPETE: TSmallintField;
    FKCadastroVUPRC_INI: TFloatField;
    FKCadastroVUPRC_FIM: TFloatField;
    FKCadastroVUPRC_FLOAT: TIBBCDField;
    FKCadastroPUCOM_PAD: TIBBCDField;
    FKCadastroPUCOM_DIF: TIBBCDField;
    FKCadastroPUCOM_FLOAT: TIBBCDField;
    ProdutosDTCA: TDateField;
    ProdutosCDCF: TIBStringField;
    ProdutosDECF: TIBStringField;
    DBGProdutosDTCA: TdxDBGridDateColumn;
    DBGProdutosCDCF: TdxDBGridMaskColumn;
    DBGProdutosDECF: TdxDBGridMaskColumn;
    ProdutosC_ID: TIntegerField;
    DBGProdutosC_ID: TdxDBGridColumn;
    DBGConsultaC_ID: TdxDBGridColumn;
    ProdutosFPAIS: TIBStringField;
    ProdutosXPAIS: TIBStringField;
    DBGProdutosFPAIS: TdxDBGridMaskColumn;
    DBGProdutosXPAIS: TdxDBGridMaskColumn;
    ProdutosIDSCT: TSmallintField;
    CadastroEVENTO: TIBStringField;
    CadastroDTCAD: TDateField;
    DBGConsultaDTCAD: TdxDBGridDateColumn;
    DBGConsultaNCM: TdxDBGridPickColumn;
    ProdutosVPRC_PAD: TFloatField;
    DBGProdutosVPRC_PAD: TdxDBGridMaskColumn;
    DBGProdutosVPRC_COM_PAD: TdxDBGridMaskColumn;
    ProdutosDESCRICAO: TIBStringField;
    ProdutosUCON: TIBStringField;
    DBGProdutosDESCRICAO: TdxDBGridMaskColumn;
    DBGProdutosUCON: TdxDBGridMaskColumn;
    ProdutosVPRC_COM_PAD: TFloatField;
    TAB_API_PRC_CAT: TIBDataSet;
    TAB_API_PRC_CATID: TSmallintField;
    TAB_API_PRC_CATIDEV: TLargeintField;
    TAB_API_PRC_CATIDEP: TSmallintField;
    TAB_API_PRC_CATDEEP: TIBStringField;
    TAB_API_PRC_CATIDCA: TSmallintField;
    TAB_API_PRC_CATDTCA: TDateTimeField;
    TAB_API_PRC_CATTABELA: TIBStringField;
    TAB_API_PRC_CATDESCRICAO: TIBStringField;
    TAB_API_PRC_CATARTIGO: TIBStringField;
    TAB_API_PRC_CATUCON: TIBStringField;
    TAB_API_PRC_CATNCM: TIBStringField;
    TAB_API_PRC_CATPIPI: TIBBCDField;
    TAB_API_PRC_CATPCOM_PAD: TIBBCDField;
    TAB_API_PRC_CATVPRC_PAD: TIBBCDField;
    TAB_API_PRC_CATVPRC_PRZ: TIBBCDField;
    TAB_API_PRC_CATVPRC_PRO: TIBBCDField;
    TAB_API_PRC_CATVPRC_4: TIBBCDField;
    TAB_API_PRC_CATVPRC_45: TIBBCDField;
    TAB_API_PRC_CATVPRC_5: TIBBCDField;
    TAB_API_PRC_CATVPRC_55: TIBBCDField;
    TAB_API_PRC_CATVPRC_6: TIBBCDField;
    TAB_API_PRC_CATVPRC_7: TIBBCDField;
    TAB_API_PRC_CATVPRC_8: TIBBCDField;
    TAB_API_PRC_CATVPRC_9: TIBBCDField;
    TAB_API_PRC_CATVPRC_10: TIBBCDField;
    TAB_API_PRC_CATMFRT: TIBStringField;
    TAB_API_PRC_CATUF: TIBStringField;
    TAB_API_PRC_CATFPAIS: TIBStringField;
    TAB_API_PRC_CATFLAG: TSmallintField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    ProdutosDEST: TIBStringField;
    DBGConsultaDESTA: TdxDBGridPickColumn;
    procedure FormCreate(Sender: TObject);
    procedure DBGConsultaNCMValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure ACTAplica_CadastroExecute(Sender: TObject);
    procedure ACTDeleteExecute(Sender: TObject);
    procedure CadastroNewRecord(DataSet: TDataSet);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTAplica_B2B_GeralExecute(Sender: TObject);
    procedure ACTAplica_B2B_ItemExecute(Sender: TObject);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure ACTExcluidoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ACTImporta_PlanilhaExecute(Sender: TObject);
    procedure ACTPrecosExecute(Sender: TObject);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure DBGProdutosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure CadastroAfterClose(DataSet: TDataSet);
    procedure FKCadastroBeforeOpen(DataSet: TDataSet);
    procedure ProdutosCalcFields(DataSet: TDataSet);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGConsultaDESTAValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
  private
    { Private declarations }
    procedure _Inicializa_Precos;
    procedure _Aplica_Cadastro;
    procedure _Aplica_B2B(ANewString: String);

    function _Aplica_Precos: Boolean;
  public
    { Public declarations }
  end;

var
  FrmProduto_SubCategoria: TFrmProduto_SubCategoria;

  vVUPRC_PAD,
  vVUPRC_FLOAT,
  vVUPRC_PRZ,
  vVUPRC_PRO: Double;

  vREPETE: Double;

  vPUCOM_PAD,
  vPUCOM_FLOAT,
  vPUCOM_DIF: Double;

  vVUPRC_COMPRA,
  vVUPRC_COMPRA_IMP: Double;

  PBCount: Integer;

implementation

uses uPrincipal, bPrincipal,
  pProduto_Preco_Faixa_Comissao;

{$R *.dfm}

procedure TFrmProduto_SubCategoria.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_SCT'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Sub Categorias';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NCM FROM TAB_SCT GROUP BY 1 ORDER BY 1');
      ExecQuery;
      while not Eof do
      begin
        DBGConsultaNCM.Items.Add(Current.Vars[0].AsString);
        Next;
      end;
    end;

    with Produtos do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,IDSCT,ARTIGO,SKU,CAST(DTCA AS DATE) AS DTCA,DECP||'' ''||COALESCE(DGCP,'''') AS DESCRICAO,CDCF,DECF,UCOM,UCON,');
      SQL.Add('       VPRC_PAD,VPRC_COM_PAD,FPAIS,XPAIS,');
      SQL.Add('       EPE_QTDE,EPE_QTRL,DEST');
      SQL.Add('FROM   SP_CAD_PRO_PSQ('''+RECParametros.EP_ID+''',:ID,''CP.IDSCT'')');
      Prepare;
    end;
  finally
    oCTransact(TConsulta);
  end;

  with Cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT PK.*,CAST(PK.DTCA AS DATE) AS DTCAD,EP.FANTASIA AS DEEP,');
    SelectSQL.Add('       TUCA.LOGIN AS DECA      ,');
    SelectSQL.Add('       IIF(PK.IDCA = 0,NULL    ,');
    SelectSQL.Add('       TUCA.LOGIN||''  ''||CAST(LPAD(EXTRACT(DAY  FROM PK.DTCA),2,0)||''/''||LPAD(EXTRACT(MONTH  FROM PK.DTCA),2,0)||''/''|| RIGHT(LPAD(EXTRACT(YEAR FROM PK.DTCA),4,0),2)||'' ''||');
    SelectSQL.Add('                                LPAD(EXTRACT(HOUR FROM PK.DTCA),2,0)||'':''||LPAD(EXTRACT(MINUTE FROM PK.DTCA),2,0) AS VARCHAR(14))||''  ''||PK.HOST||'' [''||PK.IP||'']'') AS LOGCA,');
    SelectSQL.Add('       TUED.LOGIN   AS DEED,');
    SelectSQL.Add('       IIF(PK.IDED = 0,NULL,');
    SelectSQL.Add('       TUED.LOGIN||''  ''||CAST(LPAD(EXTRACT(DAY  FROM PK.DTED),2,0)||''/''||LPAD(EXTRACT(MONTH  FROM PK.DTED),2,0)||''/''|| RIGHT(LPAD(EXTRACT(YEAR FROM PK.DTED),4,0),2)||'' ''||');
    SelectSQL.Add('                                LPAD(EXTRACT(HOUR FROM PK.DTED),2,0)||'':''||LPAD(EXTRACT(MINUTE FROM PK.DTED),2,0) AS VARCHAR(14))||''  ''||PK.HOST||'' [''||PK.IP||'']'') AS LOGED,');
    SelectSQL.Add('       TUST.LOGIN   AS DEST,');
    SelectSQL.Add('       IIF(PK.IDST = 0,NULL,');
    SelectSQL.Add('       TUST.LOGIN||''  ''||CAST(LPAD(EXTRACT(DAY  FROM PK.DTST),2,0)||''/''||LPAD(EXTRACT(MONTH  FROM PK.DTST),2,0)||''/''|| RIGHT(LPAD(EXTRACT(YEAR FROM PK.DTST),4,0),2)||'' ''||');
    SelectSQL.Add('                                LPAD(EXTRACT(HOUR FROM PK.DTST),2,0)||'':''||LPAD(EXTRACT(MINUTE FROM PK.DTST),2,0) AS VARCHAR(14))||''  ''||PK.HOST||'' [''||PK.IP||'']'') AS LOGST,');
    SelectSQL.Add('       TSTA.DESCRICAO AS DESTA,');
    SelectSQL.Add('       COALESCE(TNCM.TRIBIPI,0) AS TRIBIPI');
    SelectSQL.Add('FROM      TAB_SCT     AS PK');
    SelectSQL.Add('JOIN      TAB_PAR_SIS AS EP   ON (EP.ID    = PK.IDEP)');
    SelectSQL.Add('JOIN      TAB_USER    AS TUCA ON (TUCA.ID  = PK.IDCA)');
    SelectSQL.Add('JOIN      TAB_USER    AS TUED ON (TUED.ID  = PK.IDED)');
    SelectSQL.Add('JOIN      TAB_USER    AS TUST ON (TUST.ID  = PK.IDST)');
    SelectSQL.Add('JOIN      TAB_STA     AS TSTA ON (TSTA.ID  = PK.CDST)');
    SelectSQL.Add('LEFT JOIN TAB_NCM     AS TNCM ON (TNCM.NCM = PK.NCM )');
    SelectSQL.Add('WHERE     PK.IDEP = '''+RECParametros.EP_ID+'''');
    SelectSQL.Add('AND       PK.ID   > 0');
    SelectSQL.Add('AND       PK.ID   IS NOT NULL');
    SelectSQL.Add('ORDER BY  PK.ID');
    Prepare;
    Open;
    Last;
  end;
end;

procedure TFrmProduto_SubCategoria.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsulta.FocusedColumn := 1;
end;

procedure TFrmProduto_SubCategoria.ACTRefreshExecute(Sender: TObject);
begin
  inherited;
{  while not Cadastro.Eof do
  begin
    FKCadastro.First;
    if (FKCadastroVUPRC_FIM.AsCurrency > 0) and (FKCadastroPUCOM_PAD.AsCurrency > 0) then
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_SCT');
      SQL.Add('SET');
      SQL.Add('VUPRC_PAD = '''+oStrTran(FKCadastroVUPRC_FIM.AsString,',','.')+''',');
      SQL.Add('PUCOM_PAD = '''+oStrTran(FKCadastroPUCOM_PAD.AsString,',','.')+'''' );
      SQL.Add('WHERE ID  = '''+CadastroId.AsString+'''');
      ExecQuery;
    end;
    Cadastro.Next;
  end;
  _ExecEvent;}
end;

procedure TFrmProduto_SubCategoria.ACTAplica_CadastroExecute(Sender: TObject);
begin
  if oYesNo(handle,'Atualizar Cadastro de Produtos ?'+#13+#13+
                    CadastroReferencia.AsString      +#13+
                    CadastroDescricao.AsString) = mrNo then
     Abort;

  if Cadastro.State in [dsInsert,dsEdit] then
     Cadastro.Post;

  if CadastroFLAG_ERP_INS.AsInteger = 0 then
  begin
    DBGConsulta.FocusedAbsoluteIndex := DBGConsultaFLAG_ERP_INS.Index;
    oException(DBGConsulta,'Tabela não selecionada para aplicação de cadastro');
  end;

  if CadastroFLAG_ERP_DEL.AsInteger = 1 then
  begin
    DBGConsulta.FocusedColumn := DBGConsultaFLAG_ERP_INS.Index;
    oException(DBGConsulta,'Tabela selecionada para exclusão de cadastro!');
  end;

  try
    _Aplica_Cadastro;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar aplicar tabela !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  oAviso(Self.Handle,'Edição Aplicada com Sucesso !');
end;

procedure TFrmProduto_SubCategoria.ACTAplica_B2B_ItemExecute(Sender: TObject);
var
  ClickedOK: Boolean;
  NewString: String;
begin
  if oYesNo(handle,'Atualizar a Tabela B2B ?'   +#13+#13+
                    CadastroReferencia.AsString +#13+
                    CadastroDescricao.AsString) = mrNo then
     Abort;

  if Cadastro.State in [dsInsert,dsEdit] then
     Cadastro.Post;

  if CadastroID.AsInteger = 0 then
     oException(Nil,'Sub Categoria não Informada !');

  Produtos.First;
  if ProdutosID.AsInteger = 0 then
     oException(Nil,'Sub Categoria não possui produtos relacionados !');

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FIRST 1 ID FROM CAD_PRO');
    SQL.Add('WHERE  IDSCT = ''' + CadastroID.AsString + '''');
    SQL.Add('AND    REST  = ''A''');
    ExecQuery;

    if Current.Vars[0].AsInteger = 0 then
       oException(Nil,'Sub Categoria não possui produtos ativos !');
  end;

  NewString := oRETMesExtenso(Date);
  ClickedOK := InputQuery('Entre com o nome da tabela', 'Chave', NewString);
  if ((not ClickedOK) or (oEmpty(NewString))) then
     Abort;

  oOTransact(TEdicao);
  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM TAB_API_PRC_CAT');
      SQL.Add('WHERE  ID = '''+CadastroId.AsString+'''');
      ExecQuery;
    end;
    TEdicao.CommitRetaining;
    TAB_API_PRC_CAT.Close;
    TAB_API_PRC_CAT.Open;

    _Aplica_Cadastro;
    _Aplica_B2B(NewString);
  except
    on E: Exception do
    begin
      oRTransact(TEdicao);
      oException(Nil,'Falha ao tentar aplicar tabela !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;

  oAviso(Self.Handle,'Atualização da Tabela de Preços Aplicada com Sucesso !');
end;

procedure TFrmProduto_SubCategoria.ACTAplica_B2B_GeralExecute(Sender: TObject);
var
  ClickedOK: Boolean;
  NewString: String;
begin
  if oYesNo(handle,'Atualizar Toda a Tabela B2B ?') = mrNo then
     Abort;

  NewString := oRETMesExtenso(Date);
  ClickedOK := InputQuery('Entre com a chave de acesso da NFe Referenciada', 'Chave', NewString);
  if ((not ClickedOK) or (oEmpty(NewString))) then
     Abort;

  if Cadastro.State in [dsInsert,dsEdit] then
     Cadastro.Post;

  if CadastroID.AsInteger = 0 then
     oException(Nil,'Sub Categoria não Informada !');

  try
    ALockWindowUpdate := True;
    oOTransact(TEdicao);
    try
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM TAB_API_PRC_CAT');
        SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
        ExecQuery;
      end;
      TEdicao.CommitRetaining;
      TAB_API_PRC_CAT.Close;
      TAB_API_PRC_CAT.Open;

      PBConsultaProc.Max      := Cadastro.RecordCount - 1;
      PNLConsultaProc.Height  := 20;
      PNLConsultaProc.Visible := True;
      PBCount := 0;

      Cadastro.First;
      while not Cadastro.Eof do
      begin
        Inc(PBCount);
        PBConsultaProc.Position := PBConsultaProc.Position + 1;
        Application.ProcessMessages;

        with SQLConsulta do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 ID FROM CAD_PRO');
          SQL.Add('WHERE  IDSCT = ''' + CadastroID.AsString + '''');
          SQL.Add('AND    REST  = ''A''');
          ExecQuery;
        end;

        if SQLConsulta.Current.Vars[0].AsInteger > 0 then
        begin
          _Aplica_Cadastro;
          _Aplica_B2B(NewString);
        end;

        Cadastro.Next;
      end;
    except
      on E: Exception do
      begin
        oRTransact(TEdicao);
        oException(Nil,'Falha ao tentar aplicar tabela !'+#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                       'Erro: '+E.Message);
      end;
    end;
  finally
    ALockWindowUpdate := False;

    PNLConsultaProc.Height  := 0;
    PNLConsultaProc.Visible := False;
  end;

  oRefresh(Cadastro);
  oAviso(Self.Handle,'Atualização Geral da Tabela de Preços Aplicada com Sucesso !');
end;

procedure TFrmProduto_SubCategoria.DBGConsultaNCMValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if not oEmpty(DBGConsulta.EditingText) then
  try
    oOTransact(TConsulta);
    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NCM FROM TAB_NCM');
      SQL.Add('WHERE  NCM = '''+DBGConsulta.EditingText+'''');
      ExecQuery;

      if Eof then
         DataBaseError('NCM não Encontrado !');

      CadastroNCM.Value := Current.Vars[0].AsString;
    end;
  finally
    oCTransact(TConsulta);
  end;
end;

procedure TFrmProduto_SubCategoria.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if FKCadastro.State = dsInactive then FKCadastro.Open;
  if Produtos.State   = dsInactive then Produtos.Open;
end;

procedure TFrmProduto_SubCategoria.CadastroAfterClose(DataSet: TDataSet);
begin
  oCTransact(TConsulta);
  inherited;
end;

procedure TFrmProduto_SubCategoria.ACTDeleteExecute(Sender: TObject);
begin
  uFKPesquisa('TAB_SCT',CadastroId.AsString);
  inherited;
end;

procedure TFrmProduto_SubCategoria.CadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  CadastroID.Value   := 0;
  CadastroIDEP.Value := RECParametros.EP_ID;
  CadastroCDST.Value := RECParametros.CDST;
  CadastroREST.Value := RECParametros.REST;
  CadastroPSCN.Value := RECParametros.PRO_PSCN;

  CadastroFLAG_ERP_INS.Value := 1;
  CadastroFLAG_B2B_INS.Value := RECParametros.API_B2B;
  CadastroFLAG_B2C_INS.Value := RECParametros.API_B2C;
  CadastroFLAG_MKP_INS.Value := RECParametros.API_MKP;
end;

procedure TFrmProduto_SubCategoria.CadastroCalcFields(DataSet: TDataSet);
begin
  CadastroC_ID.Value := Cadastro.RecNo;
end;

procedure TFrmProduto_SubCategoria.ProdutosCalcFields(DataSet: TDataSet);
begin
  ProdutosC_ID.Value := Produtos.RecNo;
end;

procedure TFrmProduto_SubCategoria.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBGConsultaReferencia.Field.FocusControl;
  DBGConsulta.SetFocus;
end;

procedure TFrmProduto_SubCategoria.FKCadastroBeforeOpen(DataSet: TDataSet);
begin
  oOTransact(TConsulta);
end;

procedure TFrmProduto_SubCategoria.ACTRelatoriosExecute(Sender: TObject);
begin
  inherited;
{  FrmRelatorios := TFrmRelatorios.Create(Nil,'TABELA DE PREÇOS',0);
  Try FrmRelatorios.ShowModal;
  Finally FreeAndNil(FrmRelatorios);
  End;}
end;

procedure TFrmProduto_SubCategoria.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaC_ID.Index] mod 2 <> 0 then
       AColor := $00EFF0F1;

    if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
         AFont.Color := clBlack;

    if (AColumn = DBGConsultaREFERENCIA  ) or (AColumn = DBGConsultaVUPRC_PAD   ) or
       (AColumn = DBGConsultaNCM         ) or
       (AColumn = DBGConsultaFLAG_ERP_INS) or (AColumn = DBGConsultaFLAG_ERP_DEL) or
       (AColumn = DBGConsultaFLAG_B2C_INS) or (AColumn = DBGConsultaFLAG_B2C_DEL) then
    begin
      AFont.Color := clWhite;
      AColor      := clGray;
    end;

    if AColumn = DBGConsultaTRIBIPI then
       if ANode.Values[DBGConsultaTRIBIPI.Index] > 0 then
       begin
         AFont.Color := clWhite;
         AColor      := clGray;
       end;

    if AColumn = DBGConsultaVUPRC_COMPRA then
       if ANode.Values[DBGConsultaVUPRC_COMPRA.Index] > 0 then
       begin
         AFont.Color := clWhite;
         AColor      := clGray;
       end;

    if AColumn = DBGConsultaVUPRC_COMPRA_IMP then
       if ANode.Values[DBGConsultaVUPRC_COMPRA_IMP.Index] > 0 then
       begin
         AFont.Color := clWhite;
         AColor      := clGray;
       end;

    if (AColumn = DBGConsultaDESTA) then
        if ANode.Values[DBGConsultaDESTA.Index] = 'PRÉ-CADASTRO' then
        begin
          AFont.Color := clBlack;
          AColor      := clInfoBk;
        end else
        if ANode.Values[DBGConsultaDESTA.Index] = 'INATIVO' then
        begin
          AFont.Color := clWhite;
          AColor      := $000024B3;
       end;
  end;
end;

procedure TFrmProduto_SubCategoria.DBGProdutosCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGProdutosC_ID.Index] mod 2 <> 0 then
       AColor := $00EFF0F1;

    if ((AColor = $00EFF0F1) and (AFont.Color = clWhite)) then
         AFont.Color := clBlack;

     if ((AColumn = DBGProdutosEPE_QTDE) or (AColumn = DBGProdutosEPE_QTRL)) then
          if ANode.Values[DBGProdutosEPE_QTDE.Index] > 0 then
          begin
            AFont.Color := clBlack;
            AColor      := $00C4FFC4;
          end else
          if ANode.Values[DBGProdutosEPE_QTDE.Index] < 0 then
          begin
            AFont.Color := clWhite;
            AColor      := $000024B3;
          end;

    if (AColumn = DBGProdutosDEST) then
        if ANode.Values[DBGProdutosDEST.Index] = 'PRÉ-CADASTRO' then
        begin
          AFont.Color := clBlack;
          AColor      := clInfoBk;
        end else
        if ANode.Values[DBGProdutosDEST.Index] = 'INATIVO' then
        begin
          AFont.Color := clWhite;
          AColor      := $000024B3;
       end;

    if ((AColumn = DBGProdutosVPRC_PAD) or (AColumn = DBGProdutosVPRC_COM_PAD)) then
    begin
      AFont.Color := clWhite;
      AColor      := clGray;
    end;
  end;
end;

procedure TFrmProduto_SubCategoria.ACTExcluidoExecute(Sender: TObject);
begin
  ACTExcluido.Tag := IFThen(ACTExcluido.Tag = 0,1,0);

  if BLBExcluido.AutoGrayScale then
     BLBExcluido.AutoGrayScale := False
  else
     BLBExcluido.AutoGrayScale := True;

  with Cadastro do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PS.FANTASIA AS EMPRESA,NCM.TRIBIPI,PK.*,ST.DESCRICAO AS DEST');
    SelectSQL.Add('FROM     TAB_SCT     AS PK');
    SelectSQL.Add('JOIN     TAB_PAR_SIS AS PS ON (PS.ID = PK.IDEP)');
    SelectSQL.Add('JOIN     TAB_STA     AS ST ON (ST.ID = PK.CDST)');
    SelectSQL.Add('LEFT');
    SelectSQL.Add('JOIN     TAB_NCM  AS NCM ON (NCM.NCM = PK.NCM)');
    SelectSQL.Add('WHERE    PK.ID > 0');

    if ACTExcluido.Tag = 1 then SelectSQL.Add('AND DEL = 1');

    SelectSQL.Add('ORDER BY PK.DESCRICAO');
    Open;
  end;
end;

procedure TFrmProduto_SubCategoria.ACTPrecosExecute(Sender: TObject);
begin
  try
    FKCadastro.DisableControls;
    Produtos.DisableControls;

    _Inicializa_Precos;
    try
       TFrmProduto_Preco_Faixa_Comissao._ExecForm(Nil,FrmProduto_Preco_Faixa_Comissao,False,fsStayOnTop);
       FrmProduto_Preco_Faixa_Comissao.CEVUPRC_PAD.Value   := vVUPRC_PAD;
       FrmProduto_Preco_Faixa_Comissao.CEVUPRC_FLOAT.Value := vVUPRC_FLOAT;
       FrmProduto_Preco_Faixa_Comissao.CEVUPRC_PRZ.Value   := vVUPRC_PRZ;
       FrmProduto_Preco_Faixa_Comissao.CEVUPRC_PRO.Value   := vVUPRC_PRO;

       FrmProduto_Preco_Faixa_Comissao.CEREPETE.Value := vREPETE;

       FrmProduto_Preco_Faixa_Comissao.CEPUCOM_PAD.Value   := vPUCOM_PAD ;
       FrmProduto_Preco_Faixa_Comissao.CEPUCOM_FLOAT.Value := vPUCOM_FLOAT;
       FrmProduto_Preco_Faixa_Comissao.CEPUCOM_DIF.Value   := vPUCOM_DIF ;

       FrmProduto_Preco_Faixa_Comissao.CEVUPRC_COMPRA.Value     := vVUPRC_COMPRA;
       FrmProduto_Preco_Faixa_Comissao.CEVUPRC_COMPRA_IMP.Value := vVUPRC_COMPRA_IMP;
       FrmProduto_Preco_Faixa_Comissao.ShowModal;
    finally
      if FrmProduto_Preco_Faixa_Comissao.REC_SHE_DEF.Edited then
      begin
        vVUPRC_PAD   := FrmProduto_Preco_Faixa_Comissao.CEVUPRC_PAD.Value;
        vVUPRC_FLOAT := FrmProduto_Preco_Faixa_Comissao.CEVUPRC_FLOAT.Value;
        vVUPRC_PRZ   := FrmProduto_Preco_Faixa_Comissao.CEVUPRC_PRZ.Value;
        vVUPRC_PRO   := FrmProduto_Preco_Faixa_Comissao.CEVUPRC_PRO.Value;

        vREPETE      := FrmProduto_Preco_Faixa_Comissao.CEREPETE.Value;

        vPUCOM_PAD   := FrmProduto_Preco_Faixa_Comissao.CEPUCOM_PAD.Value;
        vPUCOM_FLOAT := FrmProduto_Preco_Faixa_Comissao.CEPUCOM_FLOAT.Value;
        vPUCOM_DIF   := FrmProduto_Preco_Faixa_Comissao.CEPUCOM_DIF.Value;

        vVUPRC_COMPRA     := FrmProduto_Preco_Faixa_Comissao.CEVUPRC_COMPRA.Value;
        vVUPRC_COMPRA_IMP := FrmProduto_Preco_Faixa_Comissao.CEVUPRC_COMPRA_IMP.Value;

        _Aplica_Precos;
      end;
    end;
  finally
    FKCadastro.EnableControls;
    Produtos.EnableControls;
  end;

  oRefresh(Cadastro);
  oAviso(Handle,'Tabela de preços atualizada com sucesso !'+#13+#13+
                 CadastroDescricao.AsString                +#13+
                 CadastroReferencia.AsString);
end;

procedure TFrmProduto_SubCategoria.ACTImporta_PlanilhaExecute(
  Sender: TObject);
var
  TFArquivo: TextFile;
  SLTexto  : TStringList;
  Linha,
  COLUNA1,
  COLUNA2,
  COLUNAERRO,
  ARTIGO,
  PRECO,
  MENSAGEM: String;
begin
  { RICARDO
    StrRScan ou AnsiStrRScan - retorna a última posição de um caracter
  }

  MENSAGEM := 'Preço Categoria';
  if (TAction(Sender).Name = 'ACTImporta_Planilha_Cadastro') or (TAction(Sender).Name = 'ACTImporta_Planilha_B2B') then
     MENSAGEM := MENSAGEM+#13+'Preço Cadastro';

  if TAction(Sender).Name = 'ACTImporta_Planilha_B2B' then
     MENSAGEM := MENSAGEM+#13+'Preço B2B';

  if not ODExplorer.Execute then
     Abort;

  if oYesNo(handle,PChar(ODExplorer.FileName)+#13+#13+
                                     MENSAGEM+#13+#13+
                        'Confirma Importação da Planilha ?') = mrNo then
     Abort;

  try
    AssignFile(TFArquivo,ODExplorer.FileName);
    Reset(TFArquivo);
  except
    on E: Exception do
      oException(Nil,'Falha ao tentar abrir a planilha '+oStrTran(StrRScan(PChar(ODExplorer.FileName),'\'),'\','')+' !'+#13+#13+
                     'Favor fechar o excel e tentar novamente.'+#13+
                      Trim(E.Message)+'. '                     +#13+
                      FormatDateTime('dd/mm/yy hh:mm',Now)     +'.');
  end;

  SLTexto := TStringList.Create;
  SLTexto.LoadFromFile(ODExplorer.FileName);

  try
    { VALIDA PLANILHA }
    Readln(TFArquivo,Linha);
    Linha       := oStrTran(oUTF8ToStr(Linha),'?','');
    Delimitador := 0;
    COLUNA1     := oGetLinha(Linha);
    COLUNA2     := oGetLinha(Linha);
    COLUNAERRO  := oGetLinha(Linha);
    Delimitador := 0;

    if (UPPERCASE(COLUNA1) <> 'ARTIGO') then
        oException(Nil,'Coluna Nº 1 não informada ou incorreta !'+#13+#13+
                       'Formato correto da coluna:'+#13+
                       'INSERIR NA LINHA 1'        +#13+
                       'nome da coluna -> ARTIGO.' +#13+#13+
                       'INSERIR NAS DEMAIS LINHAS' +#13+
                       'código dos artigos.');

    if (oUpperCase(COLUNA2) <> 'PREÇO') then
        oException(Nil,'Coluna Nº 2 não informada ou incorreta !'+#13+#13+
                       'Formato correto da coluna:'+#13+
                       'INSERIR NA LINHA 1'        +#13+
                       'nome da coluna -> PREÇO.'  +#13+#13+
                       'INSERIR NAS DEMAIS LINHAS' +#13+
                       'valores monetários -> APENAS NÚMEROS + VÍRGULA.');

    if not oEmpty(COLUNAERRO) then
       oException(Nil,'Quantidade de colunas superior a 2 !'+#13+#13+
                      'Formato correto das colunas:'+#13+
                      'coluna1 coluna2'+#13+
                      'ARTIGO  PREÇO'  +#13+#13+
                      'Exclua a coluna '+COLUNAERRO+'.');

    if TAction(Sender).Name = 'ACTImporta_Planilha_B2B' then
    begin
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM TAB_API_PRC_CAT');
        SQL.Add('WHERE  IDEP = '''+RECParametros.EP_ID+'''');
        ExecQuery;
      end;
      TEdicao.CommitRetaining;
      TAB_API_PRC_CAT.Close;
      TAB_API_PRC_CAT.Open;
    end;

    Cadastro.DisableControls;
    Produtos.DisableControls;
    try
      PBCount := 0;
      PBConsultaProc.Max := SLTexto.Count -1;
      PBConsultaProc.Position := 0;

      PNLConsultaProc.Height  := 20;
      PNLConsultaProc.Visible := True;

      While not Eof(TFArquivo) do
      Begin
        Inc(PBCount);
        Readln(TFArquivo,Linha);
        Linha       := oStrTran(oUTF8ToStr(Linha),'?','');
        Delimitador := 0;

        SBRodape.Panels[1].Text := 'Artigo '+ARTIGO+': Lendo Linha ... ' + IntToStr(PBCount) + ' de ' + IntToStr(PBConsultaProc.Max);
        PBConsultaProc.Position := PBConsultaProc.Position + 1;
        Application.ProcessMessages;

        ARTIGO := oGetLinha(Linha);
        PRECO  := oGetLinha(Linha);

        with SQLEdicao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT IDSCT FROM CAD_PRO WHERE PRO_CART = '''+ARTIGO+'''');
          ExecQuery;
        end;

        if (not SQLEdicao.Eof) and (Cadastro.Locate('ID',IntToStr(SQLEdicao.Current.Vars[0].AsInteger),[])) then
        begin
          _Inicializa_Precos;
          vVUPRC_PAD := StrToFloat(PRECO);
          if _Aplica_Precos then
          begin
            if (TAction(Sender).Name = 'ACTImporta_Planilha_Cadastro') or (TAction(Sender).Name = 'ACTImporta_Planilha_B2B') then
                _Aplica_Cadastro;

            if TAction(Sender).Name = 'ACTImporta_Planilha_B2B' then
               _Aplica_B2B(oRETMesExtenso(Date));
          end else
          oAviso(handle,'Sequência dos Preços não Encontrada !'+#13+
                        'Artigo '+ARTIGO);
        end else
        oAviso(handle,'Artigo não Encontrado !'+#13+
                       ARTIGO);
      end;
    except
      OErro(handle,'Erro de leitura na linha ... ' + IntToStr(PBCount));
    end;
  finally
    Cadastro.EnableControls;
    Produtos.EnableControls;

    PNLConsultaProc.Height  := 0;
    PNLConsultaProc.Visible := False;

    CloseFile(TFArquivo);
    SLTexto.Clear;
    FreeAndNil(SLTexto);
  end;

  oAviso(handle,'Planilha '+oStrTran(StrRScan(PChar(ODExplorer.FileName),'\'),'\','')+#13+
                'Importada com Sucesso !');
                
  SBRodape.Panels[1].Text := EmptyStr;
end;

procedure TFrmProduto_SubCategoria._Inicializa_Precos;
begin
  FKCadastro.First;

  vVUPRC_PAD   := CadastroVUPRC_PAD.AsCurrency;
  vVUPRC_FLOAT := FKCadastroVUPRC_FLOAT.AsCurrency;
  vVUPRC_PRZ   := CadastroVUPRC_PRZ.AsCurrency;
  vVUPRC_PRO   := CadastroVUPRC_PRO.AsCurrency;

  vREPETE      := FKCadastroREPETE.AsInteger;

  vPUCOM_PAD   := CadastroPUCOM_PAD.AsCurrency;
  vPUCOM_FLOAT := FKCadastroPUCOM_FLOAT.AsCurrency;
  vPUCOM_DIF   := FKCadastroPUCOM_DIF.AsCurrency;

  vVUPRC_COMPRA     := CadastroVUPRC_COMPRA.AsCurrency;
  vVUPRC_COMPRA_IMP := CadastroVUPRC_COMPRA_IMP.AsCurrency;
end;

function TFrmProduto_SubCategoria._Aplica_Precos: Boolean;
var
  j,i,REPETE: Word;
  pfprc,ultprc,ultcom: Double;
begin
  result := True;
  try
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM TAB_SCT_PRC');
      SQL.Add('WHERE  ID = '''+CadastroId.AsString+'''');
      ExecQuery;
      TEdicao.CommitRetaining;
    end;

    ultcom := vPUCOM_PAD;
    ultprc := RoundTo(vVUPRC_PAD,-2);
    pfprc  := 1;
    j      := 0;
    REPETE := Trunc(vREPETE) + 1;

    for i := 1 to REPETE do
    begin
      FKCadastro.Append;
      FKCadastroID.Value        := CadastroId.AsInteger;
      FKCadastroSEQUENCIA.Value := aSequenciaL[i];
      FKCadastroREPETE.Value    := Trunc(vREPETE);

      if i = 1 then
      begin
        FKCadastroVUPRC_INI.Value := ultprc;
        FKCadastroVUPRC_FIM.Value := ultprc;
        FKCadastroPUCOM_PAD.Value := ultcom;
      end else
      begin
        FKCadastroVUPRC_INI.AsCurrency := oTruncValor(ultprc + 0.01,2);

        ultcom := ultcom +  vPUCOM_FLOAT;
        pfprc  := pfprc  + (vVUPRC_FLOAT / 100);
        ultprc := pfprc  *  vVUPRC_PAD;

        FKCadastroVUPRC_FIM.Value := oTruncValor(ultprc,2);
        FKCadastroPUCOM_PAD.Value := ultcom;
      end;

      if FKCadastroPUCOM_PAD.AsCurrency >= vPUCOM_DIF then
      begin
        FKCadastroPUCOM_PAD.Value := vPUCOM_DIF + J;
        inc(j);
      end;

      FKCadastroVUPRC_FLOAT.Value := vVUPRC_FLOAT;
      FKCadastroPUCOM_FLOAT.Value := vPUCOM_FLOAT;
      FKCadastroPUCOM_DIF.Value   := vPUCOM_DIF;
      FKCadastro.Post;
    end;

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_SCT');
      SQL.Add('SET');
      SQL.Add('IDCA = '''+RECUsuarios.Id    +''',');
      SQL.Add('IP   = '''+RECParametros.IP  +''',');
      SQL.Add('HOST = '''+RECParametros.HOST+''',');

      SQL.Add('VUPRC_PAD = '''+oStrTran(FloatToStr(vVUPRC_PAD),',','.')+''',');
      SQL.Add('VUPRC_PRZ = '''+oStrTran(FloatToStr(vVUPRC_PRZ),',','.')+''',');
      SQL.Add('VUPRC_PRO = '''+oStrTran(FloatToStr(vVUPRC_PRO),',','.')+''',');

      SQL.Add('PUCOM_PAD = '''+oStrTran(FloatToStr(vPUCOM_PAD),',','.')+''',');

      SQL.Add('VUPRC_COMPRA     = '''+oStrTran(FloatToStr(vVUPRC_COMPRA    ),',','.')+''',');
      SQL.Add('VUPRC_COMPRA_IMP = '''+oStrTran(FloatToStr(vVUPRC_COMPRA_IMP),',','.')+'''' );
      SQL.Add('WHERE         ID = '''+CadastroId.AsString+'''');
      ExecQuery;
    end;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar atualizar tabela de preços !'+#13+
                     'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                     'Erro: '+E.Message);
    end;
  end;
end;

procedure TFrmProduto_SubCategoria._Aplica_Cadastro;
begin
  if (CadastroFLAG_ERP_INS.AsInteger = 1) and (CadastroId.AsInteger = FKCadastroId.AsInteger) and (CadastroId.AsInteger = ProdutosIDSCT.AsInteger) then
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAD_PRO');
    SQL.Add('SET');

    { Edição }
    SQL.Add('IDED = '''+RECUsuarios.Id+''',');
    SQL.Add('DTED = CURRENT_TIMESTAMP,');

    { Classificação Fiscal }
    SQL.Add('NCM     = '''+CadastroNCM.AsString+''',');
    SQL.Add('TRIBIPI = '''+oStrTran(CadastroTRIBIPI.AsString,',','.')+''',');

    { Pesagem }
    SQL.Add('PRO_PESO = '''+oStrTran(CadastroPESO.AsString,',','.')+''',');
    SQL.Add('PRO_PSCN = '''+oStrTran(CadastroPSCN.AsString,',','.')+''',');

    { Metragem }
    SQL.Add('PRO_METR = '''+oStrTran(CadastroMETRO.AsString     ,',','.')+''',');
    SQL.Add('PRO_REND = '''+oStrTran(CadastroRENDIMENTO.AsString,',','.')+''',');
    SQL.Add('PRO_GRAM = '''+oStrTran(CadastroGRAMATURA.AsString ,',','.')+''',');

    { Medidas }
    SQL.Add('PRO_UTIL = '''+oStrTran(CadastroLARG_U.AsString,',','.')+''',');
    SQL.Add('PRO_LARG = '''+oStrTran(CadastroLARG_T.AsString,',','.')+''',');
    SQL.Add('PRO_ELAS = '''+oStrTran(CadastroELAS_L.AsString,',','.')+''',');
    SQL.Add('PRO_ELAC = '''+oStrTran(CadastroELAS_C.AsString,',','.')+''',');
    SQL.Add('PRO_ENCL = '''+oStrTran(CadastroENCO_L.AsString,',','.')+''',');
    SQL.Add('PRO_ENCC = '''+oStrTran(CadastroENCO_C.AsString,',','.')+''',');

    { Preço Venda }
    SQL.Add('PRO_PREC  = '''+oStrTran(CadastroVUPRC_PAD.AsString,',','.')+''',');
    SQL.Add('PRO_PPRZ  = '''+oStrTran(CadastroVUPRC_PRZ.AsString,',','.')+''',');
    SQL.Add('PRO_PPRO  = '''+oStrTran(CadastroVUPRC_PRO.AsString,',','.')+''',');

    SQL.Add('VPRC_PAD_INI = '''+oStrTran(CadastroVUPRC_PAD.AsString  ,',','.')+''',');
    FKCadastro.Last;
    SQL.Add('VPRC_PAD_FIM = '''+oStrTran(FKCadastroVUPRC_FIM.AsString,',','.')+''',');

    { Preço Compra }
    SQL.Add('      PRO_PCOM = '''+oStrTran(IFThen(CadastroVUPRC_COMPRA.AsCurrency > 0,CadastroVUPRC_COMPRA.AsString,CadastroVUPRC_COMPRA_IMP.AsString),',','.')+'''');
    SQL.Add('WHERE IDSCT    = '''+CadastroID.AsString+'''');
    Prepare;
    ExecQuery;
  end;

{  Produtos.First;
  while not Produtos.Eof do
  begin
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('EXECUTE PROCEDURE SP_TAB_API_EST(:AIDEP,:AIDCP)');
      Prepare;

      Params[0].Value := RECParametros.EP_ID;
      Params[1].Value := ProdutosID.AsInteger;

      ExecQuery;
    end;
    Produtos.Next;
  end; }
end;

procedure TFrmProduto_SubCategoria._Aplica_B2B(ANewString: String);
var
  i: Word;
begin
  if (CadastroFLAG_B2B_INS.AsInteger > 0) or (CadastroFLAG_B2C_INS.AsInteger > 0) or (CadastroFLAG_MKP_INS.AsInteger > 0) then
  begin
    FKCadastro.First;
    if (CadastroId.AsInteger = FKCadastroId.AsInteger) and (CadastroId.AsInteger = ProdutosIDSCT.AsInteger) then
    begin
      TAB_API_PRC_CAT.Append;
      TAB_API_PRC_CATID.Value   := CadastroId.AsInteger;
      TAB_API_PRC_CATIDCA.Value := RECUsuarios.Id;

      TAB_API_PRC_CATIDEP.Value := CadastroIDEP.AsInteger;
      TAB_API_PRC_CATDEEP.Value := CadastroDEEP.AsString;

      TAB_API_PRC_CATTABELA.Value    := ANewString;
      TAB_API_PRC_CATDESCRICAO.Value := CadastroDESCRICAO.AsString;

      TAB_API_PRC_CATARTIGO.Value := CadastroARTIGO.AsString;
      TAB_API_PRC_CATUCON.Value   := ProdutosUCON.AsString;

      TAB_API_PRC_CATNCM.Value    := CadastroNCM.AsString;
      TAB_API_PRC_CATPIPI.Value   := CadastroTRIBIPI.AsCurrency;

      TAB_API_PRC_CATPCOM_PAD.Value := FKCadastroPUCOM_PAD.AsInteger;
      TAB_API_PRC_CATVPRC_PAD.Value := CadastroVUPRC_PAD.AsCurrency;
      TAB_API_PRC_CATVPRC_PRZ.Value := CadastroVUPRC_PRZ.AsCurrency;
      TAB_API_PRC_CATVPRC_PRO.Value := CadastroVUPRC_PRO.AsCurrency;

      TAB_API_PRC_CATMFRT.Value  := 'FOB';
      TAB_API_PRC_CATUF.Value    := 'XX';
      TAB_API_PRC_CATFPAIS.Value := ProdutosFPAIS.AsString;

      while not FKCadastro.Eof do
      begin
        if FKCadastroPUCOM_PAD.AsCurrency = 4 then
           TAB_API_PRC_CATVPRC_4.Value := FKCadastroVUPRC_FIM.AsCurrency else
        if FKCadastroPUCOM_PAD.AsCurrency = 4.5 then
           TAB_API_PRC_CATVPRC_45.Value := FKCadastroVUPRC_FIM.AsCurrency else
        if FKCadastroPUCOM_PAD.AsCurrency = 5 then
           TAB_API_PRC_CATVPRC_5.Value := FKCadastroVUPRC_FIM.AsCurrency else
        if FKCadastroPUCOM_PAD.AsCurrency = 5.5 then
           TAB_API_PRC_CATVPRC_55.Value := FKCadastroVUPRC_FIM.AsCurrency else
        if FKCadastroPUCOM_PAD.AsCurrency = 6 then
           TAB_API_PRC_CATVPRC_6.Value := FKCadastroVUPRC_FIM.AsCurrency else
        if FKCadastroPUCOM_PAD.AsCurrency = 7 then
           TAB_API_PRC_CATVPRC_7.Value := FKCadastroVUPRC_FIM.AsCurrency else
        if FKCadastroPUCOM_PAD.AsCurrency = 8 then
           TAB_API_PRC_CATVPRC_8.Value := FKCadastroVUPRC_FIM.AsCurrency;

        FKCadastro.Next;
      end;
      TAB_API_PRC_CAT.Post;
      TEdicao.CommitRetaining;

      with SQLConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.SIGLA AS UF FROM TAB_CEP_UFE AS PK');
        SQL.Add('WHERE    PK.ID > 0');
        SQL.Add('ORDER BY 1');
        ExecQuery;
      end;
      while not SQLConsulta.Eof do
      begin
        for i := 1 to 2 do
            with SQLEdicao do
            begin
              Close;
              SQL.Clear;
              SQL.Add('INSERT   INTO TAB_API_PRC_CAT');
              SQL.Add('SELECT   ID,IDEV ,IDEP,DEEP,IDCA,DTCA,');
              SQL.Add('         TABELA  ,DESCRICAO,ARTIGO   ,UCON,NCM,PIPI,');
              SQL.Add('         PCOM_PAD,VPRC_PAD ,VPRC_PRZ ,VPRC_PRO,');
              SQL.Add('         VPRC_4  ,VPRC_45  ,VPRC_5   ,VPRC_55 ,VPRC_6,VPRC_7,VPRC_8,VPRC_9,VPRC_10,');
              SQL.Add(''''+IFThen(i = 1,'CIF CAPITAL','CIF INTERIOR')+''',');
              SQL.Add(''''+SQLConsulta.Current.ByName('UF').AsString +''',');
              SQL.Add('FPAIS,NULL');
              SQL.Add('FROM     TAB_API_PRC_CAT');
              SQL.Add('WHERE    IDEP = '''+TAB_API_PRC_CATIDEP.AsString+'''');
              SQL.Add('AND      ID   = '''+TAB_API_PRC_CATID.AsString  +'''');
              SQL.Add('AND      MFRT = '''+TAB_API_PRC_CATMFRT.AsString+'''');
              SQL.Add('AND      UF   = '''+TAB_API_PRC_CATUF.AsString  +'''');
              ExecQuery;
            end;

        SQLConsulta.Next;
      end;
    end;
  end;
end;

procedure TFrmProduto_SubCategoria.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DBGConsultaLOGCA.Width := IFThen((Cadastro.State <> dsBrowse) or (oEmpty(CadastroLOGCA.AsString)),100,
                            IFThen(Length(CadastroLOGCA.AsString) <= 50,300,400));
  DBGConsultaLOGED.Width := IFThen((Cadastro.State <> dsBrowse) or (oEmpty(CadastroLOGED.AsString)),100,
                            IFThen(Length(CadastroLOGED.AsString) <= 50,300,400));
  DBGConsultaLOGST.Width := IFThen((Cadastro.State <> dsBrowse) or (oEmpty(CadastroLOGST.AsString)),100,
                            IFThen(Length(CadastroLOGST.AsString) <= 50,300,400));

  if Cadastro.State = dsBrowse then
     DBGConsulta.ApplyBestFit(DBGConsultaARTIGO);
end;

procedure TFrmProduto_SubCategoria.DBGConsultaDESTAValidate(
  Sender: TObject; var ErrorText: String; var Accept: Boolean);
begin
  if TRIM(DBGConsulta.EditingText) <> EmptyStr then
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,REFERENCIA,DESCRICAO FROM TAB_STA');
    SQL.Add('WHERE  DESCRICAO = ''' + TRIM(DBGConsulta.EditingText) + '''');
    ExecQuery;

    if not Eof then
    begin
      CadastroCDST.Value := Current.Vars[0].AsInteger;
      CadastroREST.Value := Current.Vars[1].AsString;
      CadastroDEST.Value := Current.Vars[2].AsString;
    end;
  end;  
end;

end.
