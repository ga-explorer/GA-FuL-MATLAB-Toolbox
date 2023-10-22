function outMv = lcpKv1MvMv(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv1(5,:) .* inMv2(6,:);
    outMv(2,:) = -inMv1(5,:) .* inMv2(13,:);
    outMv(3,:) = -inMv1(5,:) .* inMv2(14,:);
    outMv(4,:) = -inMv1(5,:) .* inMv2(15,:);
    outMv(5,:) = -inMv1(5,:) .* inMv2(16,:);
    outMv(7,:) = inMv1(5,:) .* inMv2(21,:);
    outMv(8,:) = inMv1(5,:) .* inMv2(22,:);
    outMv(9,:) = inMv1(5,:) .* inMv2(23,:);
    outMv(10,:) = inMv1(5,:) .* inMv2(24,:);
    outMv(11,:) = inMv1(5,:) .* inMv2(25,:);
    outMv(12,:) = inMv1(5,:) .* inMv2(26,:);
    outMv(17,:) = -inMv1(5,:) .* inMv2(28,:);
    outMv(18,:) = -inMv1(5,:) .* inMv2(29,:);
    outMv(19,:) = -inMv1(5,:) .* inMv2(30,:);
    outMv(20,:) = -inMv1(5,:) .* inMv2(31,:);
    outMv(27,:) = inMv1(5,:) .* inMv2(32,:);
end
