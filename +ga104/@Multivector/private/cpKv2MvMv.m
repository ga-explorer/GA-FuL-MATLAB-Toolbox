function outMv = cpKv2MvMv(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(2,:) = inMv1(7,:) .* inMv2(6,:);
    outMv(3,:) = inMv1(8,:) .* inMv2(6,:);
    outMv(4,:) = inMv1(9,:) .* inMv2(6,:);
    outMv(5,:) = inMv1(10,:) .* inMv2(6,:);
    outMv(7,:) = -inMv1(7,:) .* inMv2(14,:) + inMv1(8,:) .* inMv2(13,:);
    outMv(8,:) = -inMv1(7,:) .* inMv2(15,:) + inMv1(9,:) .* inMv2(13,:);
    outMv(9,:) = -inMv1(8,:) .* inMv2(15,:) + inMv1(9,:) .* inMv2(14,:);
    outMv(10,:) = -inMv1(7,:) .* inMv2(16,:) + inMv1(10,:) .* inMv2(13,:);
    outMv(11,:) = -inMv1(8,:) .* inMv2(16,:) + inMv1(10,:) .* inMv2(14,:);
    outMv(12,:) = -inMv1(9,:) .* inMv2(16,:) + inMv1(10,:) .* inMv2(15,:);
    outMv(17,:) = inMv1(7,:) .* inMv2(23,:) - inMv1(8,:) .* inMv2(22,:) + inMv1(9,:) .* inMv2(21,:);
    outMv(18,:) = inMv1(7,:) .* inMv2(25,:) - inMv1(8,:) .* inMv2(24,:) + inMv1(10,:) .* inMv2(21,:);
    outMv(19,:) = inMv1(7,:) .* inMv2(26,:) - inMv1(9,:) .* inMv2(24,:) + inMv1(10,:) .* inMv2(22,:);
    outMv(20,:) = inMv1(8,:) .* inMv2(26,:) - inMv1(9,:) .* inMv2(25,:) + inMv1(10,:) .* inMv2(23,:);
    outMv(27,:) = -inMv1(7,:) .* inMv2(31,:) + inMv1(8,:) .* inMv2(30,:) - inMv1(9,:) .* inMv2(29,:) + inMv1(10,:) .* inMv2(28,:);
end