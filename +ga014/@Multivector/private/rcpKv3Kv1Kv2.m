function outMv = rcpKv3Kv1Kv2(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(3,:) = -inMv1(1,:) .* inMv2(1,:);
    outMv(5,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(6,:) = -inMv1(3,:) .* inMv2(1,:);
    outMv(8,:) = -inMv1(5,:) .* inMv2(1,:);
    outMv(9,:) = -inMv1(6,:) .* inMv2(1,:);
    outMv(10,:) = -inMv1(8,:) .* inMv2(1,:);
end