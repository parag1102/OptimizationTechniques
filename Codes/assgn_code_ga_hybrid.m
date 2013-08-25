function [x,fval,exitflag,output,population,score] = assgn_code_ga_hybrid(nvars)
% This is an auto generated MATLAB file from Optimization Tool.

% Start with the default options
options = gaoptimset;
% Modify options setting
options = gaoptimset(options,'HybridFcn', {  @fmincon [] });
options = gaoptimset(options,'Display', 'iter');
options = gaoptimset(options,'PlotFcns', {  @gaplotbestf @gaplotbestindiv @gaplotdistance @gaplotexpectation @gaplotgenealogy @gaplotselection @gaplotstopping @gaplotmaxconstr });
[x,fval,exitflag,output,population,score] = ...
ga(@assgn,nvars,[],[],[],[],[],[],@constraint,[],options);
