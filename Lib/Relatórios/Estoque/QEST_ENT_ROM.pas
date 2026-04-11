unit qEST_ENT_ROM;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport, IBSQL;

type
  TqrpEST_ENT_ROM = class(TQuickRep)
    QRBDetalhe: TQRBand;
    TConsulta: TIBTransaction;
    Relatorio: TIBQuery;
    QRBCabecalho: TQRBand;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBTitulo: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBCabecalhoFornecedor: TQRDBText;
    QRSCABECALHO: TQRShape;
    QRLC_SKU: TQRLabel;
    QRLDECP: TQRLabel;
    QRDSKU: TQRDBText;
    QRDDECP: TQRDBText;
    QRBSumario: TQRBand;
    QRERLDI: TQRExpr;
    QRETotal_ITEM: TQRExpr;
    QRLTotal: TQRLabel;
    QREQTDI: TQRExpr;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    QRLDETP: TQRLabel;
    QRLUCON: TQRLabel;
    QRLQTDE: TQRLabel;
    QRLQTRL: TQRLabel;
    QRDDETP: TQRDBText;
    QRDUCON: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QRDQTDE: TQRDBText;
    QRDQTRL: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBINFADCAD: TQRChildBand;
    QRMINFADCAD: TQRMemo;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SQLConsulta: TIBSQL;
    QRLRLDI: TQRLabel;
    QRLDTDI: TQRLabel;
    QREQTRL: TQRExpr;
    QREQTDE: TQRExpr;
    QRDRLDI: TQRDBText;
    QRDQTDI: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    RelatorioD_DERO: TIBStringField;
    RelatorioLGCA: TIBStringField;
    RelatorioDTCA: TDateTimeField;
    RelatorioCTNR: TIBStringField;
    RelatorioLOTE: TIBStringField;
    RelatorioD_DEOP: TIBStringField;
    RelatorioDETP: TIBStringField;
    RelatorioD_DECE: TIBStringField;
    RelatorioSKU: TIBStringField;
    RelatorioD_DECP: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioD_UCON: TIBStringField;
    RelatorioINFADCAD: TIBStringField;
    RelatorioQTDE: TIBBCDField;
    RelatorioQTRL: TIntegerField;
    RelatorioD_QTDE: TIBStringField;
    RelatorioQTSP: TIBBCDField;
    RelatorioRLSP: TIntegerField;
    RelatorioD_QTSP: TIBStringField;
    RelatorioCDRO: TLargeintField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioAfterOpen(DataSet: TDataSet);
    procedure QuickRepAfterPrint(Sender: TObject);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpEST_ENT_ROM: TqrpEST_ENT_ROM;

implementation

uses uPrincipal,
  pExporta;

{$R *.DFM}

Constructor TqrpEST_ENT_ROM.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  oFRECRelatorios(RECRelatorio);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpEST_ENT_ROM.WinControlFormCreate(Sender: TObject);
          procedure _Select;
          begin
            { Select Principal }
            oOTransact(TConsulta);

            Relatorio.SQL.Text := oStrTran(Relatorio.SQL.Text,'VW_CAD_PRO_EST',IFThen(RECRelatorio.Tipo = 'ANTECIPADO','VW_CAD_PRO_EST_RFK','VW_CAD_PRO_EST'));
            Relatorio.ParamByName('IDEP').Value := RECRelatorio.IDEP;
            Relatorio.ParamByName('CDRO').Value := RECRelatorio.ID;
            Relatorio.Prepare;
            Relatorio.Open;

            { Filtros Rodapé }
            RECRelatorio.RodapeFiltros := IFThen(RECRelatorio.IDEP <> RECParametros.EP_ID,'Empresa: ' + RECRelatorio.DEEP + ' - ','') +
                                         'Romaneio: ' + RelatorioCDRO.AsString;
          end;

          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }
          end;
begin
  with qrpEST_ENT_ROM do
    try
      oPrinterSelect(Application.Handle,'Relatórios');

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
      WinControlFormDestroy(qrpEST_ENT_ROM);
    end;
end;

procedure TqrpEST_ENT_ROM.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TConsulta);
    oFRECRelatorios(RECRelatorio);
  finally
    FreeAndNil(qrpEST_ENT_ROM);
  end;
end;

procedure TqrpEST_ENT_ROM.QuickRepAfterPrint(Sender: TObject);
begin
  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAD_PRO_ENC');
      SQL.Add('SET    LOG_PRN_IDEV = ''' + RECUsuarios.Id + ''',');
      SQL.Add('       LOG_PRN_CDEV = ''' + IntToStr(qrpEST_ENT_ROM.Tag) + ''',');
      SQL.Add('       LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
      SQL.Add('       LOG_PRN_IP   = ''' + RECParametros.IP       + ''',');
      SQL.Add('       LOG_PRN_HOST = ''' + RECParametros.HOST     + '''' );
      SQL.Add('WHERE  ID           = ''' + RelatorioCDRO.AsString + '''' );
      ExecQuery;
    end;
  finally
    oCTransact(TEdicao);
  end;
end;

procedure TqrpEST_ENT_ROM.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := $00E9E9E9
  else
     QRBDetalhe.Color := clWhite;

  { Tamanho Padrão para
    SKU = width 80
    Descricao + Grade = width 300 }

  QRDSKU.Font.Size  := IFThen(Length(RelatorioSKU.AsString   ) > 12,6,7);
  QRDDECP.Font.Size := IFThen(Length(RelatorioD_DECP.AsString) > 40,6,7);
  QRDUCON.Font.Size := IFThen(Length(RelatorioD_UCON.AsString) > 15,6,7);
end;

procedure TqrpEST_ENT_ROM.RelatorioAfterOpen(DataSet: TDataSet);
begin
  { Informações Adicionais }
  QRMINFADCAD.Lines.Clear;
  if RelatorioINFADCAD.AsString <> EmptyStr then
  begin
    QRMINFADCAD.Lines.Add(RelatorioINFADCAD.AsString);
    QRMINFADCAD.Enabled := True;
    QRBINFADCAD.Enabled := True;
  end;
end;

procedure TqrpEST_ENT_ROM.RelatorioCalcFields(DataSet: TDataSet);
begin
  RelatorioC_ID.Value := Relatorio.RecNo;
end;

end.
