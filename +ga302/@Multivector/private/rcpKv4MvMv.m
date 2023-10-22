function outMv = rcpKv4MvMv(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(4,:) .* inMv2(26,:);
    outMv(3,:) = -inMv1(5,:) .* inMv2(26,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(12,:) - inMv1(2,:) .* inMv2(15,:) - inMv1(3,:) .* inMv2(16,:);
    outMv(8,:) = -inMv1(4,:) .* inMv2(16,:);
    outMv(9,:) = -inMv1(5,:) .* inMv2(16,:);
    outMv(10,:) = inMv1(4,:) .* inMv2(15,:);
    outMv(11,:) = inMv1(5,:) .* inMv2(15,:);
    outMv(13,:) = -inMv1(4,:) .* inMv2(12,:);
    outMv(14,:) = -inMv1(5,:) .* inMv2(12,:);
    outMv(17,:) = inMv1(1,:) .* inMv2(5,:) + inMv1(2,:) .* inMv2(6,:);
    outMv(18,:) = -inMv1(1,:) .* inMv2(4,:) + inMv1(3,:) .* inMv2(6,:);
    outMv(19,:) = inMv1(4,:) .* inMv2(6,:);
    outMv(20,:) = inMv1(5,:) .* inMv2(6,:);
    outMv(21,:) = -inMv1(2,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(5,:);
    outMv(22,:) = -inMv1(4,:) .* inMv2(5,:);
    outMv(23,:) = -inMv1(5,:) .* inMv2(5,:);
    outMv(24,:) = inMv1(4,:) .* inMv2(4,:);
    outMv(25,:) = inMv1(5,:) .* inMv2(4,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(28,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(29,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(30,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(31,:) = inMv1(5,:) .* inMv2(1,:);
end
