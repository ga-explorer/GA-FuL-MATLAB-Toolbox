function outMv = unDualKv2Kv3(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(3,:) = inMv(8,:);
    outMv(4,:) = -inMv(7,:);
    outMv(10,:) = -inMv(1,:);
end
