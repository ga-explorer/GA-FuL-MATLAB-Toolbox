% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = cpKv3Kv3Kv2(inMv1, inMv2)
    arguments
        inMv1 (4,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([6, sampleCount], 'double');
    
    outMv(4,:) = -inMv1(1,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(1,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(1,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(2,:) + inMv1(2,:) .* inMv2(1,:);
end
