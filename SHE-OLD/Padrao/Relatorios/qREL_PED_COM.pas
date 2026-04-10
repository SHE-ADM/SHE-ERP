unit qREL_PED_COM; { Listagem de produtos por fornecedor }

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, QRPDFFilt, QRExport, IBDatabase, IBSQL,
  math, StrUtils;

type
  TQRPREL_PED_COM = class(TQuickRep)
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    TRelatorios: TIBTransaction;
    SQLConsulta: TIBSQL;
    Relatorio: TIBQuery;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    QRBCABECALHO: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRBTITULO: TQRBand;
    QRBCOLUNAS: TQRBand;
    QRGGRUPO: TQRGroup;
    QRGSUBGRUPO: TQRGroup;
    QRBDETALHES: TQRBand;
    QRBSUBTOTAL: TQRBand;
    QRBTOTAL: TQRBand;
    QRBSUMARIO: TQRBand;
    QRLPageHeaderTitulo: TQRLabel;
    QRLPageHeaderSubTitulo: TQRLabel;
    DTSRelatorio: TDataSource;
    QRDGRUPO: TQRDBText;
    QRDSKU: TQRDBText;
    QRBSUBDETALHES: TQRSubDetail;
    QREITEM: TQRExpr;
    QRETOTAL: TQRExpr;
    QRBRODAPE: TQRBand;
    QRLPageFooterFiltros: TQRLabel;
    QRLPageFooterLogin: TQRLabel;
    QRSPageFooterPagina: TQRSysData;
    QRLPageFooterHost: TQRLabel;
    QRLTOTAL: TQRLabel;
    QRCGRUPO: TQRChildBand;
    QRSGRUPO: TQRShape;
    QRLSKU: TQRLabel;
    QRDEPE_QTDE: TQRDBText;
    QRDDECP: TQRDBText;
    QRLUCON: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRSTOTAL: TQRShape;
    RelatorioIDEP: TSmallintField;
    RelatorioDEEP: TIBStringField;
    RelatorioD_DEPK: TIBStringField;
    RelatorioD_CDNF: TIBStringField;
    RelatorioCFOP: TIBStringField;
    RelatorioCFOP_NAT: TIBStringField;
    RelatorioQTRL: TIntegerField;
    RelatorioVNF: TIBBCDField;
    RelatorioID: TIntegerField;
    RelatorioCDST: TSmallintField;
    RelatorioREST: TIBStringField;
    RelatorioDEST: TIBStringField;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QREQTRL: TQRExpr;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
  private
    RECRelatorio: TRECRelatorios;

    procedure _Report;
    procedure _Select;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  QRPREL_PED_COM: TQRPREL_PED_COM;

implementation


{$R *.DFM}

Constructor TQRPREL_PED_COM.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TQRPREL_PED_COM.WinControlFormCreate(Sender: TObject);
begin
  with QRPREL_PED_COM do
    try
      _Select;
      _Report;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorio.PrintTAG of
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
      WinControlFormDestroy(QRPREL_PED_COM);
    end;
end;

procedure TQRPREL_PED_COM.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorios);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(QRPREL_PED_COM);
  end;
end;

procedure TQRPREL_PED_COM._Select;
begin
  oOTransact(TRelatorios);
  with Relatorio do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID    ,PK.IDEP  ,PK.DEEP,');
    SQL.Add('       PK.CDST  ,PK.REST  ,PK.DEST,');
    SQL.Add('       PK.D_DEPK,PK.D_CDNF,PK.CFOP,PK.CFOP_NAT,');
    SQL.Add('       PK.QTRL  ,PK.VNF');

    SQL.Add('FROM ' + oREPZero('VW_REL_PED_COM','_',4,3) + ' AS PK');

    { Datas }
    if RECRelatorio.IEDataField <> EmptyStr then
       SQL.Add(IFThen(Pos('WHERE',Text) = 0,'WHERE','AND') + ' CAST (' + RECRelatorio.IEDataField + ' AS DATE) ' + 'BETWEEN ''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText1) + ''' AND ''' + FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText2) + '''');

    { Fornecedores
    if (RECRelatorio.PEC1ConsultaText <> EmptyStr) and (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
    SQL.Add(IFThen(Pos('WHERE',Text) = 0,'WHERE','AND') + ' ' + RECRelatorio.IEC1ConsultaField + ' ' + RECRelatorio.IEC1ConsultaWhere + ' ''' + RECRelatorio.IEC1ConsultaLike1 + Trim(RECRelatorio.PEC1ConsultaText) + RECRelatorio.IEC1ConsultaLike2 + '''');
    }

    { Situação }
    if (RECRelatorio.Status <> EmptyStr) and (RECRelatorio.Status <> 'TODOS') then
    SQL.Add(IFThen(Pos('WHERE',Text) = 0,'WHERE','AND') + ' ' + RECRelatorio.Status);

    SQL.Add('ORDER BY DEEP,DTCA,DTNF');
    Prepare;
    Open;
  end;
end;

procedure TQRPREL_PED_COM._Report;
begin
  { Filtros }
  RECRelatorio.RodapeFiltros := EmptyStr;

  { Empresa }
  if (RECRelatorio.IDEP > 0) and (RECRelatorio.IDEP <> RECParametros.EP_ID) then
  RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + IFThen(RECRelatorio.RodapeFiltros <> EmptyStr,'. ','') +
                                UPPERCASE(RECRelatorio.DEEP);

  { Fornecedor }
  if (RECRelatorio.PEC1ConsultaText <> EmptyStr) and (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
  RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + IFThen(RECRelatorio.RodapeFiltros <> EmptyStr,'. ','') +
                                UPPERCASE(RECRelatorio.PEC1ConsultaText);

  { Situação }
  if (RECRelatorio.Status <> EmptyStr) and (RECRelatorio.Status <> 'TODOS') then
  RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + IFThen(RECRelatorio.RodapeFiltros <> EmptyStr,'. ','') +
                                UPPERCASE(RECRelatorio.Situacao);

  { Período }                              
  if RECRelatorio.IEDataField <> EmptyStr then
  RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + IFThen(RECRelatorio.RodapeFiltros <> EmptyStr,'. ','') +
                                FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1) + ' até ' + FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);

  oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
  oReportPageFooter_(Self,RECRelatorio); { Rodapé    }

  QRLPageHeaderTitulo.Caption := 'Listagem de compras de produtos';
end;

end.

