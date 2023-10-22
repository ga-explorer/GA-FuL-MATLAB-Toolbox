function outMv = cpKv2MvMv(inMv1, inMv2)
    arguments
        inMv1 (3,:) double
        inMv2 (8,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(3,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(4,:) = inMv1(2,:) .* inMv2(2,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(2,:) .* inMv2(5,:);
end
