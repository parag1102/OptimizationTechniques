function [x,fval,exitflag,output] = assgn_code_sa_pattern_search(x0,lb,ub)
% This is an auto generated MATLAB file from Optimization Tool.

% Start with the default options
options = saoptimset;
% Modify options setting
options = saoptimset(options,'Display', 'off');
options = saoptimset(options,'HybridFcn', {  @patternsearch [] });
options = saoptimset(options,'HybridInterval', 'end');
options = saoptimset(options,'PlotFcns', {  @saplotbestf @saplotbestx @saplotstopping @saplottemperature @saplotx @saplotf });
[x,fval,exitflag,output] = ...
simulannealbnd(@assgn,x0,lb,ub,options);
