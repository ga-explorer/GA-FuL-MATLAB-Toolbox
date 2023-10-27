% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpMvKv3Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (10,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(9,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(11,:) = -inMv1(2,:) .* inMv2(2,:);
    outMv(12,:) = -inMv1(2,:) .* inMv2(3,:);
    outMv(14,:) = -inMv1(2,:) .* inMv2(5,:);
    outMv(15,:) = -inMv1(2,:) .* inMv2(6,:);
    outMv(16,:) = -inMv1(2,:) .* inMv2(8,:);
    outMv(17,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(18,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(19,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(20,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(21,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(22,:) = inMv1(1,:) .* inMv2(6,:);
    outMv(23,:) = inMv1(1,:) .* inMv2(7,:);
    outMv(24,:) = inMv1(1,:) .* inMv2(8,:);
    outMv(25,:) = inMv1(1,:) .* inMv2(9,:);
    outMv(26,:) = inMv1(1,:) .* inMv2(10,:);
end
