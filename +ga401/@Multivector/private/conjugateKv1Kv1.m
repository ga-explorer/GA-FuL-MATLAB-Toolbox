function outMv = conjugateKv1Kv1(inMv)
    arguments
        inMv (5,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(2,:) = inMv(2,:);
    outMv(3,:) = inMv(3,:);
    outMv(4,:) = inMv(4,:);
    outMv(5,:) = inMv(5,:);
end
