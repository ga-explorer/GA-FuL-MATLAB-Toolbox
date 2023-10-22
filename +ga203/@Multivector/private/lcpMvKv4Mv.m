
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpMvKv4Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(7,:) = -inMv1(16,:) .* inMv2(3,:);
    outMv(8,:) = -inMv1(16,:) .* inMv2(4,:);
    outMv(9,:) = -inMv1(16,:) .* inMv2(5,:);
    outMv(17,:) = -inMv1(5,:) .* inMv2(1,:) - inMv1(6,:) .* inMv2(2,:);
    outMv(18,:) = -inMv1(6,:) .* inMv2(3,:);
    outMv(19,:) = -inMv1(6,:) .* inMv2(4,:);
    outMv(20,:) = -inMv1(6,:) .* inMv2(5,:);
    outMv(21,:) = inMv1(5,:) .* inMv2(3,:);
    outMv(22,:) = inMv1(5,:) .* inMv2(4,:);
    outMv(23,:) = inMv1(5,:) .* inMv2(5,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(29,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(31,:) = inMv1(1,:) .* inMv2(5,:);
end
