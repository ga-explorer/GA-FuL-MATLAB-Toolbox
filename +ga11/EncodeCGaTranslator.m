% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------


function outMv = EncodeCGaTranslator(scalarArray)
    arguments
        scalarArray {mustBeNumeric}
    end
    
    %EncodeCGaTranslator Create a CGA translator from the input Euclidean vectors
    %   Examples: 
    %   The following calls are equivalent:
    %       v = ga41.EncodeCGaTranslator([1.2, -3.1, 2.4]);
    %       v = ga41.EncodeCGaTranslator([1.2; -3.1; 2.4]);
    %
    %   This creates a multi-sample multivector containing 2 sampled CGA translators
    %       vSignal = ga41.EncodeCGaTranslator([1.2; -3.1; 2.4, 0; -1.4; 1.2]);
    
    t = ga11.EncodeEGaVector(scalarArray);
    outMv = ga11.EncodeScalar(1) + t.op(ga11.ei()).op(ga11.EncodeScalar(-0.5));
end
