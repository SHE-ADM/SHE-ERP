unit ptab_nat;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppadr2, ImgList, IBStoredProc, IBDatabase,
  DB, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, ExtCtrls, dxDBTLCl, dxGrClms, IBEvents, dxExEdtr,
  StdCtrls, rxSpeedbar;

type
  Tfrmtab_nat = class(Tfrmpadr2)
    cadastroID: TIntegerField;
    cadastroNAT_CNAT: TIBStringField;
    cadastroNAT_DNAT: TIBStringField;
    cadastroNAT_OPER: TIBStringField;
    cadastroNAT_BIPI: TIBStringField;
    cadastroNAT_MATE: TIBStringField;
    cadastroNAT_TIPO: TIBStringField;
    cadastroNAT_CSTI: TIBStringField;
    cadastroNAT_PIPP: TIBBCDField;
    cadastroNAT_CSTP: TIBStringField;
    cadastroNAT_PIPC: TIBBCDField;
    cadastroNAT_CSTC: TIBStringField;
    cadastroNAT_STA: TIBStringField;
    dbgConsultaNAT_CNAT: TdxDBGridMaskColumn;
    dbgConsultaNAT_DNAT: TdxDBGridMaskColumn;
    dbgConsultaNAT_OPER: TdxDBGridMaskColumn;
    dbgConsultaNAT_TIPO: TdxDBGridMaskColumn;
    cadastroNAT_CCST: TIBStringField;
    cadastroNAT_PENF: TIBBCDField;
    cadastroNAT_FRET: TIBStringField;
    cadastroNAT_OBSE: TMemoField;
    cadastroNAT_CSTS: TIBStringField;
    cadastroNAT_CSTA: TIBStringField;
    dbgConsultaNAT_CSTI: TdxDBGridMaskColumn;
    dbgConsultaNAT_PIPP: TdxDBGridMaskColumn;
    dbgConsultaNAT_CSTP: TdxDBGridMaskColumn;
    dbgConsultaNAT_PIPC: TdxDBGridMaskColumn;
    dbgConsultaNAT_CSTC: TdxDBGridMaskColumn;
    dbgConsultaNAT_CCST: TdxDBGridMaskColumn;
    dbgConsultaNAT_CSTS: TdxDBGridMaskColumn;
    dbgConsultaNAT_CSTA: TdxDBGridMaskColumn;
    cadastroNAT_INDT: TIBStringField;
    cadastroNAT_CFOP: TIBStringField;
    dbgConsultaNAT_CFOP: TdxDBGridMaskColumn;
    CadastroCBENEF: TIBStringField;
    CadastroCSTIS: TIBStringField;
    CadastroCCLASSTRIBIS: TIBStringField;
    CadastroPIS: TIBBCDField;
    CadastroPISESPEC: TIBBCDField;
    CadastroCSTCBS: TIBStringField;
    CadastroCCLASSTRIBCBS: TIBStringField;
    CadastroPCBS: TIBBCDField;
    CadastroINDDOACAO: TIBStringField;
    DBGConsultaCBENEF: TdxDBGridMaskColumn;
    DBGConsultaCSTIS: TdxDBGridMaskColumn;
    DBGConsultaCCLASSTRIBIS: TdxDBGridMaskColumn;
    DBGConsultaPIS: TdxDBGridCurrencyColumn;
    DBGConsultaPISESPEC: TdxDBGridCurrencyColumn;
    DBGConsultaCSTCBS: TdxDBGridMaskColumn;
    DBGConsultaCCLASSTRIBCBS: TdxDBGridMaskColumn;
    DBGConsultaPCBS: TdxDBGridCurrencyColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SIMEAppendClick(Sender: TObject);
    procedure SIMEEditClick(Sender: TObject);
    procedure SIMEDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtab_nat: Tfrmtab_nat;

implementation

uses uPrincipal, ptab_nat_edi, pcad_cli;

{$R *.dfm}

procedure Tfrmtab_nat.FormCreate(Sender: TObject);
begin
  cEvent := 'TAB_NAT';
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM TAB_NAT');
    SQL.Add('WHERE    NAT_STA = ''0''');
    SQL.Add('ORDER BY NAT_CNAT');
    Prepare;
  end;
end;

procedure Tfrmtab_nat.FormDestroy(Sender: TObject);
begin
  inherited;
  frmtab_nat := Nil;
end;

procedure Tfrmtab_nat.SIMEAppendClick(Sender: TObject);
begin
  PCampo[0] := 'USU_NOVO';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Naturezas de Operações';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmtab_nat_edi := Tfrmtab_nat_edi.Create(self);
  try
    frmtab_nat_edi.Tag := 0;
    frmtab_nat_edi.ShowModal;
  finally
    if frmtab_nat_edi.editado then
       ExecuteEvent;
    freeAndNil(frmtab_nat_edi);
    frmtab_nat_edi.Free;
  end;
end;

procedure Tfrmtab_nat.SIMEEditClick(Sender: TObject);
begin
  PCampo[0] := 'USU_EDIT';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Naturezas de Operações';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  frmtab_nat_edi := Tfrmtab_nat_edi.Create(self);
  try
    frmtab_nat_edi.Tag := 1;
    frmtab_nat_edi.ShowModal;
  finally
    if frmtab_nat_edi.editado then
       ExecuteEvent;
    freeAndNil(frmtab_nat_edi);
    frmtab_nat_edi.Free;
  end;
end;

procedure Tfrmtab_nat.SIMEDeleteClick(Sender: TObject);
begin
  PCampo[0] := 'USU_DELE';
  PCampo[1] := 'Tabelas';
  PCampo[2] := 'Naturezas de Operações';
  PCampo[3] := 'Permissões Gerais';
  inherited;

  with consulta do
  begin
    if cadastroNAT_STA.Value = '1' then
    begin
      if oYesNo(handle,'Confirma a exclusão do natureza de operação '+cadastroNAT_CNAT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('DELETE FROM TAB_NAT');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Notas Fiscais','Tabela de Natureza de Operações','Exclusão' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroNAT_CNAT.AsString),'','');
    end
    else
    begin
      if oYesNo(handle,'Enviar para a lixeira o natureza de operação '+cadastroNAT_CNAT.AsString+' ?') = mrno then
         abort;

      SQL.Clear;
      SQL.Add('UPDATE TAB_NAT');
      SQL.Add('SET    NAT_STA = ''1''');
      SQL.Add('WHERE  ID = '''+cadastroID.AsString+'''');
      ExecSQL;
      frmprincipal.Log_Eve('Notas Fiscais','Tabela de Natureza de Operações','Lixeira' ,cadastroID.AsString,cadastroID.AsString,LOWERCASE(cadastroNAT_CNAT.AsString),'','');
    end;
  end;
  ExecuteEvent;
end;

end.
