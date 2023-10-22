function outMv = conjugateKv2Kv2(inMv)
    arguments
        inMv (6,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([6, sampleCount], 'double');
    
    outMv(2,:) = inMv(2,:);
    outMv(4,:) = inMv(4,:);
    outMv(6,:) = -inMv(6,:);
end
