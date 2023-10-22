function outMv = unDualMvMv(inMv)
    arguments
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(5,:) = inMv(12,:);
    outMv(9,:) = -inMv(8,:);
    outMv(10,:) = inMv(7,:);
    outMv(11,:) = -inMv(6,:);
    outMv(13,:) = -inMv(4,:);
    outMv(14,:) = inMv(3,:);
    outMv(15,:) = -inMv(2,:);
    outMv(16,:) = inMv(1,:);
end
