function outMv = cpMvMvMv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (16,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(6,:) = inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(2,:);
    outMv(7,:) = inMv1(2,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(2,:);
    outMv(8,:) = inMv1(3,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(3,:);
    outMv(9,:) = inMv1(2,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(2,:);
    outMv(10,:) = inMv1(3,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(3,:);
    outMv(11,:) = inMv1(4,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(4,:);
    outMv(16,:) = inMv1(2,:) .* inMv2(15,:) - inMv1(3,:) .* inMv2(14,:) + inMv1(4,:) .* inMv2(13,:) + inMv1(12,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(12,:) - inMv1(13,:) .* inMv2(4,:) + inMv1(14,:) .* inMv2(3,:) - inMv1(15,:) .* inMv2(2,:);
end
