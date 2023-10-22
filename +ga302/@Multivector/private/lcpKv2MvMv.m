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
    
    outMv(1,:) = -inMv1(6,:) .* inMv2(12,:) - inMv1(9,:) .* inMv2(15,:) - inMv1(10,:) .* inMv2(16,:);
    outMv(2,:) = -inMv1(6,:) .* inMv2(19,:) - inMv1(9,:) .* inMv2(22,:) - inMv1(10,:) .* inMv2(24,:);
    outMv(3,:) = -inMv1(6,:) .* inMv2(20,:) - inMv1(9,:) .* inMv2(23,:) - inMv1(10,:) .* inMv2(25,:);
    outMv(4,:) = -inMv1(10,:) .* inMv2(26,:);
    outMv(5,:) = inMv1(9,:) .* inMv2(26,:);
    outMv(6,:) = -inMv1(6,:) .* inMv2(26,:);
    outMv(7,:) = -inMv1(6,:) .* inMv2(27,:) - inMv1(9,:) .* inMv2(28,:) - inMv1(10,:) .* inMv2(29,:);
    outMv(8,:) = -inMv1(10,:) .* inMv2(30,:);
    outMv(9,:) = -inMv1(10,:) .* inMv2(31,:);
    outMv(10,:) = inMv1(9,:) .* inMv2(30,:);
    outMv(11,:) = inMv1(9,:) .* inMv2(31,:);
    outMv(13,:) = -inMv1(6,:) .* inMv2(30,:);
    outMv(14,:) = -inMv1(6,:) .* inMv2(31,:);
    outMv(17,:) = -inMv1(10,:) .* inMv2(32,:);
    outMv(18,:) = inMv1(9,:) .* inMv2(32,:);
    outMv(21,:) = -inMv1(6,:) .* inMv2(32,:);
end
