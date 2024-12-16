function Sim1Pmix(dt,rep)

M1 = 0;
M2 = 0;
M3 = 0;

for j = 1:rep
    simNum(j) = j;
    lex1 = zeros(dt(1,1),1);
    hit1 = randsample(dt(1,1),dt(1,2));
    lex1(hit1) = 1;
    k1(j) = learn1(lex1);
    M1 = M1 + k1(j);
    a1(j) = M1/j;
    
    lex2 = zeros(dt(2,1),1);
    hit2 = randsample(dt(2,1),dt(2,2));
    lex2(hit2) = 1;
    k2(j) = learn1(lex2);
    M2 = M2 + k2(j);
    a2(j) = M2/j;
    
    lex3 = zeros(dt(3,1),1);
    hit3 = randsample(dt(3,1),dt(3,2));
    lex3(hit3) = 1;
    k3(j) = learn1(lex3);
    M3 = M3 + k3(j);
    a3(j) = M3/j;
end

x = simNum;
y1 = k1; 
y2 = k2;
y3 = k3;
plot(x,y1,x,y2,x,y3,'k');
axis([0 rep -0.1 0.1]);

xlabel('Iteration number');
ylabel('Percentage of transitivity alarms');
title('Percentage of transitivity alarms given 1R event for intransitives with iteration');
