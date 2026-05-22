unit uExemploGerarNFeDuimpD7;

interface

uses
  SysUtils, Dialogs, uDuimpNFeXmlCompletoD7;

procedure ExemploGerarXmlNFeDuimpD7(const AArquivoXml: string);

implementation

procedure ExemploGerarXmlNFeDuimpD7(const AArquivoXml: string);
var
  Config: TDuimpNFeConfig;
  Emitente: TDuimpNFePessoa;
  Destinatario: TDuimpNFePessoa;
  Itens: TDuimpNFeItens;
begin
  try
    Config := DuimpNFeConfigPadraoSP('26BR00004580355');
    Config.TpAmb := 2; { homologacao }
    Config.NNF := 1;
    Config.Serie := 1;

    Emitente := DuimpNFeEmitentePadraoSheild;
    Destinatario := DuimpNFeDestinatarioPadraoMesmoEmitente;

    { Ajuste os dados reais do emitente/destinatario antes de transmitir. }
    Emitente.CNPJ := '00000000000000';
    Emitente.IE := '000000000000';
    Emitente.XNome := 'SHEILD';

    Destinatario := Emitente;

    SetLength(Itens, 1);
    FillChar(Itens[0], SizeOf(Itens[0]), 0);

    Itens[0].Codigo := '001';
    Itens[0].Descricao := 'MERCADORIA IMPORTADA VIA DUIMP';
    Itens[0].NCM := '52085200';
    Itens[0].CFOP := '3102';
    Itens[0].Unidade := 'UN';
    Itens[0].Quantidade := 1;
    Itens[0].ValorUnitario := 1000;
    Itens[0].ValorTotal := 1000;

    Itens[0].NumeroDI := '26BR00004580355';
    Itens[0].DataDI := Date;
    Itens[0].LocalDesembaraco := 'SANTOS';
    Itens[0].UFDesembaraco := 'SP';
    Itens[0].DataDesembaraco := Date;
    Itens[0].ViaTransporte := 1; { 1=maritima }
    Itens[0].ValorAFRMM := 0;
    Itens[0].FormaIntermediacao := 1;
    Itens[0].CodigoExportador := 'EXPORTADOR';
    Itens[0].NumeroAdicao := 1;
    Itens[0].NumeroSequencialItem := 1;
    Itens[0].CodigoFabricante := 'FABRICANTE';

    Itens[0].ValorFrete := 0;
    Itens[0].ValorSeguro := 0;
    Itens[0].ValorOutrasDespesas := 0;
    Itens[0].ValorII := 0;
    Itens[0].ValorIPI := 0;
    Itens[0].ValorPIS := 0;
    Itens[0].ValorCOFINS := 0;
    Itens[0].ValorICMS := 0;

    SalvarXmlNFeDuimpCompletoD7(
      AArquivoXml,
      Config,
      Emitente,
      Destinatario,
      Itens
    );

    ShowMessage('XML gerado com sucesso:' + #13#10 + AArquivoXml);
  except
    on E: Exception do
      ShowMessage('Erro ao gerar XML NF-e DUIMP:' + #13#10 + E.Message);
  end;
end;

end.
