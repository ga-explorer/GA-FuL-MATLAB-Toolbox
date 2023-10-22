function outMv = conjugateMvMv(inMv)
    arguments
        inMv (256,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = -inMv(2,:);
    outMv(3,:) = -inMv(3,:);
    outMv(4,:) = -inMv(4,:);
    outMv(5,:) = inMv(5,:);
    outMv(6,:) = inMv(6,:);
    outMv(7,:) = inMv(7,:);
    outMv(8,:) = inMv(8,:);
    outMv(9,:) = inMv(9,:);
    outMv(10,:) = -inMv(10,:);
    outMv(11,:) = -inMv(11,:);
    outMv(12,:) = -inMv(12,:);
    outMv(13,:) = inMv(13,:);
    outMv(14,:) = inMv(14,:);
    outMv(15,:) = inMv(15,:);
    outMv(16,:) = inMv(16,:);
    outMv(17,:) = inMv(17,:);
    outMv(18,:) = inMv(18,:);
    outMv(19,:) = -inMv(19,:);
    outMv(20,:) = inMv(20,:);
    outMv(21,:) = inMv(21,:);
    outMv(22,:) = inMv(22,:);
    outMv(23,:) = -inMv(23,:);
    outMv(24,:) = -inMv(24,:);
    outMv(25,:) = inMv(25,:);
    outMv(26,:) = inMv(26,:);
    outMv(27,:) = inMv(27,:);
    outMv(28,:) = -inMv(28,:);
    outMv(29,:) = -inMv(29,:);
    outMv(30,:) = -inMv(30,:);
    outMv(31,:) = inMv(31,:);
    outMv(32,:) = inMv(32,:);
    outMv(33,:) = inMv(33,:);
    outMv(34,:) = -inMv(34,:);
    outMv(35,:) = -inMv(35,:);
    outMv(36,:) = -inMv(36,:);
    outMv(37,:) = -inMv(37,:);
    outMv(38,:) = inMv(38,:);
    outMv(39,:) = -inMv(39,:);
    outMv(40,:) = -inMv(40,:);
    outMv(41,:) = -inMv(41,:);
    outMv(42,:) = -inMv(42,:);
    outMv(43,:) = -inMv(43,:);
    outMv(44,:) = -inMv(44,:);
    outMv(45,:) = inMv(45,:);
    outMv(46,:) = inMv(46,:);
    outMv(47,:) = inMv(47,:);
    outMv(48,:) = -inMv(48,:);
    outMv(49,:) = -inMv(49,:);
    outMv(50,:) = -inMv(50,:);
    outMv(51,:) = inMv(51,:);
    outMv(52,:) = inMv(52,:);
    outMv(53,:) = inMv(53,:);
    outMv(54,:) = inMv(54,:);
    outMv(55,:) = inMv(55,:);
    outMv(56,:) = inMv(56,:);
    outMv(57,:) = -inMv(57,:);
    outMv(58,:) = -inMv(58,:);
    outMv(59,:) = -inMv(59,:);
    outMv(60,:) = -inMv(60,:);
    outMv(61,:) = inMv(61,:);
    outMv(62,:) = inMv(62,:);
    outMv(63,:) = inMv(63,:);
    outMv(64,:) = inMv(64,:);
    outMv(65,:) = inMv(65,:);
    outMv(66,:) = inMv(66,:);
    outMv(67,:) = -inMv(67,:);
    outMv(68,:) = inMv(68,:);
    outMv(69,:) = inMv(69,:);
    outMv(70,:) = inMv(70,:);
    outMv(71,:) = -inMv(71,:);
    outMv(72,:) = -inMv(72,:);
    outMv(73,:) = -inMv(73,:);
    outMv(74,:) = -inMv(74,:);
    outMv(75,:) = -inMv(75,:);
    outMv(76,:) = inMv(76,:);
    outMv(77,:) = inMv(77,:);
    outMv(78,:) = inMv(78,:);
    outMv(79,:) = inMv(79,:);
    outMv(80,:) = inMv(80,:);
    outMv(81,:) = inMv(81,:);
    outMv(82,:) = -inMv(82,:);
    outMv(83,:) = inMv(83,:);
    outMv(84,:) = inMv(84,:);
    outMv(85,:) = inMv(85,:);
    outMv(86,:) = -inMv(86,:);
    outMv(87,:) = -inMv(87,:);
    outMv(88,:) = inMv(88,:);
    outMv(89,:) = inMv(89,:);
    outMv(90,:) = inMv(90,:);
    outMv(91,:) = -inMv(91,:);
    outMv(92,:) = -inMv(92,:);
    outMv(93,:) = -inMv(93,:);
    outMv(94,:) = -inMv(94,:);
    outMv(95,:) = -inMv(95,:);
    outMv(96,:) = inMv(96,:);
    outMv(97,:) = inMv(97,:);
    outMv(98,:) = inMv(98,:);
    outMv(99,:) = -inMv(99,:);
    outMv(100,:) = inMv(100,:);
    outMv(101,:) = inMv(101,:);
    outMv(102,:) = inMv(102,:);
    outMv(103,:) = inMv(103,:);
    outMv(104,:) = inMv(104,:);
    outMv(105,:) = inMv(105,:);
    outMv(106,:) = -inMv(106,:);
    outMv(107,:) = -inMv(107,:);
    outMv(108,:) = -inMv(108,:);
    outMv(109,:) = -inMv(109,:);
    outMv(110,:) = inMv(110,:);
    outMv(111,:) = inMv(111,:);
    outMv(112,:) = inMv(112,:);
    outMv(113,:) = inMv(113,:);
    outMv(114,:) = inMv(114,:);
    outMv(115,:) = inMv(115,:);
    outMv(116,:) = -inMv(116,:);
    outMv(117,:) = -inMv(117,:);
    outMv(118,:) = -inMv(118,:);
    outMv(119,:) = inMv(119,:);
    outMv(120,:) = inMv(120,:);
    outMv(121,:) = inMv(121,:);
    outMv(122,:) = -inMv(122,:);
    outMv(123,:) = -inMv(123,:);
    outMv(124,:) = -inMv(124,:);
    outMv(125,:) = -inMv(125,:);
    outMv(126,:) = -inMv(126,:);
    outMv(127,:) = -inMv(127,:);
    outMv(128,:) = inMv(128,:);
    outMv(129,:) = -inMv(129,:);
    outMv(130,:) = inMv(130,:);
    outMv(131,:) = inMv(131,:);
    outMv(132,:) = inMv(132,:);
    outMv(133,:) = inMv(133,:);
    outMv(134,:) = inMv(134,:);
    outMv(135,:) = inMv(135,:);
    outMv(136,:) = -inMv(136,:);
    outMv(137,:) = -inMv(137,:);
    outMv(138,:) = -inMv(138,:);
    outMv(139,:) = inMv(139,:);
    outMv(140,:) = inMv(140,:);
    outMv(141,:) = inMv(141,:);
    outMv(142,:) = -inMv(142,:);
    outMv(143,:) = -inMv(143,:);
    outMv(144,:) = -inMv(144,:);
    outMv(145,:) = -inMv(145,:);
    outMv(146,:) = -inMv(146,:);
    outMv(147,:) = -inMv(147,:);
    outMv(148,:) = inMv(148,:);
    outMv(149,:) = inMv(149,:);
    outMv(150,:) = inMv(150,:);
    outMv(151,:) = inMv(151,:);
    outMv(152,:) = -inMv(152,:);
    outMv(153,:) = -inMv(153,:);
    outMv(154,:) = -inMv(154,:);
    outMv(155,:) = -inMv(155,:);
    outMv(156,:) = -inMv(156,:);
    outMv(157,:) = -inMv(157,:);
    outMv(158,:) = inMv(158,:);
    outMv(159,:) = -inMv(159,:);
    outMv(160,:) = -inMv(160,:);
    outMv(161,:) = -inMv(161,:);
    outMv(162,:) = inMv(162,:);
    outMv(163,:) = inMv(163,:);
    outMv(164,:) = -inMv(164,:);
    outMv(165,:) = -inMv(165,:);
    outMv(166,:) = -inMv(166,:);
    outMv(167,:) = inMv(167,:);
    outMv(168,:) = inMv(168,:);
    outMv(169,:) = inMv(169,:);
    outMv(170,:) = -inMv(170,:);
    outMv(171,:) = -inMv(171,:);
    outMv(172,:) = inMv(172,:);
    outMv(173,:) = inMv(173,:);
    outMv(174,:) = inMv(174,:);
    outMv(175,:) = -inMv(175,:);
    outMv(176,:) = inMv(176,:);
    outMv(177,:) = inMv(177,:);
    outMv(178,:) = inMv(178,:);
    outMv(179,:) = inMv(179,:);
    outMv(180,:) = inMv(180,:);
    outMv(181,:) = inMv(181,:);
    outMv(182,:) = -inMv(182,:);
    outMv(183,:) = -inMv(183,:);
    outMv(184,:) = -inMv(184,:);
    outMv(185,:) = -inMv(185,:);
    outMv(186,:) = -inMv(186,:);
    outMv(187,:) = inMv(187,:);
    outMv(188,:) = inMv(188,:);
    outMv(189,:) = inMv(189,:);
    outMv(190,:) = -inMv(190,:);
    outMv(191,:) = inMv(191,:);
    outMv(192,:) = inMv(192,:);
    outMv(193,:) = inMv(193,:);
    outMv(194,:) = inMv(194,:);
    outMv(195,:) = inMv(195,:);
    outMv(196,:) = inMv(196,:);
    outMv(197,:) = -inMv(197,:);
    outMv(198,:) = -inMv(198,:);
    outMv(199,:) = -inMv(199,:);
    outMv(200,:) = -inMv(200,:);
    outMv(201,:) = inMv(201,:);
    outMv(202,:) = inMv(202,:);
    outMv(203,:) = inMv(203,:);
    outMv(204,:) = inMv(204,:);
    outMv(205,:) = inMv(205,:);
    outMv(206,:) = inMv(206,:);
    outMv(207,:) = -inMv(207,:);
    outMv(208,:) = -inMv(208,:);
    outMv(209,:) = -inMv(209,:);
    outMv(210,:) = inMv(210,:);
    outMv(211,:) = inMv(211,:);
    outMv(212,:) = inMv(212,:);
    outMv(213,:) = -inMv(213,:);
    outMv(214,:) = -inMv(214,:);
    outMv(215,:) = -inMv(215,:);
    outMv(216,:) = -inMv(216,:);
    outMv(217,:) = -inMv(217,:);
    outMv(218,:) = -inMv(218,:);
    outMv(219,:) = inMv(219,:);
    outMv(220,:) = inMv(220,:);
    outMv(221,:) = inMv(221,:);
    outMv(222,:) = inMv(222,:);
    outMv(223,:) = inMv(223,:);
    outMv(224,:) = -inMv(224,:);
    outMv(225,:) = -inMv(225,:);
    outMv(226,:) = -inMv(226,:);
    outMv(227,:) = inMv(227,:);
    outMv(228,:) = inMv(228,:);
    outMv(229,:) = inMv(229,:);
    outMv(230,:) = -inMv(230,:);
    outMv(231,:) = -inMv(231,:);
    outMv(232,:) = -inMv(232,:);
    outMv(233,:) = inMv(233,:);
    outMv(234,:) = inMv(234,:);
    outMv(235,:) = -inMv(235,:);
    outMv(236,:) = -inMv(236,:);
    outMv(237,:) = -inMv(237,:);
    outMv(238,:) = inMv(238,:);
    outMv(239,:) = -inMv(239,:);
    outMv(240,:) = -inMv(240,:);
    outMv(241,:) = -inMv(241,:);
    outMv(242,:) = -inMv(242,:);
    outMv(243,:) = -inMv(243,:);
    outMv(244,:) = -inMv(244,:);
    outMv(245,:) = inMv(245,:);
    outMv(246,:) = inMv(246,:);
    outMv(247,:) = inMv(247,:);
    outMv(248,:) = inMv(248,:);
    outMv(249,:) = inMv(249,:);
    outMv(250,:) = inMv(250,:);
    outMv(251,:) = inMv(251,:);
    outMv(252,:) = inMv(252,:);
    outMv(253,:) = -inMv(253,:);
    outMv(254,:) = -inMv(254,:);
    outMv(255,:) = -inMv(255,:);
    outMv(256,:) = -inMv(256,:);
end
