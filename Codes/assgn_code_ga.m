function [x,fval,exitflag,output,population,score] = assgn_code_ga(nvars,TolFun_Data)

% Start with the default options
options = gaoptimset;
% Modify options setting
options = gaoptimset(options,'TolFun', TolFun_Data);
options = gaoptimset(options,'Display', 'iter');
options = gaoptimset(options,'PlotFcns', {  @gaplotbestf @gaplotbestindiv @gaplotdistance @gaplotexpectation @gaplotgenealogy @gaplotrange @gaplotscorediversity @gaplotscores @gaplotselection @gaplotstopping @gaplotmaxconstr });
[x,fval,exitflag,output,population,score] = ...
ga(@assgn,nvars,[],[],[],[],[],[],@constraint,[],options);
