function outMv = conjugateKv2Kv2(inMv)
    arguments
        inMv (6,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([6, sampleCount], 'double');
    
    outMv(3,:) = -inMv(3,:);
    outMv(5,:) = -inMv(5,:);
    outMv(6,:) = -inMv(6,:);
end
