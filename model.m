function [m] = model(dt)

N = length(dt);

for i = 1:N
    lex = zeros(dt(i,1),1);
    hit = randsample(dt(i,1),dt(i,2));
    lex(hit) = 1;
    k(i) = learn(lex);
end

k;

numberOfZeros = sum(k(:)==0);

if (numberOfZeros >= N - N/log(N))
    m = 1;
else
    m = 0;
end





