for i=1:5
    a(:,i)=data_debormY(:,i)/max(data_debormY(:,i));
end
b=a(1:500,:);
net = newff(b',b',10);
net.layers{2}.size=5;
net.inputs{1}.size=5;
net.biasconnect=[0;0];
net.trainParam.epochs = 500;
net.trainParam.max_fail=30;
[net,tr] = train(net,b',b');
y=sim(net,b');
for i=1:5
    for k=1:5
        for j=1:10;
            CI(i,k)=sum(net.IW{1,1}(j,i).*net.LW{2,1}(k,j)');
        end
    end
end

