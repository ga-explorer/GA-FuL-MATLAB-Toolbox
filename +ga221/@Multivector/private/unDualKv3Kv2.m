function outMv = unDualKv3Kv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(2,:) = -inMv(9,:);
    outMv(3,:) = inMv(8,:);
    outMv(6,:) = -inMv(5,:);
    outMv(9,:) = inMv(2,:);
end
