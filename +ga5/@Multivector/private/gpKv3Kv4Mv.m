function outMv = gpKv3Kv4Mv(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(2,:) = inMv1(4,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(2,:) + inMv1(9,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(4,:);
    outMv(3,:) = -inMv1(3,:) .* inMv2(1,:) - inMv1(6,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(5,:);
    outMv(4,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(5,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(5,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(1,:) + inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(5,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(5,:);
    outMv(17,:) = -inMv1(8,:) .* inMv2(5,:) + inMv1(9,:) .* inMv2(4,:) - inMv1(10,:) .* inMv2(3,:);
    outMv(18,:) = inMv1(6,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(4,:) + inMv1(10,:) .* inMv2(2,:);
    outMv(19,:) = -inMv1(5,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(3,:) - inMv1(9,:) .* inMv2(2,:);
    outMv(20,:) = inMv1(5,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(3,:) + inMv1(8,:) .* inMv2(2,:);
    outMv(21,:) = -inMv1(3,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(4,:) - inMv1(10,:) .* inMv2(1,:);
    outMv(22,:) = inMv1(2,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(9,:) .* inMv2(1,:);
    outMv(23,:) = -inMv1(2,:) .* inMv2(4,:) + inMv1(3,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(1,:);
    outMv(24,:) = -inMv1(1,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(1,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(3,:) + inMv1(2,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(1,:);
end
