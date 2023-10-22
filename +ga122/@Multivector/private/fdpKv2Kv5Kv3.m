function outMv = fdpKv2Kv5Kv3(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(3,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(4,:) = -inMv1(7,:) .* inMv2(1,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(1,:);
end