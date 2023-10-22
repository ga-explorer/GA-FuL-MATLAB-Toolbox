function outMv = conjugateMvMv(inMv)
    arguments
        inMv (8,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = -inMv(2,:);
end
