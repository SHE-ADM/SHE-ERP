unit qEtiqueta_Cartela2;

interface

uses oPrincipal, ACBrBarCode,
  IBDatabase, QRCtrls, jpeg, QuickRpt, Classes, Controls,ExtCtrls,
  Windows, SysUtils, Messages, Graphics,
  StdCtrls, ACBrBase, ACBrETQ, Math, StrUtils,
  QRDBTextRotate, DB, IBCustomDataSet, IBQuery, QrAngLbl, QRPDFFilt,
  QRExport, IBTable;

type
  TqrpEtiqueta_Cartela2 = class(TQuickRep)
    TSCadastro: TIBTransaction;
    Relatorio: TIBQuery;
    QRBDetalhe: TQRBand;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    RelatorioC_COMP1: TStringField;
    RelatorioC_COMP2: TStringField;
    QRSPrincipal: TQRShape;
    QRITituloLogo: TQRImage;
    QRSTitulo: TQRShape;
    QRLCDEmpresa: TQRLabel;
    QRLCDCNPJ: TQRLabel;
    QRLArtigo: TQRLabel;
    QRDBArtigo: TQRDBText;
    QRDBDescricao: TQRDBText;
    QRSL1: TQRShape;
    QRLCor: TQRLabel;
    QRDBCor: TQRDBText;
    QRSL1C1: TQRShape;
    QRSL3: TQRShape;
    QRSL2: TQRShape;
    QRSL4: TQRShape;
    QRLInfoA: TQRLabel;
    QRLComposicao: TQRLabel;
    QRSL5C1: TQRShape;
    QRDBILavagem1: TQRDBImage;
    QRDBILavagem2: TQRDBImage;
    QRDBILavagem3: TQRDBImage;
    QRDBILavagem4: TQRDBImage;
    QRDBILavagem5: TQRDBImage;
    QRDBILavagem6: TQRDBImage;
    QRDBILavagem7: TQRDBImage;
    QRICartela: TQRImage;
    QRLLavagem: TQRLabel;
    QRDBComp1: TQRDBText;
    QRSLogo: TQRShape;
    QRDBRendimento: TQRDBText;
    QRLRendimento: TQRLabel;
    QRDBGramatura: TQRDBText;
    QRLGramatura: TQRLabel;
    QRDBLargUtil: TQRDBText;
    QRLabel1: TQRLabel;
    QRLLargTotal: TQRLabel;
    QRDBLargTotal: TQRDBText;
    QRLCartela: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRDBComp2: TQRDBText;
    QRLabel3: TQRLabel;
    RelatorioPRO_CART: TIBStringField;
    RelatorioPRO_DPRO: TIBStringField;
    RelatorioPRO_DUNI: TIBStringField;
    RelatorioPRO_COMP: TIBStringField;
    RelatorioPRO_PESO: TIBBCDField;
    RelatorioPRO_METR: TIBBCDField;
    RelatorioPRO_REND: TIBBCDField;
    RelatorioPRO_GRAM: TIBBCDField;
    RelatorioPRO_LARG: TIBBCDField;
    RelatorioPRO_UTIL: TIBBCDField;
    RelatorioPRO_OBSE: TMemoField;
    RelatorioPRO_DORI: TIBStringField;
    RelatorioPRO_FOTO: TBlobField;
    RelatorioPRO_PRN1: TBlobField;
    RelatorioPRO_PRN2: TBlobField;
    RelatorioPRO_PRN3: TBlobField;
    RelatorioPRO_PRN4: TBlobField;
    RelatorioPRO_PRN5: TBlobField;
    RelatorioPRO_PRN6: TBlobField;
    RelatorioPRO_PRN7: TBlobField;
    RelatorioPRO_PRN8: TBlobField;
    RelatorioC_CBAR: TStringField;
    RelatorioC_DCOR1: TStringField;
    RelatorioC_DCOR2: TStringField;
    RelatorioC_DCOR3: TStringField;
    RelatorioC_DCOR4: TStringField;
    RelatorioC_DCOR5: TStringField;
    TCadastro: TIBTransaction;
    QCadastro: TIBQuery;
    QRLabel4: TQRLabel;
    QRLCor1: TQRLabel;
    QRLCor2: TQRLabel;
    QRLCor3: TQRLabel;
    QRLCor4: TQRLabel;
    QRLCor5: TQRLabel;
    QRMInfAdic: TQRDBRichText;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorios: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpEtiqueta_Cartela2: TqrpEtiqueta_Cartela2;

implementation

uses uPrincipal, bPrincipal, pExporta;

{$R *.DFM}

Constructor TqrpEtiqueta_Cartela2.Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios);
begin
  RECRelatorios := ARECRelatorios;
  inherited Create(AOwner);
end;

procedure TqrpEtiqueta_Cartela2.WinControlFormCreate(Sender: TObject);
          procedure SQLRelatorio;
          begin
            { Monta Relatório }
            Relatorio.Prepare;
            Relatorio.Open;
          end;
begin
  with qrpEtiqueta_Cartela2 do
  begin
    { Define Impressora }
    oPRN_EXE(RECRelatorios.Handle,'Etiquetas');
    if oEmpty(RECUsuarios.CurrentPrinter) then
    begin
      oPRN_EXE(RECRelatorios.Handle,'Etiquetas');
      if oEmpty(RECUsuarios.CurrentPrinter) then
      RECRelatorios.PrintTAG := 0;
    end;

    { Realiza consistencia }
    oOTransact(TSCadastro);
    oOTransact(TCadastro);
    SQLRelatorio;

    { Título Relatório }
    ReportTitle := 'Etiquetas de Cartelas';

    { Cabeçalho Página }
    //oLoadJPG(RECParametros.IMG_JPG_ETQ,QRITituloLogo.Picture);
    QRLCDEmpresa.Caption := RECParametros.EP_RZ_NO;
    QRLCDCNPJ.Caption    := 'CNPJ: '+RECParametros.CNPJ_MASK;

    Prepare;
    case RECRelatorios.PrintTAG of
      0: PreviewModal;
      1: Print;

          { PDF }
          2: try
               ExportToFilter(TQRPDFDocumentFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorios.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.pdf')));
               oAviso(Handle,'Relatório convertido com sucesso em sua área de trabalho !');
             except
               on E: Exception do
               begin
                 oErro(Handle,'Falha ao tentar converter relatório !' + #13 +
                                          'Erro: ' + E.Message + '.');
               end;
             end;

          { EXCEL }
          3: try
               ExportToFilter(TQRXLSFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorios.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.xls')));
               oAviso(Handle,'Relatório convertido com sucesso em sua área de trabalho !');
             except
               on E: Exception do
               begin
                 oErro(Handle,'Falha ao tentar converter relatório !' + #13 +
                                          'Erro: ' + E.Message + '.');
               end;
             end;

          { WORD }
          4: try
               ExportToFilter(TQRRTFExportFilter.Create(PChar(RECParametros.SHE_PATH_DESKTOP + '\' + RECRelatorios.Titulo + ' ' + FormatDateTime('dd_mm_yyyy hh_mm_ss',now) + '.doc')));
               oAviso(Handle,'Relatório convertido com sucesso em sua área de trabalho !');
             except
               on E: Exception do
               begin
                 oErro(Handle,'Falha ao tentar converter relatório !' + #13 +
                                          'Erro: ' + E.Message + '.');
               end;
             end;
    end;
  end;
end;

procedure TqrpEtiqueta_Cartela2.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TCadastro);
    oCTransact(TSCadastro);

    Finalize(RECRelatorios);
    FillChar(RECRelatorios,SizeOf(RECRelatorios),0);
  finally
    oPRN_EXE(RECRelatorios.Handle,'Relatórios');
    FreeAndNil(qrpEtiqueta_Cartela2);
  end;
end;

procedure TqrpEtiqueta_Cartela2.RelatorioCalcFields(DataSet: TDataSet);
var
  Composicao: String;
begin
  if oPosCount('SUPERFICIE',RelatorioPRO_COMP.AsString) > 0 then
  begin
    RelatorioC_COMP1.Value := Trim(Copy(RelatorioPRO_COMP.AsString,1,Pos('SUPERFICIE',RelatorioPRO_COMP.AsString)-1));
    RelatorioC_COMP2.Value := Trim(Copy(RelatorioPRO_COMP.AsString,Pos('SUPERFICIE',RelatorioPRO_COMP.AsString),Length(RelatorioPRO_COMP.AsString)));
  end else
  begin
    Composicao := oRETComposicao(RelatorioPRO_COMP.AsString);
    RelatorioC_COMP1.Value := IFThen(Pos('|',Composicao) = 0,Composicao,LeftStr(Composicao ,Pos('|',Composicao) - 1));
    RelatorioC_COMP2.Value := IFThen(Pos('|',Composicao) = 0,'',RightStr(Composicao,Length(Composicao)  - Pos('|',Composicao)));
  end;
end;

procedure TqrpEtiqueta_Cartela2.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  BMP: TBitmap;
  i: Integer;
begin
  QRLRendimento.Enabled  := (LeftStr(RelatorioPRO_DUNI.AsString,1) = 'K');
  QRDBRendimento.Enabled := (LeftStr(RelatorioPRO_DUNI.AsString,1) = 'K');

  QRLCor1.Caption := '';
  QRLCor2.Caption := '';
  QRLCor3.Caption := '';
  QRLCor4.Caption := '';
  QRLCor5.Caption := '';

  if not Relatorio.Fields[0].IsNull then
  begin
    if RECRelatorios.CDArtigo <> RelatorioPRO_CART.AsString then
    with QCadastro do
    begin
      SQL.Clear;
      SQL.Add('SELECT   IDCOR,COALESCE(DECOR,''''),CEAN FROM CAD_PRO');
      SQL.Add('WHERE    ARTIGO = '''+RelatorioPRO_CART.AsString+'''');
      SQL.Add('AND      REST  <> ''I''');
      SQL.Add('AND      IDCOR  > 0');
      SQL.Add('ORDER BY 2');
      Open;
      RECRelatorios.CEAN := Fields[2].AsString;
      i := 0;
      while not eof do
      begin
        inc(i);
        if i = 1 then
        QRLCor1.Caption := '('+oStrZero(Fields[0].AsInteger,4)+') '+Fields[1].AsString;
        if i = 2 then
        QRLCor2.Caption := '('+oStrZero(Fields[0].AsInteger,4)+') '+Fields[1].AsString;
        if i = 3 then
        QRLCor3.Caption := '('+oStrZero(Fields[0].AsInteger,4)+') '+Fields[1].AsString;
        if i = 4 then
        QRLCor4.Caption := '('+oStrZero(Fields[0].AsInteger,4)+') '+Fields[1].AsString;
        if i = 5 then
        QRLCor5.Caption := '('+oStrZero(Fields[0].AsInteger,4)+') '+Fields[1].AsString;
        next;
      end;
    end;

    BMP := Nil;
    with FrmPrincipal.ACBrBarCode do
    try
      Text := RECRelatorios.CEAN;

      BMP := TBitmap.Create;
      BMP.Width  := QRICartela.Width;
      BMP.Height := QRICartela.Height;

      DrawBarcode(BMP.Canvas);

      QRICartela.Picture.Bitmap := BMP;
    finally
      FreeAndNil(BMP);
    end;
  end;
end;

end.

