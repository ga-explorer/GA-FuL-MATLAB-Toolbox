function outMv = fdpMvKv3Mv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(3,:) = -inMv1(6,:) .* inMv2(1,:);
    outMv(5,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(7,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(1,:);
end