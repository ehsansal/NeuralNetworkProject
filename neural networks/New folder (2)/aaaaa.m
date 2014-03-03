g=c(:,100);
for i=1:10
    for j=1:5
    hn1(i,1)=sum(net.IW{1,1}(i,j)*g(j,1));
    end
end