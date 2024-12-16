function Sim2P_plot(dt,rep)

M = 0;
N = length(dt);
P = zeros(1,N);

for j = 1:rep
    simNum(j) = j;
    N = length(dt);
    for i = 1:N
        lex = zeros(dt(i,1),1);
        hit = randsample(dt(i,1),dt(i,2));
        lex(hit) = 1;
        k(i) = learn2(lex);
    end
    % 
    
    P = P + k;
    p = P/j;
    
    numberOfZeros = sum(k(:)==0);
    
    if (numberOfZeros >= N - N/log(N))
        m(j) = 1;
    else
        m(j) = 0;
    end
    
    M = M + m(j);
    prob(j) = M/j;
end

p

bar(p)

xlabel('Verb item');
ylabel('Averaged percentage of transitivity alarm');
title('Averaged percentage of transitivity alarm for each verb item');
