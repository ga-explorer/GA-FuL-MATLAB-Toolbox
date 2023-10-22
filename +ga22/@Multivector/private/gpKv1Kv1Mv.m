function outMv = gpKv1Kv1Mv(inMv1, inMv2)
    arguments
        inMv1 (4,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(2,:) .* inMv2(2,:) + inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(4,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(1,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(1,:);
    outMv(8,:) = inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(2,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(1,:);
    outMv(10,:) = inMv1(2,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(2,:);
    outMv(11,:) = inMv1(3,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(3,:);
end