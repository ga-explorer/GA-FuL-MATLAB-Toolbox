function outMv = acpMvKv5Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(9,:) = inMv1(24,:) .* inMv2(1,:);
    outMv(17,:) = -inMv1(16,:) .* inMv2(1,:);
    outMv(20,:) = -inMv1(13,:) .* inMv2(1,:);
    outMv(23,:) = inMv1(10,:) .* inMv2(1,:);
    outMv(27,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(28,:) = -inMv1(5,:) .* inMv2(1,:);
    outMv(31,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(1,:);
end
