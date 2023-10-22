function outMv = cpKv2MvKv1(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([2, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(3,:);
end
