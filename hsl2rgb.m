function [R,G,B]=hsl2rgb( h, s, l)
s=double(s*0.01);
l=double(l*0.01);

if(s==0)
    R=l *255;
    G=l *255;
    B=l *255;
elseif (s~=0)
    if l<0.5
        temp1=l*(1+s);
    elseif l>=0.5
        temp1=(l+s)-(l*s);
    end

temp2=2*l-temp1;
h=h/360;
tr=h+0.333;
tg=h;
tb=h-0.333;
if tr <0 
    tr=tr+1;
end
if tr >1
    tr=tr-1;
end 
if tg <0 
    tg=tg+1;
end
if tg >1
    tg=tg-1;
end
if tb <0 
    tb=tb+1;
end
if tb >1
    tb=tb-1;
end
if 6*tr <1
    R=temp2+(temp1-temp2) * 6 *tr;
elseif 2*tr<1 
    R=temp1;
elseif 3*tr<2
    R=temp2+(temp1-temp2)*(0.66-tr)*6;
else
    R=temp2;
end

if 6*tg <1
    G=temp2+(temp1-temp2) * 6 *tg;
elseif 2*tg<1 
    G=temp1;
elseif 3*tg<2
    G=temp2+(temp1-temp2)*(0.66-tg)*6;
else
    G=temp2;
end
    
    
if 6*tb <1
    B=temp2+(temp1-temp2) * 6 *tb;
elseif 2*tb<1 
    B=temp1;
elseif 3*tb<2
    B=temp2+(temp1-temp2)*(0.66-tb)*6;
else
    B=temp2;
end

R=R*255;
G=G*255;
B=B*255;
end
end