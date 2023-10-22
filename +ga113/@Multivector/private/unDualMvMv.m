function outMv = unDualMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(20,:) = -inMv(13,:);
    outMv(27,:) = inMv(6,:);
    outMv(31,:) = -inMv(2,:);
    outMv(32,:) = inMv(1,:);
end