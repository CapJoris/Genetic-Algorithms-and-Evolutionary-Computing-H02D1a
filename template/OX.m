function OXAlgor = OX(OldChrom, XOVR);
if nargin < 2, XOVR = NaN; end
   
[rows,cols]=size(OldChrom);
   
   maxrows=rows;
   if rem(rows,2)~=0
	   maxrows=maxrows-1;
   end
   
   for row=1:2:maxrows
	
     	% crossover of the two chromosomes
   	% results in 2 offsprings
	if rand<XOVR			% recombine with a given probability
		OXAlgor(row,:) =cross_alternate_edges([OldChrom(row,:);OldChrom(row+1,:)]);
		OXAlgor(row+1,:)=cross_alternate_edges([OldChrom(row+1,:);OldChrom(row,:)]);
	else
		OXAlgor(row,:)=OldChrom(row,:);
		OXAlgor(row+1,:)=OldChrom(row+1,:);
	end
   end

   if rem(rows,2)~=0
	   OXAlgor(rows,:)=OldChrom(rows,:);
end

