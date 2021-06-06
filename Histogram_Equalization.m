function result_img =Histogram_Equalization(img)
[row,col]=size(img);
max_val=max(img);
max_val=max(max_val);
disp(max_val);
x=zeros(row*col,1);
k=1;
for i=1:row
    for j=1:col
    x(k)=img(i,j);
    k=k+1;
    end
end
y=zeros(256,1);
running_sum=y;
running_sum(:)=0;
for index=1:length(y)
    y(index)= sum(x==index-1);
end
running_sum(1)=y(1);
for i=2:length(y)
    running_sum(i)=running_sum(i-1)+y(i);
end
z=running_sum(256);
for i=1:length(running_sum)
  running_sum(i)=running_sum(i) /z;
  running_sum(i)=round(running_sum(i) * max_val);  
end
for i=1:length(x)
    pixel=x(i);
    x(i)=running_sum(pixel+1); 
end
k=1;
for i=1:row
    for j=1:col
        img(i,j)=x(k);
        k=k+1;
    end
end

result_img=img;
end