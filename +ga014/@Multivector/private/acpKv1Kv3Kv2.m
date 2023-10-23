% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpKv1Kv3Kv2(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(3,:) = -inMv1(1,:) .* inMv2(1,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(2,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(3,:);
    outMv(8,:) = -inMv1(1,:) .* inMv2(5,:);
    outMv(9,:) = -inMv1(1,:) .* inMv2(6,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(8,:);
end
