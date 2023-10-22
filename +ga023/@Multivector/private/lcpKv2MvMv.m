function outMv = lcpKv2MvMv(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(7,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(17,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(18,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(21,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(27,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(28,:);
    outMv(16,:) = -inMv1(1,:) .* inMv2(29,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(32,:);
end