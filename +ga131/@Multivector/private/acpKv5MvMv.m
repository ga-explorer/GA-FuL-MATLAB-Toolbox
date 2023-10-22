function outMv = acpKv5MvMv(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(5,:) = inMv1(1,:) .* inMv2(28,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(23,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(22,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(21,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(17,:);
    outMv(18,:) = -inMv1(1,:) .* inMv2(15,:);
    outMv(19,:) = inMv1(1,:) .* inMv2(14,:);
    outMv(20,:) = -inMv1(1,:) .* inMv2(13,:);
    outMv(24,:) = -inMv1(1,:) .* inMv2(9,:);
    outMv(25,:) = inMv1(1,:) .* inMv2(8,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(7,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(6,:);
    outMv(29,:) = -inMv1(1,:) .* inMv2(4,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(31,:) = -inMv1(1,:) .* inMv2(2,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(1,:);
end
