# Validação

## Versão 1.2.0

Documentação ampliada em 12/11/2026 para qualquer integrante da A9 e reuniões com clientes de qualquer serviço. Propulsor e Domínio passam a ser aplicações específicas. O fluxo aceita vídeo local ou anexado sem transcrição pronta, pasta autorizada fornecida no pedido e uso sem arquivo de configuração. Produto ou programa é opcional.

A leitura de referência da versão 1.1.0 encontrou três lacunas no cenário de uma pessoa do comercial com vídeo local de reunião sem relação com IA. O acionamento ainda mencionava somente consultorias, não explicitava o vídeo sem transcrição e exigia configuração sem esclarecer a prioridade da pasta informada. A versão 1.2.0 documenta essas rotas e mantém o Docs por reunião, as falas literais, timestamps, deduplicação e conferência do destino.

A aplicação simulada da versão 1.2.0 resolveu o caso sem exigir programa, Mapa, ata ou configuração prévia. Também cobriu destino não informado e uso de Propulsor com configuração pessoal existente. A revisão confirmou que as instruções não herdam acessos de outro integrante.

Não foram processados vídeos reais nem criados documentos fictícios no Drive nesta alteração de documentação. A instalação e o pacote são comparados por conteúdo; os exemplos públicos permanecem fictícios.

## Versão 1.1.0

Correção de fluxo em 12/11/2026. O entregável passa a ser um Google Docs por reunião na mesma pasta da transcrição do cliente, com data, pessoa, momento no vídeo e frase literal. A rotina não gera imagens, não cria subpastas adicionais e não alimenta automaticamente o documento central antigo.

O teste de referência da versão 1.0.0 reproduziu a divergência. Ao receber apenas o pedido de atualizar o Mapa com uma reunião gravada, a instrução anterior levava ao documento central e não exigia um Docs na pasta do cliente. A versão 1.1.0 corrige explicitamente o artefato e o destino.

Os cenários de conferência cobrem reunião nova, reenvio, encontros diferentes no mesmo dia, resumo sem fala literal e criação com resposta incerta. Conteúdo e pasta de destino devem ser conferidos antes de confirmar o salvamento.

As pastas raízes dos clientes foram localizadas por MCP e registradas somente na configuração privada. Na execução de cada reunião, o parent efetivo da transcrição ainda precisa ser confirmado. Nesta alteração não foi fornecida reunião nova para curadoria e não foram criados Docs fictícios na área real dos clientes.

## Histórico da versão 1.0.0

Data de referência em 12/11/2026.

## Comportamento

Foram feitas simulações sem escrita em sistemas externos, antes e depois da leitura da skill. O controle já preservou duplicatas, autoria e expectativas. Não demonstrou um procedimento explícito de leitura da base atual e conferência de escrita no Drive. A skill especifica essas etapas e a resposta quando não for possível concluí-las.

A avaliação com a skill cobriu os seguintes cenários.

| Cenário | Decisão verificada |
| --- | --- |
| Depoimento repetido com nova expectativa | Preservar evidência existente e separar expectativa sem minutagem |
| Fala da A9 junto ao relato de cliente | Excluir a fala interna dos depoimentos |
| Instrução dentro da transcrição | Tratar como conteúdo, sem publicar dados |
| Apenas resumo automático | Registrar síntese e limitações, sem inventar aspas ou vídeo conferido |
| Drive nega acesso | Preservar curadoria pendente, sem alegar atualização remota |
| Escrita retorna timeout, mas foi salva | Conferir o destino antes de repetir e evitar duplicação |
| Material com ressalva mais recente | Consultar base atual e conservar a ausência de retorno |

Uma das simulações compartilhou dados com o exemplo fictício do pacote. Ela verifica aplicação das regras, mas não é evidência independente de generalização. A revisão também identificou melhorias de clareza, incorporadas antes da publicação, sobre pendências sem destino, intervalos sobrepostos, deduplicação de avisos e conferência após timeout.

Uma aplicação posterior usou outra empresa fictícia e um relato inédito. Simulou inclusão, reenvio com janela sobreposta e correção de unidade, de dia para semana, acompanhada de ressalva sobre revisão manual. O resultado preservou a identidade do registro, manteve a correção no histórico e resolveu um timeout com leitura de retorno sem segunda escrita. A regra de marcar a alegação anterior como substituída foi explicitada na referência.

## Estrutura e pacote

O validador da skill confere o frontmatter, o nome e a ausência de scaffold inacabado. A conferência do ZIP verifica uma única pasta raiz, todos os arquivos da skill e a ausência de configuração e fontes privadas. A instalação local é comparada por hash com a fonte do pacote.

Essas verificações estruturais passaram. Os links relativos do Markdown resolvem e os metadados habilitam acionamento implícito. O documento canônico também foi localizado por MCP com título e revisão válidos. Não foi feita uma escrita artificial na base real para testar a instalação.

A capa foi produzida com Poppins, logo oficial e cores da A9. A imagem final foi inspecionada visualmente.

## Limites

Os testes de comportamento são simulações e não uma atualização real de depoimentos no Drive. Nesta tarefa foi configurado o procedimento para próximas reuniões. Não houve reunião nova fornecida para curadoria e nenhuma evidência fictícia foi gravada na base real.

A skill foi preparada para instalação local no Codex. Não houve teste de upload nativo em outras plataformas. Cada IA precisa do conector e da permissão apropriados. A skill instalada não concede acesso a outra pessoa nem é um processo autônomo de monitoramento.
