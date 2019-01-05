function [path] = minDegSol(Dist)
%MinDegSol "Solves" the TSP problem by only traversing the shortest
%distance each time
NVAR=size(Dist,2);
path = randperm(NVAR,1);

function [newdist,newNode] = minDeg(node,path,Dist)
    availDist = Dist(node,:);
    availDist(path) = inf;
    [newdist,newNode] = min(availDist);
end
for el = 1:(NVAR-1)
    [~,newNode] = minDeg(path(el),path,Dist);
    path = [path newNode];
end
end

