function outMv = fdpKv7Kv6Kv1(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (28,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(7,:) - inMv1(2,:) .* inMv2(13,:) - inMv1(3,:) .* inMv2(18,:) - inMv1(4,:) .* inMv2(22,:) - inMv1(5,:) .* inMv2(25,:) + inMv1(6,:) .* inMv2(27,:) + inMv1(7,:) .* inMv2(28,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(6,:) + inMv1(2,:) .* inMv2(12,:) + inMv1(3,:) .* inMv2(17,:) + inMv1(4,:) .* inMv2(21,:) + inMv1(5,:) .* inMv2(24,:) - inMv1(6,:) .* inMv2(26,:) + inMv1(8,:) .* inMv2(28,:);
    outMv(3,:) = -inMv1(1,:) .* inMv2(5,:) - inMv1(2,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(16,:) - inMv1(4,:) .* inMv2(20,:) - inMv1(5,:) .* inMv2(23,:) - inMv1(7,:) .* inMv2(26,:) - inMv1(8,:) .* inMv2(27,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(4,:) - inMv1(2,:) .* inMv2(10,:) - inMv1(3,:) .* inMv2(15,:) - inMv1(4,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(23,:) - inMv1(7,:) .* inMv2(24,:) - inMv1(8,:) .* inMv2(25,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(3,:) + inMv1(2,:) .* inMv2(9,:) + inMv1(3,:) .* inMv2(14,:) - inMv1(5,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(20,:) + inMv1(7,:) .* inMv2(21,:) + inMv1(8,:) .* inMv2(22,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(14,:) + inMv1(5,:) .* inMv2(15,:) - inMv1(6,:) .* inMv2(16,:) - inMv1(7,:) .* inMv2(17,:) - inMv1(8,:) .* inMv2(18,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(3,:) .* inMv2(8,:) - inMv1(4,:) .* inMv2(9,:) - inMv1(5,:) .* inMv2(10,:) + inMv1(6,:) .* inMv2(11,:) + inMv1(7,:) .* inMv2(12,:) + inMv1(8,:) .* inMv2(13,:);
    outMv(8,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(3,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(3,:) + inMv1(5,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(7,:);
end
