unit pcad_rep;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, rxSpeedbar;

type
  Tfrmcad_rep = class(Tfrmpadr2)
    Label8: TLabel;
    cadastroID: TIntegerField;
    cadastroREP_FANT: TIBStringField;
    cadastroREP_RAZA: TIBStringField;
    cadastroREP_CNPJ: TIBStringField;
    cadastroREP_CPF: TIBStringField;
    cadastroREP_CRED: TIBBCDField;
    cadastroREP_CID: TIBStringField;
    cadastroREP_BAI: TIBStringField;
    cadastroREP_LOGR: TIBStringField;
    cadastroREP_ESTA: TIBStringField;
    cadastroREP_STA: TIBStringField;
    cadastroREP_STAV: TIBStringField;
    cadastroREP_DPAG: TIBStringField;
    cadastroREP_OBSO: TMemoField;
    cadastroREP_VDSC: TIBBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    dbgConsultaREP_RAZA: TdxDBGridMaskColumn;
    dbgConsultaREP_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaREP_CPF: TdxDBGridMaskColumn;
    dbgConsultaREP_CID: TdxDBGridMaskColumn;
    dbgConsultaREP_BAI: TdxDBGridMaskColumn;
    dbgConsultaREP_LOGR: TdxDBGridMaskColumn;
    dbgConsultaREP_ESTA: TdxDBGridMaskColumn;
    dbgConsultaREP_STAV: TdxDBGridMaskColumn;
    cadastroREP_COMI: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure siPRNClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SIMEAppendClick(Sender: TObject);
    procedure SIMEEditClick(Sender: TObject);
    procedure SIMEDeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_rep: Tfrmcad_rep;

implementation

uses uPrincipal, pcad_rep_edi, prelatorio_geral;

{$R *.dfm}

procedure Tfrmcad_rep.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_REP';
  inherited;
  
  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,REP_FANT,REP_RAZA,REP_CNPJ,REP_CPF,REP_CRED,REP_CID,REP_BAI,REP_LOGR,REP_ESTA,REP_STA,REP_STAV,REP_DPAG,REP_OBSO,REP_VDSC,REP_COMI');
    SQL.Add('FROM     CAD_REP');
    SQL.Add('ORDER BY REP_FANT');
    Prepare;
  end;
end;

procedure Tfrmcad_rep.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_rep := Nil;
end;

procedure Tfrmcad_rep.siPRNClick(Sender: TObject);
begin
  frmrelatorio_geral := TFrmrelatorio_geral.Create(self);
  try
    frmrelatorio_geral.tsCAD_REP.TabVisible := true;
    frmrelatorio_geral.pcMAIN.ActivePage    := frmrelatorio_geral.tsCAD_REP;

    with consulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT   REP_FANT FROM CAD_REP');
      SQL.Add('GROUP BY REP_FANT');
      SQL.Add('ORDER BY REP_FANT');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_REP_DREP.Values.Add(fields[0].AsString);
        frmrelatorio_geral.cbCAD_REP_DREP.Descriptions.Add(fields[0].AsString);
        next;
      end;

      SQL.Clear;
      SQL.Add('SELECT   REP_CID FROM CAD_REP');
      SQL.Add('GROUP BY REP_CID');
      SQL.Add('ORDER BY REP_CID');
      Open;

      while not eof do
      begin
        frmrelatorio_geral.cbCAD_REP_CID.Items.Add(fields[0].AsString);
        next;
      end;
    end;
    frmrelatorio_geral.ShowModal;
  finally
    freeAndNil(frmrelatorio_geral);
    frmrelatorio_geral.Free;
  end;
end;

procedure Tfrmcad_rep.SIMEAppendClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Representantes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_REP_edi := Tfrmcad_REP_edi.Create(self);
  try
    frmcad_rep_edi.Tag := frmcad_rep.Tag;
    frmcad_rep_edi.ShowModal;
  finally
    ExecuteEvent;
    freeAndNil(frmcad_rep_edi);
    frmcad_rep_edi.Free;
  end;
end;

procedure Tfrmcad_rep.SIMEEditClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Representantes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  FRMCAD_REP_EDI := TFRMCAD_REP_EDI.Create(Self);
  try
    frmcad_rep_edi.Tag := frmcad_rep.Tag;
    frmcad_rep_edi.ShowModal;
  finally
    if frmcad_rep_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_rep_edi);
    frmcad_rep_edi.Free;
  end;
end;

procedure Tfrmcad_rep.SIMEDeleteClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Representantes';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB');
    SQL.Add('WHERE  ROM_CREP = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o representante '+cadastroREP_FANT.AsString+' !'+#13+'representante está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_002');
    SQL.Add('WHERE  ROM_CREP = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o representante '+cadastroREP_FANT.AsString+' !'+#13+'representante está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_003');
    SQL.Add('WHERE  ROM_CREP = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o representante '+cadastroREP_FANT.AsString+' !'+#13+'representante está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_004');
    SQL.Add('WHERE  ROM_CREP = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o representante '+cadastroREP_FANT.AsString+' !'+#13+'representante está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_005');
    SQL.Add('WHERE  ROM_CREP = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o representante '+cadastroREP_FANT.AsString+' !'+#13+'representante está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    SQL.Clear;
    SQL.Add('SELECT ID FROM PED_VEN_CAB_006');
    SQL.Add('WHERE  ROM_CREP = '''+cadastroID.AsString+'''');
    Open;

    if not fields[0].IsNull then
    begin
      messageBox(handle,PChar('Não é possível excluir o representante '+cadastroREP_FANT.AsString+' !'+#13+'representante está comprometido com algumas vendas realizadas.'),PChar(Self.Caption),MB_ICONERROR+MB_OK);
      Abort;
    end;

    if cadastroREP_STA.Value = '1' then
    begin
      if oYesNo(handle,'Confirma a exclusão do representante '+cadastroREP_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_REP');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Representantes','Cadastro de Representantes','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroREP_FANT.AsString),'','');
    end
    else
    begin
      if oYesNo(handle,'Enviar para a lixeira o representante '+cadastroREP_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('UPDATE CAD_REP');
      SQL.Add('SET    REP_STA = ''1''');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Representantes','Cadastro de Representantes','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroREP_FANT.AsString),'','');
    end;
  end;
  ExecuteEvent;
end;

procedure Tfrmcad_rep.dbgConsultaCustomDrawCell(Sender: TObject;
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
      if Value = 'I' then
      begin
         AFont.Color := clwhite;
         AColor      := clRed;
      end;
    end;

    Value := ANode.Values[4];
    if (Value = '') or (VarIsNull(Value)) then
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;
    end
    else
    begin
      AColor      := $00BEEFF8;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure Tfrmcad_rep.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsultaREP_FANT.Field.FocusControl;
end;

end.


