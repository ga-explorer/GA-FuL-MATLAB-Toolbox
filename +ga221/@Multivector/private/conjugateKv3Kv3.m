function outMv = conjugateKv3Kv3(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(2,:) = -inMv(2,:);
    outMv(5,:) = -inMv(5,:);
    outMv(8,:) = inMv(8,:);
    outMv(9,:) = inMv(9,:);
end
