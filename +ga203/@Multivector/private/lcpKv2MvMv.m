function outMv = lcpKv2MvMv(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(10,:) .* inMv2(16,:);
    outMv(2,:) = -inMv1(10,:) .* inMv2(24,:);
    outMv(3,:) = -inMv1(10,:) .* inMv2(25,:);
    outMv(4,:) = -inMv1(10,:) .* inMv2(26,:);
    outMv(7,:) = -inMv1(10,:) .* inMv2(29,:);
    outMv(8,:) = -inMv1(10,:) .* inMv2(30,:);
    outMv(9,:) = -inMv1(10,:) .* inMv2(31,:);
    outMv(17,:) = -inMv1(10,:) .* inMv2(32,:);
end
