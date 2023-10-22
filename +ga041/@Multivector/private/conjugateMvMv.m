function outMv = conjugateMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = -inMv(2,:);
    outMv(3,:) = -inMv(3,:);
    outMv(4,:) = -inMv(4,:);
    outMv(5,:) = -inMv(5,:);
    outMv(7,:) = -inMv(7,:);
    outMv(8,:) = -inMv(8,:);
    outMv(9,:) = -inMv(9,:);
    outMv(10,:) = -inMv(10,:);
    outMv(11,:) = -inMv(11,:);
    outMv(12,:) = -inMv(12,:);
    outMv(17,:) = inMv(17,:);
    outMv(18,:) = inMv(18,:);
    outMv(19,:) = inMv(19,:);
    outMv(20,:) = inMv(20,:);
    outMv(27,:) = inMv(27,:);
end
