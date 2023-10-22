% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------


function outMv = CreateVector(scalarArray)
    arguments
        scalarArray {mustBeNumeric}
    end
    
    %CreateVector Create a vector from scalar coefficients
    %   Examples: 
    %   The following 3 calls are equivalent:
    %       v = ga3.CreateVector([1.2, -3.1, 2.4]);
    %       v = ga3.CreateVector([1.2; -3.1; 2.4]);
    %
    %   This creates a multi-sample multivector containing 2 sampled vectors
    %       vSignal = ga3.CreateVector([1.2; -3.1; 2.4, 0; -1.4; 1.2]);
    
    size1 = size(scalarArray);
    
    if (length(size1) == 2 && size1(1) == 1 && size1(2) == 5)
        outMv = ga131.Multivector(1, 1);
        outMv.Data = double(scalarArray');
        return;
    end

    if (length(size1) ~= 2 || size1(1) ~= 5)
        error('Incorrect input size');
    end
    
    outMv = ga131.Multivector(1, size(2));
    outMv.Data = double(scalarArray);
end
