%% Initialization
% Make sure the current folder in MATLAB is the GA-FuL toolbox folder
% Always start your work with this
clc;
gafulInit;

% The initializer script gafulInit.m creates 3 GA multivector processors:
% - vga: All the basis vectors have unit signature (square to +1), there is no limit on the number of basis vectors.
% - pga: The first basis vector has zero signature, all remaining basis vectors have unit signature.
% - cga: The first basis vector has -1 signature, all remaining basis vectors have unit signature.

% You can also define your awn multivector processor using the 
% gafulGetProcessor function, for example a GA with first two basis vectors 
% having -1 signature, the 3rd basis vector has zero signature, and all 
% remaining basis vectors have +1 signature.
ga = gafulGetProcessor(2, 1);

% You can use any number of processors together in the same script, there 
% is no need for any initialization procedures or any significant overhead 
% creating multivector processors.

%% Constructing Multivectors
% You can use some methods of the multivector processor to create vectors, 
% then apply GA operations to construct higher-grade k-vectors and 
% multivectors. For example:

% Define two vectors using VGA
clc;
v1 = vga.Vector([1, 2, 4]);
v2 = vga.Vector([-2.3, 2.2, -1.5]);

% Display the vectors
disp2(v1, 'v1');
disp2(v2, 'v2');

% Create a simple bivector (a 2-blade)
bv = v1.Op(v2);

disp2(bv, 'v1 ^ v2');

% Create a rotor from the bivector
r = bv.BladeExp();

disp2(r, 'exp(v1 ^ v2)');

% You can parse some text to create a multivector like this example:
a = vga.Parse("-1.2 - 1<1,2> + 3.233<2> - 1<1,2> + 0.2<>");
disp2(a, 'a');

% Each term like "1<1,2>" or "3.233<2>" is a real number multiplied by a 
% basis blade given as a list of zero-based basis vector indices 1,2,3,... 
% The terms are parsed and summed to form a multivector within the used GA. 
% Scalar terms can be written either as "0.2<>" or "0.2". 
% 
% You can also 
% extract specific parts of multivectors like in the following example:
clc;
a = vga.Parse("-1.2 + 3.2<2> + 3.2<3> - 2.1<1,2> - 3.7<2,3> - 5.6<2,3,5>");

disp2(a, 'Full multivector');

disp2(a.GetScalarPart(), 'Scalar part');
disp2(a.GetVectorPart(), 'Vector part');
disp2(a.GetBivectorPart(), 'Bivector part');
disp2(a.GetKVectorPart(3), '3-vector part');
disp2(a.GetEvenPart(), 'Even part');
disp2(a.GetOddPart(), 'Odd part');

% You can access individual scalars of a multivector easily:
disp2(mvcoef(a, [2,3,5]), 'Scalar coefficient of basis blade <2,3,5>')

% You can also convert a multivector or k-vector into a dense array and 
% back, perhaps after doing matrix processing in MATLAB:
a1 = double(a.MultivectorToArray1D(32));
b = vga.Multivector(2 * a1);
disp2(a, 'Multivector');
disp2(a1, 'Equivalent array');
disp2(b, 'Modified multivector');
disp2(' ');

a = a.GetBivectorPart();
a1 = double(a.BivectorToArray1D(10));
b = vga.Bivector(0.5 * a1);
disp2(a, 'Bivector');
disp2(a1, 'Equivalent array');
disp2(b, 'Modified bivector');

% You can define some useful basis blades for working with 5D CGA:
defineBasisCGA5;

% Also 4D CGA basis is available:
% defineBasisCGA4;

% Display a CGA multivector using a CGA-specific display functions:
v = [2, -1.3, -3.22];
vc = eo + v(1) * e1 + v(2) * e2 + v(3) * e3 + 0.5 * sum(v.^2) * ei;

% Display using null vector basis
dispCGA(vc, 'vc');
latexCGA(vc, 'vc');
disp(' ');

% Display using orthogonal vector basis
dispCGAorth(vc, 'vc');
latexCGAorth(vc, 'vc');
disp(' ');

% Although the GA-FuL library is mainly designed for efficiently handling 
% sparse multivectors, it can also handle large dense vectors and bivectors 
% easily (up to hundreds of scalar components), higher grade dense 
% k-vectors may require much memory and processing time:
u1 = vga.Vector(rand(1, 500));
u2 = vga.Vector(rand(1, 500));
u3 = vga.Vector(rand(1, 500));

u4 = u3.Lcp(u1.Op(u2));

u12Array = double(u4.VectorToArray1D())';

%% Operations on Multivectors

a = vga.Parse("-1.2 + 3.2<1> + 1.5<2> - 0.2<3> - 2.1<1,2> - 3.7<1,3> + 4.7<2,3> - 5.6<1,2,3>");
b = vga.Parse("2.5 + 3<1> - 2.6<2> - 2.2<3> + 3.2<1,2> - 1.1<1,3> + 2<2,3> + 3.6<1,2,3>");

disp2(a, 'a');
disp2(b, 'b');

disp2(a.Gp(b), 'Geometric Product');
disp2(a.Op(b), 'Outer Product');
disp2(a.Sp(b), 'Scalar Product');
disp2(a.Lcp(b), 'Left-Contraction Product');
disp2(a.Rcp(b), 'Right-Contraction Product');
disp2(a.Fdp(b), 'Dot Product');
disp2(a.Hip(b), 'Inner Product');
disp2(a.Cp(b), 'Commutator Product');
disp2(a.Acp(b), 'Anti-Commutator Product');
disp2(' ');

disp2(a + b, 'Addition'); % Also: a.Add(b);
disp2(a - b, 'Subtraction'); % Also: a.Subtract(b);
disp2(a.Norm(), 'Norm');
disp2(a.NormSquared(), 'Squared norm');
disp2(a.DivideByNorm(), 'Divide by norm (Normalize)');
disp2(a.DivideByNormSquared(), 'Divide by squared norm');
disp2(4 * a, 'Times scalar'); % Also: a.Times(4);
disp2(a / 4, 'Divide by scalar'); % Also: a.Divide(4);
disp2(' ');

disp2(-a, 'Negative'); % Also: a.Negative();
disp2(a.GradeInvolution(), 'Grade involution');
disp2(a.Reverse(), 'Reverse');
disp2(a.CliffordConjugate(), 'Clifford conjugate');
disp2(a.Conjugate(), 'Conjugate');
disp2(a.GetBivectorPart().VersorInverse(), 'Inverse');
disp2(a.Dual(3), 'Dual');
disp2(a.UnDual(3), 'Un-dual');
disp2(' ');

% Subspace Operations
a = vga.Vector([1.2, -2, 1.5]);
b = vga.Bivector([1, 1, 1]);

disp2(a.ReflectDirectOnDirect(b), 'Reflect direct blade on another direct blade');
disp2(a.ReflectDirectOnDual(b), 'Reflect direct blade on a dual blade');
disp2(a.ReflectDualOnDirect(b, 3), 'Reflect dual blade on a direct blade; must specify dimension of GA space');
disp2(a.ReflectDualOnDual(b), 'Reflect dual blade on another dual blade');
disp2(a.ProjectOn(b, true), 'Project blade on another blade');
disp2(a.RejectOnBivector(b), 'Reject vector on a 2-blade');
