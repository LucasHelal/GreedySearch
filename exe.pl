%vim: set ft=prolog:
%% -----------------------------------
%% --UNIVERSIDADE ESTADUAL DE MARINGÁ-
%% -----------------------------------
%% -----CIÊNCIA DA COMPUTAÇÃO---------
%% -----TRABALHO DE PPLF - PROLOG-----
%% -----------------------------------
%% -----PROFESSOR: WAGNER IGARASHI----
%% -----ALUNO: LUCAS GEORGES HELAL----
%% -----RA:67645----------------------
:- consult(searchDataBase).
nextCity(s).
%search(+Start)
%%Definir cidade inicial para começar a busca
search(Start):-
	search(Start, []).
%search(+goal, _)
%%Caso base, o objetivo é chegar em bucharest
search(bucharest, _):- 
	write('Está no seu destino: Bucharest'), nl,
	!.
%search(+Start, Path)
%%Dado uma cidade verifica entro o vizinhos qual o melhor
%%caminho para chegar na proxima cidade.
search(Start, Path):-
	write('Está em: '),	write(Start),write(', deseja prosseguir? (S/s)'), nl,
	read(X), nextCity(X),
	append(Path,  [Start], NewPath),
	findBestNeighbor(Start, BestNeighbor, Path),
	search(BestNeighbor, NewPath).
%findBestNeighbor(+Start, BestNeighbor, PathList)
%%Verifica se o se cidade vizinha ja foi visitada.
findBestNeighbor(Start, BestNeighbor, PathList):-
	neighbor(Start, BestNeighbor, _),
	not(member(BestNeighbor, PathList)),
	not(haveBestNeighbor(Start, BestNeighbor, PathList)),
	!.
%haveBestNeighbor(+Start, +BestNeighbor, _PathList)
%%Dado uma cidade inicial, ele procura entre seus vizinhos
%%se existe um com a melhor H(N) =  SLD(N) %%+ D(N).
haveBestNeighbor(Start, BestNeighbor, _PathList):-
	neighbor(Start, BestNeighbor, _DistanceONE),
	stline(BestNeighbor, StlineONE),
	neighbor(Start, Neighbor, _DistanceTWO),
	stline(Neighbor, StlineTWO),
	Neighbor \= BestNeighbor,
	HeuristicONE is StlineONE,%+DistanceONE
	HeuristicTWO is StlineTWO,%+DistanceTWO
	HeuristicTWO < HeuristicONE.
