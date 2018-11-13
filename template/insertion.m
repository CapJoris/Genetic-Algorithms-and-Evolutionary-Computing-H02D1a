% low level function for TSP mutation
% reciprocal exchange : two random cities in a tour are swapped
% Representation is an integer specifying which encoding is used
%	1 : adjacency representation
%	2 : path representation
%

function NewChrom = insertion(OldChrom,Representation);

NewChrom=OldChrom;

if Representation==1 
	NewChrom=adj2path(NewChrom);
end

% select one positions in the tour

rndi=randperm(length(NewChrom),2)
el = NewChrom(rndi(1));
NewChrom = [NewChrom(1:rndi(1)-1) NewChrom(rndi(1)+1:end)];
NewChrom = [NewChrom(1:rndi(2)-1), el, NewChrom(rndi(2):end)];


end


% End of function
