function outMv = unDualMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(6,:) = inMv(27,:);
    outMv(13,:) = -inMv(20,:);
    outMv(14,:) = inMv(19,:);
    outMv(15,:) = -inMv(18,:);
    outMv(16,:) = inMv(17,:);
    outMv(21,:) = -inMv(12,:);
    outMv(22,:) = inMv(11,:);
    outMv(23,:) = -inMv(10,:);
    outMv(24,:) = -inMv(9,:);
    outMv(25,:) = inMv(8,:);
    outMv(26,:) = -inMv(7,:);
    outMv(28,:) = inMv(5,:);
    outMv(29,:) = -inMv(4,:);
    outMv(30,:) = inMv(3,:);
    outMv(31,:) = -inMv(2,:);
    outMv(32,:) = inMv(1,:);
end
