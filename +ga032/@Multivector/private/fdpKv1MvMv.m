function outMv = fdpKv1MvMv(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(4,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(1,:) + inMv1(2,:) .* inMv2(7,:) + inMv1(3,:) .* inMv2(8,:);
    outMv(3,:) = -inMv1(1,:) .* inMv2(7,:) + inMv1(2,:) .* inMv2(1,:) + inMv1(3,:) .* inMv2(9,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(8,:) - inMv1(2,:) .* inMv2(9,:) + inMv1(3,:) .* inMv2(1,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(10,:) - inMv1(2,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(12,:) + inMv1(4,:) .* inMv2(1,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(13,:) - inMv1(2,:) .* inMv2(14,:) - inMv1(3,:) .* inMv2(15,:) + inMv1(5,:) .* inMv2(1,:);
    outMv(7,:) = -inMv1(3,:) .* inMv2(17,:);
    outMv(8,:) = inMv1(2,:) .* inMv2(17,:);
    outMv(9,:) = -inMv1(1,:) .* inMv2(17,:);
    outMv(10,:) = inMv1(2,:) .* inMv2(18,:) + inMv1(3,:) .* inMv2(19,:);
    outMv(11,:) = -inMv1(1,:) .* inMv2(18,:) + inMv1(3,:) .* inMv2(20,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(19,:) - inMv1(2,:) .* inMv2(20,:);
    outMv(13,:) = inMv1(2,:) .* inMv2(21,:) + inMv1(3,:) .* inMv2(22,:);
    outMv(14,:) = -inMv1(1,:) .* inMv2(21,:) + inMv1(3,:) .* inMv2(23,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(22,:) - inMv1(2,:) .* inMv2(23,:);
    outMv(16,:) = -inMv1(1,:) .* inMv2(24,:) - inMv1(2,:) .* inMv2(25,:) - inMv1(3,:) .* inMv2(26,:);
    outMv(18,:) = -inMv1(3,:) .* inMv2(27,:);
    outMv(19,:) = inMv1(2,:) .* inMv2(27,:);
    outMv(20,:) = -inMv1(1,:) .* inMv2(27,:);
    outMv(21,:) = -inMv1(3,:) .* inMv2(28,:);
    outMv(22,:) = inMv1(2,:) .* inMv2(28,:);
    outMv(23,:) = -inMv1(1,:) .* inMv2(28,:);
    outMv(24,:) = inMv1(2,:) .* inMv2(29,:) + inMv1(3,:) .* inMv2(30,:);
    outMv(25,:) = -inMv1(1,:) .* inMv2(29,:) + inMv1(3,:) .* inMv2(31,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(30,:) - inMv1(2,:) .* inMv2(31,:);
    outMv(29,:) = -inMv1(3,:) .* inMv2(32,:);
    outMv(30,:) = inMv1(2,:) .* inMv2(32,:);
    outMv(31,:) = -inMv1(1,:) .* inMv2(32,:);
end
