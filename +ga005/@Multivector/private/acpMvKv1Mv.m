function outMv = acpMvKv1Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(2,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(4,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(17,:) = inMv1(7,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(2,:) + inMv1(9,:) .* inMv2(1,:);
    outMv(18,:) = inMv1(7,:) .* inMv2(4,:) - inMv1(10,:) .* inMv2(2,:) + inMv1(11,:) .* inMv2(1,:);
    outMv(19,:) = inMv1(8,:) .* inMv2(4,:) - inMv1(10,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(1,:);
    outMv(20,:) = inMv1(9,:) .* inMv2(4,:) - inMv1(11,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(2,:);
    outMv(21,:) = inMv1(7,:) .* inMv2(5,:) - inMv1(13,:) .* inMv2(2,:) + inMv1(14,:) .* inMv2(1,:);
    outMv(22,:) = inMv1(8,:) .* inMv2(5,:) - inMv1(13,:) .* inMv2(3,:) + inMv1(15,:) .* inMv2(1,:);
    outMv(23,:) = inMv1(9,:) .* inMv2(5,:) - inMv1(14,:) .* inMv2(3,:) + inMv1(15,:) .* inMv2(2,:);
    outMv(24,:) = inMv1(10,:) .* inMv2(5,:) - inMv1(13,:) .* inMv2(4,:) + inMv1(16,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(11,:) .* inMv2(5,:) - inMv1(14,:) .* inMv2(4,:) + inMv1(16,:) .* inMv2(2,:);
    outMv(26,:) = inMv1(12,:) .* inMv2(5,:) - inMv1(15,:) .* inMv2(4,:) + inMv1(16,:) .* inMv2(3,:);
    outMv(32,:) = inMv1(27,:) .* inMv2(5,:) - inMv1(28,:) .* inMv2(4,:) + inMv1(29,:) .* inMv2(3,:) - inMv1(30,:) .* inMv2(2,:) + inMv1(31,:) .* inMv2(1,:);
end
