function outMv = reverseKv2Kv2(inMv)
    arguments
        inMv (1,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv(1,:);
end
