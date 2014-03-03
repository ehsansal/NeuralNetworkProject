
for i=1:5
    a(:,i)=data_sasser(:,i)/max(data_sasser(:,i));
end
b=a(1:500,:);
net = newff(b',b',10);
net.trainparam.mu_max=1.0000e+010;
net.layers{2}.size=5;
net.inputs{1}.size=5;
net.biasconnect=[0;0];
net.trainParam.epochs = 100;
net.trainParam.max_fail=50;
[net,tr] = train(net,b',b');
y=sim(net,b');
for i=1:500;
    out1=net.IW{1,1}(:,:)*b(i,:)';
    m=mean(out1);
end
for u=1:500;
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
% testing=a(501:601,:);
% for u=1:100;
%     for i=1:100;
%         testout=net.IW{1,1}(:,:)*testing(i,:)';
%         m=mean(testout);
%     end
%     m=mean(testout);
%     for o=1:10
%         if testout(o,1)>m
%             test(o,1)=1;
%         else
%             test(o,1)=0;
%         end
%     end
%     hidntest(u,:)=test';
% end