function outMv = opKv0Kv2Kv2(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (28,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([28, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(4,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(6,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(7,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(8,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(9,:);
    outMv(10,:) = inMv1(1,:) .* inMv2(10,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(11,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(12,:);
    outMv(13,:) = inMv1(1,:) .* inMv2(13,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(14,:);
    outMv(15,:) = inMv1(1,:) .* inMv2(15,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(16,:);
    outMv(17,:) = inMv1(1,:) .* inMv2(17,:);
    outMv(18,:) = inMv1(1,:) .* inMv2(18,:);
    outMv(19,:) = inMv1(1,:) .* inMv2(19,:);
    outMv(20,:) = inMv1(1,:) .* inMv2(20,:);
    outMv(21,:) = inMv1(1,:) .* inMv2(21,:);
    outMv(22,:) = inMv1(1,:) .* inMv2(22,:);
    outMv(23,:) = inMv1(1,:) .* inMv2(23,:);
    outMv(24,:) = inMv1(1,:) .* inMv2(24,:);
    outMv(25,:) = inMv1(1,:) .* inMv2(25,:);
    outMv(26,:) = inMv1(1,:) .* inMv2(26,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(27,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(28,:);
end
