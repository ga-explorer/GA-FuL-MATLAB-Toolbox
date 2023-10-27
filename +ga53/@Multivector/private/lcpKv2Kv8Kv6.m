% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv2Kv8Kv6(inMv1, inMv2)
    arguments
        inMv1 (28,:) double
        inMv2 (1,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([28, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(28,:) .* inMv2(1,:);
    outMv(2,:) = inMv1(27,:) .* inMv2(1,:);
    outMv(3,:) = -inMv1(26,:) .* inMv2(1,:);
    outMv(4,:) = inMv1(25,:) .* inMv2(1,:);
    outMv(5,:) = inMv1(24,:) .* inMv2(1,:);
    outMv(6,:) = -inMv1(23,:) .* inMv2(1,:);
    outMv(7,:) = inMv1(22,:) .* inMv2(1,:);
    outMv(8,:) = -inMv1(21,:) .* inMv2(1,:);
    outMv(9,:) = inMv1(20,:) .* inMv2(1,:);
    outMv(10,:) = -inMv1(19,:) .* inMv2(1,:);
    outMv(11,:) = -inMv1(18,:) .* inMv2(1,:);
    outMv(12,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(13,:) = -inMv1(16,:) .* inMv2(1,:);
    outMv(14,:) = -inMv1(15,:) .* inMv2(1,:);
    outMv(15,:) = inMv1(14,:) .* inMv2(1,:);
    outMv(16,:) = inMv1(13,:) .* inMv2(1,:);
    outMv(17,:) = -inMv1(12,:) .* inMv2(1,:);
    outMv(18,:) = inMv1(11,:) .* inMv2(1,:);
    outMv(19,:) = -inMv1(10,:) .* inMv2(1,:);
    outMv(20,:) = -inMv1(9,:) .* inMv2(1,:);
    outMv(21,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(22,:) = -inMv1(7,:) .* inMv2(1,:);
    outMv(23,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(24,:) = -inMv1(5,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(26,:) = -inMv1(3,:) .* inMv2(1,:);
    outMv(27,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(28,:) = -inMv1(1,:) .* inMv2(1,:);
end
