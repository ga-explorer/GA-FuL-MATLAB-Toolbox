function outMv = acpMvKv1Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(2,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(4,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(12,:) = inMv1(6,:) .* inMv2(3,:) - inMv1(7,:) .* inMv2(2,:) + inMv1(8,:) .* inMv2(1,:);
    outMv(13,:) = inMv1(6,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(2,:) + inMv1(10,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(7,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(3,:) + inMv1(11,:) .* inMv2(1,:);
    outMv(15,:) = inMv1(8,:) .* inMv2(4,:) - inMv1(10,:) .* inMv2(3,:) + inMv1(11,:) .* inMv2(2,:);
end