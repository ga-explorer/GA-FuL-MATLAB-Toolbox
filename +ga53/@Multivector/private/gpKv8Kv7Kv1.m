% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv8Kv7Kv1(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (8,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(8,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(7,:);
    outMv(3,:) = -inMv1(1,:) .* inMv2(6,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(5,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(3,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(8,:) = -inMv1(1,:) .* inMv2(1,:);
end
