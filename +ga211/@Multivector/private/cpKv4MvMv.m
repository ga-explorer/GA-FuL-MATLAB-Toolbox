function outMv = cpKv4MvMv(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (16,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(3,:) = -inMv1(1,:) .* inMv2(14,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(13,:) = -inMv1(1,:) .* inMv2(4,:);
    outMv(15,:) = inMv1(1,:) .* inMv2(2,:);
end
