clear; clc; close all

% Slade Brooks
% spbrooks4@gmail.com
% LED Background Thing Image Processing Test
% committing code to github with neither direction nor magnitude

% initialize colors
colormap = [];

% read images
I = imread("edgeexplosion.jpg");
%J = imread("midexplosion.jpg");

% get colors around the edge of the image (start top left and go cw)
% top edge
for i = 1:size(I, 2)
    colormap(i, 1) = I(1, i, 1);
    colormap(i, 2) = I(1, i, 2);
    colormap(i, 3) = I(1, i, 3);
end
% right side

% how to get color from colormap
%color1 = colormap(1, [1,2,3]);

% do this but better idk
x = [0, 1, 1, 0];
y = [0, 0, 1, 1];
x1 = [1, 2, 2, 1];
figure(1);
fill(x, y, (colormap(1, [1,2,3]) /255))
hold on
fill(x1, y, (colormap(759, [1,2,3]) /255))

% display images
%figure(1);
%imshow(I);
%figure(2);
%imshow(J);