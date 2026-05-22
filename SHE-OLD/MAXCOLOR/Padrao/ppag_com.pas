unit ppag_com;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math,
  Buttons, rxSpeedbar;

type
  Tfrmpag_com = class(TForm)
    pnlbot: TPanel;
    imageOPC3: TImageList;
    imageOPC: TImageList;
    imageOPC2: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    BSair: TSpeedItem;
    BPri: TSpeedItem;
    pnlped: TPanel;
    linha2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Label9: TLabel;
    edcven: TdxMaskEdit;
    cbdven: TdxPickEdit;
    Label10: TLabel;
    edcrep: TdxMaskEdit;
    cbdrep: TdxPickEdit;
    Label13: TLabel;
    cbstco: TdxPickEdit;
    Label6: TLabel;
    cbstfi: TdxPickEdit;
    Label4: TLabel;
    dxDT1: TdxDateEdit;
    Label1: TLabel;
    dxDT2: TdxDateEdit;
    IBTra: TIBTransaction;
    ibSP: TIBStoredProc;
    tSHEILD: TIBTransaction;
    consulta_s: TIBQuery;
    consulta: TIBQuery;
    fin_rec_ban_bai: TIBQuery;
    dtsfin_rec_ban: TDataSource;
    fin_rec_car_bai: TIBQuery;
    dtsfin_rec_car: TDataSource;
    BitBtn1: TBitBtn;
    imageITEM: TImageList;
    fin_001: TIBDataSet;
    dtsfin_001: TDataSource;
    fin_001ID: TIntegerField;
    fin_001FIN_CDBX: TIntegerField;
    fin_001FIN_CDCX: TIntegerField;
    fin_001FIN_CDRO: TIntegerField;
    fin_001FIN_CCLI: TIntegerField;
    fin_001FIN_DCLI: TIBStringField;
    fin_001FIN_CVEN: TIntegerField;
    fin_001FIN_VEND: TIBStringField;
    fin_001FIN_CREP: TIntegerField;
    fin_001FIN_DREP: TIBStringField;
    fin_001FIN_CCUS: TIntegerField;
    fin_001FIN_DCUS: TIBStringField;
    fin_001FIN_CBCO: TIntegerField;
    fin_001FIN_PRAZ: TSmallintField;
    fin_001FIN_ATRA: TSmallintField;
    fin_001FIN_CONC: TSmallintField;
    fin_001FIN_DCAD: TDateField;
    fin_001FIN_DROM: TDateField;
    fin_001FIN_DVEN: TDateField;
    fin_001FIN_DPAG: TDateField;
    fin_001FIN_DMED: TDateField;
    fin_001FIN_DATR: TDateField;
    fin_001FIN_STDO: TIBStringField;
    fin_001FIN_DOCT: TIBStringField;
    fin_001FIN_PORT: TIBStringField;
    fin_001FIN_STCO: TIBStringField;
    fin_001FIN_STFI: TIBStringField;
    fin_001FIN_VALO: TIBBCDField;
    fin_001FIN_VPAG: TIBBCDField;
    fin_001FIN_VPEN: TIBBCDField;
    fin_001FIN_VMUL: TIBBCDField;
    fin_001FIN_PMUL: TIBBCDField;
    fin_001FIN_VJUR: TIBBCDField;
    fin_001FIN_PJUR: TIBBCDField;
    fin_001FIN_VDES: TIBBCDField;
    fin_001FIN_PDES: TIBBCDField;
    fin_001FIN_PCOM: TIBBCDField;
    fin_001FIN_OBSE: TMemoField;
    fin_001FIN_STA: TIBStringField;
    fin_001FIN_COBR: TIBStringField;
    fin_001FIN_VCOM: TIBBCDField;
    fin_rec_car_baiCLI_FANT: TIBStringField;
    fin_rec_car_baiREP_FANT: TIBStringField;
    fin_rec_car_baiID: TIntegerField;
    fin_rec_car_baiFIN_CCAB: TIntegerField;
    fin_rec_car_baiFIN_CDBX: TIntegerField;
    fin_rec_car_baiFIN_CDCX: TIntegerField;
    fin_rec_car_baiFIN_CCLI: TIntegerField;
    fin_rec_car_baiFIN_CVEN: TIntegerField;
    fin_rec_car_baiFIN_CREP: TIntegerField;
    fin_rec_car_baiFIN_PRAZ: TSmallintField;
    fin_rec_car_baiFIN_ATRA: TSmallintField;
    fin_rec_car_baiFIN_CONC: TSmallintField;
    fin_rec_car_baiFIN_DCAD: TDateField;
    fin_rec_car_baiFIN_DVEN: TDateField;
    fin_rec_car_baiFIN_DPAG: TDateField;
    fin_rec_car_baiFIN_DMED: TDateField;
    fin_rec_car_baiFIN_DATR: TDateField;
    fin_rec_car_baiFIN_STDO: TIBStringField;
    fin_rec_car_baiFIN_DOCT: TIBStringField;
    fin_rec_car_baiFIN_BANC: TIBStringField;
    fin_rec_car_baiFIN_DBAN: TIBStringField;
    fin_rec_car_baiFIN_AGEN: TIBStringField;
    fin_rec_car_baiFIN_CONT: TIBStringField;
    fin_rec_car_baiFIN_NCHQ: TIBStringField;
    fin_rec_car_baiFIN_MCHQ: TSmallintField;
    fin_rec_car_baiFIN_TIPO: TIBStringField;
    fin_rec_car_baiFIN_STFI: TIBStringField;
    fin_rec_car_baiFIN_STCO: TIBStringField;
    fin_rec_car_baiFIN_VALO: TIBBCDField;
    fin_rec_car_baiFIN_VPAG: TIBBCDField;
    fin_rec_car_baiFIN_VPEN: TIBBCDField;
    fin_rec_car_baiFIN_OBSE: TMemoField;
    fin_rec_car_baiFIN_STA: TIBStringField;
    fin_rec_ban_baiCLI_FANT: TIBStringField;
    fin_rec_ban_baiREP_FANT: TIBStringField;
    fin_rec_ban_baiID: TIntegerField;
    fin_rec_ban_baiFIN_CCAB: TIntegerField;
    fin_rec_ban_baiFIN_CDBX: TIntegerField;
    fin_rec_ban_baiFIN_CDCX: TIntegerField;
    fin_rec_ban_baiFIN_CCLI: TIntegerField;
    fin_rec_ban_baiFIN_CVEN: TIntegerField;
    fin_rec_ban_baiFIN_CREP: TIntegerField;
    fin_rec_ban_baiFIN_PRAZ: TSmallintField;
    fin_rec_ban_baiFIN_ATRA: TSmallintField;
    fin_rec_ban_baiFIN_CONC: TSmallintField;
    fin_rec_ban_baiFIN_DCAD: TDateField;
    fin_rec_ban_baiFIN_DVEN: TDateField;
    fin_rec_ban_baiFIN_DPAG: TDateField;
    fin_rec_ban_baiFIN_DMED: TDateField;
    fin_rec_ban_baiFIN_DATR: TDateField;
    fin_rec_ban_baiFIN_STDO: TIBStringField;
    fin_rec_ban_baiFIN_DOCT: TIBStringField;
    fin_rec_ban_baiFIN_BANC: TIBStringField;
    fin_rec_ban_baiFIN_DBAN: TIBStringField;
    fin_rec_ban_baiFIN_AGEN: TIBStringField;
    fin_rec_ban_baiFIN_CONT: TIBStringField;
    fin_rec_ban_baiFIN_NCHQ: TIBStringField;
    fin_rec_ban_baiFIN_MCHQ: TSmallintField;
    fin_rec_ban_baiFIN_TIPO: TIBStringField;
    fin_rec_ban_baiFIN_STFI: TIBStringField;
    fin_rec_ban_baiFIN_STCO: TIBStringField;
    fin_rec_ban_baiFIN_VALO: TIBBCDField;
    fin_rec_ban_baiFIN_VPAG: TIBBCDField;
    fin_rec_ban_baiFIN_VPEN: TIBBCDField;
    fin_rec_ban_baiFIN_OBSE: TMemoField;
    fin_rec_ban_baiFIN_STA: TIBStringField;
    ped_ven_cab: TIBQuery;
    dtsped_ven_cab: TDataSource;
    ped_ven_cabID: TIntegerField;
    ped_ven_cabROM_CDOC: TIntegerField;
    ped_ven_cabROM_CDPR: TIntegerField;
    ped_ven_cabROM_CDPD: TIntegerField;
    ped_ven_cabROM_CDRO: TIntegerField;
    ped_ven_cabROM_CDRD: TIntegerField;
    ped_ven_cabROM_CDNF: TIntegerField;
    ped_ven_cabROM_CDBX: TIntegerField;
    ped_ven_cabROM_CDCX: TIntegerField;
    ped_ven_cabROM_DERO: TIBStringField;
    ped_ven_cabROM_STPD: TIBStringField;
    ped_ven_cabROM_STCO: TIBStringField;
    ped_ven_cabROM_STFI: TIBStringField;
    ped_ven_cabROM_DROM: TDateField;
    ped_ven_cabROM_HROM: TTimeField;
    ped_ven_cabROM_DBAI: TDateField;
    ped_ven_cabROM_DCAN: TDateField;
    ped_ven_cabROM_DNFS: TDateField;
    ped_ven_cabROM_DEXP: TDateField;
    ped_ven_cabROM_HEXP: TTimeField;
    ped_ven_cabROM_CEXP: TIntegerField;
    ped_ven_cabROM_CCLI: TIntegerField;
    ped_ven_cabROM_CVEN: TIntegerField;
    ped_ven_cabROM_CREP: TIntegerField;
    ped_ven_cabROM_CPAG: TIntegerField;
    ped_ven_cabROM_QTVE: TIBBCDField;
    ped_ven_cabROM_QTSP: TIBBCDField;
    ped_ven_cabROM_QTPD: TIBBCDField;
    ped_ven_cabROM_RLVE: TIntegerField;
    ped_ven_cabROM_TSDE: TIBBCDField;
    ped_ven_cabROM_TDSC: TIBStringField;
    ped_ven_cabROM_PDSC: TIBBCDField;
    ped_ven_cabROM_CDSC: TIBBCDField;
    ped_ven_cabROM_ADSC: TIBBCDField;
    ped_ven_cabROM_TCDE: TIBBCDField;
    ped_ven_cabROM_CONC: TSmallintField;
    ped_ven_cabROM_OBSE: TMemoField;
    ped_ven_cabROM_STA: TIBStringField;
    ped_ven_cabROM_COMI: TIBBCDField;
    ped_ven_cabCLI_FANT: TIBStringField;
    ped_ven_cabREP_FANT: TIBStringField;
    ped_ven_cabPAG_DPAG: TIBStringField;
    aux: TIBQuery;
    pcmain: TdxPageControl;
    tsrel: TdxTabSheet;
    dbgsin: TdxDBGrid;
    dbgsinFIN_DOCT: TdxDBGridMaskColumn;
    dbgsinFIN_DCAD: TdxDBGridDateColumn;
    dbgsinFIN_DCLI: TdxDBGridMaskColumn;
    dbgsinFIN_STFI: TdxDBGridMaskColumn;
    dbgsinFIN_PCOM: TdxDBGridMaskColumn;
    dbgsinFIN_VEND: TdxDBGridMaskColumn;
    dbgsinFIN_DREP: TdxDBGridMaskColumn;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    siINC: TSpeedItem;
    siALT: TSpeedItem;
    siDEL: TSpeedItem;
    siSAV: TSpeedItem;
    siCAN: TSpeedItem;
    tshst: TdxTabSheet;
    pchst: TdxPageControl;
    tsVEN: TdxTabSheet;
    dbgcar: TdxDBGrid;
    dbgcarFIN_DOCT: TdxDBGridMaskColumn;
    dbgcarFIN_STDO: TdxDBGridMaskColumn;
    dbgcarFIN_STFI: TdxDBGridMaskColumn;
    dbgcarFIN_TIPO: TdxDBGridMaskColumn;
    dbgcarFIN_DCAD: TdxDBGridDateColumn;
    dbgcarFIN_DVEN: TdxDBGridDateColumn;
    dbgcarFIN_DPAG: TdxDBGridDateColumn;
    dbgcarFIN_VALO: TdxDBGridMaskColumn;
    dbgcarFIN_VPAG: TdxDBGridMaskColumn;
    dbgcarFIN_VPEN: TdxDBGridMaskColumn;
    dxTabSheet1: TdxTabSheet;
    dbgban: TdxDBGrid;
    dbgbanFIN_DOCT: TdxDBGridMaskColumn;
    dbgbanFIN_STDO: TdxDBGridMaskColumn;
    dbgbanFIN_STFI: TdxDBGridMaskColumn;
    dbgbanFIN_TIPO: TdxDBGridMaskColumn;
    dbgbanFIN_DCAD: TdxDBGridDateColumn;
    dbgbanFIN_DVEN: TdxDBGridDateColumn;
    dbgbanFIN_DPAG: TdxDBGridDateColumn;
    dbgbanFIN_VALO: TdxDBGridMaskColumn;
    dbgbanFIN_VPAG: TdxDBGridMaskColumn;
    dbgbanFIN_VPEN: TdxDBGridMaskColumn;
    dxTabSheet4: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ROM_CDNF: TdxDBGridMaskColumn;
    dxDBGrid1ROM_DROM: TdxDBGridDateColumn;
    dxDBGrid1CLI_FANT: TdxDBGridMaskColumn;
    dxDBGrid1REP_FANT: TdxDBGridMaskColumn;
    dxDBGrid1ROM_STCO: TdxDBGridMaskColumn;
    dxDBGrid1ROM_TCDE: TdxDBGridMaskColumn;
    Label2: TLabel;
    cbper: TdxPickEdit;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    edobse: TdxMemo;
    fin_rec_car_baiUSU_DUSU: TIBStringField;
    fin_rec_car_baiFIN_DCAN: TDateField;
    fin_rec_car_baiFIN_CPPL: TIntegerField;
    fin_rec_car_baiFIN_CCUS: TIntegerField;
    fin_rec_car_baiFIN_CBCO: TIntegerField;
    fin_rec_car_baiFIN_PORT: TIBStringField;
    fin_rec_car_baiFIN_VMUL: TIBBCDField;
    fin_rec_car_baiFIN_PMUL: TIBBCDField;
    fin_rec_car_baiFIN_VJUR: TIBBCDField;
    fin_rec_car_baiFIN_PJUR: TIBBCDField;
    fin_rec_car_baiFIN_VDES: TIBBCDField;
    fin_rec_car_baiFIN_PDES: TIBBCDField;
    fin_rec_car_baiFIN_DESC: TIBStringField;
    fin_rec_car_baiFIN_CDCO: TIntegerField;
    fin_rec_car_baiFIN_CDBA: TIBStringField;
    fin_rec_car_baiFIN_DEBA: TIBStringField;
    fin_rec_ban_baiUSU_DUSU: TIBStringField;
    fin_rec_ban_baiFIN_DCAN: TDateField;
    fin_rec_ban_baiFIN_CPPL: TIntegerField;
    fin_rec_ban_baiFIN_CCUS: TIntegerField;
    fin_rec_ban_baiFIN_CBCO: TIntegerField;
    fin_rec_ban_baiFIN_PORT: TIBStringField;
    fin_rec_ban_baiFIN_VMUL: TIBBCDField;
    fin_rec_ban_baiFIN_PMUL: TIBBCDField;
    fin_rec_ban_baiFIN_VJUR: TIBBCDField;
    fin_rec_ban_baiFIN_PJUR: TIBBCDField;
    fin_rec_ban_baiFIN_VDES: TIBBCDField;
    fin_rec_ban_baiFIN_PDES: TIBBCDField;
    fin_rec_ban_baiFIN_DESC: TIBStringField;
    fin_rec_ban_baiFIN_CDCO: TIntegerField;
    fin_rec_ban_baiFIN_CDBA: TIBStringField;
    fin_rec_ban_baiFIN_DEBA: TIBStringField;
    ped_ven_cabUSU_DUSU: TIBStringField;
    ped_ven_cabROM_DPRD: TDateField;
    ped_ven_cabROM_CTNR: TIBStringField;
    ped_ven_cabROM_DEMB: TDateField;
    ped_ven_cabROM_DDES: TDateField;
    dxDBGrid1ROM_DERO: TdxDBGridMaskColumn;
    fin_rec_ban_baiFIN_DBAI: TDateField;
    fin_rec_car_baiFIN_DBAI: TDateField;
    dxDBGrid1USU_DUSU: TdxDBGridMaskColumn;
    fin_rec_car_baiFIN_IDBX: TIBStringField;
    fin_rec_car_baiFIN_VENC: TIBBCDField;
    fin_rec_ban_baiFIN_IDBX: TIBStringField;
    fin_rec_ban_baiFIN_VENC: TIBBCDField;
    fin_001FIN_RCLI: TIBStringField;
    fin_001FIN_RREP: TIBStringField;
    fin_001FIN_VENC: TIBBCDField;
    dbgsinFIN_VALO: TdxDBGridMaskColumn;
    dbgsinFIN_VPAG: TdxDBGridMaskColumn;
    dbgsinFIN_VPEN: TdxDBGridMaskColumn;
    dbgsinFIN_VCOM: TdxDBGridMaskColumn;
    dbgsinFIN_VENC: TdxDBGridMaskColumn;
    dbgsinFIN_STDO: TdxDBGridMaskColumn;
    fin_001FIN_CCAB: TIntegerField;
    fin_001FIN_CFOR: TIntegerField;
    fin_001FIN_CPPL: TIntegerField;
    fin_001FIN_CDCO: TIntegerField;
    fin_001FIN_MCHQ: TSmallintField;
    fin_001FIN_DCAN: TDateField;
    fin_001FIN_DBAI: TDateField;
    fin_001FIN_DDES: TDateField;
    fin_001FIN_PREV: TIBStringField;
    fin_001FIN_DUPL: TIBStringField;
    fin_001FIN_DESC: TIBStringField;
    fin_001FIN_DFOR: TIBStringField;
    fin_001FIN_BANC: TIBStringField;
    fin_001FIN_DBAN: TIBStringField;
    fin_001FIN_AGEN: TIBStringField;
    fin_001FIN_CONT: TIBStringField;
    fin_001FIN_NCHQ: TIBStringField;
    fin_001FIN_TIPO: TIBStringField;
    fin_001FIN_IDBX: TIBStringField;
    fin_001FIN_IPPL: TIBStringField;
    fin_001FIN_DFIN: TIBStringField;
    fin_001FIN_CDBA: TIBStringField;
    fin_001FIN_DEBA: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtcarKeyPress(Sender: TObject; var Key: Char);
    procedure edderoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgromBackgroundDrawEvent(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect);
    procedure edcvenValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdvenExit(Sender: TObject);
    procedure edcrepValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure cbdrepExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure fin_001AfterCancel(DataSet: TDataSet);
    procedure fin_001AfterDelete(DataSet: TDataSet);
    procedure fin_001AfterEdit(DataSet: TDataSet);
    procedure fin_001AfterOpen(DataSet: TDataSet);
    procedure fin_001AfterPost(DataSet: TDataSet);
    procedure fin_001BeforeCancel(DataSet: TDataSet);
    procedure BPriClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure fin_001BeforePost(DataSet: TDataSet);
    procedure cbperExit(Sender: TObject);
  private
    { Private declarations }
    procedure ajustaform;
    procedure PESQUISA_VENDEDOR(pesq,chave: string);
    procedure PESQUISA_REPRESENTANTE(pesq,chave: string);
  public
    procedure ABRE_TABELA;
    { Public declarations }
  end;

var
  frmpag_com: Tfrmpag_com;
  conc: word;

implementation

uses uPrincipal, prelatorio_geral;

{$R *.dfm}

procedure Tfrmpag_com.AjustaForm;
begin
  screen.Cursor:=crHourGlass;
  screen.Cursor:=crDefault;

  Self.Height := frmprincipal.pnCustomize.Height-4;
  Self.top    := 0;
  Self.left   := 0;
  Self.Width  := TELA_WIDTH;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
   self.Height := screen.Height;
   self.Width  :=  screen.Width;
  end;
end;

procedure Tfrmpag_com.PESQUISA_VENDEDOR(pesq,chave: string);
begin
  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT USU_CUSU,USU_DUSU,USU_STA,USU_MENU,USU_STAV,USU_RELA FROM CAD_USU');

      if pesq = 'C' then
      SQL.Add('WHERE  USU_CUSU = '''+chave+'''')
      else if pesq = 'F' then
      SQL.Add('WHERE  USU_DUSU = '''+chave+'''');

      Open;

      if fields[0].IsNull then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        begin
        edcven.SetFocus;
        messageBox(handle,'Código do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
        cbdven.SetFocus;
        messageBox(handle,'Nome do vendedor não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;

        Abort;
      end;

      if fields[2].AsString <> '0' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'VEN' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
           edcven.SetFocus
        else if pesq = 'F' then
           cbdven.SetFocus;

        messageBox(handle,PChar('Vendedor '+fields[1].AsString+' não está habilitado para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[4].AsString <> 'A' then
      begin
        edcven.Text := '';
        cbdven.Text := '';

        if pesq = 'C' then
        edcven.SetFocus
        else if pesq = 'F' then
        cbdven.SetFocus;

        if fields[4].AsString = 'I' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK) else
        if fields[4].AsString = 'S' then
        messageBox(handle,PChar('Login do Vendedor '+fields[1].AsString+' está suspenso !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        abort;
      end;
      
      edcven.Text := fields[0].AsString;
      cbdven.Text := fields[1].AsString;

      edcrep.Enabled := false;
      cbdrep.Enabled := false;
      dxDT1.SetFocus;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmpag_com.PESQUISA_REPRESENTANTE(pesq,chave: string);
begin
  try
    tag := 1;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID,REP_FANT,REP_STA,REP_STAV FROM CAD_REP');
      if pesq = 'C' then
         SQL.Add('WHERE  ID = '''+chave+'''')
      else if pesq = 'F' then
         SQL.Add('WHERE  REP_FANT = '''+chave+'''');
      Open;

      if fields[0].IsNull then
      begin
        edcrep.Text := '';
        cbdrep.Text := '';

        edcven.Enabled := true;
        cbdven.Enabled := true;

        if pesq = 'C' then
        begin
          edcrep.SetFocus;
          messageBox(handle,'Código do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end
        else if pesq = 'F' then
        begin
          cbdrep.SetFocus;
          messageBox(handle,'Nome do representante não cadastrado !',PChar(self.Caption),MB_ICONERROR+MB_OK);
        end;
        Abort;
      end;

      if fields[2].AsString = '1' then
      begin
        edcrep.Text    := '';
        cbdrep.Text    := '';

        edcven.Enabled := true;
        cbdven.Enabled := true;

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        messageBox(handle,PChar('Representante '+fields[1].AsString+' enviado para a lixeira !'),PChar(self.Caption),MB_ICONERROR+MB_OK);
        Abort;
      end;

      if fields[3].AsString <> 'A' then
      begin
        edcrep.Text    := '';
        cbdrep.Text    := '';

        edcven.Enabled := true;
        cbdven.Enabled := true;

        if pesq = 'C' then
           edcrep.SetFocus
        else if pesq = 'F' then
           cbdrep.SetFocus;

        if fields[3].AsString = 'I' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' inativo !'),PChar(self.Caption),MB_ICONERROR+MB_OK)
        else if fields[3].AsString = 'P' then
           messageBox(handle,PChar('Representante '+fields[1].AsString+' aguardando autorização para efetuar vendas !'),PChar(self.Caption),MB_ICONERROR+MB_OK);

        Abort;
      end;
      edcrep.Text    := fields[0].AsString;
      cbdrep.Text    := fields[1].AsString;

      edcven.Enabled := false;
      cbdven.Enabled := false;
      dxDT1.SetFocus;
    end;
  finally
    tag := 0;
  end;
end;

procedure Tfrmpag_com.ABRE_TABELA;
begin
  with fin_001 do
  begin
    SelectSQL.Clear;
    SelectSQL.Add('DELETE FROM FIN_PAG');
    ExecSQL;
    tSHEILD.CommitRetaining;

    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT * FROM FIN_PAG');
    SelectSQL.Add('ORDER BY FIN_DOCT');
    Open;
  end;
end;

procedure Tfrmpag_com.FormCreate(Sender: TObject);
begin
  ABRE_TABELA;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   USU_DUSU FROM CAD_USU');
    SQL.Add('WHERE    USU_MENU = ''VEN''');
    SQL.Add('AND      USU_STA  = ''0''');
    SQL.Add('ORDER BY USU_DUSU');
    Open;
    cbdven.Items.Add('TODOS');
    while not eof do
    begin
      cbdven.Items.Add(fields[0].AsString);
      next;
    end;

    SQL.Clear;
    SQL.Add('SELECT   REP_FANT FROM CAD_REP');
    SQL.Add('WHERE    REP_STA = ''0''');
    SQL.Add('ORDER BY REP_FANT');
    Open;
    cbdrep.Items.Add('TODOS');
    while not eof do
    begin
      cbdrep.Items.Add(fields[0].AsString);
      next;
    end;
  end;
  ajustaform;
end;

procedure Tfrmpag_com.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
  end;
end;

procedure Tfrmpag_com.BSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmpag_com.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  if frmpag_com <> nil then
  begin
    frmpag_com.Release;
    frmpag_com := nil;
  end;  
end;

procedure Tfrmpag_com.edtcarKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmpag_com.edderoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure Tfrmpag_com.dbgromBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  Text : String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);
    if (Sender as TdxDBGrid).GroupColumnCount = 0 then

    begin
      Font.Color := clMenu;
      Text := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, Text);
    end;
  end;
end;

procedure Tfrmpag_com.edcvenValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcven.Text = '' then
  begin
    cbdven.Text    := '';
    edcrep.Enabled := true;
    cbdrep.Enabled := true;
    abort;
  end;

  if cbdven.Text <> 'TODOS' then
  PESQUISA_VENDEDOR('C',edcven.Text) else
  begin
    edcrep.Enabled := false;
    cbdrep.Enabled := false;
  end;
end;

procedure Tfrmpag_com.cbdvenExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  if cbdven.Text = '' then
  begin
    edcven.Text    := '';
    edcrep.Enabled := true;
    cbdrep.Enabled := true;

    abort;
  end;

  try
    if cbdven.Text <> 'TODOS' then
    PESQUISA_VENDEDOR('F',cbdven.Text) else
    begin
      edcrep.Enabled := false;
      cbdrep.Enabled := false;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpag_com.edcrepValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if edcrep.Text = '' then
  begin
    cbdrep.Text    := '';
    edcven.Enabled := true;
    cbdven.Enabled := true;

    abort;
  end;

  if cbdrep.Text <> 'TODOS' then
  PESQUISA_REPRESENTANTE('C',edcrep.Text) else
  begin
    edcven.Enabled := false;
    cbdven.Enabled := false;
  end;
end;

procedure Tfrmpag_com.cbdrepExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  if cbdrep.Text = '' then
  begin
    edcrep.Text    := '';
    edcven.Enabled := true;
    cbdven.Enabled := true;
    
    abort;
  end;

  try
    if cbdrep.Text <> 'TODOS' then
    PESQUISA_REPRESENTANTE('F',cbdrep.Text) else
    begin
      edcven.Enabled := false;
      cbdven.Enabled := false;
    end;
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

procedure Tfrmpag_com.BitBtn1Click(Sender: TObject);
var
  BRet: boolean;
  i: word;
  
procedure PESQUISA_PEDIDO(cdbx: integer);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,ROM_STCO,ROM_COMI,ROM_DERO FROM '+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE  ROM_CDBX = '''+inttostr(cdbx)+'''');
    Open;
    Last;

    fin_001FIN_CDRO.Value := fields[0].AsInteger;
    fin_001FIN_STCO.Value := fields[1].AsString;
    fin_001FIN_PCOM.Value := fields[2].AsFloat;
    fin_001FIN_PORT.Value := fields[3].AsString;

    if (fin_001FIN_PCOM.AsFloat = 0) or (cbdven.Enabled) then
    begin
      aux.SQL.Clear;
      if cbdven.Enabled then
      begin
        aux.SQL.Add('SELECT FUN_COMI FROM CAD_FUN');
        aux.SQL.Add('WHERE  ID = '''+edcven.Text+'''');
      end
      else
      begin
        aux.SQL.Add('SELECT REP_COMI FROM CAD_REP');
        aux.SQL.Add('WHERE  ID = '''+edcrep.Text+'''');
      end;
      aux.Open;
      fin_001FIN_PCOM.Value := aux.Fields[0].AsFloat;
    end;
  end;
end;

function RETORNA_TITULO(doct: string): string;
var i:word;
    titu: string;
begin
  titu := doct;
  for i := 1 to length(titu) do
  begin
    if copy(doct,i,1) = '-' then
       break;
  end;
  titu := titu + copy(doct,i,3);

  result := titu;
end;

begin
  activecontrol          := nil;
  pcmain.ActivePageIndex := 0;
  
  if (cbdven.Text = '') and (cbdrep.Text = '') then
  raise exception.Create('Vendedor ou Representante não selecionado !');

  if (dxDT1.Date < 0) or (dxDT2.Date < 0) then
  raise exception.Create('Período não selecionado ou incorreto !');

  try
    if cbper.Text = 'DATA FATURAMENTO' then
    cbper.Hint := 'Faturamento' else
    cbper.Hint := 'Pagamento';
    
    with fin_rec_car_bai do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.CLI_FANT,CAD_REP.REP_FANT,CAD_USU.USU_DUSU,FIN_REC_CAR_BAI.*');
      SQL.Add('FROM   CAD_CLI,CAD_REP,CAD_USU,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
      SQL.Add('WHERE  CAD_CLI.ID = FIN_REC_CAR_BAI.FIN_CCLI');
      SQL.Add('AND    CAD_REP.ID = FIN_REC_CAR_BAI.FIN_CREP');
      SQL.Add('AND    CAD_USU.USU_CUSU = FIN_REC_CAR_BAI.FIN_CVEN');
      SQL.Add('AND    FIN_REC_CAR_BAI.ID = 0');
      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''CANCELADO''');
//      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''PROTESTADO''');
//      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''NÃO PAGO''');
      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''SEM COBRANÇA''');
      Open;
    end;

    with fin_rec_ban_bai do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.CLI_FANT,CAD_REP.REP_FANT,CAD_USU.USU_DUSU,FIN_REC_BAN_BAI.*');
      SQL.Add('FROM   CAD_CLI,CAD_REP,CAD_USU,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI"');
      SQL.Add('WHERE  CAD_CLI.ID = FIN_REC_BAN_BAI.FIN_CCLI');
      SQL.Add('AND    CAD_REP.ID = FIN_REC_BAN_BAI.FIN_CREP');
      SQL.Add('AND    CAD_USU.USU_CUSU = FIN_REC_BAN_BAI.FIN_CVEN');
      SQL.Add('AND    FIN_REC_BAN_BAI.ID = 0');
      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''CANCELADO''');
//      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''PROTESTADO''');
//      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''NÃO PAGO''');
      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''SEM COBRANÇA''');
      Open;
    end;

    if (cbstco.Text = 'TODOS') or (cbstco.Text = 'CARTEIRA') then
    with fin_rec_car_bai do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.CLI_FANT,CAD_REP.REP_FANT,CAD_USU.USU_DUSU,FIN_REC_CAR_BAI.*');
      SQL.Add('FROM   CAD_CLI,CAD_REP,CAD_USU,'+SLPrincipal.Values['fin_rec_car_bai']+' "FIN_REC_CAR_BAI"');
      SQL.Add('WHERE  CAD_CLI.ID = FIN_REC_CAR_BAI.FIN_CCLI');
      SQL.Add('AND    CAD_REP.ID = FIN_REC_CAR_BAI.FIN_CREP');
      SQL.Add('AND    CAD_USU.USU_CUSU = FIN_REC_CAR_BAI.FIN_CVEN');
      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''CANCELADO''');
//      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''PROTESTADO''');
//      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''NÃO PAGO''');
      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_STFI <> ''SEM COBRANÇA''');

      if cbper.Text = 'DATA FATURAMENTO' then
      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_DBAI BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''')
      else
      SQL.Add('AND    FIN_REC_CAR_BAI.FIN_DPAG BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

      if cbdven.Enabled then
      begin
        if cbdven.Text <> 'TODOS' then
        SQL.Add('AND CAD_USU.USU_CUSU = '''+edcven.Text+'''');
      end;

      if cbdrep.Enabled then
      begin
        if cbdrep.Text <> 'TODOS' then
        SQL.Add('AND CAD_REP.ID = '''+edcrep.Text+'''');
      end;

      if cbstfi.Text <> 'TODOS' then
         SQL.Add('AND FIN_REC_CAR_BAI.FIN_STFI LIKE '''+cbstfi.Text+'%''');

      if cbper.Text = 'DATA FATURAMENTO' then
      SQL.Add('ORDER BY FIN_DBAI')
      else
      SQL.Add('ORDER BY FIN_DPAG');
      
      Open;
    end;

    if (cbstco.Text = 'TODOS') or (cbstco.Text = 'BANCÁRIO') then
    with fin_rec_ban_bai do
    begin
      SQL.Clear;
      SQL.Add('SELECT CAD_CLI.CLI_FANT,CAD_REP.REP_FANT,CAD_USU.USU_DUSU,FIN_REC_BAN_BAI.*');
      SQL.Add('FROM   CAD_CLI,CAD_REP,CAD_USU,'+SLPrincipal.Values['fin_rec_ban_bai']+' "FIN_REC_BAN_BAI"');
      SQL.Add('WHERE  CAD_CLI.ID = FIN_REC_BAN_BAI.FIN_CCLI');
      SQL.Add('AND    CAD_REP.ID = FIN_REC_BAN_BAI.FIN_CREP');
      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''CANCELADO''');
//      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''PROTESTADO''');

//      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''NÃO PAGO''');
      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_STFI <> ''SEM COBRANÇA''');
      SQL.Add('AND    CAD_USU.USU_CUSU = FIN_REC_BAN_BAI.FIN_CVEN');
      if cbper.Text = 'DATA FATURAMENTO' then
      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_DBAI BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''')
      else
      SQL.Add('AND    FIN_REC_BAN_BAI.FIN_DPAG BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');

      if cbdven.Enabled then
      begin
        if cbdven.Text <> 'TODOS' then
        SQL.Add('AND CAD_USU.USU_CUSU = '''+edcven.Text+'''');
      end;

      if cbdrep.Enabled then
      begin
        if cbdrep.Text <> 'TODOS' then
        SQL.Add('AND CAD_REP.ID = '''+edcrep.Text+'''');
      end;

      if cbstfi.Text <> 'TODOS' then
         SQL.Add('AND FIN_REC_BAN_BAI.FIN_STFI LIKE '''+cbstfi.Text+'%''');

      if cbper.Text = 'DATA FATURAMENTO' then
      SQL.Add('ORDER BY FIN_DBAI')
      else
      SQL.Add('ORDER BY FIN_DPAG');
      
      Open;
    end;

    with ped_ven_cab do
    begin
      SQL.Clear;
      SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
      SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
      SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
      SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
      SQL.Add('AND      PED_VEN_CAB.ROM_DROM BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
      SQL.Add('AND      PED_VEN_CAB.ROM_CDBX IS NULL');
      SQL.Add('AND      PED_VEN_CAB.ROM_STA  = ''0''');
      SQL.Add('AND      PED_VEN_CAB.ROM_STFI <> ''CANCELADO''');

      if cbdven.Enabled then
      begin
        if cbdven.Text <> 'TODOS' then
        SQL.Add('AND CAD_USU.USU_CUSU = '''+edcven.Text+'''');
      end;

      if cbdrep.Enabled then
      begin
        if cbdrep.Text <> 'TODOS' then
        SQL.Add('AND CAD_REP.ID = '''+edcrep.Text+'''');
      end;

      if cbstfi.Text <> 'TODOS' then
         SQL.Add('AND PED_VEN_CAB.ROM_STFI LIKE '''+cbstfi.Text+'%''');

      SQL.Add('ORDER BY ID DESC');
      Open;
    end;
    ABRE_TABELA;
    fin_001.DisableControls;

    tag := 1;
    while not fin_rec_car_bai.Eof do
    begin
      BRet := true;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ROM_CDNF FROM '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('WHERE  ROM_CDBX = '''+fin_rec_car_baiFIN_CDBX.AsString+'''');
        Open;
      end;

      if not consulta.Fields[0].IsNull then
      begin
        BRet := false;
        with aux do
        begin
          SQL.Clear;
          SQL.Add('SELECT NAT_TIPO');
          SQL.Add('FROM   TAB_NAT,'+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
          SQL.Add('WHERE  NFE_CNAT = NAT_CNAT');
          SQL.Add('AND    NFE_CDNF = '''+consulta.Fields[0].AsString+'''');
          Open;
        end;

        if (aux.Fields[0].AsString = 'BENEFICIAMENTO') or (aux.Fields[0].AsString = 'VENDA') or
           (aux.Fields[0].AsString = 'REVENDA') then
           BRet := true;
      end;

      if BRet then
      begin
        if fin_rec_car_baiFIN_CONC.AsInteger = 0 then
        conc := 1 else
        conc := fin_rec_car_baiFIN_CONC.AsInteger;

        for i := 1 to conc do
        begin
          fin_001.Append;
          fin_001ID.Value       := 0;
          fin_001FIN_STDO.Value := fin_rec_car_baiFIN_STDO.AsString;
          fin_001FIN_CDBX.Value := fin_rec_car_baiFIN_CDBX.AsInteger;
          fin_001FIN_CDCX.Value := fin_rec_car_baiFIN_CDCX.AsInteger;
          fin_001FIN_CCLI.Value := fin_rec_car_baiFIN_CCLI.AsInteger;
          fin_001FIN_DCLI.Value := fin_rec_car_baiCLI_FANT.AsString;
          fin_001FIN_CVEN.Value := fin_rec_car_baiFIN_CVEN.AsInteger;
          fin_001FIN_VEND.Value := fin_rec_car_baiUSU_DUSU.AsString;
          fin_001FIN_CREP.Value := fin_rec_car_baiFIN_CREP.AsInteger;
          fin_001FIN_DREP.Value := fin_rec_car_baiREP_FANT.AsString;
          fin_001FIN_CONC.Value := conc;

          if cbper.Text = 'DATA FATURAMENTO' then
          fin_001FIN_DCAD.Value := fin_rec_car_baiFIN_DBAI.AsDateTime else
          fin_001FIN_DCAD.Value := fin_rec_car_baiFIN_DPAG.AsDateTime;

          fin_001FIN_DROM.Value := fin_rec_car_baiFIN_DVEN.AsDateTime;
          fin_001FIN_DVEN.Value := fin_rec_car_baiFIN_DVEN.AsDateTime;
          fin_001FIN_DPAG.Value := fin_rec_car_baiFIN_DPAG.AsDateTime;
          fin_001FIN_DOCT.Value := fin_rec_car_baiFIN_DOCT.AsString;
          fin_001FIN_STFI.Value := fin_rec_car_baiFIN_STFI.AsString;
          fin_001FIN_TIPO.Value := fin_rec_car_baiFIN_TIPO.AsString;
          fin_001FIN_VALO.Value := fin_rec_car_baiFIN_VALO.AsFloat;
          fin_001FIN_VENC.Value := fin_rec_car_baiFIN_VENC.AsFloat;
          fin_001FIN_VPAG.Value := fin_rec_car_baiFIN_VPAG.AsFloat;
          fin_001FIN_VPEN.Value := fin_rec_car_baiFIN_VPEN.AsFloat;
          fin_001FIN_OBSE.Value := fin_rec_car_baiFIN_OBSE.AsString;
          fin_001FIN_STA.Value  := fin_rec_car_baiFIN_STA.AsString;

          PESQUISA_PEDIDO(fin_rec_car_baiFIN_CDBX.AsInteger);

          fin_001.Post;
        end;  
      end;
      fin_rec_car_bai.Next;
    end;

    while not fin_rec_ban_bai.Eof do
    begin
      BRet := true;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ROM_CDNF FROM '+SLPrincipal.Values['ped_ven_cab']);
        SQL.Add('WHERE  ROM_CDBX = '''+fin_rec_ban_baiFIN_CDBX.AsString+'''');

        Open;
      end;

      if not consulta.Fields[0].IsNull then
      begin
        BRet := false;
        with aux do
        begin
          SQL.Clear;
          SQL.Add('SELECT NAT_TIPO');
          SQL.Add('FROM   TAB_NAT,'+SLPrincipal.Values['nfe_cab']+' "NFE_CAB"');
          SQL.Add('WHERE  NFE_CNAT = NAT_CNAT');
          SQL.Add('AND    NFE_CDNF = '''+consulta.Fields[0].AsString+'''');
          SQL.Add('AND    NFE_CHAV <> '' ''');
          Open;
        end;

        if (aux.Fields[0].AsString = 'BENEFICIAMENTO') or (aux.Fields[0].AsString = 'VENDA') or
           (aux.Fields[0].AsString = 'REVENDA') then
           BRet := true;
      end;

      if BRet then
      begin
        fin_001.Append;
        fin_001ID.Value       := 0;
        fin_001FIN_STDO.Value := fin_rec_ban_baiFIN_STDO.AsString;
        fin_001FIN_CDBX.Value := fin_rec_ban_baiFIN_CDBX.AsInteger;
        fin_001FIN_CDCX.Value := fin_rec_ban_baiFIN_CDCX.AsInteger;
        fin_001FIN_CCLI.Value := fin_rec_ban_baiFIN_CCLI.AsInteger;
        fin_001FIN_DCLI.Value := fin_rec_ban_baiCLI_FANT.AsString;
        fin_001FIN_CVEN.Value := fin_rec_ban_baiFIN_CVEN.AsInteger;
        fin_001FIN_VEND.Value := fin_rec_ban_baiUSU_DUSU.AsString;
        fin_001FIN_CREP.Value := fin_rec_ban_baiFIN_CREP.AsInteger;
        fin_001FIN_DREP.Value := fin_rec_ban_baiREP_FANT.AsString;
        fin_001FIN_CONC.Value := fin_rec_car_baiFIN_CONC.AsInteger;

        if cbper.Text = 'DATA FATURAMENTO' then
        fin_001FIN_DCAD.Value := fin_rec_ban_baiFIN_DBAI.AsDateTime else
        fin_001FIN_DCAD.Value := fin_rec_ban_baiFIN_DPAG.AsDateTime;

        fin_001FIN_DROM.Value := fin_rec_ban_baiFIN_DVEN.AsDateTime;
        fin_001FIN_DVEN.Value := fin_rec_ban_baiFIN_DVEN.AsDateTime;
        fin_001FIN_DPAG.Value := fin_rec_ban_baiFIN_DPAG.AsDateTime;
        fin_001FIN_DOCT.Value := fin_rec_ban_baiFIN_DOCT.AsString;
        fin_001FIN_STFI.Value := fin_rec_ban_baiFIN_STFI.AsString;
        fin_001FIN_TIPO.Value := fin_rec_ban_baiFIN_TIPO.AsString;
        fin_001FIN_VALO.Value := fin_rec_ban_baiFIN_VALO.AsFloat;
        fin_001FIN_VENC.Value := fin_rec_ban_baiFIN_VENC.AsFloat;
        fin_001FIN_VPAG.Value := fin_rec_ban_baiFIN_VPAG.AsFloat;
        fin_001FIN_VPEN.Value := fin_rec_ban_baiFIN_VPEN.AsFloat;
        fin_001FIN_OBSE.Value := fin_rec_ban_baiFIN_OBSE.AsString;
        fin_001FIN_STA.Value  := fin_rec_ban_baiFIN_STA.AsString;

        PESQUISA_PEDIDO(fin_rec_ban_baiFIN_CDBX.AsInteger);

        fin_001.Post;
      end;
      fin_rec_ban_bai.Next;
    end;
  finally
    tSHEILD.CommitRetaining;
    fin_001.Close;
    fin_001.Open;
    fin_001.EnableControls;
    tag := 0;

    if not ped_ven_cab.Fields[0].IsNull then
    begin
      pchst.ActivePageIndex  := 2;
      pcmain.ActivePageIndex := 1;
      ShowMessage('A pesquisa encontrou pedidos em aberto (sem baixa financeria) !'+#13+'Favor entrar em contato com o responsável pelo(s) pedido(s)');
    end;

    BPri.Enabled := (fin_001ID.AsInteger > 0);
  end;
end;

procedure Tfrmpag_com.fin_001AfterCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
end;

procedure Tfrmpag_com.fin_001AfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
end;

procedure Tfrmpag_com.fin_001AfterEdit(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := false;
    siALT.Enabled := false;
    siDEL.Enabled := false;
    siSAV.Enabled := true;
    siCAN.Enabled := true;

    if pcmain.ActivePageIndex = 0 then
       dbgsin.SetFocus;
  end;
end;

procedure Tfrmpag_com.fin_001AfterOpen(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;
end;

procedure Tfrmpag_com.fin_001AfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  tSHEILD.CommitRetaining;

  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;

    wRec := fin_001.GetBookmark;

    fin_001.Close;
    fin_001.Open;
    if (wRec = Nil) or (fin_001.Fields[0].IsNull) then fin_001.last
       else fin_001.GotoBookmark(wRec);
    fin_001.FreeBookmark(wRec);

    if pcmain.ActivePageIndex = 0 then
       dbgsin.SetFocus;
  end;
end;

procedure Tfrmpag_com.fin_001BeforeCancel(DataSet: TDataSet);
begin
  if tag = 0 then
  begin
    siINC.Enabled := true;
    siALT.Enabled := true;
    siDEL.Enabled := true;
    siSAV.Enabled := false;
    siCAN.Enabled := false;
  end;

  if pcmain.ActivePageIndex = 0 then
     dbgsin.SetFocus;

  if fin_001.RecordCount = 0 then
  begin
    fin_001.Close;
    fin_001.Open;
    ABORT;
  end;
end;

procedure Tfrmpag_com.BPriClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsPAG_COM.TabVisible := true;
    frmrelatorio_geral.tsPAG_COM.Hint       := cbstco.Text;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsPAG_COM;
    frmrelatorio_geral.cbPAG_COM_DATA.Text  := '';
    frmrelatorio_geral.dxDT1.Hint           := formatDatetime('dd/mm/yy',dxDT1.Date);
    frmrelatorio_geral.dxDT2.Hint           := formatDatetime('dd/mm/yy',dxDT2.Date);    
    frmrelatorio_geral.cbPAG_COM_TREL.Text  := 'PAGAMENTO DE COMISSÃO DE VENDA';
    frmrelatorio_geral.cbPAG_COM_DESC.Hint  := cbper.Hint;

    if copy(cbstfi.Text,1,4) = 'PAGO' then
    frmrelatorio_geral.cbPAG_COM_DATA.Tag := 0
    else
    frmrelatorio_geral.cbPAG_COM_DATA.Tag  := 1;

    if cbdven.Enabled then
    begin
      frmrelatorio_geral.cbPAG_COM_TREL.Tag  := 0;
      frmrelatorio_geral.cbPAG_COM_TREL.Hint := cbdven.Text;
    end
    else
    begin
      frmrelatorio_geral.cbPAG_COM_TREL.Tag  := 1;
      frmrelatorio_geral.cbPAG_COM_TREL.Hint := cbdrep.Text;
    end;

    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmpag_com.siDELClick(Sender: TObject);
begin
  fin_001.Delete;
end;

procedure Tfrmpag_com.fin_001BeforePost(DataSet: TDataSet);
begin
  if copy(cbstfi.Text,1,4) = 'PAGO' then
  fin_001FIN_VCOM.Value := (fin_001FIN_VPAG.AsFloat * fin_001FIN_PCOM.AsFloat)/100
  else
  fin_001FIN_VCOM.Value := ((fin_001FIN_VALO.AsFloat+fin_001FIN_VENC.AsFloat) * fin_001FIN_PCOM.AsFloat)/100;
end;

procedure Tfrmpag_com.cbperExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    if cbper.Text = 'DATA PAGAMENTO' then
    cbstfi.Text := 'PAGO';
  finally
    Ctrl          := ActiveControl;
    ActiveControl := nil;
    if ctrl <> nil then
    begin
      PostMessage(TWinControl(Ctrl).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(Ctrl).SetFocus;
    end;
  end;
end;

end.


