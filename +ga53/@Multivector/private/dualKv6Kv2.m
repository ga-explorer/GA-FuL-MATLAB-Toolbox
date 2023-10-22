function outMv = dualKv6Kv2(inMv)
    arguments
        inMv (28,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([28, sampleCount], 'double');
    
    outMv(1,:) = -inMv(28,:);
    outMv(2,:) = inMv(27,:);
    outMv(3,:) = -inMv(26,:);
    outMv(4,:) = inMv(25,:);
    outMv(5,:) = -inMv(24,:);
    outMv(6,:) = inMv(23,:);
    outMv(7,:) = -inMv(22,:);
    outMv(8,:) = inMv(21,:);
    outMv(9,:) = -inMv(20,:);
    outMv(10,:) = -inMv(19,:);
    outMv(11,:) = inMv(18,:);
    outMv(12,:) = -inMv(17,:);
    outMv(13,:) = inMv(16,:);
    outMv(14,:) = inMv(15,:);
    outMv(15,:) = -inMv(14,:);
    outMv(16,:) = -inMv(13,:);
    outMv(17,:) = inMv(12,:);
    outMv(18,:) = -inMv(11,:);
    outMv(19,:) = -inMv(10,:);
    outMv(20,:) = inMv(9,:);
    outMv(21,:) = -inMv(8,:);
    outMv(22,:) = inMv(7,:);
    outMv(23,:) = -inMv(6,:);
    outMv(24,:) = inMv(5,:);
    outMv(25,:) = inMv(4,:);
    outMv(26,:) = -inMv(3,:);
    outMv(27,:) = inMv(2,:);
    outMv(28,:) = -inMv(1,:);
end
