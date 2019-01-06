How to run the program:
To run a simple benchmark of the problem, run benchmark.m, this will run the belgian tour problem with pre configured settings. To change settings or the problem, edit benchmark.m and fill in the desired parameter values.
 
To change which crossover is used replace OX in line 11 with the filename of your crossover. 
To change which mutation is used change line 12 to the desired filename containing the mutation. 
To change which parent selection is open the file run_tsp and in line 61 change 'tournament' to the file containing the parent selection you want to be used. 


The added files of interest are: 
	-Tournament and FPS which are used for our parent selection. 
 	-OX and OXAlgor which are used for the Order Crossover crossover. 
	-NNSol which is our heuristic solver
	-insertion which is our mutation 

The stopping criterion is written inside of run_tsp line 50-57. 
