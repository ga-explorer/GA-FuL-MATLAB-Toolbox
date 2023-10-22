function outMv = fdpKv3Kv5Kv2(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(9,:) .* inMv2(1,:);
    outMv(3,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(6,:) = -inMv1(5,:) .* inMv2(1,:);
    outMv(9,:) = inMv1(2,:) .* inMv2(1,:);
end