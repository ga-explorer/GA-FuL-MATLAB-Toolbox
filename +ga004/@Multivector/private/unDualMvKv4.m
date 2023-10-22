function outMv = unDualMvKv4(inMv)
    arguments
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
end
