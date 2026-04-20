unit pFIN_PAG_EDI;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pSHE_DEF_EDI, cxGraphics, ActnList, dxCntner, ImgList, IBEvents,
  IBStoredProc, DB, IBCustomDataSet, IBQuery, IBSQL, IBDatabase, dxBar,
  dxBarExtItems, dxDockControl, dxPageControl, ExtCtrls, cxControls,
  dxStatusBar, dxExEdtr, dxEdLib, dxEditor, StdCtrls, dxDockPanel,
  math, StrUtils;

type
  TFrmFIN_PAG_EDI = class(TFrmSHE_DEF_EDI)
    PNLDocumento: TPanel;
    DSDocumento: TdxDockSite;
    DPDocumento: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    LADESCRICAO: TLabel;
    LACF_NO: TLabel;
    LADOCUMENTO_VALOR: TLabel;
    LADOCUMENTO_DATA_VENCIMENTO: TLabel;
    LACONTA_ID: TLabel;
    LAPLANO_CONTA_NO: TLabel;
    LACENTRO_CUSTO_ID: TLabel;
    LATIPO_TPG_ID: TLabel;
    LATIPO_MPG_ID: TLabel;
    LADOCUMENTO: TLabel;
    LADDOC: TLabel;
    LADOCUMENTO_VALOR_MULTA: TLabel;
    LADOCUMENTO_VALOR_JURO: TLabel;
    PECF_NO: TdxPickEdit;
    CEDOCUMENTO_VALOR: TdxCurrencyEdit;
    DEDOCUMENTO_DATA_VENCIMENTO: TdxDateEdit;
    IECONTA_ID: TdxImageEdit;
    PEPLANO_CONTA_NO: TdxPickEdit;
    IETIPO_TPG_ID: TdxImageEdit;
    IETIPO_MPG_ID: TdxImageEdit;
    EDDOCUMENTO: TdxEdit;
    DEDOCUMENTO_DATA_EMISSAO: TdxDateEdit;
    CEDOCUMENTO_VALOR_MULTA: TdxCurrencyEdit;
    CEDOCUMENTO_VALOR_JURO: TdxCurrencyEdit;
    PEDESCRICAO: TdxPickEdit;
    IECENTRO_CUSTO_ID: TdxImageEdit;
    CHKIS_NF: TdxCheckEdit;
    PNLINFADCAD: TPanel;
    DSINFADCAD: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    DPINFADCAD: TdxDockPanel;
    EMINFADCAD: TdxMemo;
    IEBANCO_ID: TdxImageEdit;
    LABANCO_ID: TLabel;
    EDBANCO_AG: TdxEdit;
    LABANCO_AG: TLabel;
    EDBANCO_CC: TdxEdit;
    LABANCO_CC: TLabel;
    CHKIS_BOLETO: TdxCheckEdit;
    LAIS_NF: TLabel;
    LAIS_BOLETO: TLabel;
    IESTATUS_ID: TdxImageEdit;
    LASTATUS_ID: TLabel;
    CEDOCUMENTO_PARCELA: TdxCurrencyEdit;
    LADOCUMENTO_PARCELA: TLabel;
    procedure PEDESCRICAOValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTEdicaoExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
    procedure IESTATUS_IDChange(Sender: TObject);
    procedure DEDOCUMENTO_DATA_VENCIMENTOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFIN_PAG_EDI: TFrmFIN_PAG_EDI;

implementation

{$R *.dfm}

procedure TFrmFIN_PAG_EDI.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'FIN_PAG_ADM'; { Eventos }

  { SET GRANT ROMANEIOS }
  REC_SHE_DEF.GDescricao  := 'Financeiro';
  REC_SHE_DEF.GReferencia := 'Pagamentos';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  oUSER(REC_SHE_DEF);
end;

procedure TFrmFIN_PAG_EDI.PEDESCRICAOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  ADescricao: String;
begin
  if PEDESCRICAO.Text = 'Escola' then
  ADescricao := 'Escola / Educação' else

  if PEDESCRICAO.Text = 'Mat p escritório' then
  ADescricao := 'Materiais de Escritório/Consumo' else

  if PEDESCRICAO.Text = 'Monitoramento' then
  ADescricao := 'Mensalidade de monitoramento/vigilância' else

  if PEDESCRICAO.Text = 'Multa' then
  ADescricao := 'Multas Contratuais' else

  if PEDESCRICAO.Text = 'Multas' then
  ADescricao := 'Multas Contratuais' else
  ADescricao := PEDESCRICAO.Text;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.DESCRICAO,PK.CENTRO_CUSTO_ID FROM FIN_PLANO_CONTA AS PK');
    SQL.Add('WHERE  PK.DESCRICAO CONTAINING ''' + ADescricao + '''');
    ExecQuery;

    if not Eof then
    begin
      PEPLANO_CONTA_NO.Text  := Current.Vars[0].AsString;
      IECENTRO_CUSTO_ID.Text := Current.Vars[1].AsString;
    end;  
  end;

  PEDESCRICAO.Modified := False;
end;

procedure TFrmFIN_PAG_EDI.ACTConsultaExecute(Sender: TObject);
begin
  inherited;

  { DESCRIÇÕES }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.DESCRICAO FROM FIN_PAG_ADM AS PK GROUP BY 1 ORDER BY 1');
    ExecQuery;

    while not eof do
    begin
      PEDESCRICAO.Items.Add(Current.Vars[0].AsString);
      next;
    end;
  end;

  { FORNECEDORES }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.FANTASIA FROM CAD_FOR AS PK WHERE CDST = 30 GROUP BY 1 ORDER BY 1');
    ExecQuery;

    while not eof do
    begin
      PECF_NO.Items.Add(Current.Vars[0].AsString);
      next;
    end;
  end;

  { CONTA }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.CONTA_ID,PK.DESCRICAO FROM FIN_CONTA AS PK WHERE PK.CONTA_ID > 0 ORDER BY 2');
    ExecQuery;

    while not eof do
    begin
      IECONTA_ID.Values.Add(Current.Vars[0].AsString);
      IECONTA_ID.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
  end;

  { PLANO DE CONTAS }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.DESCRICAO FROM FIN_PLANO_CONTA AS PK WHERE PK.PLANO_CONTA_ID > 0 GROUP BY 1 ORDER BY 1');
    ExecQuery;

    while not eof do
    begin
      PEPLANO_CONTA_NO.Items.Add(Current.Vars[0].AsString);
      next;
    end;
  end;
  
  { CENTRO DE CUSTO }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.CENTRO_CUSTO_ID,PK.DESCRICAO FROM FIN_CENTRO_CUSTO AS PK WHERE PK.CENTRO_CUSTO_ID > 0 ORDER BY 2');
    ExecQuery;

    while not eof do
    begin
      IECENTRO_CUSTO_ID.Values.Add(Current.Vars[0].AsString);
      IECENTRO_CUSTO_ID.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
  end;
  
  { TIPO DE DOCUMENTO }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_TPG AS PK WHERE PK.ID > 0 ORDER BY 2');
    ExecQuery;

    while not eof do
    begin
      IETIPO_TPG_ID.Values.Add(Current.Vars[0].AsString);
      IETIPO_TPG_ID.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
  end;

  { MEIOS DE PAGAMENTOS }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_MPG AS PK WHERE PK.ID > 0 ORDER BY 2');
    ExecQuery;

    while not eof do
    begin
      IETIPO_MPG_ID.Values.Add(Current.Vars[0].AsString);
      IETIPO_MPG_ID.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
  end;

  { BANCOS }
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.BANCO_ID,PK.DESCRICAO FROM FIN_BANCO AS PK WHERE PK.BANCO_ID > 0 ORDER BY 2');
    ExecQuery;

    while not eof do
    begin
      IEBANCO_ID.Values.Add(Current.Vars[0].AsString);
      IEBANCO_ID.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
  end;
end;

procedure TFrmFIN_PAG_EDI.ACTEdicaoExecute(Sender: TObject);
begin
  inherited;
  IECONTA_ID.Text    := '1';
  IETIPO_TPG_ID.Text := '1';

  DEDOCUMENTO_DATA_EMISSAO.Date := RECParametros.SHE_DATA;
  IESTATUS_ID.Text := '1';

  if REC_SHE_DEF.IDPK > 0 then
  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.* FROM VW_PSQ_FIN_PAG_ADM AS PK');
    SQL.Add('WHERE  PK.PAG_ID = ''' + REC_SHE_DEF.IDPK + '''');
    ExecQuery;

    PEDESCRICAO.Text := Current.ByName('DESCRICAO').AsString;
    PECF_NO.Text := Current.ByName('CF_NO').AsString;

    IECONTA_ID.Text := Current.ByName('CONTA_ID').AsString;
    PEPLANO_CONTA_NO.Text  := Current.ByName('PLANO_CONTA_NO').AsString;
    IECENTRO_CUSTO_ID.Text := Current.ByName('CENTRO_CUSTO_ID').AsString;

    IETIPO_TPG_ID.Text := Current.ByName('TIPO_TPG_ID').AsString;
    IETIPO_MPG_ID.Text := Current.ByName('TIPO_MPG_ID').AsString;

    IEBANCO_ID.Text := Current.ByName('BANCO_ID').AsString;
    EDBANCO_AG.Text := Current.ByName('BANCO_AG').AsString;
    EDBANCO_CC.Text := Current.ByName('BANCO_CC').AsString;

    EDDOCUMENTO.Text := Current.ByName('DOCUMENTO').AsString;
    DEDOCUMENTO_DATA_EMISSAO.Date := Current.ByName('DOCUMENTO_DATA_EMISSAO').AsDateTime;
    DEDOCUMENTO_DATA_VENCIMENTO.Date := Current.ByName('DOCUMENTO_DATA_VENCIMENTO').AsDateTime;
    CEDOCUMENTO_VALOR.Value := Current.ByName('DOCUMENTO_VALOR').AsCurrency;
    CEDOCUMENTO_VALOR_MULTA.Value := Current.ByName('DOCUMENTO_VALOR_JURO').AsCurrency;
    CEDOCUMENTO_VALOR_JURO.Value := Current.ByName('DOCUMENTO_VALOR_MULTA').AsCurrency;

    CHKIS_NF.Checked := (Current.ByName('IS_NF').AsInteger = 1);
    CHKIS_BOLETO.Checked := (Current.ByName('IS_BOLETO').AsInteger = 1);

    EMINFADCAD.Text := Current.ByName('INFADCAD').AsString;
    IESTATUS_ID.Text := Current.ByName('STATUS_ID').AsString;
  end;
end;

procedure TFrmFIN_PAG_EDI.IESTATUS_IDChange(Sender: TObject);
begin
  if IESTATUS_ID.Text = '156' then
  begin
    IESTATUS_ID.Color := $0080FFFF;
    IESTATUS_ID.Font.Color := clWindowText;
  end else

  if IESTATUS_ID.Text = '102' then
  begin
    IESTATUS_ID.Color := $009FFF9F;
    IESTATUS_ID.Font.Color := clWindowText;
  end else

  if IESTATUS_ID.Text = '43' then
  begin
    IESTATUS_ID.Color := $009FFF9F;
    IESTATUS_ID.Font.Color := clHighLightText;
  end else
  begin
    IESTATUS_ID.Color := $00FDF9F4;
    IESTATUS_ID.Font.Color := clWindowText;
  end;
end;

procedure TFrmFIN_PAG_EDI.ACTMPPostExecute(Sender: TObject);
begin
//  inherited;

  PEDESCRICAO.ValidateEdit;
  exit;

  SPEdicao.StoredProcName := 'SP_EDI_FIN_PAG_ADM';
  SPEdicao.Prepare;

  SPEdicao.ParamByName('APAG_ID').Value := REC_SHE_DEF.ID;
  SPEdicao.ParamByName('ADESCRICAO').Value := PEDESCRICAO.Text;
  SPEdicao.ParamByName('AEP_ID').Value := RECParametros.EP_ID;
  SPEdicao.ParamByName('ACF_ID').Value := PECF_NO.Tag;

  SPEdicao.ParamByName('ACONTA_ID').Value := IECONTA_ID.Text;
  SPEdicao.ParamByName('APLANO_CONTA_ID').Value := PEPLANO_CONTA_NO.Tag;
  SPEdicao.ParamByName('ACENTRO_CUSTO_ID').Value := IECENTRO_CUSTO_ID.Text;

  SPEdicao.ParamByName('ATIPO_TPG_ID').Value := IETIPO_TPG_ID.Text;
  SPEdicao.ParamByName('ATIPO_MPG_ID').Value := IETIPO_MPG_ID.Text;

  SPEdicao.ParamByName('ABANCO_ID').Value := IEBANCO_ID.Text;
  SPEdicao.ParamByName('ABANCO_AG').Value := EDBANCO_AG.Text;
  SPEdicao.ParamByName('ABANCO_CC').Value := EDBANCO_CC.Text;

  SPEdicao.ParamByName('ADOCUMENTO').Value := EDDOCUMENTO.Text;
  SPEdicao.ParamByName('ADOCUMENTO_DATA_EMISSAO').Value := DEDOCUMENTO_DATA_EMISSAO.Date;
  SPEdicao.ParamByName('ADOCUMENTO_DATA_VENCIMENTO').Value := DEDOCUMENTO_DATA_VENCIMENTO.Date;
  SPEdicao.ParamByName('ADOCUMENTO_VALOR').Value := CEDOCUMENTO_VALOR.Value;
  SPEdicao.ParamByName('ADOCUMENTO_VALOR_MULTA').Value := CEDOCUMENTO_VALOR_MULTA.Value;
  SPEdicao.ParamByName('ADOCUMENTO_VALOR_JURO').Value := CEDOCUMENTO_VALOR_JURO.Value;
  SPEdicao.ParamByName('ADOCUMENTO_PARCELA').Value := CEDOCUMENTO_PARCELA.Value;

  SPEdicao.ParamByName('AIS_BOLETO').Value := IFThen(CHKIS_BOLETO.Checked,1,0);
  SPEdicao.ParamByName('AIS_NF').Value := IFThen(CHKIS_NF.Checked,1,0);

  SPEdicao.ParamByName('ASTATUS_ID').Value := IESTATUS_ID.Text;
  SPEdicao.ParamByName('AINFADCAD').Value := EMINFADCAD.Text;

  SPEdicao.ParamByName('ACREATED_LG_ID').Value:= RECUsuarios.ID;
  SPEdicao.ParamByName('AIP').Value := RECParametros.IP;
  SPEdicao.ParamByName('AHOST').Value := RECParametros.HOST;

  SPEdicao.ExecProc;
  SPEdicao.UnPrepare;
end;

procedure TFrmFIN_PAG_EDI.DEDOCUMENTO_DATA_VENCIMENTOValidate(
  Sender: TObject; var ErrorText: String; var Accept: Boolean);
begin
  if IESTATUS_ID.Text <> '102' then
  if DEDOCUMENTO_DATA_VENCIMENTO.Date < RECParametros.SHE_DATA then
  IESTATUS_ID.Text := '1' else

  if DEDOCUMENTO_DATA_VENCIMENTO.Date > RECParametros.SHE_DATA then
  IESTATUS_ID.Text := '156';
end;

end.
