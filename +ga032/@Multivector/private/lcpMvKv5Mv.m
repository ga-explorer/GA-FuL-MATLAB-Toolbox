function outMv = lcpMvKv5Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(16,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(24,:) = -inMv1(9,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(26,:) = -inMv1(7,:) .* inMv2(1,:);
    outMv(29,:) = -inMv1(4,:) .* inMv2(1,:);
    outMv(30,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(31,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(1,:);
end
