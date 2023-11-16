% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------


function outMv = EncodeVector(scalarArray)
    arguments
        scalarArray {mustBeNumeric}
    end
    
    %EncodeVector Create a vector from scalar coefficients
    %   Examples: 
    %   The following 3 calls are equivalent:
    %       v = ga3.EncodeVector([1.2, -3.1, 2.4]);
    %       v = ga3.EncodeVector([1.2; -3.1; 2.4]);
    %
    %   This creates a multi-sample multivector containing 2 sampled vectors
    %       vSignal = ga3.EncodeVector([1.2; -3.1; 2.4, 0; -1.4; 1.2]);
    
    size1 = size(scalarArray);
    
    if (length(size1) == 2 && size1(1) == 1 && size1(2) == 2)
        outMv = ga2.Multivector(1, double(scalarArray'));
        return;
    end

    if (length(size1) ~= 2 || size1(1) ~= 2)
        error('Incorrect input size');
    end
    
    outMv = ga2.Multivector(1, double(scalarArray));
end
