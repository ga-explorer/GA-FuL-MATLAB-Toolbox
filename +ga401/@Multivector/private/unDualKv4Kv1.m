function outMv = unDualKv4Kv1(inMv)
    arguments
        inMv (5,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(1,:) = inMv(5,:);
end
