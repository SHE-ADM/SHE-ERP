unit pcad_usu;

interface

uses
  oPrincipal, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
   ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, IBEvents, dxExEdtr,
  StdCtrls, rxSpeedbar;

type
  Tfrmcad_usu = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroUSU_DCAD: TDateField;
    cadastroUSU_DULT: TDateTimeField;
    cadastroUSU_DUSU: TIBStringField;
    cadastroUSU_NOME: TIBStringField;
    cadastroUSU_DIAS: TSmallintField;
    cadastroUSU_PASS: TIBStringField;
    cadastroUSU_STA: TIBStringField;
    dbgConsultaUSU_DCAD: TdxDBGridDateColumn;
    dbgConsultaUSU_DULT: TdxDBGridDateColumn;
    dbgConsultaUSU_DUSU: TdxDBGridMaskColumn;
    cadastroUSU_ADM: TIBStringField;
    dbgConsultaUSU_DIAS: TdxDBGridMaskColumn;
    dbgConsultaUSU_ADM: TdxDBGridMaskColumn;
    dbgConsultaUSU_NOME: TdxDBGridMaskColumn;
    cadastroUSU_CUSU: TIntegerField;
    cadastroUSU_PPRI: TIBStringField;
    cadastroUSU_PSEC: TIBStringField;
    cadastroUSU_MENU: TIBStringField;
    cadastroUSU_TUSU: TSmallintField;
    cadastroUSU_CDEP: TIntegerField;
    cadastroPAR_FANT: TIBStringField;
    dbgConsultaPAR_FANT: TdxDBGridMaskColumn;
    cadastroUSU_STAV: TIBStringField;
    cadastroUSU_STAT: TStringField;
    dbgConsultaUSU_STAT: TdxDBGridColumn;
    dbgConsultaUSU_CUSU: TdxDBGridMaskColumn;
    cadastroUSU_DESC: TSmallintField;
    dbgConsultaUSU_DESC: TdxDBGridMaskColumn;
    cadastroUSU_RELA: TIBStringField;
    procedure siINCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure siALTClick(Sender: TObject);
    procedure siDELClick(Sender: TObject);
    procedure cadastroCalcFields(DataSet: TDataSet);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siCLONEClick(Sender: TObject);
    procedure siSENClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AjustaForm;
  public
    { Public declarations }
  end;

var
  frmcad_usu: Tfrmcad_usu;

implementation

uses pcad_usu_edi, uPrincipal, pcad_usu_clo;

{$R *.dfm}

procedure Tfrmcad_usu.AjustaForm;
begin
  Top  := 50;
  Left := frmprincipal.pnCustomize.Left+frmprincipal.pnCustomize.Width+7;

  if Top <= 50 then
  Height := frmprincipal.pnCustomize.Height-16 else
  Height := frmprincipal.pnCustomize.Height-20;

  if (Screen.Width > 1024) and (Screen.Width <= 1280) then
  dbgConsultaUSU_NOME.Width := 200;

  if (Screen.Width <= 1024) or (Screen.Width < 1280) then
  begin
    Left    := 7;
    Top     := 50;
    Width   := Screen.Width-15;

    if Top <= 50 then
       Height := frmprincipal.pnCustomize.Height+3
    else
       Height := frmprincipal.pnCustomize.Height+4;
  end;
end;

procedure Tfrmcad_usu.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_USU';

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT   CAD_USU.*,PAR_SIS.PAR_FANT FROM CAD_USU');
    SQL.Add('LEFT     OUTER JOIN PAR_SIS ON CAD_USU.USU_CDEP = PAR_SIS.ID');
    SQL.Add('WHERE    CAD_USU.USU_STA  = ''0''');
    SQL.Add('ORDER BY CAD_USU.USU_DUSU');
  end;

  inherited;
  AjustaForm;  
end;

procedure Tfrmcad_usu.siINCClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Utilitários';
  PCampo[2] := 'Usuários';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_usu_edi := TFrmcad_usu_edi.Create(self);
  try
    frmcad_usu_edi.Tag := frmcad_usu.Tag;
    frmcad_usu_edi.ShowModal;
  finally
    if frmcad_usu_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_usu_edi);
    frmcad_usu_edi.Free;
  end;
end;

procedure Tfrmcad_usu.siALTClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Utilitários';
  PCampo[2] := 'Usuários';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_usu_edi := TFrmcad_usu_edi.Create(self);
  try
    frmcad_usu_edi.Tag := frmcad_usu.Tag;
    frmcad_usu_edi.ShowModal;
  finally
    if frmcad_usu_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_usu_edi);
    frmcad_usu_edi.Free;
  end;
end;

procedure Tfrmcad_usu.siDELClick(Sender: TObject);
begin
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM CAI_LAF');
    SQL.Add('WHERE  CAI_CUSU = '''+cadastroUSU_CUSU.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o usuário '+cadastroUSU_DUSU.AsString+' !'+#13+'Usuário está comprometido com movimentação de caixa.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroUSU_CUSU.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o usuário '+cadastroUSU_DUSU.AsString+' !'+#13+'Usuário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_002');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroUSU_CUSU.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o usuário '+cadastroUSU_DUSU.AsString+' !'+#13+'Usuário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_003');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroUSU_CUSU.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o usuário '+cadastroUSU_DUSU.AsString+' !'+#13+'Usuário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_004');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroUSU_CUSU.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o usuário '+cadastroUSU_DUSU.AsString+' !'+#13+'Usuário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_005');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroUSU_CUSU.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o usuário '+cadastroUSU_DUSU.AsString+' !'+#13+'Usuário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_006');
    SQL.Add('WHERE  ROM_CVEN = '''+cadastroUSU_CUSU.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o usuário '+cadastroUSU_DUSU.AsString+' !'+#13+'Usuário está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cadastroUSU_STA.Value = '1' then
    begin
      if oyesno(handle,'Confirma a exclusão do usuário '+cadastroUSU_DUSU.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_USU_ADM');
      SQL.Add('WHERE  USU_CUSU = '''+cadastroID.AsString+'''');
      ExecSQL;
      
      SQL.Clear;
      SQL.Add('DELETE FROM CAD_USU');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Usuários','Cadastro de usuários','Exclusão' ,cadastroID.AsString,cadastroID.AsString,cadastroUSU_DUSU.AsString,'','');
    end
    else
    begin
      if oyesno(handle,'Enviar para a lixeira o usuário '+cadastroUSU_DUSU.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('UPDATE CAD_USU');
      SQL.Add('SET    USU_STA = ''1''');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Usuários','Cadastro de usuários','Lixeira' ,cadastroID.AsString,cadastroID.AsString,cadastroUSU_DUSU.AsString,'','');
    end;
  end;
  ExecuteEvent;
end;

procedure Tfrmcad_usu.cadastroCalcFields(DataSet: TDataSet);
begin
  if cadastroUSU_STAV.AsString = 'A' then
     cadastroUSU_STAT.Value := 'ATIVO'
  else if cadastroUSU_STAV.AsString = 'I' then
     cadastroUSU_STAT.Value := 'INATIVO'
  else if cadastroUSU_STAV.AsString = 'S' then
     cadastroUSU_STAT.Value := 'SUSPENSO';
end;

procedure Tfrmcad_usu.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  var Value: Variant;
begin
  if not ASelected then
  begin
    Value := ANode.Values[9];

    AFont.Color := clBlack;
    if dbgconsulta.Tag = 0 then
       AColor := clWhite
    else
       AColor := clBtnface;

    if not VarIsNull(Value) then
    begin
      if Value <> 'ATIVO' then
      begin
         AFont.Color := clwhite;
         AColor      := clRed;
      end;
    end;
  end;
end;

procedure Tfrmcad_usu.siCLONEClick(Sender: TObject);
begin
  frmcad_usu_clo := tfrmcad_usu_clo.create(self);
  try
    frmcad_usu_clo.showmodal;
  finally
    freeAndNil(frmcad_usu_clo);
    frmcad_usu_clo.free;
  end;
end;

procedure Tfrmcad_usu.siSENClick(Sender: TObject);
begin
  if oyesno(handle,'Confirma mudança da senha atual para a senha padrão ?'+#13+
                  'Usuário: '+cadastroUSU_DUSU.AsString) = mrno then
     abort;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CAD_USU');
    SQL.Add('SET    USU_PASS = ''123''');
    SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
    ExecSQL;
    IBTra.CommitRetaining;
  end;

  ShowMessage('Senha padrão 123 gravada com sucesso para o usuário '+cadastroUSU_DUSU.AsString);
end;

procedure Tfrmcad_usu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmcad_usu <> nil then
  begin
    frmcad_usu.Release;
    frmcad_usu := nil;
  end;
end;

end.
