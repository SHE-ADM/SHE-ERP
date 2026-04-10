unit qGER_FIS_PESO;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport;

type
  TQRPGER_FIS_PESO = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDBGrupoTitulo: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLSubGrupoPARFantasia: TQRLabel;
    QRDBSubGrupoPARFantasia: TQRDBText;
    QRLSubGrupoNFEPesoBR: TQRLabel;
    QRLSubGrupoNFEPesoLQ: TQRLabel;
    QRDBSubGrupoNFEPesoBR: TQRDBText;
    QRDBSubGrupoNFEPesoLQ: TQRDBText;
    QRLTotalGeral: TQRLabel;
    QRETotalGeralNFEPesoBR: TQRExpr;
    QRETotalGeralNFEPesoLQ: TQRExpr;
    Relatorio: TIBQuery;
    RelatorioPARId: TIntegerField;
    RelatorioPARFantasia: TIBStringField;
    RelatorioNFEAno: TSmallintField;
    RelatorioNFEMes: TSmallintField;
    RelatorioNFEPesoBR: TIBBCDField;
    RelatorioNFEPesoLQ: TIBBCDField;
    RelatorioMesAno: TStringField;
    QRLSubGrupoQTVolume: TQRLabel;
    QRLSubGrupoQTNotaFiscal: TQRLabel;
    QRETotalGeralQTNotaFiscal: TQRExpr;
    RelatorioNFEQTVolume: TLargeintField;
    RelatorioNFEQTNotaFiscal: TLargeintField;
    QRDBSubGrupoQTVolume: TQRDBText;
    QRDBSubGrupoQTNotaFiscal: TQRDBText;
    RelatorioQTNotaFiscal: TIntegerField;
    RelatorioQTVolume: TIntegerField;
    QRESubTotalNFEPesoBR: TQRExpr;
    QRESubTotalNFEPesoLQ: TQRExpr;
    QRESubTotalQTNotaFiscal: TQRExpr;
    QRLSubTotal: TQRLabel;
    QRDBText1: TQRDBText;
    RelatorioNatureza: TIBStringField;
    QRLabel1: TQRLabel;
    QRSSubTotal_1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
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
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBSubTotalBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure WinControlFormDestroy(Sender: TObject);
  private
    RECRelatorio: TREC_SHE_REL;

    procedure _Report;
    procedure _Select;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TREC_SHE_REL); reintroduce; overload;
  end;

var
  QRPGER_FIS_PESO: TQRPGER_FIS_PESO;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TQRPGER_FIS_PESO.Create(AOwner: TComponent; const ARECRelatorio: TREC_SHE_REL);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPGER_FIS_PESO.WinControlFormCreate(Sender: TObject);
begin
  with QRPGER_FIS_PESO do
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
      WinControlFormDestroy(QRPGER_FIS_PESO);
    end;
end;

procedure TQRPGER_FIS_PESO.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGER_FIS_PESO);
  end;
end;

procedure TQRPGER_FIS_PESO._Select;
  var IDEmpresa1,
      IDEmpresa2,
      i: Integer;
begin
  { Monta Relatório }
  with FrmRelatorios, Relatorio do
  begin
    if IEEmpresa.Text <> 'TODAS AS EMPRESAS' then
    begin
      QRBSubTotal.Height              := 0;
      QRLSubTotal.Caption             := '';
      QRESubTotalNFEPesoBR.Expression := '';
      QRESubTotalNFEPesoLQ.Expression := '';
    end;

    IDEmpresa1 := IFThen(IEEmpresa.Text = 'TODAS AS EMPRESAS',1,RECRelatorio.EP_ID);
    IDEmpresa2 := IFThen(IEEmpresa.Text = 'TODAS AS EMPRESAS',9,RECRelatorio.EP_ID);

    oOTransact(TRelatorio);
    SQL.Clear;
    for i := IDEmpresa1 to IDEmpresa2 do
    begin
      SQL.Add('SELECT   PAR_SIS.ID "PARId",FANTASIA "PARFantasia",NAT_TIPO "Natureza",Extract(Year FROM NFE_DEMI)  "NFEAno",Extract(Month FROM NFE_DEMI) "NFEMes",SUM(NFE_PSBR) "NFEPesoBR",SUM(NFE_PSLQ) "NFEPesoLQ",SUM(NFE_QVOL) "NFEQTVolume",COUNT(*) "NFEQTNotaFiscal"');
      SQL.Add('FROM '   +oREPZero('NFE_CAB','_',i,3)+' "NFE_CAB"');
      SQL.Add('JOIN '   +oREPZero('NFE_TRA','_',i,3)+' "NFE_TRA" ON NFE_TRA.NFE_CCAB = NFE_CAB.ID');
      SQL.Add('JOIN     TAB_NAT "TAB_NAT" ON TAB_NAT.NAT_CNAT = NFE_CAB.NFE_CNAT');
      SQL.Add('JOIN     TAB_PAR_SIS "PAR_SIS" ON PAR_SIS.ID = '''+IntToStr(i)+'''');
      SQL.Add('WHERE    NFE_CAB.NFE_DEMI BETWEEN :Data1 AND :Data2');
      SQL.Add('AND      NOT FEMPTY(NFE_CAB.NFE_CHAV)');
      SQL.Add('AND      NFE_CAB.NFE_STA  = ''0''');
      SQL.Add('AND      TAB_NAT.NAT_FATU = ''1''');
      SQL.Add('AND      LEFT(PAR_SIS.CNPJ,8) = '''+LeftStr(RECRelatorio.EP_CNPJ,8)+'''');
      SQL.Add('GROUP BY PAR_SIS.ID,FANTASIA,NAT_TIPO,Extract(Year FROM NFE_DEMI),Extract(Month FROM NFE_DEMI)');
      if (i < 9) and (IEEmpresa.Text = 'TODAS AS EMPRESAS') then
      SQL.Add('UNION');
    end;
    SQL.Add('ORDER BY 4,5,2,3');
    Prepare;

    ParamByName('Data1').Value := FormatDateTime('dd/mm/yy',MCData1.Date);
    ParamByName('Data2').Value := FormatDateTime('dd/mm/yy',MCData2.Date);
    Open;
  end;
end;

procedure TQRPGER_FIS_PESO._Report;
begin
  RECRelatorio.Titulo    := 'Relatório gerencial de notas fiscais';
  RECRelatorio.SubTitulo := 'Emissão por peso transportado';

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

procedure TQRPGER_FIS_PESO.RelatorioCalcFields(DataSet: TDataSet);
begin
  RelatorioMesAno.Value       := aMes[RelatorioNFEMes.AsInteger] + ' / ' + oStrZero(RelatorioNFEAno.AsInteger,4);
  RelatorioQTVolume.Value     := RelatorioNFEQTVolume.AsInteger;
  RelatorioQTNotaFiscal.Value := RelatorioNFEQTNotaFiscal.AsInteger;
end;

procedure TQRPGER_FIS_PESO.QRBSubTotalBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLSubTotal.Caption := 'Total ' + RelatorioMesAno.AsString;
end;

end.
