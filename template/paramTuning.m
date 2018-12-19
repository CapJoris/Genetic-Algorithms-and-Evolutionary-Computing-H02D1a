invRuns = zeros(length(prcross),length(prinv));
j = 1;
for prcross = 0.1:0.05:1
    k = 1;
    for prinv = 0.1:0.05:1
        invRuns(j,k) = testrun('inversion',prcross,prinv);
        k = k+1;
    end
    j = j + 1;
end
save invRuns
minVal = min(min(invRuns));
[cross,inv] = find(invRuns == min(min(invRuns)));
%%
insRuns = zeros(length(prcross),length(prins));
j = 1;
for prcross = 0.1:0.05:1
    k = 1;
    for prins = 0.1:0.05:1
        insRuns(j,k) = testrun('insertion',prcross,prinv);
        k = k+1;
    end
    j = j + 1;
end
save insRuns
minValins = min(min(insRuns));
[cross2,ins] = find(insRuns == min(min(insRuns)));