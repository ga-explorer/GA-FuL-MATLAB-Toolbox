function outMv = acpKv7Kv1Kv6(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (8,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([28, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(7,:) + inMv1(2,:) .* inMv2(8,:);
    outMv(2,:) = -inMv1(1,:) .* inMv2(6,:) + inMv1(3,:) .* inMv2(8,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(8,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(8,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(8,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(8,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(8,:);
    outMv(8,:) = -inMv1(2,:) .* inMv2(6,:) - inMv1(3,:) .* inMv2(7,:);
    outMv(9,:) = inMv1(2,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(7,:);
    outMv(10,:) = -inMv1(2,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(7,:);
    outMv(11,:) = -inMv1(2,:) .* inMv2(3,:) - inMv1(6,:) .* inMv2(7,:);
    outMv(12,:) = inMv1(2,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(7,:);
    outMv(13,:) = -inMv1(2,:) .* inMv2(1,:) - inMv1(8,:) .* inMv2(7,:);
    outMv(14,:) = inMv1(3,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(6,:);
    outMv(15,:) = -inMv1(3,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(6,:);
    outMv(16,:) = -inMv1(3,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(6,:);
    outMv(17,:) = inMv1(3,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(6,:);
    outMv(18,:) = -inMv1(3,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(6,:);
    outMv(19,:) = -inMv1(4,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(5,:);
    outMv(20,:) = -inMv1(4,:) .* inMv2(3,:) - inMv1(6,:) .* inMv2(5,:);
    outMv(21,:) = inMv1(4,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(5,:);
    outMv(22,:) = -inMv1(4,:) .* inMv2(1,:) - inMv1(8,:) .* inMv2(5,:);
    outMv(23,:) = -inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(4,:);
    outMv(24,:) = inMv1(5,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(4,:);
    outMv(25,:) = -inMv1(5,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(4,:);
    outMv(26,:) = inMv1(6,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(3,:);
    outMv(27,:) = -inMv1(6,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(3,:);
    outMv(28,:) = -inMv1(7,:) .* inMv2(1,:) - inMv1(8,:) .* inMv2(2,:);
end