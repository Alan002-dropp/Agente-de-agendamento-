% ============================================
% AGENTE ORGANIZADOR DE TAREFAS - OrganizaIA
% Trabalho Final - Inteligência Artificial I
% ============================================

% FATOS
tarefa(trabalho_ia, alta).
tarefa(estudar_prolog, alta).
tarefa(fazer_slide, media).
tarefa(ler_artigo, baixa).
tarefa(revisar_materia, alta).
tarefa(fazer_exercicios, media).
tarefa(entregar_relatorio, alta).
tarefa(estudar_logica, media).
tarefa(organizar_anotacoes, baixa).
tarefa(estudar_busca, alta).
tarefa(fazer_resumo, media).
tarefa(estudar_redes, media).
tarefa(pesquisa_ia, alta).
tarefa(reuniao_grupo, alta).
tarefa(corrigir_trabalho, media).

% Categoria das tarefas
atividade_estudo(estudar_prolog).
atividade_estudo(estudar_logica).
atividade_estudo(estudar_busca).
atividade_estudo(estudar_redes).
atividade_estudo(revisar_materia).

atividade_grupo(trabalho_ia).
atividade_grupo(fazer_slide).
atividade_grupo(reuniao_grupo).
atividade_grupo(entregar_relatorio).

% REGRAS

urgente(X) :-
    tarefa(X, alta).

normal(X) :-
    tarefa(X, media).

pode_esperar(X) :-
    tarefa(X, baixa).

atividade_importante(X) :-
    urgente(X),
    atividade_estudo(X).

deve_fazer_hoje(X) :-
    urgente(X),
    atividade_estudo(X).

prioridade_grupo(X) :-
    urgente(X),
    atividade_grupo(X).

planejar_para_depois(X) :-
    normal(X),
    atividade_estudo(X).

merece_revisao(X) :-
    atividade_estudo(X).

% REGRA RECURSIVA

mostrar_lista([]).

mostrar_lista([H|T]) :-
    write(H),
    nl,
    mostrar_lista(T).

% ============================================
% BUSCA EM ESPAÇO DE ESTADOS
% (Grafo simples de progresso das tarefas)
% ============================================

proximo(inicio, estudar_logica).
proximo(estudar_logica, estudar_prolog).
proximo(estudar_prolog, estudar_busca).
proximo(estudar_busca, fazer_exercicios).
proximo(fazer_exercicios, trabalho_ia).
proximo(trabalho_ia, fazer_slide).
proximo(fazer_slide, entregar_relatorio).

% Busca recursiva de caminho

caminho(X, Y) :-
    proximo(X, Y).

caminho(X, Y) :-
    proximo(X, Z),
    caminho(Z, Y).

% ============================================
% EXEMPLOS DE CONSULTAS
% ============================================

% ?- urgente(X).
% ?- normal(X).
% ?- atividade_importante(X).
