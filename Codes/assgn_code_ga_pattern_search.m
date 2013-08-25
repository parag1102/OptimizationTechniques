function [x,fval,exitflag,output,population,score] = assgn_code_ga_pattern_search(nvars)
% This is an auto generated MATLAB file from Optimization Tool.

% Start with the default options
options = gaoptimset;
% Modify options setting
options = gaoptimset(options,'HybridFcn', {  @patternsearch [] });
options = gaoptimset(options,'Display', 'off');
options = gaoptimset(options,'PlotFcns', {  @gaplotbestf @gaplotbestindiv @gaplotdistance @gaplotrange @gaplotscorediversity @gaplotscores @gaplotselection @gaplotstopping @gaplotmaxconstr });
[x,fval,exitflag,output,population,score] = ...
ga(@assgn,nvars,[],[],[],[],[],[],@constraint,[],options);
