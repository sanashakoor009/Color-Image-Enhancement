close all



img=double(imread('peppers.tif'))/255;

hsv_img=rgb2hsv(img);
figure,imshow(img);
figure,imshow(hsv_img);
equalized_I=(Histogram_Equalization(round(hsv_img(:,:,2))));
hsv_final=hsv_img;
max_stretch=max(hsv_img(:,:,3));
max_stretch=max(max_stretch);
min_stretch=min(hsv_img(:,:,3));
min_stretch=min(min_stretch);
[row,col]=size(img);
for i=1:row-1
    for j=1:row-1
        temp3=Histogram_stretch(hsv_img(i,j,3),max_stretch,min_stretch);
    end
end
hsv_final(:,:,3)=temp3;
hsv_final(:,:,2)=equalized_I;
rgb=hsv2rgb(hsv_final);
figure,imshow(rgb,[]);
