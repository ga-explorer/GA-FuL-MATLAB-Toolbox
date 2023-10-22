function outMv = conjugateKv2Kv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(4,:) = inMv(4,:);
    outMv(7,:) = inMv(7,:);
    outMv(10,:) = -inMv(10,:);
end
