% Main Class
close all; clear;

% Create webcam object cam
cam = webcam;

imfghs = imread('test.png');
% Create axes control.
handleToAxes = axes();
% Get the handle to the image in the axes.
hImage = image(zeros(480,640,'uint8'));
% Reset image magnification. Required if you ever displayed an image
% in the axes that was not the same size as your webcam image.
hold off;
axis auto;
axis on;
% Turn on the live video.
preview(cam, hImage);
hold on
thisBB = [165 90 315 300];
rectangle('Position', [thisBB(1),thisBB(2),thisBB(3),thisBB(4)], 'EdgeColor','r','LineWidth',2 )

%Grab the snap, and 
pause(3);
snap = imcrop(snapshot(cam), thisBB);
figure, imshow(snap);


% background = imopen(img,strel('disk',25));
% Ip = imsubtract(img,background); 
% Ip = imopen(Ip,strel('disk',1)); 
%Threshold to get text
% Ip(Ip < 50) = 0; 
% Ip(Ip > 51) = 255; 
% Ip = imbinarize(Ip, 0.5);
% imshow(Ip);