%
% ObjVal = tspfun(Phen, Dist)
% Implementation of the TSP fitness function
%	Phen contains the phenocode of the matrix coded in adjacency
%	representation
%	Dist is the matrix with precalculated distances between each pair of cities
%	ObjVal is a vector with the fitness values for each candidate tour (=each row of Phen)
%

function ObjVal = tspfun(Phen, Dist);
	%ObjVal=Dist(Phen(:,1),1);
	%for t=2:size(Phen,2)

    	%ObjVal=ObjVal+Dist(Phen(:,t),t);
    ObjVal = zeros(size(Phen,1),1);
    for row=1:size(Phen,1)
        for city=1:size(Phen,2)
            if(city == size(Phen,2))
                ObjVal(row) = ObjVal(row) + Dist(Phen(row,city),Phen(row,1));
            else
                ObjVal(row) = ObjVal(row) + Dist(Phen(row,city),Phen(row,city+1));
            end
        end
    end 
end


% End of function

