function outMv = unDualKv2Kv3(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(1,:) = -inMv(10,:);
    outMv(2,:) = inMv(9,:);
    outMv(4,:) = -inMv(7,:);
    outMv(5,:) = -inMv(6,:);
    outMv(7,:) = inMv(4,:);
    outMv(9,:) = -inMv(2,:);
end