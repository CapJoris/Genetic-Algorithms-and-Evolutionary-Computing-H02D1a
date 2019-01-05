% fps.M          (fps)
%
% This function performs selection with fps.
%
% Syntax:  NewChrIx = tournament(FitnV, Nsel)
%
% Input parameters:
%    FitnV     - Column vector containing the fitness values of the
%                individuals in the population.
%    Nsel      - number of individuals to be selected
%
% Output parameters:
%    NewChrIx  - column vector containing the indexes of the selected
%                individuals relative to the original population, shuffled.
%                The new population, ready for mating, can be obtained
%                by calculating OldChrom(NewChrIx,:).


function NewChrIx = fps(FitnV,Nsel)
cum = cumsum(FitnV);
selects = cum(end)*rand(Nsel,1);
NewChrIx = zeros(Nsel,1);
for newmember = 1:Nsel
    i = 1;
    while(cum(i) < selects(newmember))
        i = i+1;
    end
    NewChrIx(newmember) = i;
end
end


