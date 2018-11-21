% SUS.M          (Stochastic Universal Sampling)
%
% This function performs selection with STOCHASTIC UNIVERSAL SAMPLING.
%
% Syntax:  NewChrIx = sus(FitnV, Nsel)
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


function NewChrIx = tournament(FitnV,Nsel);

k = 3;
NewChrIx = zeros(Nsel,1);

    for currmember = 1:Nsel
        
        selectedind = randperm(length(FitnV),k);
        selected = FitnV(selectedind);
        [~,I] = max(selected);
        winnerInd = selectedind(I);
        NewChrIx(currmember) = winnerInd;
        
    end


end



% End of function
