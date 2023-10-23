% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv3MvMv(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(17,:) + inMv1(2,:) .* inMv2(18,:) + inMv1(3,:) .* inMv2(19,:) + inMv1(4,:) .* inMv2(20,:);
    outMv(2,:) = -inMv1(4,:) .* inMv2(27,:);
    outMv(3,:) = inMv1(3,:) .* inMv2(27,:);
    outMv(4,:) = -inMv1(2,:) .* inMv2(27,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(27,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(28,:) + inMv1(2,:) .* inMv2(29,:) + inMv1(3,:) .* inMv2(30,:) + inMv1(4,:) .* inMv2(31,:);
    outMv(13,:) = -inMv1(4,:) .* inMv2(32,:);
    outMv(14,:) = inMv1(3,:) .* inMv2(32,:);
    outMv(15,:) = -inMv1(2,:) .* inMv2(32,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(32,:);
end
