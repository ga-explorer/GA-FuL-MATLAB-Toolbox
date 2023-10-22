function outMv = dualKv3Kv1(inMv)
    arguments
        inMv (4,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(1,:) = -inMv(4,:);
    outMv(2,:) = inMv(3,:);
    outMv(3,:) = inMv(2,:);
    outMv(4,:) = -inMv(1,:);
end
