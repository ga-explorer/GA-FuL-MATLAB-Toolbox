function outMv = unDualMvMv(inMv)
    arguments
        inMv (8,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(5,:) = inMv(4,:);
    outMv(8,:) = inMv(1,:);
end
