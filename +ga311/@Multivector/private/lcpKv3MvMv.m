function outMv = lcpKv3MvMv(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv1(3,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(22,:) + inMv1(8,:) .* inMv2(24,:) - inMv1(10,:) .* inMv2(26,:);
    outMv(2,:) = inMv1(10,:) .* inMv2(30,:);
    outMv(3,:) = inMv1(3,:) .* inMv2(27,:) + inMv1(6,:) .* inMv2(28,:) + inMv1(8,:) .* inMv2(29,:) + inMv1(10,:) .* inMv2(31,:);
    outMv(4,:) = inMv1(8,:) .* inMv2(30,:);
    outMv(5,:) = -inMv1(6,:) .* inMv2(30,:);
    outMv(6,:) = inMv1(3,:) .* inMv2(30,:);
    outMv(7,:) = -inMv1(10,:) .* inMv2(32,:);
    outMv(9,:) = inMv1(8,:) .* inMv2(32,:);
    outMv(11,:) = -inMv1(6,:) .* inMv2(32,:);
    outMv(14,:) = inMv1(3,:) .* inMv2(32,:);
end
