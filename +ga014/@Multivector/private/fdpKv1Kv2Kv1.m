% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpKv1Kv2Kv1(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(1,:) .* inMv2(1,:);
    outMv(3,:) = -inMv1(1,:) .* inMv2(2,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(4,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(7,:);
end
