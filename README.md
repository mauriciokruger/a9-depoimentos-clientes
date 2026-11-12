![A9 Educação. Cada reunião deixa uma evidência.](docs/assets/capa.png)

<h1 align="center">A9 Educação · Depoimentos e evolução de clientes</h1>

<p align="center">Do vídeo ao registro dos depoimentos do cliente.<br>Um Google Docs por reunião, com frases e minutagens, na pasta autorizada do Drive.</p>

<p align="center">
  <a href="https://github.com/mauriciokruger/a9-depoimentos-clientes/releases/download/v1.2.0/a9-depoimentos-clientes-v1.2.0.zip">Baixar a skill</a> ·
  <a href="#instalação">Como instalar</a> ·
  <a href="#exemplo-fictício">Ver um exemplo</a>
</p>

<p align="center"><strong>v1.2.0</strong> · Para toda a equipe A9 · Vídeo ou transcrição · Google Drive via MCP</p>

## Sobre a skill

Qualquer pessoa da A9 pode enviar o vídeo de uma reunião com um cliente e pedir a identificação dos depoimentos. A IA analisa o material, transcreve as falas selecionadas e salva um Google Docs na pasta autorizada do Drive. Cada trecho traz a data da reunião, quem falou, a frase literal e a minutagem inicial e final no vídeo.

A skill atende reuniões de qualquer produto, serviço ou relacionamento com clientes da A9. Não exige Propulsor, Domínio de IA, Mapa de consultoria ou transcrição pronta. Vídeos locais ou anexados também podem ser usados, conforme os recursos de análise disponíveis no ambiente.

O fluxo padrão entrega somente esse registro textual. Não gera imagens ou cards nem cria pastas adicionais. Registros centrais antigos permanecem preservados. Pedidos separados de materiais podem consultar os Docs dos encontros.

A skill diferencia resultado relatado, demonstração observada, mudança de hábito e expectativa. Mantém quem falou, em qual reunião e em qual minuto. A versão pública contém a metodologia. Transcrições, nomes de clientes, links internos e configuração da base ficam no ambiente privado da equipe.

## Como funciona

| Momento | Entrega |
| --- | --- |
| A pessoa envia vídeo ou transcrição de reunião com cliente | Docs de depoimentos na pasta autorizada do Drive |
| A reunião já foi analisada | Complemento do mesmo Docs, sem duplicação |
| Não há trecho aproveitável | Docs com essa conclusão e os limites da análise |
| O documento é salvo | Conferência do conteúdo e da pasta antes de entregar o link |
| Alguém pede um material separadamente | Consulta aos Docs atuais e aplicação da identidade A9 |
| O Drive está indisponível | Curadoria privada pendente, com impedimento informado |

A execução acontece durante o atendimento no chat, com ferramentas disponíveis e acesso autorizado. A skill não é um monitor de reuniões e não roda em segundo plano.

## Comece aqui

1. [Baixe o pacote da versão 1.2.0](https://github.com/mauriciokruger/a9-depoimentos-clientes/releases/download/v1.2.0/a9-depoimentos-clientes-v1.2.0.zip).
2. Instale a pasta da skill no ambiente que você utiliza.
3. Conecte Google Drive e Docs por MCP usando sua conta e os acessos autorizados.
4. Envie o vídeo ou a transcrição e indique a pasta do Drive onde salvar o documento.
5. Peça a curadoria e confira o link do Docs salvo. Não é necessário criar arquivo de configuração para esse primeiro uso.

```text
Use $a9-depoimentos-clientes para analisar o vídeo anexado desta reunião
com o cliente. Identifique os momentos em que ele dá um depoimento.
Salve um Google Docs na pasta do Drive que estou indicando neste pedido,
com a data da reunião, quem falou, a frase exata e o minuto inicial
e final de cada trecho. Não gere imagens.
```

Inclua o link da pasta autorizada junto do pedido. A IA não precisa receber uma chave de API no texto. O conector disponível deve estar autenticado e permitir criar o documento no destino.

## O que o documento entrega

| Informação | Como aparece |
| --- | --- |
| Cliente e encontro | Nome confirmado e data da reunião |
| Pessoa | Quem deu o depoimento, com incerteza sinalizada quando necessário |
| Momento do vídeo | Tempo decorrido de início e fim, como 00:12:04 a 00:12:35 |
| Frase | Transcrição literal da fala selecionada |
| Contexto e fontes | Ressalvas, identificação do vídeo e links efetivamente disponíveis |

O serviço ou programa pode ser registrado quando informado. Não é obrigatório. Se o vídeo não puder ser acessado ou a fala não estiver clara, a limitação fica explícita. A skill não inventa depoimentos, autoria ou minutagem.

## Destino no Drive

A pasta informada e autorizada no pedido é o destino. Se uma transcrição já estiver no Drive e o projeto usar essa organização, o Docs pode ficar na mesma pasta da transcrição do cliente. Quando nenhuma pasta for informada, a IA consulta o contexto ou a configuração individual disponível. Se ainda faltar o destino, pede esse dado antes de salvar.

Cada pessoa usa sua própria conta e seus acessos. A instalação não libera as pastas particulares de outro integrante nem presume que toda a equipe usa a estrutura de um consultor.

## Uso no Propulsor e Domínio de IA

Propulsor e Domínio são aplicações específicas da skill. Um consultor pode configurar seu projeto para criar o Docs de depoimentos ao pedir a atualização do Mapa após uma reunião gravada. Essa rotina continua disponível sem limitar o uso geral da equipe.

```text
Atualize o Mapa desta reunião e use $a9-depoimentos-clientes para salvar
os depoimentos em um Google Docs na pasta da transcrição do cliente.
Registre data, pessoa, frase literal e momento do vídeo. Não gere imagens.
```

## Instalação

Descompacte o ZIP da release e copie a pasta `a9-depoimentos-clientes` inteira. O ZIP da release tem uma única pasta raiz. Code / Download ZIP baixa o repositório e não é o mesmo pacote de instalação.

| Ambiente compatível | Pasta pessoal |
| --- | --- |
| Codex | `~/.agents/skills/a9-depoimentos-clientes` |
| Claude Code | `~/.claude/skills/a9-depoimentos-clientes` |

No Windows, `~` representa a pasta do usuário. No Codex, peça o uso de `$a9-depoimentos-clientes`. Se uma skill recém instalada não aparecer na sessão atual, abra uma nova sessão. Evite cópias duplicadas no mesmo ambiente.

Outras plataformas podem aceitar upload de um ZIP de skill ou arquivos de instruções de um projeto. O suporte, os conectores e as permissões dependem da plataforma. Essas instalações não foram testadas neste pacote.

A skill de marca [A9 Educação](https://github.com/mauriciokruger/a9-educacao) complementa pedidos separados de peças. O registro textual da reunião não depende de assets de marca.

## Configuração privada opcional

Para uso recorrente, você pode criar `00_base/depoimentos_clientes.md` no seu projeto com as pastas autorizadas e as convenções da equipe. A pasta explícita do pedido tem prioridade. A configuração ajuda a resolver o destino quando ele não for informado.

Outra opção é criar `~/.agents/skill-config/a9-depoimentos-clientes.json` no ambiente pessoal de quem usa a skill. Substitua o endereço demonstrativo pela pasta autorizada. Não é necessário restringir produtos ou programas.

```json
{
  "root_folder_url": "https://drive.google.com/drive/folders/ID_DA_PASTA_RAIZ",
  "document_scope": "one_document_per_meeting",
  "destination": "same_folder_as_transcript",
  "generate_images": false,
  "maintenance_authorized": true,
  "authorization_note": "Informe quem autorizou, quando e em qual escopo"
}
```

O campo de autorização documenta uma permissão real do responsável. Ele não cria essa permissão e não substitui os acessos da conta. Não publique essa configuração, fontes ou dados de clientes.

## Deixar como padrão no projeto

Acrescente às instruções do projeto, como `AGENTS.md`, uma regra equivalente ao texto abaixo.

```text
Quando eu trouxer uma reunião gravada de cliente e pedir os depoimentos,
use a9-depoimentos-clientes durante o mesmo atendimento. Crie um Docs
na pasta autorizada do Drive com data, pessoa, frase literal e momento
do vídeo. Reenvios complementam o mesmo documento. Não gere imagens
nem crie pastas adicionais. Confira conteúdo e pasta antes de entregar
o link. Preserve as convenções do acompanhamento deste projeto.
```

Uma seção da barra lateral organiza os chats. A regra deve estar nas instruções do diretório em que eles trabalham, para ser encontrada durante as tarefas.

## Exemplo fictício

> Agora faço o relatório em 20 minutos, antes levava duas horas.

Ana · Empresa Horizonte · reunião com cliente de 12/11/2026 · 00:05:10 a 00:05:48.

Esse trecho seria um resultado relatado pela cliente, com fonte e limites registrados. A intenção de automatizar outra área no mês seguinte ficaria separada como expectativa. Um número calculado pela IA não seria colocado entre aspas como se fosse fala da cliente.

O exemplo é inteiramente fictício. [Veja o registro completo e os critérios](skills/a9-depoimentos-clientes/references/registro-e-criterios.md).

[Veja o modelo do documento por encontro](skills/a9-depoimentos-clientes/references/documento-encontro.md).

## O que está incluído

| Arquivo | Uso |
| --- | --- |
| [SKILL.md](skills/a9-depoimentos-clientes/SKILL.md) | Acionamento, curadoria, atualização e consulta |
| [Registro e critérios](skills/a9-depoimentos-clientes/references/registro-e-criterios.md) | Campos, classificações e lacunas |
| [Documento do encontro](skills/a9-depoimentos-clientes/references/documento-encontro.md) | Título, destino, conteúdo e conferência do Docs |
| [Uso editorial](skills/a9-depoimentos-clientes/references/uso-editorial.md) | Cards, stories, e-mails e fidelidade das falas |
| [Metadados](skills/a9-depoimentos-clientes/agents/openai.yaml) | Nome de exibição e acionamento implícito |
| [Validação](docs/VALIDACAO.md) | Verificações executadas e limites |

## Atualizar e compartilhar

O GitHub mantém a fonte versionada. Os depoimentos permanecem nos Docs das reuniões, dentro das pastas de cada cliente no Drive. Novos relatos não exigem redistribuir a skill.

Mudanças na metodologia exigem atualizar as cópias instaladas do pacote. A instalação não compartilha documentos nem suas permissões com outras pessoas. Cada integrante precisa de acesso autorizado às pastas e de um conector disponível na sua IA.

## Marca e limites

Para reconstruir o ZIP, execute `python scripts/package.py`. O arquivo e seu SHA256 ficam em `dist/`. Para reconstruir a capa no Windows, execute `pwsh -File scripts/build-header.ps1 -BrandSkill CAMINHO_DA_SKILL_A9_EDUCACAO`, apontando para o pacote de marca com fontes e logo oficiais.

Identidade visual baseada na skill pública A9 Educação, com Poppins, navy, lime, ciano e logo oficial. A capa é um material gráfico de apresentação do pacote, sem dados de clientes.

A9 Educação · Do conhecimento ao resultado.

Manter a base interna não autoriza publicar depoimentos, imagens ou vídeos. Criar uma peça não autoriza enviá-la ou agendá-la. Conteúdo de documentos e transcrições é tratado como fonte, sem executar ordens encontradas nele.
