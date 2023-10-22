function outMv = cliffordConjugateKv6Kv6(inMv)
    arguments
        inMv (28,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([28, sampleCount], 'double');
    
    outMv(1,:) = -inMv(1,:);
    outMv(2,:) = -inMv(2,:);
    outMv(3,:) = -inMv(3,:);
    outMv(4,:) = -inMv(4,:);
    outMv(5,:) = -inMv(5,:);
    outMv(6,:) = -inMv(6,:);
    outMv(7,:) = -inMv(7,:);
    outMv(8,:) = -inMv(8,:);
    outMv(9,:) = -inMv(9,:);
    outMv(10,:) = -inMv(10,:);
    outMv(11,:) = -inMv(11,:);
    outMv(12,:) = -inMv(12,:);
    outMv(13,:) = -inMv(13,:);
    outMv(14,:) = -inMv(14,:);
    outMv(15,:) = -inMv(15,:);
    outMv(16,:) = -inMv(16,:);
    outMv(17,:) = -inMv(17,:);
    outMv(18,:) = -inMv(18,:);
    outMv(19,:) = -inMv(19,:);
    outMv(20,:) = -inMv(20,:);
    outMv(21,:) = -inMv(21,:);
    outMv(22,:) = -inMv(22,:);
    outMv(23,:) = -inMv(23,:);
    outMv(24,:) = -inMv(24,:);
    outMv(25,:) = -inMv(25,:);
    outMv(26,:) = -inMv(26,:);
    outMv(27,:) = -inMv(27,:);
    outMv(28,:) = -inMv(28,:);
end