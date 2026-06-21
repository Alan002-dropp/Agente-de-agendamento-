# Agente-de-agendamento-
Agente inteligente em Prolog para organização de tarefas acadêmicas.

# OrganizaIA - Agente Organizador de Tarefas

## Descrição

O **OrganizaIA** é um protótipo de sistema inteligente desenvolvido para a disciplina de **Inteligência Artificial I** da Universidade Católica de Brasília (UCB). O objetivo do projeto é auxiliar na organização e priorização de tarefas acadêmicas utilizando conceitos de Inteligência Artificial, representação de conhecimento e programação lógica.

O sistema utiliza fatos e regras em **Prolog** para classificar tarefas, identificar atividades importantes e realizar inferências sobre quais atividades devem receber maior atenção.

## Objetivos

* Representar conhecimento por meio de fatos e regras.
* Aplicar conceitos de lógica e inferência em Prolog.
* Demonstrar consultas sobre a base de conhecimento.
* Modelar uma busca simples em espaço de estados para representar o fluxo entre tarefas.
* Servir como exemplo prático dos conceitos estudados na disciplina.

## Tecnologias Utilizadas

* SWI-Prolog
* Programação Lógica
* Inteligência Artificial
* Git e GitHub

## Estrutura do Projeto

* `organizaia.pl` – Arquivo principal contendo fatos, regras, consultas e implementação da busca.
* `README.md` – Documentação do projeto.


## Como Executar

1. Instale o **SWI-Prolog**.
2. Abra o arquivo `organizaia.pl`.
3. Carregue o programa no interpretador Prolog.
4. Execute consultas para testar o funcionamento.

## Exemplos de Consultas

```prolog
?- urgente(X).

?- atividade_importante(X).

?- prioridade_grupo(X).

?- caminho(inicio, entregar_relatorio).

?- mostrar_lista([trabalho_ia, estudar_prolog, fazer_slide]).
```

## Funcionalidades

* Classificação de tarefas por prioridade.
* Identificação de atividades de estudo.
* Identificação de tarefas prioritárias do grupo.
* Inferência baseada em regras lógicas.
* Busca entre estados representando uma sequência de execução de tarefas.
* Demonstração de recursão por meio da impressão de listas.

## Integrantes

Alan Nascimento,
Aquila Lopo,
Arthur Fagundes,

## Disciplina

**Inteligência Artificial**
Universidade Católica de Brasília (UCB)

atividade da disciplina de Inteligência Artificial.
