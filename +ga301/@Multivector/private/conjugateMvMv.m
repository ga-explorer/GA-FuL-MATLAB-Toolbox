function outMv = conjugateMvMv(inMv)
    arguments
        inMv (16,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(3,:) = inMv(3,:);
    outMv(4,:) = inMv(4,:);
    outMv(5,:) = inMv(5,:);
    outMv(8,:) = -inMv(8,:);
    outMv(10,:) = -inMv(10,:);
    outMv(11,:) = -inMv(11,:);
    outMv(15,:) = -inMv(15,:);
end
