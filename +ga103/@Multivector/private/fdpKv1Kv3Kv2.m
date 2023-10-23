% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpKv1Kv3Kv2(inMv1, inMv2)
    arguments
        inMv1 (4,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([6, sampleCount], 'double');
    
    outMv(1,:) = inMv1(4,:) .* inMv2(2,:);
    outMv(2,:) = inMv1(4,:) .* inMv2(3,:);
    outMv(3,:) = inMv1(4,:) .* inMv2(4,:);
end
