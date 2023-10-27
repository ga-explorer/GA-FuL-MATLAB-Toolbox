% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spKv7MvKv0(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (256,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(248,:) + inMv1(2,:) .* inMv2(249,:) + inMv1(3,:) .* inMv2(250,:) + inMv1(4,:) .* inMv2(251,:) + inMv1(5,:) .* inMv2(252,:) - inMv1(6,:) .* inMv2(253,:) - inMv1(7,:) .* inMv2(254,:) - inMv1(8,:) .* inMv2(255,:);
end
