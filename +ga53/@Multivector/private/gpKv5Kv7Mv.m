function outMv = gpKv5Kv7Mv(inMv1, inMv2)
    arguments
        inMv1 (56,:) double
        inMv2 (8,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(10,:) = -inMv1(21,:) .* inMv2(1,:) - inMv1(36,:) .* inMv2(2,:) - inMv1(46,:) .* inMv2(3,:) - inMv1(52,:) .* inMv2(4,:) - inMv1(55,:) .* inMv2(5,:) + inMv1(56,:) .* inMv2(6,:);
    outMv(11,:) = inMv1(20,:) .* inMv2(1,:) + inMv1(35,:) .* inMv2(2,:) + inMv1(45,:) .* inMv2(3,:) + inMv1(51,:) .* inMv2(4,:) + inMv1(54,:) .* inMv2(5,:) + inMv1(56,:) .* inMv2(7,:);
    outMv(12,:) = -inMv1(19,:) .* inMv2(1,:) - inMv1(34,:) .* inMv2(2,:) - inMv1(44,:) .* inMv2(3,:) - inMv1(50,:) .* inMv2(4,:) - inMv1(53,:) .* inMv2(5,:) + inMv1(56,:) .* inMv2(8,:);
    outMv(13,:) = inMv1(18,:) .* inMv2(1,:) + inMv1(33,:) .* inMv2(2,:) + inMv1(43,:) .* inMv2(3,:) + inMv1(49,:) .* inMv2(4,:) + inMv1(54,:) .* inMv2(6,:) + inMv1(55,:) .* inMv2(7,:);
    outMv(14,:) = -inMv1(17,:) .* inMv2(1,:) - inMv1(32,:) .* inMv2(2,:) - inMv1(42,:) .* inMv2(3,:) - inMv1(48,:) .* inMv2(4,:) - inMv1(53,:) .* inMv2(6,:) + inMv1(55,:) .* inMv2(8,:);
    outMv(15,:) = inMv1(16,:) .* inMv2(1,:) + inMv1(31,:) .* inMv2(2,:) + inMv1(41,:) .* inMv2(3,:) + inMv1(47,:) .* inMv2(4,:) - inMv1(53,:) .* inMv2(7,:) - inMv1(54,:) .* inMv2(8,:);
    outMv(16,:) = -inMv1(15,:) .* inMv2(1,:) - inMv1(30,:) .* inMv2(2,:) - inMv1(40,:) .* inMv2(3,:) + inMv1(49,:) .* inMv2(5,:) - inMv1(51,:) .* inMv2(6,:) - inMv1(52,:) .* inMv2(7,:);
    outMv(17,:) = inMv1(14,:) .* inMv2(1,:) + inMv1(29,:) .* inMv2(2,:) + inMv1(39,:) .* inMv2(3,:) - inMv1(48,:) .* inMv2(5,:) + inMv1(50,:) .* inMv2(6,:) - inMv1(52,:) .* inMv2(8,:);
    outMv(18,:) = -inMv1(13,:) .* inMv2(1,:) - inMv1(28,:) .* inMv2(2,:) - inMv1(38,:) .* inMv2(3,:) + inMv1(47,:) .* inMv2(5,:) + inMv1(50,:) .* inMv2(7,:) + inMv1(51,:) .* inMv2(8,:);
    outMv(19,:) = -inMv1(12,:) .* inMv2(1,:) - inMv1(27,:) .* inMv2(2,:) - inMv1(37,:) .* inMv2(3,:) + inMv1(47,:) .* inMv2(6,:) + inMv1(48,:) .* inMv2(7,:) + inMv1(49,:) .* inMv2(8,:);
    outMv(20,:) = inMv1(11,:) .* inMv2(1,:) + inMv1(26,:) .* inMv2(2,:) - inMv1(40,:) .* inMv2(4,:) - inMv1(43,:) .* inMv2(5,:) + inMv1(45,:) .* inMv2(6,:) + inMv1(46,:) .* inMv2(7,:);
    outMv(21,:) = -inMv1(10,:) .* inMv2(1,:) - inMv1(25,:) .* inMv2(2,:) + inMv1(39,:) .* inMv2(4,:) + inMv1(42,:) .* inMv2(5,:) - inMv1(44,:) .* inMv2(6,:) + inMv1(46,:) .* inMv2(8,:);
    outMv(22,:) = inMv1(9,:) .* inMv2(1,:) + inMv1(24,:) .* inMv2(2,:) - inMv1(38,:) .* inMv2(4,:) - inMv1(41,:) .* inMv2(5,:) - inMv1(44,:) .* inMv2(7,:) - inMv1(45,:) .* inMv2(8,:);
    outMv(23,:) = inMv1(8,:) .* inMv2(1,:) + inMv1(23,:) .* inMv2(2,:) - inMv1(37,:) .* inMv2(4,:) - inMv1(41,:) .* inMv2(6,:) - inMv1(42,:) .* inMv2(7,:) - inMv1(43,:) .* inMv2(8,:);
    outMv(24,:) = -inMv1(7,:) .* inMv2(1,:) - inMv1(22,:) .* inMv2(2,:) - inMv1(37,:) .* inMv2(5,:) + inMv1(38,:) .* inMv2(6,:) + inMv1(39,:) .* inMv2(7,:) + inMv1(40,:) .* inMv2(8,:);
    outMv(25,:) = -inMv1(6,:) .* inMv2(1,:) + inMv1(26,:) .* inMv2(3,:) + inMv1(30,:) .* inMv2(4,:) + inMv1(33,:) .* inMv2(5,:) - inMv1(35,:) .* inMv2(6,:) - inMv1(36,:) .* inMv2(7,:);
    outMv(26,:) = inMv1(5,:) .* inMv2(1,:) - inMv1(25,:) .* inMv2(3,:) - inMv1(29,:) .* inMv2(4,:) - inMv1(32,:) .* inMv2(5,:) + inMv1(34,:) .* inMv2(6,:) - inMv1(36,:) .* inMv2(8,:);
    outMv(27,:) = -inMv1(4,:) .* inMv2(1,:) + inMv1(24,:) .* inMv2(3,:) + inMv1(28,:) .* inMv2(4,:) + inMv1(31,:) .* inMv2(5,:) + inMv1(34,:) .* inMv2(7,:) + inMv1(35,:) .* inMv2(8,:);
    outMv(28,:) = -inMv1(3,:) .* inMv2(1,:) + inMv1(23,:) .* inMv2(3,:) + inMv1(27,:) .* inMv2(4,:) + inMv1(31,:) .* inMv2(6,:) + inMv1(32,:) .* inMv2(7,:) + inMv1(33,:) .* inMv2(8,:);
    outMv(29,:) = inMv1(2,:) .* inMv2(1,:) - inMv1(22,:) .* inMv2(3,:) + inMv1(27,:) .* inMv2(5,:) - inMv1(28,:) .* inMv2(6,:) - inMv1(29,:) .* inMv2(7,:) - inMv1(30,:) .* inMv2(8,:);
    outMv(30,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(22,:) .* inMv2(4,:) - inMv1(23,:) .* inMv2(5,:) + inMv1(24,:) .* inMv2(6,:) + inMv1(25,:) .* inMv2(7,:) + inMv1(26,:) .* inMv2(8,:);
    outMv(31,:) = -inMv1(6,:) .* inMv2(2,:) - inMv1(11,:) .* inMv2(3,:) - inMv1(15,:) .* inMv2(4,:) - inMv1(18,:) .* inMv2(5,:) + inMv1(20,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(7,:);
    outMv(32,:) = inMv1(5,:) .* inMv2(2,:) + inMv1(10,:) .* inMv2(3,:) + inMv1(14,:) .* inMv2(4,:) + inMv1(17,:) .* inMv2(5,:) - inMv1(19,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(8,:);
    outMv(33,:) = -inMv1(4,:) .* inMv2(2,:) - inMv1(9,:) .* inMv2(3,:) - inMv1(13,:) .* inMv2(4,:) - inMv1(16,:) .* inMv2(5,:) - inMv1(19,:) .* inMv2(7,:) - inMv1(20,:) .* inMv2(8,:);
    outMv(34,:) = -inMv1(3,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(3,:) - inMv1(12,:) .* inMv2(4,:) - inMv1(16,:) .* inMv2(6,:) - inMv1(17,:) .* inMv2(7,:) - inMv1(18,:) .* inMv2(8,:);
    outMv(35,:) = inMv1(2,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(3,:) - inMv1(12,:) .* inMv2(5,:) + inMv1(13,:) .* inMv2(6,:) + inMv1(14,:) .* inMv2(7,:) + inMv1(15,:) .* inMv2(8,:);
    outMv(36,:) = -inMv1(1,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(5,:) - inMv1(9,:) .* inMv2(6,:) - inMv1(10,:) .* inMv2(7,:) - inMv1(11,:) .* inMv2(8,:);
    outMv(37,:) = -inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(6,:) + inMv1(5,:) .* inMv2(7,:) + inMv1(6,:) .* inMv2(8,:);
    outMv(94,:) = inMv1(53,:) .* inMv2(8,:) - inMv1(54,:) .* inMv2(7,:) + inMv1(55,:) .* inMv2(6,:) - inMv1(56,:) .* inMv2(5,:);
    outMv(95,:) = -inMv1(50,:) .* inMv2(8,:) + inMv1(51,:) .* inMv2(7,:) - inMv1(52,:) .* inMv2(6,:) + inMv1(56,:) .* inMv2(4,:);
    outMv(96,:) = -inMv1(48,:) .* inMv2(8,:) + inMv1(49,:) .* inMv2(7,:) - inMv1(52,:) .* inMv2(5,:) + inMv1(55,:) .* inMv2(4,:);
    outMv(97,:) = inMv1(47,:) .* inMv2(8,:) - inMv1(49,:) .* inMv2(6,:) + inMv1(51,:) .* inMv2(5,:) - inMv1(54,:) .* inMv2(4,:);
    outMv(98,:) = -inMv1(47,:) .* inMv2(7,:) + inMv1(48,:) .* inMv2(6,:) - inMv1(50,:) .* inMv2(5,:) + inMv1(53,:) .* inMv2(4,:);
    outMv(99,:) = inMv1(44,:) .* inMv2(8,:) - inMv1(45,:) .* inMv2(7,:) + inMv1(46,:) .* inMv2(6,:) - inMv1(56,:) .* inMv2(3,:);
    outMv(100,:) = inMv1(42,:) .* inMv2(8,:) - inMv1(43,:) .* inMv2(7,:) + inMv1(46,:) .* inMv2(5,:) - inMv1(55,:) .* inMv2(3,:);
    outMv(101,:) = -inMv1(41,:) .* inMv2(8,:) + inMv1(43,:) .* inMv2(6,:) - inMv1(45,:) .* inMv2(5,:) + inMv1(54,:) .* inMv2(3,:);
    outMv(102,:) = inMv1(41,:) .* inMv2(7,:) - inMv1(42,:) .* inMv2(6,:) + inMv1(44,:) .* inMv2(5,:) - inMv1(53,:) .* inMv2(3,:);
    outMv(103,:) = -inMv1(39,:) .* inMv2(8,:) + inMv1(40,:) .* inMv2(7,:) - inMv1(46,:) .* inMv2(4,:) + inMv1(52,:) .* inMv2(3,:);
    outMv(104,:) = inMv1(38,:) .* inMv2(8,:) - inMv1(40,:) .* inMv2(6,:) + inMv1(45,:) .* inMv2(4,:) - inMv1(51,:) .* inMv2(3,:);
    outMv(105,:) = -inMv1(38,:) .* inMv2(7,:) + inMv1(39,:) .* inMv2(6,:) - inMv1(44,:) .* inMv2(4,:) + inMv1(50,:) .* inMv2(3,:);
    outMv(106,:) = inMv1(37,:) .* inMv2(8,:) - inMv1(40,:) .* inMv2(5,:) + inMv1(43,:) .* inMv2(4,:) - inMv1(49,:) .* inMv2(3,:);
    outMv(107,:) = -inMv1(37,:) .* inMv2(7,:) + inMv1(39,:) .* inMv2(5,:) - inMv1(42,:) .* inMv2(4,:) + inMv1(48,:) .* inMv2(3,:);
    outMv(108,:) = inMv1(37,:) .* inMv2(6,:) - inMv1(38,:) .* inMv2(5,:) + inMv1(41,:) .* inMv2(4,:) - inMv1(47,:) .* inMv2(3,:);
    outMv(109,:) = -inMv1(34,:) .* inMv2(8,:) + inMv1(35,:) .* inMv2(7,:) - inMv1(36,:) .* inMv2(6,:) + inMv1(56,:) .* inMv2(2,:);
    outMv(110,:) = -inMv1(32,:) .* inMv2(8,:) + inMv1(33,:) .* inMv2(7,:) - inMv1(36,:) .* inMv2(5,:) + inMv1(55,:) .* inMv2(2,:);
    outMv(111,:) = inMv1(31,:) .* inMv2(8,:) - inMv1(33,:) .* inMv2(6,:) + inMv1(35,:) .* inMv2(5,:) - inMv1(54,:) .* inMv2(2,:);
    outMv(112,:) = -inMv1(31,:) .* inMv2(7,:) + inMv1(32,:) .* inMv2(6,:) - inMv1(34,:) .* inMv2(5,:) + inMv1(53,:) .* inMv2(2,:);
    outMv(113,:) = inMv1(29,:) .* inMv2(8,:) - inMv1(30,:) .* inMv2(7,:) + inMv1(36,:) .* inMv2(4,:) - inMv1(52,:) .* inMv2(2,:);
    outMv(114,:) = -inMv1(28,:) .* inMv2(8,:) + inMv1(30,:) .* inMv2(6,:) - inMv1(35,:) .* inMv2(4,:) + inMv1(51,:) .* inMv2(2,:);
    outMv(115,:) = inMv1(28,:) .* inMv2(7,:) - inMv1(29,:) .* inMv2(6,:) + inMv1(34,:) .* inMv2(4,:) - inMv1(50,:) .* inMv2(2,:);
    outMv(116,:) = -inMv1(27,:) .* inMv2(8,:) + inMv1(30,:) .* inMv2(5,:) - inMv1(33,:) .* inMv2(4,:) + inMv1(49,:) .* inMv2(2,:);
    outMv(117,:) = inMv1(27,:) .* inMv2(7,:) - inMv1(29,:) .* inMv2(5,:) + inMv1(32,:) .* inMv2(4,:) - inMv1(48,:) .* inMv2(2,:);
    outMv(118,:) = -inMv1(27,:) .* inMv2(6,:) + inMv1(28,:) .* inMv2(5,:) - inMv1(31,:) .* inMv2(4,:) + inMv1(47,:) .* inMv2(2,:);
    outMv(119,:) = -inMv1(25,:) .* inMv2(8,:) + inMv1(26,:) .* inMv2(7,:) - inMv1(36,:) .* inMv2(3,:) + inMv1(46,:) .* inMv2(2,:);
    outMv(120,:) = inMv1(24,:) .* inMv2(8,:) - inMv1(26,:) .* inMv2(6,:) + inMv1(35,:) .* inMv2(3,:) - inMv1(45,:) .* inMv2(2,:);
    outMv(121,:) = -inMv1(24,:) .* inMv2(7,:) + inMv1(25,:) .* inMv2(6,:) - inMv1(34,:) .* inMv2(3,:) + inMv1(44,:) .* inMv2(2,:);
    outMv(122,:) = inMv1(23,:) .* inMv2(8,:) - inMv1(26,:) .* inMv2(5,:) + inMv1(33,:) .* inMv2(3,:) - inMv1(43,:) .* inMv2(2,:);
    outMv(123,:) = -inMv1(23,:) .* inMv2(7,:) + inMv1(25,:) .* inMv2(5,:) - inMv1(32,:) .* inMv2(3,:) + inMv1(42,:) .* inMv2(2,:);
    outMv(124,:) = inMv1(23,:) .* inMv2(6,:) - inMv1(24,:) .* inMv2(5,:) + inMv1(31,:) .* inMv2(3,:) - inMv1(41,:) .* inMv2(2,:);
    outMv(125,:) = -inMv1(22,:) .* inMv2(8,:) + inMv1(26,:) .* inMv2(4,:) - inMv1(30,:) .* inMv2(3,:) + inMv1(40,:) .* inMv2(2,:);
    outMv(126,:) = inMv1(22,:) .* inMv2(7,:) - inMv1(25,:) .* inMv2(4,:) + inMv1(29,:) .* inMv2(3,:) - inMv1(39,:) .* inMv2(2,:);
    outMv(127,:) = -inMv1(22,:) .* inMv2(6,:) + inMv1(24,:) .* inMv2(4,:) - inMv1(28,:) .* inMv2(3,:) + inMv1(38,:) .* inMv2(2,:);
    outMv(128,:) = -inMv1(22,:) .* inMv2(5,:) + inMv1(23,:) .* inMv2(4,:) - inMv1(27,:) .* inMv2(3,:) + inMv1(37,:) .* inMv2(2,:);
    outMv(129,:) = inMv1(19,:) .* inMv2(8,:) - inMv1(20,:) .* inMv2(7,:) + inMv1(21,:) .* inMv2(6,:) - inMv1(56,:) .* inMv2(1,:);
    outMv(130,:) = inMv1(17,:) .* inMv2(8,:) - inMv1(18,:) .* inMv2(7,:) + inMv1(21,:) .* inMv2(5,:) - inMv1(55,:) .* inMv2(1,:);
    outMv(131,:) = -inMv1(16,:) .* inMv2(8,:) + inMv1(18,:) .* inMv2(6,:) - inMv1(20,:) .* inMv2(5,:) + inMv1(54,:) .* inMv2(1,:);
    outMv(132,:) = inMv1(16,:) .* inMv2(7,:) - inMv1(17,:) .* inMv2(6,:) + inMv1(19,:) .* inMv2(5,:) - inMv1(53,:) .* inMv2(1,:);
    outMv(133,:) = -inMv1(14,:) .* inMv2(8,:) + inMv1(15,:) .* inMv2(7,:) - inMv1(21,:) .* inMv2(4,:) + inMv1(52,:) .* inMv2(1,:);
    outMv(134,:) = inMv1(13,:) .* inMv2(8,:) - inMv1(15,:) .* inMv2(6,:) + inMv1(20,:) .* inMv2(4,:) - inMv1(51,:) .* inMv2(1,:);
    outMv(135,:) = -inMv1(13,:) .* inMv2(7,:) + inMv1(14,:) .* inMv2(6,:) - inMv1(19,:) .* inMv2(4,:) + inMv1(50,:) .* inMv2(1,:);
    outMv(136,:) = inMv1(12,:) .* inMv2(8,:) - inMv1(15,:) .* inMv2(5,:) + inMv1(18,:) .* inMv2(4,:) - inMv1(49,:) .* inMv2(1,:);
    outMv(137,:) = -inMv1(12,:) .* inMv2(7,:) + inMv1(14,:) .* inMv2(5,:) - inMv1(17,:) .* inMv2(4,:) + inMv1(48,:) .* inMv2(1,:);
    outMv(138,:) = inMv1(12,:) .* inMv2(6,:) - inMv1(13,:) .* inMv2(5,:) + inMv1(16,:) .* inMv2(4,:) - inMv1(47,:) .* inMv2(1,:);
    outMv(139,:) = inMv1(10,:) .* inMv2(8,:) - inMv1(11,:) .* inMv2(7,:) + inMv1(21,:) .* inMv2(3,:) - inMv1(46,:) .* inMv2(1,:);
    outMv(140,:) = -inMv1(9,:) .* inMv2(8,:) + inMv1(11,:) .* inMv2(6,:) - inMv1(20,:) .* inMv2(3,:) + inMv1(45,:) .* inMv2(1,:);
    outMv(141,:) = inMv1(9,:) .* inMv2(7,:) - inMv1(10,:) .* inMv2(6,:) + inMv1(19,:) .* inMv2(3,:) - inMv1(44,:) .* inMv2(1,:);
    outMv(142,:) = -inMv1(8,:) .* inMv2(8,:) + inMv1(11,:) .* inMv2(5,:) - inMv1(18,:) .* inMv2(3,:) + inMv1(43,:) .* inMv2(1,:);
    outMv(143,:) = inMv1(8,:) .* inMv2(7,:) - inMv1(10,:) .* inMv2(5,:) + inMv1(17,:) .* inMv2(3,:) - inMv1(42,:) .* inMv2(1,:);
    outMv(144,:) = -inMv1(8,:) .* inMv2(6,:) + inMv1(9,:) .* inMv2(5,:) - inMv1(16,:) .* inMv2(3,:) + inMv1(41,:) .* inMv2(1,:);
    outMv(145,:) = inMv1(7,:) .* inMv2(8,:) - inMv1(11,:) .* inMv2(4,:) + inMv1(15,:) .* inMv2(3,:) - inMv1(40,:) .* inMv2(1,:);
    outMv(146,:) = -inMv1(7,:) .* inMv2(7,:) + inMv1(10,:) .* inMv2(4,:) - inMv1(14,:) .* inMv2(3,:) + inMv1(39,:) .* inMv2(1,:);
    outMv(147,:) = inMv1(7,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(4,:) + inMv1(13,:) .* inMv2(3,:) - inMv1(38,:) .* inMv2(1,:);
    outMv(148,:) = inMv1(7,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(4,:) + inMv1(12,:) .* inMv2(3,:) - inMv1(37,:) .* inMv2(1,:);
    outMv(149,:) = -inMv1(5,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(7,:) - inMv1(21,:) .* inMv2(2,:) + inMv1(36,:) .* inMv2(1,:);
    outMv(150,:) = inMv1(4,:) .* inMv2(8,:) - inMv1(6,:) .* inMv2(6,:) + inMv1(20,:) .* inMv2(2,:) - inMv1(35,:) .* inMv2(1,:);
    outMv(151,:) = -inMv1(4,:) .* inMv2(7,:) + inMv1(5,:) .* inMv2(6,:) - inMv1(19,:) .* inMv2(2,:) + inMv1(34,:) .* inMv2(1,:);
    outMv(152,:) = inMv1(3,:) .* inMv2(8,:) - inMv1(6,:) .* inMv2(5,:) + inMv1(18,:) .* inMv2(2,:) - inMv1(33,:) .* inMv2(1,:);
    outMv(153,:) = -inMv1(3,:) .* inMv2(7,:) + inMv1(5,:) .* inMv2(5,:) - inMv1(17,:) .* inMv2(2,:) + inMv1(32,:) .* inMv2(1,:);
    outMv(154,:) = inMv1(3,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(5,:) + inMv1(16,:) .* inMv2(2,:) - inMv1(31,:) .* inMv2(1,:);
    outMv(155,:) = -inMv1(2,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(2,:) + inMv1(30,:) .* inMv2(1,:);
    outMv(156,:) = inMv1(2,:) .* inMv2(7,:) - inMv1(5,:) .* inMv2(4,:) + inMv1(14,:) .* inMv2(2,:) - inMv1(29,:) .* inMv2(1,:);
    outMv(157,:) = -inMv1(2,:) .* inMv2(6,:) + inMv1(4,:) .* inMv2(4,:) - inMv1(13,:) .* inMv2(2,:) + inMv1(28,:) .* inMv2(1,:);
    outMv(158,:) = -inMv1(2,:) .* inMv2(5,:) + inMv1(3,:) .* inMv2(4,:) - inMv1(12,:) .* inMv2(2,:) + inMv1(27,:) .* inMv2(1,:);
    outMv(159,:) = inMv1(1,:) .* inMv2(8,:) - inMv1(6,:) .* inMv2(3,:) + inMv1(11,:) .* inMv2(2,:) - inMv1(26,:) .* inMv2(1,:);
    outMv(160,:) = -inMv1(1,:) .* inMv2(7,:) + inMv1(5,:) .* inMv2(3,:) - inMv1(10,:) .* inMv2(2,:) + inMv1(25,:) .* inMv2(1,:);
    outMv(161,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(9,:) .* inMv2(2,:) - inMv1(24,:) .* inMv2(1,:);
    outMv(162,:) = inMv1(1,:) .* inMv2(5,:) - inMv1(3,:) .* inMv2(3,:) + inMv1(8,:) .* inMv2(2,:) - inMv1(23,:) .* inMv2(1,:);
    outMv(163,:) = -inMv1(1,:) .* inMv2(4,:) + inMv1(2,:) .* inMv2(3,:) - inMv1(7,:) .* inMv2(2,:) + inMv1(22,:) .* inMv2(1,:);
end
