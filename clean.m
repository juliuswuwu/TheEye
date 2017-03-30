function cleaned = clean(pic)
img = pic;
% Start by converting to black and white obviously
img = rgb2gray(img);
img = imbinarize(img, 0.5);
img = imopen(img,strel('disk',7));
img = im2double(img);
img = imresize(img,[20 20]);
cleaned = img;