
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = conjugateKv1Kv1(inMv)
    arguments
        inMv (2,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([2, sampleCount], 'double');
    
    outMv(2,:) = inMv(2,:);
end
