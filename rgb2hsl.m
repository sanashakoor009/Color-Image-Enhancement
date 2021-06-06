function [H,S,L]=rgb2hsl( r, g, b)

%img=reshape(img,[],3);
%r=img(:,1)/255;
%g=img(:,2)/255;
%b=img(:,3)/255;
r=r/255;
g=g/255;
b=b/255;
temp=[r,g,b];
min_val=min(temp);%min(img(:,1),img(:,2),img(:,3));
max_val=max(temp);%max(img(:,1),img(:,2),img(:,3));

L=(min_val+max_val)/2;

S=0;
H=0;
if(max_val~=min_val)
    if L<0.5
        S=(max_val-min_val)/(max_val+min_val);
    else
        S=(max_val-min_val)/(2-max_val-min_val);
    end

if max_val==r
    H=(g-b)/(max_val-min_val);
elseif max_val==g
    H=2+((b-r)/(max_val-min_val));
elseif max_val==b
    H=4+((r-g)/(max_val-min_val));
end
end
if H <0
    H=H+360;
else
    H=H*60;
    H=round(H);
end
H=H;
L=L;%*100;
S=S;%*100;

end