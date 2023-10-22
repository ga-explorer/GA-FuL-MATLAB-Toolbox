function outMv = unDualKv3Kv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(1,:) = -inMv(10,:);
    outMv(3,:) = inMv(8,:);
    outMv(5,:) = -inMv(6,:);
    outMv(8,:) = inMv(3,:);
end
