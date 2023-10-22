function outMv = unDualMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(4,:) = inMv(29,:);
    outMv(8,:) = -inMv(25,:);
    outMv(9,:) = inMv(24,:);
    outMv(12,:) = -inMv(21,:);
    outMv(15,:) = inMv(18,:);
    outMv(17,:) = -inMv(16,:);
    outMv(19,:) = inMv(14,:);
    outMv(20,:) = -inMv(13,:);
    outMv(22,:) = -inMv(11,:);
    outMv(23,:) = inMv(10,:);
    outMv(26,:) = -inMv(7,:);
    outMv(27,:) = inMv(6,:);
    outMv(28,:) = -inMv(5,:);
    outMv(30,:) = inMv(3,:);
    outMv(31,:) = -inMv(2,:);
    outMv(32,:) = inMv(1,:);
end
