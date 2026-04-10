unit pcad_tra;

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
  Tfrmcad_tra = class(Tfrmpadr2)
    Label8: TLabel;
    cadastroID: TIntegerField;
    cadastroTRA_FANT: TIBStringField;
    cadastroTRA_RAZA: TIBStringField;
    cadastroTRA_CNPJ: TIBStringField;
    cadastroTRA_CPF: TIBStringField;
    cadastroTRA_CRED: TIBBCDField;
    cadastroTRA_CID: TIBStringField;
    cadastroTRA_BAI: TIBStringField;
    cadastroTRA_LOGR: TIBStringField;
    cadastroTRA_ESTA: TIBStringField;
    cadastroTRA_STA: TIBStringField;
    cadastroTRA_STAV: TIBStringField;
    cadastroTRA_DPAG: TIBStringField;
    cadastroTRA_OBSO: TMemoField;
    cadastroTRA_VDSC: TIBBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaTRA_FANT: TdxDBGridMaskColumn;
    dbgConsultaTRA_RAZA: TdxDBGridMaskColumn;
    dbgConsultaTRA_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaTRA_CPF: TdxDBGridMaskColumn;
    dbgConsultaTRA_CID: TdxDBGridMaskColumn;
    dbgConsultaTRA_BAI: TdxDBGridMaskColumn;
    dbgConsultaTRA_LOGR: TdxDBGridMaskColumn;
    dbgConsultaTRA_ESTA: TdxDBGridMaskColumn;
    dbgConsultaTRA_STAV: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
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
  frmcad_tra: Tfrmcad_tra;

implementation

uses uPrincipal, pcad_tra_edi, prelatorio_geral;

{$R *.dfm}

procedure Tfrmcad_tra.FormCreate(Sender: TObject);
begin
  cEvent := 'CAD_TRA';
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT   ID,TRA_FANT,TRA_RAZA,TRA_CNPJ,TRA_CPF,TRA_CRED,TRA_CID,TRA_BAI,TRA_LOGR,TRA_ESTA,TRA_STA,TRA_STAV,TRA_DPAG,TRA_OBSO,TRA_VDSC');
    SQL.Add('FROM     CAD_TRA');
    SQL.Add('ORDER BY TRA_FANT');
    Prepare;
  end;
end;

procedure Tfrmcad_tra.FormDestroy(Sender: TObject);
begin
  inherited;
  frmcad_tra := Nil;
end;

procedure Tfrmcad_tra.SIMEAppendClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Transportadoras';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmcad_TRA_edi := Tfrmcad_TRA_edi.Create(self);
  try
    frmcad_TRA_edi.Tag := 0;
    frmcad_TRA_edi.ShowModal;
  finally
    ExecuteEvent;
    freeAndNil(frmcad_TRA_edi);
    frmcad_TRA_edi.Free;
  end;
end;

procedure Tfrmcad_tra.SIMEEditClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Transportadoras';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  FRMCAD_TRA_EDI := TFRMCAD_TRA_EDI.Create(Self);
  try
    frmcad_TRA_edi.Tag := 1;
    frmcad_TRA_edi.ShowModal;
  finally
    if frmcad_TRA_edi.editado then
       ExecuteEvent;
    freeAndNil(frmcad_TRA_edi);
    frmcad_TRA_edi.Free;
  end;
end;

procedure Tfrmcad_tra.SIMEDeleteClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Transportadoras';
  PCampo[2] := 'Cadastro';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    if cadastroTRA_STA.Value = '1' then
    begin
      if oYesNo(handle,'Confirma a exclusão do transportador '+cadastroTRA_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('DELETE FROM CAD_TRA');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Transportadoras','Cadastro de Transportadoras','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroTRA_FANT.AsString),'','');
    end
    else
    begin
      if oYesNo(handle,'Enviar para a lixeira o transportador '+cadastroTRA_FANT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('UPDATE CAD_TRA');
      SQL.Add('SET    TRA_STA = ''1''');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Transportadoras','Cadastro de Transportadoras','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroTRA_FANT.AsString),'','');
    end;
  end;
  ExecuteEvent;
end;

procedure Tfrmcad_tra.dbgConsultaCustomDrawCell(Sender: TObject;
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

procedure Tfrmcad_tra.FormActivate(Sender: TObject);
begin
  inherited;
  DBGConsultaTRA_FANT.Field.FocusControl;
end;

end.

