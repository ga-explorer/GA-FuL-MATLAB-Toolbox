function outMv = unDualKv2Kv2(inMv)
    arguments
        inMv (6,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([6, sampleCount], 'double');
    
    outMv(1,:) = -inMv(6,:);
    outMv(3,:) = inMv(4,:);
    outMv(5,:) = -inMv(2,:);
end
