function outMv = rcpMvKv3Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(5,:) = -inMv1(27,:) .* inMv2(1,:);
    outMv(6,:) = -inMv1(28,:) .* inMv2(1,:);
    outMv(16,:) = inMv1(32,:) .* inMv2(1,:);
end
