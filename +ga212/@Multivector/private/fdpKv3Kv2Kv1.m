function outMv = fdpKv3Kv2Kv1(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(8,:) .* inMv2(10,:);
    outMv(2,:) = -inMv1(2,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(7,:) - inMv1(9,:) .* inMv2(10,:);
    outMv(3,:) = -inMv1(3,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(7,:) - inMv1(10,:) .* inMv2(10,:);
    outMv(4,:) = -inMv1(8,:) .* inMv2(7,:);
    outMv(5,:) = inMv1(8,:) .* inMv2(4,:);
end
