% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv1Kv4Mv(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (5,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(17,:) = -inMv1(4,:) .* inMv2(1,:) - inMv1(5,:) .* inMv2(2,:);
    outMv(18,:) = inMv1(3,:) .* inMv2(1,:) - inMv1(5,:) .* inMv2(3,:);
    outMv(19,:) = -inMv1(2,:) .* inMv2(1,:) - inMv1(5,:) .* inMv2(4,:);
    outMv(20,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(5,:) .* inMv2(5,:);
    outMv(21,:) = inMv1(3,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(3,:);
    outMv(22,:) = -inMv1(2,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(4,:);
    outMv(23,:) = -inMv1(1,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(5,:);
    outMv(24,:) = -inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(4,:);
    outMv(25,:) = -inMv1(1,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(5,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(4,:) + inMv1(2,:) .* inMv2(5,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(5,:) - inMv1(2,:) .* inMv2(4,:) + inMv1(3,:) .* inMv2(3,:) - inMv1(4,:) .* inMv2(2,:) + inMv1(5,:) .* inMv2(1,:);
end
