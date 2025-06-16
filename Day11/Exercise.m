%Graph
%1.Write the MATLAB code to import a graph.Use the following source and destination data.
%2.Using the imported data,draw the graph.
%3.write the matlab code to find the display the sub graph for the given nodes.
%4.identify and display the adjacent vertices for each node.
%5.Label the edges of the graph.
%6.Label the nodes of the graph.
%7.Write the MATLAB code to color the graph(Graph Coloring).
%8.Write the MATLAB code to find the shortest path from node 1 to node 5.

%source = [1,1,2,3,4]
%destination = [2,3,4,4,5]

% 1. Import graph data
source = [1,1,2,3,4];
destination = [2,3,4,4,5];

% Create the graph
G = graph(source, destination);

% 2. Draw the graph
figure;
plot(G, 'Layout', 'force');
title('Original Graph');

% 3. Display subgraph for given nodes (example: nodes 1, 2, 3)
subNodes = [1 2 3];
subG = subgraph(G, subNodes);
figure;
plot(subG, 'Layout', 'force');
title('Subgraph with Nodes 1, 2, 3');

% 4. Display adjacent vertices for each node
disp('Adjacent vertices for each node:');
for i = 1:numnodes(G)
    adj = neighbors(G, i);
    fprintf('Node %d: %s\n', i, mat2str(adj'));
end

% 5. Label the edges of the graph
figure;
p = plot(G, 'Layout', 'force');
labeledge(p, G.Edges.EndNodes(:,1), G.Edges.EndNodes(:,2), 1:numedges(G));
title('Graph with Edge Labels');

% 6. Label the nodes of the graph
p.NodeLabel = arrayfun(@num2str, 1:numnodes(G), 'UniformOutput', false);

% 7. Color the graph (Simple greedy coloring)
colors = zeros(numnodes(G),1);  % Color storage
for i = 1:numnodes(G)
    neighborColors = colors(neighbors(G, i));
    color = 1;
    while ismember(color, neighborColors)
        color = color + 1;
    end
    colors(i) = color;
end

% Display colored graph
figure;
p = plot(G, 'Layout', 'force');
p.NodeCData = colors;
colorbar;
title('Graph Coloring (Greedy)');

% 8. Find the shortest path from node 1 to node 5
[spath, spathLen] = shortestpath(G, 1, 5);
fprintf('Shortest path from node 1 to 5: %s (Length = %d)\n', mat2str(spath), spathLen);

% Highlight the shortest path
figure;
p = plot(G, 'Layout', 'force');
highlight(p, spath, 'EdgeColor', 'r', 'LineWidth', 2);
title('Shortest Path from Node 1 to Node 5');
