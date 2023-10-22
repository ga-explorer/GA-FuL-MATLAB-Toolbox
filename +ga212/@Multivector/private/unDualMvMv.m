function outMv = unDualMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(9,:) = inMv(24,:);
    outMv(17,:) = -inMv(16,:);
    outMv(20,:) = -inMv(13,:);
    outMv(23,:) = inMv(10,:);
    outMv(27,:) = inMv(6,:);
    outMv(28,:) = -inMv(5,:);
    outMv(31,:) = -inMv(2,:);
    outMv(32,:) = inMv(1,:);
end
