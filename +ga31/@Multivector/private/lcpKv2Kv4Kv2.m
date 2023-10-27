% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv2Kv4Kv2(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (1,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([6, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(6,:) .* inMv2(1,:);
    outMv(2,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(3,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(4,:) = -inMv1(3,:) .* inMv2(1,:);
    outMv(5,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(1,:);
end
