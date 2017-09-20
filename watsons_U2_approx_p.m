function [p,U2]=watsons_U2_approx_p(A1,A2)
%
% [p,U2]=watsons_U2_approx_p(A1,A2)
%
% Computes approximate p values for a given value of U2, a statistic
% relating to the differences in distribution between two samples of
% circular data. This function uses the approximation suggested by Watson
% (1961).
%
% Inputs:
% A1, A2:   vectors containing angles (in degrees or radians, the unit does
%           not matter)
%
% Outputs:
% p:        probability that the two samples come from the same
%           distribution
% U2_obs:   observed value of Watson's U2 statistic
%
% References:
% Watson GS. Goodness-of-fit tests on a circle. II.
% Biometrika 1962;49(1/2):57-63.
%
% pierre.megevand@gmail.com
%
% See also WATSONS_U2

U2=watsons_U2(A1,A2);

p=2*exp(-19.74*U2);
p(p>1)=1;

