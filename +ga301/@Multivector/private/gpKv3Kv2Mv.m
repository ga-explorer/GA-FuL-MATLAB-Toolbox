function outMv = gpKv3Kv2Mv(inMv1, inMv2)
    arguments
        inMv1 (4,:) double
        inMv2 (6,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(5,:) - inMv1(3,:) .* inMv2(6,:);
    outMv(3,:) = -inMv1(4,:) .* inMv2(6,:);
    outMv(4,:) = inMv1(4,:) .* inMv2(5,:);
    outMv(5,:) = -inMv1(4,:) .* inMv2(3,:);
    outMv(12,:) = -inMv1(2,:) .* inMv2(6,:) + inMv1(3,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(4,:);
    outMv(13,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(2,:);
    outMv(14,:) = -inMv1(1,:) .* inMv2(5,:) + inMv1(2,:) .* inMv2(3,:) - inMv1(4,:) .* inMv2(1,:);
end