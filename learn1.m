function k = learn1(lex)

n=length(lex);

% z is verb transitivity
% z gets updated upon every new occurrence for a given verb
for i = 1:n
    z(i)=sum(lex(1:i,:))/i;
end

% Percentage of transitivity alarm
k = length(z(z>0.5))/n;


