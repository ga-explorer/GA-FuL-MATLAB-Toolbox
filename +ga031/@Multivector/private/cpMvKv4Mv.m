function outMv = cpMvKv4Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(5,:) = inMv1(12,:) .* inMv2(1,:);
    outMv(13,:) = -inMv1(4,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(15,:) = -inMv1(2,:) .* inMv2(1,:);
end