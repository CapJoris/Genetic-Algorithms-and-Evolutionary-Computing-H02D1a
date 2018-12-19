function [path] = minDegSol(Dist)
%MinDegSol "Solves" the TSP problem by only traversing the shortest
%distance each time
% data = load(['datasets/rbx711.tsp']);
% x=data(:,1)/max([data(:,1);data(:,2)]);y=data(:,2)/max([data(:,1);data(:,2)]);
% NVAR=size(data,1);
% Dist=zeros(NVAR,NVAR);
% mindist = inf;
% minI = 0;
% tic
% %Selects start node and makes distance matrix
% for i=1:size(x,1)
%     for j=1:size(y,1)
%         dist = sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
%         Dist(i,j)=dist;
%         if dist < mindist
%             minI = i;
%         end
%     end
% end
NVAR=size(Dist,2);
path = randperm(NVAR,1);
%totDist = 0;
function [distboi,newNode] = minDeg(node,path,Dist)
    availDist = Dist(node,:);
    availDist(path) = inf;
    [distboi,newNode] = min(availDist);
end
for el = 1:(NVAR-1)
    [~,newNode] = minDeg(path(el),path,Dist);
    path = [path newNode];
    %totDist = totDist + distboi;
end
%totDist = totDist + Dist(path(1),path(end));
%plot([x(path); x(path(1))],[y(path); y(path(1))])
end

