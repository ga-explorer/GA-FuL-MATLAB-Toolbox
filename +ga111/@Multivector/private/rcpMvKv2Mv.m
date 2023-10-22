function outMv = rcpMvKv2Mv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (3,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(1,:) = inMv1(6,:) .* inMv2(2,:);
    outMv(3,:) = -inMv1(8,:) .* inMv2(2,:);
end
