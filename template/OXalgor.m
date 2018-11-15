function child = OXalgor(parent1,parent2)
    
    N = length(parent1);
    offspring = [];
    %C1 = round(rand*N);
    %C2 = round(rand*N);
    OXinds = sort(randperm(N,2));
    OXbegin = OXinds(1);
    OXend = OXinds(2);
    OXgenes = parent1(OXbegin:OXend);
    
    for k=1:N
        if(~ismember(parent2(k),OXgenes))
           offspring = [offspring parent2(k)];
        end
        if(length(offspring)+1==OXbegin)
           offspring = [offspring OXgenes];
        end
    end
    
child = offspring;
end

