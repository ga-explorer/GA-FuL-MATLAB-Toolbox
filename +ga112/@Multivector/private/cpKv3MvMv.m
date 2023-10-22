function outMv = cpKv3MvMv(inMv1, inMv2)
    arguments
        inMv1 (4,:) double
        inMv2 (16,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(8,:) = inMv1(2,:) .* inMv2(14,:) - inMv1(3,:) .* inMv2(13,:);
    outMv(12,:) = -inMv1(2,:) .* inMv2(11,:) + inMv1(3,:) .* inMv2(10,:) - inMv1(4,:) .* inMv2(9,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(9,:) + inMv1(2,:) .* inMv2(7,:) - inMv1(3,:) .* inMv2(6,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(5,:) - inMv1(2,:) .* inMv2(4,:) + inMv1(3,:) .* inMv2(3,:) - inMv1(4,:) .* inMv2(2,:);
end