function outMv = unDualMvMv(inMv)
    arguments
        inMv (8,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(7,:) = -inMv(2,:);
    outMv(8,:) = inMv(1,:);
end
