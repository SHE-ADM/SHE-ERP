você é um profissional sênior em desenvolvimento de sistemas especializado em delphi 7, firebird 5.
você também é um desenvolvedor sênior fortemente especializado em integrações e consumo de API DUIMP SERPRO INTEGRA COMEX
as implementações serão feitas em ambiente de produção
por enquanto o consumo das apis serão estritamente para consultas, pois faremos consultas de duimps já elaboradas, transportadas e finalizadas
os arquivos xml que serão criados precisam estar em acordo com todas as normas da nova duimp
o propósito do projeto é consumir os endpoint e utilizá-los para criar um arquivo xml completo e válido para emissão de nota fiscal de importação (CFOP 3102)
usaremos as apis da serpro (https://www.serpro.gov.br) especificamente o INTEGRA COMEX
tenho a minha disposição o consumer key, consumer secret e o token de compartilhamento de dados criado no e-CAC
essas credencias serão fornecidas via tedits
vamos fazer passo a passo, então aguarde os meus comandos sobre o que vamos implementar
o primeiro passo dessa implementação será a criação de um botão chamado BTNAutentica para autenticar e estabelecer conexão com a api
estou lhe enviando arquivos pdf e links dos manuais referentes ao consumo dos endpoints do serpro integra comex que quero que guarde em sua memória e use na criação, consumo e resoluções de possíveis problemas técnicos
Documento de Design de Software (SDD)
Projeto: Integração ERP - Módulo DUIMP (Integra Comex) para Emissão de NFI

1. Objetivo
Consumir os dados estruturados de Declarações Únicas de Importação (DUIMP) via API do Serpro (Integra Comex), armazená-los no banco de dados do ERP (SQL Server, Firebird, Oracle, etc.) e mapear essas informações para gerar o XML de uma Nota Fiscal Eletrônica de Importação (NF-e) válida.

2. Fluxo Lógico e Ciclo de Vida da API
O sistema deverá rodar o seguinte fluxo em background ou através de um botão "Importar DUIMP":

Passo 2.1: Autenticação do Sistema (Token Serpro)

Ação: O sistema lê as credenciais Consumer Key e Consumer Secret do banco de dados (ou arquivo .ini).

Requisição: POST para https://gateway.apiserpro.serpro.gov.br/token.

Segurança: O certificado .pfx (e-CNPJ) deve estar anexado na requisição HTTP (mTLS).

Parse: O sistema lê a resposta JSON e guarda a variável access_token em memória, anotando o tempo de expiração (geralmente 60 minutos). Se o token vencer, esta etapa deve ser chamada novamente.

Passo 2.2: Consulta da DUIMP (Payload Principal)

Ação: O usuário insere o número da DUIMP no ERP.

Requisição: GET para o endpoint da DUIMP (ex: https://gateway.apiserpro.serpro.gov.br/integra-comex/v1/duimp/{numero_duimp}).

Headers Necessários:

Authorization: Bearer {access_token_gerado_no_passo_1}

Role-Type: TERCEIROS

x-compartilhamento-token: {token_gerado_pelo_cliente_no_ecac}

Retorno: Um JSON gigante contendo todos os dados aduaneiros (itens, NCM, adições, tributos pagos, fornecedor estrangeiro, etc.).

Passo 2.3: Parseamento (JSON para Banco de Dados)

Ação: O ERP recebe o JSON e começa a destrinchar os dados, gravando nas tabelas locais.

Tabelas Sugeridas:

Tb_Importacao_Capa: Dados gerais da DUIMP, despachante, data de registro.

Tb_Importacao_Itens: Cada mercadoria com seu NCM, valor aduaneiro e quantidade.

Tb_Importacao_Tributos: Os valores exatos pagos de II, IPI, PIS, COFINS e AFRMM.

3. Mapeamento Técnico DUIMP -> NFI (Nota Fiscal de Importação)
A complexidade real deste projeto não é bater na API, mas traduzir a DUIMP para a NF-e. O seu sistema precisará fazer o de-para:

Identificação: Natureza da Operação (3.101, 3.102, etc.).

Fornecedor: Os dados do exportador internacional vêm da DUIMP, mas a NF-e exige país de origem e código do país (tabela Bacen).

Impostos: A DUIMP retorna o valor pago em dólares e reais na data do registro. O seu ERP precisará pegar esses valores exatos e colocar nas tags específicas de importação da NF-e (vII, vIPI, vPIS, vCOFINS, vDespesasAduaneiras).

Adições e DI/DUIMP: A NF-e possui a tag <DI>. Com a nova regra, o número da DUIMP vai nesta tag, e as informações de Adição, Local de Desembaraço e Data de Desembaraço devem ser preenchidas com os dados que retornaram no JSON do Passo 2.2.

4. Tratamento de Erros e Resiliência
HTTP 401 (Unauthorized): Access token vencido. O sistema deve renovar e tentar novamente automaticamente.

HTTP 403 (Forbidden): Token do e-CAC vencido ou revogado pelo cliente. O ERP deve alertar: "Autorização do cliente expirada no e-CAC".

HTTP 404 (Not Found): DUIMP não encontrada ou não registrada.

Timeouts: Como a API do Serpro pode sofrer instabilidades, implementar um mecanismo de retry (tentar 3 vezes antes de avisar erro ao usuário).
abaixo seguem todos os links e arquivos para a sua consulta e compreensão
sinta-se à vontade para consultar outras fontes além dessas que estou disponibilizando, mas procure sempre pelas mais recentes e oficiais
segue:
https://pro-integra-pub-pucomex-dimp.estaleiro.serpro.gov.br/duimp-integracomex-pub/v2/api-docs.
https://apicenter.estaleiro.serpro.gov.br/documentacao/integra-comex/
https://doc-siscomex-sapi.estaleiro.serpro.gov.br/integracomex/documentacao/carga/


Esse é o meu projeto já iniciado em delphi 7
program SHE_DUIMPPRIVADA;

uses
  Forms,
  CryptUID7 in '..\Lib\Default\CryptUID7.pas',
  WinHttpApi in '..\Lib\Default\WinHttpApi.pas',
  WinCrypt in '..\Lib\Default\WinCrypt.pas',
  superobject in '..\Lib\Default\superobject.pas',
  uPrincipalDuimpPrivada in 'uPrincipalDuimpPrivada.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

uPrincipalDuimpPrivada é o meu arquivo .pas principal
EditCertificadoNoSerie armazena o número de série do certificado digital 
quando estiver em branco, mostre a lista de todos os certificados instalados e disponíveis
quando estiver preenchido, use para conectar certificado digital
EditConsumerKey, armazena a credencial de acesso a api integra comex      
EditConsumerSecret, armazena a senha da api integra comex
EditToken, armazena o compartilhando dos dados feitos no e-CAC já devidamente configurado
EditNumeroDuimp, armazena o número da duimp
EditVersaoDuimp, armazena a versão da duimp

BTNAutentica, executa a autenticação e conexão com a api integra comex

observações: sinta-se à vontade para criar, alterar e excluir os arquivos .pas, mas tome cuidado com os versionamentos, não grave ou exclua implementações que ficaram para trás, antigas
mantenha os nomes originais de cada arquivo .pas