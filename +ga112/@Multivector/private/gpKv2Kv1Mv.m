function outMv = gpKv2Kv1Mv(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(2,:) = inMv1(4,:) .* inMv2(4,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(1,:) + inMv1(5,:) .* inMv2(4,:);
    outMv(4,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(6,:) .* inMv2(4,:);
    outMv(5,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(2,:) + inMv1(3,:) .* inMv2(1,:);
    outMv(13,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(2,:) + inMv1(5,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(2,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(1,:);
    outMv(15,:) = inMv1(3,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(2,:);
end