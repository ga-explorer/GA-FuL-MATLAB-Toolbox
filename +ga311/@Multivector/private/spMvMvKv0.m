function outMv = spMvMvKv0(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(2,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(8,:) + inMv1(5,:) .* inMv2(5,:) + inMv1(10,:) .* inMv2(10,:) - inMv1(12,:) .* inMv2(12,:) + inMv1(19,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(6,:) + inMv1(13,:) .* inMv2(13,:) - inMv1(15,:) .* inMv2(15,:) + inMv1(22,:) .* inMv2(22,:) - inMv1(16,:) .* inMv2(16,:) + inMv1(24,:) .* inMv2(24,:) - inMv1(26,:) .* inMv2(26,:) - inMv1(30,:) .* inMv2(30,:);
end
