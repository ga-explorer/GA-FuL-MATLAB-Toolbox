% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------


function outMv = CreateScalar(scalarArray)
    arguments
        scalarArray (1,:) {mustBeNumeric}
    end
    
    %CreateScalar Create a scalar multivector from scalar coefficients
    %   Examples: 
    %   s = ga3.CreateScalar(1.2);
    %
    %   This creates a multi-sample multivector containing 5 sampled scalars
    %       sSignal = ga3.CreateScalar([1.2, -1.4, 2.5, 0.25, -1.3]);
    
    outMv = ga002.Multivector(0, size(scalarArray, 2));
    outMv.Data = double(scalarArray);
end
