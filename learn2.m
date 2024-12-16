function k = learn2(lex)

% for each verb

n=length(lex);

for i = 1:n
    z(i)=sum(lex(1:i,:))/i;
end

% Percentage of transitivity alarm
k = length(z(z<0.5))/n;



