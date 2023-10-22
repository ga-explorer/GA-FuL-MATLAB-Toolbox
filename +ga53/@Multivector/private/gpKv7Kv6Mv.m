function outMv = gpKv7Kv6Mv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (28,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(1,:) .* inMv2(7,:) - inMv1(2,:) .* inMv2(13,:) - inMv1(3,:) .* inMv2(18,:) - inMv1(4,:) .* inMv2(22,:) - inMv1(5,:) .* inMv2(25,:) + inMv1(6,:) .* inMv2(27,:) + inMv1(7,:) .* inMv2(28,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(6,:) + inMv1(2,:) .* inMv2(12,:) + inMv1(3,:) .* inMv2(17,:) + inMv1(4,:) .* inMv2(21,:) + inMv1(5,:) .* inMv2(24,:) - inMv1(6,:) .* inMv2(26,:) + inMv1(8,:) .* inMv2(28,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(5,:) - inMv1(2,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(16,:) - inMv1(4,:) .* inMv2(20,:) - inMv1(5,:) .* inMv2(23,:) - inMv1(7,:) .* inMv2(26,:) - inMv1(8,:) .* inMv2(27,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(4,:) - inMv1(2,:) .* inMv2(10,:) - inMv1(3,:) .* inMv2(15,:) - inMv1(4,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(23,:) - inMv1(7,:) .* inMv2(24,:) - inMv1(8,:) .* inMv2(25,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(3,:) + inMv1(2,:) .* inMv2(9,:) + inMv1(3,:) .* inMv2(14,:) - inMv1(5,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(20,:) + inMv1(7,:) .* inMv2(21,:) + inMv1(8,:) .* inMv2(22,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(14,:) + inMv1(5,:) .* inMv2(15,:) - inMv1(6,:) .* inMv2(16,:) - inMv1(7,:) .* inMv2(17,:) - inMv1(8,:) .* inMv2(18,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(3,:) .* inMv2(8,:) - inMv1(4,:) .* inMv2(9,:) - inMv1(5,:) .* inMv2(10,:) + inMv1(6,:) .* inMv2(11,:) + inMv1(7,:) .* inMv2(12,:) + inMv1(8,:) .* inMv2(13,:);
    outMv(9,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(3,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(3,:) + inMv1(5,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(7,:);
    outMv(38,:) = -inMv1(6,:) .* inMv2(28,:) + inMv1(7,:) .* inMv2(27,:) - inMv1(8,:) .* inMv2(26,:);
    outMv(39,:) = -inMv1(5,:) .* inMv2(28,:) + inMv1(7,:) .* inMv2(25,:) - inMv1(8,:) .* inMv2(24,:);
    outMv(40,:) = inMv1(5,:) .* inMv2(27,:) - inMv1(6,:) .* inMv2(25,:) + inMv1(8,:) .* inMv2(23,:);
    outMv(41,:) = -inMv1(5,:) .* inMv2(26,:) + inMv1(6,:) .* inMv2(24,:) - inMv1(7,:) .* inMv2(23,:);
    outMv(42,:) = inMv1(4,:) .* inMv2(28,:) - inMv1(7,:) .* inMv2(22,:) + inMv1(8,:) .* inMv2(21,:);
    outMv(43,:) = -inMv1(4,:) .* inMv2(27,:) + inMv1(6,:) .* inMv2(22,:) - inMv1(8,:) .* inMv2(20,:);
    outMv(44,:) = inMv1(4,:) .* inMv2(26,:) - inMv1(6,:) .* inMv2(21,:) + inMv1(7,:) .* inMv2(20,:);
    outMv(45,:) = -inMv1(4,:) .* inMv2(25,:) + inMv1(5,:) .* inMv2(22,:) - inMv1(8,:) .* inMv2(19,:);
    outMv(46,:) = inMv1(4,:) .* inMv2(24,:) - inMv1(5,:) .* inMv2(21,:) + inMv1(7,:) .* inMv2(19,:);
    outMv(47,:) = -inMv1(4,:) .* inMv2(23,:) + inMv1(5,:) .* inMv2(20,:) - inMv1(6,:) .* inMv2(19,:);
    outMv(48,:) = -inMv1(3,:) .* inMv2(28,:) + inMv1(7,:) .* inMv2(18,:) - inMv1(8,:) .* inMv2(17,:);
    outMv(49,:) = inMv1(3,:) .* inMv2(27,:) - inMv1(6,:) .* inMv2(18,:) + inMv1(8,:) .* inMv2(16,:);
    outMv(50,:) = -inMv1(3,:) .* inMv2(26,:) + inMv1(6,:) .* inMv2(17,:) - inMv1(7,:) .* inMv2(16,:);
    outMv(51,:) = inMv1(3,:) .* inMv2(25,:) - inMv1(5,:) .* inMv2(18,:) + inMv1(8,:) .* inMv2(15,:);
    outMv(52,:) = -inMv1(3,:) .* inMv2(24,:) + inMv1(5,:) .* inMv2(17,:) - inMv1(7,:) .* inMv2(15,:);
    outMv(53,:) = inMv1(3,:) .* inMv2(23,:) - inMv1(5,:) .* inMv2(16,:) + inMv1(6,:) .* inMv2(15,:);
    outMv(54,:) = -inMv1(3,:) .* inMv2(22,:) + inMv1(4,:) .* inMv2(18,:) - inMv1(8,:) .* inMv2(14,:);
    outMv(55,:) = inMv1(3,:) .* inMv2(21,:) - inMv1(4,:) .* inMv2(17,:) + inMv1(7,:) .* inMv2(14,:);
    outMv(56,:) = -inMv1(3,:) .* inMv2(20,:) + inMv1(4,:) .* inMv2(16,:) - inMv1(6,:) .* inMv2(14,:);
    outMv(57,:) = -inMv1(3,:) .* inMv2(19,:) + inMv1(4,:) .* inMv2(15,:) - inMv1(5,:) .* inMv2(14,:);
    outMv(58,:) = inMv1(2,:) .* inMv2(28,:) - inMv1(7,:) .* inMv2(13,:) + inMv1(8,:) .* inMv2(12,:);
    outMv(59,:) = -inMv1(2,:) .* inMv2(27,:) + inMv1(6,:) .* inMv2(13,:) - inMv1(8,:) .* inMv2(11,:);
    outMv(60,:) = inMv1(2,:) .* inMv2(26,:) - inMv1(6,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(11,:);
    outMv(61,:) = -inMv1(2,:) .* inMv2(25,:) + inMv1(5,:) .* inMv2(13,:) - inMv1(8,:) .* inMv2(10,:);
    outMv(62,:) = inMv1(2,:) .* inMv2(24,:) - inMv1(5,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(10,:);
    outMv(63,:) = -inMv1(2,:) .* inMv2(23,:) + inMv1(5,:) .* inMv2(11,:) - inMv1(6,:) .* inMv2(10,:);
    outMv(64,:) = inMv1(2,:) .* inMv2(22,:) - inMv1(4,:) .* inMv2(13,:) + inMv1(8,:) .* inMv2(9,:);
    outMv(65,:) = -inMv1(2,:) .* inMv2(21,:) + inMv1(4,:) .* inMv2(12,:) - inMv1(7,:) .* inMv2(9,:);
    outMv(66,:) = inMv1(2,:) .* inMv2(20,:) - inMv1(4,:) .* inMv2(11,:) + inMv1(6,:) .* inMv2(9,:);
    outMv(67,:) = inMv1(2,:) .* inMv2(19,:) - inMv1(4,:) .* inMv2(10,:) + inMv1(5,:) .* inMv2(9,:);
    outMv(68,:) = -inMv1(2,:) .* inMv2(18,:) + inMv1(3,:) .* inMv2(13,:) - inMv1(8,:) .* inMv2(8,:);
    outMv(69,:) = inMv1(2,:) .* inMv2(17,:) - inMv1(3,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(8,:);
    outMv(70,:) = -inMv1(2,:) .* inMv2(16,:) + inMv1(3,:) .* inMv2(11,:) - inMv1(6,:) .* inMv2(8,:);
    outMv(71,:) = -inMv1(2,:) .* inMv2(15,:) + inMv1(3,:) .* inMv2(10,:) - inMv1(5,:) .* inMv2(8,:);
    outMv(72,:) = inMv1(2,:) .* inMv2(14,:) - inMv1(3,:) .* inMv2(9,:) + inMv1(4,:) .* inMv2(8,:);
    outMv(73,:) = -inMv1(1,:) .* inMv2(28,:) + inMv1(7,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(6,:);
    outMv(74,:) = inMv1(1,:) .* inMv2(27,:) - inMv1(6,:) .* inMv2(7,:) + inMv1(8,:) .* inMv2(5,:);
    outMv(75,:) = -inMv1(1,:) .* inMv2(26,:) + inMv1(6,:) .* inMv2(6,:) - inMv1(7,:) .* inMv2(5,:);
    outMv(76,:) = inMv1(1,:) .* inMv2(25,:) - inMv1(5,:) .* inMv2(7,:) + inMv1(8,:) .* inMv2(4,:);
    outMv(77,:) = -inMv1(1,:) .* inMv2(24,:) + inMv1(5,:) .* inMv2(6,:) - inMv1(7,:) .* inMv2(4,:);
    outMv(78,:) = inMv1(1,:) .* inMv2(23,:) - inMv1(5,:) .* inMv2(5,:) + inMv1(6,:) .* inMv2(4,:);
    outMv(79,:) = -inMv1(1,:) .* inMv2(22,:) + inMv1(4,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(3,:);
    outMv(80,:) = inMv1(1,:) .* inMv2(21,:) - inMv1(4,:) .* inMv2(6,:) + inMv1(7,:) .* inMv2(3,:);
    outMv(81,:) = -inMv1(1,:) .* inMv2(20,:) + inMv1(4,:) .* inMv2(5,:) - inMv1(6,:) .* inMv2(3,:);
    outMv(82,:) = -inMv1(1,:) .* inMv2(19,:) + inMv1(4,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(3,:);
    outMv(83,:) = inMv1(1,:) .* inMv2(18,:) - inMv1(3,:) .* inMv2(7,:) + inMv1(8,:) .* inMv2(2,:);
    outMv(84,:) = -inMv1(1,:) .* inMv2(17,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(7,:) .* inMv2(2,:);
    outMv(85,:) = inMv1(1,:) .* inMv2(16,:) - inMv1(3,:) .* inMv2(5,:) + inMv1(6,:) .* inMv2(2,:);
    outMv(86,:) = inMv1(1,:) .* inMv2(15,:) - inMv1(3,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(2,:);
    outMv(87,:) = -inMv1(1,:) .* inMv2(14,:) + inMv1(3,:) .* inMv2(3,:) - inMv1(4,:) .* inMv2(2,:);
    outMv(88,:) = -inMv1(1,:) .* inMv2(13,:) + inMv1(2,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(1,:);
    outMv(89,:) = inMv1(1,:) .* inMv2(12,:) - inMv1(2,:) .* inMv2(6,:) + inMv1(7,:) .* inMv2(1,:);
    outMv(90,:) = -inMv1(1,:) .* inMv2(11,:) + inMv1(2,:) .* inMv2(5,:) - inMv1(6,:) .* inMv2(1,:);
    outMv(91,:) = -inMv1(1,:) .* inMv2(10,:) + inMv1(2,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(1,:);
    outMv(92,:) = inMv1(1,:) .* inMv2(9,:) - inMv1(2,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(1,:);
    outMv(93,:) = -inMv1(1,:) .* inMv2(8,:) + inMv1(2,:) .* inMv2(2,:) - inMv1(3,:) .* inMv2(1,:);
end
