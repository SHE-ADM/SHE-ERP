unit pCAD_PRO_EST_DEL;

interface

uses
  oPrincipal, pSHE_DEF_EDI,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, dxCntner, ImgList, IBEvents,
  IBStoredProc, DB, IBCustomDataSet, IBQuery, IBSQL, IBDatabase, ActnList,
  dxBar, dxBarExtItems, dxDockControl, dxDockPanel, dxPageControl,
  ExtCtrls, cxControls, dxStatusBar, dxEditor, dxEdLib, StdCtrls, dxExEdtr;

type
  TFrmCAD_PRO_EST_DEL = class(TFrmSHE_DEF_EDI)
    PNLCDRO: TPanel;
    SHCDRO: TShape;
    LACDRO: TLabel;
    PNLSKU: TPanel;
    SHSKU: TShape;
    LASKU: TLabel;
    EDSKU: TdxEdit;
    PNLCOL_ID: TPanel;
    SHCOL_ID: TShape;
    LACOL_ID: TLabel;
    PNLCDET_INI: TPanel;
    Shape3: TShape;
    LACDET_INI: TLabel;
    PNLEP_ID: TPanel;
    SHEP_ID: TShape;
    LAEP_ID: TLabel;
    PNLGRP_ID: TPanel;
    SHGRP_ID: TShape;
    LAGRP_ID: TLabel;
    PNLCAT_ID: TPanel;
    SHCAT_ID: TShape;
    LACAT_ID: TLabel;
    PNLSGP_ID: TPanel;
    SHSGP_ID: TShape;
    LASGP_ID: TLabel;
    PNLSEG_ID: TPanel;
    SHSEG_ID: TShape;
    LASEG_ID: TLabel;
    PNLNCM: TPanel;
    SHNCM: TShape;
    LANCM: TLabel;
    EDNCM: TdxEdit;
    PNLSCT_ID: TPanel;
    SHSCT_ID: TShape;
    LASCT_ID: TLabel;
    IEEP_ID: TdxImageEdit;
    CECDRO: TdxCurrencyEdit;
    PNLARTIGO: TPanel;
    SHARTIGO: TShape;
    LAARTIGO: TLabel;
    EDARTIGO: TdxEdit;
    PNLCDET_FIM: TPanel;
    Shape11: TShape;
    LACDET_FIM: TLabel;
    CECDET_INI: TdxCurrencyEdit;
    CECDET_FIM: TdxCurrencyEdit;
    IECOL_ID: TdxImageEdit;
    IESEG_ID: TdxImageEdit;
    IEGRP_ID: TdxImageEdit;
    IESGP_ID: TdxImageEdit;
    IECAT_ID: TdxImageEdit;
    IESCT_ID: TdxImageEdit;
    PNLCDTP: TPanel;
    SHCDTP: TShape;
    LACDTP: TLabel;
    IECDTP: TdxImageEdit;
    procedure FormCreate(Sender: TObject);
    procedure IEEP_IDChange(Sender: TObject);
    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCAD_PRO_EST_DEL: TFrmCAD_PRO_EST_DEL;

implementation

{$R *.dfm}

procedure TFrmCAD_PRO_EST_DEL.FormCreate(Sender: TObject);
begin
  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_PRO_EST'; { Eventos }

  { Grant }
  REC_SHE_DEF.GDescricao  := 'Estoque';
  REC_SHE_DEF.GReferencia := 'Produtos';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  inherited;

  IEEP_ID.Enabled    := (REC_SHE_DEF.GAdmin);
  IECDTP.Enabled     := (REC_SHE_DEF.GAdmin);
  CECDRO.Enabled     := (REC_SHE_DEF.GAdmin);
  CECDET_INI.Enabled := (REC_SHE_DEF.GAdmin);
  CECDET_FIM.Enabled := (REC_SHE_DEF.GAdmin);
  EDARTIGO.Enabled   := (REC_SHE_DEF.GAdmin);
  EDSKU.Enabled      := (REC_SHE_DEF.GAdmin);
  EDNCM.Enabled      := (REC_SHE_DEF.GAdmin);
  IECOL_ID.Enabled   := (REC_SHE_DEF.GAdmin);
  IESEG_ID.Enabled   := (REC_SHE_DEF.GAdmin);
  IEGRP_ID.Enabled   := (REC_SHE_DEF.GAdmin);
  IESGP_ID.Enabled   := (REC_SHE_DEF.GAdmin);
  IECAT_ID.Enabled   := (REC_SHE_DEF.GAdmin);
  IESCT_ID.Enabled   := (REC_SHE_DEF.GAdmin);

  if REC_SHE_DEF.GCancel then
  begin
    CECDRO.Enabled     := True;
    CECDET_INI.Enabled := True;
    CECDET_FIM.Enabled := True;
  end;
end;

procedure TFrmCAD_PRO_EST_DEL.IEEP_IDChange(Sender: TObject);
begin
  REC_SHE_DEF.Editing := True;
end;

procedure TFrmCAD_PRO_EST_DEL.ACTConsultaExecute(Sender: TObject);
begin
  inherited;

  with SQLConsulta do
  begin
    { Empresas }
    Close;
    SQL.Clear;
    SQL.Add('SELECT   PK.EP_ID,FK.FANTASIA');
    SQL.Add('FROM     TAB_PAR_SIS_EST_LOG AS PK');
    SQL.Add('JOIN     TAB_PAR_SIS         AS FK ON (FK.ID = PK.EP_ID)');
    SQL.Add('WHERE    PK.EP_LG = ''' + RECParametros.EP_ID + '''');
    SQL.Add('ORDER BY PK.EP_LG');
    ExecQuery;
    while not eof do
    begin
      IEEP_ID.Descriptions.Add(Current.Vars[1].AsString);
      IEEP_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Tipo de Estoque }
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID,PK.DESCRICAO FROM TAB_TPO_EST AS PK WHERE PK.CDST = 30 AND PK.EST_CDTP = 1 ORDER BY PK.DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IECDTP.Values.Add(Current.Vars[0].AsString);
      IECDTP.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;

    { Coleções }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_COL WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IECOL_ID.Descriptions.Add(Current.Vars[1].AsString);
      IECOL_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Segmentos }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SEG WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IESEG_ID.Descriptions.Add(Current.Vars[1].AsString);
      IESEG_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Grupos }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_GRP WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IEGRP_ID.Descriptions.Add(Current.Vars[1].AsString);
      IEGRP_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Sub Grupos }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SGP WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IESGP_ID.Descriptions.Add(Current.Vars[1].AsString);
      IESGP_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Categorias }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_CAT WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IECAT_ID.Descriptions.Add(Current.Vars[1].AsString);
      IECAT_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    { Sub Categorias }
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,DESCRICAO FROM TAB_SCT WHERE CDST = 30 ORDER BY DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IESCT_ID.Descriptions.Add(Current.Vars[1].AsString);
      IESCT_ID.Values.Add(Current.Vars[0].AsString);
      next;
    end;
  end;

end;

procedure TFrmCAD_PRO_EST_DEL.ACTMPPostExecute(Sender: TObject);
var
  i: word;
  RNRecNo: Integer;
begin
  RNRecNo := 0;
  inherited;

  if (CECDRO.Value     = 0) and
     (CECDET_INI.Value = 0) and
     (CECDET_FIM.Value = 0) and

     (EDSKU.Text    = EmptyStr) and
     (EDArtigo.Text = EmptyStr) and
     (EDNCM.Text    = EmptyStr) and

     (IECOL_ID.Text = '0') and
     (IESEG_ID.Text = '0') and

     (IEGRP_ID.Text = '0') and
     (IESGP_ID.Text = '0') and

     (IECAT_ID.Text = '0') and
     (IESCT_ID.Text = '0') then
  oException(Nil,'Nenhum filtro selecionado para pesquisa !');

  if CECDRO.Value > 0 then
  if oYesNo(Application.Handle,'Tem certeza que deseja cancelar todo o romaneio nº ' + CECDRO.Text) = mrNo then
  Abort;
  
  try
    oOTransact(TEdicao);

    SPEdicao.Close;
    SPEdicao.StoredProcName := 'SP_CAD_PRO_EST_LAN_DEL';
    SPEdicao.Prepare;

    for i := 0 to SPEdicao.ParamCount - 1 do
    SPEdicao.Params[i].Value := Null;

    SPEdicao.ParamByName('AEP_LG').Value := RECParametros.EP_ID;
    SPEdicao.ParamByName('AEP_ID').Value := IEEP_ID.Text;
    SPEdicao.ParamByName('ACDTP' ).Value := IECDTP.Text;

    SPEdicao.ParamByName('ASKU'   ).Value := EDSKU.Text;
    SPEdicao.ParamByName('AARTIGO').Value := EDARTIGO.Text;
    SPEdicao.ParamByName('ANCM'   ).Value := EDNCM.Text;

    SPEdicao.ParamByName('ACDRO'    ).Value := CECDRO.Value;
    SPEdicao.ParamByName('ACDET_INI').Value := CECDET_INI.Value;
    SPEdicao.ParamByName('ACDET_FIM').Value := CECDET_FIM.Value;

    SPEdicao.ParamByName('ACOL_ID').Value := IECOL_ID.Text;
    SPEdicao.ParamByName('ASEG_ID').Value := IESEG_ID.Text;
    SPEdicao.ParamByName('AGRP_ID').Value := IEGRP_ID.Text;
    SPEdicao.ParamByName('ASGP_ID').Value := IESGP_ID.Text;
    SPEdicao.ParamByName('ACAT_ID').Value := IECAT_ID.Text;
    SPEdicao.ParamByName('ASCT_ID').Value := IESCT_ID.Text;
    SPEdicao.ExecProc;

    RNRecNo := SPEdicao.ParamByName('RNRecNo').Value;
  except
    on E: Exception do
    begin
      oCTransact(TEdicao,ltRollback);
      oException(Nil,'Falha ao tentar cancelar estoque !' + #13 +
                     'Favor entrar em contato com o administrador do sistema.' + #13 + #13 +
                      oFBException(E.Message));
    end;
  end;

  if RNRecNo = 0 then
  oErro(Application.Handle,'Nenhum lançamento encontrado para cancelamento !') else

  case messageBox(handle,PChar(INTTOSTR(RNRecNo)  + ' registro(s) encontrado(s) !' + #13 +
                        'Confirma Exclusão ?'),
                         PChar(Caption),MB_ICONQUESTION+MB_YESNOCANCEL) of

       mrYes   : begin
                   oCTransact(TEdicao);
                   ACTEveExecute.Execute;
                 end;

       mrCancel,
       mrNo    : begin
                   oCTransact(TEdicao,ltRollback);
                   Abort;
                 end;
  end;

  REC_SHE_DEF.Editing := False;
  Close;
end;

end.



