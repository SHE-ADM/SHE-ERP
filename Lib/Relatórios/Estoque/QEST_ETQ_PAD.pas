unit qEST_ETQ_PAD;

interface


uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IBSQL, IDGlobal, AJBarcode, ACBrBarCode;


type
  TqrpEST_ETQ_PAD = class(TQuickRep)
    QConsulta: TIBQuery;
    Relatorio: TIBQuery;
    QRBDetalhe: TQRBand;
    QRSPrincipal: TQRShape;
    QRITituloLogo: TQRImage;
    QRSTitulo: TQRShape;
    QRLCDEmpresa: TQRLabel;
    QRLCDCNPJ: TQRLabel;
    QRDBDescricao: TQRDBText;
    QRLProduto: TQRLabel;
    QRDBProduto: TQRDBText;
    QRSL1: TQRShape;
    QRLCor: TQRLabel;
    QRDBCor: TQRDBText;
    QRSL1C1: TQRShape;
    QRSL1C2: TQRShape;
    QRSL3: TQRShape;
    QRSL2: TQRShape;
    QRLEtiqueta: TQRLabel;
    QRLQuantidade: TQRLabel;
    QRDBQuantidade: TQRDBText;
    QRLRendimento: TQRLabel;
    QRDBRendimento: TQRDBText;
    QRDBGramatura: TQRDBText;
    QRLGramatura: TQRLabel;
    QRLLargUtil: TQRLabel;
    QRDBLargTotal: TQRDBText;
    QRLLargTotal: TQRLabel;
    QRDBComposicao: TQRDBText;
    QRLComposicao: TQRLabel;
    QRSL5C1: TQRShape;
    QRDBILavagem1: TQRDBImage;
    QRDBILavagem2: TQRDBImage;
    QRDBILavagem3: TQRDBImage;
    QRDBILavagem4: TQRDBImage;
    QRDBILavagem5: TQRDBImage;
    QRDBILavagem6: TQRDBImage;
    QRDBILavagem7: TQRDBImage;
    QRIProduto: TQRImage;
    QRLLavagem: TQRLabel;
    QRDBLargUtil: TQRDBText;
    QRSLogo: TQRShape;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRLabel1: TQRLabel;
    QRDUCOM: TQRDBText;
    QRShape3: TQRShape;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    QRShape4: TQRShape;
    QRLCPRO: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape2: TQRShape;
    QRShape8: TQRShape;
    QRIEtiqueta: TQRImage;
    QRShape9: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    TCadastro: TIBTransaction;
    RelatorioCDRO: TLargeintField;
    RelatorioCDET: TLargeintField;
    RelatorioLOTE: TIBStringField;
    RelatorioD_DERO: TIBStringField;
    RelatorioSKU: TIBStringField;
    RelatorioCEAN: TIBStringField;
    RelatorioD_DECP: TIBStringField;
    RelatorioCMP_PAD: TIBStringField;
    RelatorioN_QTDE: TIBStringField;
    RelatorioD_QTDE: TIBStringField;
    RelatorioUCON: TIBStringField;
    RelatorioMREND: TIBBCDField;
    RelatorioMGRAMA: TIBBCDField;
    RelatorioMLGRU: TIBBCDField;
    RelatorioMLGRT: TIBBCDField;
    RelatorioILA_BMP1: TBlobField;
    RelatorioILA_BMP2: TBlobField;
    RelatorioILA_BMP3: TBlobField;
    RelatorioILA_BMP4: TBlobField;
    RelatorioILA_BMP5: TBlobField;
    RelatorioILA_BMP6: TBlobField;
    RelatorioILA_BMP7: TBlobField;
    RelatorioILA_BMP8: TBlobField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private
    RECRelatorios: TRECRelatorios;
    SQLTab   ,SQLTabIT,
    SQLJoinC ,SQLJoinF,SQLJoinR,
    SQLIT1   ,SQLIT2  ,SQLIT3,SQLIT4,SQLIT5,
    SQLVL1   ,SQLVL2  ,SQLVL3,
    SQLWhereB,
    SQLWhere1,SQLWhere2,SQLWhere3,SQLWhere4,SQLWhere5,
    SQLWhereD,
    SQLPK    ,SQLFK: String;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpEST_ETQ_PAD: TqrpEST_ETQ_PAD;

implementation

uses uPrincipal, bPrincipal,
  pExporta;

{$R *.DFM}

Constructor TqrpEST_ETQ_PAD.Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios);
begin
  Initialize(RECRelatorios);
  FillChar(RECRelatorios,SizeOf(RECRelatorios),0);
  RECRelatorios := ARECRelatorios;

  { Parâmetros Filtro }
  SQLTab    := ''; //Tabela Principal
  SQLTabIT  := ''; //Tabela Secundária
  SQLJoinC  := ''; //Join Clientes
  SQLJoinF  := ''; //Join Fornecedores;
  SQLJoinR  := ''; //Join Representanes;
  SQLIT1    := ''; //Campos Diversos
  SQLIT2    := ''; //Campos Diversos
  SQLIT3    := ''; //Campos Diversos
  SQLIT4    := ''; //Campos Diversos
  SQLIT5    := ''; //Campos Diversos
  SQLVL1    := ''; //Campos Totais
  SQLVL2    := ''; //Campos Totais
  SQLVL3    := ''; //Campos Totais
  SQLWhereB := ''; //Where e/ou Between
  SQLWhere1 := ''; //Where e/ou And
  SQLWhere2 := ''; //Where e/ou And
  SQLWhere3 := ''; //Where e/ou And
  SQLWhere4 := ''; //Where e/ou And
  SQLWhere5 := ''; //Where e/ou And
  SQLWhereD := ''; //Where e/ou And Datas
  SQLPK     := ''; //Primary Key
  SQLFK     := ''; //Foregin Key

  inherited Create(AOwner);
end;

procedure TqrpEST_ETQ_PAD.WinControlFormCreate(Sender: TObject);
          { Propriedades QReport }
          procedure _Report;
          begin
            { Tipo de Impressão }
            RECRelatorios.PrintName := 'Etiquetas';

            { Define Impressora }
            oReportPageHeader_(Self,RECRelatorios);

            { Cabeçalho }
            QRITituloLogo.Picture.Assign(RECParametros.IMG_JPG_ETQ.Picture);

            QRLCDEmpresa.Caption := RECParametros.EP_NO;
            QRLCDCNPJ.Caption    := 'CNPJ: '+RECParametros.CNPJ_MASK;

            { Filtros Between }
            if (RECRelatorios.PEC1CodigoText <> 'TODOS') and (RECRelatorios.PEC2CodigoText <> 'TODOS') then
            SQLWhereB := 'AND PK.CDET BETWEEN '''+RECRelatorios.PEC1CodigoText+''' AND '''+RECRelatorios.PEC2CodigoText+'''';

            { Temporário }
            if RECRelatorios.IEC1ConsultaField = 'CDRO' then
            RECRelatorios.IEC1ConsultaField := 'PK.CDRO';

            if Pos('ARTIGO',RECRelatorios.IEC3ConsultaField) > 0 then
            RECRelatorios.IEC3ConsultaField := 'PK.ARTIGO' else

            if Pos('SKU',RECRelatorios.IEC3ConsultaField) > 0 then
            RECRelatorios.IEC3ConsultaField := 'PK.SKU';

            { Filtros Consultas }
            if (RECRelatorios.PEC1ConsultaText <> 'TODOS') then
            SQLWhere1 := 'AND '+RECRelatorios.IEC1ConsultaField+' '+RECRelatorios.IEC1ConsultaWhere+' '''+RECRelatorios.IEC1ConsultaLike1+Trim(RECRelatorios.PEC1ConsultaText)+RECRelatorios.IEC1ConsultaLike2+'''';

            if (RECRelatorios.PEC2ConsultaText <> 'TODOS') then
            SQLWhere2 := 'AND '+RECRelatorios.IEC2ConsultaField+' '+RECRelatorios.IEC2ConsultaWhere+' '''+RECRelatorios.IEC2ConsultaLike1+Trim(RECRelatorios.PEC2ConsultaText)+RECRelatorios.IEC2ConsultaLike2+'''';

            if (RECRelatorios.PEC3ConsultaText <> 'TODOS') then
            SQLWhere3 := 'AND '+RECRelatorios.IEC3ConsultaField+' '+RECRelatorios.IEC3ConsultaWhere+' '''+RECRelatorios.IEC3ConsultaLike1+Trim(RECRelatorios.PEC3ConsultaText)+RECRelatorios.IEC3ConsultaLike2+'''';

            if (RECRelatorios.PEC4ConsultaText <> 'TODOS') then
            SQLWhere4 := 'AND '+RECRelatorios.IEC4ConsultaField+' '+RECRelatorios.IEC4ConsultaWhere+' '''+RECRelatorios.IEC4ConsultaLike1+Trim(RECRelatorios.PEC4ConsultaText)+RECRelatorios.IEC4ConsultaLike2+'''';

            { Filtros Datas }
            if not oEmpty(RECRelatorios.IEDataField) then
            SQLWhereD := 'AND PK.DTRO BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorios.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorios.IEDataText2)+'''';
          end;

          procedure _Select;
          begin
            { Monta Relatório }
            oOTransact(TCadastro);
            with Relatorio do
            begin
              Close;
              SQL.Clear;

              SQL.Add('SELECT PK.CDRO,PK.CDET,PK.LOTE,PK.CDRO || ''_'' || IIF(NOT FEMPTY(PK.CTNR),PK.CTNR,LPad(Extract(Day FROM PK.DTRO),2,0) || ''-'' || LPad(Extract(Month FROM PK.DTRO),2,0) || ''-'' || RIGHT(LPad(Extract(Year FROM PK.DTRO),4,0),2)) AS D_DERO,');
              SQL.Add('       CP.SKU ,CP.CEAN,TRIM(CP.DECP    || '' '' || COALESCE(CP.DGCP,'''')) AS D_DECP,CP.CMP_PAD,');
              SQL.Add('       TRIM(CAST(FFMTINT(PK.QTDE)      || '' '' || COALESCE(CP.UCOM,'''')  AS VARCHAR(30))) AS N_QTDE,');
              SQL.Add('       TRIM(REPLACE(REPLACE(CAST(CAST(PK.QTDE AS NUMERIC(12,2)) || '' '' || COALESCE(CP.UCOM,'''') AS VARCHAR(30)),''.'','',''),'',00'','''')) AS D_QTDE,');
              SQL.Add('       CP.UCON,CP.MREND,CP.MGRAMA,CP.MLGRU,CP.MLGRT,');
              SQL.Add('       IL.ILA_BMP1,IL.ILA_BMP2,IL.ILA_BMP3,IL.ILA_BMP4,IL.ILA_BMP5,IL.ILA_BMP6,IL.ILA_BMP7,IL.ILA_BMP8');

              SQL.Add('FROM ' + IFThen(RECRelatorios.Tipo = 'ANTECIPADO','CAD_PRO_ENI','CAD_PRO_EST') + ' AS PK');
              SQL.Add('JOIN     CAD_PRO             AS CP ON (CP.CP_ID = PK.CP_ID)');
              SQL.Add('LEFT     JOIN VW_CAD_PRO_ILA AS IL ON (IL.ID    = PK.IDAK )');

              SQL.Add('WHERE PK.REOP = ''E''');

              { Visualizar apenas etiquetas que ainda não foram separadas }
              if (RECRElatorios.Status <> 'TODOS') and (RECRelatorios.Tipo <> 'ANTECIPADO') then
              SQL.Add('AND PK.IDPK = 0'); {SQL.Add('AND PK.CDSP > 0'); }

              { Where conforme filtro selecionado }
              SQL.Add(SQLWhereB);
              SQL.Add(SQLWhere1);
              SQL.Add(SQLWhere2);
              SQL.Add(SQLWhere3);
              SQL.Add(SQLWhere4);
              SQL.Add(SQLWhereD);

              SQL.Add('ORDER BY PK.CDET');
              Open;
            end;
          end;
begin
 with qrpEST_ETQ_PAD do
    try
      _Report;
      _Select;

      if Relatorio.RecNo > 0 then
      begin
        Prepare;
        case RECRelatorios.PrintTAG of
          0: PreviewModal;
          1: Print;

          { PDF }
          2: try
               ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
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
               ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
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
               ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + ReportTitle + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
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
      WinControlFormDestroy(qrpEST_ETQ_PAD);
    end;
end;

procedure TqrpEST_ETQ_PAD.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TCadastro);
    oCTransact(TEdicao);

    Finalize(RECRelatorios);
    FillChar(RECRelatorios,SizeOf(RECRelatorios),0);
  finally
    oPRN_EXE(RECRelatorios.Handle,'Relatórios');
    FreeAndNil(qrpEST_ETQ_PAD);
  end;
end;

procedure TqrpEST_ETQ_PAD.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   BMP : TBitmap;
   CDET: String;
begin
  if not Relatorio.Fields[0].IsNull then
  begin
    QRDBComposicao.Font.Name := IFThen(Length(RelatorioCMP_PAD.AsString) >= 55,'Arial Narrow','Arial');
    QRDBComposicao.Font.Size := IFThen(Length(RelatorioCMP_PAD.AsString) >= 55,07,08);
    QRDBDescricao.Font.Name  := IFThen(Length(RelatorioD_DECP.AsString ) >= 55,'Arial Narrow','Arial');
    QRDUCOM.Font.Name        := IFThen(Length(RelatorioUCON.AsString   ) >= 18,'Arial Narrow','Arial');
    QRDUCOM.Font.Size        := IFThen(Length(RelatorioUCON.AsString   ) >= 20,07,08);
    QRDUCOM.Top              := IFThen(Length(RelatorioUCON.AsString   ) >= 20,76,75);

    BMP  := Nil;
    CDET := '789' + RECParametros.EP_ID + oStrZero(RelatorioCDET.AsInteger,8);
    CDET := CDET  + oRETEAN13(CDET);

    { Etiqueta }
    with FrmPrincipal.ACBrBarCode do
    try
      Width  := QRIEtiqueta.Width;
      Height := QRIEtiqueta.Height;

      Transparent      := True;
      Typ              := bcCodeEAN13;
      ShowText         := bcoBoth;
      ShowTextPosition := stpBottomCenter;
      Text             := CDET;

      BMP := TBitmap.Create;
      BMP.Width  := QRIEtiqueta.Width;
      BMP.Height := QRIEtiqueta.Height;

      DrawBarcode(BMP.Canvas);

      QRIEtiqueta.Picture.Bitmap := BMP;
    finally
      FreeAndNil(BMP);
    end;

    { Produto }
    with FrmPrincipal.ACBrBarCode do
    try
      Width  := QRIEtiqueta.Width;
      Height := QRIEtiqueta.Height;

      Transparent      := True;
      Typ              := bcCodeEAN13;
      ShowText         := bcoBoth;
      ShowTextPosition := stpBottomCenter;
      Text             := RelatorioCEAN.AsString;

      BMP := TBitmap.Create;
      BMP.Width  := QRIProduto.Width;
      BMP.Height := QRIProduto.Height;

      DrawBarcode(BMP.Canvas);

      QRIProduto.Picture.Bitmap := BMP;
    finally
      FreeAndNil(BMP);
    end;
  end;
end;

procedure TqrpEST_ETQ_PAD.QuickRepAfterPrint(Sender: TObject);
begin
  try
    oOTransact(TEdicao);
    Relatorio.First;
    while not Relatorio.Eof do
    begin
      with SQLEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_ENI');
        SQL.Add('SET    LOG_PRN_IDEV = ''' + RECUsuarios.Id +  ''',');
        SQL.Add('       LOG_PRN_CDEV = ''' + IntToStr(qrpEST_ETQ_PAD.Tag) + ''',');
        SQL.Add('       LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
        SQL.Add('       LOG_PRN_IP   = ''' + RECParametros.IP       + ''',');
        SQL.Add('       LOG_PRN_HOST = ''' + RECParametros.HOST     + '''' );
        SQL.Add('WHERE  CDET         = ''' + RelatorioCDET.AsString + '''' );
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('UPDATE CAD_PRO_EST');
        SQL.Add('SET    LOG_PRN_IDEV = ''' + RECUsuarios.Id + ''',');
        SQL.Add('       LOG_PRN_CDEV = ''' + IntToStr(qrpEST_ETQ_PAD.Tag) + ''',');
        SQL.Add('       LOG_PRN_DTEV = CURRENT_TIMESTAMP,');
        SQL.Add('       LOG_PRN_IP   = ''' + RECParametros.IP       + ''',');
        SQL.Add('       LOG_PRN_HOST = ''' + RECParametros.HOST     + '''' );
        SQL.Add('WHERE  CDET         = ''' + RelatorioCDET.AsString + '''' );
        ExecQuery;
      end;
      Relatorio.Next;
    end;  
  finally
    oCTransact(TEdicao);
  end;
end;

end.
