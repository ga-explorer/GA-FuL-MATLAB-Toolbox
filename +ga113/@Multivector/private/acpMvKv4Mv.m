function outMv = acpMvKv4Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(9,:) = inMv1(13,:) .* inMv2(2,:);
    outMv(11,:) = inMv1(13,:) .* inMv2(3,:);
    outMv(12,:) = inMv1(13,:) .* inMv2(4,:);
    outMv(20,:) = -inMv1(21,:) .* inMv2(4,:) + inMv1(22,:) .* inMv2(3,:) - inMv1(24,:) .* inMv2(2,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(29,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(31,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(32,:) = inMv1(2,:) .* inMv2(5,:) - inMv1(3,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(1,:);
end