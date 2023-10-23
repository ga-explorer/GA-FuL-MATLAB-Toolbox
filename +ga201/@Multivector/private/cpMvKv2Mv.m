% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = cpMvKv2Mv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (3,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(3,:) .* inMv2(1,:) - inMv1(4,:) .* inMv2(2,:);
    outMv(3,:) = -inMv1(4,:) .* inMv2(3,:);
    outMv(4,:) = inMv1(3,:) .* inMv2(3,:);
    outMv(5,:) = -inMv1(6,:) .* inMv2(3,:) + inMv1(7,:) .* inMv2(2,:);
    outMv(6,:) = inMv1(5,:) .* inMv2(3,:) - inMv1(7,:) .* inMv2(1,:);
end
