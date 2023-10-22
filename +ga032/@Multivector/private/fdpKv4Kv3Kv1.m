function outMv = fdpKv4Kv3Kv1(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(4,:) = -inMv1(1,:) .* inMv2(1,:);
    outMv(5,:) = -inMv1(2,:) .* inMv2(1,:);
end
