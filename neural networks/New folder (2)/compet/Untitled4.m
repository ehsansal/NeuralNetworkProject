
x=zeros(size(data_raleka));
temp=nanmean(data_raleka);
for k=1:size(data_raleka,1)
    x(k,:)=data_raleka(k,:)>temp;
end

input_neurons=1:5;
output_neurons=1:10;
weights=rand(10,5);
for k=1:10
    weights(k,:)=weights(k,:)/sum(weights(k,:));
end
itrnum=200;
output1=zeros(itrnum,10);
g=.5;
for k=1:itrnum
    tempoutput1=weights*x(k,:)';
    [c,i]=max(tempoutput1);
    output1(k,i)=1;
    weights(i,:)=weights(i,:)+g*(x(k,:)/sum(x(k,:))-weights(i,:));
end