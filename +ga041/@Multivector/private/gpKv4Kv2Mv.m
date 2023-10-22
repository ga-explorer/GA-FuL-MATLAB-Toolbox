function outMv = gpKv4Kv2Mv(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(7,:) = -inMv1(1,:) .* inMv2(6,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(9,:) = -inMv1(1,:) .* inMv2(4,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(3,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(1,:);
    outMv(13,:) = -inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(6,:);
    outMv(14,:) = inMv1(2,:) .* inMv2(2,:) + inMv1(3,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(6,:);
    outMv(15,:) = -inMv1(2,:) .* inMv2(1,:) + inMv1(4,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(5,:);
    outMv(16,:) = -inMv1(3,:) .* inMv2(1,:) - inMv1(4,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(3,:);
    outMv(28,:) = -inMv1(1,:) .* inMv2(10,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(4,:);
    outMv(29,:) = inMv1(1,:) .* inMv2(9,:) - inMv1(2,:) .* inMv2(6,:) + inMv1(4,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(2,:);
    outMv(30,:) = -inMv1(1,:) .* inMv2(8,:) + inMv1(2,:) .* inMv2(5,:) - inMv1(3,:) .* inMv2(3,:) + inMv1(5,:) .* inMv2(1,:);
    outMv(31,:) = inMv1(1,:) .* inMv2(7,:) - inMv1(2,:) .* inMv2(4,:) + inMv1(3,:) .* inMv2(2,:) - inMv1(4,:) .* inMv2(1,:);
end
