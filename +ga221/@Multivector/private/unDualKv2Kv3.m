function outMv = unDualKv2Kv3(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(1,:) = -inMv(10,:);
    outMv(3,:) = inMv(8,:);
    outMv(4,:) = -inMv(7,:);
    outMv(6,:) = -inMv(5,:);
    outMv(7,:) = inMv(4,:);
    outMv(10,:) = -inMv(1,:);
end
