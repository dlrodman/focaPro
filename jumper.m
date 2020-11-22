
## Author: danro <danro@DESKTOP-AI1C7T7>
## Created: 2020-11-20

% Fiber optic jumper drawing generation test tile
% This file should draw a simple SC-SC jumper and export as a pdf

% set up canvase
% ANSI A size paper, landscape, 279.4 mm x 215.9 mm
% scale = 1:1
figure;
hold on;
orient('landscape');
axis([-139.7 139.7 -107.95 107.95], 'off');

% define coordinates to draw an SC connector
SC1_x = [0 0 15.6 15.6 18 18 22 30.8 31 31.8 31.8 32.7 32.7 32.7 31.8 31.8 31.8 31 31 31 30.8 30.8 30.8 22 22 22 21 21 21 20 20 20 19 19 19];
SC1_y = [0 1 2 2.75 2.75 2.25 2.5 2.5 2 2 0.35 0.35 0 -0.35 -0.35 0.35 -2 -2 2 -2 -2.5 2.5 -2.5 -2.5 2.5 -2.5 -2.438 2.438 -2.438 -2.375 2.375 -2.375 -2.313 2.313 -2.313];

% set location to draw first SC connector
SC1_x = SC1_x + 95;

% draw the first SC connector (color = black)
plot(SC1_x, SC1_y, 'k');

% set location to draw second SC connector
SC1_x = -SC1_x;

% draw the second SC connector (color = black)
plot(SC1_x, SC1_y, 'k');

% print to pdf
print sctest.pdf;

