unit uDxValidacaoObrigatorios;

interface

uses
  Classes, Controls, SysUtils,
  dxEdLib, ComCtrls; // ComCtrls para TTabSheet

function ValidarCamposObrigatorios(
  AParent: TWinControl;
  var MsgErro: string
): Boolean;

implementation

// ==========================================================
// Verifica se o componente obrigatório está vazio / inválido
// ==========================================================
function CampoDxObrigatorioVazio(C: TControl): Boolean;
begin
  Result := False;

  if C is TdxCurrencyEdit then
    Result := TdxCurrencyEdit(C).Value = 0

  else if C is TdxImageEdit then
    Result := Trim(TdxImageEdit(C).Text) = ''

  else if C is TdxEdit then
    Result := Trim(TdxEdit(C).Text) = ''

  else if C is TdxDateEdit then
    Result := TdxDateEdit(C).Date = 0

  else if C is TdxPickEdit then
    Result := Trim(TdxPickEdit(C).Text) = ''

  else if C is TdxCheckEdit then
    Result := not TdxCheckEdit(C).Checked;
end;

// ==========================================================
// Nome usado na mensagem de erro
// Prioridade: Hint > Name
// ==========================================================
function NomeCampoParaMensagem(C: TControl): string;
begin
  if Trim(C.Hint) <> '' then
    Result := C.Hint
  else
    Result := C.Name;
end;

// ==========================================================
// Ativa containers (TabSheet, etc.) até o topo
// Necessário para conseguir dar foco corretamente
// ==========================================================
procedure AtivarContainersAteRaiz(C: TControl);
begin
  while Assigned(C.Parent) do
  begin
    if C.Parent is TTabSheet then
      TTabSheet(C.Parent).PageControl.ActivePage :=
        TTabSheet(C.Parent);

    C := C.Parent;
  end;
end;

// ==========================================================
// Função principal de validação
// Tag = 1 => campo obrigatório
// ==========================================================
function ValidarCamposObrigatorios(
  AParent: TWinControl;
  var MsgErro: string
): Boolean;
var
  i: Integer;
  C: TControl;
begin
  Result := True;
  MsgErro := '';

  for i := 0 to AParent.ControlCount - 1 do
  begin
    C := AParent.Controls[i];

    // === APENAS CAMPOS MARCADOS COMO OBRIGATÓRIOS ===
    if (C.Tag = 1) and
       (
         (C is TdxEdit) or
         (C is TdxCurrencyEdit) or
         (C is TdxDateEdit) or
         (C is TdxImageEdit) or
         (C is TdxPickEdit) or
         (C is TdxCheckEdit)
       )
    then
    begin
      if CampoDxObrigatorioVazio(C) then
      begin
        MsgErro := 'Informe o campo obrigatório: ' +
                   NomeCampoParaMensagem(C);

        // === Garante que Tabs / Containers estejam ativos ===
        AtivarContainersAteRaiz(C);

        // === Força foco ===
        if (C is TWinControl) and TWinControl(C).CanFocus then
        begin
          TWinControl(C).SetFocus;

          // Seleciona conteúdo quando aplicável
          if C is TdxEdit then
            TdxEdit(C).SelectAll
          else if C is TdxCurrencyEdit then
            TdxCurrencyEdit(C).SelectAll;
        end;

        Result := False;
        Exit; // para na PRIMEIRA inconsistência
      end;
    end;

    // === RECURSÃO PARA CONTAINERS FILHOS ===
    if C is TWinControl then
    begin
      if not ValidarCamposObrigatorios(
        TWinControl(C), MsgErro) then
      begin
        Result := False;
        Exit;
      end;
    end;
  end;
end;

end.
