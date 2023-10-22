function outMv = rcpMvKv1Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(3,:) = inMv1(7,:) .* inMv2(1,:);
    outMv(4,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(5,:) = inMv1(10,:) .* inMv2(1,:);
    outMv(6,:) = inMv1(13,:) .* inMv2(1,:);
    outMv(9,:) = -inMv1(17,:) .* inMv2(1,:);
    outMv(11,:) = -inMv1(18,:) .* inMv2(1,:);
    outMv(12,:) = -inMv1(19,:) .* inMv2(1,:);
    outMv(14,:) = -inMv1(21,:) .* inMv2(1,:);
    outMv(15,:) = -inMv1(22,:) .* inMv2(1,:);
    outMv(16,:) = -inMv1(24,:) .* inMv2(1,:);
    outMv(20,:) = inMv1(27,:) .* inMv2(1,:);
    outMv(23,:) = inMv1(28,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(29,:) .* inMv2(1,:);
    outMv(26,:) = inMv1(30,:) .* inMv2(1,:);
    outMv(31,:) = -inMv1(32,:) .* inMv2(1,:);
end
