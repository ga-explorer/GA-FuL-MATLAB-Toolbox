% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------


function outMv = EncodeCGaPoint(scalarArray)
    arguments
        scalarArray {mustBeNumeric}
    end
    
    %EncodeCGaPoint Create a null CGA vector from the Euclidean coordinates of the point
    %   Examples: 
    %   The following calls are equivalent:
    %       v = ga41.EncodeCGaPoint([1.2, -3.1, 2.4]);
    %       v = ga41.EncodeCGaPoint([1.2; -3.1; 2.4]);
    %
    %   This creates a multi-sample multivector containing 2 sampled CGA null vectors
    %       vSignal = ga41.EncodeCGaPoint([1.2; -3.1; 2.4, 0; -1.4; 1.2]);
    
    size1 = size(scalarArray);
    
    if (length(size1) == 2 && size1(1) == 1 && size1(2) == 3)
        x = double(scalarArray');
        x2 = sum(x .* x);
        en = (1 + x2) * 0.5;
        ep = (1 - x2) * 0.5;

        outMv = ga41.Multivector(1, [en; ep; x]);

        return;
    end

    if (length(size1) ~= 2 || size1(1) ~= 3)
        error('Incorrect input size');
    end
    
    x = double(scalarArray);
    x2 = sum(x .* x);
    en = (1 + x2) * 0.5;
    ep = (1 - x2) * 0.5;

    outMv = ga41.Multivector(1, [en; ep; x]);
end
