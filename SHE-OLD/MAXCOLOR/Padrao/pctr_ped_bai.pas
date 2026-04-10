unit pctr_ped_bai;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, ImgList, dxPageControl, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, DB, IBCustomDataSet, IBDatabase, dxDBTLCl, dxGrClms,
  StdCtrls, dxEditor, dxEdLib, dxExEdtr, IBQuery, IBStoredProc, Math, StrUtils, DateUtils,
  IBEvents, rxSpeedbar;

type
  Tfrmctr_ped_bai = class(TForm)
    imageOPC: TImageList;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siPSQ: TSpeedItem;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    pnlpri: TPanel;
    pcPED: TdxPageControl;
    tsPED: TdxTabSheet;
    imageITEM: TImageList;
    dbgConsulta: TdxDBGrid;
    fin_rec: TIBDataSet;
    dtsfin_rec: TDataSource;
    ibTRA: TIBTransaction;
    tSHEILD: TIBTransaction;
    pnlbot: TPanel;
    pnlesq: TPanel;
    gbPED: TGroupBox;
    Label1: TLabel;
    edtotr: TdxEdit;
    GroupBox2: TGroupBox;
    edDROM: TdxDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    tab_pag: TIBQuery;
    dtstab_pag: TDataSource;
    tab_pagID: TIntegerField;
    tab_pagPAG_DPAG: TIBStringField;
    tab_pagPAG_D001: TIntegerField;
    tab_pagPAG_D002: TIntegerField;
    tab_pagPAG_D003: TIntegerField;
    tab_pagPAG_D004: TIntegerField;
    tab_pagPAG_D005: TIntegerField;
    tab_pagPAG_D006: TIntegerField;
    tab_pagPAG_D007: TIntegerField;
    tab_pagPAG_D008: TIntegerField;
    tab_pagPAG_D009: TIntegerField;
    tab_pagPAG_D010: TIntegerField;
    tab_pagPAG_STA: TIBStringField;
    tab_pagPAG_PARC: TSmallintField;
    tab_pagPAG_DUPL: TIBStringField;
    edcdbx: TdxEdit;
    consulta: TIBQuery;
    ibSP: TIBStoredProc;
    Label6: TLabel;
    edtotb: TdxEdit;
    Label2: TLabel;
    edtotd: TdxEdit;
    dbgConsultaFIN_DCUS: TdxDBGridMaskColumn;
    dbgConsultaFIN_VALO: TdxDBGridMaskColumn;
    fin_rec_bai: TIBDataSet;
    dtsfin_rec_bai: TDataSource;
    fin_rec_baiID: TIntegerField;
    fin_rec_baiFIN_DVEN: TDateField;
    fin_rec_baiFIN_TIPO: TIBStringField;
    fin_rec_baiFIN_BANC: TIBStringField;
    fin_rec_baiFIN_AGEN: TIBStringField;
    fin_rec_baiFIN_CONT: TIBStringField;
    fin_rec_baiFIN_NCHQ: TIBStringField;
    fin_rec_baiFIN_OBSE: TMemoField;
    fin_rec_baiFIN_STA: TIBStringField;
    fin_rec_baiFIN_PRAZ: TSmallintField;
    ImageList1: TImageList;
    ibSHEILD: TIBStoredProc;
    consulta_s: TIBQuery;
    siSAV: TSpeedItem;
    aux: TIBQuery;
    dbgConsultaFIN_CPPL: TdxDBGridMaskColumn;
    dbgConsultaFIN_DPPL: TdxDBGridMaskColumn;
    edvend: TdxEdit;
    Label4: TLabel;
    eddrep: TdxEdit;
    dxTabSheet1: TdxTabSheet;
    GroupBox1: TGroupBox;
    edobse: TdxMemo;
    fin_rec_baiFIN_DPAG: TDateField;
    fin_rec_baiFIN_DBAN: TIBStringField;
    fin_recID: TIntegerField;
    fin_recFIN_CCLI: TIntegerField;
    fin_recFIN_CVEN: TIntegerField;
    fin_recFIN_CREP: TIntegerField;
    fin_recFIN_CDRO: TIntegerField;
    fin_recFIN_CDNF: TIntegerField;
    fin_recFIN_IPPL: TIntegerField;
    fin_recFIN_CPPL: TIBStringField;
    fin_recFIN_DPPL: TIBStringField;
    fin_recFIN_CCUS: TIntegerField;
    fin_recFIN_DCUS: TIBStringField;
    fin_recFIN_DROM: TDateField;
    fin_recFIN_DNFE: TDateField;
    fin_recFIN_DVEN: TDateField;
    fin_recFIN_DTCO: TDateField;
    fin_recFIN_VEND: TIBStringField;
    fin_recFIN_DREP: TIBStringField;
    fin_recFIN_VALO: TIBBCDField;
    dbgConsultaFIN_DROM: TdxDBGridDateColumn;
    fin_recFIN_DCLI: TIBStringField;
    dbgConsultaFIN_DCLI: TdxDBGridMaskColumn;
    fin_recFIN_CONC: TSmallintField;
    fin_rec_baiFIN_STFI: TIBStringField;
    fin_recFIN_STCO: TIBStringField;
    fin_recFIN_STPD: TIBStringField;
    fin_recFIN_STDO: TIBStringField;
    dbgConsultaFIN_STDO: TdxDBGridMaskColumn;
    fin_rec_baiFIN_DOCT: TIBStringField;
    fin_rec_baiFIN_VALO: TIBBCDField;
    fin_rec_baiFIN_VPAG: TIBBCDField;
    fin_rec_baiFIN_VPEN: TIBBCDField;
    fin_recFIN_DOCT: TIBStringField;
    dbgConsultaFIN_DOCT: TdxDBGridMaskColumn;
    Label3: TLabel;
    eddpag: TdxEdit;
    edcdcx: TdxEdit;
    aux_S: TIBQuery;
    fin_rec_baiFIN_COBR: TIBStringField;
    fin_recFIN_COBR: TIBStringField;
    fin_rec_baiFIN_STDO: TIBStringField;
    fin_rec_baiFIN_CCAB: TIntegerField;
    fin_rec_baiFIN_CDBX: TIntegerField;
    fin_rec_baiFIN_CDCX: TIntegerField;
    fin_rec_baiFIN_CCLI: TIntegerField;
    fin_rec_baiFIN_DCLI: TIBStringField;
    fin_rec_baiFIN_CVEN: TIntegerField;
    fin_rec_baiFIN_VEND: TIBStringField;
    fin_rec_baiFIN_CREP: TIntegerField;
    fin_rec_baiFIN_DREP: TIBStringField;
    fin_rec_baiFIN_ATRA: TSmallintField;
    fin_rec_baiFIN_CONC: TSmallintField;
    fin_rec_baiFIN_DCAD: TDateField;
    fin_rec_baiFIN_DMED: TDateField;
    fin_rec_baiFIN_DATR: TDateField;
    fin_rec_baiFIN_MCHQ: TSmallintField;
    fin_rec_baiFIN_STCO: TIBStringField;
    fin_recFIN_CDBX: TIntegerField;
    fin_recFIN_CDCX: TIntegerField;
    fin_recFIN_CBCO: TIntegerField;
    fin_recFIN_PRAZ: TSmallintField;
    fin_recFIN_ATRA: TSmallintField;
    fin_recFIN_DCAD: TDateField;
    fin_recFIN_DPAG: TDateField;
    fin_recFIN_DMED: TDateField;
    fin_recFIN_DATR: TDateField;
    fin_recFIN_PORT: TIBStringField;
    fin_recFIN_STFI: TIBStringField;
    fin_recFIN_VPAG: TIBBCDField;
    fin_recFIN_VPEN: TIBBCDField;
    fin_recFIN_VMUL: TIBBCDField;
    fin_recFIN_PMUL: TIBBCDField;
    fin_recFIN_VJUR: TIBBCDField;
    fin_recFIN_PJUR: TIBBCDField;
    fin_recFIN_VDES: TIBBCDField;
    fin_recFIN_PDES: TIBBCDField;
    fin_recFIN_OBSE: TMemoField;
    fin_recFIN_STA: TIBStringField;
    fin_recFIN_DPRA: TIBStringField;
    fin_recFIN_CDPD: TIntegerField;
    psq_ped: TIBQuery;
    psq_pedID: TIntegerField;
    psq_pedROM_CDOC: TIntegerField;
    psq_pedROM_CDPR: TIntegerField;
    psq_pedROM_CDPD: TIntegerField;
    psq_pedROM_CDRO: TIntegerField;
    psq_pedROM_CDRD: TIntegerField;
    psq_pedROM_CDNF: TIntegerField;
    psq_pedROM_CDBX: TIntegerField;
    psq_pedROM_CDCX: TIntegerField;
    psq_pedROM_DERO: TIBStringField;
    psq_pedROM_STPD: TIBStringField;
    psq_pedROM_STCO: TIBStringField;
    psq_pedROM_STFI: TIBStringField;
    psq_pedROM_DROM: TDateField;
    psq_pedROM_HROM: TTimeField;
    psq_pedROM_DBAI: TDateField;
    psq_pedROM_DCAN: TDateField;
    psq_pedROM_DNFS: TDateField;
    psq_pedROM_DEXP: TDateField;
    psq_pedROM_HEXP: TTimeField;
    psq_pedROM_CEXP: TIntegerField;
    psq_pedROM_CCLI: TIntegerField;
    psq_pedROM_CVEN: TIntegerField;
    psq_pedROM_CREP: TIntegerField;
    psq_pedROM_CPAG: TIntegerField;
    psq_pedROM_QTVE: TIBBCDField;
    psq_pedROM_QTSP: TIBBCDField;
    psq_pedROM_QTPD: TIBBCDField;
    psq_pedROM_RLVE: TIntegerField;
    psq_pedROM_TSDE: TIBBCDField;
    psq_pedROM_TDSC: TIBStringField;
    psq_pedROM_PDSC: TIBBCDField;
    psq_pedROM_CDSC: TIBBCDField;
    psq_pedROM_ADSC: TIBBCDField;
    psq_pedROM_TCDE: TIBBCDField;
    psq_pedROM_CONC: TSmallintField;
    psq_pedROM_OBSE: TMemoField;
    psq_pedROM_STA: TIBStringField;
    psq_pedCLI_FANT: TIBStringField;
    psq_pedREP_FANT: TIBStringField;
    psq_pedPAG_DPAG: TIBStringField;
    Label5: TLabel;
    edDBAI: TdxDateEdit;
    fin_rec_baiFIN_RCLI: TIBStringField;
    fin_rec_baiFIN_RREP: TIBStringField;
    fin_rec_baiFIN_DBAI: TDateField;
    fin_recFIN_RCLI: TIBStringField;
    fin_recFIN_RREP: TIBStringField;
    fin_recFIN_PCOM: TIBBCDField;
    fin_recFIN_DBAI: TDateField;
    psq_ped_ite: TIBQuery;
    psq_pedROM_COMI: TIBBCDField;
    psq_pedROM_DPRD: TDateField;
    psq_pedROM_CTNR: TIBStringField;
    psq_pedROM_DEMB: TDateField;
    psq_pedROM_DDES: TDateField;
    psq_pedUSU_DUSU: TIBStringField;
    pEVE: TIBEvents;
    pSP: TIBStoredProc;
    pTRA: TIBTransaction;
    fin_recFIN_VENC: TIBBCDField;
    fin_recFIN_CPF: TIBStringField;
    fin_recFIN_CTNR: TIBStringField;
    psq_ped_iteID: TIntegerField;
    psq_ped_iteROM_CCAB: TIntegerField;
    psq_ped_iteROM_CDOC: TIntegerField;
    psq_ped_iteROM_CDPR: TIntegerField;
    psq_ped_iteROM_CDPD: TIntegerField;
    psq_ped_iteROM_CDRO: TIntegerField;
    psq_ped_iteROM_CDRD: TIntegerField;
    psq_ped_iteROM_CDNF: TIntegerField;
    psq_ped_iteROM_ITEM: TIBStringField;
    psq_ped_iteROM_CPRO: TIntegerField;
    psq_ped_iteROM_CPR2: TIntegerField;
    psq_ped_iteROM_CDET: TIBStringField;
    psq_ped_iteROM_QTDE: TIBBCDField;
    psq_ped_iteROM_QTRL: TIntegerField;
    psq_ped_iteROM_QTSP: TIBBCDField;
    psq_ped_iteROM_RLSP: TIntegerField;
    psq_ped_iteROM_QTPD: TIBBCDField;
    psq_ped_iteROM_RLPD: TIntegerField;
    psq_ped_iteROM_UNIT: TFloatField;
    psq_ped_iteROM_PREC: TFloatField;
    psq_ped_iteROM_VDSC: TIBBCDField;
    psq_ped_iteROM_TOTA: TIBBCDField;
    psq_ped_iteROM_FLAG: TIBStringField;
    psq_ped_iteROM_COMI: TIBBCDField;
    psq_ped_iteROM_DPRO: TIBStringField;
    psq_ped_iteROM_TPRC: TIBStringField;
    psq_ped_iteROM_ABCD: TIBStringField;
    psq_ped_iteROM_DCOR: TIBStringField;
    psq_ped_iteROM_PCOR: TIBStringField;
    psq_ped_iteROM_DCO2: TIBStringField;
    psq_ped_iteROM_PCO2: TIBStringField;
    fin_rec_baiFIN_DFIN: TIBStringField;
    fin_rec_baiFIN_CPPL: TIntegerField;
    fin_rec_baiFIN_CCUS: TIntegerField;
    fin_rec_baiFIN_CDCO: TIntegerField;
    fin_rec_baiFIN_CDBA: TIBStringField;
    fin_rec_baiFIN_DEBA: TIBStringField;
    fin_rec_baiFIN_VENC: TIBBCDField;
    fin_rec_baiFIN_CTNR: TIBStringField;
    fin_rec_baiFIN_VMUL: TIBBCDField;
    fin_rec_baiFIN_PMUL: TIBBCDField;
    fin_rec_baiFIN_VJUR: TIBBCDField;
    fin_rec_baiFIN_PJUR: TIBBCDField;
    fin_rec_baiFIN_VDES: TIBBCDField;
    fin_rec_baiFIN_PDES: TIBBCDField;
    fin_rec_baiFIN_CPF: TIBStringField;
    fin_rec_baiFIN_CDRD: TIntegerField;
    fin_rec_baiFIN_VCHQ: TIBBCDField;
    fin_recFIN_CDRD: TIntegerField;
    fin_recFIN_VCHQ: TIBBCDField;
    fin_recFIN_DERD: TIBStringField;
    fin_rec_baiFIN_DERD: TIBStringField;
    fin_rec_baiFIN_DTST: TDateTimeField;
    fin_recFIN_DTST: TDateTimeField;
    psq_ped_iteROM_DSEP: TIBStringField;
    psq_ped_iteIDSP: TSmallintField;
    psq_ped_iteDTSP: TDateTimeField;
    Panel1: TPanel;
    dbgprz1: TdxDBGrid;
    dbgprz1FIN_TIPO: TdxDBGridImageColumn;
    dbgprz1FIN_VALO: TdxDBGridMaskColumn;
    dbgprz1FIN_PRAZ: TdxDBGridMaskColumn;
    dbgprz1FIN_DVEN: TdxDBGridDateColumn;
    dbgprz1FIN_BANC: TdxDBGridMaskColumn;
    dbgprz1FIN_AGEN: TdxDBGridMaskColumn;
    dbgprz1FIN_CONT: TdxDBGridMaskColumn;
    dbgprz1FIN_NCHQ: TdxDBGridMaskColumn;
    dbgprz1FIN_STA: TdxDBGridCheckColumn;
    dbgprz1FIN_CPF: TdxDBGridMaskColumn;
    dbgprz1FIN_OBSE: TdxDBGridBlobColumn;
    sblan: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedbarSection2: TSpeedbarSection;
    SpeedbarSection3: TSpeedbarSection;
    SpeedbarSection4: TSpeedbarSection;
    b1I: TSpeedItem;
    b1A: TSpeedItem;
    b1D: TSpeedItem;
    b1S: TSpeedItem;
    b1C: TSpeedItem;
    fin_recTPCO: TSmallintField;
    fin_recRECO: TIBStringField;
    fin_rec_baiTPCO: TSmallintField;
    fin_rec_baiRECO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure fin_recAfterPost(DataSet: TDataSet);
    procedure fin_recAfterOpen(DataSet: TDataSet);
    procedure fin_rec_baiNewRecord(DataSet: TDataSet);
    procedure fin_rec_baiAfterPost(DataSet: TDataSet);
    procedure fin_rec_baiAfterCancel(DataSet: TDataSet);
    procedure fin_rec_baiAfterDelete(DataSet: TDataSet);
    procedure fin_rec_baiAfterEdit(DataSet: TDataSet);
    procedure fin_rec_baiBeforeCancel(DataSet: TDataSet);
    procedure fin_rec_baiBeforePost(DataSet: TDataSet);
    procedure siSAVClick(Sender: TObject);
    procedure dbgprz1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fin_rec_baiFIN_PRAZValidate(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fin_recBeforePost(DataSet: TDataSet);
    procedure dtsfin_recDataChange(Sender: TObject; Field: TField);
    procedure edDROMExit(Sender: TObject);
    procedure tab_pagAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure b1IClick(Sender: TObject);
    procedure b1AClick(Sender: TObject);
    procedure b1DClick(Sender: TObject);
    procedure b1SClick(Sender: TObject);
    procedure b1CClick(Sender: TObject);
  private
    { Private declarations }
    RECDefault: TRECDefault;
    STFI: String;
    
    procedure TOTAL;
    procedure ABRE_TABELA;
    procedure BAIXA_CARTEIRA(cdbx: integer);
    procedure BAIXA_BANCARIO(cdbx: integer);
    procedure BAIXA_ESTOQUE(cdbx: integer);
    procedure LANCA_CAIXA(cobr: string;conc: word);
  public
    { Public declarations }
  end;

var
  frmctr_ped_bai: Tfrmctr_ped_bai;

const
  aParc : array [1..24] of string = ('A','B','C','D','E','F','G',
                                     'H','I','J','K','L','M','N',
                                     'O','P','Q','R','S','T','U',
                                     'V','X','Z');

implementation

uses uPrincipal;

{$R *.dfm}

procedure Tfrmctr_ped_bai.FormCreate(Sender: TObject);
begin
  oOTransact(IBTra);

  oIRECDefault(RECDefault);

  { Paginação }
  RECDefault.FrmPosition := poDesigned; { Abertura Controlada  }
  RECDefault.WorkArea    := False;       { Toda Tela do Windows }
  RECDefault.MainArea    := False;       { Toda Tela MainForm + Exclusão Botões }

  campo_pesquisa := '';
  ABRE_TABELA;
end;

procedure Tfrmctr_ped_bai.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  { Eventos }
  with pEVE do
  begin
    UnregisterEvents;
    Events.Add(oREPZero('CTR_PED','_',RECParametros.Id,3));
    RegisterEvents;
  end;
end;

procedure Tfrmctr_ped_bai.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  OnActivate    := Nil;
  Tag := 0;
end;

procedure Tfrmctr_ped_bai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Screen.Cursor := crAppStart;

  pEve.UnRegisterEvents;
  Action := caFree;
end;

procedure Tfrmctr_ped_bai.FormDestroy(Sender: TObject);
begin
  try
    Screen.Cursor := crAppStart;
    OnDestroy     := Nil;

    { Transação Principal }
    try
      oFTransact(IBTra);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                 'Error Code: '+E.Message+'.'      +#13+
                                  Caption+'.');
      end;
    end;

    { record e afins }
    try
      oFRECDefault(RECDefault);
    except
      on E: Exception do
      begin
        oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                 'Error Code: '+E.Message+'.'        +#13+
                                  Caption+'.');
      end;
    end;
  finally
    Screen.Cursor  := crDefault;
    FrmCTR_PED_BAI := Nil;
  end;
end;

procedure Tfrmctr_ped_bai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_return,40: if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                        selectNext (activecontrol, true, true);
       38          : if (not (activeControl is TdxDBGrid) and
                         not (activeControl is TdxMaskEdit)) then
                       selectNext (activecontrol, false, true);
       118         : if fin_rec_bai.State = dsBrowse then siPSQ.Click;
       116         : if fin_rec_bai.State = dsBrowse then
                     begin
                       fin_rec.Close;
                       fin_rec.Open;
                       fin_rec_bai.Close;
                       fin_rec_bai.Open;
                     end;
       121         : siSAV.Click;
  end;
end;

procedure Tfrmctr_ped_bai.FormPaint(Sender: TObject);
var
  S: TRect;
  H,
  T,
  B,
  L,
  R,
  FHeight,
  FWidth: Word;
begin
  if Showing then
  begin
    { Ajusta o Form para o tamanho da area livre do MainForm }
    GetWindowRect(FrmPrincipal.ClientHandle,S);
    T := S.Top;
    B := S.Bottom;
    L := S.Left;
    R := S.Right;
    H := B;

    if RECDefault.FrmPosition = poDesigned then
    begin
      FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
      FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

      if (RECDefault.Top > 0) and (RECDefault.Left > 0) then
      begin
        Top    := RECDefault.Top;
        Left   := RECDefault.Left;
      end else
      begin
        if FHeight > 0 then Height := FHeight;
        if FWidth  > 0 then Width  := FWidth;

        if FormStyle = fsNormal then
        begin
          Top  := (T  + (H - Height)) div 2;
          Left := ((R + L) - Width )  div 2;
        end else
        begin
          Top  := ((B - T ) - Height) div 2;
          Left := ((R - L)  - Width ) div 2;
        end;
      end;
    end else
    if (RECDefault.WorkArea) and (FormStyle = fsNormal) then
    begin
      Top    := Screen.WorkAreaTop;
      Left   := Screen.WorkAreaLeft;
      Width  := Screen.WorkAreaWidth;
      Height := Screen.WorkAreaHeight;
    end else
    if (RECDefault.MainArea) and (FormStyle = fsNormal) then
    begin
      Top    := 0;
      Left   := 0;
      Width  := R - L - 5;
      Height := H - T - 5;
    end else
    if RECDefault.FrmPosition = poDefault then
    begin
      Top    := IFThen(FormStyle = fsNormal,T,0);
      Left   := IFThen(FormStyle = fsNormal,L,0);
      Width  := IFThen(RECDefault.FrmPosition = poDefault,R - L - 5,0);
      Height := IFThen(RECDefault.FrmPosition = poDefault,H - T - 5,0);
    end;

    if RECUsuarios.Id = 0 then
       Caption := 'DIMENSÕES: Monitor: Altura = ' + IntToStr(Screen.Height) + ' Largura: ' + IntToStr(Screen.Width) + ' / ' +
                  'Tela: Altura = '               + IntToStr(Self.Height  ) + ' Largura: ' + IntToStr(Self.Width  );
  end;
end;

procedure Tfrmctr_ped_bai.FormResize(Sender: TObject);
begin
  if Self <> Nil then
  begin
    if (RECDefault.WorkArea) and (Screen.Width > 1024) then
        RECDefault.WorkArea := False;

    if (RECDefault.MainArea) and (Screen.Width > 1600) then
        RECDefault.MainArea := False;

    if (RECDefault.WorkArea) or (RECDefault.MainArea) then
    begin
      HelpKeyword := '3';
      RECDefault.FrmPosition := poDefault;
    end else
    if (HelpKeyword = '5') and (Screen.Width >= 1024) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
    begin
      RECDefault.FrmPosition := poDefault;
    end else
    if RECDefault.Id = -3 then
    begin
      RECDefault.FrmPosition := poDesigned;
      Self.HelpContext       := 90;
      Self.AlphaBlendValue   := 90;
    end;

    Paint;
  end;
end;

procedure Tfrmctr_ped_bai.siSAVClick(Sender: TObject);
var
  cdbx: integer;
begin
  ActiveControl := Nil;

  if fin_rec.State in [dsEdit,dsInsert] then
     if fin_recFIN_VALO.AsFloat > 0 then
        fin_rec.Post else fin_rec.Cancel;

  fin_rec.First;
  if fin_recID.AsInteger = 0 then
     oException(Nil,'Pedido não Informado !');

  if fin_rec_bai.State in [dsEdit,dsInsert] then
     if fin_rec_baiFIN_VALO.AsFloat > 0 then
        fin_rec_bai.Post else fin_rec_bai.Cancel;

  fin_rec_bai.First;
  if fin_rec_baiID.AsInteger = 0 then
     oException(Nil,'Pedido sem lançamento de baixas !');

  if oYesNo(handle,'Confirma baixa dos Lançamentos ?') = mrno then
     Abort;

  if oTextToValor(edtotd.Text) <> 0 then
     if oYesNo(handle,'Total de Pedidos Diferente do Total Recebido !'+#13+'Confirma os Valores Digitados ?') = mrno then
        Abort;

  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_BAI_REC,1) FROM RDB$DATABASE');
      Open;
      cdbx := fields[0].AsInteger;
    end;

    with aux_s do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) FROM FIN_REC_BAI');
      Open;
    end;

    if LeftStr(fin_recFIN_STDO.AsString,1) = 'B' then
    BAIXA_BANCARIO(CDBX);

    if (LeftStr(fin_recFIN_STDO.AsString,1) = 'C') or (fin_recTPCO.AsInteger > 1) then
    BAIXA_CARTEIRA(CDBX);


    if stfi <> 'SEM COBRANÇA' then
       with consulta_S do
       begin
         SQL.Clear;
         SQL.Add('SELECT ID FROM FIN_REC_BAI');
         SQL.Add('WHERE  FIN_STFI <> ''PAGO''');
         Open;

         if (not fields[0].IsNull) or (fin_recFIN_CDRO.AsInteger > 0) then
             stfi := 'FATURADO';
      end;

    with Consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['ped_ven_cab']);
      SQL.Add('SET    ROM_STFI = '''+stfi+''',');
      SQL.Add('       ROM_DBAI = '''+formatDateTime('mm/dd/yy',edDBAI.Date)+''',');
      SQL.Add('       ROM_CDBX = '''+inttostr(cdbx)+''',');
      SQL.Add('       ROM_CDCX = '''+edcdcx.Text+''',');
      SQL.Add('       ROM_CBAI = '''+RECUsuarios.ID+''',');
      SQL.Add('       ROM_TBAI = '''+formatDateTime('mm/dd/yy hh:mm:ss',now)+'''');
      SQL.Add('WHERE  ID       = '''+fin_recFIN_CDPD.AsString+'''');
      ExecSQL;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE '+SLPrincipal.Values['rom_cab']);
      SQL.Add('SET    ROM_STFI = ''' + stfi+''',');
      SQL.Add('       ROM_DBAI = ''' + formatDateTime('mm/dd/yy',edDBAI.Date)+''',');
      SQL.Add('       ROM_CDBX = ''' + inttostr(cdbx) + ''',');
      SQL.Add('       ROM_CDCX = ''' + edcdcx.Text    + '''' );
      SQL.Add('WHERE  ID       = ''' + fin_recFIN_CDRO.AsString +'''');
      ExecSQL;
    end;

    BAIXA_ESTOQUE(cdbx);

    with consulta_S do
    begin
      SQL.Clear;
      SQL.Add('SELECT   FIN_STPD,FIN_CDPD,FIN_PORT,FIN_CCLI,FIN_DCLI FROM FIN_REC');
      SQL.Add('GROUP BY FIN_STPD,FIN_CDPD,FIN_PORT,FIN_CCLI,FIN_DCLI');
      Open;

      while not eof do
      begin
        frmprincipal.Log_Eve('Vendas',LOWERCASE(fields[0].AsString),'Baixa',fields[1].AsString,fields[1].AsString,fields[3].AsString+' - '+LOWERCASE(fields[4].AsString),'','');
        next;
      end;
    end;

    oCTransact(IBTra);
    oAviso(handle,'Pedido Finalizado com Sucesso !');
  except
    on E: Exception do
    begin
      oRTransact(IBTra, ltRollbackRetaining);
      oException(Nil  ,'Falha ao tentar finalizar pedido !' +#13+
                       'Favor entrar em contato com o administrador do sistema.'+#13+#13+
                        E.Message);
    end;
  end;
    
  pTRA.StartTransaction;

  pSP.StoredProcName := 'SP_EVENT';
  pSP.Prepare;
  pSP.Params[0].AsString := oREPZero('CTR_PED','_',RECParametros.Id,3);
  pSP.ExecProc;

  pTRA.Commit;
  close;
end;

procedure Tfrmctr_ped_bai.BAIXA_CARTEIRA(cdbx: integer);
var
  doct: string;
  cdpd,cdro: Array of Integer;
  i: word;
  conc,ccab: integer;
begin
  conc := fin_recFIN_CONC.AsInteger;
  if (fin_rec.RecordCount > 1) or (conc = 0) then
  conc := 1;

  SetLength(cdpd,10);
  SetLength(cdro,10);  

  with consulta_s do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIN_CDPD FROM FIN_REC');
    SQL.Add('GROUP BY FIN_CDPD');
    SQL.Add('ORDER BY FIN_CDPD');
    Open;

    i := 0;
    while not eof do
    begin
      cdpd[i] := fields[0].AsInteger;
      inc(i);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIN_CDRO FROM FIN_REC');
    SQL.Add('GROUP BY FIN_CDRO');
    SQL.Add('ORDER BY FIN_CDRO');
    Open;

    i := 0;
    while not eof do
    begin
      cdro[i] := fields[0].AsInteger;
      inc(i);
      next;
    end;
  end;

  stfi := EmptyStr;
  if fin_recFIN_STCO.AsString = 'SEM COBRANÇA' then
     stfi := 'SEM COBRANÇA';

  doct := '';
  for i := 0 to 9 do
  begin
    if cdpd[i] = 0 then
    break;

    doct := doct + inttostr(cdpd[i]);

    if cdpd[i+1] > 0 then
    doct := doct + '/' else break;
  end;

  ccab := 0;
  i    := 0;

  if stfi <> 'SEM COBRANÇA' then
  begin
    fin_rec_bai.First;
    while not fin_rec_bai.Eof do
    begin
      inc(i);

      ibSP.Close;
      ibSP.StoredProcName := 'SP_FIN_REC_BAI';
      ibSP.Prepare;

      ibSP.ParamByName('fin').Value  := oREPZero('FIN_REC_CAR_BAI','_',RECParametros.Id,3);
      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('CCAB').Value := ccab;
      ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
      ibSP.ParamByName('CDBX').Value := cdbx;
      ibSP.ParamByName('CDCX').Value := edcdcx.Text;
      ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
      ibSP.ParamByName('CONC').Value := conc;
      ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
      ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
      ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
      ibSP.ParamByName('DCAD').Value := edDROM.Date;
      ibSP.ParamByName('DBAI').Value := edDBAI.Date;
      ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
      ibSP.ParamByName('DOCT').Value := IFThen(aux_S.Fields[0].AsInteger = 1,fin_recFIN_DOCT.AsString,fin_recFIN_DOCT.AsString+'-'+aParc[i]);
      ibSP.ParamByName('BANC').Value := '';
      ibSP.ParamByName('DBAN').Value := '';
      ibSP.ParamByName('AGEN').Value := '';
      ibSP.ParamByName('CONT').Value := '';
      ibSP.ParamByName('NCHQ').Value := '';
      ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
      ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
      ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
      ibSP.ParamByName('CDCO').Value := 0;
      ibSP.ParamByName('CDBA').Value := 0;
      ibSP.ParamByName('DEBA').Value := '';
      ibSP.ParamByName('BCON').Value := 0;
      ibSP.ParamByName('DCON').Value := '';
      ibSP.ParamByName('LOTE').Value := 0;
      ibSP.ParamByName('DLOT').Value := 0;
      ibSP.ParamByName('CDCH').Value := 0;

      if edDROM.Date = fin_rec_baiFIN_DVEN.AsDateTime then
      stfi := 'PAGO' else
      stfi := 'PENDENTE';

      if Pos(LeftStr(fin_rec_baiFIN_TIPO.AsString,3),'ABADEV') > 0 then
      stfi := 'BAIXADO';

      if stfi = 'BAIXADO' then
      begin
        ibSP.ParamByName('STFI').Value := stfi;
        ibSP.ParamByName('DPAG').Value := 0;
        ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPAG').Value := 0;
        ibSP.ParamByName('VPEN').Value := 0;
      end else
      if stfi = 'PAGO' then
      begin
        ibSP.ParamByName('STFI').Value := 'PAGO';
        ibSP.ParamByName('DPAG').Value := edDROM.Date;
        ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPEN').Value := 0;
      end else
      begin
        ibSP.ParamByName('STFI').Value := 'PENDENTE';
        ibSP.ParamByName('DPAG').Value := 0;
        ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPAG').Value := 0;
        ibSP.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
      end;

      ibSP.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
      ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
      ibSP.ParamByName('STA').Value  := '0';
      ibSP.ExecProc;

      if (Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0) and (fin_rec_baiFIN_NCHQ.AsString <> EmptyStr) then
      begin
        ibSP.Close;
        ibSP.StoredProcName := 'SP_CAD_CHQ';
        ibSP.Prepare;

        ibSP.ParamByName('id'  ).Value := 0;
        ibSP.ParamByName('CDEP').Value := RECParametros.Id;
        ibSP.ParamByName('CDCX').Value := edcdcx.Text;
        ibSP.ParamByName('CDBX').Value := cdbx;

        ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
        ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
        ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
        ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;

        ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
        ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
        ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
        ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
        ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;

        ibSP.ParamByName('STFI').Value := 'PAGO';
        ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;

        ibSP.ParamByName('DCAD').Value := eddrom.Date;
        ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;

        ibSP.ParamByName('CADA').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
        ibSP.ParamByName('OBSE').Value := TRIM(fin_rec_baiFIN_OBSE.AsString);
        ibSP.ParamByName('CPF' ).Value := null;

        if aux_S.Fields[0].AsInteger = 1 then
        ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString else
        ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString+'-'+aParc[i];

        ibSP.ExecProc;
      end;

      fin_rec_bai.Next;
    end;
  end;
  fin_rec_bai.First;
  LANCA_CAIXA('C',conc);
end;

procedure Tfrmctr_ped_bai.BAIXA_BANCARIO(cdbx: integer);
var
  ccab: integer;
  i: word;
begin
  ccab := 0;
  i    := 0;

  stfi := EmptyStr;
  if fin_recFIN_STCO.AsString = 'SEM COBRANÇA' then
     stfi := 'SEM COBRANÇA' else
  begin
    while not fin_rec_bai.Eof do
    begin
      inc(i);

      ibSP.Close;
      ibSP.StoredProcName := 'SP_FIN_REC_BAI';
      ibSP.Prepare;

      ibSP.ParamByName('fin').Value  := oREPZero('FIN_REC_BAN_BAI','_',RECParametros.Id,3);
      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('CCAB').Value := ccab;
      ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
      ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
      ibSP.ParamByName('CDBX').Value := cdbx;
      ibSP.ParamByName('CDCX').Value := strtoint(edcdcx.Text);
      ibSP.ParamByName('CONC').Value := 1;
      ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
      ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
      ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
      ibSP.ParamByName('DCAD').Value := edDROM.Date;
      ibSP.ParamByName('DBAI').Value := edDBAI.Date;
      ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
      ibSP.ParamByName('DOCT').Value := IFThen(aux_S.Fields[0].AsInteger = 1,fin_recFIN_DOCT.AsString,fin_recFIN_DOCT.AsString+'-'+aParc[i]);
      ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
      ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
      ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
      ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
      ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
      ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
      ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
      ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
      ibSP.ParamByName('CDCO').Value := 0;
      ibSP.ParamByName('CDBA').Value := 0;
      ibSP.ParamByName('DEBA').Value := '';
      ibSP.ParamByName('BCON').Value := 0;
      ibSP.ParamByName('DCON').Value := '';
      ibSP.ParamByName('LOTE').Value := 0;
      ibSP.ParamByName('DLOT').Value := 0;
      ibSP.ParamByName('CDCH').Value := 0;

      if edDROM.Date = fin_rec_baiFIN_DVEN.AsDateTime then
      stfi := 'PAGO' else
      stfi := 'PENDENTE';

      if stfi = 'PAGO' then
      begin
        ibSP.ParamByName('STFI').Value := 'PAGO';
        ibSP.ParamByName('DPAG').Value := edDROM.Date;
        ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPEN').Value := 0;
      end else
      begin
        ibSP.ParamByName('STFI').Value := 'PENDENTE';
        ibSP.ParamByName('DPAG').Value := 0;
        ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPAG').Value := 0;
        ibSP.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
      end;

      ibSP.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
      ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
      ibSP.ParamByName('STA').Value  := '0';
      ibSP.ExecProc;

      fin_rec_bai.Next;
    end;
  end;

  LANCA_CAIXA('B',1);
  if (fin_recFIN_CONC.AsInteger > 1) and (stfi <> 'SEM COBRANÇA') then
  begin
    fin_rec_bai.First;
    while not fin_rec_bai.Eof do
    begin
      ibSP.Close;
      ibSP.StoredProcName := 'SP_FIN_REC_BAI';
      ibSP.Prepare;

      ibSP.ParamByName('fin').Value  := oREPZero('FIN_REC_CAR_BAI','_',RECParametros.Id,3);
      ibSP.ParamByName('id').Value   := 0;
      ibSP.ParamByName('CCAB').Value := ccab;
      ibSP.ParamByName('CDBX').Value := cdbx;
      ibSP.ParamByName('DFIN').Value := fin_recFIN_STCO.AsString;
      ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;
      ibSP.ParamByName('CDCX').Value := edcdcx.Text;
      ibSP.ParamByName('CONC').Value := fin_recFIN_CONC.AsInteger-1;
      ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
      ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
      ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
      ibSP.ParamByName('DCAD').Value := edDROM.Date;
      ibSP.ParamByName('DBAI').Value := edDBAI.Date;
      ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;
      ibSP.ParamByName('DOCT').Value := fin_rec_baiFIN_DOCT.AsString;
      ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
      ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
      ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
      ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
      ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;
      ibSP.ParamByName('TIPO').Value := fin_rec_baiFIN_TIPO.AsString;
      ibSP.ParamByName('CPPL').Value := fin_recFIN_IPPL.AsInteger;
      ibSP.ParamByName('CCUS').Value := fin_recFIN_CCUS.AsInteger;
      ibSP.ParamByName('CDCO').Value := 0;
      ibSP.ParamByName('CDBA').Value := 0;
      ibSP.ParamByName('DEBA').Value := '';
      ibSP.ParamByName('BCON').Value := 0;
      ibSP.ParamByName('DCON').Value := '';
      ibSP.ParamByName('LOTE').Value := 0;
      ibSP.ParamByName('DLOT').Value := 0;
      ibSP.ParamByName('CDCH').Value := 0;

      if edDROM.Date = fin_rec_baiFIN_DVEN.AsDateTime then
      stfi := 'PAGO' else
      stfi := 'PENDENTE';

      if stfi = 'PAGO' then
      begin
        ibSP.ParamByName('STFI').Value := 'PAGO';
        ibSP.ParamByName('DPAG').Value := edDROM.Date;
        ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPAG').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPEN').Value := 0;
      end else
      begin
        ibSP.ParamByName('STFI').Value := 'PENDENTE';
        ibSP.ParamByName('DPAG').Value := 0;
        ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;
        ibSP.ParamByName('VPAG').Value := 0;
        ibSP.ParamByName('VPEN').Value := fin_rec_baiFIN_VALO.AsFloat;
      end;

      ibSP.ParamByName('CTNR').Value := fin_recFIN_CTNR.AsString;
      ibSP.ParamByName('OBSE').Value := fin_rec_baiFIN_OBSE.AsString;
      ibSP.ParamByName('STA').Value  := '0';
      ibSP.ExecProc;

      if (Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0) and (fin_rec_baiFIN_NCHQ.AsString <> EmptyStr) then
      begin
        ibSP.Close;
        ibSP.StoredProcName := 'SP_CAD_CHQ';
        ibSP.Prepare;

        ibSP.ParamByName('id'  ).Value := 0;
        ibSP.ParamByName('CDEP').Value := RECParametros.Id;
        ibSP.ParamByName('CDCX').Value := edcdcx.Text;
        ibSP.ParamByName('CDBX').Value := cdbx;

        ibSP.ParamByName('CCLI').Value := fin_recFIN_CCLI.AsInteger;
        ibSP.ParamByName('CVEN').Value := fin_recFIN_CVEN.AsInteger;
        ibSP.ParamByName('CREP').Value := fin_recFIN_CREP.AsInteger;
        ibSP.ParamByName('STDO').Value := fin_recFIN_STDO.AsString;

        ibSP.ParamByName('BANC').Value := fin_rec_baiFIN_BANC.AsString;
        ibSP.ParamByName('DBAN').Value := fin_rec_baiFIN_DBAN.AsString;
        ibSP.ParamByName('AGEN').Value := fin_rec_baiFIN_AGEN.AsString;
        ibSP.ParamByName('CONT').Value := fin_rec_baiFIN_CONT.AsString;
        ibSP.ParamByName('NCHQ').Value := fin_rec_baiFIN_NCHQ.AsString;

        ibSP.ParamByName('STFI').Value := 'PAGO';
        ibSP.ParamByName('VALO').Value := fin_rec_baiFIN_VALO.AsFloat;

        ibSP.ParamByName('DCAD').Value := eddrom.Date;
        ibSP.ParamByName('DVEN').Value := fin_rec_baiFIN_DVEN.AsDateTime;

        ibSP.ParamByName('CADA').Value := frmprincipal.cad_usuUSU_DUSU.AsString;
        ibSP.ParamByName('OBSE').Value := TRIM(fin_rec_baiFIN_OBSE.AsString);
        ibSP.ParamByName('CPF' ).Value := null;
        
        ibSP.ParamByName('DOCT').Value := fin_recFIN_DOCT.AsString;
        ibSP.ExecProc;
      end;
      fin_rec_bai.Next;
    end;
    LANCA_CAIXA('C',fin_recFIN_CONC.AsInteger-1);
  end;
end;

procedure Tfrmctr_ped_bai.LANCA_CAIXA(cobr: string;conc: word);
var
  doct: string;
  valo: double;
  ctsr: integer;
begin
  with consulta_S do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO FROM FIN_REC_BAI');
    SQL.Add('GROUP BY FIN_TIPO');
    Open;
  end;
  while not consulta_S.Eof do
  begin
    with consulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_TSR');
      SQL.Add('WHERE  CAI_DESC = ''' + Consulta_S.Fields[0].AsString + '''');
      Open;
      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID FROM CAI_TSR');
        SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
        Open;
      end;
      ctsr := fields[0].AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM TAB_COB');
      SQL.Add('WHERE  VEN_TIPO = ''' + Consulta_S.Fields[0].AsString + '''');
      Open;
      doct := IntToStr(conc) + oStrZero(Fields[0].AsInteger,19);

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CAI_MOV');
      SQL.Add('WHERE  CAI_CCAB = ''' + edcdcx.Text    + '''');
      SQL.Add('AND    CAI_DESC = ''' + Consulta_S.Fields[0].AsString + '''');
      SQL.Add('AND    CAI_CONC = ''' + IntToStr(conc) + '''');
      ExecSQL;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(FIN_VALO) FROM '+SLPrincipal.Values[IFThen(cobr = 'B','fin_rec_ban_bai','fin_rec_car_bai')]);
      SQL.Add('WHERE  FIN_CDCX = ''' + edcdcx.Text    + '''');
      SQL.Add('AND    FIN_TIPO = ''' + Consulta_S.Fields[0].AsString + '''');
      SQL.Add('AND    FIN_CONC = ''' + IntToStr(conc) + '''');
      Open;
      valo := Fields[0].AsFloat;
    end;

    ibSP.Close;
    ibSP.StoredProcName := 'SP_CAI_MOV';
    ibSP.Prepare;
    ibSP.ParamByName('ID').Value   := 0;
    ibSP.ParamByName('CCAB').Value := edcdcx.Text;
    ibSP.ParamByName('CDBX').Value := 0;
    ibSP.ParamByName('CTSR').Value := ctsr;
    ibSP.ParamByName('CONC').Value := conc;
    ibSP.ParamByName('DESC').Value := consulta_S.Fields[0].AsString;
    ibSP.ParamByName('DOCT').Value := doct;
    ibSP.ParamByName('DCAD').Value := edDROM.Date;
    ibSP.ParamByName('HCAD').Value := time;
    ibSP.ParamByName('SANT').Value := 0;
    ibSP.ParamByName('CRED').Value := valo;
    ibSP.ParamByName('DEBI').Value := 0;
    ibSP.ParamByName('SATU').Value := 0;
    ibSP.ParamByName('BCON').Value := 0;
    ibSP.ParamByName('DCON').Value := '';
    ibSP.ExecProc;

    consulta_S.Next;
  end;

  with consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(CAI_CRED),SUM(CAI_DEBI),SUM(CAI_CRED-CAI_DEBI) FROM CAI_MOV');
    SQL.Add('WHERE  CAI_CCAB = ''' + edcdcx.Text + '''');
    Open;
  end;
  with aux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CAI_LAF');
    SQL.Add('SET    CAI_CRED = ''' + oStrTran(consulta.Fields[0].AsString,',','.') + ''',');
    SQL.Add('       CAI_DEBI = ''' + oStrTran(consulta.Fields[1].AsString,',','.') + ''',');
    SQL.Add('       CAI_SATU = ''' + oStrTran(consulta.Fields[2].AsString,',','.') + '''' );
    SQL.Add('WHERE  ID       = ''' + edcdcx.Text + '''');
    ExecSQL;
  end;
end;

procedure Tfrmctr_ped_bai.BAIXA_ESTOQUE(cdbx: integer);
begin
{  with psq_ped do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PED_VEN_CAB.*,CAD_CLI.CLI_FANT,CAD_USU.USU_DUSU,CAD_REP.REP_FANT,PAG_DPAG');
    SQL.Add('FROM     CAD_CLI,CAD_USU,CAD_REP,TAB_PAG,'+SLPrincipal.Values['ped_ven_cab']+' "PED_VEN_CAB"');
    SQL.Add('WHERE    PED_VEN_CAB.ROM_CCLI = CAD_CLI.ID');
    SQL.Add('AND      PED_VEN_CAB.ROM_CVEN = CAD_USU.USU_CUSU');
    SQL.Add('AND      PED_VEN_CAB.ROM_CREP = CAD_REP.ID');
    SQL.Add('AND      PED_VEN_CAB.ROM_CPAG = TAB_PAG.ID');
    SQL.Add('AND      PED_VEN_CAB.ROM_CDBX = ''' + IntToStr(cdbx) + '''');
    SQL.Add('ORDER BY ID DESC');
    Open;
  end;
  while not psq_ped.Eof do
  begin
    with aux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT VEN_BEST FROM TAB_PED');
      SQL.Add('WHERE  VEN_TIPO = ''' + psq_pedROM_STPD.AsString + '''');
      Open;
    end;
    if aux.Fields[0].AsString = '1' then
    begin
      with psq_ped_ite do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM '+SLPrincipal.Values['ped_ven_ite']+' "PED_VEN_ITE"');
        SQL.Add('WHERE    PED_VEN_ITE.ROM_CCAB = ''' + psq_pedID.AsString + '''');
        SQL.Add('ORDER BY PED_VEN_ITE.ROM_ITEM');
        Open;
      end;

      while not psq_ped_ite.Eof do
      begin
        ibSP.Close;
        ibSP.StoredProcName := 'SP_CAD_PRO_EST_FIS';
        ibSP.Prepare;

        ibSP.ParamByName('AFLAG').Value := 0;
        ibSP.ParamByName('AIDEP').Value := RECParametros.ID;
        ibSP.ParamByName('AIDFK').Value := PSQ_PED_ITEID.AsInteger;

        ibSP.ParamByName('ACDRO').Value := 0;
        ibSP.ParamByName('AIDPK').Value := PSQ_PEDID.AsInteger;
        ibSP.ExecProc;


        psq_ped_ite.Next;
      end;
    end;

    psq_ped.Next;
  end;    }
end;

procedure Tfrmctr_ped_bai.ABRE_TABELA;
begin
  oOTransact(TSheild);
  with consulta_s do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC');
    ExecSQL;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FIN_REC_BAI');
    ExecSQL;
  end;
  oRTransact(TSheild);

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT   VEN_TIPO FROM TAB_COB');
    SQL.Add('WHERE    VEN_STA  = ''1''');
    SQL.Add('ORDER BY ID');
    Open;

    while not eof do
    begin
      dbgprz1FIN_TIPO.Descriptions.Add(fields[0].AsString);
      dbgprz1FIN_TIPO.Values.Add(fields[0].AsString);
      next;
    end;
  end;
end;

procedure Tfrmctr_ped_bai.siSAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmctr_ped_bai.fin_recAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  wRec := fin_rec.GetBookmark;
  tSHEILD.CommitRetaining;

  fin_rec.Close;
  fin_rec.Open;
  if (wRec = Nil) or (fin_rec.Fields[0].IsNull) then fin_rec.last
     else fin_rec.GotoBookmark(wRec);
  fin_rec.FreeBookmark(wRec);
end;

procedure Tfrmctr_ped_bai.fin_recAfterOpen(DataSet: TDataSet);
begin
  TOTAL;
end;

procedure Tfrmctr_ped_bai.TOTAL;
begin
  edtotr.Text := '0,00';
  edtotd.Text := '0,00';
  edtotb.Text := '0,00';

  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC');
    Open;
    edtotr.Text := formatfloat('#,0.00###',fields[0].AsFloat);

    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_BAI');
    Open;
    edtotb.Text := formatfloat('#,0.00###',fields[0].AsFloat);
  end;

  if (fin_rec.RecNo = 1) and (fin_recFIN_STCO.AsString = 'DEVOLUÇÃO') then
  edtotd.Text   := formatfloat('#,0.00###',0)
  else
  edtotd.Text   := formatfloat('#,0.00###',oTextToValor(edtotr.Text)-oTextToValor(edtotb.Text));
end;

procedure Tfrmctr_ped_bai.fin_rec_baiNewRecord(DataSet: TDataSet);
begin
  fin_rec_baiID.Value       := 0;
  fin_rec_baiFIN_STA.Value  := '0';
  fin_rec_baiFIN_PRAZ.Value := 0;
  fin_rec_baiFIN_DVEN.Value := edDROM.Date;

  if tab_pagPAG_PARC.AsInteger = 1 then
  fin_rec_baiFIN_DVEN.Value := incDay(edDROM.Date,tab_pagPAG_D001.AsInteger);

  if fin_rec_bai.Tag = 0 then
  with consulta_S do
  begin
    SQL.Clear;
    SQL.Add('SELECT SUM(FIN_VALO) FROM FIN_REC_BAI');
    Open;
    fin_rec_baiFIN_VALO.Value := oTextToValor(edtotr.Text) - fields[0].AsFloat;

    SQL.Clear;
    SQL.Add('SELECT   FIN_TIPO,FIN_BANC,FIN_AGEN,FIN_CONT,FIN_STA FROM FIN_REC_BAI');
    SQL.Add('ORDER BY ID DESC');
    Open;
    fin_rec_baiFIN_TIPO.Value := fields[0].AsString;

    if Pos('CH',fin_rec_baiFIN_TIPO.AsString) > 0 then
    begin
      fin_rec_baiFIN_BANC.Value := fields[1].AsString;
      fin_rec_baiFIN_AGEN.Value := fields[2].AsString;
      fin_rec_baiFIN_CONT.Value := fields[3].AsString;
      fin_rec_baiFIN_VALO.Value := 0;
    end;
  end;

  fin_rec_baiTPCO.Value := fin_recTPCO.AsInteger;
  fin_rec_baiRECO.Value := fin_recRECO.AsString;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterPost(DataSet: TDataSet);
var
  wRec: TBookMark;
begin
  b1I.Enabled := true;
  b1A.Enabled := true;
  b1D.Enabled := true;
  b1S.Enabled := false;
  b1C.Enabled := false;

  wRec := fin_rec_bai.GetBookmark;
  tSHEILD.CommitRetaining;

  fin_rec_bai.Close;
  fin_rec_bai.Open;
  if (wRec = Nil) or (fin_rec_bai.Fields[0].IsNull) then fin_rec_bai.last
     else fin_rec_bai.GotoBookmark(wRec);
  fin_rec_bai.FreeBookmark(wRec);

  TOTAL;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterCancel(DataSet: TDataSet);
begin
  b1I.Enabled := true;
  b1A.Enabled := true;
  b1D.Enabled := true;
  b1S.Enabled := false;
  b1C.Enabled := false;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterDelete(DataSet: TDataSet);
begin
  tSHEILD.CommitRetaining;
  TOTAL;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiAfterEdit(DataSet: TDataSet);
begin
  b1I.Enabled := false;
  b1A.Enabled := false;
  b1D.Enabled := false;
  b1S.Enabled := true;
  b1C.Enabled := true;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiBeforeCancel(DataSet: TDataSet);
begin
  b1I.Enabled := true;
  b1A.Enabled := true;
  b1D.Enabled := true;
  b1S.Enabled := false;
  b1C.Enabled := false;

  if fin_rec_bai.RecordCount = 0 then
  begin
    fin_rec_bai.Close;
    fin_rec_bai.Open;
    ABORT;
  end;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiBeforePost(DataSet: TDataSet);
begin
  fin_rec_baiFIN_DVEN.Value := fin_rec_baiFIN_DVEN.AsDateTime;

  if fin_rec_baiFIN_TIPO.AsString = '' then
  DataBaseError('Tipo de Recebimento não Selecionado !');

  if fin_rec_baiFIN_VALO.AsFloat = 0 then
  DataBaseError('Valor de Recebimento não Informado !');

  if (fin_rec_baiFIN_TIPO.AsString = 'CHEQUE PRE-DATADO') and (fin_rec_baiFIN_DVEN.AsDateTime = edDROM.Date) then
  fin_rec_baiFIN_TIPO.AsString := 'CHEQUE A VISTA';

  if (fin_rec_baiFIN_TIPO.AsString = 'CHEQUE A VISTA') and (fin_rec_baiFIN_DVEN.AsDateTime <> edDROM.Date) then
  fin_rec_baiFIN_TIPO.AsString := 'CHEQUE PRE-DATADO';

  if fin_rec_baiFIN_DVEN.AsDateTime = edDROM.Date then
  fin_rec_baiFIN_STFI.Value := 'PAGO'
  else
  fin_rec_baiFIN_STFI.Value := 'PENDENTE';
end;

procedure Tfrmctr_ped_bai.dbgprz1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: begin
                 if dbgprz1.FocusedColumn = 2 then
                 begin
                   fin_rec_bai.Next;
                   if fin_rec_bai.Eof then
                   begin
                     if oTextToValor(edtotb.Text) < oTextToValor(edtotr.Text) then
                        fin_rec_bai.Append;
                     dbgprz1.FocusedColumn := 1;
                   end;
                 end else
                 dbgprz1.FocusedColumn := dbgprz1.FocusedColumn + 1;
               end;
    VK_DELETE: if fin_rec_bai.State = dsBrowse then
                  b1D.Click;
    VK_ESCAPE: if fin_rec_bai.State = dsBrowse then close else fin_rec_bai.Cancel;
    VK_INSERT: if not b1S.Enabled then b1I.Click;
  end;
end;

procedure Tfrmctr_ped_bai.fin_rec_baiFIN_PRAZValidate(Sender: TField);
begin
  if fin_rec_baiFIN_PRAZ.AsInteger > 0 then
  fin_rec_baiFIN_DVEN.Value := incDay(edDROM.Date,fin_rec_baiFIN_PRAZ.AsInteger);
end;

procedure Tfrmctr_ped_bai.fin_recBeforePost(DataSet: TDataSet);
begin
  with aux do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID,FIN_CPPL,FIN_DFIN FROM FIN_PPL');
    SQL.Add('WHERE  FIN_DFIN = '''+fin_recFIN_STPD.AsString+'''');
    Open;
    frmctr_ped_bai.FIN_RECFIN_IPPL.Value := fields[0].AsInteger;
    frmctr_ped_bai.FIN_RECFIN_CPPL.Value := fields[1].AsString;
    frmctr_ped_bai.FIN_RECFIN_DPPL.Value := fields[2].AsString;

    SQL.Clear;
    SQL.Add('SELECT ID,FIN_DCUS FROM FIN_CUS');
    SQL.Add('WHERE  FIN_DCUS = ''VENDAS''');
    Open;
    frmctr_ped_bai.FIN_RECFIN_CCUS.Value := fields[0].AsInteger;
    frmctr_ped_bai.FIN_RECFIN_DCUS.Value := fields[1].AsString;
  end;
end;

procedure Tfrmctr_ped_bai.dtsfin_recDataChange(Sender: TObject;
  Field: TField);
begin
  edvend.Text := fin_recFIN_VEND.AsString;
  eddrep.Text := fin_recFIN_DREP.AsString;
  eddpag.Text := fin_recFIN_DPRA.AsString;
end;

procedure Tfrmctr_ped_bai.edDROMExit(Sender: TObject);
  var Ctrl: TWinControl;
begin
  try
    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_LAF');
      SQL.Add('WHERE  CAI_DABR = '''+formatDateTime('mm/dd/yy',edDBAI.Date)+'''');
      SQL.Add('AND    CAI_CDEP = '''+RECParametros.Id+'''');
      Open;

      if fields[0].IsNull then
         raise exception.Create('Data de baixa informada não possui fluxo de caixa !');
      edcdcx.Text := fields[0].AsString;

      try
        if fin_rec_bai.State in [dsEdit,dsInsert] then
        begin
          if fin_rec_baiFIN_VALO.AsFloat > 0 then
          fin_rec_bai.Post
          else
          fin_rec_bai.Cancel;
        end;

        fin_rec_bai.DisableControls;
        fin_rec_bai.First;
        while not fin_rec_bai.Eof do
        begin
          fin_rec_bai.Edit;
          if fin_rec_baiFIN_DVEN.AsDateTime <= fin_rec_baiFIN_DCAD.AsDateTime then
          fin_rec_baiFIN_DVEN.Value := edDROM.Date;
          fin_rec_baiFIN_DCAD.Value := edDROM.Date;
          fin_rec_bai.Post;
          fin_rec_bai.Next;
        end;
      finally
        fin_rec_bai.First;
        fin_rec_bai.EnableControls;
      end;
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

procedure Tfrmctr_ped_bai.tab_pagAfterOpen(DataSet: TDataSet);
begin
  eddpag.Text := tab_pagPAG_DPAG.AsString;
end;

procedure Tfrmctr_ped_bai.b1IClick(Sender: TObject);
begin
  if fin_rec_bai.State = dsBrowse then
     fin_rec_bai.Append;
end;

procedure Tfrmctr_ped_bai.b1AClick(Sender: TObject);
begin
  if (fin_rec_bai.State = dsBrowse) and (not fin_rec_baiID.AsInteger > 0) then
      fin_rec_bai.Edit;
end;

procedure Tfrmctr_ped_bai.b1DClick(Sender: TObject);
begin
  if (fin_rec_bai.State = dsBrowse) and (not fin_rec_baiID.AsInteger > 0) then
      fin_rec_bai.Delete;
end;

procedure Tfrmctr_ped_bai.b1SClick(Sender: TObject);
begin
  if fin_rec_bai.State in [dsEdit,dsInsert] then
     fin_rec_bai.Post;
end;

procedure Tfrmctr_ped_bai.b1CClick(Sender: TObject);
begin
  if fin_rec_bai.State in [dsEdit,dsInsert] then
     fin_rec_bai.Cancel;
end;

end.
