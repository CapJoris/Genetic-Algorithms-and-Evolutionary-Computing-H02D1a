% low level function for TSP mutation
% reciprocal exchange : two random cities in a tour are swapped
% Representation is an integer specifying which encoding is used
%	1 : adjacency representation
%	2 : path representation
%

function NewChrom = swapinversion(OldChrom,Representation);

NewChrom=OldChrom;


rndi = sort(randperm(length(NewChrom),2));

invboi=flip(NewChrom(rndi(1):rndi(2)));
NewChrom(rndi(1):rndi(2)) = [];
ins = randperm(length(NewChrom),1);
NewChrom = [NewChrom(1:ins) invboi NewChrom(ins+1:end)];

end


% End of function
