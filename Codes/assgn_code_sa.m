function [x,fval,exitflag,output] = assgn_code_sa(x0,lb,ub)
% This is an auto generated MATLAB file from Optimization Tool.

% Start with the default options
options = saoptimset;
% Modify options setting
options = saoptimset(options,'Display', 'iter');
options = saoptimset(options,'HybridInterval', 'end');
options = saoptimset(options,'PlotFcns', {  @saplotbestf @saplotbestx @saplotstopping @saplottemperature @saplotx @saplotf });
[x,fval,exitflag,output] = ...
simulannealbnd(@assgn,x0,lb,ub,options);
