function outMv = conjugateMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = -inMv(2,:);
    outMv(3,:) = -inMv(3,:);
    outMv(7,:) = -inMv(7,:);
end
