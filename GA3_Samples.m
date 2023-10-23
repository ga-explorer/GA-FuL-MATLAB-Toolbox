%% 
% Start by creating two 3-d Euclidean GA vectors:

v = ga3.CreateVector([1.2, -2.4, 1.3]);
w = ga3.CreateVector([-3.1, -1.6, 2.23]);
%% 
% For any multivector, we can display the LaTeX code as a string:

disp(v.getLaTeX())
disp(w.getLaTeX())
%% 
% Basic operations on multivectors:
%% 
% * Negative, Dual, Un-Dual:

disp(v.negative().getLaTeX())
vn = -v;
disp(vn.getLaTeX())
disp(v.dual().getLaTeX())
disp(v.unDual().getLaTeX())
%% 
% * Norm, Squared Norm, Pseudo-Norm, Squared Pseudo-Norm:
% * Inverse, Pseudo-Inverse:
% * Linear Combinations:
% * GA Products: