function testrun()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NIND=200;		% Number of individuals
MAXGEN=500;		% Maximum no. of generations
NVAR=26;		% No. of variables
PRECI=1;		% Precision of variables
ELITIST=0.1;    % percentage of the elite population
GGAP=1-ELITIST;		% Generation gap
STOP_PERCENTAGE=.95;    % percentage of equal fitness individuals for stopping
PR_CROSS=.50;     % probability of crossover
PR_MUT=.20;       % probability of mutation
LOCALLOOP=1;      % local loop removal
CROSSOVER = 'OX';  % default crossover operator
MUTATION = 'inversion';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% load the data sets and start with first dataset
data = load(['datasets/rbx711.tsp']);
x=data(:,1)/max([data(:,1);data(:,2)]);y=data(:,2)/max([data(:,1);data(:,2)]);
NVAR=size(data,1);

% load the dataset
x=data(:,1)/max([data(:,1);data(:,2)]);y=data(:,2)/max([data(:,1);data(:,2)]);
%x=data(:,1);y=data(:,2);
NVAR=size(data,1); 
N=1;
besttot =[];meantot =[];worsttot=[];gentot=[];
for n=1:N
    [best mean worst gen] = run_tsp(x, y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, CROSSOVER, MUTATION, LOCALLOOP);
    besttot = [besttot; best'];
    meantot = [meantot; mean'];
    worsttot = [worsttot; worst'];
    gentot = [gentot; (1:gen)'];
end
csvwrite('run.csv',[besttot meantot worsttot gentot]);
end
