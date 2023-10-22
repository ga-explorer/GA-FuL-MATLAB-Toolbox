function outMv = rcpKv3MvMv(inMv1, inMv2)
    arguments
        inMv1 (56,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(38,:) - inMv1(2,:) .* inMv2(39,:) - inMv1(3,:) .* inMv2(40,:) - inMv1(4,:) .* inMv2(41,:) - inMv1(5,:) .* inMv2(42,:) - inMv1(6,:) .* inMv2(43,:) - inMv1(7,:) .* inMv2(44,:) + inMv1(8,:) .* inMv2(45,:) + inMv1(9,:) .* inMv2(46,:) + inMv1(10,:) .* inMv2(47,:) - inMv1(11,:) .* inMv2(48,:) - inMv1(12,:) .* inMv2(49,:) - inMv1(13,:) .* inMv2(50,:) + inMv1(14,:) .* inMv2(51,:) + inMv1(15,:) .* inMv2(52,:) + inMv1(16,:) .* inMv2(53,:) + inMv1(17,:) .* inMv2(54,:) + inMv1(18,:) .* inMv2(55,:) + inMv1(19,:) .* inMv2(56,:) - inMv1(20,:) .* inMv2(57,:) - inMv1(21,:) .* inMv2(58,:) - inMv1(22,:) .* inMv2(59,:) - inMv1(23,:) .* inMv2(60,:) + inMv1(24,:) .* inMv2(61,:) + inMv1(25,:) .* inMv2(62,:) + inMv1(26,:) .* inMv2(63,:) + inMv1(27,:) .* inMv2(64,:) + inMv1(28,:) .* inMv2(65,:) + inMv1(29,:) .* inMv2(66,:) - inMv1(30,:) .* inMv2(67,:) + inMv1(31,:) .* inMv2(68,:) + inMv1(32,:) .* inMv2(69,:) + inMv1(33,:) .* inMv2(70,:) - inMv1(34,:) .* inMv2(71,:) - inMv1(35,:) .* inMv2(72,:) - inMv1(36,:) .* inMv2(73,:) - inMv1(37,:) .* inMv2(74,:) - inMv1(38,:) .* inMv2(75,:) + inMv1(39,:) .* inMv2(76,:) + inMv1(40,:) .* inMv2(77,:) + inMv1(41,:) .* inMv2(78,:) + inMv1(42,:) .* inMv2(79,:) + inMv1(43,:) .* inMv2(80,:) + inMv1(44,:) .* inMv2(81,:) - inMv1(45,:) .* inMv2(82,:) + inMv1(46,:) .* inMv2(83,:) + inMv1(47,:) .* inMv2(84,:) + inMv1(48,:) .* inMv2(85,:) - inMv1(49,:) .* inMv2(86,:) - inMv1(50,:) .* inMv2(87,:) + inMv1(51,:) .* inMv2(88,:) + inMv1(52,:) .* inMv2(89,:) + inMv1(53,:) .* inMv2(90,:) - inMv1(54,:) .* inMv2(91,:) - inMv1(55,:) .* inMv2(92,:) - inMv1(56,:) .* inMv2(93,:);
    outMv(2,:) = -inMv1(1,:) .* inMv2(12,:) + inMv1(2,:) .* inMv2(14,:) + inMv1(3,:) .* inMv2(15,:) + inMv1(5,:) .* inMv2(17,:) + inMv1(6,:) .* inMv2(18,:) - inMv1(8,:) .* inMv2(19,:) + inMv1(11,:) .* inMv2(21,:) + inMv1(12,:) .* inMv2(22,:) - inMv1(14,:) .* inMv2(23,:) - inMv1(17,:) .* inMv2(24,:) + inMv1(21,:) .* inMv2(26,:) + inMv1(22,:) .* inMv2(27,:) - inMv1(24,:) .* inMv2(28,:) - inMv1(27,:) .* inMv2(29,:) - inMv1(31,:) .* inMv2(30,:) + inMv1(36,:) .* inMv2(32,:) + inMv1(37,:) .* inMv2(33,:) - inMv1(39,:) .* inMv2(34,:) - inMv1(42,:) .* inMv2(35,:) - inMv1(46,:) .* inMv2(36,:) - inMv1(51,:) .* inMv2(37,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(11,:) - inMv1(2,:) .* inMv2(13,:) + inMv1(4,:) .* inMv2(15,:) - inMv1(5,:) .* inMv2(16,:) + inMv1(7,:) .* inMv2(18,:) - inMv1(9,:) .* inMv2(19,:) - inMv1(11,:) .* inMv2(20,:) + inMv1(13,:) .* inMv2(22,:) - inMv1(15,:) .* inMv2(23,:) - inMv1(18,:) .* inMv2(24,:) - inMv1(21,:) .* inMv2(25,:) + inMv1(23,:) .* inMv2(27,:) - inMv1(25,:) .* inMv2(28,:) - inMv1(28,:) .* inMv2(29,:) - inMv1(32,:) .* inMv2(30,:) - inMv1(36,:) .* inMv2(31,:) + inMv1(38,:) .* inMv2(33,:) - inMv1(40,:) .* inMv2(34,:) - inMv1(43,:) .* inMv2(35,:) - inMv1(47,:) .* inMv2(36,:) - inMv1(52,:) .* inMv2(37,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(10,:) - inMv1(3,:) .* inMv2(13,:) - inMv1(4,:) .* inMv2(14,:) - inMv1(6,:) .* inMv2(16,:) - inMv1(7,:) .* inMv2(17,:) - inMv1(10,:) .* inMv2(19,:) - inMv1(12,:) .* inMv2(20,:) - inMv1(13,:) .* inMv2(21,:) - inMv1(16,:) .* inMv2(23,:) - inMv1(19,:) .* inMv2(24,:) - inMv1(22,:) .* inMv2(25,:) - inMv1(23,:) .* inMv2(26,:) - inMv1(26,:) .* inMv2(28,:) - inMv1(29,:) .* inMv2(29,:) - inMv1(33,:) .* inMv2(30,:) - inMv1(37,:) .* inMv2(31,:) - inMv1(38,:) .* inMv2(32,:) - inMv1(41,:) .* inMv2(34,:) - inMv1(44,:) .* inMv2(35,:) - inMv1(48,:) .* inMv2(36,:) - inMv1(53,:) .* inMv2(37,:);
    outMv(5,:) = -inMv1(2,:) .* inMv2(10,:) - inMv1(3,:) .* inMv2(11,:) - inMv1(4,:) .* inMv2(12,:) - inMv1(8,:) .* inMv2(16,:) - inMv1(9,:) .* inMv2(17,:) - inMv1(10,:) .* inMv2(18,:) - inMv1(14,:) .* inMv2(20,:) - inMv1(15,:) .* inMv2(21,:) - inMv1(16,:) .* inMv2(22,:) - inMv1(20,:) .* inMv2(24,:) - inMv1(24,:) .* inMv2(25,:) - inMv1(25,:) .* inMv2(26,:) - inMv1(26,:) .* inMv2(27,:) - inMv1(30,:) .* inMv2(29,:) - inMv1(34,:) .* inMv2(30,:) - inMv1(39,:) .* inMv2(31,:) - inMv1(40,:) .* inMv2(32,:) - inMv1(41,:) .* inMv2(33,:) - inMv1(45,:) .* inMv2(35,:) - inMv1(49,:) .* inMv2(36,:) - inMv1(54,:) .* inMv2(37,:);
    outMv(6,:) = -inMv1(5,:) .* inMv2(10,:) - inMv1(6,:) .* inMv2(11,:) - inMv1(7,:) .* inMv2(12,:) + inMv1(8,:) .* inMv2(13,:) + inMv1(9,:) .* inMv2(14,:) + inMv1(10,:) .* inMv2(15,:) - inMv1(17,:) .* inMv2(20,:) - inMv1(18,:) .* inMv2(21,:) - inMv1(19,:) .* inMv2(22,:) + inMv1(20,:) .* inMv2(23,:) - inMv1(27,:) .* inMv2(25,:) - inMv1(28,:) .* inMv2(26,:) - inMv1(29,:) .* inMv2(27,:) + inMv1(30,:) .* inMv2(28,:) - inMv1(35,:) .* inMv2(30,:) - inMv1(42,:) .* inMv2(31,:) - inMv1(43,:) .* inMv2(32,:) - inMv1(44,:) .* inMv2(33,:) + inMv1(45,:) .* inMv2(34,:) - inMv1(50,:) .* inMv2(36,:) - inMv1(55,:) .* inMv2(37,:);
    outMv(7,:) = -inMv1(11,:) .* inMv2(10,:) - inMv1(12,:) .* inMv2(11,:) - inMv1(13,:) .* inMv2(12,:) + inMv1(14,:) .* inMv2(13,:) + inMv1(15,:) .* inMv2(14,:) + inMv1(16,:) .* inMv2(15,:) + inMv1(17,:) .* inMv2(16,:) + inMv1(18,:) .* inMv2(17,:) + inMv1(19,:) .* inMv2(18,:) - inMv1(20,:) .* inMv2(19,:) - inMv1(31,:) .* inMv2(25,:) - inMv1(32,:) .* inMv2(26,:) - inMv1(33,:) .* inMv2(27,:) + inMv1(34,:) .* inMv2(28,:) + inMv1(35,:) .* inMv2(29,:) - inMv1(46,:) .* inMv2(31,:) - inMv1(47,:) .* inMv2(32,:) - inMv1(48,:) .* inMv2(33,:) + inMv1(49,:) .* inMv2(34,:) + inMv1(50,:) .* inMv2(35,:) - inMv1(56,:) .* inMv2(37,:);
    outMv(8,:) = -inMv1(21,:) .* inMv2(10,:) - inMv1(22,:) .* inMv2(11,:) - inMv1(23,:) .* inMv2(12,:) + inMv1(24,:) .* inMv2(13,:) + inMv1(25,:) .* inMv2(14,:) + inMv1(26,:) .* inMv2(15,:) + inMv1(27,:) .* inMv2(16,:) + inMv1(28,:) .* inMv2(17,:) + inMv1(29,:) .* inMv2(18,:) - inMv1(30,:) .* inMv2(19,:) + inMv1(31,:) .* inMv2(20,:) + inMv1(32,:) .* inMv2(21,:) + inMv1(33,:) .* inMv2(22,:) - inMv1(34,:) .* inMv2(23,:) - inMv1(35,:) .* inMv2(24,:) - inMv1(51,:) .* inMv2(31,:) - inMv1(52,:) .* inMv2(32,:) - inMv1(53,:) .* inMv2(33,:) + inMv1(54,:) .* inMv2(34,:) + inMv1(55,:) .* inMv2(35,:) + inMv1(56,:) .* inMv2(36,:);
    outMv(9,:) = -inMv1(36,:) .* inMv2(10,:) - inMv1(37,:) .* inMv2(11,:) - inMv1(38,:) .* inMv2(12,:) + inMv1(39,:) .* inMv2(13,:) + inMv1(40,:) .* inMv2(14,:) + inMv1(41,:) .* inMv2(15,:) + inMv1(42,:) .* inMv2(16,:) + inMv1(43,:) .* inMv2(17,:) + inMv1(44,:) .* inMv2(18,:) - inMv1(45,:) .* inMv2(19,:) + inMv1(46,:) .* inMv2(20,:) + inMv1(47,:) .* inMv2(21,:) + inMv1(48,:) .* inMv2(22,:) - inMv1(49,:) .* inMv2(23,:) - inMv1(50,:) .* inMv2(24,:) + inMv1(51,:) .* inMv2(25,:) + inMv1(52,:) .* inMv2(26,:) + inMv1(53,:) .* inMv2(27,:) - inMv1(54,:) .* inMv2(28,:) - inMv1(55,:) .* inMv2(29,:) - inMv1(56,:) .* inMv2(30,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(4,:) + inMv1(2,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(6,:) + inMv1(11,:) .* inMv2(7,:) + inMv1(21,:) .* inMv2(8,:) + inMv1(36,:) .* inMv2(9,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(3,:) + inMv1(3,:) .* inMv2(5,:) + inMv1(6,:) .* inMv2(6,:) + inMv1(12,:) .* inMv2(7,:) + inMv1(22,:) .* inMv2(8,:) + inMv1(37,:) .* inMv2(9,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(6,:) + inMv1(13,:) .* inMv2(7,:) + inMv1(23,:) .* inMv2(8,:) + inMv1(38,:) .* inMv2(9,:);
    outMv(13,:) = inMv1(2,:) .* inMv2(3,:) + inMv1(3,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(6,:) + inMv1(14,:) .* inMv2(7,:) + inMv1(24,:) .* inMv2(8,:) + inMv1(39,:) .* inMv2(9,:);
    outMv(14,:) = -inMv1(2,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(4,:) + inMv1(9,:) .* inMv2(6,:) + inMv1(15,:) .* inMv2(7,:) + inMv1(25,:) .* inMv2(8,:) + inMv1(40,:) .* inMv2(9,:);
    outMv(15,:) = -inMv1(3,:) .* inMv2(2,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(6,:) + inMv1(16,:) .* inMv2(7,:) + inMv1(26,:) .* inMv2(8,:) + inMv1(41,:) .* inMv2(9,:);
    outMv(16,:) = inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(5,:) + inMv1(17,:) .* inMv2(7,:) + inMv1(27,:) .* inMv2(8,:) + inMv1(42,:) .* inMv2(9,:);
    outMv(17,:) = -inMv1(5,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(5,:) + inMv1(18,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(8,:) + inMv1(43,:) .* inMv2(9,:);
    outMv(18,:) = -inMv1(6,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(3,:) - inMv1(10,:) .* inMv2(5,:) + inMv1(19,:) .* inMv2(7,:) + inMv1(29,:) .* inMv2(8,:) + inMv1(44,:) .* inMv2(9,:);
    outMv(19,:) = -inMv1(8,:) .* inMv2(2,:) - inMv1(9,:) .* inMv2(3,:) - inMv1(10,:) .* inMv2(4,:) + inMv1(20,:) .* inMv2(7,:) + inMv1(30,:) .* inMv2(8,:) + inMv1(45,:) .* inMv2(9,:);
    outMv(20,:) = inMv1(11,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(4,:) - inMv1(14,:) .* inMv2(5,:) - inMv1(17,:) .* inMv2(6,:) + inMv1(31,:) .* inMv2(8,:) + inMv1(46,:) .* inMv2(9,:);
    outMv(21,:) = -inMv1(11,:) .* inMv2(2,:) + inMv1(13,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(5,:) - inMv1(18,:) .* inMv2(6,:) + inMv1(32,:) .* inMv2(8,:) + inMv1(47,:) .* inMv2(9,:);
    outMv(22,:) = -inMv1(12,:) .* inMv2(2,:) - inMv1(13,:) .* inMv2(3,:) - inMv1(16,:) .* inMv2(5,:) - inMv1(19,:) .* inMv2(6,:) + inMv1(33,:) .* inMv2(8,:) + inMv1(48,:) .* inMv2(9,:);
    outMv(23,:) = -inMv1(14,:) .* inMv2(2,:) - inMv1(15,:) .* inMv2(3,:) - inMv1(16,:) .* inMv2(4,:) - inMv1(20,:) .* inMv2(6,:) + inMv1(34,:) .* inMv2(8,:) + inMv1(49,:) .* inMv2(9,:);
    outMv(24,:) = -inMv1(17,:) .* inMv2(2,:) - inMv1(18,:) .* inMv2(3,:) - inMv1(19,:) .* inMv2(4,:) + inMv1(20,:) .* inMv2(5,:) + inMv1(35,:) .* inMv2(8,:) + inMv1(50,:) .* inMv2(9,:);
    outMv(25,:) = inMv1(21,:) .* inMv2(3,:) + inMv1(22,:) .* inMv2(4,:) - inMv1(24,:) .* inMv2(5,:) - inMv1(27,:) .* inMv2(6,:) - inMv1(31,:) .* inMv2(7,:) + inMv1(51,:) .* inMv2(9,:);
    outMv(26,:) = -inMv1(21,:) .* inMv2(2,:) + inMv1(23,:) .* inMv2(4,:) - inMv1(25,:) .* inMv2(5,:) - inMv1(28,:) .* inMv2(6,:) - inMv1(32,:) .* inMv2(7,:) + inMv1(52,:) .* inMv2(9,:);
    outMv(27,:) = -inMv1(22,:) .* inMv2(2,:) - inMv1(23,:) .* inMv2(3,:) - inMv1(26,:) .* inMv2(5,:) - inMv1(29,:) .* inMv2(6,:) - inMv1(33,:) .* inMv2(7,:) + inMv1(53,:) .* inMv2(9,:);
    outMv(28,:) = -inMv1(24,:) .* inMv2(2,:) - inMv1(25,:) .* inMv2(3,:) - inMv1(26,:) .* inMv2(4,:) - inMv1(30,:) .* inMv2(6,:) - inMv1(34,:) .* inMv2(7,:) + inMv1(54,:) .* inMv2(9,:);
    outMv(29,:) = -inMv1(27,:) .* inMv2(2,:) - inMv1(28,:) .* inMv2(3,:) - inMv1(29,:) .* inMv2(4,:) + inMv1(30,:) .* inMv2(5,:) - inMv1(35,:) .* inMv2(7,:) + inMv1(55,:) .* inMv2(9,:);
    outMv(30,:) = -inMv1(31,:) .* inMv2(2,:) - inMv1(32,:) .* inMv2(3,:) - inMv1(33,:) .* inMv2(4,:) + inMv1(34,:) .* inMv2(5,:) + inMv1(35,:) .* inMv2(6,:) + inMv1(56,:) .* inMv2(9,:);
    outMv(31,:) = inMv1(36,:) .* inMv2(3,:) + inMv1(37,:) .* inMv2(4,:) - inMv1(39,:) .* inMv2(5,:) - inMv1(42,:) .* inMv2(6,:) - inMv1(46,:) .* inMv2(7,:) - inMv1(51,:) .* inMv2(8,:);
    outMv(32,:) = -inMv1(36,:) .* inMv2(2,:) + inMv1(38,:) .* inMv2(4,:) - inMv1(40,:) .* inMv2(5,:) - inMv1(43,:) .* inMv2(6,:) - inMv1(47,:) .* inMv2(7,:) - inMv1(52,:) .* inMv2(8,:);
    outMv(33,:) = -inMv1(37,:) .* inMv2(2,:) - inMv1(38,:) .* inMv2(3,:) - inMv1(41,:) .* inMv2(5,:) - inMv1(44,:) .* inMv2(6,:) - inMv1(48,:) .* inMv2(7,:) - inMv1(53,:) .* inMv2(8,:);
    outMv(34,:) = -inMv1(39,:) .* inMv2(2,:) - inMv1(40,:) .* inMv2(3,:) - inMv1(41,:) .* inMv2(4,:) - inMv1(45,:) .* inMv2(6,:) - inMv1(49,:) .* inMv2(7,:) - inMv1(54,:) .* inMv2(8,:);
    outMv(35,:) = -inMv1(42,:) .* inMv2(2,:) - inMv1(43,:) .* inMv2(3,:) - inMv1(44,:) .* inMv2(4,:) + inMv1(45,:) .* inMv2(5,:) - inMv1(50,:) .* inMv2(7,:) - inMv1(55,:) .* inMv2(8,:);
    outMv(36,:) = -inMv1(46,:) .* inMv2(2,:) - inMv1(47,:) .* inMv2(3,:) - inMv1(48,:) .* inMv2(4,:) + inMv1(49,:) .* inMv2(5,:) + inMv1(50,:) .* inMv2(6,:) - inMv1(56,:) .* inMv2(8,:);
    outMv(37,:) = -inMv1(51,:) .* inMv2(2,:) - inMv1(52,:) .* inMv2(3,:) - inMv1(53,:) .* inMv2(4,:) + inMv1(54,:) .* inMv2(5,:) + inMv1(55,:) .* inMv2(6,:) + inMv1(56,:) .* inMv2(7,:);
    outMv(38,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(39,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(40,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(41,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(42,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(43,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(44,:) = inMv1(7,:) .* inMv2(1,:);
    outMv(45,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(46,:) = inMv1(9,:) .* inMv2(1,:);
    outMv(47,:) = inMv1(10,:) .* inMv2(1,:);
    outMv(48,:) = inMv1(11,:) .* inMv2(1,:);
    outMv(49,:) = inMv1(12,:) .* inMv2(1,:);
    outMv(50,:) = inMv1(13,:) .* inMv2(1,:);
    outMv(51,:) = inMv1(14,:) .* inMv2(1,:);
    outMv(52,:) = inMv1(15,:) .* inMv2(1,:);
    outMv(53,:) = inMv1(16,:) .* inMv2(1,:);
    outMv(54,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(55,:) = inMv1(18,:) .* inMv2(1,:);
    outMv(56,:) = inMv1(19,:) .* inMv2(1,:);
    outMv(57,:) = inMv1(20,:) .* inMv2(1,:);
    outMv(58,:) = inMv1(21,:) .* inMv2(1,:);
    outMv(59,:) = inMv1(22,:) .* inMv2(1,:);
    outMv(60,:) = inMv1(23,:) .* inMv2(1,:);
    outMv(61,:) = inMv1(24,:) .* inMv2(1,:);
    outMv(62,:) = inMv1(25,:) .* inMv2(1,:);
    outMv(63,:) = inMv1(26,:) .* inMv2(1,:);
    outMv(64,:) = inMv1(27,:) .* inMv2(1,:);
    outMv(65,:) = inMv1(28,:) .* inMv2(1,:);
    outMv(66,:) = inMv1(29,:) .* inMv2(1,:);
    outMv(67,:) = inMv1(30,:) .* inMv2(1,:);
    outMv(68,:) = inMv1(31,:) .* inMv2(1,:);
    outMv(69,:) = inMv1(32,:) .* inMv2(1,:);
    outMv(70,:) = inMv1(33,:) .* inMv2(1,:);
    outMv(71,:) = inMv1(34,:) .* inMv2(1,:);
    outMv(72,:) = inMv1(35,:) .* inMv2(1,:);
    outMv(73,:) = inMv1(36,:) .* inMv2(1,:);
    outMv(74,:) = inMv1(37,:) .* inMv2(1,:);
    outMv(75,:) = inMv1(38,:) .* inMv2(1,:);
    outMv(76,:) = inMv1(39,:) .* inMv2(1,:);
    outMv(77,:) = inMv1(40,:) .* inMv2(1,:);
    outMv(78,:) = inMv1(41,:) .* inMv2(1,:);
    outMv(79,:) = inMv1(42,:) .* inMv2(1,:);
    outMv(80,:) = inMv1(43,:) .* inMv2(1,:);
    outMv(81,:) = inMv1(44,:) .* inMv2(1,:);
    outMv(82,:) = inMv1(45,:) .* inMv2(1,:);
    outMv(83,:) = inMv1(46,:) .* inMv2(1,:);
    outMv(84,:) = inMv1(47,:) .* inMv2(1,:);
    outMv(85,:) = inMv1(48,:) .* inMv2(1,:);
    outMv(86,:) = inMv1(49,:) .* inMv2(1,:);
    outMv(87,:) = inMv1(50,:) .* inMv2(1,:);
    outMv(88,:) = inMv1(51,:) .* inMv2(1,:);
    outMv(89,:) = inMv1(52,:) .* inMv2(1,:);
    outMv(90,:) = inMv1(53,:) .* inMv2(1,:);
    outMv(91,:) = inMv1(54,:) .* inMv2(1,:);
    outMv(92,:) = inMv1(55,:) .* inMv2(1,:);
    outMv(93,:) = inMv1(56,:) .* inMv2(1,:);
end
