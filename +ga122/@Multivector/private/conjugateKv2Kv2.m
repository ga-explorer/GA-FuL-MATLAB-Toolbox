function outMv = conjugateKv2Kv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(1,:) = -inMv(1,:);
    outMv(7,:) = inMv(7,:);
    outMv(8,:) = inMv(8,:);
end
