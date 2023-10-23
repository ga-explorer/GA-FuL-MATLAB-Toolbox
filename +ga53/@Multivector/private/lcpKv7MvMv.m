% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv7MvMv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(248,:) + inMv1(2,:) .* inMv2(249,:) + inMv1(3,:) .* inMv2(250,:) + inMv1(4,:) .* inMv2(251,:) + inMv1(5,:) .* inMv2(252,:) - inMv1(6,:) .* inMv2(253,:) - inMv1(7,:) .* inMv2(254,:) - inMv1(8,:) .* inMv2(255,:);
    outMv(2,:) = inMv1(8,:) .* inMv2(256,:);
    outMv(3,:) = -inMv1(7,:) .* inMv2(256,:);
    outMv(4,:) = inMv1(6,:) .* inMv2(256,:);
    outMv(5,:) = inMv1(5,:) .* inMv2(256,:);
    outMv(6,:) = -inMv1(4,:) .* inMv2(256,:);
    outMv(7,:) = inMv1(3,:) .* inMv2(256,:);
    outMv(8,:) = -inMv1(2,:) .* inMv2(256,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(256,:);
end
