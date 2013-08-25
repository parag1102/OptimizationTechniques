function [x,fval,exitflag,output,lambda,grad,hessian] = assgn_code(x0)

% Start with the default options
options = optimset;
% Modify options setting
options = optimset(options,'Display', 'iter');
options = optimset(options,'PlotFcns', {  @optimplotx @optimplotfunccount @optimplotfval @optimplotconstrviolation @optimplotstepsize @optimplotfirstorderopt });
options = optimset(options,'Algorithm', 'sqp');
[x,fval,exitflag,output,lambda,grad,hessian] = ...
fmincon(@assgn,x0,[],[],[],[],[],[],@constraint,options);
