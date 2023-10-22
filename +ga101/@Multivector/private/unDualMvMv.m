function outMv = unDualMvMv(inMv)
    arguments
        inMv (4,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(2,:) = -inMv(3,:);
    outMv(4,:) = inMv(1,:);
end