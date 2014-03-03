net = newff(c,c,10);
net.trainParam.epochs = 500;
[net,tr] = train(net,c,c);
net = newff(c',c',10);
net.trainParam.epochs = 500;
[net,tr] = train(net,c',c');
y=sim(net,c')
IW
net.IW
net.IW{1,1}
net.LW{1,1}
net.LW{2,1}
for i=1:5
net.IW{1,1}(:,1).*net.LW{2,1}(1,:)
net.IW{1,1}(:,1)
net.LW{2,1}(1,:)
net.IW{1,1}(:,1).*net.LW{2,1}(1,:)'
sum(net.IW{1,1}(:,1).*net.LW{2,1}(1,:)')
sum(net.IW{1,1}(:,3).*net.LW{2,1}(3,:)')
sum(net.IW{1,1}(:,4).*net.LW{2,1}(4,:)')
sum(net.IW{1,1}(:,4).*net.LW{2,1}(1,:)')
sum(net.IW{1,1}(:,1).*net.LW{2,1}(3,:)')
sum(net.IW{1,1}(:,1).*net.LW{2,1}(2,:)')
sum(net.IW{1,1}(:,1).*net.LW{2,1}(5,:)')