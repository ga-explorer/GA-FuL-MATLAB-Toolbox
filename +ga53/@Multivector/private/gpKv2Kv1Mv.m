function outMv = gpKv2Kv1Mv(inMv1, inMv2)
    arguments
        inMv1 (28,:) double
        inMv2 (8,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(6,:) + inMv1(16,:) .* inMv2(7,:) + inMv1(22,:) .* inMv2(8,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(3,:) .* inMv2(3,:) + inMv1(5,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(5,:) + inMv1(12,:) .* inMv2(6,:) + inMv1(17,:) .* inMv2(7,:) + inMv1(23,:) .* inMv2(8,:);
    outMv(4,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(3,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(4,:) + inMv1(9,:) .* inMv2(5,:) + inMv1(13,:) .* inMv2(6,:) + inMv1(18,:) .* inMv2(7,:) + inMv1(24,:) .* inMv2(8,:);
    outMv(5,:) = inMv1(4,:) .* inMv2(1,:) + inMv1(5,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(5,:) + inMv1(14,:) .* inMv2(6,:) + inMv1(19,:) .* inMv2(7,:) + inMv1(25,:) .* inMv2(8,:);
    outMv(6,:) = inMv1(7,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(2,:) + inMv1(9,:) .* inMv2(3,:) - inMv1(10,:) .* inMv2(4,:) + inMv1(15,:) .* inMv2(6,:) + inMv1(20,:) .* inMv2(7,:) + inMv1(26,:) .* inMv2(8,:);
    outMv(7,:) = inMv1(11,:) .* inMv2(1,:) + inMv1(12,:) .* inMv2(2,:) + inMv1(13,:) .* inMv2(3,:) - inMv1(14,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(5,:) + inMv1(21,:) .* inMv2(7,:) + inMv1(27,:) .* inMv2(8,:);
    outMv(8,:) = inMv1(16,:) .* inMv2(1,:) + inMv1(17,:) .* inMv2(2,:) + inMv1(18,:) .* inMv2(3,:) - inMv1(19,:) .* inMv2(4,:) - inMv1(20,:) .* inMv2(5,:) - inMv1(21,:) .* inMv2(6,:) + inMv1(28,:) .* inMv2(8,:);
    outMv(9,:) = inMv1(22,:) .* inMv2(1,:) + inMv1(23,:) .* inMv2(2,:) + inMv1(24,:) .* inMv2(3,:) - inMv1(25,:) .* inMv2(4,:) - inMv1(26,:) .* inMv2(5,:) - inMv1(27,:) .* inMv2(6,:) - inMv1(28,:) .* inMv2(7,:);
    outMv(38,:) = inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(2,:) + inMv1(3,:) .* inMv2(1,:);
    outMv(39,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(2,:) + inMv1(5,:) .* inMv2(1,:);
    outMv(40,:) = inMv1(2,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(1,:);
    outMv(41,:) = inMv1(3,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(2,:);
    outMv(42,:) = inMv1(1,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(2,:) + inMv1(8,:) .* inMv2(1,:);
    outMv(43,:) = inMv1(2,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(3,:) + inMv1(9,:) .* inMv2(1,:);
    outMv(44,:) = inMv1(3,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(3,:) + inMv1(9,:) .* inMv2(2,:);
    outMv(45,:) = inMv1(4,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(4,:) + inMv1(10,:) .* inMv2(1,:);
    outMv(46,:) = inMv1(5,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(4,:) + inMv1(10,:) .* inMv2(2,:);
    outMv(47,:) = inMv1(6,:) .* inMv2(5,:) - inMv1(9,:) .* inMv2(4,:) + inMv1(10,:) .* inMv2(3,:);
    outMv(48,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(11,:) .* inMv2(2,:) + inMv1(12,:) .* inMv2(1,:);
    outMv(49,:) = inMv1(2,:) .* inMv2(6,:) - inMv1(11,:) .* inMv2(3,:) + inMv1(13,:) .* inMv2(1,:);
    outMv(50,:) = inMv1(3,:) .* inMv2(6,:) - inMv1(12,:) .* inMv2(3,:) + inMv1(13,:) .* inMv2(2,:);
    outMv(51,:) = inMv1(4,:) .* inMv2(6,:) - inMv1(11,:) .* inMv2(4,:) + inMv1(14,:) .* inMv2(1,:);
    outMv(52,:) = inMv1(5,:) .* inMv2(6,:) - inMv1(12,:) .* inMv2(4,:) + inMv1(14,:) .* inMv2(2,:);
    outMv(53,:) = inMv1(6,:) .* inMv2(6,:) - inMv1(13,:) .* inMv2(4,:) + inMv1(14,:) .* inMv2(3,:);
    outMv(54,:) = inMv1(7,:) .* inMv2(6,:) - inMv1(11,:) .* inMv2(5,:) + inMv1(15,:) .* inMv2(1,:);
    outMv(55,:) = inMv1(8,:) .* inMv2(6,:) - inMv1(12,:) .* inMv2(5,:) + inMv1(15,:) .* inMv2(2,:);
    outMv(56,:) = inMv1(9,:) .* inMv2(6,:) - inMv1(13,:) .* inMv2(5,:) + inMv1(15,:) .* inMv2(3,:);
    outMv(57,:) = inMv1(10,:) .* inMv2(6,:) - inMv1(14,:) .* inMv2(5,:) + inMv1(15,:) .* inMv2(4,:);
    outMv(58,:) = inMv1(1,:) .* inMv2(7,:) - inMv1(16,:) .* inMv2(2,:) + inMv1(17,:) .* inMv2(1,:);
    outMv(59,:) = inMv1(2,:) .* inMv2(7,:) - inMv1(16,:) .* inMv2(3,:) + inMv1(18,:) .* inMv2(1,:);
    outMv(60,:) = inMv1(3,:) .* inMv2(7,:) - inMv1(17,:) .* inMv2(3,:) + inMv1(18,:) .* inMv2(2,:);
    outMv(61,:) = inMv1(4,:) .* inMv2(7,:) - inMv1(16,:) .* inMv2(4,:) + inMv1(19,:) .* inMv2(1,:);
    outMv(62,:) = inMv1(5,:) .* inMv2(7,:) - inMv1(17,:) .* inMv2(4,:) + inMv1(19,:) .* inMv2(2,:);
    outMv(63,:) = inMv1(6,:) .* inMv2(7,:) - inMv1(18,:) .* inMv2(4,:) + inMv1(19,:) .* inMv2(3,:);
    outMv(64,:) = inMv1(7,:) .* inMv2(7,:) - inMv1(16,:) .* inMv2(5,:) + inMv1(20,:) .* inMv2(1,:);
    outMv(65,:) = inMv1(8,:) .* inMv2(7,:) - inMv1(17,:) .* inMv2(5,:) + inMv1(20,:) .* inMv2(2,:);
    outMv(66,:) = inMv1(9,:) .* inMv2(7,:) - inMv1(18,:) .* inMv2(5,:) + inMv1(20,:) .* inMv2(3,:);
    outMv(67,:) = inMv1(10,:) .* inMv2(7,:) - inMv1(19,:) .* inMv2(5,:) + inMv1(20,:) .* inMv2(4,:);
    outMv(68,:) = inMv1(11,:) .* inMv2(7,:) - inMv1(16,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(1,:);
    outMv(69,:) = inMv1(12,:) .* inMv2(7,:) - inMv1(17,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(2,:);
    outMv(70,:) = inMv1(13,:) .* inMv2(7,:) - inMv1(18,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(3,:);
    outMv(71,:) = inMv1(14,:) .* inMv2(7,:) - inMv1(19,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(4,:);
    outMv(72,:) = inMv1(15,:) .* inMv2(7,:) - inMv1(20,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(5,:);
    outMv(73,:) = inMv1(1,:) .* inMv2(8,:) - inMv1(22,:) .* inMv2(2,:) + inMv1(23,:) .* inMv2(1,:);
    outMv(74,:) = inMv1(2,:) .* inMv2(8,:) - inMv1(22,:) .* inMv2(3,:) + inMv1(24,:) .* inMv2(1,:);
    outMv(75,:) = inMv1(3,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(3,:) + inMv1(24,:) .* inMv2(2,:);
    outMv(76,:) = inMv1(4,:) .* inMv2(8,:) - inMv1(22,:) .* inMv2(4,:) + inMv1(25,:) .* inMv2(1,:);
    outMv(77,:) = inMv1(5,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(4,:) + inMv1(25,:) .* inMv2(2,:);
    outMv(78,:) = inMv1(6,:) .* inMv2(8,:) - inMv1(24,:) .* inMv2(4,:) + inMv1(25,:) .* inMv2(3,:);
    outMv(79,:) = inMv1(7,:) .* inMv2(8,:) - inMv1(22,:) .* inMv2(5,:) + inMv1(26,:) .* inMv2(1,:);
    outMv(80,:) = inMv1(8,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(5,:) + inMv1(26,:) .* inMv2(2,:);
    outMv(81,:) = inMv1(9,:) .* inMv2(8,:) - inMv1(24,:) .* inMv2(5,:) + inMv1(26,:) .* inMv2(3,:);
    outMv(82,:) = inMv1(10,:) .* inMv2(8,:) - inMv1(25,:) .* inMv2(5,:) + inMv1(26,:) .* inMv2(4,:);
    outMv(83,:) = inMv1(11,:) .* inMv2(8,:) - inMv1(22,:) .* inMv2(6,:) + inMv1(27,:) .* inMv2(1,:);
    outMv(84,:) = inMv1(12,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(6,:) + inMv1(27,:) .* inMv2(2,:);
    outMv(85,:) = inMv1(13,:) .* inMv2(8,:) - inMv1(24,:) .* inMv2(6,:) + inMv1(27,:) .* inMv2(3,:);
    outMv(86,:) = inMv1(14,:) .* inMv2(8,:) - inMv1(25,:) .* inMv2(6,:) + inMv1(27,:) .* inMv2(4,:);
    outMv(87,:) = inMv1(15,:) .* inMv2(8,:) - inMv1(26,:) .* inMv2(6,:) + inMv1(27,:) .* inMv2(5,:);
    outMv(88,:) = inMv1(16,:) .* inMv2(8,:) - inMv1(22,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(1,:);
    outMv(89,:) = inMv1(17,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(2,:);
    outMv(90,:) = inMv1(18,:) .* inMv2(8,:) - inMv1(24,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(3,:);
    outMv(91,:) = inMv1(19,:) .* inMv2(8,:) - inMv1(25,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(4,:);
    outMv(92,:) = inMv1(20,:) .* inMv2(8,:) - inMv1(26,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(5,:);
    outMv(93,:) = inMv1(21,:) .* inMv2(8,:) - inMv1(27,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(6,:);
end
