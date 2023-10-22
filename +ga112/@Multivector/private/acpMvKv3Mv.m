function outMv = acpMvKv3Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(3,:) = -inMv1(9,:) .* inMv2(2,:);
    outMv(4,:) = -inMv1(9,:) .* inMv2(3,:);
    outMv(6,:) = inMv1(5,:) .* inMv2(2,:);
    outMv(7,:) = inMv1(5,:) .* inMv2(3,:);
    outMv(8,:) = -inMv1(2,:) .* inMv2(1,:) + inMv1(5,:) .* inMv2(4,:);
    outMv(10,:) = -inMv1(2,:) .* inMv2(2,:);
    outMv(11,:) = -inMv1(2,:) .* inMv2(3,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(13,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(15,:) = inMv1(1,:) .* inMv2(4,:);
end
