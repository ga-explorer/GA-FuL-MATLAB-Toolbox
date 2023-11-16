%% Constructing multivectors
% Start by creating two 3-d Euclidean GA scalars and two vectors:

a = ga3.EncodeScalar(3.5);
b = ga3.EncodeScalar(-1.25);

v = ga3.EncodeVector([1.2, -2.4, 1.3]);
w = ga3.EncodeVector([-3.1, -1.6, 2.23]);
%% 
% Any multivector object has several important properties:

% The Grade of a k-vector, a full multivector returns -1 in this property
v.Grade
% The number of scalars per multivector, this is dependent on the grade and
% GA space dimensions
v.ScalarCount
% The number of samples in this multivector, we will say more about this
% later
v.SampleCount
% The internal data array storing the scalars of this multivector
v.Data
%% Dispalying Multivectors
% For any multivector, we can display the LaTeX code as a string:

a.getLaTeX()
b.getLaTeX()
v.getLaTeX()
w.getLaTeX()
%% Basic Operations on Multivectors
% We list the basic operations on a multivector that is expressed either as 
% a sum of k-vectors $A=\sum_{k=0}^{n}\left\langle A\right\rangle _{k}$ or as 
% a sum of basis blades $A=\sum_{i=0}^{2^{n}-1}a_{i}E_{i}$.
% Negative of a multivector:
% You can call the negative() method to get the negative of a multivector:

v.negative().getLaTeX()
%% 
% You can also use the usual unary munis operator:

vn = -v;
vn.getLaTeX()
% Linear combinations:

s = v * 2 - w * 0.5 + a;
s.getLaTeX()
% Reverse of a multivector $A^{\sim}=\sum_{k=0}^{n}\left(-1\right)^{k(k-1)/2}\left\langle A\right\rangle _{k}$:

v.reverse().getLaTeX()
% Grade involution of a multivector $\hat{A}=\sum_{k=0}^{n}\left(-1\right)^{k}\left\langle A\right\rangle _{k}$:

v.gradeInvolution().getLaTeX()
% Conjugate of a multivector $A^{\dagger}=\sum_{i=0}^{2^{n}-1}\left(-1\right)^{g_{i}r_{i}}a_{i}E_{i}$:
% Here $g_{i}$ is the grade of basis blade $E_{i}$, and $r_{i}$ is the number 
% of basis vectors with signature $-1$ in $E_{i}$.

v.conjugate().getLaTeX()
% Dual of a multivector $A^{*}=A\rfloor I^{-1}$:

v.dual().getLaTeX()
% Un-dual of a multivector $A^{-*}=A\rfloor I$:

v.unDual().getLaTeX()
% Norm of a multivector $\left\Vert A\right\Vert =\sqrt{\left|A\cdot A^{\sim}\right|}$:
% Norm:

v.norm()
%% 
% Squared norm

v.normSquared()
% Pseudo-norm of a multivector $\left\Vert A\right\Vert =\sqrt{\left|A\cdot A^{\dagger}\right|}$:
% Pseudo-norm:

v.pseudoNorm()
%% 
% Squared pseudo-norm:

v.pseudoNormSquared()
% Inverse of a multivector $A^{-1}=\frac{1}{A\cdot A^{\sim}}A^{\sim}$:

v.inverse().getLaTeX()
% Pseudo-inverse of a multivector $A^{+}=\frac{1}{A\cdot A^{\dagger}}A^{\dagger}$:

v.pseudoInverse().getLaTeX()
% Main Products:
% The geometric product:

v.gp(w).getLaTeX()
%% 
% The outer product:

v.op(w).getLaTeX()
%% 
% The scalar product (returns doubles, not multivectors):

v.sp(w)
%% 
% The left-contraction product:

v.lcp(w).getLaTeX()
%% 
% The right-contraction product:

v.rcp(w).getLaTeX()
%% 
% The fat-dot product:

v.fdp(w).getLaTeX()
%% Multivector parts

m = a + v + w.dual();
m.getLaTeX()
% Same as m.getKVectorPart(0).getLaTeX()
m.getScalarPart().getLaTeX()
% Same as m.getKVectorPart(1).getLaTeX()
m.getVectorPart().getLaTeX()
% Same as m.getKVectorPart(2).getLaTeX()
m.getBivectorPart().getLaTeX()
% Same as m.getKVectorPart(3).getLaTeX()
m.getTrivectorPart().getLaTeX()
a.getDataArray()
v.getDataArray()
w.dual().getDataArray()
m.getDataArray()