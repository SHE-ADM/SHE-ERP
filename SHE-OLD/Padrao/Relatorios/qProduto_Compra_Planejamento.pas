unit qProduto_Compra_Planejamento;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     DateUtils;

type
  TqrpProduto_Compra_Planejamento = class(TQuickRep)
    QRBFKCabecalho: TQRBand;
    QRBDetalhes: TQRBand;
    QRBSumario: TQRBand;
    QRD_PRINCIPAL: TQRDBText;
    QRD_QT01: TQRDBText;
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRSSumario: TQRShape;
    QRD_QT02: TQRDBText;
    QRD_QT03: TQRDBText;
    QRD_QT04: TQRDBText;
    QRD_QT05: TQRDBText;
    QRD_QT06: TQRDBText;
    QRD_QT07: TQRDBText;
    QRD_QT08: TQRDBText;
    QRD_QT09: TQRDBText;
    QRD_QT10: TQRDBText;
    QRD_QT11: TQRDBText;
    QRD_QT12: TQRDBText;
    QRD_QTDE: TQRDBText;
    QRD_QTPE: TQRDBText;
    QRD_MEDI: TQRDBText;
    QRD_ESMI: TQRDBText;
    QRD_QTCO: TQRDBText;
    QRD_QTEP: TQRDBText;
    QRD_SEGU: TQRDBText;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel17: TQRLabel;
    QRShape19: TQRShape;
    QRLabel21: TQRLabel;
    RelatorioCM_PRINCIPAL: TIBStringField;
    RelatorioCM_CST: TIBStringField;
    RelatorioCM_QTDE: TLargeintField;
    RelatorioCM_QTPC: TLargeintField;
    RelatorioCM_MEDI: TLargeintField;
    RelatorioCM_SEGU: TIBBCDField;
    RelatorioCM_QTPE: TLargeintField;
    RelatorioCM_PCPE: TLargeintField;
    RelatorioCM_QTCO: TLargeintField;
    RelatorioCM_PCCO: TLargeintField;
    RelatorioCM_QTEP: TLargeintField;
    RelatorioCM_PCEP: TLargeintField;
    RelatorioCM_ES01: TSmallintField;
    RelatorioCM_ES02: TSmallintField;
    RelatorioCM_ES03: TSmallintField;
    RelatorioCM_ES04: TSmallintField;
    RelatorioCM_ES05: TSmallintField;
    RelatorioCM_ES06: TSmallintField;
    RelatorioCM_ES07: TSmallintField;
    RelatorioCM_ES08: TSmallintField;
    RelatorioCM_ES09: TSmallintField;
    RelatorioCM_ES10: TSmallintField;
    RelatorioCM_ES11: TSmallintField;
    RelatorioCM_ES12: TSmallintField;
    RelatorioCM_QT01: TLargeintField;
    RelatorioCM_QT02: TLargeintField;
    RelatorioCM_QT03: TLargeintField;
    RelatorioCM_QT04: TLargeintField;
    RelatorioCM_QT05: TLargeintField;
    RelatorioCM_QT06: TLargeintField;
    RelatorioCM_QT07: TLargeintField;
    RelatorioCM_QT08: TLargeintField;
    RelatorioCM_QT09: TLargeintField;
    RelatorioCM_QT10: TLargeintField;
    RelatorioCM_QT11: TLargeintField;
    RelatorioCM_QT12: TLargeintField;
    RelatorioCM_ESMI: TLargeintField;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRL_PRINCIPAL: TQRLabel;
    QRL_MESES: TQRLabel;
    QRL_DT01: TQRLabel;
    QRL_DT02: TQRLabel;
    QRL_DT03: TQRLabel;
    QRL_DT04: TQRLabel;
    QRL_DT05: TQRLabel;
    QRL_DT07: TQRLabel;
    QRL_DT06: TQRLabel;
    QRL_DT08: TQRLabel;
    QRL_DT09: TQRLabel;
    QRL_DT10: TQRLabel;
    QRL_DT11: TQRLabel;
    QRL_DT12: TQRLabel;
    QRL_ANUAL: TQRLabel;
    QRL_MEDI: TQRLabel;
    QRL_ESMI: TQRLabel;
    QRL_QTPE: TQRLabel;
    QRL_QTCO: TQRLabel;
    QRL_QTEP: TQRLabel;
    QRL_SEGU: TQRLabel;
    QRL_COMPRAS: TQRLabel;
    QRL_ESTOQUE: TQRLabel;
    QRL_VENDAS: TQRLabel;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    RelatorioCM_UCOM: TIBStringField;
    QRDBText1: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    RelatorioDEST: TIBStringField;
    RelatorioC_CM_PRINCIPAL: TStringField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalhesBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
    SQLIDEP,
    SQLDTXT,
    SQLFTXT,
    SQLWHERE,
    SQLLIKE1,
    SQLLIKE2,
    SQLDT1,
    SQLDT2,
    SQLFDT: String;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Compra_Planejamento: TqrpProduto_Compra_Planejamento;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpProduto_Compra_Planejamento.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Compra_Planejamento.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }
          end;

          procedure _Select;
          var
            ColMes: Integer;
            CM_PRINCIPAL: String;
          begin
            { Filtros Empresa }
            SQLIDEP := IntToStr(RECRelatorio.IDEP);

            { Filtros Códigos Between }
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') then
                RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption   +': '+RECRelatorio.PEC1CodigoText   +' '+RECRelatorio.PEC2CodigoCaption+': '+RECRelatorio.PEC2CodigoText+' ';

            { Filtros Gerais }
            if (RECRelatorio.PEC1ConsultaText <> 'TODOS') then
            begin
              SQLDTXT  := RECRelatorio.PEC1ConsultaText;
              SQLFTXT  := RECRelatorio.IEC1ConsultaField;
              SQLWHERE := RECRelatorio.IEC1ConsultaWhere;
              SQLLIKE1 := RECRelatorio.IEC1ConsultaLike1;
              SQLLIKE2 := RECRelatorio.IEC1ConsultaLike2;

              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            if (RECRelatorio.PEC2ConsultaText <> 'TODOS') and (RECRelatorio.IEC2ConsultaCaption <> 'Categorias') then
            begin
              SQLDTXT  := RECRelatorio.PEC2ConsultaText;
              SQLFTXT  := RECRelatorio.IEC2ConsultaField;
              SQLWHERE := RECRelatorio.IEC2ConsultaWhere;
              SQLLIKE1 := RECRelatorio.IEC2ConsultaLike1;
              SQLLIKE2 := RECRelatorio.IEC2ConsultaLike2;

              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if (RECRelatorio.PEC3ConsultaText <> 'TODOS') then
            begin
              SQLDTXT  := RECRelatorio.PEC3ConsultaText;
              SQLFTXT  := RECRelatorio.IEC3ConsultaField;
              SQLWHERE := RECRelatorio.IEC3ConsultaWhere;
              SQLLIKE1 := RECRelatorio.IEC3ConsultaLike1;
              SQLLIKE2 := RECRelatorio.IEC3ConsultaLike2;

              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            if (RECRelatorio.PEC4ConsultaText <> 'TODOS') then
            begin
              SQLDTXT  := RECRelatorio.PEC4ConsultaText;
              SQLFTXT  := RECRelatorio.IEC4ConsultaField;
              SQLWHERE := RECRelatorio.IEC4ConsultaWhere;
              SQLLIKE1 := RECRelatorio.IEC4ConsultaLike1;
              SQLLIKE2 := RECRelatorio.IEC4ConsultaLike2;

              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
            end;

            if oEmpty(SQLDTXT) then
            begin
              SQLDTXT := 'TODOS';
              SQLFTXT := 'ARTIGO';
            end;
              
            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              SQLDT1 := FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText1);
              SQLDT2 := FormatDateTime('mm/dd/yy',RECRelatorio.IEDataText2);
              SQLFDT := RECRelatorio.IEDataField;
              
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+ 'De '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            { Meses/Ano }
            QRL_DT01.Caption := LeftStr(oRETMesExtenso(Date)              ,3)+'/'+RightStr(IntToStr(YearOf(Date))              ,2);
            QRL_DT02.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-01)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-01))),2);
            QRL_DT03.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-02)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-02))),2);
            QRL_DT04.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-03)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-03))),2);
            QRL_DT05.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-04)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-04))),2);
            QRL_DT06.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-05)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-05))),2);
            QRL_DT07.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-06)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-06))),2);
            QRL_DT08.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-07)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-07))),2);
            QRL_DT09.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-08)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-08))),2);
            QRL_DT10.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-09)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-09))),2);
            QRL_DT11.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-10)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-10))),2);
            QRL_DT12.Caption := LeftStr(oRETMesExtenso(IncMonth(Date,-11)),3)+'/'+RightStr(IntToStr(YearOf(IncMonth(Date,-11))),2);

            { Pega Mês Atual }
            ColMes := oRETMes(Date);

            { Coluna 1 }
            QRD_QT01.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 2 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT02.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 3 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT03.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 4 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT04.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 5 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT05.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 6 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT06.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 7 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT07.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 8 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT08.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 9 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT09.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 10 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT10.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 11 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT11.DataField := 'CM_QT'+oStrZero(ColMes,2);

            { Coluna 12 }
            Dec(ColMes);
            if ColMes = 0 then ColMes := 12; { 12 = Coluna Ano Anterior }
            QRD_QT12.DataField := 'CM_QT'+oStrZero(ColMes,2);

            QRL_PRINCIPAL.Caption := RECRelatorio.Tipo;
            CM_PRINCIPAL:= IFThen(RECRelatorio.Tipo = 'Fornecedor','CM_DEFO',
                           IFThen(RECRelatorio.Tipo = 'Categoria' ,'CM_DECA','CM_PRODUTO'));

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              SQL.Clear;
              SQL.Add('SELECT '+CM_PRINCIPAL + ' AS CM_PRINCIPAL,CM_UCOM,CM_CST,DEST,');
              SQL.Add('         SUM(CM_ESMI) AS CM_ESMI,');
              SQL.Add('         SUM(CM_QTDE) AS CM_QTDE,SUM(CM_QTPC) AS CM_QTPC,');
              SQL.Add('         SUM(CM_MEDI) AS CM_MEDI,SUM(CM_SEGU) AS CM_SEGU,');
              SQL.Add('         SUM(CM_QTPE) AS CM_QTPE,SUM(CM_PCPE) AS CM_PCPE,');
              SQL.Add('         SUM(CM_QTCO) AS CM_QTCO,SUM(CM_PCCO) AS CM_PCCO,');
              SQL.Add('         SUM(CM_QTEP) AS CM_QTEP,SUM(CM_PCEP) AS CM_PCEP,');
              SQL.Add('         MAX(CM_ES01) AS CM_ES01,MAX(CM_ES02) AS CM_ES02,MAX(CM_ES03) AS CM_ES03,MAX(CM_ES04) AS CM_ES04,MAX(CM_ES05) AS CM_ES05,MAX(CM_ES06) AS CM_ES06,');
              SQL.Add('         MAX(CM_ES07) AS CM_ES07,MAX(CM_ES08) AS CM_ES08,MAX(CM_ES09) AS CM_ES09,MAX(CM_ES10) AS CM_ES10,MAX(CM_ES11) AS CM_ES11,MAX(CM_ES12) AS CM_ES12,');
              SQL.Add('         SUM(CM_QT01) AS CM_QT01,SUM(CM_QT02) AS CM_QT02,SUM(CM_QT03) AS CM_QT03,SUM(CM_QT04) AS CM_QT04,SUM(CM_QT05) AS CM_QT05,SUM(CM_QT06) AS CM_QT06,');
              SQL.Add('         SUM(CM_QT07) AS CM_QT07,SUM(CM_QT08) AS CM_QT08,SUM(CM_QT09) AS CM_QT09,SUM(CM_QT10) AS CM_QT10,SUM(CM_QT11) AS CM_QT11,SUM(CM_QT12) AS CM_QT12' );

              SQL.Add('FROM SP_REL_PRODUTO_COMPRA_PLAN (');
              SQL.Add(''''+SQLIDEP +''',');
              SQL.Add(''''+SQLDTXT +''',');
              SQL.Add(''''+SQLFTXT +''',');
              SQL.Add(''''+SQLWHERE+''',');
              SQL.Add(''''+SQLLIKE1+''',');
              SQL.Add(''''+SQLLIKE2+''',');
              SQL.Add(''''+SQLDT1  +''',');
              SQL.Add(''''+SQLDT2  +''',');
              SQL.Add(''''+SQLFDT  +'''' );
              SQL.Add(')');

              if (RECRelatorio.PEC2ConsultaText <> 'TODOS') and (RECRelatorio.IEC2ConsultaCaption = 'Categorias') then
                  SQL.Add('WHERE EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.PRO_CART = CM_ARTIGO AND '+RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+''')');

              SQL.Add('GROUP BY 1,2,3,4');
              SQL.Add('ORDER BY 1');

              Prepare;
              Open;
            end;
          end;
begin
  with qrpProduto_Compra_Planejamento do
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
      WinControlFormDestroy(qrpProduto_Compra_Planejamento);
    end;
end;

procedure TqrpProduto_Compra_Planejamento.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Compra_Planejamento);
  end;
end;

procedure TqrpProduto_Compra_Planejamento.QRBDetalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Relatorio.RecNo mod 2 = 0 then
     QRBDetalhes.Color := clBtnFace else QRBDetalhes.Color := clWhite;

  QRD_PRINCIPAL.Font.Size := IFThen(Length(RelatorioCM_PRINCIPAL.AsString) > 20,6,7);

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT01.DataField,2)).AsInteger = 0 then
  QRD_QT01.Font.Style := [fsBold] else QRD_QT01.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT02.DataField,2)).AsInteger = 0 then
  QRD_QT02.Font.Style := [fsBold] else QRD_QT02.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT03.DataField,2)).AsInteger = 0 then
  QRD_QT03.Font.Style := [fsBold] else QRD_QT03.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT04.DataField,2)).AsInteger = 0 then
  QRD_QT04.Font.Style := [fsBold] else QRD_QT04.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT05.DataField,2)).AsInteger = 0 then
  QRD_QT05.Font.Style := [fsBold] else QRD_QT05.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT06.DataField,2)).AsInteger = 0 then
  QRD_QT06.Font.Style := [fsBold] else QRD_QT06.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT07.DataField,2)).AsInteger = 0 then
  QRD_QT07.Font.Style := [fsBold] else QRD_QT07.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT08.DataField,2)).AsInteger = 0 then
  QRD_QT08.Font.Style := [fsBold] else QRD_QT08.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT09.DataField,2)).AsInteger = 0 then
  QRD_QT09.Font.Style := [fsBold] else QRD_QT09.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT10.DataField,2)).AsInteger = 0 then
  QRD_QT10.Font.Style := [fsBold] else QRD_QT10.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT11.DataField,2)).AsInteger = 0 then
  QRD_QT11.Font.Style := [fsBold] else QRD_QT11.Font.Style := [];

  if Relatorio.FieldByName('CM_ES'+RightStr(QRD_QT12.DataField,2)).AsInteger = 0 then
  QRD_QT12.Font.Style := [fsBold] else QRD_QT12.Font.Style := [];

  QRD_QTPE.Transparent := True;
  QRD_QTPE.Font.Color  := clBlack;
  QRD_QTPE.Color       := clWhite;

  QRD_ESMI.Enabled := False;
  if RelatorioCM_QTPE.AsInteger = 0 then
  begin
    QRD_QTPE.Transparent := False;
    QRD_QTPE.Font.Color  := clWhite;
    QRD_QTPE.Color       := clPurple;
  end else
  if RelatorioCM_ESMI.AsInteger > 0 then
  begin
    QRD_ESMI.Enabled := True;
    if (RelatorioCM_ESMI.AsInteger >= RelatorioCM_QTPE.AsInteger) then
    begin
      QRD_QTPE.Transparent := False;
      QRD_QTPE.Font.Color  := clWhite;
      QRD_QTPE.Color       := clRed;
    end else
    if ((RelatorioCM_ESMI.AsInteger * 1.5) >= RelatorioCM_QTPE.AsInteger) then
    begin
      QRD_QTPE.Transparent := False;
      QRD_QTPE.Font.Color  := clBlack;
      QRD_QTPE.Color       := $0080FFFF;
    end;
  end;

  QRD_SEGU.Font.Color := clBlack;
  QRD_SEGU.Color      := clWhite;
  if Pos(RelatorioCM_CST.AsString,'03') > 0 then
  begin
    if RelatorioCM_SEGU.AsFloat > 4 then
    begin
      QRD_SEGU.Font.Color := clWhite;
      QRD_SEGU.Color      := clBlue;
    end else
    if RelatorioCM_SEGU.AsFloat = 1 then
    begin
      QRD_SEGU.Font.Color := clBlack;
      QRD_SEGU.Color      := clYellow;
    end else
    if ((RelatorioCM_SEGU.AsFloat < 1) and (RelatorioCM_SEGU.AsFloat > 0)) then
    begin
      QRD_SEGU.Font.Color := clWhite;
      QRD_SEGU.Color      := clRed;
    end else
    if RelatorioCM_SEGU.AsFloat <= 0 then
    begin
      QRD_SEGU.Font.Color := clWhite;
      QRD_SEGU.Color      := clPurple;
    end;
  end else
  begin
    if RelatorioCM_SEGU.AsFloat > 8 then
    begin
      QRD_SEGU.Font.Color := clWhite;
      QRD_SEGU.Color      := clBlue;
    end else
    if ((RelatorioCM_SEGU.AsFloat >= 3) and (RelatorioCM_SEGU.AsFloat <= 4)) then
    begin
      QRD_SEGU.Font.Color := clBlack;
      QRD_SEGU.Color      := clYellow;
    end else
    if ((RelatorioCM_SEGU.AsFloat < 3) and (RelatorioCM_SEGU.AsFloat > 0)) then
    begin
      QRD_SEGU.Font.Color := clWhite;
      QRD_SEGU.Color      := clRed;
    end else
    if RelatorioCM_SEGU.AsFloat <= 0 then
    begin
      QRD_SEGU.Font.Color := clWhite;
      QRD_SEGU.Color      := clPurple;
    end;
  end;
end;

procedure TqrpProduto_Compra_Planejamento.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_CM_PRINCIPAL.Value := RelatorioCM_PRINCIPAL.AsString + IFThen(LeftStr(RelatorioDEST.AsString,1) = 'F','*','');
end;

end.
