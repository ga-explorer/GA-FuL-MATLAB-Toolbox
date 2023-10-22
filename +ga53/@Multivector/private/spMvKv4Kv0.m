function outMv = spMvKv4Kv0(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (70,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(94,:) .* inMv2(1,:) - inMv1(95,:) .* inMv2(2,:) + inMv1(96,:) .* inMv2(3,:) + inMv1(97,:) .* inMv2(4,:) + inMv1(98,:) .* inMv2(5,:) - inMv1(99,:) .* inMv2(6,:) + inMv1(100,:) .* inMv2(7,:) + inMv1(101,:) .* inMv2(8,:) + inMv1(102,:) .* inMv2(9,:) + inMv1(103,:) .* inMv2(10,:) + inMv1(104,:) .* inMv2(11,:) + inMv1(105,:) .* inMv2(12,:) - inMv1(106,:) .* inMv2(13,:) - inMv1(107,:) .* inMv2(14,:) - inMv1(108,:) .* inMv2(15,:) - inMv1(109,:) .* inMv2(16,:) + inMv1(110,:) .* inMv2(17,:) + inMv1(111,:) .* inMv2(18,:) + inMv1(112,:) .* inMv2(19,:) + inMv1(113,:) .* inMv2(20,:) + inMv1(114,:) .* inMv2(21,:) + inMv1(115,:) .* inMv2(22,:) - inMv1(116,:) .* inMv2(23,:) - inMv1(117,:) .* inMv2(24,:) - inMv1(118,:) .* inMv2(25,:) + inMv1(119,:) .* inMv2(26,:) + inMv1(120,:) .* inMv2(27,:) + inMv1(121,:) .* inMv2(28,:) - inMv1(122,:) .* inMv2(29,:) - inMv1(123,:) .* inMv2(30,:) - inMv1(124,:) .* inMv2(31,:) - inMv1(125,:) .* inMv2(32,:) - inMv1(126,:) .* inMv2(33,:) - inMv1(127,:) .* inMv2(34,:) + inMv1(128,:) .* inMv2(35,:) - inMv1(129,:) .* inMv2(36,:) + inMv1(130,:) .* inMv2(37,:) + inMv1(131,:) .* inMv2(38,:) + inMv1(132,:) .* inMv2(39,:) + inMv1(133,:) .* inMv2(40,:) + inMv1(134,:) .* inMv2(41,:) + inMv1(135,:) .* inMv2(42,:) - inMv1(136,:) .* inMv2(43,:) - inMv1(137,:) .* inMv2(44,:) - inMv1(138,:) .* inMv2(45,:) + inMv1(139,:) .* inMv2(46,:) + inMv1(140,:) .* inMv2(47,:) + inMv1(141,:) .* inMv2(48,:) - inMv1(142,:) .* inMv2(49,:) - inMv1(143,:) .* inMv2(50,:) - inMv1(144,:) .* inMv2(51,:) - inMv1(145,:) .* inMv2(52,:) - inMv1(146,:) .* inMv2(53,:) - inMv1(147,:) .* inMv2(54,:) + inMv1(148,:) .* inMv2(55,:) + inMv1(149,:) .* inMv2(56,:) + inMv1(150,:) .* inMv2(57,:) + inMv1(151,:) .* inMv2(58,:) - inMv1(152,:) .* inMv2(59,:) - inMv1(153,:) .* inMv2(60,:) - inMv1(154,:) .* inMv2(61,:) - inMv1(155,:) .* inMv2(62,:) - inMv1(156,:) .* inMv2(63,:) - inMv1(157,:) .* inMv2(64,:) + inMv1(158,:) .* inMv2(65,:) - inMv1(159,:) .* inMv2(66,:) - inMv1(160,:) .* inMv2(67,:) - inMv1(161,:) .* inMv2(68,:) + inMv1(162,:) .* inMv2(69,:) + inMv1(163,:) .* inMv2(70,:);
end
