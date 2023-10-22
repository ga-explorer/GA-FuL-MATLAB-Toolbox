function outMv = unDualMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(7,:) = -inMv(26,:);
    outMv(17,:) = -inMv(16,:);
    outMv(18,:) = inMv(15,:);
    outMv(21,:) = -inMv(12,:);
    outMv(27,:) = inMv(6,:);
    outMv(28,:) = -inMv(5,:);
    outMv(29,:) = inMv(4,:);
    outMv(32,:) = inMv(1,:);
end
