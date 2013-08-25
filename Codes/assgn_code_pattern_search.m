function [x,fval,exitflag,output] = assgn_code_pattern_search(x0,TolCon_Data,TolFun_Data)
% This is an auto generated MATLAB file from Optimization Tool.

% Start with the default options
options = psoptimset;
% Modify options setting
options = psoptimset(options,'TolCon', TolCon_Data);
options = psoptimset(options,'TolFun', TolFun_Data);
options = psoptimset(options,'Display', 'iter');
options = psoptimset(options,'PlotFcns', {  @psplotbestf @psplotmeshsize @psplotfuncount @psplotbestx @psplotmaxconstr });
[x,fval,exitflag,output] = ...
patternsearch(@assgn,x0,[],[],[],[],[],[],@constraint,options);
