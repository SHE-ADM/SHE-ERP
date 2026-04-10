
unit qProduto_Venda;

interface

uses oPrincipal,
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
     IBDatabase, IBQuery, jpeg, StrUtils, math, QRPDFFilt, QRExport,
     IBSQL, IDGlobal;

type
  TqrpProduto_Venda = class(TQuickRep)
    TRelatorio: TIBTransaction;
    Relatorio: TIBQuery;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRBFKCabecalho: TQRBand;
    QRBDetalhe: TQRBand;
    QRBSumario: TQRBand;
    QRDDECP: TQRDBText;
    QRDC_QTDE: TQRDBText;
    QRDVTPV: TQRDBText;
    RelatorioC_ID: TIntegerField;
    QREVTPV: TQRExpr;
    QRETotal_ITEM: TQRExpr;
    QRLTotal: TQRLabel;
    QREC_QTDE: TQRExpr;
    RelatorioC_MTPV: TFloatField;
    RelatorioC_KGPV: TFloatField;
    RelatorioC_QTDE: TStringField;
    QRBCabecalho: TQRBand;
    QRSCABECALHO: TQRShape;
    QRILogo: TQRImage;
    QRLEmpresa: TQRLabel;
    QRLTitulo: TQRLabel;
    QRLC_SKU: TQRLabel;
    QRLDECP: TQRLabel;
    QRLC_QTPV: TQRLabel;
    QRLVTPV: TQRLabel;
    QRDSKU: TQRDBText;
    QRLDECA: TQRLabel;
    QRDDESC: TQRDBText;
    QRLDESC: TQRLabel;
    QRDDECA: TQRDBText;
    QRDDGCP: TQRDBText;
    RelatorioSKU: TIBStringField;
    RelatorioDECP: TIBStringField;
    RelatorioDGCP: TIBStringField;
    RelatorioDECA: TIBStringField;
    RelatorioDESC: TIBStringField;
    RelatorioUCOM: TIBStringField;
    RelatorioPSCN: TIBBCDField;
    RelatorioPESO: TIBBCDField;
    RelatorioMETRO: TIBBCDField;
    RelatorioREND: TIBBCDField;
    RelatorioQTDE: TIBBCDField;
    RelatorioVTPV: TIBBCDField;
    QRBRodape: TQRBand;
    QRLRodapeUsuario: TQRLabel;
    QRSDRodapePagina: TQRSysData;
    QRLRodapeFiltro: TQRLabel;
    QRLRodapeRelatorio: TQRLabel;
    RelatorioUQTDE: TIBBCDField;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
  private
    RECRelatorio: TRECRelatorios;
    procedure _Pesquisa_Categorias;
    procedure _Pesquisa_Fornecedor;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpProduto_Venda: TqrpProduto_Venda;

implementation

uses uPrincipal, bPrincipal,
  pRelatorios, pExporta;

{$R *.DFM}

Constructor TqrpProduto_Venda.Create(AOwner: TComponent; const ARECRelatorio: TRECRelatorios);
begin
  Initialize(RECRelatorio);
  FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  RECRelatorio := ARECRelatorio;

  inherited Create(AOwner);
end;

procedure TqrpProduto_Venda.WinControlFormCreate(Sender: TObject);
          procedure _Report;
          begin
            oReportPageHeader_(Self,RECRelatorio); { Cabeçalho }
            oReportPageFooter_(Self,RECRelatorio); { Rodapé }

            { Modelo }
            if Pos('Metro',RECRelatorio.Modelo) > 0 then
            begin
              QRLC_QTPV.Caption    := 'Metros';
              QRDC_QTDE.DataField  := 'C_MTPV';
              QREC_QTDE.Enabled    := True;
              QREC_QTDE.Expression := 'SUM(Relatorio.C_MTPV)';

              QRLVTPV.Caption    := 'Kilos';
              QRDVTPV.DataField  := 'C_KGPV';
              QREVTPV.Expression := 'SUM(Relatorio.C_KGPV)';
            end;
          end;

          procedure _Select;
          begin
            if Pos('Artigo',RECRelatorio.Modelo) > 0 then
            begin
              RECRelatorio.Titulo    := StringReplace(RECRelatorio.Titulo ,'Produtos',RECRelatorio.Modelo,[rfReplaceAll,rfIgnoreCase]);
              RECRelatorio.SelectSQL := 'CP.ARTIGO AS SKU,FK.DECP,NULL AS DGCP,TCT.DESCRICAO AS DECA,TSC.DESCRICAO AS DESC,FK.UCOM,';
            end else
            if Pos('Produto',RECRelatorio.Modelo) > 0 then
            begin
              RECRelatorio.SelectSQL := 'CP.SKU AS SKU,FK.DECP,FK.DGCP,TCT.DESCRICAO AS DECA,TSC.DESCRICAO AS DESC,FK.UCOM,';
            end else
            if Pos('Sub-Categoria',RECRelatorio.Modelo) > 0 then
            begin
              RECRelatorio.SelectSQL := 'TRIM(COALESCE(TSC.DESCRICAO,'''')) AS SKU,NULL AS DECP,NULL AS DGCP,NULL AS DECA,NULL AS DESC,FK.UCOM,';

              QRLC_SKU.Caption := 'Sub Categoria';
              QRLDECP.Enabled  := False;
              QRDDECP.Enabled  := False;
            end else
            begin
              RECRelatorio.SelectSQL := 'TRIM(COALESCE(TCT.DESCRICAO,'''')) AS SKU,NULL AS DECP,NULL AS DGCP,NULL AS DECA,NULL AS DESC,FK.UCOM,';

              QRLC_SKU.Caption := 'Categoria';
              QRLDECP.Enabled  := False;
              QRDDECP.Enabled  := False;
            end;

            { Definindo Tabelas }
            RECRElatorio.TAB_PK     := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_CAB','PED_VEN_CAB'),'_',RECParametros.EP_ID,3);
            RECRElatorio.TAB_PK_ITE := oREPZero(IFThen(RECRelatorio.Tipo = 'Programações','PED_PRG_ITE','PED_VEN_ITE'),'_',RECParametros.EP_ID,3);
            if ((RECRelatorio.Status = 'Faturados') and (RECRelatorio.Tipo <> 'Programações')) then
            begin
              RECRElatorio.TAB_FK     := oREPZero('ROM_CAB','_',RECParametros.EP_ID,3);
              RECRElatorio.TAB_FK_ITE := oREPZero('ROM_ITE','_',RECParametros.EP_ID,3);
            end;

            { Filtros Between }
            if (RECRelatorio.PEC1CodigoText <> 'TODOS') and (RECRelatorio.PEC2CodigoText <> 'TODOS') and
               (RECRelatorio.PEC1CodigoText <> '0')     and (RECRelatorio.PEC2CodigoText <> '0') then
               RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.PEC1CodigoCaption+' '+RECRelatorio.PEC2CodigoCaption+' '
            else
               RECRelatorio.PEC1CodigoText := '0';

            { Filtros Gerais }   
            if RECRelatorio.PEC1ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC1ConsultaAnd := 'AND '+RECRelatorio.IEC1ConsultaField+' '+RECRelatorio.IEC1ConsultaWhere+' '''+RECRelatorio.IEC1ConsultaLike1+Trim(RECRelatorio.PEC1ConsultaText)+RECRelatorio.IEC1ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC1ConsultaCaption +': '+RECRelatorio.PEC1ConsultaText +' ';
            end;

            if RECRelatorio.PEC2ConsultaText <> 'TODOS' then
            begin
              if RECRelatorio.IEC2ConsultaCaption = 'Categorias' then
                 _Pesquisa_Categorias
              else
                 RECRelatorio.IEC2ConsultaAnd := 'AND '+RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(RECRelatorio.PEC2ConsultaText)+RECRelatorio.IEC2ConsultaLike2+'''';
                 RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC2ConsultaCaption +': '+RECRelatorio.PEC2ConsultaText +' ';
            end;

            if RECRelatorio.PEC3ConsultaText <> 'TODOS' then
            begin
              _Pesquisa_Fornecedor;
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + RECRelatorio.IEC3ConsultaCaption +': '+RECRelatorio.PEC3ConsultaText +' ';
            end;

            if RECRelatorio.PEC4ConsultaText <> 'TODOS' then
            begin
              RECRelatorio.IEC4ConsultaAnd := 'AND '+RECRelatorio.IEC4ConsultaField+' '+RECRelatorio.IEC4ConsultaWhere+' '''+RECRelatorio.IEC4ConsultaLike1+Trim(RECRelatorio.PEC4ConsultaText)+RECRelatorio.IEC4ConsultaLike2+'''';
              RECRelatorio.RodapeFiltros   := RECRelatorio.RodapeFiltros + RECRelatorio.IEC4ConsultaCaption +': '+RECRelatorio.PEC4ConsultaText +' ';
            end;

            { Filtros Datas }
            if not oEmpty(RECRelatorio.IEDataField) then
            begin
              RECRelatorio.IEDataField   := IFThen(((RECRelatorio.Status = 'Faturados') and (RECRelatorio.Tipo <> 'Programações')),'ROM_DBAI','ROM_DROM');
              RECRelatorio.IEDataAnd     := 'AND '+RECRelatorio.IEDataField+' BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.IEFKDataAnd   := 'AND ROM_DNFS BETWEEN '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText1)+''' AND '''+formatDateTime('mm/dd/yy',RECRelatorio.IEDataText2)+'''';
              RECRelatorio.RodapeFiltros := RECRelatorio.RodapeFiltros + 'Período por '+oPrimeiraLetraMaiuscula(RECRelatorio.IEDataCaption)+': '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText1)+' Até '+FormatDateTime('dd/mm/yy',RECRelatorio.IEDataText2);
            end;

            oOTransact(TRelatorio);
            with Relatorio do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT SKU,DECP,DGCP,DECA,DESC,UCOM,');
              SQL.Add('       AVG(PSCN) AS PSCN,AVG(PESO) AS PESO,AVG(METRO) AS METRO,AVG(REND) AS REND,AVG(UQTDE) AS UQTDE,');
              SQL.Add('       SUM(QTDE) AS QTDE,SUM(VTPV) AS VTPV');
              SQL.Add('FROM (');

              { TAB_PK }
              SQL.Add('SELECT '+RECRelatorio.SelectSQL);
              SQL.Add('         AVG(CP.PRO_PSCN) AS PSCN,AVG(CP.PRO_PESO) AS PESO,AVG(CP.PRO_METR) AS METRO,AVG(CP.PRO_REND) AS REND,AVG(CP.UQTDE) AS UQTDE,');
              SQL.Add('         SUM(FK.ROM_QTDE) AS QTDE,CAST(SUM(IIF(PK.ROM_STPD = ''DEVOLUÇÃO'',FK.ROM_TOTA*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1),FK.ROM_TOTA)) AS NUMERIC(15,2)) AS VTPV');

              SQL.Add('FROM '+RECRElatorio.TAB_PK    +' AS PK');
              SQL.Add('JOIN '+RECRElatorio.TAB_PK_ITE+' AS FK  ON (FK.ROM_CCAB = PK.ID)');
              SQL.Add('JOIN   TAB_TPO AS TP  ON (TP.ID  = PK.CDPD )');
              SQL.Add('JOIN   CAD_CLI AS CL  ON (CL.ID  = PK.IDCD )');
              SQL.Add('JOIN   CAD_PRO AS CP  ON (CP.ID  = FK.IDCP )');
              SQL.Add('JOIN   TAB_CAT AS TCT ON (TCT.ID = CP.IDCAT)');
              SQL.Add('JOIN   TAB_SCT AS TSC ON (TSC.ID = CP.IDSCT)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_RMT AS RM ON (CL.CEP BETWEEN RM.LOC_CEP_INI AND RM.LOC_CEP_FIM)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_RNA AS RN ON (CL.CEP BETWEEN RN.LOC_CEP_INI AND RN.LOC_CEP_FIM)');
              SQL.Add('LEFT');
              SQL.Add('JOIN   TAB_CEP_UFE     AS UF ON (UF.SIGLA = CL.UF)');

              SQL.Add('WHERE PK.IDEP =  '''+RECParametros.EP_ID+'''');
              SQL.Add('AND   PK.ABPD = 0');
              SQL.Add('AND   PK.DVPD ' + IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'<>','=') + ' 0');

              if RECRelatorio.Status = 'Faturados' then
              begin
                SQL.Add('AND PK.FAPD = 1');
                SQL.Add('AND PK.CDNF = 0');
              end;

              if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

              SQL.Add(RECRelatorio.IEC1ConsultaAnd);
              SQL.Add(RECRelatorio.IEC2ConsultaAnd);
              SQL.Add(RECRelatorio.IEC3ConsultaAnd);
              SQL.Add(RECRelatorio.IEC4ConsultaAnd);
              SQL.Add(RECRelatorio.IEDataAnd);

              SQL.Add('GROUP BY SKU,DECP,DGCP,DECA,DESC,UCOM');

              { Faturados }
              if (not oEmpty(RECRElatorio.TAB_FK)) and (not oEmpty(RECRElatorio.TAB_FK_ITE)) then
              begin
                { TAB_FK }
                SQL.Add('UNION');
                SQL.Add('SELECT '+RECRelatorio.SelectSQL);
                SQL.Add('         AVG(CP.PRO_PSCN) AS PSCN,AVG(CP.PRO_PESO) AS PESO,AVG(CP.PRO_METR) AS METRO,AVG(CP.PRO_REND) AS REND,AVG(CP.UQTDE) AS UQTDE,');
                SQL.Add('         SUM(FK.ROM_QTDE) AS QTDE,CAST(SUM(FK.ROM_QTDE*FK.ROM_PREC*IIF(PK.ROM_CONC > 0,PK.ROM_CONC,1)) AS NUMERIC(15,2)) AS VTPV');

                SQL.Add('FROM '+RECRElatorio.TAB_FK+'     AS PK');
                SQL.Add('JOIN '+RECRElatorio.TAB_FK_ITE+' AS FK  ON (FK.ROM_CCAB = PK.ID)');
                SQL.Add('JOIN   TAB_tpo AS TP  ON (TP.id  = PK.CDPD)');
                SQL.Add('JOIN   CAD_CLI AS CL  ON (CL.ID  = PK.IDCD)');
                SQL.Add('JOIN   CAD_PRO AS CP  ON (CP.ID  = FK.IDCP)');
                SQL.Add('JOIN   TAB_CAT AS TCT ON (TCT.ID = CP.IDCAT)');
                SQL.Add('JOIN   TAB_SCT AS TSC ON (TSC.ID = CP.IDSCT)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_RMT AS RM ON (CL.CEP BETWEEN RM.LOC_CEP_INI AND RM.LOC_CEP_FIM)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_RNA AS RN ON (CL.CEP BETWEEN RN.LOC_CEP_INI AND RN.LOC_CEP_FIM)');
                SQL.Add('LEFT');
                SQL.Add('JOIN   TAB_CEP_UFE AS UF ON (UF.SIGLA = CL.UF)');

                SQL.Add('WHERE  PK.IDEP = '''+RECParametros.EP_ID+'''');
                SQL.Add('AND    PK.FAPD = 1');

                SQL.Add('AND    PK.ABPD = 0');
                SQL.Add('AND    PK.DVPD ' + IFThen(Pos('DEV',UPPERCASE(RECRelatorio.Tipo)) > 0,'<>','=') + ' 0');

                if UPPERCASE(RECRelatorio.DEEP) <> 'TODAS AS EMPRESAS' then SQL.Add('AND CP.IDEP = '''+IntToStr(RECRelatorio.IDEP)+'''');

                SQL.Add(RECRelatorio.IEC1ConsultaAnd);
                SQL.Add(RECRelatorio.IEC2ConsultaAnd);
                SQL.Add(RECRelatorio.IEC3ConsultaAnd);
                SQL.Add(RECRelatorio.IEC4ConsultaAnd);
                SQL.Add(RECRelatorio.IEFKDataAnd);

                SQL.Add('GROUP BY SKU,DECP,DGCP,DECA,DESC,UCOM');
              end;

              SQL.Add(')');
              SQL.Add('GROUP BY SKU,DECP,DGCP,DECA,DESC,UCOM');
              SQL.Add('ORDER BY 1');
              Open;
            end;
          end;
begin
  with qrpProduto_Venda do
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
      WinControlFormDestroy(qrpProduto_Venda);
    end;
end;

procedure TqrpProduto_Venda.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TRelatorio);

    Finalize(RECRelatorio);
    FillChar(RECRelatorio,SizeOf(RECRelatorio),0);
  finally
    FreeAndNil(qrpProduto_Venda);
  end;
end;

procedure TqrpProduto_Venda.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RelatorioC_ID.AsInteger mod 2 = 0 then
     QRBDetalhe.Color := clWhite
  else
     QRBDetalhe.Color := $00E9E9E9;

  if Length(RelatorioSKU.AsString) > 12 then
     QRDSKU.Font.Size := 6
  else
     QRDSKU.Font.Size := 7;

  if RelatorioDGCP.AsString = EmptyStr then
  begin
    QRDDECP.Font.Size := 7;
    QRDDECP.Width     := 282;
  end else
  begin
    if Length(RelatorioDECP.AsString) > 20 then
       QRDDECP.Font.Size := 6
    else
       QRDDECP.Font.Size := 7;
       QRDDECP.Width     := 150;
  end;     

  if RelatorioDECA.AsString <> EmptyStr then
  begin
    QRLDECA.Enabled := True;
    QRDDECA.Enabled := True;

    if Length(RelatorioDECA.AsString) > 20 then
       QRDDECA.Font.Size := 6
    else
       QRDDECA.Font.Size := 7;
  end;

  if RelatorioDESC.AsString <> EmptyStr then
  begin
    QRLDESC.Enabled := True;
    QRDDESC.Enabled := True;

    if Length(RelatorioDESC.AsString) > 20 then
       QRDDESC.Font.Size := 6
    else
       QRDDESC.Font.Size := 7;
  end;
end;

procedure TqrpProduto_Venda.RelatorioCalcFields(
  DataSet: TDataSet);
begin
  RelatorioC_ID.Value   := Relatorio.RecNo;
  RelatorioC_QTDE.Value := FormatFloat('0.',RelatorioQTDE.AsInteger)+' '+LeftStr(RelatorioUCOM.AsString,2);

  if RelatorioUCOM.AsString = 'KG' then
  begin
    RelatorioC_KGPV.Value := RelatorioQTDE.AsFloat;
    RelatorioC_MTPV.Value := RelatorioQTDE.AsFloat * RelatorioREND.AsFloat;
  end else
  { Peso Líquido }
  if  LeftStr(RelatorioUCOM.AsString,1) = 'K' then RelatorioC_KGPV.Value := RelatorioQTDE.AsFloat else
  if (LeftStr(RelatorioUCOM.AsString,1) = 'M') and (RelatorioREND.AsFloat > 0) then
      RelatorioC_KGPV.Value := RelatorioQTDE.AsFloat / RelatorioREND.AsFloat else
  if (LeftStr(RelatorioUCOM.AsString,1) = 'M') and (RelatorioMETRO.AsFloat > 0) and (RelatorioPESO.AsFloat > 0) then
      RelatorioC_KGPV.Value := (RelatorioQTDE.AsFloat * RelatorioPESO.AsFloat) / RelatorioMETRO.AsFloat else
  if  RelatorioPESO.AsFloat > 0 then
      RelatorioC_KGPV.Value := (RelatorioPESO.AsFloat * RelatorioQTDE.AsFloat) / IFThen(RelatorioUQTDE.AsFloat > 0,RelatorioUQTDE.AsFloat,1);
end;

procedure TqrpProduto_Venda._Pesquisa_Categorias;
var
  DString,DField: String;
  SLPesquisa: TStringList;
  i: Integer;
begin
  RECRelatorio.IEC2ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK';

  SLPesquisa := TStringList.Create;
  try
    SLPesquisa.Clear;
    DString := RECRelatorio.PEC2ConsultaText;
    While Length(DString) > 0 do
    begin
      DField := Fetch(DString,' ');
      if Length(DField) > 0 then
         SLPesquisa.Add(DField);
    end;

    if SLPesquisa.Count > 0 then
       for i := 0 to SLPesquisa.Count - 1 do
           RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaAnd + ' AND ' + RECRelatorio.IEC2ConsultaField+' '+RECRelatorio.IEC2ConsultaWhere+' '''+RECRelatorio.IEC2ConsultaLike1+Trim(SLPesquisa.Strings[i])+RECRelatorio.IEC2ConsultaLike2+'''';

    RECRelatorio.IEC2ConsultaAnd := RECRelatorio.IEC2ConsultaAnd + ')';
  finally
    FreeAndNil(SLPesquisa);
  end;
end;

procedure TqrpProduto_Venda._Pesquisa_Fornecedor;
var
  DString,DField: String;
  SLPesquisa: TStringList;
  i: Integer;
begin
  RECRelatorio.IEC3ConsultaAnd := 'AND EXISTS (SELECT PSQ.ID FROM CAD_PRO_PSQ AS PSQ WHERE PSQ.ID = CP.IDAK';

  SLPesquisa := TStringList.Create;
  try
    SLPesquisa.Clear;
    DString := RECRelatorio.PEC3ConsultaText;
    While Length(DString) > 0 do
    begin
      DField := Fetch(DString,' ');
      if Length(DField) > 0 then
         SLPesquisa.Add(DField);
    end;

    if SLPesquisa.Count > 0 then
       for i := 0 to SLPesquisa.Count - 1 do
           RECRelatorio.IEC3ConsultaAnd := RECRelatorio.IEC3ConsultaAnd + ' AND ' + RECRelatorio.IEC3ConsultaField+' '+RECRelatorio.IEC3ConsultaWhere+' '''+RECRelatorio.IEC3ConsultaLike1+Trim(SLPesquisa.Strings[i])+RECRelatorio.IEC3ConsultaLike2+'''';

    RECRelatorio.IEC3ConsultaAnd := RECRelatorio.IEC3ConsultaAnd + ')';
  finally
    FreeAndNil(SLPesquisa);
  end;
end;

end.
