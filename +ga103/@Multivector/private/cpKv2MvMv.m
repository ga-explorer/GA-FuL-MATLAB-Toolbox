function outMv = cpKv2MvMv(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (16,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(2,:) = inMv1(4,:) .* inMv2(5,:);
    outMv(3,:) = inMv1(5,:) .* inMv2(5,:);
    outMv(4,:) = inMv1(6,:) .* inMv2(5,:);
    outMv(6,:) = -inMv1(4,:) .* inMv2(10,:) + inMv1(5,:) .* inMv2(9,:);
    outMv(7,:) = -inMv1(4,:) .* inMv2(11,:) + inMv1(6,:) .* inMv2(9,:);
    outMv(8,:) = -inMv1(5,:) .* inMv2(11,:) + inMv1(6,:) .* inMv2(10,:);
    outMv(12,:) = inMv1(4,:) .* inMv2(15,:) - inMv1(5,:) .* inMv2(14,:) + inMv1(6,:) .* inMv2(13,:);
end
