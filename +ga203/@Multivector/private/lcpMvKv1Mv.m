function outMv = lcpMvKv1Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv1(5,:) .* inMv2(4,:) + inMv1(6,:) .* inMv2(5,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(4,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(5,:);
end
