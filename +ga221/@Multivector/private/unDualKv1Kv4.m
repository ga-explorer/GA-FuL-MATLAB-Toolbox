function outMv = unDualKv1Kv4(inMv)
    arguments
        inMv (5,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(1,:) = inMv(5,:);
    outMv(2,:) = -inMv(4,:);
    outMv(4,:) = inMv(2,:);
    outMv(5,:) = -inMv(1,:);
end
