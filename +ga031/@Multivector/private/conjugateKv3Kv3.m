function outMv = conjugateKv3Kv3(inMv)
    arguments
        inMv (4,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
end
