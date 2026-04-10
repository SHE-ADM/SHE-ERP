unit qPED_CUP_SCO;

interface

uses oPrincipal,
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, DateUtils, jpeg, IBStoredProc, math, StrUtils, IBSQL;

type
  TQRPPED_CUP_SCO = class(TQuickRep)
    TituloVenda: TQRBand;
    ItemVenda: TQRSubDetail;
    CabecalhoVenda: TQRChildBand;
    TotalVenda: TQRChildBand;
    ven_efe: TIBQuery;
    consulta: TIBQuery;
    IBTra: TIBTransaction;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDQTDE: TQRDBText;
    QRDProduto: TQRDBText;
    QRDBText2: TQRDBText;
    roman: TIBQuery;
    romanID: TIntegerField;
    romanROM_CDPD: TIntegerField;
    romanROM_CDPR: TIntegerField;
    romanROM_CDRO: TIntegerField;
    romanROM_CDBX: TIntegerField;
    romanROM_DERO: TIBStringField;
    romanROM_STPD: TIBStringField;
    romanROM_STCO: TIBStringField;
    romanROM_STFI: TIBStringField;
    romanROM_DROM: TDateField;
    romanROM_DBAI: TDateField;
    romanROM_DCAN: TDateField;
    romanROM_CCLI: TIntegerField;
    romanROM_CVEN: TIntegerField;
    romanROM_CREP: TIntegerField;
    romanROM_CPAG: TIntegerField;
    romanROM_TSDE: TIBBCDField;
    romanROM_TDSC: TIBStringField;
    romanROM_TCDE: TIBBCDField;
    romanROM_CONC: TSmallintField;
    romanROM_PDSC: TIBBCDField;
    romanROM_QTVE: TIBBCDField;
    romanROM_RLVE: TIntegerField;
    romanROM_STA: TIBStringField;
    romanROM_OBSE: TMemoField;
    ven_efePRO_CART: TIBStringField;
    ven_efePRO_CPRO: TIBStringField;
    ven_efeID: TIntegerField;
    ven_efeROM_ITEM: TIBStringField;
    ven_efeROM_QTDE: TIBBCDField;
    ven_efeROM_TOTA: TIBBCDField;
    romanCLI_FANT: TIBStringField;
    romanREP_FANT: TIBStringField;
    romanPAG_DPAG: TIBStringField;
    QRLabel8: TQRLabel;
    ven_efePRO_DCOR: TIBStringField;
    romanROM_CDOC: TIntegerField;
    romanROM_CDNF: TIntegerField;
    romanROM_HROM: TTimeField;
    romanROM_DNFS: TDateField;
    romanROM_DEXP: TDateField;
    romanROM_HEXP: TTimeField;
    romanROM_CEXP: TIntegerField;
    romanROM_CDSC: TIBBCDField;
    ven_efePRO_DUNI: TIBStringField;
    romanROM_CDRD: TIntegerField;
    romanROM_CDCX: TIntegerField;
    romanROM_QTSP: TIBBCDField;
    romanROM_QTPD: TIBBCDField;
    romanROM_ADSC: TIBBCDField;
    romanROM_DESC: TStringField;
    ven_efeROM_DPRO: TIBStringField;
    ven_efeROM_DCOR: TIBStringField;
    romanROM_COMI: TIBBCDField;
    romanUSU_DUSU: TIBStringField;
    QRBCabecalho: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRDIDCD: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    qrbvdsc: TQRDBText;
    QRLDECV: TQRLabel;
    QRLDECR: TQRLabel;
    QRDCOR: TQRDBText;
    QRLabel21: TQRLabel;
    romanROM_DPRD: TDateField;
    romanROM_CTNR: TIBStringField;
    romanROM_DEMB: TDateField;
    romanROM_DDES: TDateField;
    romanROM_CBAI: TIntegerField;
    romanROM_TBAI: TDateTimeField;
    ibSP: TIBStoredProc;
    romanROM_UPRN: TIntegerField;
    romanROM_PPRN: TSmallintField;
    romanROM_TPRN: TDateTimeField;
    ven_efeROM_UNIT: TFloatField;
    QRShape1: TQRShape;
    QRLUsuario: TQRLabel;
    romanROM_VFRT: TIBBCDField;
    romanROM_DTRA: TIBStringField;
    QRLabel25: TQRLabel;
    QRDBText14: TQRDBText;
    ven_efeROM_VDSC: TIBBCDField;
    romanCLI_RAZA: TIBStringField;
    ven_efeROM_PREC: TFloatField;
    QRLVPRC_PAD: TQRLabel;
    QRDVPRC_PAD: TQRDBText;
    ven_efeROM_DUNI: TIBStringField;
    QRLSubTitulo: TQRLabel;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRDDEPK: TQRLabel;
    QRLabel10: TQRLabel;
    QRDSKU: TQRDBText;
    QRLDispositivo: TQRLabel;
    romanCLI_ESTA: TIBStringField;
    QRDDECR: TQRLabel;
    QRDDECV: TQRLabel;
    QRDDECD: TQRLabel;
    QRLabel1: TQRLabel;
    ven_efeC_QTDE: TStringField;
    QRLabel5: TQRLabel;
    SQLEdicao: TIBSQL;
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure ItemVendaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ven_efeCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure WinControlFormDestroy(Sender: TObject);
  private

  public
  end;

var
  QRPPED_CUP_SCO: TQRPPED_CUP_SCO;

implementation

uses uPrincipal;

{$R *.DFM}

procedure TQRPPED_CUP_SCO.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  { Pedido }
  QRDDEPK.Caption := 'Pedido Nº ' + romanROM_DERO.AsString + ' - ' + FormatDateTime('dd.mm.yyyy',romanROM_DROM.AsDateTime);

  { Cadastros }
  QRDIDCD.Caption := 'Cliente Nº ' + qrpPED_CUP_SCO.romanROM_CCLI.AsString;
  QRDDECD.Caption := qrpPED_CUP_SCO.romanCLI_RAZA.AsString;
  QRDDECV.Caption := qrpPED_CUP_SCO.romanUSU_DUSU.AsString;
  QRDDECR.Caption := qrpPED_CUP_SCO.romanREP_FANT.AsString;

  if Length(QRDDECD.Caption) > 35 then
  QRDDECD.Font.Size := 7 else

  if Length(QRDDECD.Caption) > 33 then
  QRDDECD.Font.Size := 8 else

  if Length(QRDDECD.Caption) > 31 then
  QRDDECD.Font.Size := 9 else
  QRDDECD.Font.Size := 10;

  { Usuário }
  QRLUsuario.Caption     := oPrimeiraLetraMaiuscula(RECUsuarios.Login) + ' ' + FormatDateTime('dd.mm.yyyy hh:mm',Now);
  QRLDispositivo.Caption := RECParametros.HOST + ' [' + RECParametros.IP +']';
end;

procedure TQRPPED_CUP_SCO.QuickRepAfterPrint(Sender: TObject);
begin
  if romanID.AsInteger > 0 then
     with FrmPrincipal do
     begin
       with SQLEdicao do
       begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
         SQL.Add('SET    ROM_PPRN = ROM_PPRN + 1,');
         SQL.Add('       ROM_UPRN = '''+RECUsuarios.ID+''',');
         SQL.Add('       ROM_TPRN = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');
         SQL.Add('WHERE  ID       = '''+romanID.AsString+'''');
         ExecQuery;
       end;
     end;
end;

procedure TQRPPED_CUP_SCO.ItemVendaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Length(ven_efeROM_DPRO.AsString) > 36 then
  begin
    QRDProduto.Top        := 2;
    QRDProduto.Font.Size  := 4;
    QRDProduto.Font.Style := [];
  end else
  if Length(ven_efeROM_DPRO.AsString) > 33 then
  begin
    QRDProduto.Top        := 2;
    QRDProduto.Font.Size  := 5;
    QRDProduto.Font.Style := [];
  end else
  if Length(ven_efeROM_DPRO.AsString) > 25 then
  begin
    QRDProduto.Top        := 2;
    QRDProduto.Font.Size  := 6;
    QRDProduto.Font.Style := [];
  end else
  begin
    QRDProduto.Top        := 0;
    QRDProduto.Font.Size  := 7;
    QRDProduto.Font.Style := [fsBold];
  end;

  { Preço Tabela }
  QRLVPRC_PAD.Enabled := (ven_efeROM_VDSC.AsFloat > 0);
  QRDVPRC_PAD.Enabled := (ven_efeROM_VDSC.AsFloat > 0);
  ItemVenda.Height    := IFThen(ven_efeROM_VDSC.AsFloat > 0,33,26);
end;

procedure TQRPPED_CUP_SCO.ven_efeCalcFields(DataSet: TDataSet);
begin
  VEN_EFEC_QTDE.Value := Trim(FormatFloat('#,0.00',VEN_EFEROM_QTDE.AsFloat) + ' ' + LeftStr(VEN_EFEROM_DUNI.AsString,2));
end;

procedure TQRPPED_CUP_SCO.WinControlFormDestroy(Sender: TObject);
begin
  oCTransact(IBTra);
end;

end.

