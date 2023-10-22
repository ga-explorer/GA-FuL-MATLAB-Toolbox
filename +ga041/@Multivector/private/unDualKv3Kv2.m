function outMv = unDualKv3Kv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(7,:) = -inMv(4,:);
    outMv(8,:) = inMv(3,:);
    outMv(9,:) = -inMv(2,:);
    outMv(10,:) = inMv(1,:);
end
