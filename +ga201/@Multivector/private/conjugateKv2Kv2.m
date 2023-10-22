function outMv = conjugateKv2Kv2(inMv)
    arguments
        inMv (3,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([3, sampleCount], 'double');
    
    outMv(3,:) = -inMv(3,:);
end
