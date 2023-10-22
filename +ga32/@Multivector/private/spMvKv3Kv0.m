function outMv = spMvKv3Kv0(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(17,:) .* inMv2(1,:) - inMv1(18,:) .* inMv2(2,:) + inMv1(19,:) .* inMv2(3,:) + inMv1(20,:) .* inMv2(4,:) - inMv1(21,:) .* inMv2(5,:) + inMv1(22,:) .* inMv2(6,:) + inMv1(23,:) .* inMv2(7,:) + inMv1(24,:) .* inMv2(8,:) + inMv1(25,:) .* inMv2(9,:) - inMv1(26,:) .* inMv2(10,:);
end
