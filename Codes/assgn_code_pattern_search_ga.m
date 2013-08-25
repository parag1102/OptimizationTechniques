function [x,fval,exitflag,output] = assgn_code_pattern_search_ga(x0,lb,ub)
% This is an auto generated MATLAB file from Optimization Tool.

% Start with the default options
options = psoptimset;
% Modify options setting
options = psoptimset(options,'SearchMethod', {  @searchga [] [] });
options = psoptimset(options,'Display', 'iter');
options = psoptimset(options,'PlotFcns', {  @psplotbestf @psplotmeshsize @psplotfuncount @psplotbestx @psplotmaxconstr });
[x,fval,exitflag,output] = ...
patternsearch(@assgn,x0,[],[],[],[],lb,ub,[],options);
