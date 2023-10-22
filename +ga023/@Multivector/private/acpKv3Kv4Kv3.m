function outMv = acpKv3Kv4Kv3(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(10,:) = -inMv1(1,:) .* inMv2(3,:) + inMv1(2,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(1,:);
end
