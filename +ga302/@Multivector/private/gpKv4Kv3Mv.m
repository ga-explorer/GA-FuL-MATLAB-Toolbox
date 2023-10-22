function outMv = gpKv4Kv3Mv(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(4,:) .* inMv2(10,:);
    outMv(3,:) = -inMv1(5,:) .* inMv2(10,:);
    outMv(17,:) = -inMv1(3,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(9,:) - inMv1(5,:) .* inMv2(8,:);
    outMv(18,:) = inMv1(2,:) .* inMv2(10,:) - inMv1(4,:) .* inMv2(7,:) + inMv1(5,:) .* inMv2(6,:);
    outMv(21,:) = -inMv1(1,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(3,:);
end