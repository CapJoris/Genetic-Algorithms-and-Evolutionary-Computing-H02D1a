function x = gradDesc3D(func,x0,mut,N)
mu0 = 0.02;
delta = 0.005;%difference caused by Delta should be larger than noise
scale = exp(-3*(0:N-1)/N);
x = x0;
    for t = 1:N
        mu = mu0*scale(t);%reduce jump size after a while
        curr = func(mut,x(1),x(2),x(3));
        V1 = curr-func(mut,x(1)+delta,x(2),x(3));
        V2 = curr-func(mut,x(1),x(2)+delta,x(3));
        V3 = curr-func(mut,x(1),x(2),x(3)+delta);
        negGradDir = [V1,V2,V3];
        negGradDir = negGradDir/norm(negGradDir);
        x = x + mu*negGradDir;
    end
end