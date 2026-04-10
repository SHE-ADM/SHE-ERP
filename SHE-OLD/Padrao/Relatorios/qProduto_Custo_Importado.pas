unit qProduto_Custo_Importado;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IBSQL;

type
  TqrpProduto_Custo_Importado = class(TQuickRep)
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBFKCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    QRBSumario: TQRBand;
    QRLCOLS1: TQRLabel;
    QRLCOLS2: TQRLabel;
    QRLCOLN1: TQRLabel;
    QRLCOLN2: TQRLabel;
    QRLCOLN3: TQRLabel;
    QRLCOLN4: TQRLabel;
    QRLCOLN5: TQRLabel;
    QRDCOLS1: TQRDBText;
    QRDCOLS2: TQRDBText;
    QRDCOLN1: TQRDBText;
    QRDCOLN2: TQRDBText;
    QRDCOLN3: TQRDBText;
    QRDCOLN4: TQRDBText;
    QRDCOLN5: TQRDBText;
    RelatorioID: TIntegerField;
    RelatorioCDFK: TIntegerField;
    RelatorioIDEP: TSmallintField;
    RelatorioDEEP: TIBStringField;
    RelatorioIDCA: TSmallintField;
    RelatorioDTCA: TDateTimeField;
    RelatorioDECA: TIBStringField;
    RelatorioIDED: TSmallintField;
    RelatorioDTED: TDateTimeField;
    RelatorioDEED: TIBStringField;
    RelatorioITEM: TIntegerField;
    RelatorioDTEN: TDateField;
    RelatorioDESCRICAO: TIBStringField;
    RelatorioCTNR: TIBStringField;
    RelatorioCDTP: TSmallintField;
    RelatorioDETP: TIBStringField;
    RelatorioFKTP: TIBStringField;
    RelatorioDETALHE: TIBStringField;
    RelatorioCPKG: TIBBCDField;
    RelatorioCLKG: TIBBCDField;
    RelatorioCMKG: TIBBCDField;
    RelatorioQTRL: TIntegerField;
    RelatorioPESOB: TIBBCDField;
    RelatorioCMDTOT: TIBBCDField;
    RelatorioVUTAXA: TFloatField;
    RelatorioVUCOTA: TFloatField;
    RelatorioCMRTOT: TIBBCDField;
    RelatorioQTUCOM: TIBBCDField;
    RelatorioCMUCOM: TIBBCDField;
    RelatorioINFADLAN: TIBStringField;
    QRLNome: TQRLabel;
    QRDNome: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QRLTotal: TQRLabel;
    QRETotal: TQRExpr;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Custo_Importado: TqrpProduto_Custo_Importado;

implementation

uses uPrincipal, bPrincipal,
  pExporta;

{$R *.DFM}

Constructor TqrpProduto_Custo_Importado.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Custo_Importado.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          begin
            { Filtros Between }
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') then
               RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption   +' '+RECRelatorio.PEC2CodigoCaption+' '
            else
               RECRelatorio.PEC1CodigoText := '0';

            { Filtros Gerais }   
            if (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
            begin
              RECRelatorio.IEC1ConsultaAnd := RECRelatorio.IEC1ConsultaField+' '+RECRelatorio.IEC1ConsultaWhere+' '''''+RECRelatorio.IEC1ConsultaLike1+Trim(RECRelatorio.PEC1ConsultaText)+RECRelatorio.IEC1ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            if (RECRelatorio.PEC2ConsultaText <> 'TODOS') then
            begin
              RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if (RECRelatorio.PEC3ConsultaText <> 'TODOS') then
            begin
              RECRelatorio.IEC3ConsultaAnd := RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''''+RECRelatorio.IEC3ConsultaLike1+Trim(RECRelatorio.PEC3ConsultaText)+RECRelatorio.IEC3ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            if (RECRelatorio.PEC4ConsultaText <> 'TODOS') then
            begin
              RECRelatorio.IEC4ConsultaAnd := RECRelatorio.IEC4ConsultaField+' '+RECRelatorio.IEC4ConsultaWhere+' '''''+RECRelatorio.IEC4ConsultaLike1+Trim(RECRelatorio.PEC4ConsultaText)+RECRelatorio.IEC4ConsultaLike2+'''''';
              RECRelatorio.RodapeFiltros    := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
               RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM SP_REL_PRODUTO_CUSTO_IMPORTADO (');
              SQL.Add(''''+RECRelatorio.IEC1ConsultaAnd    +''',');
              SQL.Add(''''+RECRelatorio.IEC2ConsultaAnd    +''',');
              SQL.Add(''''+RECRelatorio.IEC3ConsultaAnd    +''',');
              SQL.Add(''''+RECRelatorio.IEC4ConsultaAnd    +''',');
              SQL.Add(''''+FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''',');
              SQL.Add(''''+FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+''',');
              SQL.Add(''''+RECRelatorio.IEDataField+'''');
              SQL.Add(')');
              Prepare;
              Open;
            end;
          end;
begin
  with qrpProduto_Custo_Importado do
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
      WinControlFormDestroy(qrpProduto_Custo_Importado);
    end;
end;

procedure TqrpProduto_Custo_Importado.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Custo_Importado);
  end;
end;

procedure TqrpProduto_Custo_Importado.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00E9E9E9;
end;

procedure TqrpProduto_Custo_Importado.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value := Relatorio.RecNo;
end;

end.
