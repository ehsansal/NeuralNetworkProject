
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%x=zeros(size(data_doomjuice));
x=zeros(size(data_clear));
for k=1:size(data_clear,1)
    x(k,:)=data_clear(k,:)>nanmean(data_clear(k,:));
end

input_neurons=1:5;
output_neurons=1:10;
weights=rand(10,5);
for k=1:10
    weights(k,:)=weights(k,:)/sum(weights(k,:));
end
itrnum=200;
output3=zeros(itrnum,10);
g=.5;
for k=1:itrnum
    tempoutput3=weights*x(k,:)';
    [c,i]=max(tempoutput3);
    output3(k,i)=1;
    weights(i,:)=weights(i,:)+g*(x(k,:)/sum(x(k,:))-weights(i,:));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=zeros(size(data_dabberA));
for k=1:size(data_dabberA,1)
    x(k,:)=data_dabberA(k,:)>nanmean(data_dabberA(k,:));
end

input_neurons=1:5;
output_neurons=1:10;
weights=rand(10,5);
for k=1:10
    weights(k,:)=weights(k,:)/sum(weights(k,:));
end
itrnum=200;
output4=zeros(itrnum,10);
g=.5;
for k=1:itrnum
    tempoutput4=weights*x(k,:)';
    [c,i]=max(tempoutput4);
    output4(k,i)=1;
    weights(i,:)=weights(i,:)+g*(x(k,:)/sum(x(k,:))-weights(i,:));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=zeros(size(data_debormY));
for k=1:size(data_debormY,1)
    x(k,:)=data_debormY(k,:)>nanmean(data_debormY(k,:));
end

input_neurons=1:5;
output_neurons=1:10;
weights=rand(10,5);
for k=1:10
    weights(k,:)=weights(k,:)/sum(weights(k,:));
end
itrnum=200;
output5=zeros(itrnum,10);
g=.5;
for k=1:itrnum
    tempoutput5=weights*x(k,:)';
    [c,i]=max(tempoutput5);
    output5(k,i)=1;
    weights(i,:)=weights(i,:)+g*(x(k,:)/sum(x(k,:))-weights(i,:));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=zeros(size(data_sasser));
for k=1:size(data_sasser,1)
    x(k,:)=data_sasser(k,:)>nanmean(data_sasser(k,:));
end

input_neurons=1:5;
output_neurons=1:10;
weights=rand(10,5);
for k=1:10
    weights(k,:)=weights(k,:)/sum(weights(k,:));
end
itrnum=200;
output6=zeros(itrnum,10);
g=.5;
for k=1:itrnum
    tempoutput6=weights*x(k,:)';
    [c,i]=max(tempoutput6);
    output6(k,i)=1;
    weights(i,:)=weights(i,:)+g*(x(k,:)/sum(x(k,:))-weights(i,:));
end
