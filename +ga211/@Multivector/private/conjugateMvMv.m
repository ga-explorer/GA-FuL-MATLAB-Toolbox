function outMv = conjugateMvMv(inMv)
    arguments
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = -inMv(2,:);
    outMv(4,:) = inMv(4,:);
    outMv(5,:) = inMv(5,:);
    outMv(7,:) = inMv(7,:);
    outMv(9,:) = inMv(9,:);
    outMv(11,:) = -inMv(11,:);
    outMv(14,:) = inMv(14,:);
end
