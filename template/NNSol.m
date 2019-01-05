function [path] = NNSol(Dist)
%NNSol "Solves" the TSP problem by only traversing the shortest
%distance each time
NVAR=size(Dist,2);
path = randi(NVAR,1);

function [newdist,newNode] = nn(node,path,Dist)
    availDist = Dist(node,:);
    availDist(path) = inf;
    [newdist,newNode] = min(availDist);
end
for el = 1:(NVAR-1)
    [~,newNode] = nn(path(el),path,Dist);
    path = [path newNode];
end
end

