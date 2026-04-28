unit qEtiqueta_Cartela;

interface

uses oPrincipal, ACBrBarCode,
  IBDatabase, QRCtrls, jpeg, QuickRpt, Classes, Controls,ExtCtrls,
  Windows, SysUtils, Messages, Graphics,
  StdCtrls, ACBrBase, ACBrETQ, Math, StrUtils,
  QRDBTextRotate, DB, IBCustomDataSet, IBQuery, QrAngLbl, QRPDFFilt,
  QRExport, IBTable, DelphiZXingQRCode;

type
  TqrpEtiqueta_Cartela = class(TQuickRep)
    TSCadastro: TIBTransaction;
    QSCadastro: TIBQuery;
    QRBDetalhe: TQRBand;
    Excel: TQRExcelFilter;
    Word: TQRRTFFilter;
    PDF: TQRPDFFilter;
    QRGGrupo: TQRGroup;
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
    QRDCOR1: TQRDBText;
    QRDCOR2: TQRDBText;
    Relatorio: TIBDataSet;
    RelatorioID: TIntegerField;
    RelatorioPRO_FLAG: TSmallintField;
    RelatorioPRO_CBAR: TIBStringField;
    RelatorioPRO_CART: TIBStringField;
    RelatorioPRO_CPRO: TIBStringField;
    RelatorioPRO_CCOR: TIntegerField;
    RelatorioPRO_DCOR: TIBStringField;
    RelatorioPRO_CPR2: TIBStringField;
    RelatorioPRO_CCO2: TIntegerField;
    RelatorioPRO_DCO2: TIBStringField;
    RelatorioPRO_DPRO: TIBStringField;
    RelatorioPRO_COMP: TIBStringField;
    RelatorioPRO_DUNI: TIBStringField;
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
    RelatorioC_COR1: TStringField;
    RelatorioC_COR2: TStringField;
    RelatorioC_COMP1: TStringField;
    RelatorioC_COMP2: TStringField;
    RelatorioPRO_CUSU: TIntegerField;
    RelatorioPRO_IDNO: TIntegerField;
    RelatorioPRO_DTNO: TDateField;
    RelatorioPRO_CDPD: TIntegerField;
    RelatorioPRO_CDRO: TIntegerField;
    RelatorioPRO_CDNF: TIntegerField;
    RelatorioPRO_CDEP: TIntegerField;
    RelatorioPRO_CDFO: TIntegerField;
    RelatorioPRO_ITEM: TIBStringField;
    RelatorioPRO_IPRO: TIntegerField;
    RelatorioPRO_RCOR: TIBStringField;
    RelatorioPRO_IPR2: TIntegerField;
    RelatorioPRO_RCO2: TIBStringField;
    RelatorioPRO_QTDE: TIBBCDField;
    RelatorioPRO_QTRL: TSmallintField;
    RelatorioPRO_PREC: TFloatField;
    RelatorioPRO_UNIT: TFloatField;
    RelatorioPRO_TOTA: TIBBCDField;
    RelatorioPRO_CCLF: TIBStringField;
    RelatorioPRO_CCST: TIBStringField;
    RelatorioPRO_INST: TIBStringField;
    RelatorioPRO_CDET: TIBStringField;
    RelatorioPRO_CFOR: TIBStringField;
    RelatorioPRO_QEST: TIBBCDField;
    RelatorioPRO_REST: TSmallintField;
    RelatorioPRO_QRES: TIBBCDField;
    RelatorioPRO_RRES: TSmallintField;
    RelatorioPRO_QSEP: TIBBCDField;
    RelatorioPRO_RSEP: TSmallintField;
    RelatorioPRO_QDIS: TIBBCDField;
    RelatorioPRO_RDIS: TSmallintField;
    RelatorioPRO_QDEF: TIBBCDField;
    RelatorioPRO_RDEF: TSmallintField;
    RelatorioPRO_QPRC: TIBBCDField;
    RelatorioPRO_QPRG: TIBBCDField;
    RelatorioPRO_PDIS: TIBBCDField;
    RelatorioPRO_PESO: TIBBCDField;
    RelatorioPRO_STLN: TIBStringField;
    RelatorioPRO_STAV: TIBStringField;
    RelatorioPRO_CCOL: TIntegerField;
    RelatorioPRO_DCOL: TIBStringField;
    RelatorioPRO_CGRP: TIntegerField;
    RelatorioPRO_RGRP: TIBStringField;
    RelatorioPRO_DGRP: TIBStringField;
    RelatorioPRO_CCAT: TIntegerField;
    RelatorioPRO_RCAT: TIBStringField;
    RelatorioPRO_DCAT: TIBStringField;
    RelatorioPRO_CTNR: TIBStringField;
    RelatorioPRO_DMAP: TIBStringField;
    RelatorioPRO_LOTE: TIBStringField;
    RelatorioPRO_STA: TIBStringField;
    RelatorioPRO_COM1: TIBStringField;
    RelatorioPRO_COM2: TIBStringField;
    RelatorioPRO_COM3: TIBStringField;
    RelatorioPRO_COM4: TIBStringField;
    RelatorioPRO_COM5: TIBStringField;
    RelatorioPRO_DEEP: TIBStringField;
    RelatorioPRO_CNPE: TIBStringField;
    RelatorioPRO_DEFO: TIBStringField;
    RelatorioPRO_CNPF: TIBStringField;
    RelatorioPRO_RUNI: TIBStringField;
    RelatorioPRO_CSGP: TIntegerField;
    RelatorioPRO_RSGP: TIBStringField;
    RelatorioPRO_DSGP: TIBStringField;
    RelatorioPRO_PSCN: TIBBCDField;
    RelatorioPRO_QVOL: TIBBCDField;
    RelatorioPRO_ESP: TIBStringField;
    RelatorioPRO_PTABI: TFloatField;
    RelatorioPRO_PTABF: TFloatField;
    RelatorioPRO_PSBR: TIBBCDField;
    RelatorioPRO_PSLQ: TIBBCDField;
    RelatorioPRO_QTUN: TIBBCDField;
    QRMInfAdic: TQRDBRichText;
    QRIProduto: TQRImage;
    procedure WinControlFormCreate(Sender: TObject);
    procedure WinControlFormDestroy(Sender: TObject);
    procedure QRGGrupoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure QRBDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    RECRelatorios: TRECRelatorios;
  public
    Constructor Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios); reintroduce; overload;
  end;

var
  qrpEtiqueta_Cartela: TqrpEtiqueta_Cartela;

implementation

uses uPrincipal, bPrincipal, pExporta;

{$R *.DFM}

Constructor TqrpEtiqueta_Cartela.Create(AOwner: TComponent; const ARECRelatorios: TRECRelatorios);
begin
  RECRelatorios := ARECRelatorios;
  inherited Create(AOwner);
end;

procedure TqrpEtiqueta_Cartela.WinControlFormCreate(Sender: TObject);
          procedure SQLRelatorio;
          var
            i,x: Integer;
          begin
            { Monta Relatório }
            i := 0;
            x := 0;
            oOTransact(TSCadastro);
            Relatorio.Open;
            while not Relatorio.Eof do
            begin
              if i >= 14 then
              i := 0;
              inc(i);
              inc(x);

              Relatorio.Edit;
              RelatorioPRO_CDRO.Value := x;
              RelatorioPRO_CDPD.Value := i;
              RelatorioPRO_IPR2.Value := 0;
              RelatorioPRO_CPR2.Value := '';
              RelatorioPRO_CCO2.Value := 0;
              RelatorioPRO_DCO2.Value := '';
              RelatorioPRO_STA.Value  := '0';
              Relatorio.Post;
              Relatorio.Next;
            end;

            oRTransact(TSCadastro);
            Relatorio.Open;
            while not Relatorio.Eof do
            begin
              with QSCadastro do
              begin
                SQL.Clear;
                SQL.Add('SELECT ID FROM CAD_PRO_ETI');
                SQL.Add('WHERE  PRO_IPR2 = '''+RelatorioPRO_IPRO.AsString+'''');
                Open;
                if Fields[0].IsNull then
                begin
                  SQL.Clear;
                  SQL.Add('SELECT FIRST 1 PRO_CDRO,PRO_IPRO,PRO_CPRO,PRO_CCOR,COALESCE(PRO_DCOR,'''') AS PRO_DCOR');
                  SQL.Add('FROM   CAD_PRO_ETI');
                  SQL.Add('WHERE  PRO_CDPD = '''+RelatorioPRO_CDPD.AsString+'''');
                  SQL.Add('AND    PRO_CDRO > '''+RelatorioPRO_CDRO.AsString+'''');
                  SQL.Add('ORDER BY 1');
                  Open;
                 if not Fields[0].IsNull then
                  begin
                    Relatorio.Edit;
                    Relatorio.Tag           := Fields[0].AsInteger;
                    RelatorioPRO_IPR2.Value := Fields[1].AsInteger;
                    RelatorioPRO_CPR2.Value := Fields[2].AsString;
                    RelatorioPRO_CCO2.Value := Fields[3].AsInteger;
                    RelatorioPRO_DCO2.Value := Fields[4].AsString;
                    Relatorio.Post;

                    SQL.Clear;
                    SQL.Add('UPDATE CAD_PRO_ETI');
                    SQL.Add('SET    PRO_CDRO = 0');
                    SQL.Add('WHERE  PRO_CDRO = '''+IntToStr(Relatorio.Tag)+'''');
                    ExecSQL;
                  end;
                end;
              end;
              Relatorio.Next;
            end;

            oRTransact(TSCadastro);
            with Relatorio do
            begin
              SelectSQL.Clear;
              SelectSQL.Add('SELECT * FROM CAD_PRO_ETI');
              SelectSQL.Add('WHERE    PRO_FLAG > 0');
              SelectSQL.Add('AND      PRO_CDRO > 0');
              SelectSQL.Add('ORDER BY PRO_FLAG');
              Open;
            end;
          end;
begin
  with qrpEtiqueta_Cartela do
  begin
    { Define Impressora }
    oPrinterSelect(RECRelatorios.Handle,'Etiquetas');
    if oEmpty(RECUsuarios.CurrentPrinter) then
    begin
      oPrinterSelect(RECRelatorios.Handle,'Etiquetas');
      if oEmpty(RECUsuarios.CurrentPrinter) then
      RECRelatorios.PrintTAG := 0;
    end;
    
    { Realiza consistencia }
    SQLRelatorio;

    { Título Relatório }
    ReportTitle := 'Etiquetas de Cartelas';

    { Cabeçalho Página }
    QRITituloLogo.Picture.Assign(RECParametros.IMG_JPG_ETQ.Picture);
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

procedure TqrpEtiqueta_Cartela.WinControlFormDestroy(Sender: TObject);
begin
  try
    oCTransact(TSCadastro);

    Finalize(RECRelatorios);
    FillChar(RECRelatorios,SizeOf(RECRelatorios),0);
  finally
    oPrinterSelect(RECRelatorios.Handle,'Relatórios');
    FreeAndNil(qrpEtiqueta_Cartela);
  end;
end;

procedure TqrpEtiqueta_Cartela.RelatorioCalcFields(DataSet: TDataSet);
var
  Composicao: String;
  nPos: Integer;
begin
  RelatorioC_COR1.Value := IFThen(oEmpty(RelatorioPRO_CCOR.AsInteger),'',oStrZero(RelatorioPRO_CCOR.AsInteger,4)+' '+RelatorioPRO_DCOR.AsString);
  RelatorioC_COR2.Value := IFThen(oEmpty(RelatorioPRO_CCO2.AsInteger),'',oStrZero(RelatorioPRO_CCO2.AsInteger,4)+' '+RelatorioPRO_DCO2.AsString);

     nPos := Pos('SUPERFICIE',RelatorioPRO_COMP.AsString);
  if nPos  = 0 then
     nPos := Pos('SUPERFÍCIE',RelatorioPRO_COMP.AsString);
  if nPos  = 0 then
     nPos := Pos('Superfície',RelatorioPRO_COMP.AsString);
  if nPos  = 0 then
     nPos := Pos('Superficie',RelatorioPRO_COMP.AsString);

  if nPos > 0 then
  begin
    RelatorioC_COMP1.Value := Trim(Copy(RelatorioPRO_COMP.AsString,1,nPos - 1));
    RelatorioC_COMP2.Value := Trim(Copy(RelatorioPRO_COMP.AsString,nPos,Length(RelatorioPRO_COMP.AsString)));
  end else
  begin
    Composicao := oRETComposicao(RelatorioPRO_COMP.AsString);
    RelatorioC_COMP1.Value := IFThen(Pos('|',Composicao) = 0,Composicao,LeftStr(Composicao ,Pos('|',Composicao) - 1));
    RelatorioC_COMP2.Value := IFThen(Pos('|',Composicao) = 0,'',RightStr(Composicao,Length(Composicao)  - Pos('|',Composicao)));
  end;

  {Ricardo
  Info := TStringList.Create;
  try
    Info := oTxtMemo(RelatorioPRO_OBSE.AsString,90);
    if Info.Count > 0 then
    for i := 0 to Info.Count - 1 do
    Relatorio.FieldByName('C_INFOA'+IntToStr(IFThen(i > 1,1,i) + 1)).Value := Info.Strings[i];
  finally
    Info.Free;
  end;}
end;

procedure TqrpEtiqueta_Cartela.QRBDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Length(RelatorioPRO_DCOR.AsString) >= 18 then
  begin
    QRDCOR1.Font.Size  := 9;
    QRDCOR1.Font.Style := [fsItalic];
  end else
  begin
    QRDCOR1.Font.Size  := 10;
    QRDCOR1.Font.Style := [fsBold,fsItalic];
  end;

  if Length(RelatorioPRO_DCO2.AsString) >= 18 then
  begin
    QRDCOR2.Font.Size  := 9;
    QRDCOR2.Font.Style := [fsItalic];
  end else
  begin
    QRDCOR2.Font.Size  := 10;
    QRDCOR2.Font.Style := [fsBold,fsItalic];
  end;
end;

procedure TqrpEtiqueta_Cartela.QRGGrupoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  BMP: TBitmap;
  QRCode: TDelphiZXingQRCode;
  Row, Col: Integer;
  Scale: Integer;
begin
  QRLRendimento.Enabled  := (LeftStr(RelatorioPRO_DUNI.AsString,1) = 'K');
  QRDBRendimento.Enabled := (LeftStr(RelatorioPRO_DUNI.AsString,1) = 'K');

  if not Relatorio.Fields[0].IsNull then
  begin
   // Configurações
    Scale := 10; // Aumenta o tamanho dos "quadradinhos" do QR Code

    QRCode := TDelphiZXingQRCode.Create;
    BMP    := TBitmap.Create;
    try
      // Define os dados e a codificação
      QRCode.Data      := 'https://cartela.otimotex.app/c/' + RelatorioPRO_CART.AsString;
      QRCode.Encoding  := qrAuto;
      QRCode.QuietZone := 4; // Margem branca ao redor

      // Define o tamanho do Bitmap resultante
      BMP.Width  := QRCode.Rows    * Scale;
      BMP.Height := QRCode.Columns * Scale;

      // Pinta o fundo de branco
      BMP.Canvas.Brush.Color := clWhite;
      BMP.Canvas.FillRect(Rect(0, 0, BMP.Width, BMP.Height));

      // Pinta os "pixels" pretos do QR Code
      BMP.Canvas.Brush.Color := clBlack;
      for Row := 0 to QRCode.Rows - 1 do
      begin
        for Col := 0 to QRCode.Columns - 1 do
        begin
          if QRCode.IsBlack[Row, Col] then
          begin
            BMP.Canvas.FillRect(Rect(
              Col  * Scale,
              Row  * Scale,
              (Col + 1) * Scale,
              (Row + 1) * Scale
            ));
          end;
        end;
      end;

      // Exibe no componente TImage
      QRIProduto.Picture.Assign(BMP);

    finally
      QRCode.Free;
      BMP.Free;
    end;
  end;
end;

end.

