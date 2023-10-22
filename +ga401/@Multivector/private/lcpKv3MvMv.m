function outMv = lcpKv3MvMv(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(4,:) .* inMv2(20,:) - inMv1(7,:) .* inMv2(23,:) - inMv1(9,:) .* inMv2(25,:) - inMv1(10,:) .* inMv2(26,:);
    outMv(2,:) = inMv1(4,:) .* inMv2(27,:) + inMv1(7,:) .* inMv2(28,:) + inMv1(9,:) .* inMv2(29,:) + inMv1(10,:) .* inMv2(30,:);
    outMv(3,:) = inMv1(10,:) .* inMv2(31,:);
    outMv(4,:) = -inMv1(9,:) .* inMv2(31,:);
    outMv(5,:) = inMv1(7,:) .* inMv2(31,:);
    outMv(6,:) = -inMv1(4,:) .* inMv2(31,:);
    outMv(7,:) = -inMv1(10,:) .* inMv2(32,:);
    outMv(8,:) = inMv1(9,:) .* inMv2(32,:);
    outMv(10,:) = -inMv1(7,:) .* inMv2(32,:);
    outMv(13,:) = inMv1(4,:) .* inMv2(32,:);
end
