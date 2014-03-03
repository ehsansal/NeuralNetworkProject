
x=zeros(size(data_raleka));
for k=1:size(data_raleka,1)
    x(k,:)=data_raleka(k,:)>nanmean(data_raleka(k,:));
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x=zeros(size(data_doomjuice));
for k=1:size(data_doomjuice,1)
    x(k,:)=data_doomjuice(k,:)>nanmean(data_doomjuice(k,:));
end

input_neurons=1:5;
output_neurons=1:10;
weights=rand(10,5);
for k=1:10
    weights(k,:)=weights(k,:)/sum(weights(k,:));
end
itrnum=200;
output2=zeros(itrnum,10);
g=.5;
for k=1:itrnum
    tempoutput2=weights*x(k,:)';
    [c,i]=max(tempoutput2);
    output2(k,i)=1;
    weights(i,:)=weights(i,:)+g*(x(k,:)/sum(x(k,:))-weights(i,:));
end