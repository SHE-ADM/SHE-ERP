unit qGFornecedoresProdutosCadastrados;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IDGlobal;

type
  TqrpGFornecedoresProdutosCadastrados = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QRDDECLCVCR: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLProduto: TQRLabel;
    Relatorio: TIBQuery;
    QRDVTPV: TQRDBText;
    QRLVTPV: TQRLabel;
    QRDProduto: TQRDBText;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRLDescricao: TQRLabel;
    QRDDescricao: TQRDBText;
    QRLC_QTPV: TQRLabel;
    QRDC_QTPV: TQRDBText;
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
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    RelatorioID: TIntegerField;
    RelatorioIDSCT: TSmallintField;
    RelatorioARTIGO: TIBStringField;
    RelatorioSKU: TIBStringField;
    RelatorioDTCA: TDateField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioUCON: TIBStringField;
    RelatorioCDCF: TIBStringField;
    RelatorioDECF: TIBStringField;
    RelatorioVPRC_PAD: TFloatField;
    RelatorioFPAIS: TIBStringField;
    RelatorioXPAIS: TIBStringField;
    RelatorioEPE_QTDE: TIBBCDField;
    RelatorioEPE_QTRL: TIntegerField;
    RelatorioVPRC_COM_PAD: TFloatField;
    RelatorioSTFI: TIBStringField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpGFornecedoresProdutosCadastrados: TqrpGFornecedoresProdutosCadastrados;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpGFornecedoresProdutosCadastrados.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpGFornecedoresProdutosCadastrados.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            if RECRelatorio.PEC1ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC1ConsultaAnd := 'CF.'+RECRelatorio.IEC1ConsultaField+' '+RECRelatorio.IEC1ConsultaWhere+' '''''+RECRelatorio.IEC1ConsultaLike1+Trim(RECRelatorio.PEC1ConsultaText)+RECRelatorio.IEC1ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              RECRelatorio.IEDataAnd    := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT ID,IDSCT,ARTIGO,SKU,CAST(DTCA AS DATE) AS DTCA,DECP||'' ''||COALESCE(DGCP,'''') AS DESCRICAO,UCOM,UCON,');
              SQL.Add('       CDCF,DECF,');
              SQL.Add('       VPRC_PAD,VPRC_COM_PAD,FPAIS,XPAIS,');
              SQL.Add('       EPE_QTDE,EPE_QTRL,STFI');

              SQL.Add('FROM SP_CAD_PRO_PSQ');
              SQL.Add('(');
              SQL.Add(''''+RECRelatorio.IDEP+'''');

              SQL.Add(','''+RECRelatorio.IDEP+'''');
              SQL.Add(',''CP.IDEP''');

              if RECRelatorio.IEC1ConsultaAnd <> EmptyStr then
              begin
                SQL.Add(','''+RECRelatorio.IEC1ConsultaAnd  +'''');
                SQL.Add(','''+RECRelatorio.IEC1ConsultaField+'''');
              end;

              SQL.Add(')');

              if RECRelatorio.Status <> 'TODOS' then
              SQL.Add('WHERE    REST = '''+LeftStr(RECRelatorio.Status,1)+'''');
              SQL.Add('ORDER BY DECF,ARTIGO,DESCRICAO');
              Open;
            end;
          end;
begin
  with qrpGFornecedoresProdutosCadastrados do
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
      WinControlFormDestroy(qrpGFornecedoresProdutosCadastrados);
    end;
end;

procedure TqrpGFornecedoresProdutosCadastrados.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpGFornecedoresProdutosCadastrados);
  end;
end;

procedure TqrpGFornecedoresProdutosCadastrados.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value := Relatorio.RecNo;
end;

procedure TqrpGFornecedoresProdutosCadastrados.QRBDetalheBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00F2F2F2; //$00F5F5F5;
end;

end.
