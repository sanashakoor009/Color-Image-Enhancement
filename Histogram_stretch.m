function val=Histogram_stretch(pixel,max,min)
a=double(pixel-min);
b=double(a*255);
c=double(max-min);
d=double(b/c);
d=round(d);
val=d;
%val=round(((pixel-min)*255-0+0)/(max-min));
end