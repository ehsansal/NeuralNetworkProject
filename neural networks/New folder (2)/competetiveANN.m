x=data_raleka;
input_neurons=1:5;
output_neurons=1:10;
weights=rand(10,5);
for k=1:10
    weights(k,:)=weights(k,:)/sum(weights(k,:));
end
itrnum=500;
output1=zeros(itrnum,10);
g=.5;
for k=1:itrnum
    tempoutput1=weights*x(k,:)';
    [c,i]=max(tempoutput1);
    output1(k,i)=1;
    weights(i,:)=weights(i,:)+g*(x(k,:)/sum(x(k,:))-weights(i,:));
end
%%%%%%%%%%%%%%%%%%%%%
x=data_dabberA;
input_neurons=1:5;
output_neurons=1:10;
weights1=rand(10,5);
for k=1:10
    weights1(k,:)=weights1(k,:)/sum(weights1(k,:));
end
itrnum=200;
output2=zeros(itrnum,10);
g=.5;
for k=1:itrnum
    tempoutput2=weights1*x(k,:)';
    [c,i]=max(tempoutput2);
    output2(k,i)=1;
    weights1(i,:)=weights1(i,:)+g*(x(k,:)/sum(x(k,:))-weights1(i,:));
end