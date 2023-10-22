function outMv = conjugateKv2Kv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(3,:) = -inMv(3,:);
    outMv(5,:) = -inMv(5,:);
    outMv(6,:) = -inMv(6,:);
    outMv(8,:) = -inMv(8,:);
    outMv(9,:) = -inMv(9,:);
    outMv(10,:) = -inMv(10,:);
end
