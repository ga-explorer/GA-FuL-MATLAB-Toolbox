function outMv = conjugateMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(5,:) = inMv(5,:);
    outMv(6,:) = inMv(6,:);
    outMv(16,:) = -inMv(16,:);
end
