function outMv = fdpKv2Kv3Kv1(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(7,:) .* inMv2(5,:);
    outMv(3,:) = -inMv1(7,:) .* inMv2(6,:);
    outMv(4,:) = -inMv1(7,:) .* inMv2(8,:);
end
