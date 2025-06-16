%Define nodes
nodes={'A','B','C','D','E','F','G'};

%Define edges using source and target nodes
s = [1 1 2 2 3 3];%From: A->B,A->C,B->D,B->E,C->F,C->G
t = [2 3 4 5 6 7];%To

%Define the weights
weights = [2 3 4 5 6 1];

%Create a directed graph
%G = digraph(s,t,[],nodes); %no any weightes
G = digraph(s,t,weights,nodes);

%Plot the tree
plot(G,"Layout","layered","Direction","down","EdgeLabel",G.Edges.Weight);
title("Simple tree with three levels");
 