function outMv = unDualMvMv(inMv)
    arguments
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(4,:) = inMv(13,:);
    outMv(7,:) = -inMv(10,:);
    outMv(8,:) = inMv(9,:);
    outMv(11,:) = -inMv(6,:);
    outMv(12,:) = -inMv(5,:);
    outMv(14,:) = inMv(3,:);
    outMv(15,:) = -inMv(2,:);
    outMv(16,:) = inMv(1,:);
end