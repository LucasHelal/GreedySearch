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

%%Distancia entre duas cidades.
%neighbor(+origem, destino, distancia)
neighbor(arad, zerind, 75).
neighbor(arad, sibiu, 140).
neighbor(arad, timisoara, 118).
neighbor(bucharest, giurgiu, 90).
neighbor(bucharest, urziceni, 85).
neighbor(bucharest, fagaras, 211).
neighbor(bucharest, pitesti, 101).
neighbor(craiova, pitesti, 138).
neighbor(craiova, vilcea, 97).
neighbor(craiova, dobreta, 120).
neighbor(dobreta, craiova, 120).
neighbor(dobreta, mehadia, 75).
neighbor(eforie, hirsova, 86).
neighbor(fagaras, bucharest, 211).
neighbor(fagaras, sibiu, 99).
neighbor(giurgiu, bucharest, 90).
neighbor(hirsova, eforie, 86).
neighbor(hirsova, urziceni, 98).
neighbor(iasi, vaslui, 92).
neighbor(iasi, neamt, 87).
neighbor(lugoj, mehadia, 70).
neighbor(lugoj, timisoara, 111).
neighbor(mehadia, dobreta, 75).
neighbor(mehadia, lugoj, 70).
neighbor(neamt, iasi, 87).
neighbor(oradea, zerind, 71).
neighbor(oradea, sibiu, 151).
neighbor(pitesti, bucharest, 101).
neighbor(pitesti, vilcea, 97).
neighbor(pitesti, craiova, 138).
neighbor(vilcea, pitesti, 97).
neighbor(vilcea, sibiu, 80).
neighbor(vilcea, craiova, 146).
neighbor(sibiu, vilcea, 80).
neighbor(sibiu, fagaras, 99).
neighbor(sibiu, oradea, 151).
neighbor(sibiu, arad, 140).
neighbor(timisoara, lugoj, 70).
neighbor(timisoara, arad, 118).
neighbor(urziceni, hirsova, 98).
neighbor(urziceni, bucharest, 85).
neighbor(vaslui, iasi, 92).
neighbor(vaslui, urziceni, 142).
neighbor(zerind, oradea, 71).
neighbor(zerind, arad, 75).

%Straight line distance to Bucharest
%stline(+cidade, distancia)
stline(arad,366).
stline(bucharest,0).
stline(craiova,160).
stline(dobreta,242).
stline(eforie,161).
stline(fagaras,178).
stline(giurgiu,77).
stline(hirsova,151).
stline(iasi,226).
stline(lugoj,244).
stline(mehadia,241).
stline(neamt,234).
stline(oradeo,380).
stline(pitesti,98).
stline(vilcea,193).
stline(sibiu,253).
stline(timisoara,329).
stline(urziceni,80).
stline(vaslui,199).
stline(zerind,374).

