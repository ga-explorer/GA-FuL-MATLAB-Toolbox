function outMv = spMvKv8Kv0(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(256,:) .* inMv2(1,:);
end