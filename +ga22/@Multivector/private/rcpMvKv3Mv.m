function outMv = rcpMvKv3Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(12,:) .* inMv2(1,:) - inMv1(13,:) .* inMv2(2,:) + inMv1(14,:) .* inMv2(3,:) + inMv1(15,:) .* inMv2(4,:);
    outMv(2,:) = inMv1(16,:) .* inMv2(4,:);
    outMv(3,:) = -inMv1(16,:) .* inMv2(3,:);
    outMv(4,:) = -inMv1(16,:) .* inMv2(2,:);
    outMv(5,:) = inMv1(16,:) .* inMv2(1,:);
end