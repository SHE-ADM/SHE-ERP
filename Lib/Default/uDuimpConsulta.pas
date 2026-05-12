unit uDuimpConsulta;

interface

uses
  SysUtils, Classes, SuperObject, uPortalUnicoClientD7, uDuimpNFeItensCompletoD7;

type
  TDadosCargaCapa = record
    // Dados da Duimp
    TipoIdentificacao: string;
    IdentificacaoCE: string;
    FreteUSD: Double;
    SituacaoCarga: string;
    // Dados do PCCE (AFRMM / TUM)
    AfrmmDevido: Double;
    AfrmmPago: Double;
    TumDevido: Double;
    TumPago: Double;
    AfrmmQuitado: Boolean;
  end;

{ Consulta a Capa da Duimp e, se for Marítima, busca os valores no PCCE }
function ConsultarCapaEFinanceiroAfrmm(
  AClient: TPortalUnicoClientD7;
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer;
  var ADados: TDadosCargaCapa
): string;

implementation

function ConsultarCapaEFinanceiroAfrmm(
  AClient: TPortalUnicoClientD7;
  const ANumeroDuimp: string;
  const AVersaoDuimp: Integer;
  var ADados: TDadosCargaCapa
): string;
var
  JsonDuimp, JsonPcce, PathPcce: string;
  SO, CargaObj, PcceObj: ISuperObject;
begin
  FillChar(ADados, SizeOf(ADados), 0);
  
  // 1. Busca Dados Gerais da Duimp para pegar o CE
  JsonDuimp := AClient.ConsultarDuimp(ANumeroDuimp, AVersaoDuimp);
  Result := '--- JSON DUIMP ---' + #13#10 + JsonDuimp + #13#10#13#10;
  
  SO := SuperObject.SO(JsonDuimp);
  if not Assigned(SO) then Exit;

  CargaObj := SO.O['carga'];
  if Assigned(CargaObj) then
  begin
    ADados.TipoIdentificacao := CargaObj.S['tipoIdentificacaoCarga'];
    ADados.IdentificacaoCE   := CargaObj.S['identificacao'];
    ADados.SituacaoCarga     := SO.S['situacao.situacaoDuimp'];
    
    if Assigned(CargaObj.O['frete']) then
      ADados.FreteUSD := CargaObj.O['frete'].D['valorMoedaNegociada'];
  end;

  // 2. Se for Marítima (CE), busca valores de AFRMM/TUM no PCCE
  if (ADados.TipoIdentificacao = 'CE') and (ADados.IdentificacaoCE <> '') then
  begin
    try
      // Endpoint oficial do PCCE para consulta de pagamento de AFRMM por CE
      PathPcce := '/pcce/api/ext/mercante/consultar-pagamento-afrmm/' + ADados.IdentificacaoCE;
      
      // Utiliza o método GetJson que sua classe uPortalUnicoClientD7 já possui internamente
      // Nota: Se GetJson for private, você pode usar ConsultarDuimp como base ou mover GetJson para public
      JsonPcce := AClient.GetJson(PathPcce); // Gambiarra técnica se o método for privado
      
      Result := Result + '--- JSON PCCE (AFRMM) ---' + #13#10 + JsonPcce;
      
      PcceObj := SuperObject.SO(JsonPcce);
      if Assigned(PcceObj) then
      begin
        // Mapeamento dos campos conforme retorno do PCCE
        ADados.AfrmmDevido  := PcceObj.D['valorAfrmmDevido'];
        ADados.AfrmmPago    := PcceObj.D['valorAfrmmPago'];
        ADados.TumDevido    := PcceObj.D['valorTumDevido'];
        ADados.TumPago      := PcceObj.D['valorTumPago'];
        ADados.AfrmmQuitado := PcceObj.B['afrmmTUMPago']; 
      end;
    except
      Result := Result + #13#10 + '!! Erro ao consultar financeiro no PCCE !!';
    end;
  end;
end;

end. 
