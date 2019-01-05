%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NIND=1000;		% Number of individuals
MAXGEN=1500;		% Maximum no. of generations
PRECI=1;		% Precision of variables
ELITIST=0.1;    % percentage of the elite population
GGAP=1-ELITIST;		% Generation gap
STOP_PERCENTAGE=.95;    % percentage of equal fitness individuals for stopping
PR_CROSS=.80;     % probability of crossover
PR_MUT=.30;       % probability of mutation
LOCALLOOP=1;      % local loop removal
CROSSOVER = 'OX';  % default crossover operator
MUTATION = 'inversion';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%normalizer=/max([data(:,1);data(:,2)])
% load the data sets and start with first dataset
data = load('datasets/belgiumtour.tsp');
x=data(:,1);y=data(:,2);
NVAR=size(data,1);
N=1;
besttot =[];meantot =[];worsttot=[];gentot=[];paths={};
tic
for n=1:N
    [best, meanie, worst, gen, path] = run_tsp(x, y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, CROSSOVER, MUTATION, LOCALLOOP);
    besttot = [besttot; best];
    meantot = [meantot; meanie];
    worsttot = [worsttot; worst];
    paths{n} = path;
    n
end

[bestbest,pind] = min(min(besttot,[],2));
bestpath = paths{pind};
besttot = mean(besttot);meantot = mean(meantot);worsttot = mean(worsttot);
toc
%%
close all
semilogy([besttot',meantot',worsttot'])
%ylim([0,10])
legend('Mean of Best','Mean of Mean','Mean of Worst')
title('Convergence behavior of Genetic Algorithm')
ylabel('Distance')
xlabel('Generation')
figure
hold on
plot(bestpath(:,1),bestpath(:,2))
plot(bestpath(:,1),bestpath(:,2),'ko-','MarkerFaceColor',[66, 134, 244]/255)
title('Best found path')