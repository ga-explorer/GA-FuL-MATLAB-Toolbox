function outMv = reverseKv1Kv1(inMv)
    arguments
        inMv (2,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([2, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = inMv(2,:);
end