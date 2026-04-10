unit QFOR_CAD_PRO;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
  IDGlobal;

type
  TQRPFOR_CAD_PRO = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDDECLCVCR: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLSKU: TQRLabel;
    Relatorio: TIBQuery;
    QRDVTPV: TQRDBText;
    QRLVTPV: TQRLabel;
    QRDSKU: TQRDBText;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRDDGCP: TQRDBText;
    QRLUCON: TQRLabel;
    QRDDECP: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QREVTPV: TQRExpr;
    QRESubTotal_ITEM: TQRExpr;
    QRLSubTotal: TQRLabel;
    QRETotal_ITEM: TQRExpr;
    QRLTotal: TQRLabel;
    QRSVTPV: TQRExpr;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLDGCP: TQRLabel;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    RelatorioIDCP: TIntegerField;
    RelatorioCP_IDEP: TSmallintField;
    RelatorioCDST: TSmallintField;
    RelatorioREST: TIBStringField;
    RelatorioDEST: TIBStringField;
    RelatorioCF_ID: TSmallintField;
    RelatorioCF_NO: TIBStringField;
    RelatorioARTIGO: TIBStringField;
    RelatorioSKU: TIBStringField;
    RelatorioL_SKU: TIntegerField;
    RelatorioDGCP: TIBStringField;
    RelatorioDECP: TIBStringField;
    RelatorioD_DECP: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioUCON: TIBStringField;
    RelatorioL_UCON: TIntegerField;
    RelatorioEPE_QTDE: TIBBCDField;
    RelatorioL_DGCP: TIntegerField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    RECRelatorio: TREC_SHE_REL;

    procedure _Report;
    procedure _Select;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TREC_SHE_REL); reintroduce; overload;
  end;

var
  QRPFOR_CAD_PRO: TQRPFOR_CAD_PRO;

implementation

uses pExporta;

{$R *.DFM}

Constructor TQRPFOR_CAD_PRO.Create(AOwner: TComponent; const ARECRelatorio: TREC_SHE_REL);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPFOR_CAD_PRO.WinControlFormCreate(Sender: TObject);
begin
  with QRPFOR_CAD_PRO do
    try
      _Select;
      _Report;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorio.TAGPrint of
          0: PreviewModal;
          1: Print;

          { PDF }
          2: try
               ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorio.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
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
               ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorio.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
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
               ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorio.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
               oAviso(Application.Handle,'Relatório convertido com sucesso em sua área de trabalho !');
             except
               on E: Exception do
               begin
                 oErro(Application.Handle,'Falha ao tentar converter relatório !' + #13 +
                                          'Erro: ' + E.Message + '.');
               end;
             end;
        end;
      end else oException(Nil,'Registros não Encontrados !');
    finally
      WinControlFormDestroy(QRPFOR_CAD_PRO);
    end;
end;

procedure TQRPFOR_CAD_PRO.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(QRPFOR_CAD_PRO);
  end;
end;

procedure TQRPFOR_CAD_PRO._Select;
begin
  RECRelatorio.EP_ID_PK := INTTOSTR(IFThen(RECRelatorio.EP_ID > 0,RECRelatorio.EP_ID,1));
  RECRelatorio.EP_ID_FK := INTTOSTR(IFThen(RECRelatorio.EP_ID > 0,RECRelatorio.EP_ID,9));

  { PERÍODO }
  if RECRelatorio.FB_PSQ_DT_NO_PK <> EmptyStr then
  RECRelatorio.FB_PSQ_DT_QUERY := RECRelatorio.FB_PSQ_DT_NO_PK + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',RECRelatorio.FB_PSQ_DT_VD_PK) + ''' AND ''' + FormatDateTime('mm/dd/yy',RECRelatorio.FB_PSQ_DT_VD_FK) + '''';

  { TEXTO }
  if RECRelatorio.FB_PSQ_PE1_VD <> 'TODOS' then
  RECRelatorio.FB_PSQ_IE1_QUERY := 'PK.' + RECRelatorio.FB_PSQ_IE1_NO + ' ' + RECRelatorio.FB_PSQ_IE1_WHERE +' ''''' + RECRelatorio.FB_PSQ_IE1_LKPK + Trim(RECRelatorio.FB_PSQ_PE1_VD) + RECRelatorio.FB_PSQ_IE1_LKFK + '''''';

  oOTransact(TRelatorio);
  with Relatorio do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.IDCP  ,PK.CP_IDEP,');
    SQL.Add('       PK.CDST  ,PK.REST   ,PK.DEST,');
    SQL.Add('       PK.CF_ID ,PK.CF_NO  ,');
    SQL.Add('       PK.ARTIGO,PK.SKU    ,PK.L_SKU ,PK.DGCP,PK.L_DGCP,PK.DECP,PK.D_DECP,');
    SQL.Add('       PK.UCOM  ,PK.UCON   ,PK.L_UCON,');
    SQL.Add('       COALESCE(SUM(E.EPE_QTDE),0) AS EPE_QTDE');

    SQL.Add('FROM      VW_REL_FOR_CAD_PRO AS PK');
    SQL.Add('LEFT JOIN VW_ESTOQUE         AS E ON (E.IDEP = PK.CP_IDEP AND E.IDEK = PK.IDEK)');

    SQL.Add('WHERE PK.CP_IDEP = :IDEP');

    if RECRelatorio.FB_PSQ_DT_QUERY <> EmptyStr then
    SQL.Add(RECRelatorio.FB_PSQ_DT_QUERY);

    if RECRelatorio.FB_PSQ_IE1_QUERY <> EmptyStr then
    SQL.Add(RECRelatorio.FB_PSQ_IE1_QUERY);

    SQL.Add('AND CHAR_LENGTH(PK.DGCP) = 20');

    SQL.Add('GROUP BY PK.IDCP  ,PK.CP_IDEP,');
    SQL.Add('         PK.CDST  ,PK.REST ,PK.DEST,');
    SQL.Add('         PK.CF_ID ,PK.CF_NO,');
    SQL.Add('         PK.ARTIGO,PK.SKU  ,PK.L_SKU,PK.DGCP,PK.L_DGCP,PK.DECP,PK.D_DECP,');
    SQL.Add('         PK.UCOM  ,PK.UCON ,PK.L_UCON');

    SQL.Add('ORDER BY PK.ARTIGO,PK.DGCP');

    ParamByName('IDEP').Value := RECRelatorio.EP_ID_PK;
    Prepare;
    Open;
  end;
end;

procedure TQRPFOR_CAD_PRO._Report;
begin
  { TÍTULO }
  RECRelatorio.Titulo    := 'Relatório gerencial de vendas';
  RECRelatorio.SubTitulo := 'Faturamento por tipo de crédito';

  { Filtros Gerais }
  if RECParametros.EP_NO <> RECRelatorio.EP_NO then
  RECRelatorio.QRLRodape := RECRelatorio.QRLRodape + RECRelatorio.EP_NO+' ';

  if (RECRelatorio.FB_PSQ_CD_VD_PK <> 'TODOS' ) and (RECRelatorio.FB_PSQ_CD_VD_FK <> 'TODOS' ) and
     (RECRelatorio.FB_PSQ_CD_VD_PK <> EmptyStr) and (RECRelatorio.FB_PSQ_CD_VD_FK <> EmptyStr) then
  RECRelatorio.QRLRodape := RECRelatorio.QRLRodape + RECRelatorio.FB_PSQ_CD_LB_PK + ': de ' + RECRelatorio.FB_PSQ_CD_VD_PK + ' até ' + RECRelatorio.FB_PSQ_CD_VD_FK + ' ';

  if (RECRelatorio.FB_PSQ_PE1_VD <> 'TODOS') and (RECRelatorio.FB_PSQ_PE1_VD <> EmptyStr) then
  RECRelatorio.QRLRodape := RECRelatorio.QRLRodape + RECRelatorio.FB_PSQ_IE1_LB + ': ' + RECRelatorio.FB_PSQ_PE1_VD + ' ';

  if (RECRelatorio.FB_PSQ_PE2_VD <> 'TODOS') and (RECRelatorio.FB_PSQ_PE2_VD <> EmptyStr) then
  RECRelatorio.QRLRodape := RECRelatorio.QRLRodape + RECRelatorio.FB_PSQ_IE2_LB + ': ' + RECRelatorio.FB_PSQ_PE2_VD + ' ';

  if (RECRelatorio.FB_PSQ_PE3_VD <> 'TODOS') and (RECRelatorio.FB_PSQ_PE3_VD <> EmptyStr) then
  RECRelatorio.QRLRodape := RECRelatorio.QRLRodape + RECRelatorio.FB_PSQ_IE3_LB + ': ' + RECRelatorio.FB_PSQ_PE3_VD + ' ';

  if (RECRelatorio.FB_PSQ_PE4_VD <> 'TODOS') and (RECRelatorio.FB_PSQ_PE4_VD <> EmptyStr) then
  RECRelatorio.QRLRodape := RECRelatorio.QRLRodape + RECRelatorio.FB_PSQ_IE4_LB + ': ' + RECRelatorio.FB_PSQ_PE4_VD + ' ';

  if RECRelatorio.FB_PSQ_DT_NO_PK <> EmptyStr then
  RECRelatorio.QRLRodape := RECRelatorio.QRLRodape + 'Período por data de ' + RECRelatorio.FB_PSQ_DT_LB_PK + ': de ' + FormatDateTime('dd/mm/yy',RECRelatorio.FB_PSQ_DT_VD_PK) + ' até ' + FormatDateTime('dd/mm/yy',RECRelatorio.FB_PSQ_DT_VD_FK);

  oReportPageHeader(Self,RECRelatorio); { Cabeçalho }
  oReportPageFooter(Self,RECRelatorio); { Rodapé }
end;

procedure TQRPFOR_CAD_PRO.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  { SKU }
  if Relatorio.Locate('L_SKU',20,[]) then
  begin
    QRDSKU.Width     := 95;
    QRDSKU.Font.Size := 6;
  end else

  if Relatorio.Locate('L_SKU',19,[]) then
  begin
    QRDSKU.Width     := 90;
    QRDSKU.Font.Size := 6;
  end else

  if Relatorio.Locate('L_SKU',18,[]) then
  begin
    QRDSKU.Width     := 85;
    QRDSKU.Font.Size := 6;
  end else

  if Relatorio.Locate('L_SKU',17,[]) then
  begin
    QRDSKU.Width     := 80;
    QRDSKU.Font.Size := 6;
  end else

  if Relatorio.Locate('L_SKU',16,[]) then
  begin
    QRDSKU.Width     := 80;
    QRDSKU.Font.Size := 6;
  end else

  if Relatorio.Locate('L_SKU',15,[]) then
  begin
    QRDSKU.Width     := 70;
    QRDSKU.Font.Size := 6;
  end else

  if Relatorio.Locate('L_SKU',14,[]) then
  begin
    QRDSKU.Width     := 70;
    QRDSKU.Font.Size := 6;
  end else

  if Relatorio.Locate('L_SKU',13,[]) then
  QRDSKU.Width := 65 else

  if Relatorio.Locate('L_SKU',12,[]) then
  QRDSKU.Width := 60 else

  if Relatorio.Locate('L_SKU',11,[]) then
  QRDSKU.Width := 55 else

  if Relatorio.Locate('L_SKU',10,[]) then
  QRDSKU.Width := 50 else
  QRDSKU.Width := 45;
  QRLSKU.Width := QRDSKU.Width;

  { Grade }
  if Relatorio.Locate('L_DGCP',20,[]) then
  begin
    QRDDGCP.Width     := 95;
    QRDDGCP.Font.Size := 6;
  end else

  if Relatorio.Locate('L_DGCP',19,[]) then
  begin
    QRDDGCP.Width     := 90;
    QRDDGCP.Font.Size := 6;
  end else

  if Relatorio.Locate('L_DGCP',18,[]) then
  begin
    QRDDGCP.Width     := 85;
    QRDDGCP.Font.Size := 6;
  end else

  if Relatorio.Locate('L_DGCP',17,[]) then
  begin
    QRDDGCP.Width     := 80;
    QRDDGCP.Font.Size := 6;
  end else

  if Relatorio.Locate('L_DGCP',16,[]) then
  begin
    QRDDGCP.Width     := 80;
    QRDDGCP.Font.Size := 6;
  end else

  if Relatorio.Locate('L_DGCP',15,[]) then
  begin
    QRDDGCP.Width     := 70;
    QRDDGCP.Font.Size := 6;
  end else

  if Relatorio.Locate('L_DGCP',14,[]) then
  begin
    QRDDGCP.Width     := 70;
    QRDDGCP.Font.Size := 6;
  end else

  if Relatorio.Locate('L_DGCP',13,[]) then
  QRDDGCP.Width := 65 else

  if Relatorio.Locate('L_DGCP',12,[]) then
  QRDDGCP.Width := 60 else

  if Relatorio.Locate('L_DGCP',11,[]) then
  QRDDGCP.Width := 55 else

  if Relatorio.Locate('L_DGCP',10,[]) then
  QRDDGCP.Width := 50 else
  QRDDGCP.Width := 45;
  QRLDGCP.Width := QRDDGCP.Width;

  { SKU }
  QRDSKU.Font.Size := 7;

  { Grade }
  QRDDGCP.Font.Size := 7;
  QRDDGCP.Left := QRDSKU.Width + 5;
  QRLDGCP.Left := QRDDGCP.Left;

  { Descrição }
  QRDDECP.Font.Size := 7;
  QRDDECP.Left := QRDDGCP.Left + QRDDGCP.Width + 5;
end;

procedure TQRPFOR_CAD_PRO.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value := Relatorio.RecNo;
end;

procedure TQRPFOR_CAD_PRO.QRBDetalheBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{ if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00F2F2F2; //$00F5F5F5; }
end;

end.
