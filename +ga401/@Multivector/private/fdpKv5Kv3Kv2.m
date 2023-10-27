% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpKv5Kv3Kv2(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (10,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(10,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(9,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(7,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(4,:);
end
