function outMv = lcpKv2MvKv0(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (16,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
end
