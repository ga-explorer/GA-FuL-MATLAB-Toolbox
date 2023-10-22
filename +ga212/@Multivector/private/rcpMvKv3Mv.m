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
    
    outMv(1,:) = inMv1(24,:) .* inMv2(8,:);
    outMv(3,:) = -inMv1(29,:) .* inMv2(8,:);
    outMv(4,:) = -inMv1(30,:) .* inMv2(8,:);
    outMv(9,:) = inMv1(32,:) .* inMv2(8,:);
end