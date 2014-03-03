b=data_clear(1:500,:)'/1000;
net = newff(b,b,10);
net.layers{2}.size=5;
net.trainParam.epochs = 20;
net.trainParam.max_fail=30;
[net,tr] = train(net,b,b);
y=sim(net,b);
for i=1:5
    for k=1:5
        for j=1:10;
            CI(i,k)=sum(net.IW{1,1}(j,i).*net.LW{2,1}(k,j)');
        end
    end
end

for u=1:500;
    for u=1:500;
        out1=net.IW{1,1}(:,:)*b(:,u);
        m=mean(out1);
    end
    m=mean(out1);
    for o=1:10
        if out1(o,1)>m
            out1(o,1)=1;
        else
            out1(o,1)=0;
        end
    end
    hidn(u,:)=out1';
end




