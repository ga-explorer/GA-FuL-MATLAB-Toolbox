function outMv = unDualKv1Kv2(inMv)
    arguments
        inMv (3,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([3, sampleCount], 'double');
    
    outMv(1,:) = inMv(3,:);
    outMv(2,:) = -inMv(2,:);
    outMv(3,:) = inMv(1,:);
end
