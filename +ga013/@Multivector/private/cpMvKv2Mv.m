function outMv = cpMvKv2Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (6,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(3,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(4,:) = -inMv1(2,:) .* inMv2(2,:);
    outMv(5,:) = -inMv1(2,:) .* inMv2(4,:);
    outMv(8,:) = inMv1(6,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(1,:);
    outMv(10,:) = inMv1(6,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(1,:);
    outMv(11,:) = inMv1(7,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(2,:);
    outMv(15,:) = -inMv1(12,:) .* inMv2(4,:) + inMv1(13,:) .* inMv2(2,:) - inMv1(14,:) .* inMv2(1,:);
end
