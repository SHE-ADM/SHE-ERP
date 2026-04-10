unit qFicha_Tecnica;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QRCtrls, IBDatabase, IBStoredProc,
  DB, IBCustomDataSet, IBQuery, QuickRpt, math, jpeg, QRPDFFilt, QRExport,
  QRMBCtrls;

type
  TqrpFicha_Tecnica = class(TQuickRep)
    QRBFKCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    Relatorio: TIBQuery;
    QRSComposicao_Titulo: TQRShape;
    QRLComposicao_Titulo: TQRLabel;
    QRLGramatura: TQRLabel;
    QRDGramatura: TQRDBText;
    QRSFKIMG: TQRShape;
    QRLFoto_Titulo: TQRLabel;
    QRIFKIMG: TQRImage;
    QRSINFADCAD_Titulo: TQRShape;
    TRelatorio: TIBTransaction;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRSComposicao: TQRShape;
    QRBRodape: TQRBand;
    QRLRodapeSelectSQL: TQRLabel;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapePagina: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText13: TQRDBText;
    QRDFKILA1_MINI: TQRDBText;
    QRShape13: TQRShape;
    QRIFKILA1_MINI: TQRImage;
    DTSRelatorio: TDataSource;
    FKILA: TIBQuery;
    DTSFKILA: TDataSource;
    FKIMG: TIBQuery;
    DTSFKIMG: TDataSource;
    QRBCabecalho: TQRBand;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRDDescricao: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape1: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape7: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRShape8: TQRShape;
    QRLabel15: TQRLabel;
    QRShape9: TQRShape;
    QRIFKILA2_MINI: TQRImage;
    QRDFKILA2_MINI: TQRDBText;
    QRIFKILA3_MINI: TQRImage;
    QRDFKILA3_MINI: TQRDBText;
    QRIFKILA4_MINI: TQRImage;
    QRDFKILA4_MINI: TQRDBText;
    QRIFKILA5_MINI: TQRImage;
    QRDFKILA5_MINI: TQRDBText;
    QRIFKILA6_MINI: TQRImage;
    QRDFKILA6_MINI: TQRDBText;
    QRIFKILA7_MINI: TQRImage;
    QRDFKILA7_MINI: TQRDBText;
    QRShape11: TQRShape;
    QRLabel18: TQRLabel;
    QRShape12: TQRShape;
    FKCMP: TIBQuery;
    DTSFKCMP: TDataSource;
    QRLFKCMP_L1_C1: TQRLabel;
    QRLFKCMP_L1_C2: TQRLabel;
    QRLFKCMP_L2_C1: TQRLabel;
    QRLFKCMP_L2_C2: TQRLabel;
    QRLFKCMP_L3_C1: TQRLabel;
    QRLFKCMP_L3_C2: TQRLabel;
    QRLFKCMP_L4_C1: TQRLabel;
    QRLFKCMP_L4_C2: TQRLabel;
    QRLFKCMP_L5_C1: TQRLabel;
    QRLFKCMP_L5_C2: TQRLabel;
    QRLFKCMP_L6_C1: TQRLabel;
    QRLFKCMP_L6_C2: TQRLabel;
    QRLFKCMP_L7_C1: TQRLabel;
    QRLFKCMP_L7_C2: TQRLabel;
    QRShape16: TQRShape;
    QRLABNT_SIL: TQRLabel;
    QRLabel19: TQRLabel;
    QRDABNT_DIM: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape10: TQRShape;
    QRLabel26: TQRLabel;
    QRSINFADCAD_BORDA: TQRShape;
    QRMINFADCAD: TQRDBRichText;
    QRShape19: TQRShape;
    QRShape17: TQRShape;
    QRLabel27: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRDABNT_SIL: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape14: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    FKILAID: TLargeintField;
    FKILAILA_INS1: TIBStringField;
    FKILAILA_JPG1: TBlobField;
    FKILAILA_INS2: TIBStringField;
    FKILAILA_JPG2: TBlobField;
    FKILAILA_INS3: TIBStringField;
    FKILAILA_JPG3: TBlobField;
    FKILAILA_INS4: TIBStringField;
    FKILAILA_JPG4: TBlobField;
    FKILAILA_INS5: TIBStringField;
    FKILAILA_JPG5: TBlobField;
    FKILAILA_INS6: TIBStringField;
    FKILAILA_JPG6: TBlobField;
    FKILAILA_INS7: TIBStringField;
    FKILAILA_JPG7: TBlobField;
    FKILAILA_INS8: TIBStringField;
    FKILAILA_JPG8: TBlobField;
    FKIMGIMG_PAD: TBlobField;
    RelatorioID: TIntegerField;
    RelatorioIDAK: TLargeintField;
    RelatorioARTIGO: TIBStringField;
    RelatorioNCM: TIBStringField;
    RelatorioPIPI: TIBStringField;
    RelatorioDECP: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioUCON: TIBStringField;
    RelatorioDECOL: TIBStringField;
    RelatorioPESO: TIBBCDField;
    RelatorioPSCN: TIBBCDField;
    RelatorioMETRO: TIBBCDField;
    RelatorioREND: TIBBCDField;
    RelatorioGRAM: TIBBCDField;
    RelatorioD_GRAM: TIBStringField;
    RelatorioLARU: TIBBCDField;
    RelatorioLART: TIBBCDField;
    RelatorioELAL: TIBBCDField;
    RelatorioELAC: TIBBCDField;
    RelatorioENCL: TIBBCDField;
    RelatorioENCC: TIBBCDField;
    RelatorioD_ENCO: TIBStringField;
    RelatorioD_ABNT: TIBStringField;
    RelatorioFPAIS: TIBStringField;
    RelatorioINFADCAD: TMemoField;
    RelatorioINFADCAT: TMemoField;
    FKCMPDESCRICAO: TIBStringField;
    FKCMPQTDE: TIBBCDField;
    FKCMPMAX_LENGTH: TIntegerField;
    RelatorioCMP_PAD: TIBStringField;
    FKCMPID: TLargeintField;
    RelatorioDEST: TIBStringField;
    QRLDTEM: TQRLabel;
    FKIMGID: TLargeintField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioBeforeOpen(DataSet: TDataSet);
    procedure RelatorioAfterClose(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpFicha_Tecnica: TqrpFicha_Tecnica;

implementation

uses uPrincipal,
  pExporta;

{$R *.DFM}

Constructor TqrpFicha_Tecnica.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;
  RECRelatorio.WhereORAnd := 'WHERE ';

  inherited Create(AOwner);
end;

procedure TqrpFicha_Tecnica.WinControlFormCreate(Sender: TObject);
          procedure _Composicao;
          var
            i,
            wb: Integer;
          begin
            i  := 0;
            wb := 0;

            repeat
              if not FKCMP.Eof then
              begin
                inc(i);

                { Composição Base }
                if TQRLabel(FindComponent(Format('QRLFKCMP_L%d_C1',[i]))) <> Nil then
                begin
                  TQRLabel(FindComponent(Format('QRLFKCMP_L%d_C1',[i]))).Enabled := True;
                  TQRLabel(FindComponent(Format('QRLFKCMP_L%d_C1',[i]))).Caption := FKCMPDESCRICAO.AsString;
                  TQRLabel(FindComponent(Format('QRLFKCMP_L%d_C1',[i]))).Width   := FKCMPMAX_LENGTH.AsInteger * 8;

                  if TQRLabel(FindComponent(Format('QRLFKCMP_L%d_C1',[i]))).Width > wb then
                     wb := TQRLabel(FindComponent(Format('QRLFKCMP_L%d_C1',[i]))).Width;
                end;

                { Quantidade }
                if TQRLabel(FindComponent(Format('QRLFKCMP_L%d_C2',[i]))) <> Nil then
                begin
                  TQRLabel(FindComponent(Format('QRLFKCMP_L%d_C2',[i]))).Enabled := True;
                  TQRLabel(FindComponent(Format('QRLFKCMP_L%d_C2',[i]))).Caption := FormatFloat('0.00 %',FKCMPQTDE.AsFloat);
                end;

                FKCMP.Next;
              end;
            until FKCMP.Eof;

            { Quantidade }
            QRLFKCMP_L1_C2.Left := QRLFKCMP_L1_C1.Left + wb + 10;
          end;

          procedure _Report;
          begin
            { Cabeçalho }
            RECRelatorio.Titulo := ReportTitle;
            oReportPageHeader_(Self,RECRelatorio);

            { Data de Emissão }
            QRLDTEM.Caption := FormatDateTime('dd/mm/yy hh:mm',Now);
          end;

          procedure _Select;
          begin
            oOTransact(TRelatorio);

            FKIMG.Prepare;
            FKILA.Prepare;
            FKCMP.Prepare;

            Relatorio.Close;
            Relatorio.ParamByName('ARTIGO').AsString := RECRelatorio.PEC1ConsultaText;
            Relatorio.Prepare;
            Relatorio.Open;

            QRDABNT_SIL.Caption := RECParametros.PRO_ABNT_SIL+'.';
            QRDABNT_DIM.Caption := RECParametros.PRO_ABNT_DIM+'.';

            _Composicao;
         end;
begin
  with qrpFicha_Tecnica do
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
      WinControlFormDestroy(qrpFicha_Tecnica);
    end;
end;

procedure TqrpFicha_Tecnica.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpFicha_Tecnica);
  end;
end;

procedure TqrpFicha_Tecnica.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  oLoadJPG(FKIMGIMG_PAD,QRIFKIMG.Picture);

  _oLoadJPG(FKIMGID ,FKIMGIMG_PAD,QRIFKIMG,True);


  oLoadJPG(FKILAILA_JPG1,QRIFKILA1_MINI.Picture,False);
  oLoadJPG(FKILAILA_JPG2,QRIFKILA2_MINI.Picture,False);
  oLoadJPG(FKILAILA_JPG3,QRIFKILA3_MINI.Picture,False);
  oLoadJPG(FKILAILA_JPG4,QRIFKILA4_MINI.Picture,False);
  oLoadJPG(FKILAILA_JPG5,QRIFKILA5_MINI.Picture,False);
  oLoadJPG(FKILAILA_JPG6,QRIFKILA6_MINI.Picture,False);
  oLoadJPG(FKILAILA_JPG7,QRIFKILA7_MINI.Picture,False);
//  oLoadJPG(FKILAILA_JPG8,QRIFKILA8_MINI.Picture,False);

  { Composição }
  QRLFKCMP_L2_C2.Left := QRLFKCMP_L1_C2.Left;
  QRLFKCMP_L3_C2.Left := QRLFKCMP_L1_C2.Left;
  QRLFKCMP_L4_C2.Left := QRLFKCMP_L1_C2.Left;
  QRLFKCMP_L5_C2.Left := QRLFKCMP_L1_C2.Left;
  QRLFKCMP_L6_C2.Left := QRLFKCMP_L1_C2.Left;
  QRLFKCMP_L7_C2.Left := QRLFKCMP_L1_C2.Left;
end;

procedure TqrpFicha_Tecnica.RelatorioBeforeOpen(DataSet: TDataSet);
begin
  if FKIMG.State = dsInactive then FKIMG.Open;
  if FKILA.State = dsInactive then FKILA.Open;
  if FKCMP.State = dsInactive then FKCMP.Open;
end;

procedure TqrpFicha_Tecnica.RelatorioAfterClose(DataSet: TDataSet);
begin
  if FKIMG.State = dsBrowse then FKIMG.Close;
  if FKILA.State = dsBrowse then FKILA.Close;
  if FKCMP.State = dsBrowse then FKCMP.Close;
end;

end.
