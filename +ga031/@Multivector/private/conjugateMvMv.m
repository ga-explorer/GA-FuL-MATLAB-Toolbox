function outMv = conjugateMvMv(inMv)
    arguments
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = -inMv(2,:);
    outMv(3,:) = -inMv(3,:);
    outMv(4,:) = -inMv(4,:);
    outMv(6,:) = -inMv(6,:);
    outMv(7,:) = -inMv(7,:);
    outMv(8,:) = -inMv(8,:);
    outMv(12,:) = inMv(12,:);
end
