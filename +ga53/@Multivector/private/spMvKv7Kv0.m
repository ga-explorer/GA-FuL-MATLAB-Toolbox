% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spMvKv7Kv0(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (8,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(248,:) .* inMv2(1,:) + inMv1(249,:) .* inMv2(2,:) + inMv1(250,:) .* inMv2(3,:) + inMv1(251,:) .* inMv2(4,:) + inMv1(252,:) .* inMv2(5,:) - inMv1(253,:) .* inMv2(6,:) - inMv1(254,:) .* inMv2(7,:) - inMv1(255,:) .* inMv2(8,:);
end
