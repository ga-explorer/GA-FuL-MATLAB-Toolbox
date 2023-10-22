function outMv = unDualKv1Kv3(inMv)
    arguments
        inMv (4,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(1,:) = -inMv(4,:);
    outMv(2,:) = inMv(3,:);
end
