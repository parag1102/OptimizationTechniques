function [x,fval,exitflag,output,lambda,grad,hessian] = assgn_code_interior_point(x0)
% This is an auto generated MATLAB file from Optimization Tool.

% Start with the default options
options = optimset;
% Modify options setting
options = optimset(options,'Display', 'iter');
options = optimset(options,'PlotFcns', {  @optimplotx @optimplotfunccount @optimplotfval @optimplotconstrviolation @optimplotstepsize @optimplotfirstorderopt });
options = optimset(options,'Algorithm', 'interior-point');
[x,fval,exitflag,output,lambda,grad,hessian] = ...
fmincon(@assgn,x0,[],[],[],[],[],[],@constraint,options);
