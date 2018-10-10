clear all;
close all;
clc;
clf;

x = linspace(-1.5,1.5,31);
y = linspace(-1.5,1.5,31);
[X,Y] = meshgrid(x,y);

Z = exp(-X.^2 - Y.^2);
tick_spacing = 1;

log_contour(x,y,Z,tick_spacing)