function outMv = lcpKv2MvMv(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (16,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(6,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(12,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(13,:);
    outMv(11,:) = -inMv1(1,:) .* inMv2(16,:);
end
