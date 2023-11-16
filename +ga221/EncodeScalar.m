% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------


function outMv = EncodeScalar(scalarArray)
    arguments
        scalarArray (1,:) {mustBeNumeric}
    end
    
    %EncodeScalar Create a scalar multivector from scalar coefficients
    %   Examples: 
    %   s = ga3.EncodeScalar(1.2);
    %
    %   This creates a multi-sample multivector containing 5 sampled scalars
    %       sSignal = ga3.EncodeScalar([1.2, -1.4, 2.5, 0.25, -1.3]);
    
    outMv = ga221.Multivector(0, double(scalarArray));
end
