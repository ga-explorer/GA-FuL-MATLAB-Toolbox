function outMv = conjugateKv1Kv1(inMv)
    arguments
        inMv (4,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(4,:) = inMv(4,:);
end
