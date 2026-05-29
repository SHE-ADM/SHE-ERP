unit pctr_ped;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr1, ImgList, DB, IBStoredProc, IBEvents,
  IBDatabase, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, DBCtrls, dxPageControl, dxEditor, dxEdLib,
  StdCtrls, dxDBTLCl, dxGrClms, DateUtils, dxExEdtr, jpeg, Menus, Shellapi,
  Math, dxDBELib, rxSpeedbar, ppadr2, IBSQL, StrUtils;

type
  Tfrmctr_ped = class(Tfrmpadr2)
    rom_ite: TIBQuery;
    dtsrom_ite: TDataSource;
    Label23: TLabel;
    pcITE: TdxPageControl;
    tsITE: TdxTabSheet;
    tsOBS: TdxTabSheet;
    dbgite: TdxDBGrid;
    dbgConsultaROM_STPD: TdxDBGridMaskColumn;
    dbgConsultaROM_STCO: TdxDBGridMaskColumn;
    dbgConsultaROM_STFI: TdxDBGridMaskColumn;
    dbgConsultaROM_DROM: TdxDBGridDateColumn;
    dbgConsultaROM_TSDE: TdxDBGridMaskColumn;
    dbgConsultaROM_TCDE: TdxDBGridMaskColumn;
    dbgConsultaCLI_FANT: TdxDBGridMaskColumn;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    rom_iteID: TIntegerField;
    rom_iteROM_CDOC: TIntegerField;
    rom_iteROM_ITEM: TIBStringField;
    rom_iteROM_CPRO: TIntegerField;
    rom_iteROM_CPR2: TIntegerField;
    rom_iteROM_CDET: TIBStringField;
    rom_iteROM_QTDE: TIBBCDField;
    rom_iteROM_VDSC: TIBBCDField;
    rom_iteROM_TOTA: TIBBCDField;
    rom_iteID1: TIntegerField;
    rom_itePRO_CART: TIBStringField;
    rom_itePRO_CPRO: TIBStringField;
    rom_itePRO_CCOR: TIntegerField;
    rom_itePRO_RCOR: TIBStringField;
    rom_itePRO_DCOR: TIBStringField;
    rom_itePRO_DUNI: TIBStringField;
    rom_itePRO_FOTO: TBlobField;
    dbgiteROM_ITEM: TdxDBGridMaskColumn;
    dbgiteROM_QTDE: TdxDBGridMaskColumn;
    dbgiteROM_UNIT: TdxDBGridMaskColumn;
    dbgiteROM_VDSC: TdxDBGridMaskColumn;
    dbgiteROM_TOTA: TdxDBGridMaskColumn;
    dbgitePRO_CPRO: TdxDBGridMaskColumn;
    dbgConsultaPAG_DPAG: TdxDBGridMaskColumn;
    dbgConsultaROM_PDSC: TdxDBGridColumn;
    rom_itePRO_CBAR: TIBStringField;
    rom_itePRO_CEMB: TIntegerField;
    rom_itePRO_GRAD: TIBStringField;
    rom_iteROM_CCAB: TIntegerField;
    rom_iteROM_CDPR: TIntegerField;
    rom_iteROM_CDPD: TIntegerField;
    rom_iteROM_CDRO: TIntegerField;
    rom_iteROM_CDRD: TIntegerField;
    rom_iteROM_CDNF: TIntegerField;
    rom_iteROM_QTSP: TIBBCDField;
    rom_iteROM_QTPD: TIBBCDField;
    dbgiteROM_QTPD: TdxDBGridMaskColumn;
    rom_itePRO_PIPI: TSmallintField;
    rom_iteROM_QTRL: TIntegerField;
    rom_iteROM_RLSP: TIntegerField;
    rom_iteROM_RLPD: TIntegerField;
    rom_iteROM_FLAG: TIBStringField;
    dbgConsultaROM_CDNF: TdxDBGridMaskColumn;
    dbgConsultaROM_DNFS: TdxDBGridDateColumn;
    aux: TIBQuery;
    tSHEILD: TIBTransaction;
    rom_iteROM_COMI: TIBBCDField;
    rom_iteROM_DPRO: TIBStringField;
    dbgiteROM_DPRO: TdxDBGridMaskColumn;
    rom_itePRO_REPR: TIBStringField;
    dbgConsultaROM_DERO: TdxDBGridMaskColumn;
    rom_iteROM_TPRC: TIBStringField;
    rom_iteROM_ABCD: TIBStringField;
    rom_iteROM_DCOR: TIBStringField;
    rom_iteROM_PCOR: TIBStringField;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    dbgiteROM_QTRL: TdxDBGridMaskColumn;
    dbgiteROM_RLPD: TdxDBGridMaskColumn;
    edobse: TdxMemo;
    rom_iteROM_UNIT: TFloatField;
    rom_iteROM_PREC: TFloatField;
    rom_iteROM_DCO2: TIBStringField;
    rom_iteROM_PCO2: TIBStringField;
    rom_itePRO_PPRO: TFloatField;
    dbgiteROM_DCOR: TdxDBGridMaskColumn;
    rom_iteROM_DSEP: TIBStringField;
    dbgConsultaROM_DTRA: TdxDBGridMaskColumn;
    rom_iteROM_DUNI: TIBStringField;
    dbgiteROM_DUNI: TdxDBGridMaskColumn;
    rom_iteROM_OBSE: TMemoField;
    rom_iteROM_PESO: TIBBCDField;
    pnlfoto: TPanel;
    pcIMG: TdxPageControl;
    tsFOTO: TdxTabSheet;
    writefoto: TImage;
    dbgConsultaROM_PPRN: TdxDBGridMaskColumn;
    SINovo: TSpeedItem;
    siARO: TSpeedItem;
    siCRO: TSpeedItem;
    SICLI: TSpeedItem;
    siINF: TSpeedItem;
    siGRO: TSpeedItem;
    siBRO: TSpeedItem;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SQLFKEdicao: TIBSQL;
    SQLConsulta: TIBSQL;
    SPEdicao: TIBStoredProc;
    CadastroID: TIntegerField;
    CadastroROM_CDEP: TSmallintField;
    CadastroROM_DERO: TIBStringField;
    CadastroROM_DROM: TDateField;
    CadastroROM_HROM: TTimeField;
    CadastroROM_CDRO: TIntegerField;
    CadastroROM_CDNF: TIntegerField;
    CadastroROM_DNFS: TDateField;
    CadastroROM_CDBX: TIntegerField;
    CadastroROM_DBAI: TDateField;
    CadastroROM_CDCX: TIntegerField;
    CadastroROM_CTNR: TIBStringField;
    CadastroROM_CCLI: TIntegerField;
    CadastroCLI_FANT: TIBStringField;
    CadastroROM_CVEN: TIntegerField;
    CadastroUSU_DUSU: TIBStringField;
    CadastroROM_CREP: TIntegerField;
    CadastroREP_FANT: TIBStringField;
    CadastroROM_QTVE: TIBBCDField;
    CadastroROM_RLVE: TIntegerField;
    CadastroROM_QTPD: TIBBCDField;
    CadastroROM_RLPD: TIntegerField;
    CadastroROM_TSDE: TIBBCDField;
    CadastroROM_TCDE: TIBBCDField;
    CadastroROM_PDSC: TIBBCDField;
    CadastroROM_TDSC: TIBStringField;
    CadastroROM_CTRA: TIntegerField;
    CadastroROM_DTRA: TIBStringField;
    CadastroROM_VFRT: TIBBCDField;
    CadastroROM_DSEP: TIBStringField;
    CadastroROM_VTSP: TIBBCDField;
    CadastroROM_VNF: TIBBCDField;
    CadastroROM_STPD: TIBStringField;
    CadastroROM_STCO: TIBStringField;
    CadastroROM_CONC: TSmallintField;
    CadastroTPCO: TSmallintField;
    CadastroRECO: TIBStringField;
    CadastroROM_CPAG: TIntegerField;
    CadastroPAG_DPAG: TIBStringField;
    CadastroROM_STFI: TIBStringField;
    CadastroROM_CDRD: TIntegerField;
    CadastroROM_DERD: TIBStringField;
    CadastroROM_OBSE: TMemoField;
    CadastroROM_PPRN: TSmallintField;
    CadastroROM_STA: TIBStringField;
    CadastroROM_DEVO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siAROClick(Sender: TObject);
    procedure rom_iteAfterScroll(DataSet: TDataSet);
    procedure cadastroAfterOpen(DataSet: TDataSet);
    procedure cadastroCalcFields(DataSet: TDataSet);
    procedure siPSQClick(Sender: TObject);
    procedure siCROClick(Sender: TObject);
    procedure siGROClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtsrom_iteDataChange(Sender: TObject; Field: TField);
    procedure siBROClick(Sender: TObject);
    procedure dtscadastroDataChange(Sender: TObject; Field: TField);
    procedure writefotoClick(Sender: TObject);
    procedure siINFClick(Sender: TObject);
    procedure SINovoClick(Sender: TObject);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure CadastroAfterScroll(DataSet: TDataSet);
    procedure siPRNClick(Sender: TObject);
  private
    { Private declarations }
    gera_romaneio: boolean;

    procedure baixa_carteira;
    procedure baixa_bancario;
    procedure CANCELA_CAIXA;
    procedure carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet);
    function  RETORNA_LOGIN(texto: string) : boolean;
  public
    { Public declarations }
  end;

var
  frmctr_ped : Tfrmctr_ped;

implementation

uses uPrincipal, prelatorio_geral, pven_ped, ppesquisa, 
     pven_rom, pctr_ped_bai, bDados, pLogin, pcad_pro_img, pcad_cli_inf;

{$R *.dfm}

procedure Tfrmctr_ped.FormCreate(Sender: TObject);
begin
  dbgconsulta.ShowSummaryFooter := (frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Totalizadores',false));
  cEvent := 'CTR_PED';
  inherited;

  with cadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.ROM_CDEP,PK.ROM_DERO,PK.ROM_DROM,PK.ROM_HROM,PK.ROM_CDRO,PK.ROM_CDNF,PK.ROM_DNFS,PK.ROM_CDBX,PK.ROM_DBAI,PK.ROM_CDCX,PK.ROM_CTNR,');
    SQL.Add('       PK.ROM_CCLI,CD.CLI_FANT,PK.ROM_CVEN,CV.USU_DUSU,PK.ROM_CREP,CR.REP_FANT,');
    SQL.Add('       PK.ROM_QTVE,PK.ROM_RLVE,PK.ROM_QTPD,PK.ROM_RLPD,');
    SQL.Add('       PK.ROM_TSDE,PK.ROM_TCDE,PK.ROM_PDSC,PK.ROM_TDSC,');
    SQL.Add('       PK.ROM_CTRA,PK.ROM_DTRA,PK.ROM_VFRT,PK.ROM_DSEP,');
    SQL.Add('       PK.ROM_VTSP,PK.ROM_VNF ,');
    SQL.Add('       PK.ROM_STPD,PK.ROM_STCO,PK.ROM_CONC,PK.TPCO,PK.RECO,PK.ROM_CPAG,PG.PAG_DPAG,PK.ROM_STFI,');
    SQL.Add('       PK.ROM_CDRD,PK.ROM_DERD,');
    SQL.Add('       PK.ROM_OBSE,PK.ROM_PPRN,ROM_STA');

    SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.ID,3) + ' AS PK');
    SQL.Add('JOIN CAD_CLI AS CD ON (CD.ID = PK.ROM_CCLI)');
    SQL.Add('JOIN CAD_USU AS CV ON (CV.USU_CUSU = PK.ROM_CVEN)');
    SQL.Add('JOIN CAD_REP AS CR ON (CR.ID = PK.ROM_CREP)');
    SQL.Add('JOIN TAB_PAG AS PG ON (PG.ID = PK.ROM_CPAG)');

    SQL.Add('WHERE PK.ROM_DROM BETWEEN ''' + formatDateTime('mm/dd/yy',StartOfTheMonth(incMonth(strtodate(SLPrincipal.Values['data_sistema']),-2)))+''' AND '''+formatDateTime('mm/dd/yy',endOfTheMonth(strtodate(SLPrincipal.Values['data_sistema'])))+'''');

    if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
    SQL.Add('AND PK.ROM_CVEN = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');
    SQL.Add('ORDER BY PK.ID DESC');
    Prepare;
  end;
end;

procedure Tfrmctr_ped.FormDestroy(Sender: TObject);
begin
  if gera_romaneio then
  begin
    FRMVEN_ROM := TFRMVEN_ROM.Create(Nil);
    frmven_rom.Show;
  end;  

  inherited;
  frmctr_ped := Nil;
end;

procedure Tfrmctr_ped.siPSQClick(Sender: TObject);
begin
  frmpesquisa := Tfrmpesquisa.Create(self);
  try
    frmpesquisa.Tag          := 2;
    if campo_pesquisa = '' then
    frmpesquisa.cbCAMPO.Text := 'Número Pedido' else
    frmpesquisa.cbCAMPO.Text := campo_pesquisa;
    frmpesquisa.cbDATA.Text  := 'Lançamento';
    frmpesquisa.ShowModal;
  finally
    if frmpesquisa.editado then
    with frmpesquisa do
    begin
      if (edTXT.Text = '') and (dxdt1.Date < 0) and (cField <> 'Todos') then
         {nothing}
      else
      with cadastro do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PK.ID,PK.ROM_CDEP,PK.ROM_DERO,PK.ROM_DROM,PK.ROM_HROM,PK.ROM_CDRO,PK.ROM_CDNF,PK.ROM_DNFS,PK.ROM_CDBX,PK.ROM_DBAI,PK.ROM_CDCX,PK.ROM_CTNR,');
        SQL.Add('       PK.ROM_CCLI,CD.CLI_FANT,PK.ROM_CVEN,CV.USU_DUSU,PK.ROM_CREP,CR.REP_FANT,');
        SQL.Add('       PK.ROM_QTVE,PK.ROM_RLVE,PK.ROM_QTPD,PK.ROM_RLPD,');
        SQL.Add('       PK.ROM_TSDE,PK.ROM_TCDE,PK.ROM_PDSC,PK.ROM_TDSC,');
        SQL.Add('       PK.ROM_CTRA,PK.ROM_DTRA,PK.ROM_VFRT,PK.ROM_DSEP,');
        SQL.Add('       PK.ROM_VTSP,PK.ROM_VNF ,');
        SQL.Add('       PK.ROM_STPD,PK.ROM_STCO,PK.ROM_CONC,PK.TPCO,PK.RECO,PK.ROM_CPAG,PG.PAG_DPAG,PK.ROM_STFI,');
        SQL.Add('       PK.ROM_CDRD,PK.ROM_DERD,');
        SQL.Add('       PK.ROM_OBSE,PK.ROM_PPRN,ROM_STA');

        SQL.Add('FROM ' + oREPZero('PED_VEN_CAB','_',RECParametros.ID,3) + ' AS PK');
        SQL.Add('JOIN CAD_CLI AS CD ON (CD.ID = PK.ROM_CCLI)');
        SQL.Add('JOIN CAD_USU AS CV ON (CV.USU_CUSU = PK.ROM_CVEN)');
        SQL.Add('JOIN CAD_REP AS CR ON (CR.ID = PK.ROM_CREP)');
        SQL.Add('JOIN TAB_PAG AS PG ON (PG.ID = PK.ROM_CPAG)');

        if cField <> 'Todos' then
        begin
          if edtxt.Text <> '' then
          begin
            if (cfield = 'ROM_DERO') then
               SQL.Add('AND ROM_DERO LIKE '''+edtxt.Text+'%''')
            else if (cfield = 'CAD_CLI.ID') then
               SQL.Add('AND ROM_CCLI = '''+edtxt.Text+'''')
            else if (cfield = 'ROM_CDBX') then
               SQL.Add('AND ROM_CDBX = '''+edtxt.Text+'''')
            else if (cfield = 'ROM_CDNF') then
               SQL.Add('AND ROM_CDNF = '''+edtxt.Text+'''')
            else
               SQL.Add('AND '+cField+' LIKE ''%'+edtxt.Text+'%''');
          end;

          if (dxDT1.Date > 0) and (dxDT2.Date > 0) then
             SQL.Add('AND '+cData+' BETWEEN '''+formatDateTime('mm/dd/yy',dxDT1.Date)+''' AND '''+formatDateTime('mm/dd/yy',dxDT2.Date)+'''');
        end;

        if frmprincipal.cad_usuUSU_MENU.AsString = 'VEN' then
        SQL.Add('AND PED_VEN_CAB.ROM_CVEN = '''+frmprincipal.cad_usuUSU_CUSU.AsString+'''');

        if cField = 'Todos' then
           cField := 'CLI_FANT';

        SQL.Add('ORDER BY PK.ID DESC');
        Open;
      end;
      dbgconsulta.SetFocus;
      campo_pesquisa := frmpesquisa.cbCAMPO.Text;
    end;
    freeAndNil(frmpesquisa);
    frmpesquisa.Free;
  end;
end;

procedure Tfrmctr_ped.SINovoClick(Sender: TObject);
begin
  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,CAI_DECX,CAI_DABR,CAI_DFEC FROM CAI_LAF');
    SQL.Add('WHERE    CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
    SQL.Add('ORDER BY CAI_DABR DESC');
    Open;

    if strtodate(SLPrincipal.Values['data_caixa']) > fields[2].AsDateTime  then
    raise exception.Create('Caixa não aberto !');

    if not fields[3].IsNull then
    raise exception.Create('Caixa já fechado !');
  end;

  siARO.Tag := 0;
  uFrmCreate(Self,Tfrmven_ped,frmven_ped);
end;

procedure Tfrmctr_ped.siAROClick(Sender: TObject);
var
  temp_AUTORIZACAO, temp_TP_AUTORIZACAO: string;
begin
  temp_AUTORIZACAO    := '';
  temp_TP_AUTORIZACAO := '';

  if cadastroROM_CDBX.AsInteger > 0 then
  raise exception.Create('Pedido já finalizado !');

{  if cadastroROM_CDRO.AsInteger > 0 then
  raise exception.Create('Pedido já possui romaneio emitido !'+#13+'Romaneio No '+cadastroROM_CDRO.AsString);

  if cadastroROM_CDNF.AsInteger > 0 then
  raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+cadastroROM_CDNF.AsString);
 }

  if cadastroROM_CDCX.AsInteger > 0 then
  begin
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_DFEC IS NOT NULL');
      SQL.Add('AND    ID = '''+cadastroROM_CDCX.AsString+'''');
      Open;
    end;

    if not consulta.Fields[0].IsNull then
    begin
      if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Após o Fechamento',false) then
      begin
        if not RETORNA_LOGIN('Permissão para alterar pedido após o fechamento do caixa') then
        Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.') else
        begin
          temp_AUTORIZACAO    := AUTORIZACAO;
          temp_TP_AUTORIZACAO := TP_AUTORIZACAO;
        end;
      end;
    end else
    begin
      if not frmprincipal.ACESSO(frmprincipal.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Alterar Antes do Fechamento',false) then
      begin
        if not RETORNA_LOGIN('Permissão para alterar pedido antes do fechamento') then
        Databaseerror('ACESSO NEGADO !'+#13+'Contate o admnistrador do sistema.') else
        begin
          temp_AUTORIZACAO    := AUTORIZACAO;
          temp_TP_AUTORIZACAO := TP_AUTORIZACAO;
        end;
      end;
    end;
  end;

  tag        := 0;
  siARO.Tag  := 1;
  frmven_ped := Tfrmven_ped.Create(self);

  AUTORIZACAO    := temp_AUTORIZACAO;
  TP_AUTORIZACAO := temp_TP_AUTORIZACAO;
  siARO.Tag      := 0;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    frmven_ped.FormStyle := fsNormal;
    frmven_ped.Visible   := false;
    frmven_ped.ShowModal;
  end
  else
    frmven_ped.Show;
end;

procedure Tfrmctr_ped.siCROClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  if SICRO.Tag = 0 then
  begin
    if CadastroROM_CDNF.AsInteger > 0 then
    raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+CadastroROM_CDNF.AsString);

    if CadastroROM_CDRO.AsInteger > 0 then
    raise exception.Create('Pedido já possui romaneio emitido !'+#13+'Romaneio No '+CadastroROM_CDRO.AsString);

    if (CadastroROM_QTPD.AsFloat > 0) and (CadastroROM_CDNF.AsInteger = 0) then
    raise exception.Create('Pedido já está em processo de separação !');

    if oYesNo(handle,'Cancelar Pedido No.: '+CadastroROM_DERO.AsString+' ?') = mrno then
    abort;

    ClickedOK := InputQuery('Cancelamento de Pedido', 'Motivo', NewString);
    if not ClickedOK then
    Abort;

    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_RES');
      SQL.Add('WHERE  EST_CDEP = ''' + CadastroROM_CDEP.AsString + '''');
      SQL.Add('AND    EST_CDPD = ''' + CadastroID.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_SEP');
      SQL.Add('WHERE  EST_CDEP = ''' + CadastroROM_CDEP.AsString + '''');
      SQL.Add('AND    EST_CDPD = ''' + CadastroID.AsString + '''');
      ExecQuery;

      if CadastroROM_CDRO.AsInteger > 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM CAD_PRO_EST');
        SQL.Add('WHERE  EST_CDEP = ''' + CadastroROM_CDEP.AsString + '''');
        SQL.Add('AND    EST_CDPD = ''' + CadastroROM_CDRO.AsString + '''');
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['rom_cab']);
        SQL.Add('WHERE  ID = '''+CadastroROM_CDRO.AsString+'''');
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM '+SLPrincipal.Values['rom_ite']);
        SQL.Add('WHERE  ROM_CCAB = '''+CadastroROM_CDRO.AsString+'''');
        ExecQuery;
      end;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_STFI = ''CANCELADO''');
      SQL.Add('WHERE  ID = '''+CadastroID.AsString+'''');
      ExecQuery;
    end;

    oCTransact(TEdicao);
    oAviso(Application.Handle,'Pedido cancelado com sucesso !');
    oRefresh(Cadastro);

    frmprincipal.Log_Eve('Vendas',LOWERCASE(CadastroROM_STPD.AsString),'Cancelamento',CadastroROM_DERO.AsString,CadastroROM_DERO.AsString,CadastroROM_CCLI.AsString+' - '+LOWERCASE(CadastroCLI_FANT.AsString),'','');
  end else

  if SICRO.Tag = 1 then
  begin
    if oYesNo(handle,'Estornar Pedido No.: '+CadastroROM_DERO.AsString+' ?') = mrno then
    abort;

    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_STFI = ''PENDENTE'',');
      SQL.Add('       ROM_CDBX = NULL,');
      SQL.Add('       ROM_DBAI = NULL ');
      SQL.Add('WHERE  ID       = ''' + CadastroID.AsString + '''');
      ExecQuery;

      if CadastroROM_CDRO.AsInteger > 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
        SQL.Add('SET    ROM_STFI = ''PENDENTE'',');
        SQL.Add('       ROM_DBAI = NULL,');
        SQL.Add('       ROM_CDBX = NULL');
        SQL.Add('WHERE  ID       = '''+CadastroROM_CDRO.AsString+'''');
        ExecQuery;
      end;  
    end;

    if CadastroROM_CDRO.AsInteger > 0 then
    begin
      rom_ite.First;
      while not rom_ite.Eof do
      begin
        ibSP.StoredProcName := 'SP_CAD_PRO_RES';
        ibSP.Prepare;

        ibSP.ParamByName('est').Value  := 'CAD_PRO_RES';
        if frmprincipal.parametrosID.AsInteger > 1 then
        ibSP.ParamByName('est').Value  := 'CAD_PRO_RES_'+oStrZero(frmprincipal.parametrosID.AsInteger,3);

        ibSP.ParamByName('id').Value   := 0;
        ibSP.ParamByName('cdep').Value := frmprincipal.parametrosID.AsInteger;
        ibSP.ParamByName('cdro').Value := 0;
        ibSP.ParamByName('cdpd').Value := consulta.Fields[0].AsInteger;
        ibSP.ParamByName('cdbx').Value := 0;
        ibSP.ParamByName('cpro').Value := rom_iteROM_CPRO.AsInteger;
        ibSP.ParamByName('cusu').Value := cadastroROM_CVEN.AsInteger;
        ibSP.ParamByName('dusu').Value := cadastroUSU_DUSU.AsString;
        ibSP.ParamByName('cfav').Value := cadastroROM_CCLI.AsInteger;
        ibSP.ParamByName('dfav').Value := cadastroCLI_FANT.AsString;
        ibSP.ParamByName('dcad').Value := cadastroROM_DROM.AsDateTime;
        ibSP.ParamByName('docu').Value := trim(copy(cadastroROM_DERO.AsString,1,10));
        ibSP.ParamByName('flag').Value := 'R';
        ibSP.ParamByName('cdet').Value := rom_iteROM_CDET.AsString;
        ibSP.ParamByName('dsep').Value := rom_iteROM_DSEP.AsString;
        ibSP.ParamByName('debi').Value := 0;
        ibSP.ParamByName('cred').Value := rom_iteROM_QTDE.AsFloat;
        ibSP.ParamByName('dmap').Value := '';
        ibSP.ParamByName('lote').Value := '';
        ibSP.ParamByName('ctnr').Value := '';
        ibSP.ParamByName('UNIT').Value := 0;

        ibSP.ExecProc;
        rom_ite.Next;
      end;
    end;
    
    oCTransact(TEdicao);
    oAviso(Application.Handle,'Cancelamento estornado com sucesso !');
    oRefresh(Cadastro);
  end else

  if SICRO.Tag = 2 then
  begin
    if oYesNo(handle,'Estornar faturamento do pedido No.: '+CadastroROM_DERO.AsString+' ?') = mrno then
    Abort;

    oOTransact(TEdicao);
    CANCELA_CAIXA;

    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_STFI = ''PENDENTE'',');
      SQL.Add('       ROM_CDBX = NULL,');
      SQL.Add('       ROM_DBAI = NULL ');
      SQL.Add('WHERE  ID       = ''' + CadastroID.AsString + '''');
      ExecQuery;

      if CadastroROM_CDRO.AsInteger > 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
        SQL.Add('SET    ROM_STFI = ''PENDENTE'',');
        SQL.Add('       ROM_DBAI = NULL,');
        SQL.Add('       ROM_CDBX = NULL');
        SQL.Add('WHERE  ID       = '''+CadastroROM_CDRO.AsString+'''');
        ExecQuery;
      end;
      
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_RES');
      SQL.Add('WHERE  EST_CDEP = ''' + CadastroROM_CDEP.AsString + '''');
      SQL.Add('AND    EST_CDPD = ''' + CadastroID.AsString + '''');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_PRO_SEP');
      SQL.Add('WHERE  EST_CDEP = ''' + CadastroROM_CDEP.AsString + '''');
      SQL.Add('AND    EST_CDPD = ''' + CadastroID.AsString + '''');
      ExecQuery;

      oCTransact(TEdicao);
      frmprincipal.Log_Eve('Vendas',LOWERCASE(CadastroROM_STPD.AsString),'Cancelamento de Baixa',CadastroROM_DERO.AsString,CadastroROM_DERO.AsString,CadastroROM_CCLI.AsString+' - '+LOWERCASE(CadastroCLI_FANT.AsString),'','');
    end;

    oCTransact(TEdicao);
    oAviso(Application.Handle,'Cancelamento estornado com sucesso !');
    oRefresh(Cadastro);
  end;
end;

procedure Tfrmctr_ped.siINFClick(Sender: TObject);
begin
  if cadastroID.AsInteger = 0 then
  abort;

    frmcad_cli_inf := tfrmcad_cli_inf.create(self);
    frmcad_cli_inf.gbinfo.Caption := 'Informaçãoes Resumidas - '+cadastroCLI_FANT.AsString;
    frmcad_cli_inf.gbinfo.Hint    := cadastroCLI_FANT.AsString;
    frmcad_cli_inf.gbinfo.Tag     := cadastroROM_CCLI.AsInteger;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT CLI_CRED FROM CAD_CLI_CRD');
      SQL.Add('WHERE  CLI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('AND    CLI_CCLI = '''+cadastroROM_CCLI.AsString+'''');
      Open;
      frmcad_cli_inf.lacred.Caption := formatfloat('R$ #,0.00########',fields[0].AsFloat);
    end;

    frmcad_cli_inf.NewString      := cadastroROM_DERO.AsString;
    frmcad_cli_inf.ShowModal;
end;

procedure Tfrmctr_ped.siGROClick(Sender: TObject);
var
  BRet,BOk: boolean;
begin
  if cadastroROM_CDBX.AsInteger > 0 then
  raise exception.Create('Pedido já finalizado !');

  if (cadastroROM_STFI.AsString = 'AGUARDANDO LIBERAÇÃO') or (cadastroROM_STFI.AsString = 'AGUARDANDO CRÉDITO') or (cadastroROM_STFI.AsString = 'PROTESTADO') or
     (cadastroROM_STFI.AsString = 'NÃO PAGO')             or (cadastroROM_STFI.AsString = 'SUSPENSO')   then
  raise exception.Create('Não é possível gerar romaneio !'+#13+'Situação: '+cadastroROM_STFI.AsString);

  if cadastroROM_CDNF.AsInteger > 0 then
  raise exception.Create('Pedido já faturado !'+#13+'Nota Fiscal No '+cadastroROM_CDNF.AsString);

  if cadastroROM_CDRO.AsInteger > 0 then
  raise exception.Create('Pedido já possui romaneio gerado !'+#13+'Romaneio No '+cadastroROM_CDRO.AsString);

  if oYesNo(handle,'Confirma geração de romaneio baseado no pedido selecionado ?'+#13+
                  'Pedido No '+cadastroID.AsString+' Cliente '+cadastroROM_CCLI.AsString+' - '+cadastroCLI_FANT.AsString) = mrno then
     gera_romaneio := false
  else
  begin
    BOk := true;

    if cadastroROM_CDRO.AsInteger > 0 then
    begin
      BOk := false;

      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT VEN_QTSP FROM TAB_PED');
        SQL.Add('WHERE  VEN_TIPO = '''+cadastroROM_STPD.AsString+'''');
        Open;

        BRet := (fields[0].AsString = '1');
      end;

      if BRet then
      with consulta do
      begin
        SQL.Clear;
        SQL.Add('SELECT ID FROM '+SLPrincipal.Values['ped_ven_ite']);
        SQL.Add('WHERE  ROM_CCAB = '''+cadastroID.AsString+'''');
        SQL.Add('AND    ROM_FLAG = ''0''');
        Open;
        BOk := (not fields[0].IsNull);
      end;
    end;

    if not BOk then
    raise exception.Create('Pedido já possui romaneio gerado !'+#13+'Romaneio No: '+cadastroROM_CDRO.AsString);

    gera_romaneio := true;
    close;
  end;
end;

procedure Tfrmctr_ped.siBROClick(Sender: TObject);
begin
  if Assigned(FRMCTR_PED_BAI) then FRMCTR_PED_BAI.BringToFront else
  begin
    if CadastroROM_CDBX.AsInteger > 0 then
    raise exception.Create('Pedido já finalizado !');

    if (CadastroROM_STFI.AsString = 'AGUARDANDO LIBERAÇÃO') or (CadastroROM_STFI.AsString = 'AGUARDANDO CRÉDITO') or (CadastroROM_STFI.AsString = 'PROTESTADO') or
       (CadastroROM_STFI.AsString = 'NÃO PAGO')             or (CadastroROM_STFI.AsString = 'SUSPENSO')   then
    raise exception.Create('Não é possível finalizar pedido !'+#13+'Situação: '+CadastroROM_STFI.AsString);

    if (CadastroROM_CDRO.AsInteger > 0) and (CadastroROM_CDNF.AsInteger = 0) and (CadastroROM_CONC.AsInteger > 0) then
    raise exception.Create('Não é possível finalizar pedido !'+#13+'Pedido possui romaneio gerado, mas sem nota fiscal emitida.');

    if (CadastroROM_CDNF.AsInteger = 0) and (CadastroROM_STCO.AsString = 'BANCÁRIO') and (CadastroROM_STPD.AsString <> 'DEVOLUÇÃO')  and (CadastroROM_STPD.AsString <> 'ABATIMENTO') then
    raise exception.Create('Não é possível finalizar pedido !'+#13+'Para pedidos do tipo bancário é obrigatório a emissão de nota fiscal.');

    if (CadastroROM_STFI.AsString = 'SEPARAÇÃO') and (CadastroROM_CONC.AsInteger > 0) then
    raise exception.Create('Não é possível finalizar pedido !'+#13+'Pedido em processo de separação.');

    with consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT VEN_QTSP FROM TAB_PED');
      SQL.Add('WHERE  VEN_TIPO = '''+CadastroROM_STPD.AsString+'''');
      Open;
    end;

    if (consulta.Fields[0].AsString = '1') and (CadastroROM_QTPD.AsFloat = 0) then
    raise exception.Create('Pedido aguardando separação !'+#13+'Não é possível finalizar.');

    uFrmCreate(Self,Tfrmctr_ped_bai, frmctr_ped_bai);

    frmctr_ped_bai.tab_pag.Close;
    frmctr_ped_bai.tab_pag.Params[0].Value := CadastroROM_CPAG.AsInteger;
    frmctr_ped_bai.tab_pag.Open;

    with consulta do
    begin
      Close;
      SQL.Clear;
      if CadastroROM_CDCX.AsInteger > 0 then
      begin
        SQL.Add('SELECT CAI_DABR,CAI_DFEC,ID FROM CAI_LAF');
        SQL.Add('WHERE  ID = '''+CadastroROM_CDCX.AsString+'''');
      end
      else
      begin
        SQL.Add('SELECT CAI_DABR,CAI_DFEC,ID FROM CAI_LAF');
        SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
        if CadastroROM_CDNF.AsInteger > 0 then
        SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',CadastroROM_DNFS.AsDateTime)+'''') else
        SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',CadastroROM_DROM.AsDateTime)+'''');
      end;
      Open;
    end;

    frmctr_ped_bai.eddrom.Date := consulta.Fields[0].AsDateTime;
    frmctr_ped_bai.edcdcx.Text := consulta.Fields[2].AsString;

    if CadastroROM_CDNF.AsInteger > 0 then
    frmctr_ped_bai.edDBAI.Date := CadastroROM_DNFS.AsDateTime;

    if frmctr_ped_bai.eddbai.Date <= 0 then
    frmctr_ped_bai.eddbai.Date := strtodate(SLPrincipal.Values['data_sistema']);

    if frmctr_ped_bai.edDROM.Date <> frmctr_ped_bai.edDBAI.Date then
    with consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CAI_DABR,CAI_DFEC,ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_CDEP = '''+frmprincipal.parametrosID.AsString+'''');
      SQL.Add('AND    CAI_DABR = '''+formatDateTime('mm/dd/yy',frmctr_ped_bai.edDBAI.Date)+'''');
      Open;

      if not fields[0].IsNull then
      frmctr_ped_bai.edcdcx.Text := fields[2].AsString;
    end;

    if LeftStr(CadastroRECO.AsString,1) = 'B' then
    BAIXA_BANCARIO;

    if (LeftStr(CadastroRECO.AsString,1) = 'C') or (CadastroROM_CONC.AsInteger > 1) then
    BAIXA_CARTEIRA;

    frmctr_ped_bai.Show;
  end;  
end;

function Tfrmctr_ped.RETORNA_LOGIN(texto: string): boolean;
var
  BRet: boolean;
begin
  AUTORIZACAO      := '';
  TP_AUTORIZACAO   := '';
  frmlogin         := TFrmlogin.Create(self);
  frmlogin.Caption := texto;
  try
    frmlogin.Tag := 2;
    frmlogin.ShowModal;
  finally
    if frmlogin.cad_usuUSU_CUSU.AsString = '' then
    BRet := false
    else
    BRet := (frmprincipal.ACESSO(frmlogin.cad_usuUSU_CUSU.AsString,'USU_AUTO','Vendas','Pedidos','Autorizar Outros Usuários',false));

    if frmlogin.cad_usuUSU_ADM.AsString = '1' then
    BRet := true;

    if BRet then
    begin
      AUTORIZACAO    := frmlogin.cad_usuUSU_DUSU.AsString;
      TP_AUTORIZACAO := texto;
    end;

    freeAndNil(frmlogin);
    frmlogin.Free;
  end;

  result := BRet;
end;

procedure Tfrmctr_ped.carregaFoto(tam: Integer; valor: TBlobField; tab: TIbQuery; par: TIbDataSet );
var
  BlobStream : TStream;
  JPEGImage : TJPEGImage;
begin
  if tam = 0 then
  begin
    valor      := frmprincipal.parametrosPAR_FOT2;
    BlobStream := par.CreateBlobStream(valor,bmRead);
  end
  else
     BlobStream := tab.CreateBlobStream(valor,bmRead);

  JPEGImage  := TJPEGImage.Create;
  try
    JPEGImage.LoadFromStream(BlobStream);
    writefoto.Picture.Assign(JPEGImage);
  finally
    BlobStream.Free;
    JPEGImage.Free;
  end;
end;

procedure Tfrmctr_ped.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if ANode.Values[DBGConsultaROM_STFI.Index] = 'CANCELADO' then
    begin
      AColor      := $000024B3;
      AFont.Color := clWhite;
    end else
    if Pos('BAI',ANode.Values[DBGConsultaROM_STFI.Index]) > 0 then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end else
    if Pos(LeftStr(ANode.Values[DBGConsultaROM_STPD.Index],3),'DEVABA') > 0 then
    begin
      AColor      := $0080FFFF; //$00E8FFE8;
      AFont.Color := clBlack;
    end else
    if Pos('AGU',ANode.Values[DBGConsultaROM_STFI.Index]) > 0 then
    begin
      AColor      := $00002FEC;
      AFont.Color := clWhite;
    end else
    if Pos('FIN',ANode.Values[DBGConsultaROM_STFI.Index]) > 0 then
    begin
      AColor      := clBtnFace;
      AFont.Color := clBlack;
    end else
    begin
      if Pos('FAT',ANode.Values[DBGConsultaROM_STFI.Index]) > 0 then
      begin
        AColor      := $00C4FFC4;
        AFont.Color := clBlack;
      end else
      if Pos('PAG',ANode.Values[DBGConsultaROM_STFI.Index]) > 0 then
      begin
        AColor      := $00B3FFB3;
        AFont.Color := clBlack;
      end else
      if Pos('SEP',ANode.Values[DBGConsultaROM_STFI.Index]) > 0 then
      begin
        AColor      := clBlack;
        AFont.Color := clWhite;
      end;

      if (AColumn = DBGConsultaROM_DERO) or (AColumn = DBGConsultaROM_DROM) then
      begin
        AColor      := clGray;
        AFont.Color := clWhite;
      end;

      if ANode.Values[DBGConsultaROM_PDSC.Index] <> Null then
      if (AColumn = DBGConsultaROM_PDSC) and (ANode.Values[DBGConsultaROM_PDSC.Index] > 0) then
      begin
        AColor      := clInfoBk;
        AFont.Style := [fsBold];
      end;

      if AColumn = DBGConsultaROM_TSDE then
      begin
        AColor      := $00FCF4ED;
        AFont.Color := clBlack;
        AFont.Style := [];
      end;

      if AColumn = DBGConsultaROM_TCDE then
      begin
        AColor      := $00C7911F;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];
      end;
    end;
  end;
end;

procedure Tfrmctr_ped.rom_iteAfterScroll(DataSet: TDataSet);
begin
  if (Cadastro.State = dsBrowse) and (pnlfoto.Visible) then
  carregaFoto(rom_itePRO_FOTO.BlobSize,rom_itePRO_FOTO,rom_ite,frmprincipal.parametros);
end;

procedure Tfrmctr_ped.CadastroAfterOpen(DataSet: TDataSet);
begin
  with rom_ite do
  begin
    SQL.Clear;
    SQL.Add('SELECT   PED_VEN_ITE.*,CAD_PRO.ID,CAD_PRO.PRO_CART,CAD_PRO.PRO_CPRO,CAD_PRO.PRO_CCOR,');
    SQL.Add('         CAD_PRO.PRO_RCOR,CAD_PRO.PRO_DCOR,CAD_PRO.PRO_DUNI,');
    SQL.Add('         CAD_PRO.PRO_CBAR,CAD_PRO.PRO_PPRO,CAD_PRO.PRO_CEMB,CAD_PRO.PRO_GRAD,');
    SQL.Add('         CAD_PRO.PRO_PIPI,CAD_PRO.PRO_REPR,CAD_PRO_IMG.PRO_FOTO');
    SQL.Add('FROM     CAD_PRO_IMG,CAD_PRO,'+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
    SQL.Add('WHERE    PED_VEN_ITE.ROM_CPRO = CAD_PRO.ID');
    SQL.Add('AND      CAD_PRO_IMG.PRO_CART = CAD_PRO.PRO_CART');
    SQL.Add('AND      PED_VEN_ITE.ROM_CCAB = :ID');
    SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
    Open;
  end;
end;

procedure Tfrmctr_ped.CadastroCalcFields(DataSet: TDataSet);
begin
  if CadastroROM_CDRD.AsInteger > 0 then
  begin
    if Pos('DEVOLU',CadastroROM_STPD.Value) > 0 then
    CadastroROM_DEVO.Value := 'Pedido de Venda No. '+CadastroROM_DERD.AsString else
    CadastroROM_DEVO.Value := 'Devolução No. '+CadastroROM_DERD.AsString;
  end;
end;

procedure Tfrmctr_ped.dtsrom_iteDataChange(Sender: TObject; Field: TField);
var
  tam: word;
begin
  if Cadastro.State = dsBrowse then
  begin
    tam := dbgiteROM_DPRO.Tag;

    if (screen.Width >= 1360) and (screen.Width <= 1366) then
    tam := tam + 50 else
    if (screen.Width > 1366) and (screen.Width <= 1440) then
    tam := tam + 150 else
    if (Screen.Width > 1440) and (Screen.Width <= 1600) then
    tam := tam + 250 else
    if (Screen.Width > 1600) and (Screen.Width <= 1680) then
    tam := tam + 350 else
    if Screen.Width > 1680 then
    tam := tam + 400;

    dbgiteROM_DCOR.Visible := (rom_iteROM_DCOR.AsString <> '');

    if dbgiteROM_DCOR.Visible then
    tam := tam - dbgiteROM_DCOR.Width;

    dbgiteROM_QTPD.Visible := (CadastroROM_DSEP.AsString <> '');
    dbgiteROM_RLPD.Visible := (CadastroROM_DSEP.AsString <> '');

    if dbgiteROM_QTPD.Visible then
    tam := tam - dbgiteROM_QTPD.Width;

    if (rom_iteROM_QTRL.AsFloat > 0) and (copy(rom_iteROM_DUNI.AsString,1,1) = 'M') or
       (rom_iteROM_QTRL.AsFloat > 0) and (copy(rom_iteROM_DUNI.AsString,1,1) = 'K') then
    dbgiteROM_QTRL.Visible := true else
    dbgiteROM_QTRL.Visible := false;

    if dbgiteROM_QTRL.Visible then
    tam := tam - dbgiteROM_QTRL.Width;

    dbgiteROM_DPRO.Width   := tam;
    if dbgiteROM_VDSC.Visible then
    dbgiteROM_DPRO.Width   := dbgiteROM_DPRO.Width - dbgiteROM_VDSC.Width;
    dbgiteROM_VDSC.Visible := (rom_iteROM_VDSC.AsFloat > 0);

    if (Screen.Width <= 1024) or (Screen.Width <= 1280) then
    dbgiteROM_DCOR.Width := dbgiteROM_DCOR.Width - 20;
  end;
end;

procedure Tfrmctr_ped.dtsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  if CadastroROM_TDSC.AsString = '%' then
  dbgConsultaROM_PDSC.Caption := 'Desc (%)'
  else if CadastroROM_TDSC.AsString = '$' then
  dbgConsultaROM_PDSC.Caption := 'Desc ($)';

  siARO.Enabled := (CadastroID.AsInteger > 0) and (CadastroROM_STFI.AsString  = 'PENDENTE');
  siGRO.Enabled := (CadastroID.AsInteger > 0) and (CadastroROM_STFI.AsString  = 'PENDENTE') and(CadastroROM_CDRO.AsInteger = 0);
  siBRO.Enabled := (CadastroID.AsInteger > 0) and (CadastroROM_STFI.AsString  = 'PENDENTE');

  if CadastroROM_STFI.AsString = 'CANCELADO' then
  begin
    SICRO.Tag        := 1;
    SICRO.ImageIndex := 12;
    SICRO.BtnCaption := 'Restaurar';
    SICRO.Hint       := 'Estorna Cancelamento';
  end else
  if CadastroROM_CDBX.AsInteger > 0 then
  begin
    SICRO.Tag        := 2;
    SICRO.ImageIndex := 11;
    SICRO.BtnCaption := 'Estornar';
    SICRO.Hint       := 'Estorna Faturamento';
  end else
  begin
    SICRO.Tag        := 0;
    SICRO.ImageIndex := 6;
    SICRO.BtnCaption := 'Cancelar';
    SICRO.Hint       := 'Cancelamento de Pedido';
  end;

  sbMSG.Panels[1].Text := CadastroROM_CONC.AsString;
  sbMSG.Panels[2].Text := '';

  if CadastroROM_DSEP.AsString <> '' then
  sbMSG.Panels[2].Text := 'Separador '+CadastroROM_DSEP.AsString;
  sbMSG.Panels[2].Text := TRIM(sbMSG.Panels[2].Text)+' '+TRIM(CadastroROM_CTNR.AsString)+' '+TRIM(CadastroROM_OBSE.AsString);

  edobse.Lines.Clear;
  edobse.Lines.Add(TRIM(CadastroROM_CTNR.AsString));
  edobse.Lines.Add(TRIM(CadastroROM_OBSE.AsString));
end;

procedure Tfrmctr_ped.writefotoClick(Sender: TObject);
begin
  frmcad_pro_img := tfrmcad_pro_img.create(self);
  try
    frmcad_pro_img.carregaFoto(rom_itePRO_FOTO.BlobSize,rom_itePRO_FOTO,rom_ite,frmprincipal.parametros);
    frmcad_pro_img.Caption := rom_iteROM_DPRO.AsString;
    frmcad_pro_img.showmodal;
  finally
    FreeAndNil(frmcad_pro_img);
    frmcad_pro_img.free;
  end;
end;

procedure Tfrmctr_ped.BAIXA_CARTEIRA;
var
  VDUP: double;
     i: word;
begin
  VDUP := IFThen(CadastroROM_VNF.AsFloat  > 0,CadastroROM_VNF.AsFloat ,
          IFThen(CadastroROM_VTSP.AsFloat > 0,CadastroROM_VTSP.AsFloat,CadastroROM_TCDE.AsFloat) / CadastroROM_CONC.AsInteger);

  if Pos(LeftStr(CadastroROM_STPD.AsString,3),'ABADEV') > 0 then
  VDUP := VDUP * -1;

  frmctr_ped_bai.fin_rec.Append;
  frmctr_ped_bai.fin_recID.Value       := 0;
  frmctr_ped_bai.fin_recFIN_CDPD.Value := CadastroID.AsInteger;
  frmctr_ped_bai.fin_recFIN_PORT.Value := CadastroROM_DERO.AsString;
  frmctr_ped_bai.fin_recFIN_CTNR.Value := CadastroROM_CTNR.AsString;
  frmctr_ped_bai.fin_recFIN_CDRO.Value := CadastroROM_CDRO.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDNF.Value := CadastroROM_CDNF.AsInteger;
  frmctr_ped_bai.fin_recFIN_STDO.Value := CadastroRECO.AsString;
  frmctr_ped_bai.fin_recFIN_DROM.Value := CadastroROM_DROM.AsDateTime;
  frmctr_ped_bai.fin_recFIN_CCLI.Value := CadastroROM_CCLI.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := CadastroCLI_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_CVEN.Value := CadastroROM_CVEN.AsInteger;
  frmctr_ped_bai.fin_recFIN_VEND.Value := CadastroUSU_DUSU.AsString;
  frmctr_ped_bai.fin_recFIN_CREP.Value := CadastroROM_CREP.AsInteger;
  frmctr_ped_bai.fin_recFIN_DREP.Value := CadastroREP_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_STCO.Value := CadastroROM_STCO.AsString;
  frmctr_ped_bai.fin_recFIN_STPD.Value := CadastroROM_STPD.AsString;
  frmctr_ped_bai.fin_recFIN_CONC.Value := CadastroROM_CONC.AsInteger;
  frmctr_ped_bai.fin_recTPCO.Value     := CadastroROM_CONC.AsInteger;
  frmctr_ped_bai.fin_recRECO.Value     := CadastroRECO.AsString;
  frmctr_ped_bai.fin_recFIN_DPRA.Value := CadastroPAG_DPAG.AsString;
  frmctr_ped_bai.fin_recFIN_DOCT.Value := IFThen(CadastroROM_CDNF.AsInteger > 0,CadastroROM_CDNF.AsString,CadastroROM_DERO.AsString);
  frmctr_ped_bai.fin_recFIN_VALO.Value := VDUP;
  frmctr_ped_bai.fin_recFIN_COBR.Value := 'C';
  frmctr_ped_bai.fin_rec.Post;

  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PAG_PARC,PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,PAG_D006,PAG_D007,PAG_D008,PAG_D009,PAG_D010 FROM TAB_PAG');
    SQL.Add('WHERE  ID = '''+CadastroROM_CPAG.AsString+'''');
    Open;
  end;

  for i := 1 to consulta.Fields[0].AsInteger do
  begin
    frmctr_ped_bai.fin_rec_bai.Append;
    frmctr_ped_bai.fin_rec_baiFIN_TIPO.Value := IFThen(Pos(LeftStr(CadastroROM_STPD.AsString,3),'ABADEV') > 0,CadastroROM_STPD.AsString,CadastroROM_STCO.AsString);

    case i of
        1: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[1].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[1].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        2: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[2].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[2].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        3: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[3].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[3].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        4: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[4].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[4].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        5: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[5].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[5].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        6: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[6].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[6].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        7: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[7].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[7].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        8: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[8].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[8].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
        9: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[9].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[9].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
       10: begin
             frmctr_ped_bai.fin_rec_baiFIN_PRAZ.Value := consulta.fields[10].AsInteger;
             frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := incDay(frmctr_ped_bai.edDROM.Date,consulta.fields[10].Value);
             frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := VDUP / consulta.Fields[0].AsInteger;
           end;
    end;
    frmctr_ped_bai.fin_rec_bai.Post;
  end;
end;

procedure Tfrmctr_ped.BAIXA_BANCARIO;
begin
  frmctr_ped_bai.siPSQ.Enabled  := false;

  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NFE_TITU,NFE_DNFE,NFE_DVEN,NFE_VDUP FROM '+SLPrincipal.Values['nfe_dup']);
    SQL.Add('WHERE  NFE_CDNF = '''+CadastroROM_CDNF.AsString+'''');
    Open;
  end;

  if consulta.Fields[0].IsNull then
  begin
    messageBox(handle,'Tipo de cobrança "BANCÁRIO" sem duplicatas emitidas !'+#13+'Você precisa alterar o tipo de cobrança para prosseguir.',PChar(caption),MB_ICONERROR+MB_OK);
    Abort;
  end;

  while not consulta.Eof do
  begin
    frmctr_ped_bai.fin_rec_bai.Append;
    frmctr_ped_bai.fin_rec_baiID.Value       := 0;
    frmctr_ped_bai.fin_rec_baiFIN_DOCT.Value := consulta.Fields[0].AsString;
    frmctr_ped_bai.fin_rec_baiFIN_DVEN.Value := consulta.Fields[2].AsDateTime;
    frmctr_ped_bai.fin_rec_baiFIN_TIPO.Value := 'DUPLICATA';
    frmctr_ped_bai.fin_rec_baiFIN_VALO.Value := consulta.Fields[3].AsFloat;
    frmctr_ped_bai.fin_rec_bai.Post;
    consulta.Next;
  end;
  frmctr_ped_bai.fin_rec_bai.First;

  if not frmctr_ped_bai.fin_rec_bai.Fields[0].IsNull then
  begin
    frmctr_ped_bai.sblan.Enabled                 := false;
    frmctr_ped_bai.edDROM.Enabled                := false;
    frmctr_ped_bai.dbgprz1FIN_TIPO.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_PRAZ.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_DVEN.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_VALO.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_BANC.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_AGEN.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_CONT.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_NCHQ.DisableEditor := true;
    frmctr_ped_bai.dbgprz1FIN_OBSE.DisableEditor := true;
  end;

  with consulta do
  begin
    Close;
    SQL.Clear;
    if CadastroROM_STPD.AsString <> 'BENEFICIAMENTO' then
    begin
      SQL.Add('SELECT NFE_VNF FROM '+SLPrincipal.Values['nfe_cab']);
      SQL.Add('WHERE  NFE_CDNF = '''+CadastroROM_CDNF.AsString+'''');
    end else
    begin
      SQL.Add('SELECT SUM(NFE_VNF) FROM '+SLPrincipal.Values['nfe_ite']);
      SQL.Add('WHERE  NFE_CDNF = '''+CadastroROM_CDNF.AsString+'''');
      SQL.Add('AND    NFE_CFOP = ''5124''');
      SQL.Add('OR     NFE_CDNF = '''+CadastroROM_CDNF.AsString+'''');
      SQL.Add('AND    NFE_CFOP = ''6124''');
      Open;
      
      if fields[0].AsFloat = 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(NFE_VNF) FROM '+SLPrincipal.Values['nfe_ite']);
        SQL.Add('WHERE  NFE_CDNF = '''+CadastroROM_CDNF.AsString+'''');
        SQL.Add('AND    NFE_CFOP = ''5125''');
        SQL.Add('OR     NFE_CDNF = '''+CadastroROM_CDNF.AsString+'''');
        SQL.Add('AND    NFE_CFOP = ''5925''');
      end;
    end;
    Open;
  end;

  frmctr_ped_bai.fin_rec.Append;
  frmctr_ped_bai.fin_recID.Value       := 0;
  frmctr_ped_bai.fin_recFIN_CDPD.Value := CadastroID.AsInteger;
  frmctr_ped_bai.fin_recFIN_PORT.Value := CadastroROM_DERO.AsString;
  frmctr_ped_bai.fin_recFIN_CDRO.Value := CadastroROM_CDRO.AsInteger;
  frmctr_ped_bai.fin_recFIN_CDNF.Value := CadastroROM_CDNF.AsInteger;
  frmctr_ped_bai.fin_recFIN_STDO.Value := CadastroRECO.AsString;
  frmctr_ped_bai.fin_recFIN_DROM.Value := CadastroROM_DROM.AsDateTime;
  frmctr_ped_bai.fin_recFIN_CCLI.Value := CadastroROM_CCLI.AsInteger;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := CadastroCLI_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_DCLI.Value := CadastroCLI_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_CVEN.Value := CadastroROM_CVEN.AsInteger;
  frmctr_ped_bai.fin_recFIN_VEND.Value := CadastroUSU_DUSU.AsString;
  frmctr_ped_bai.fin_recFIN_CREP.Value := CadastroROM_CREP.AsInteger;
  frmctr_ped_bai.fin_recFIN_DREP.Value := CadastroREP_FANT.AsString;
  frmctr_ped_bai.fin_recFIN_STCO.Value := CadastroROM_STCO.AsString;
  frmctr_ped_bai.fin_recFIN_STPD.Value := CadastroROM_STPD.AsString;
  frmctr_ped_bai.fin_recFIN_CONC.Value := CadastroROM_CONC.AsInteger;
  frmctr_ped_bai.fin_recFIN_DPRA.Value := CadastroPAG_DPAG.AsString;
  frmctr_ped_bai.fin_recFIN_VALO.Value := consulta.Fields[0].AsFloat;
  frmctr_ped_bai.fin_recFIN_COBR.Value := 'B';
  frmctr_ped_bai.fin_recFIN_CTNR.Value := EmptyStr;
  frmctr_ped_bai.fin_recFIN_DOCT.Value := CadastroROM_CDNF.AsString;
  frmctr_ped_bai.fin_rec.Post;
end;

procedure Tfrmctr_ped.CANCELA_CAIXA;
var
  doct,
  tipo: String;
  valo: Double;
  conc,
  ctsr,
  cdcx: Variant;
begin
  tipo := CadastroROM_STCO.AsString;
  conc := IntToStr(CadastroROM_CONC.AsInteger);
  cdcx := IntToStr(CadastroROM_CDCX.AsInteger);

  if cdcx = 0 then
     Exit;

  with SQLFKEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_TSR');
    SQL.Add('WHERE  CAI_DESC = ''' + tipo + '''');
    ExecQuery;
    if Eof then
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_TSR');
      SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
      ExecQuery;
    end;
    ctsr := fields[0].AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM TAB_COB');
    SQL.Add('WHERE  VEN_TIPO = ''' + tipo +'''');
    ExecQuery;
    doct := conc + oStrZero(Fields[0].AsInteger,19);

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_car_bai']);
    SQL.Add('WHERE  FIN_CDBX = ''' + IntToStr(CadastroROM_CDBX.AsInteger) + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM '+SLPrincipal.Values['fin_rec_ban_bai']);
    SQL.Add('WHERE  FIN_CDBX = ''' + IntToStr(CadastroROM_CDBX.AsInteger) + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = ''' + cdcx + '''');
    SQL.Add('AND    CAI_DESC = ''' + tipo + '''');
    SQL.Add('AND    CAI_CONC = ''' + conc + '''');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM ' + SLPrincipal.Values[IFThen(Pos(LeftStr(CadastroROM_STCO.AsString,3),'BANBOLDUP') > 0,'fin_rec_ban_bai','fin_rec_car_bai')]);
    SQL.Add('WHERE  FIN_CDCX = ''' + cdcx + '''');
    SQL.Add('AND    FIN_TIPO = ''' + tipo + '''');
    SQL.Add('AND    FIN_CONC = ''' + conc + '''');
    ExecQuery;
    valo := Fields[0].AsFloat;

    if valo <> 0 then
    begin
      SPEdicao.Close;
      SPEdicao.StoredProcName := 'SP_CAI_MOV';
      SPEdicao.Prepare;
      SPEdicao.ParamByName('ID').Value   := 0;
      SPEdicao.ParamByName('CCAB').Value := cdcx;
      SPEdicao.ParamByName('CTSR').Value := ctsr;
      SPEdicao.ParamByName('CDBX').Value := 0;
      SPEdicao.ParamByName('CONC').Value := conc;
      SPEdicao.ParamByName('DESC').Value := tipo;
      SPEdicao.ParamByName('DOCT').Value := doct;
      SPEdicao.ParamByName('DCAD').Value := CadastroROM_DROM.AsDateTime;
      SPEdicao.ParamByName('HCAD').Value := time;
      SPEdicao.ParamByName('SANT').Value := 0;
      SPEdicao.ParamByName('CRED').Value := valo;
      SPEdicao.ParamByName('DEBI').Value := 0;
      SPEdicao.ParamByName('SATU').Value := 0;
      SPEdicao.ParamByName('BCON').Value := 0;
      SPEdicao.ParamByName('DCON').Value := '';
      SPEdicao.ExecProc;
    end;
  end;
  
  with SQLEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = ''' + cdcx + '''');
    ExecQuery;
  end;

  with SQLFKEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = '''+ oStrTran(SQLEdicao.Fields[0].AsString,',','.') + ''',');
    SQL.Add('       CAI_DEBI = '''+ oStrTran(SQLEdicao.Fields[1].AsString,',','.') + ''',');
    SQL.Add('       CAI_SATU = '''+ oStrTran(SQLEdicao.Fields[2].AsString,',','.') + '''' );
    SQL.Add('WHERE  ID       = '''+ cdcx +'''');
    ExecQuery;
  end;
end;

procedure Tfrmctr_ped.CadastroBeforeOpen(DataSet: TDataSet);
begin
  dbgConsultaREP_FANT.Visible := False;
end;

procedure Tfrmctr_ped.CadastroAfterScroll(DataSet: TDataSet);
begin
  if RECParametros.IDRepresentante <> CadastroROM_CREP.AsInteger then
  dbgConsultaREP_FANT.Visible := True;
end;

procedure Tfrmctr_ped.siPRNClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.CDPD                 := CadastroID.AsString;
    frmrelatorio_geral.CDRO                 := CadastroROM_CDRO.AsString;
    frmrelatorio_geral.CDBX                 := CadastroROM_CDBX.AsString;
    frmrelatorio_geral.CDNF                 := CadastroROM_CDNF.AsString;
    frmrelatorio_geral.tsVEN_PED.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsVEN_PED;
    frmrelatorio_geral.cbVEN_PED_TREL.Text  := frmprincipal.parametrosPAR_PREL.AsString;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

end.
