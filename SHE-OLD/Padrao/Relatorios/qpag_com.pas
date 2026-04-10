unit qpag_com;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, jpeg, QRPDFFilt, QRExport, math, strutils;

type
  Tqrppag_com = class(TQuickRep)
    Relatorio: TIBQuery;
    QRBand8: TQRBand;
    qrpcab: TQRGroup;
    qrdbdrep: TQRDBText;
    qrpsub: TQRGroup;
    QRShape5: TQRShape;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRExpr20: TQRExpr;
    QRLabel3: TQRLabel;
    qrldata: TQRLabel;
    QRLabel4: TQRLabel;
    qrlvend: TQRLabel;
    QRLabel5: TQRLabel;
    qrdbdata: TQRDBText;
    QRDBText7: TQRDBText;
    qrdbvend: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    qrlsub: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel2: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape6: TQRShape;
    QRShape11: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRShape17: TQRShape;
    QRLabel29: TQRLabel;
    QRShape7: TQRShape;
    qrlass1: TQRLabel;
    qrlass2: TQRLabel;                                              
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape10: TQRShape;
    qrltipo: TQRLabel;
    qrlper: TQRLabel;
    qrltcom: TQRExpr;
    QRLabel15: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel23: TQRLabel;
    TRelatorio: TIBTransaction;
    TSEdicao: TIBTransaction;
    QConsulta: TIBQuery;
    QSEdicao: TIBQuery;
    RelatorioC_DCAD: TStringField;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRLRodapeUsuario: TQRLabel;
    QRLRodapeSelectSQL: TQRLabel;
    QRLRodapePagina: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRLabel8: TQRLabel;
    qrltotal: TQRLabel;
    qrltot: TQRExpr;
    QRShape1: TQRShape;
    RelatorioID: TIntegerField;
    RelatorioFIN_CDRO: TIntegerField;
    RelatorioFIN_CCAB: TIntegerField;
    RelatorioFIN_CDBX: TIntegerField;
    RelatorioFIN_CDCX: TIntegerField;
    RelatorioFIN_CCLI: TIntegerField;
    RelatorioFIN_CFOR: TIntegerField;
    RelatorioFIN_CVEN: TIntegerField;
    RelatorioFIN_CREP: TIntegerField;
    RelatorioFIN_CPPL: TIntegerField;
    RelatorioFIN_CCUS: TIntegerField;
    RelatorioFIN_CBCO: TIntegerField;
    RelatorioFIN_CDCO: TIntegerField;
    RelatorioFIN_PRAZ: TSmallintField;
    RelatorioFIN_ATRA: TSmallintField;
    RelatorioFIN_CONC: TSmallintField;
    RelatorioFIN_MCHQ: TSmallintField;
    RelatorioFIN_DROM: TDateField;
    RelatorioFIN_DCAD: TDateField;
    RelatorioFIN_DVEN: TDateField;
    RelatorioFIN_DPAG: TDateField;
    RelatorioFIN_DMED: TDateField;
    RelatorioFIN_DATR: TDateField;
    RelatorioFIN_DCAN: TDateField;
    RelatorioFIN_DBAI: TDateField;
    RelatorioFIN_DDES: TDateField;
    RelatorioFIN_COBR: TIBStringField;
    RelatorioFIN_STA: TIBStringField;
    RelatorioFIN_PREV: TIBStringField;
    RelatorioFIN_DUPL: TIBStringField;
    RelatorioFIN_DESC: TIBStringField;
    RelatorioFIN_DFOR: TIBStringField;
    RelatorioFIN_DCLI: TIBStringField;
    RelatorioFIN_VEND: TIBStringField;
    RelatorioFIN_DREP: TIBStringField;
    RelatorioFIN_RCLI: TIBStringField;
    RelatorioFIN_RREP: TIBStringField;
    RelatorioFIN_STDO: TIBStringField;
    RelatorioFIN_DOCT: TIBStringField;
    RelatorioFIN_BANC: TIBStringField;
    RelatorioFIN_DBAN: TIBStringField;
    RelatorioFIN_AGEN: TIBStringField;
    RelatorioFIN_CONT: TIBStringField;
    RelatorioFIN_NCHQ: TIBStringField;
    RelatorioFIN_TIPO: TIBStringField;
    RelatorioFIN_STFI: TIBStringField;
    RelatorioFIN_STCO: TIBStringField;
    RelatorioFIN_PORT: TIBStringField;
    RelatorioFIN_IDBX: TIBStringField;
    RelatorioFIN_IPPL: TIBStringField;
    RelatorioFIN_DFIN: TIBStringField;
    RelatorioFIN_DCUS: TIBStringField;
    RelatorioFIN_CDBA: TIBStringField;
    RelatorioFIN_DEBA: TIBStringField;
    RelatorioFIN_VALO: TIBBCDField;
    RelatorioFIN_VPAG: TIBBCDField;
    RelatorioFIN_VPEN: TIBBCDField;
    RelatorioFIN_VMUL: TIBBCDField;
    RelatorioFIN_PMUL: TIBBCDField;
    RelatorioFIN_VJUR: TIBBCDField;
    RelatorioFIN_PJUR: TIBBCDField;
    RelatorioFIN_VDES: TIBBCDField;
    RelatorioFIN_PDES: TIBBCDField;
    RelatorioFIN_PCOM: TIBBCDField;
    RelatorioFIN_VCOM: TIBBCDField;
    RelatorioFIN_VENC: TIBBCDField;
    RelatorioFIN_OBSE: TMemoField;
    RelatorioFIN_VFAT: TIBBCDField;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrppag_com: Tqrppag_com;

implementation

uses uPrincipal, bPrincipal,
  pExporta, prelatorio_geral;

{$R *.DFM}

Constructor Tqrppag_com.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure Tqrppag_com.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            { Cabeçalho }
            RECRelatorio.Titulo := 'Comissão de Vendas de '+IFThen(frmrelatorio_geral.cbPAG_COM_TREL.Tag = 0,'Vendedores','Representantes');
            oReportPageHeader_(Self,RECRelatorio);
          end;

          procedure _Select;
          begin
            with frmrelatorio_geral do
            begin
              qrlass1.Caption := RECParametros.EP_NO;
              qrlass2.Caption := cbPAG_COM_TREL.Hint;

              if cbPAG_COM_TREL.Tag = 0 then
              begin
                qrppag_com.qrpcab.Expression  := 'relatorio.FIN_VEND';
                qrppag_com.qrpsub.Expression  := 'relatorio.FIN_VEND';
                qrppag_com.qrdbdrep.DataField := 'FIN_VEND';
                qrppag_com.qrdbvend.DataField := 'FIN_DREP';
                qrppag_com.qrlvend.Caption    := 'Representante';
              end else
              begin
                qrppag_com.qrpcab.Expression  := 'relatorio.FIN_DREP';
                qrppag_com.qrpsub.Expression  := 'relatorio.FIN_DREP';
                qrppag_com.qrdbdrep.DataField := 'FIN_DREP';
                qrppag_com.qrdbvend.DataField := 'FIN_VEND';
                qrppag_com.qrlvend.Caption    := 'Vendedor';
              end;

              { Select Relatório }
              oOTransact(TSEdicao);
              with qrppag_com.relatorio do
              begin
                SQL.Clear;
                SQL.Add('SELECT * FROM FIN_PAG');
                if cbPAG_COM_TREL.Tag = 0 then
                SQL.Add('ORDER BY FIN_VEND,FIN_DOCT') else
                SQL.Add('ORDER BY FIN_DREP,FIN_DOCT');
                Open;
              end;

              qrppag_com.qrldata.Caption := cbPAG_COM_DESC.Hint;
              if cbPAG_COM_DESC.Hint = 'Pagamento' then
              qrppag_com.qrdbdata.DataField := 'FIN_DCAD';

              qrppag_com.qrltipo.Caption  := frmrelatorio_geral.cbPAG_COM_DATA.Hint;
              qrppag_com.qrltotal.Caption := 'Total '+IFThen(frmrelatorio_geral.cbPAG_COM_DATA.Tag = 0,'Pago','Faturado');

              with qrppag_com.QSEdicao do
              begin
                SQL.Clear;
                SQL.Add('SELECT SUM(FIN_VCOM) FROM FIN_PAG');
                Open;
              end;

              qrppag_com.qrlper.Caption := trim(dxDT1.Hint)+' ate '+trim(dxDT2.Hint);
            end;  
          end;
begin
  { Realiza consistencia }
  _Report;
  _Select;

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

end;

procedure Tqrppag_com.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);
    oCTransact(TSEdicao);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrppag_com);
  end;

end;

procedure Tqrppag_com.RelatorioCalcFields(DataSet: TDataSet);
begin
  RelatorioC_DCAD.Value := FormatDateTime('dd/mm/yy',RelatorioFIN_DCAD.AsDateTime);
end;

end.
