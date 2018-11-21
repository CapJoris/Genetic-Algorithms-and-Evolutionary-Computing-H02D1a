function child = OXalgor(parent1,parent2)
    
    N = length(parent1);
    offspring = [];
    %C1 = round(rand*N);
    %C2 = round(rand*N);
    OXinds = sort(randperm(N,2));
    OXbegin = OXinds(1);
    OXend = OXinds(2);
    OXgenes = parent1(OXbegin:OXend);
    lookupArray = zeros(N,1);
    lookupArray(OXgenes) = 1;
    currlen = 0;
    offspring = zeros(1,N);
    for k=1:N
        if(currlen+1==OXbegin)
           offspring(currlen+1:currlen+length(OXgenes)) = OXgenes;
           currlen = currlen + length(OXgenes);
        end
        if(~lookupArray(parent2(k)))%Much faster than checking if element in
           offspring(currlen+1) = parent2(k);
           currlen = currlen+1;
        end
    end
    if(currlen+1==OXbegin)
          offspring(currlen+1:currlen+length(OXgenes)) = OXgenes;
          currlen = currlen + length(OXgenes);
    end
child = offspring;
end

