function outMv = lcpKv6Kv6Kv0(inMv1, inMv2)
    arguments
        inMv1 (28,:) double
        inMv2 (28,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:) + inMv1(2,:) .* inMv2(2,:) + inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(5,:) - inMv1(6,:) .* inMv2(6,:) - inMv1(7,:) .* inMv2(7,:) + inMv1(8,:) .* inMv2(8,:) + inMv1(9,:) .* inMv2(9,:) + inMv1(10,:) .* inMv2(10,:) - inMv1(11,:) .* inMv2(11,:) - inMv1(12,:) .* inMv2(12,:) - inMv1(13,:) .* inMv2(13,:) + inMv1(14,:) .* inMv2(14,:) + inMv1(15,:) .* inMv2(15,:) - inMv1(16,:) .* inMv2(16,:) - inMv1(17,:) .* inMv2(17,:) - inMv1(18,:) .* inMv2(18,:) + inMv1(19,:) .* inMv2(19,:) - inMv1(20,:) .* inMv2(20,:) - inMv1(21,:) .* inMv2(21,:) - inMv1(22,:) .* inMv2(22,:) - inMv1(23,:) .* inMv2(23,:) - inMv1(24,:) .* inMv2(24,:) - inMv1(25,:) .* inMv2(25,:) + inMv1(26,:) .* inMv2(26,:) + inMv1(27,:) .* inMv2(27,:) + inMv1(28,:) .* inMv2(28,:);
end