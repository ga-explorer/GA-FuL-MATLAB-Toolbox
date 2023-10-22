function outMv = unDualKv2Kv2(inMv)
    arguments
        inMv (6,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([6, sampleCount], 'double');
    
    outMv(1,:) = -inMv(6,:);
    outMv(2,:) = -inMv(5,:);
    outMv(3,:) = inMv(4,:);
    outMv(4,:) = inMv(3,:);
    outMv(5,:) = -inMv(2,:);
    outMv(6,:) = -inMv(1,:);
end
