function outMv = unDualMvMv(inMv)
    arguments
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(8,:) = inMv(9,:);
    outMv(12,:) = -inMv(5,:);
    outMv(15,:) = -inMv(2,:);
    outMv(16,:) = inMv(1,:);
end
