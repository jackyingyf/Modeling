function Sim2P(dt,rep)

M = 0;

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
    
    numberOfZeros = sum(k(:)==0);
    
    if (numberOfZeros >= N - N/log(N))
        m(j) = 1;
    else
        m(j) = 0;
    end
    
    M = M + m(j);
    prob(j) = M/j;
end

numberOfOnes = sum(m)

x = simNum;
y = prob;
plot(x,y,'k');
axis([0 rep -0.1 1.1]);

xlabel('Iteration number');
ylabel('Probability of 1R event for intransitives');
title('Probability of 1R event for intransitive clauses with iteration');


