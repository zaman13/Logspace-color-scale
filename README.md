# Logspace-color-scale
Matlab function for contour plotting with logarithmic color scale


## Function format
yout = log_contour(x,y,Z)
Input arguments: x and y are 1d space variables
                 Z is the function Z(x,y) that will be plotted
                 tick_spacing = spacing between ticks in decades
Assumes the Z(x,y) to be positive non-zero function.
