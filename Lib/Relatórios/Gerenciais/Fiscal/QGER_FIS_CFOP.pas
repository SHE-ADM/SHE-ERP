unit qGER_FIS_CFOP;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport;

type
  TQRPGER_FIS_CFOP = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDBGrupoNFEOperacao: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLSubGrupoCFOP: TQRLabel;
    QRLSubGrupoVCOFINS: TQRLabel;
    QRLSubGrupoVNF: TQRLabel;
    QRDBSubGrupoVCOFINS: TQRDBText;
    QRDBSubGrupoVNF: TQRDBText;
    QRSubGrupo_1: TQRShape;
    Relatorio: TIBQuery;
    QRLSubTotal: TQRLabel;
    QRESubTotalVICMS: TQRExpr;
    QRLSubGrupoVPIS: TQRLabel;
    QRDBSubGrupoVPIS: TQRDBText;
    QRDBSubGrupoVIPI: TQRDBText;
    QRDBSubGrupoVICMS: TQRDBText;
    QRLSubGrupoVICMS: TQRLabel;
    QRLSubGrupoVIPI: TQRLabel;
    QRLSubGrupoNFETipo: TQRLabel;
    QRDBSubGrupoNFETipo: TQRDBText;
    QRESubTotalVIPI: TQRExpr;
    QRESubTotalVPIS: TQRExpr;
    QRESubTotalVCOFINS: TQRExpr;
    QRESubTotalVNF: TQRExpr;
    QRETotalGeralVNF: TQRLabel;
    QRLTotalGeralDIFERENCA: TQRLabel;
    QRDBSubGrupoCFOP: TQRDBText;
    RelatorioC_CFOP: TStringField;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRETotalGeralVICMS: TQRLabel;
    QRETotalGeralVIPI: TQRLabel;
    QRETotalGeralVPIS: TQRLabel;
    QRETotalGeralVCOFINS: TQRLabel;
    RelatorioNFOPERACAO: TIBStringField;
    RelatorioNFTIPO: TIBStringField;
    RelatorioNFCFOP: TIBStringField;
    RelatorioNFDESCRICAO: TIBStringField;
    RelatorioVICMS: TIBBCDField;
    RelatorioVIPI: TIBBCDField;
    RelatorioVPIS: TIBBCDField;
    RelatorioVCOFINS: TIBBCDField;
    RelatorioVNF: TIBBCDField;
    QRBCABECALHO: TQRBand;
    QRIPageHeaderLogo: TQRImage;
    QRLPageHeaderTitulo: TQRLabel;
    QRLPageHeaderSubTitulo: TQRLabel;
    QRBRODAPE: TQRBand;
    QRLPageFooterFiltros: TQRLabel;
    QRLPageFooterUsuario: TQRLabel;
    QRSPageFooterPagina: TQRSysData;
    QRLPageFooterHost: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBTotalGeralBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorio : TREC_SHE_REL;

    QRLEVNF      : Double;
    QRLEVICMS    : Double;
    QRLEVIPI     : Double;
    QRLEVPIS     : Double;
    QRLEVCOFINS  : Double;
    QRLSVNF      : Double;
    QRLSVICMS    : Double;
    QRLSVIPI     : Double;
    QRLSVPIS     : Double;
    QRLSVCOFINS  : Double;

    procedure _Report;
    procedure _Select;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TREC_SHE_REL); reintroduce; overload;
  end;

var
  QRPGER_FIS_CFOP: TQRPGER_FIS_CFOP;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TQRPGER_FIS_CFOP.Create(AOwner: TComponent; const ARECRelatorio: TREC_SHE_REL);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPGER_FIS_CFOP.WinControlFormCreate(Sender: TObject);
begin
  with QRPGER_FIS_CFOP do
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
      WinControlFormDestroy(QRPGER_FIS_CFOP);
    end;
end;

procedure TQRPGER_FIS_CFOP.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(QRPGER_FIS_CFOP);
  end;
end;

procedure TQRPGER_FIS_CFOP._Select;
var IDEmpresa1,
    IDEmpresa2,
    i: Integer;
begin
  { Monta Relatório }
  with FrmRelatorios, Relatorio do
  begin
    IDEmpresa1 := IFThen(IEEmpresa.Text = 'TODAS AS EMPRESAS',1,RECRelatorio.EP_ID);
    IDEmpresa2 := IFThen(IEEmpresa.Text = 'TODAS AS EMPRESAS',9,RECRelatorio.EP_ID);

    oOTransact(TRelatorio);
    
    SQL.Clear;
    SQL.Add('SELECT NFOPERACAO,NFTIPO,NFCFOP,NFDESCRICAO,');
    SQL.Add('       SUM(VICMS) AS VICMS,SUM(VIPI) AS VIPI,SUM(VPIS) AS VPIS,SUM(VCOFINS) AS VCOFINS,SUM(VNF) AS VNF');
    SQL.Add('FROM (');

    for i := IDEmpresa1 to IDEmpresa2 do
    begin
      SQL.Add('SELECT   IIF (NFE_CAB.REST = ''A'',NAT_OPER,''CANCELADO'') AS NFOperacao ,');
      SQL.Add('         NAT_TIPO AS NFTipo,NAT_CNAT AS NFCFOP,NAT_DNAT AS NFDescricao,');
      SQL.Add('         SUM(NFE_ITE.NFE_VICMS) AS VICMS,SUM(NFE_ITE.NFE_VIPI) AS VIPI,SUM(NFE_ITE.NFE_VPIS) AS VPIS,SUM(NFE_ITE.NFE_VCOFINS) AS VCOFINS,SUM(NFE_ITE.NFE_VNF) AS VNF');
      SQL.Add('FROM '  +oREPZero('NFE_CAB','_',i,3)+' "NFE_CAB"');
      SQL.Add('JOIN '  +oREPZero('NFE_ITE','_',i,3)+' "NFE_ITE" ON NFE_ITE.NFE_CCAB = NFE_CAB.ID');
      SQL.Add('JOIN     TAB_NAT "TAB_NAT" ON TAB_NAT.NAT_CNAT = NFE_ITE.NFE_CFOP');
      SQL.Add('JOIN     TAB_PAR_SIS "PAR_SIS" ON PAR_SIS.ID = '''+IntToStr(i)+'''');
      SQL.Add('WHERE    NFE_CAB.NFE_DEMI BETWEEN :Data1 AND :Data2');
      SQL.Add('AND      NFE_CAB.REST  = ''A''');
      SQL.Add('AND      NFE_ITE.NFE_VICMS > 0');
      SQL.Add('GROUP BY 1,2,3,4');

      if (i < 9) and (IEEmpresa.Text = 'TODAS AS EMPRESAS') then
      SQL.Add('UNION');
    end;

    SQL.Add(')');
    SQL.Add('GROUP BY 1,2,3,4');
    SQL.Add('ORDER BY 1,2,3'  );
    Prepare;

    ParamByName('Data1').Value := FormatDateTime('dd/mm/yy',MCData1.Date);
    ParamByName('Data2').Value := FormatDateTime('dd/mm/yy',MCData2.Date);
    Open;

    QRLEVNF     := 0;
    QRLEVICMS   := 0;
    QRLEVIPI    := 0;
    QRLEVPIS    := 0;
    QRLEVCOFINS := 0;
    QRLSVNF     := 0;
    QRLSVICMS   := 0;
    QRLSVIPI    := 0;
    QRLSVPIS    := 0;
    QRLSVCOFINS := 0;

    while not Relatorio.Eof do
    begin
      if Pos('ENTRADA',RelatorioNFOperacao.AsString) > 0 then
      begin
        QRLEVNF     := QRLEVNF     + RelatorioVNF.AsFloat;
        QRLEVICMS   := QRLEVICMS   + RelatorioVICMS.AsFloat;
        QRLEVIPI    := QRLEVIPI    + RelatorioVIPI.AsFloat;
        QRLEVPIS    := QRLEVPIS    + RelatorioVPIS.AsFloat;
        QRLEVCOFINS := QRLEVCOFINS + RelatorioVCOFINS.AsFloat;
      end;

      if Pos('SAÍDA',RelatorioNFOperacao.AsString) > 0 then
      begin
        QRLSVNF     := QRLSVNF     + RelatorioVNF.AsFloat;
        QRLSVICMS   := QRLSVICMS   + RelatorioVICMS.AsFloat;
        QRLSVIPI    := QRLSVIPI    + RelatorioVIPI.AsFloat;
        QRLSVPIS    := QRLSVPIS    + RelatorioVPIS.AsFloat;
        QRLSVCOFINS := QRLSVCOFINS + RelatorioVCOFINS.AsFloat;
      end;

      Relatorio.Next;
    end;  
  end;
end;

procedure TQRPGER_FIS_CFOP._Report;
begin
  RECRelatorio.Titulo    := 'Relatório gerencial de notas fiscais';
  RECRelatorio.SubTitulo := 'Emissão por tipo de operação';

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

procedure TQRPGER_FIS_CFOP.RelatorioCalcFields(DataSet: TDataSet);
begin
  RelatorioC_CFOP.Value := RelatorioNFCfop.AsString+'-'+RelatorioNFDescricao.AsString;
end;

procedure TQRPGER_FIS_CFOP.QRBTotalGeralBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRETotalGeralVNF.Caption     := FormatFloat(',##,0.00',QRLSVNF     - QRLEVNF);
  QRETotalGeralVICMS.Caption   := FormatFloat(',##,0.00',QRLSVICMS   - QRLEVICMS);
  QRETotalGeralVIPI.Caption    := FormatFloat(',##,0.00',QRLSVIPI    - QRLEVIPI);
  QRETotalGeralVPIS.Caption    := FormatFloat(',##,0.00',QRLSVPIS    - QRLEVPIS);
  QRETotalGeralVCOFINS.Caption := FormatFloat(',##,0.00',QRLSVCOFINS - QRLEVCOFINS);
end;

procedure TQRPGER_FIS_CFOP.QRBDetalheBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLSubTotal.Font.Style         := [fsBold];
  QRDBSubGrupoNFETipo.Font.Style := [];
  QRDBSubGrupoCFOP.Font.Style    := [];
  QRDBSubGrupoVNF.Font.Style     := [];
  QRESubTotalVNF.Font.Style      := [fsBold];
  QRDBSubGrupoVICMS.Font.Style   := [];
  QRESubTotalVICMS.Font.Style    := [fsBold];
  QRDBSubGrupoVIPI.Font.Style    := [];
  QRESubTotalVIPI.Font.Style     := [fsBold];
  QRDBSubGrupoVPIS.Font.Style    := [];
  QRESubTotalVPIS.Font.Style     := [fsBold];
  QRDBSubGrupoVCOFINS.Font.Style := [];
  QRESubTotalVCOFINS.Font.Style  := [fsBold];
  if RelatorioNFOperacao.AsString = 'CANCELADO' then
  begin
    QRLSubTotal.Font.Style         := [fsStrikeOut];
    QRDBSubGrupoNFETipo.Font.Style := [fsStrikeOut];
    QRDBSubGrupoCFOP.Font.Style    := [fsStrikeOut];
    QRDBSubGrupoVNF.Font.Style     := [fsStrikeOut];
    QRESubTotalVNF.Font.Style      := [fsStrikeOut];
    QRDBSubGrupoVICMS.Font.Style   := [fsStrikeOut];
    QRESubTotalVICMS.Font.Style    := [fsStrikeOut];
    QRDBSubGrupoVIPI.Font.Style    := [fsStrikeOut];
    QRESubTotalVIPI.Font.Style     := [fsStrikeOut];
    QRDBSubGrupoVPIS.Font.Style    := [fsStrikeOut];
    QRESubTotalVPIS.Font.Style     := [fsStrikeOut];
    QRDBSubGrupoVCOFINS.Font.Style := [fsStrikeOut];
    QRESubTotalVCOFINS.Font.Style  := [fsStrikeOut];
  end;
end;

end.
