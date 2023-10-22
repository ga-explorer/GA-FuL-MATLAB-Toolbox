function outMv = unDualMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(16,:) = inMv(17,:);
    outMv(24,:) = -inMv(9,:);
    outMv(25,:) = inMv(8,:);
    outMv(26,:) = -inMv(7,:);
    outMv(29,:) = -inMv(4,:);
    outMv(30,:) = inMv(3,:);
    outMv(31,:) = -inMv(2,:);
    outMv(32,:) = inMv(1,:);
end
