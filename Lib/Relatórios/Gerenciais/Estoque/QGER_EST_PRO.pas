unit qGER_EST_PRO;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport;

type
  TQRPGER_EST_PRO = class(TQuickRep)
    QRBDetalhe: TQRBand;
    QRGGrupo: TQRGroup;
    QRGSubGrupo: TQRGroup;
    QRBSubTotal: TQRBand;
    QRBTotalGeral: TQRBand;
    QREGrupo: TQRDBText;
    TRelatorio: TIBTransaction;
    QRLPSBR: TQRLabel;
    QRSubGrupo_1: TQRShape;
    Relatorio: TIBQuery;
    QRLSubTotal: TQRLabel;
    QRESubTotalPSBR: TQRExpr;
    QRESubTotalPSLQ: TQRExpr;
    QRLTotal: TQRLabel;
    QRDC_EPE_QTDE: TQRDBText;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRLPSLQ: TQRLabel;
    QRLC_EPE_QTDE: TQRLabel;
    QRDPSBR: TQRDBText;
    QRDPSLQ: TQRDBText;
    QRETotalPSBR: TQRExpr;
    QRETotalPSLQ: TQRExpr;
    RelatorioDEEP: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioEPE_QTDE: TIBBCDField;
    RelatorioPSBR: TIBBCDField;
    RelatorioPSLQ: TIBBCDField;
    RelatorioC_EPE_QTDE: TStringField;
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
  private
    REC_SHE_REL: TREC_SHE_REL;
  public
    Constructor Create(AOwner: TComponent; const AREC_SHE_REL: TREC_SHE_REL); reintroduce; overload;
  end;

var
  QRPGER_EST_PRO: TQRPGER_EST_PRO;

implementation

{$R *.DFM}

Constructor TQRPGER_EST_PRO.Create(AOwner: TComponent; const AREC_SHE_REL: TREC_SHE_REL);
begin
  Initialize(REC_SHE_REL);
  FillChar(REC_SHE_REL,SizeOf(REC_SHE_REL),0);
  REC_SHE_REL := AREC_SHE_REL;

  inherited Create(AOwner);
end;

procedure TQRPGER_EST_PRO.WinControlFormCreate(Sender: TObject);
          procedure _Select;
          begin
            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT EP.FANTASIA AS DEEP,CP.UCOM,SUM(E.EPE_QTDE) AS EPE_QTDE,');
              SQL.Add('       SUM(CAST(CP.UPSBR*E.EPE_QTDE AS DECIMAL(15,2))) AS PSBR,');
              SQL.Add('       SUM(CAST(CP.UPSLQ*E.EPE_QTDE AS DECIMAL(15,2))) AS PSLQ ');

              SQL.Add('FROM ESTOQUE     AS E');
              SQL.Add('JOIN TAB_PAR_SIS AS EP ON (EP.ID = IIF(E.IDEP_LOG = 7,E.IDEP,E.IDEP_LOG))');
              SQL.Add('JOIN CAD_PRO     AS CP ON (CP.ID = E.IDCP)');

              SQL.Add('WHERE E.EPE_QTDE > 0');

              SQL.Add('GROUP BY 1,2');
              SQL.Add('ORDER BY 1'  );

              Prepare;
              Open;
            end;

            { FILTROS RODAPÉ }
            if REC_SHE_REL.EP_ID <> RECParametros.EP_ID then
               REC_SHE_REL.RodapeFiltro := REC_SHE_REL.EP_NO;

            if REC_SHE_REL.FB_PSQ_DT_NO_PK <> EmptyStr then
               REC_SHE_REL.QRLRodape := REC_SHE_REL.RodapeFiltro + IFThen(REC_SHE_REL.RodapeFiltro <> EmptyStr,' + ','') +
                                       'Estoque movimentado no período de ' + FormatDateTime('dd/mm/yy',REC_SHE_REL.FB_PSQ_DT_VD_PK) + ' até ' + FormatDateTime('dd/mm/yy',REC_SHE_REL.FB_PSQ_DT_VD_FK);
          end;

          procedure _Report;
          begin
            oReportPageHeader(Self,REC_SHE_REL); { Cabeçalho }
            oReportPageFooter(Self,REC_SHE_REL); { Rodapé }
          end;
begin
  with qrpGER_EST_PRO do
       try
         _Select;
         _Report;

         if Relatorio.RecNo > 0 then
         begin
           Prepare;
           
           case REC_SHE_REL.TAGPrint of
             0: PreviewModal;
             1: Print;

          { PDF }
          2: try
               ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + REC_SHE_REL.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
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
               ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + REC_SHE_REL.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
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
               ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + REC_SHE_REL.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
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
         WinControlFormDestroy(QRPGER_EST_PRO);
       end;
end;

procedure TQRPGER_EST_PRO.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(REC_SHE_REL);
    FillChar(REC_SHE_REL,SizeOf(REC_SHE_REL),0);
  finally
    FreeAndNil(qrpGER_EST_PRO);
  end;
end;

procedure TQRPGER_EST_PRO.RelatorioCalcFields(DataSet: TDataSet);
begin
  RelatorioC_EPE_QTDE.Value := Trim(FormatFloat(',##,0',RelatorioEPE_QTDE.AsFloat) + ' ' + RelatorioUCOM.AsString);
end;

end.
