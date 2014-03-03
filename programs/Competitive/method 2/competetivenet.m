input_neurons=1:6;
output_neurons=1:10;
weights=rand(10,6);
for k=1:10
    weights(k,:)=weights(k,:)/sum(weights(k,:));
end
itrnum=3000;
output1=zeros(itrnum*500,10);
g=.02;
for p=1:500;
    for k=1:itrnum
        tempoutput1=weights*x(k,:)';
        [c,i]=max(tempoutput1);
        output1(3000*(p-1)+k,i)=1;
        weights(i,:)=weights(i,:)+g*(x(k,:)/sum(x(k,:))-weights(i,:));
    end
end
% for j=1:50
%     
%     test=weights*clean(510+j,:)';       for test.
%     [h,m]=max(test);
%     outputtest(j,m)=1;
% end
