% Mohammad Asif Zaman
% Oct. 8-9, 2018
% Logspace colorbar contour plot
% =========================================================================
% This kind of plots are useful to get more resolution in contour plots
% when most of the intensity is focused in a narrow region.
% =========================================================================
% yout = log_contour(x,y,Z)
% Input arguments: x and y are 1d space variables
%                  Z is the function Z(x,y) that will be plotted
%                  tick_spacing = spacing between ticks in decades
%
% Assumes the Z(x,y) to be positive non-zero function.


function yout = log_contour(x,y,Z,tick_spacing)

eps_my = 1e-30;

lgZ = log10(abs(Z)+eps_my);
% mn = min(Z(:));
% mx = max(Z(:));

mn_lg = min(lgZ(:));
mx_lg = max(lgZ(:));

% no_of_ticks = 6;

% ctcks = linspace(round(mn_lg),round(mx_lg),no_of_ticks);
% ctcks = round(mn_lg):1:round(mx_lg);
ctcks = round(mn_lg):tick_spacing:round(mx_lg);

contourf(x,y,lgZ,40,'linestyle','none');
cb = colorbar('YTick',ctcks,'YTickLabel',10.^ctcks);
caxis([min(ctcks) max(ctcks)]);


set(cb, 'YTickLabel', cellstr(num2str(reshape(get(cb, 'YTick'),[],1),'10^{%d}')) )


