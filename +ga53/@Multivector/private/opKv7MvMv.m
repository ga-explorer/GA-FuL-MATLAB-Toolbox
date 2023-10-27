% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = opKv7MvMv(inMv1, inMv2)
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
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(248,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(249,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(250,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(251,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(252,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(253,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(254,:) = inMv1(7,:) .* inMv2(1,:);
    outMv(255,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(256,:) = inMv1(1,:) .* inMv2(9,:) - inMv1(2,:) .* inMv2(8,:) + inMv1(3,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(6,:) + inMv1(5,:) .* inMv2(5,:) - inMv1(6,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(2,:);
end
