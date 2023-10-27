% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------


function outMv = CreateCGaPoint(scalarArray)
    arguments
        scalarArray {mustBeNumeric}
    end
    
    %CreateCGaPoint Create a null CGA vector from the Euclidean coordinates of the point
    %   Examples: 
    %   The following 3 calls are equivalent:
    %       v = ga41.CreateCGaPoint([1.2, -3.1, 2.4]);
    %       v = ga41.CreateCGaPoint([1.2; -3.1; 2.4]);
    %
    %   This creates a multi-sample multivector containing 2 sampled CGA null vectors
    %       vSignal = ga41.CreateCGaPoint([1.2; -3.1; 2.4, 0; -1.4; 1.2]);
    
    size1 = size(scalarArray);
    
    if (length(size1) == 2 && size1(1) == 1 && size1(2) == 0)
        outMv = ga11.Multivector(1, double(scalarArray'));
        return;
    end

    if (length(size1) ~= 2 || size1(1) ~= 0)
        error('Incorrect input size');
    end
    
    x = double(scalarArray');
    y = sum(x .* x) * 0.5;

    outMv = ga11.Multivector(1, double(scalarArray));
end
