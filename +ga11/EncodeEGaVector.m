% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------


function outMv = EncodeEGaVector(scalarArray)
    arguments
        scalarArray {mustBeNumeric}
    end
    
    %EncodeEGaVector Create a EGA vector from the input Euclidean coordinates
    %   Examples: 
    %   The following calls are equivalent:
    %       v = ga41.EncodeEGaVector([1.2, -3.1, 2.4]);
    %       v = ga41.EncodeEGaVector([1.2; -3.1; 2.4]);
    %
    %   This creates a multi-sample multivector containing 2 sampled EGA vectors
    %       vSignal = ga41.EncodeEGaVector([1.2; -3.1; 2.4, 0; -1.4; 1.2]);
    
    size1 = size(scalarArray);
    
    if (length(size1) == 2 && size1(1) == 1 && size1(2) == 0)
        outMv = ga11.Multivector(1, [0; 0; double(scalarArray')]);

        return;
    end

    if (length(size1) ~= 2 || size1(1) ~= 0)
        error('Incorrect input size');
    end
    
    outMv = ga11.Multivector(1, [zeros(2, size1(2)); x]);
end
