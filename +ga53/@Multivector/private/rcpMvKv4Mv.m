% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpMvKv4Mv(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (70,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(94,:) .* inMv2(1,:) - inMv1(95,:) .* inMv2(2,:) + inMv1(96,:) .* inMv2(3,:) + inMv1(97,:) .* inMv2(4,:) + inMv1(98,:) .* inMv2(5,:) - inMv1(99,:) .* inMv2(6,:) + inMv1(100,:) .* inMv2(7,:) + inMv1(101,:) .* inMv2(8,:) + inMv1(102,:) .* inMv2(9,:) + inMv1(103,:) .* inMv2(10,:) + inMv1(104,:) .* inMv2(11,:) + inMv1(105,:) .* inMv2(12,:) - inMv1(106,:) .* inMv2(13,:) - inMv1(107,:) .* inMv2(14,:) - inMv1(108,:) .* inMv2(15,:) - inMv1(109,:) .* inMv2(16,:) + inMv1(110,:) .* inMv2(17,:) + inMv1(111,:) .* inMv2(18,:) + inMv1(112,:) .* inMv2(19,:) + inMv1(113,:) .* inMv2(20,:) + inMv1(114,:) .* inMv2(21,:) + inMv1(115,:) .* inMv2(22,:) - inMv1(116,:) .* inMv2(23,:) - inMv1(117,:) .* inMv2(24,:) - inMv1(118,:) .* inMv2(25,:) + inMv1(119,:) .* inMv2(26,:) + inMv1(120,:) .* inMv2(27,:) + inMv1(121,:) .* inMv2(28,:) - inMv1(122,:) .* inMv2(29,:) - inMv1(123,:) .* inMv2(30,:) - inMv1(124,:) .* inMv2(31,:) - inMv1(125,:) .* inMv2(32,:) - inMv1(126,:) .* inMv2(33,:) - inMv1(127,:) .* inMv2(34,:) + inMv1(128,:) .* inMv2(35,:) - inMv1(129,:) .* inMv2(36,:) + inMv1(130,:) .* inMv2(37,:) + inMv1(131,:) .* inMv2(38,:) + inMv1(132,:) .* inMv2(39,:) + inMv1(133,:) .* inMv2(40,:) + inMv1(134,:) .* inMv2(41,:) + inMv1(135,:) .* inMv2(42,:) - inMv1(136,:) .* inMv2(43,:) - inMv1(137,:) .* inMv2(44,:) - inMv1(138,:) .* inMv2(45,:) + inMv1(139,:) .* inMv2(46,:) + inMv1(140,:) .* inMv2(47,:) + inMv1(141,:) .* inMv2(48,:) - inMv1(142,:) .* inMv2(49,:) - inMv1(143,:) .* inMv2(50,:) - inMv1(144,:) .* inMv2(51,:) - inMv1(145,:) .* inMv2(52,:) - inMv1(146,:) .* inMv2(53,:) - inMv1(147,:) .* inMv2(54,:) + inMv1(148,:) .* inMv2(55,:) + inMv1(149,:) .* inMv2(56,:) + inMv1(150,:) .* inMv2(57,:) + inMv1(151,:) .* inMv2(58,:) - inMv1(152,:) .* inMv2(59,:) - inMv1(153,:) .* inMv2(60,:) - inMv1(154,:) .* inMv2(61,:) - inMv1(155,:) .* inMv2(62,:) - inMv1(156,:) .* inMv2(63,:) - inMv1(157,:) .* inMv2(64,:) + inMv1(158,:) .* inMv2(65,:) - inMv1(159,:) .* inMv2(66,:) - inMv1(160,:) .* inMv2(67,:) - inMv1(161,:) .* inMv2(68,:) + inMv1(162,:) .* inMv2(69,:) + inMv1(163,:) .* inMv2(70,:);
    outMv(2,:) = inMv1(164,:) .* inMv2(5,:) + inMv1(165,:) .* inMv2(9,:) + inMv1(166,:) .* inMv2(12,:) - inMv1(167,:) .* inMv2(14,:) - inMv1(168,:) .* inMv2(15,:) + inMv1(170,:) .* inMv2(19,:) + inMv1(171,:) .* inMv2(22,:) - inMv1(172,:) .* inMv2(24,:) - inMv1(173,:) .* inMv2(25,:) + inMv1(175,:) .* inMv2(28,:) - inMv1(176,:) .* inMv2(30,:) - inMv1(177,:) .* inMv2(31,:) - inMv1(179,:) .* inMv2(33,:) - inMv1(180,:) .* inMv2(34,:) + inMv1(182,:) .* inMv2(35,:) + inMv1(185,:) .* inMv2(39,:) + inMv1(186,:) .* inMv2(42,:) - inMv1(187,:) .* inMv2(44,:) - inMv1(188,:) .* inMv2(45,:) + inMv1(190,:) .* inMv2(48,:) - inMv1(191,:) .* inMv2(50,:) - inMv1(192,:) .* inMv2(51,:) - inMv1(194,:) .* inMv2(53,:) - inMv1(195,:) .* inMv2(54,:) + inMv1(197,:) .* inMv2(55,:) + inMv1(200,:) .* inMv2(58,:) - inMv1(201,:) .* inMv2(60,:) - inMv1(202,:) .* inMv2(61,:) - inMv1(204,:) .* inMv2(63,:) - inMv1(205,:) .* inMv2(64,:) + inMv1(207,:) .* inMv2(65,:) - inMv1(210,:) .* inMv2(67,:) - inMv1(211,:) .* inMv2(68,:) + inMv1(213,:) .* inMv2(69,:) + inMv1(216,:) .* inMv2(70,:);
    outMv(3,:) = -inMv1(164,:) .* inMv2(4,:) - inMv1(165,:) .* inMv2(8,:) - inMv1(166,:) .* inMv2(11,:) + inMv1(167,:) .* inMv2(13,:) - inMv1(169,:) .* inMv2(15,:) - inMv1(170,:) .* inMv2(18,:) - inMv1(171,:) .* inMv2(21,:) + inMv1(172,:) .* inMv2(23,:) - inMv1(174,:) .* inMv2(25,:) - inMv1(175,:) .* inMv2(27,:) + inMv1(176,:) .* inMv2(29,:) - inMv1(178,:) .* inMv2(31,:) + inMv1(179,:) .* inMv2(32,:) - inMv1(181,:) .* inMv2(34,:) + inMv1(183,:) .* inMv2(35,:) - inMv1(185,:) .* inMv2(38,:) - inMv1(186,:) .* inMv2(41,:) + inMv1(187,:) .* inMv2(43,:) - inMv1(189,:) .* inMv2(45,:) - inMv1(190,:) .* inMv2(47,:) + inMv1(191,:) .* inMv2(49,:) - inMv1(193,:) .* inMv2(51,:) + inMv1(194,:) .* inMv2(52,:) - inMv1(196,:) .* inMv2(54,:) + inMv1(198,:) .* inMv2(55,:) - inMv1(200,:) .* inMv2(57,:) + inMv1(201,:) .* inMv2(59,:) - inMv1(203,:) .* inMv2(61,:) + inMv1(204,:) .* inMv2(62,:) - inMv1(206,:) .* inMv2(64,:) + inMv1(208,:) .* inMv2(65,:) + inMv1(210,:) .* inMv2(66,:) - inMv1(212,:) .* inMv2(68,:) + inMv1(214,:) .* inMv2(69,:) + inMv1(217,:) .* inMv2(70,:);
    outMv(4,:) = inMv1(164,:) .* inMv2(3,:) + inMv1(165,:) .* inMv2(7,:) + inMv1(166,:) .* inMv2(10,:) + inMv1(168,:) .* inMv2(13,:) + inMv1(169,:) .* inMv2(14,:) + inMv1(170,:) .* inMv2(17,:) + inMv1(171,:) .* inMv2(20,:) + inMv1(173,:) .* inMv2(23,:) + inMv1(174,:) .* inMv2(24,:) + inMv1(175,:) .* inMv2(26,:) + inMv1(177,:) .* inMv2(29,:) + inMv1(178,:) .* inMv2(30,:) + inMv1(180,:) .* inMv2(32,:) + inMv1(181,:) .* inMv2(33,:) + inMv1(184,:) .* inMv2(35,:) + inMv1(185,:) .* inMv2(37,:) + inMv1(186,:) .* inMv2(40,:) + inMv1(188,:) .* inMv2(43,:) + inMv1(189,:) .* inMv2(44,:) + inMv1(190,:) .* inMv2(46,:) + inMv1(192,:) .* inMv2(49,:) + inMv1(193,:) .* inMv2(50,:) + inMv1(195,:) .* inMv2(52,:) + inMv1(196,:) .* inMv2(53,:) + inMv1(199,:) .* inMv2(55,:) + inMv1(200,:) .* inMv2(56,:) + inMv1(202,:) .* inMv2(59,:) + inMv1(203,:) .* inMv2(60,:) + inMv1(205,:) .* inMv2(62,:) + inMv1(206,:) .* inMv2(63,:) + inMv1(209,:) .* inMv2(65,:) + inMv1(211,:) .* inMv2(66,:) + inMv1(212,:) .* inMv2(67,:) + inMv1(215,:) .* inMv2(69,:) + inMv1(218,:) .* inMv2(70,:);
    outMv(5,:) = inMv1(164,:) .* inMv2(2,:) + inMv1(165,:) .* inMv2(6,:) + inMv1(167,:) .* inMv2(10,:) + inMv1(168,:) .* inMv2(11,:) + inMv1(169,:) .* inMv2(12,:) + inMv1(170,:) .* inMv2(16,:) + inMv1(172,:) .* inMv2(20,:) + inMv1(173,:) .* inMv2(21,:) + inMv1(174,:) .* inMv2(22,:) + inMv1(176,:) .* inMv2(26,:) + inMv1(177,:) .* inMv2(27,:) + inMv1(178,:) .* inMv2(28,:) + inMv1(182,:) .* inMv2(32,:) + inMv1(183,:) .* inMv2(33,:) + inMv1(184,:) .* inMv2(34,:) + inMv1(185,:) .* inMv2(36,:) + inMv1(187,:) .* inMv2(40,:) + inMv1(188,:) .* inMv2(41,:) + inMv1(189,:) .* inMv2(42,:) + inMv1(191,:) .* inMv2(46,:) + inMv1(192,:) .* inMv2(47,:) + inMv1(193,:) .* inMv2(48,:) + inMv1(197,:) .* inMv2(52,:) + inMv1(198,:) .* inMv2(53,:) + inMv1(199,:) .* inMv2(54,:) + inMv1(201,:) .* inMv2(56,:) + inMv1(202,:) .* inMv2(57,:) + inMv1(203,:) .* inMv2(58,:) + inMv1(207,:) .* inMv2(62,:) + inMv1(208,:) .* inMv2(63,:) + inMv1(209,:) .* inMv2(64,:) + inMv1(213,:) .* inMv2(66,:) + inMv1(214,:) .* inMv2(67,:) + inMv1(215,:) .* inMv2(68,:) + inMv1(219,:) .* inMv2(70,:);
    outMv(6,:) = -inMv1(164,:) .* inMv2(1,:) + inMv1(166,:) .* inMv2(6,:) - inMv1(167,:) .* inMv2(7,:) - inMv1(168,:) .* inMv2(8,:) - inMv1(169,:) .* inMv2(9,:) + inMv1(171,:) .* inMv2(16,:) - inMv1(172,:) .* inMv2(17,:) - inMv1(173,:) .* inMv2(18,:) - inMv1(174,:) .* inMv2(19,:) + inMv1(179,:) .* inMv2(26,:) + inMv1(180,:) .* inMv2(27,:) + inMv1(181,:) .* inMv2(28,:) - inMv1(182,:) .* inMv2(29,:) - inMv1(183,:) .* inMv2(30,:) - inMv1(184,:) .* inMv2(31,:) + inMv1(186,:) .* inMv2(36,:) - inMv1(187,:) .* inMv2(37,:) - inMv1(188,:) .* inMv2(38,:) - inMv1(189,:) .* inMv2(39,:) + inMv1(194,:) .* inMv2(46,:) + inMv1(195,:) .* inMv2(47,:) + inMv1(196,:) .* inMv2(48,:) - inMv1(197,:) .* inMv2(49,:) - inMv1(198,:) .* inMv2(50,:) - inMv1(199,:) .* inMv2(51,:) + inMv1(204,:) .* inMv2(56,:) + inMv1(205,:) .* inMv2(57,:) + inMv1(206,:) .* inMv2(58,:) - inMv1(207,:) .* inMv2(59,:) - inMv1(208,:) .* inMv2(60,:) - inMv1(209,:) .* inMv2(61,:) + inMv1(216,:) .* inMv2(66,:) + inMv1(217,:) .* inMv2(67,:) + inMv1(218,:) .* inMv2(68,:) - inMv1(219,:) .* inMv2(69,:);
    outMv(7,:) = -inMv1(165,:) .* inMv2(1,:) - inMv1(166,:) .* inMv2(2,:) + inMv1(167,:) .* inMv2(3,:) + inMv1(168,:) .* inMv2(4,:) + inMv1(169,:) .* inMv2(5,:) + inMv1(175,:) .* inMv2(16,:) - inMv1(176,:) .* inMv2(17,:) - inMv1(177,:) .* inMv2(18,:) - inMv1(178,:) .* inMv2(19,:) - inMv1(179,:) .* inMv2(20,:) - inMv1(180,:) .* inMv2(21,:) - inMv1(181,:) .* inMv2(22,:) + inMv1(182,:) .* inMv2(23,:) + inMv1(183,:) .* inMv2(24,:) + inMv1(184,:) .* inMv2(25,:) + inMv1(190,:) .* inMv2(36,:) - inMv1(191,:) .* inMv2(37,:) - inMv1(192,:) .* inMv2(38,:) - inMv1(193,:) .* inMv2(39,:) - inMv1(194,:) .* inMv2(40,:) - inMv1(195,:) .* inMv2(41,:) - inMv1(196,:) .* inMv2(42,:) + inMv1(197,:) .* inMv2(43,:) + inMv1(198,:) .* inMv2(44,:) + inMv1(199,:) .* inMv2(45,:) + inMv1(210,:) .* inMv2(56,:) + inMv1(211,:) .* inMv2(57,:) + inMv1(212,:) .* inMv2(58,:) - inMv1(213,:) .* inMv2(59,:) - inMv1(214,:) .* inMv2(60,:) - inMv1(215,:) .* inMv2(61,:) - inMv1(216,:) .* inMv2(62,:) - inMv1(217,:) .* inMv2(63,:) - inMv1(218,:) .* inMv2(64,:) + inMv1(219,:) .* inMv2(65,:);
    outMv(8,:) = -inMv1(170,:) .* inMv2(1,:) - inMv1(171,:) .* inMv2(2,:) + inMv1(172,:) .* inMv2(3,:) + inMv1(173,:) .* inMv2(4,:) + inMv1(174,:) .* inMv2(5,:) - inMv1(175,:) .* inMv2(6,:) + inMv1(176,:) .* inMv2(7,:) + inMv1(177,:) .* inMv2(8,:) + inMv1(178,:) .* inMv2(9,:) + inMv1(179,:) .* inMv2(10,:) + inMv1(180,:) .* inMv2(11,:) + inMv1(181,:) .* inMv2(12,:) - inMv1(182,:) .* inMv2(13,:) - inMv1(183,:) .* inMv2(14,:) - inMv1(184,:) .* inMv2(15,:) + inMv1(200,:) .* inMv2(36,:) - inMv1(201,:) .* inMv2(37,:) - inMv1(202,:) .* inMv2(38,:) - inMv1(203,:) .* inMv2(39,:) - inMv1(204,:) .* inMv2(40,:) - inMv1(205,:) .* inMv2(41,:) - inMv1(206,:) .* inMv2(42,:) + inMv1(207,:) .* inMv2(43,:) + inMv1(208,:) .* inMv2(44,:) + inMv1(209,:) .* inMv2(45,:) - inMv1(210,:) .* inMv2(46,:) - inMv1(211,:) .* inMv2(47,:) - inMv1(212,:) .* inMv2(48,:) + inMv1(213,:) .* inMv2(49,:) + inMv1(214,:) .* inMv2(50,:) + inMv1(215,:) .* inMv2(51,:) + inMv1(216,:) .* inMv2(52,:) + inMv1(217,:) .* inMv2(53,:) + inMv1(218,:) .* inMv2(54,:) - inMv1(219,:) .* inMv2(55,:);
    outMv(9,:) = -inMv1(185,:) .* inMv2(1,:) - inMv1(186,:) .* inMv2(2,:) + inMv1(187,:) .* inMv2(3,:) + inMv1(188,:) .* inMv2(4,:) + inMv1(189,:) .* inMv2(5,:) - inMv1(190,:) .* inMv2(6,:) + inMv1(191,:) .* inMv2(7,:) + inMv1(192,:) .* inMv2(8,:) + inMv1(193,:) .* inMv2(9,:) + inMv1(194,:) .* inMv2(10,:) + inMv1(195,:) .* inMv2(11,:) + inMv1(196,:) .* inMv2(12,:) - inMv1(197,:) .* inMv2(13,:) - inMv1(198,:) .* inMv2(14,:) - inMv1(199,:) .* inMv2(15,:) - inMv1(200,:) .* inMv2(16,:) + inMv1(201,:) .* inMv2(17,:) + inMv1(202,:) .* inMv2(18,:) + inMv1(203,:) .* inMv2(19,:) + inMv1(204,:) .* inMv2(20,:) + inMv1(205,:) .* inMv2(21,:) + inMv1(206,:) .* inMv2(22,:) - inMv1(207,:) .* inMv2(23,:) - inMv1(208,:) .* inMv2(24,:) - inMv1(209,:) .* inMv2(25,:) + inMv1(210,:) .* inMv2(26,:) + inMv1(211,:) .* inMv2(27,:) + inMv1(212,:) .* inMv2(28,:) - inMv1(213,:) .* inMv2(29,:) - inMv1(214,:) .* inMv2(30,:) - inMv1(215,:) .* inMv2(31,:) - inMv1(216,:) .* inMv2(32,:) - inMv1(217,:) .* inMv2(33,:) - inMv1(218,:) .* inMv2(34,:) + inMv1(219,:) .* inMv2(35,:);
    outMv(10,:) = -inMv1(220,:) .* inMv2(15,:) - inMv1(221,:) .* inMv2(25,:) - inMv1(222,:) .* inMv2(31,:) - inMv1(223,:) .* inMv2(34,:) + inMv1(224,:) .* inMv2(35,:) - inMv1(227,:) .* inMv2(45,:) - inMv1(228,:) .* inMv2(51,:) - inMv1(229,:) .* inMv2(54,:) + inMv1(230,:) .* inMv2(55,:) - inMv1(233,:) .* inMv2(61,:) - inMv1(234,:) .* inMv2(64,:) + inMv1(235,:) .* inMv2(65,:) - inMv1(238,:) .* inMv2(68,:) + inMv1(239,:) .* inMv2(69,:) + inMv1(242,:) .* inMv2(70,:);
    outMv(11,:) = inMv1(220,:) .* inMv2(14,:) + inMv1(221,:) .* inMv2(24,:) + inMv1(222,:) .* inMv2(30,:) + inMv1(223,:) .* inMv2(33,:) + inMv1(225,:) .* inMv2(35,:) + inMv1(227,:) .* inMv2(44,:) + inMv1(228,:) .* inMv2(50,:) + inMv1(229,:) .* inMv2(53,:) + inMv1(231,:) .* inMv2(55,:) + inMv1(233,:) .* inMv2(60,:) + inMv1(234,:) .* inMv2(63,:) + inMv1(236,:) .* inMv2(65,:) + inMv1(238,:) .* inMv2(67,:) + inMv1(240,:) .* inMv2(69,:) + inMv1(243,:) .* inMv2(70,:);
    outMv(12,:) = -inMv1(220,:) .* inMv2(13,:) - inMv1(221,:) .* inMv2(23,:) - inMv1(222,:) .* inMv2(29,:) - inMv1(223,:) .* inMv2(32,:) + inMv1(226,:) .* inMv2(35,:) - inMv1(227,:) .* inMv2(43,:) - inMv1(228,:) .* inMv2(49,:) - inMv1(229,:) .* inMv2(52,:) + inMv1(232,:) .* inMv2(55,:) - inMv1(233,:) .* inMv2(59,:) - inMv1(234,:) .* inMv2(62,:) + inMv1(237,:) .* inMv2(65,:) - inMv1(238,:) .* inMv2(66,:) + inMv1(241,:) .* inMv2(69,:) + inMv1(244,:) .* inMv2(70,:);
    outMv(13,:) = inMv1(220,:) .* inMv2(12,:) + inMv1(221,:) .* inMv2(22,:) + inMv1(222,:) .* inMv2(28,:) + inMv1(224,:) .* inMv2(33,:) + inMv1(225,:) .* inMv2(34,:) + inMv1(227,:) .* inMv2(42,:) + inMv1(228,:) .* inMv2(48,:) + inMv1(230,:) .* inMv2(53,:) + inMv1(231,:) .* inMv2(54,:) + inMv1(233,:) .* inMv2(58,:) + inMv1(235,:) .* inMv2(63,:) + inMv1(236,:) .* inMv2(64,:) + inMv1(239,:) .* inMv2(67,:) + inMv1(240,:) .* inMv2(68,:) + inMv1(245,:) .* inMv2(70,:);
    outMv(14,:) = -inMv1(220,:) .* inMv2(11,:) - inMv1(221,:) .* inMv2(21,:) - inMv1(222,:) .* inMv2(27,:) - inMv1(224,:) .* inMv2(32,:) + inMv1(226,:) .* inMv2(34,:) - inMv1(227,:) .* inMv2(41,:) - inMv1(228,:) .* inMv2(47,:) - inMv1(230,:) .* inMv2(52,:) + inMv1(232,:) .* inMv2(54,:) - inMv1(233,:) .* inMv2(57,:) - inMv1(235,:) .* inMv2(62,:) + inMv1(237,:) .* inMv2(64,:) - inMv1(239,:) .* inMv2(66,:) + inMv1(241,:) .* inMv2(68,:) + inMv1(246,:) .* inMv2(70,:);
    outMv(15,:) = inMv1(220,:) .* inMv2(10,:) + inMv1(221,:) .* inMv2(20,:) + inMv1(222,:) .* inMv2(26,:) - inMv1(225,:) .* inMv2(32,:) - inMv1(226,:) .* inMv2(33,:) + inMv1(227,:) .* inMv2(40,:) + inMv1(228,:) .* inMv2(46,:) - inMv1(231,:) .* inMv2(52,:) - inMv1(232,:) .* inMv2(53,:) + inMv1(233,:) .* inMv2(56,:) - inMv1(236,:) .* inMv2(62,:) - inMv1(237,:) .* inMv2(63,:) - inMv1(240,:) .* inMv2(66,:) - inMv1(241,:) .* inMv2(67,:) + inMv1(247,:) .* inMv2(70,:);
    outMv(16,:) = -inMv1(220,:) .* inMv2(9,:) - inMv1(221,:) .* inMv2(19,:) + inMv1(223,:) .* inMv2(28,:) - inMv1(224,:) .* inMv2(30,:) - inMv1(225,:) .* inMv2(31,:) - inMv1(227,:) .* inMv2(39,:) + inMv1(229,:) .* inMv2(48,:) - inMv1(230,:) .* inMv2(50,:) - inMv1(231,:) .* inMv2(51,:) + inMv1(234,:) .* inMv2(58,:) - inMv1(235,:) .* inMv2(60,:) - inMv1(236,:) .* inMv2(61,:) + inMv1(242,:) .* inMv2(67,:) + inMv1(243,:) .* inMv2(68,:) - inMv1(245,:) .* inMv2(69,:);
    outMv(17,:) = inMv1(220,:) .* inMv2(8,:) + inMv1(221,:) .* inMv2(18,:) - inMv1(223,:) .* inMv2(27,:) + inMv1(224,:) .* inMv2(29,:) - inMv1(226,:) .* inMv2(31,:) + inMv1(227,:) .* inMv2(38,:) - inMv1(229,:) .* inMv2(47,:) + inMv1(230,:) .* inMv2(49,:) - inMv1(232,:) .* inMv2(51,:) - inMv1(234,:) .* inMv2(57,:) + inMv1(235,:) .* inMv2(59,:) - inMv1(237,:) .* inMv2(61,:) - inMv1(242,:) .* inMv2(66,:) + inMv1(244,:) .* inMv2(68,:) - inMv1(246,:) .* inMv2(69,:);
    outMv(18,:) = -inMv1(220,:) .* inMv2(7,:) - inMv1(221,:) .* inMv2(17,:) + inMv1(223,:) .* inMv2(26,:) + inMv1(225,:) .* inMv2(29,:) + inMv1(226,:) .* inMv2(30,:) - inMv1(227,:) .* inMv2(37,:) + inMv1(229,:) .* inMv2(46,:) + inMv1(231,:) .* inMv2(49,:) + inMv1(232,:) .* inMv2(50,:) + inMv1(234,:) .* inMv2(56,:) + inMv1(236,:) .* inMv2(59,:) + inMv1(237,:) .* inMv2(60,:) - inMv1(243,:) .* inMv2(66,:) - inMv1(244,:) .* inMv2(67,:) - inMv1(247,:) .* inMv2(69,:);
    outMv(19,:) = -inMv1(220,:) .* inMv2(6,:) - inMv1(221,:) .* inMv2(16,:) + inMv1(224,:) .* inMv2(26,:) + inMv1(225,:) .* inMv2(27,:) + inMv1(226,:) .* inMv2(28,:) - inMv1(227,:) .* inMv2(36,:) + inMv1(230,:) .* inMv2(46,:) + inMv1(231,:) .* inMv2(47,:) + inMv1(232,:) .* inMv2(48,:) + inMv1(235,:) .* inMv2(56,:) + inMv1(236,:) .* inMv2(57,:) + inMv1(237,:) .* inMv2(58,:) - inMv1(245,:) .* inMv2(66,:) - inMv1(246,:) .* inMv2(67,:) - inMv1(247,:) .* inMv2(68,:);
    outMv(20,:) = inMv1(220,:) .* inMv2(5,:) - inMv1(222,:) .* inMv2(19,:) - inMv1(223,:) .* inMv2(22,:) + inMv1(224,:) .* inMv2(24,:) + inMv1(225,:) .* inMv2(25,:) - inMv1(228,:) .* inMv2(39,:) - inMv1(229,:) .* inMv2(42,:) + inMv1(230,:) .* inMv2(44,:) + inMv1(231,:) .* inMv2(45,:) + inMv1(238,:) .* inMv2(58,:) - inMv1(239,:) .* inMv2(60,:) - inMv1(240,:) .* inMv2(61,:) - inMv1(242,:) .* inMv2(63,:) - inMv1(243,:) .* inMv2(64,:) + inMv1(245,:) .* inMv2(65,:);
    outMv(21,:) = -inMv1(220,:) .* inMv2(4,:) + inMv1(222,:) .* inMv2(18,:) + inMv1(223,:) .* inMv2(21,:) - inMv1(224,:) .* inMv2(23,:) + inMv1(226,:) .* inMv2(25,:) + inMv1(228,:) .* inMv2(38,:) + inMv1(229,:) .* inMv2(41,:) - inMv1(230,:) .* inMv2(43,:) + inMv1(232,:) .* inMv2(45,:) - inMv1(238,:) .* inMv2(57,:) + inMv1(239,:) .* inMv2(59,:) - inMv1(241,:) .* inMv2(61,:) + inMv1(242,:) .* inMv2(62,:) - inMv1(244,:) .* inMv2(64,:) + inMv1(246,:) .* inMv2(65,:);
    outMv(22,:) = inMv1(220,:) .* inMv2(3,:) - inMv1(222,:) .* inMv2(17,:) - inMv1(223,:) .* inMv2(20,:) - inMv1(225,:) .* inMv2(23,:) - inMv1(226,:) .* inMv2(24,:) - inMv1(228,:) .* inMv2(37,:) - inMv1(229,:) .* inMv2(40,:) - inMv1(231,:) .* inMv2(43,:) - inMv1(232,:) .* inMv2(44,:) + inMv1(238,:) .* inMv2(56,:) + inMv1(240,:) .* inMv2(59,:) + inMv1(241,:) .* inMv2(60,:) + inMv1(243,:) .* inMv2(62,:) + inMv1(244,:) .* inMv2(63,:) + inMv1(247,:) .* inMv2(65,:);
    outMv(23,:) = inMv1(220,:) .* inMv2(2,:) - inMv1(222,:) .* inMv2(16,:) - inMv1(224,:) .* inMv2(20,:) - inMv1(225,:) .* inMv2(21,:) - inMv1(226,:) .* inMv2(22,:) - inMv1(228,:) .* inMv2(36,:) - inMv1(230,:) .* inMv2(40,:) - inMv1(231,:) .* inMv2(41,:) - inMv1(232,:) .* inMv2(42,:) + inMv1(239,:) .* inMv2(56,:) + inMv1(240,:) .* inMv2(57,:) + inMv1(241,:) .* inMv2(58,:) + inMv1(245,:) .* inMv2(62,:) + inMv1(246,:) .* inMv2(63,:) + inMv1(247,:) .* inMv2(64,:);
    outMv(24,:) = -inMv1(220,:) .* inMv2(1,:) - inMv1(223,:) .* inMv2(16,:) + inMv1(224,:) .* inMv2(17,:) + inMv1(225,:) .* inMv2(18,:) + inMv1(226,:) .* inMv2(19,:) - inMv1(229,:) .* inMv2(36,:) + inMv1(230,:) .* inMv2(37,:) + inMv1(231,:) .* inMv2(38,:) + inMv1(232,:) .* inMv2(39,:) + inMv1(242,:) .* inMv2(56,:) + inMv1(243,:) .* inMv2(57,:) + inMv1(244,:) .* inMv2(58,:) - inMv1(245,:) .* inMv2(59,:) - inMv1(246,:) .* inMv2(60,:) - inMv1(247,:) .* inMv2(61,:);
    outMv(25,:) = inMv1(221,:) .* inMv2(5,:) + inMv1(222,:) .* inMv2(9,:) + inMv1(223,:) .* inMv2(12,:) - inMv1(224,:) .* inMv2(14,:) - inMv1(225,:) .* inMv2(15,:) - inMv1(233,:) .* inMv2(39,:) - inMv1(234,:) .* inMv2(42,:) + inMv1(235,:) .* inMv2(44,:) + inMv1(236,:) .* inMv2(45,:) - inMv1(238,:) .* inMv2(48,:) + inMv1(239,:) .* inMv2(50,:) + inMv1(240,:) .* inMv2(51,:) + inMv1(242,:) .* inMv2(53,:) + inMv1(243,:) .* inMv2(54,:) - inMv1(245,:) .* inMv2(55,:);
    outMv(26,:) = -inMv1(221,:) .* inMv2(4,:) - inMv1(222,:) .* inMv2(8,:) - inMv1(223,:) .* inMv2(11,:) + inMv1(224,:) .* inMv2(13,:) - inMv1(226,:) .* inMv2(15,:) + inMv1(233,:) .* inMv2(38,:) + inMv1(234,:) .* inMv2(41,:) - inMv1(235,:) .* inMv2(43,:) + inMv1(237,:) .* inMv2(45,:) + inMv1(238,:) .* inMv2(47,:) - inMv1(239,:) .* inMv2(49,:) + inMv1(241,:) .* inMv2(51,:) - inMv1(242,:) .* inMv2(52,:) + inMv1(244,:) .* inMv2(54,:) - inMv1(246,:) .* inMv2(55,:);
    outMv(27,:) = inMv1(221,:) .* inMv2(3,:) + inMv1(222,:) .* inMv2(7,:) + inMv1(223,:) .* inMv2(10,:) + inMv1(225,:) .* inMv2(13,:) + inMv1(226,:) .* inMv2(14,:) - inMv1(233,:) .* inMv2(37,:) - inMv1(234,:) .* inMv2(40,:) - inMv1(236,:) .* inMv2(43,:) - inMv1(237,:) .* inMv2(44,:) - inMv1(238,:) .* inMv2(46,:) - inMv1(240,:) .* inMv2(49,:) - inMv1(241,:) .* inMv2(50,:) - inMv1(243,:) .* inMv2(52,:) - inMv1(244,:) .* inMv2(53,:) - inMv1(247,:) .* inMv2(55,:);
    outMv(28,:) = inMv1(221,:) .* inMv2(2,:) + inMv1(222,:) .* inMv2(6,:) + inMv1(224,:) .* inMv2(10,:) + inMv1(225,:) .* inMv2(11,:) + inMv1(226,:) .* inMv2(12,:) - inMv1(233,:) .* inMv2(36,:) - inMv1(235,:) .* inMv2(40,:) - inMv1(236,:) .* inMv2(41,:) - inMv1(237,:) .* inMv2(42,:) - inMv1(239,:) .* inMv2(46,:) - inMv1(240,:) .* inMv2(47,:) - inMv1(241,:) .* inMv2(48,:) - inMv1(245,:) .* inMv2(52,:) - inMv1(246,:) .* inMv2(53,:) - inMv1(247,:) .* inMv2(54,:);
    outMv(29,:) = -inMv1(221,:) .* inMv2(1,:) + inMv1(223,:) .* inMv2(6,:) - inMv1(224,:) .* inMv2(7,:) - inMv1(225,:) .* inMv2(8,:) - inMv1(226,:) .* inMv2(9,:) - inMv1(234,:) .* inMv2(36,:) + inMv1(235,:) .* inMv2(37,:) + inMv1(236,:) .* inMv2(38,:) + inMv1(237,:) .* inMv2(39,:) - inMv1(242,:) .* inMv2(46,:) - inMv1(243,:) .* inMv2(47,:) - inMv1(244,:) .* inMv2(48,:) + inMv1(245,:) .* inMv2(49,:) + inMv1(246,:) .* inMv2(50,:) + inMv1(247,:) .* inMv2(51,:);
    outMv(30,:) = -inMv1(222,:) .* inMv2(1,:) - inMv1(223,:) .* inMv2(2,:) + inMv1(224,:) .* inMv2(3,:) + inMv1(225,:) .* inMv2(4,:) + inMv1(226,:) .* inMv2(5,:) - inMv1(238,:) .* inMv2(36,:) + inMv1(239,:) .* inMv2(37,:) + inMv1(240,:) .* inMv2(38,:) + inMv1(241,:) .* inMv2(39,:) + inMv1(242,:) .* inMv2(40,:) + inMv1(243,:) .* inMv2(41,:) + inMv1(244,:) .* inMv2(42,:) - inMv1(245,:) .* inMv2(43,:) - inMv1(246,:) .* inMv2(44,:) - inMv1(247,:) .* inMv2(45,:);
    outMv(31,:) = inMv1(227,:) .* inMv2(5,:) + inMv1(228,:) .* inMv2(9,:) + inMv1(229,:) .* inMv2(12,:) - inMv1(230,:) .* inMv2(14,:) - inMv1(231,:) .* inMv2(15,:) + inMv1(233,:) .* inMv2(19,:) + inMv1(234,:) .* inMv2(22,:) - inMv1(235,:) .* inMv2(24,:) - inMv1(236,:) .* inMv2(25,:) + inMv1(238,:) .* inMv2(28,:) - inMv1(239,:) .* inMv2(30,:) - inMv1(240,:) .* inMv2(31,:) - inMv1(242,:) .* inMv2(33,:) - inMv1(243,:) .* inMv2(34,:) + inMv1(245,:) .* inMv2(35,:);
    outMv(32,:) = -inMv1(227,:) .* inMv2(4,:) - inMv1(228,:) .* inMv2(8,:) - inMv1(229,:) .* inMv2(11,:) + inMv1(230,:) .* inMv2(13,:) - inMv1(232,:) .* inMv2(15,:) - inMv1(233,:) .* inMv2(18,:) - inMv1(234,:) .* inMv2(21,:) + inMv1(235,:) .* inMv2(23,:) - inMv1(237,:) .* inMv2(25,:) - inMv1(238,:) .* inMv2(27,:) + inMv1(239,:) .* inMv2(29,:) - inMv1(241,:) .* inMv2(31,:) + inMv1(242,:) .* inMv2(32,:) - inMv1(244,:) .* inMv2(34,:) + inMv1(246,:) .* inMv2(35,:);
    outMv(33,:) = inMv1(227,:) .* inMv2(3,:) + inMv1(228,:) .* inMv2(7,:) + inMv1(229,:) .* inMv2(10,:) + inMv1(231,:) .* inMv2(13,:) + inMv1(232,:) .* inMv2(14,:) + inMv1(233,:) .* inMv2(17,:) + inMv1(234,:) .* inMv2(20,:) + inMv1(236,:) .* inMv2(23,:) + inMv1(237,:) .* inMv2(24,:) + inMv1(238,:) .* inMv2(26,:) + inMv1(240,:) .* inMv2(29,:) + inMv1(241,:) .* inMv2(30,:) + inMv1(243,:) .* inMv2(32,:) + inMv1(244,:) .* inMv2(33,:) + inMv1(247,:) .* inMv2(35,:);
    outMv(34,:) = inMv1(227,:) .* inMv2(2,:) + inMv1(228,:) .* inMv2(6,:) + inMv1(230,:) .* inMv2(10,:) + inMv1(231,:) .* inMv2(11,:) + inMv1(232,:) .* inMv2(12,:) + inMv1(233,:) .* inMv2(16,:) + inMv1(235,:) .* inMv2(20,:) + inMv1(236,:) .* inMv2(21,:) + inMv1(237,:) .* inMv2(22,:) + inMv1(239,:) .* inMv2(26,:) + inMv1(240,:) .* inMv2(27,:) + inMv1(241,:) .* inMv2(28,:) + inMv1(245,:) .* inMv2(32,:) + inMv1(246,:) .* inMv2(33,:) + inMv1(247,:) .* inMv2(34,:);
    outMv(35,:) = -inMv1(227,:) .* inMv2(1,:) + inMv1(229,:) .* inMv2(6,:) - inMv1(230,:) .* inMv2(7,:) - inMv1(231,:) .* inMv2(8,:) - inMv1(232,:) .* inMv2(9,:) + inMv1(234,:) .* inMv2(16,:) - inMv1(235,:) .* inMv2(17,:) - inMv1(236,:) .* inMv2(18,:) - inMv1(237,:) .* inMv2(19,:) + inMv1(242,:) .* inMv2(26,:) + inMv1(243,:) .* inMv2(27,:) + inMv1(244,:) .* inMv2(28,:) - inMv1(245,:) .* inMv2(29,:) - inMv1(246,:) .* inMv2(30,:) - inMv1(247,:) .* inMv2(31,:);
    outMv(36,:) = -inMv1(228,:) .* inMv2(1,:) - inMv1(229,:) .* inMv2(2,:) + inMv1(230,:) .* inMv2(3,:) + inMv1(231,:) .* inMv2(4,:) + inMv1(232,:) .* inMv2(5,:) + inMv1(238,:) .* inMv2(16,:) - inMv1(239,:) .* inMv2(17,:) - inMv1(240,:) .* inMv2(18,:) - inMv1(241,:) .* inMv2(19,:) - inMv1(242,:) .* inMv2(20,:) - inMv1(243,:) .* inMv2(21,:) - inMv1(244,:) .* inMv2(22,:) + inMv1(245,:) .* inMv2(23,:) + inMv1(246,:) .* inMv2(24,:) + inMv1(247,:) .* inMv2(25,:);
    outMv(37,:) = -inMv1(233,:) .* inMv2(1,:) - inMv1(234,:) .* inMv2(2,:) + inMv1(235,:) .* inMv2(3,:) + inMv1(236,:) .* inMv2(4,:) + inMv1(237,:) .* inMv2(5,:) - inMv1(238,:) .* inMv2(6,:) + inMv1(239,:) .* inMv2(7,:) + inMv1(240,:) .* inMv2(8,:) + inMv1(241,:) .* inMv2(9,:) + inMv1(242,:) .* inMv2(10,:) + inMv1(243,:) .* inMv2(11,:) + inMv1(244,:) .* inMv2(12,:) - inMv1(245,:) .* inMv2(13,:) - inMv1(246,:) .* inMv2(14,:) - inMv1(247,:) .* inMv2(15,:);
    outMv(38,:) = inMv1(248,:) .* inMv2(35,:) + inMv1(249,:) .* inMv2(55,:) + inMv1(250,:) .* inMv2(65,:) + inMv1(251,:) .* inMv2(69,:) + inMv1(252,:) .* inMv2(70,:);
    outMv(39,:) = inMv1(248,:) .* inMv2(34,:) + inMv1(249,:) .* inMv2(54,:) + inMv1(250,:) .* inMv2(64,:) + inMv1(251,:) .* inMv2(68,:) + inMv1(253,:) .* inMv2(70,:);
    outMv(40,:) = -inMv1(248,:) .* inMv2(33,:) - inMv1(249,:) .* inMv2(53,:) - inMv1(250,:) .* inMv2(63,:) - inMv1(251,:) .* inMv2(67,:) + inMv1(254,:) .* inMv2(70,:);
    outMv(41,:) = inMv1(248,:) .* inMv2(32,:) + inMv1(249,:) .* inMv2(52,:) + inMv1(250,:) .* inMv2(62,:) + inMv1(251,:) .* inMv2(66,:) + inMv1(255,:) .* inMv2(70,:);
    outMv(42,:) = -inMv1(248,:) .* inMv2(31,:) - inMv1(249,:) .* inMv2(51,:) - inMv1(250,:) .* inMv2(61,:) + inMv1(252,:) .* inMv2(68,:) - inMv1(253,:) .* inMv2(69,:);
    outMv(43,:) = inMv1(248,:) .* inMv2(30,:) + inMv1(249,:) .* inMv2(50,:) + inMv1(250,:) .* inMv2(60,:) - inMv1(252,:) .* inMv2(67,:) - inMv1(254,:) .* inMv2(69,:);
    outMv(44,:) = -inMv1(248,:) .* inMv2(29,:) - inMv1(249,:) .* inMv2(49,:) - inMv1(250,:) .* inMv2(59,:) + inMv1(252,:) .* inMv2(66,:) - inMv1(255,:) .* inMv2(69,:);
    outMv(45,:) = inMv1(248,:) .* inMv2(28,:) + inMv1(249,:) .* inMv2(48,:) + inMv1(250,:) .* inMv2(58,:) - inMv1(253,:) .* inMv2(67,:) - inMv1(254,:) .* inMv2(68,:);
    outMv(46,:) = -inMv1(248,:) .* inMv2(27,:) - inMv1(249,:) .* inMv2(47,:) - inMv1(250,:) .* inMv2(57,:) + inMv1(253,:) .* inMv2(66,:) - inMv1(255,:) .* inMv2(68,:);
    outMv(47,:) = inMv1(248,:) .* inMv2(26,:) + inMv1(249,:) .* inMv2(46,:) + inMv1(250,:) .* inMv2(56,:) + inMv1(254,:) .* inMv2(66,:) + inMv1(255,:) .* inMv2(67,:);
    outMv(48,:) = inMv1(248,:) .* inMv2(25,:) + inMv1(249,:) .* inMv2(45,:) - inMv1(251,:) .* inMv2(61,:) - inMv1(252,:) .* inMv2(64,:) + inMv1(253,:) .* inMv2(65,:);
    outMv(49,:) = -inMv1(248,:) .* inMv2(24,:) - inMv1(249,:) .* inMv2(44,:) + inMv1(251,:) .* inMv2(60,:) + inMv1(252,:) .* inMv2(63,:) + inMv1(254,:) .* inMv2(65,:);
    outMv(50,:) = inMv1(248,:) .* inMv2(23,:) + inMv1(249,:) .* inMv2(43,:) - inMv1(251,:) .* inMv2(59,:) - inMv1(252,:) .* inMv2(62,:) + inMv1(255,:) .* inMv2(65,:);
    outMv(51,:) = -inMv1(248,:) .* inMv2(22,:) - inMv1(249,:) .* inMv2(42,:) + inMv1(251,:) .* inMv2(58,:) + inMv1(253,:) .* inMv2(63,:) + inMv1(254,:) .* inMv2(64,:);
    outMv(52,:) = inMv1(248,:) .* inMv2(21,:) + inMv1(249,:) .* inMv2(41,:) - inMv1(251,:) .* inMv2(57,:) - inMv1(253,:) .* inMv2(62,:) + inMv1(255,:) .* inMv2(64,:);
    outMv(53,:) = -inMv1(248,:) .* inMv2(20,:) - inMv1(249,:) .* inMv2(40,:) + inMv1(251,:) .* inMv2(56,:) - inMv1(254,:) .* inMv2(62,:) - inMv1(255,:) .* inMv2(63,:);
    outMv(54,:) = inMv1(248,:) .* inMv2(19,:) + inMv1(249,:) .* inMv2(39,:) + inMv1(252,:) .* inMv2(58,:) - inMv1(253,:) .* inMv2(60,:) - inMv1(254,:) .* inMv2(61,:);
    outMv(55,:) = -inMv1(248,:) .* inMv2(18,:) - inMv1(249,:) .* inMv2(38,:) - inMv1(252,:) .* inMv2(57,:) + inMv1(253,:) .* inMv2(59,:) - inMv1(255,:) .* inMv2(61,:);
    outMv(56,:) = inMv1(248,:) .* inMv2(17,:) + inMv1(249,:) .* inMv2(37,:) + inMv1(252,:) .* inMv2(56,:) + inMv1(254,:) .* inMv2(59,:) + inMv1(255,:) .* inMv2(60,:);
    outMv(57,:) = inMv1(248,:) .* inMv2(16,:) + inMv1(249,:) .* inMv2(36,:) + inMv1(253,:) .* inMv2(56,:) + inMv1(254,:) .* inMv2(57,:) + inMv1(255,:) .* inMv2(58,:);
    outMv(58,:) = -inMv1(248,:) .* inMv2(15,:) + inMv1(250,:) .* inMv2(45,:) + inMv1(251,:) .* inMv2(51,:) + inMv1(252,:) .* inMv2(54,:) - inMv1(253,:) .* inMv2(55,:);
    outMv(59,:) = inMv1(248,:) .* inMv2(14,:) - inMv1(250,:) .* inMv2(44,:) - inMv1(251,:) .* inMv2(50,:) - inMv1(252,:) .* inMv2(53,:) - inMv1(254,:) .* inMv2(55,:);
    outMv(60,:) = -inMv1(248,:) .* inMv2(13,:) + inMv1(250,:) .* inMv2(43,:) + inMv1(251,:) .* inMv2(49,:) + inMv1(252,:) .* inMv2(52,:) - inMv1(255,:) .* inMv2(55,:);
    outMv(61,:) = inMv1(248,:) .* inMv2(12,:) - inMv1(250,:) .* inMv2(42,:) - inMv1(251,:) .* inMv2(48,:) - inMv1(253,:) .* inMv2(53,:) - inMv1(254,:) .* inMv2(54,:);
    outMv(62,:) = -inMv1(248,:) .* inMv2(11,:) + inMv1(250,:) .* inMv2(41,:) + inMv1(251,:) .* inMv2(47,:) + inMv1(253,:) .* inMv2(52,:) - inMv1(255,:) .* inMv2(54,:);
    outMv(63,:) = inMv1(248,:) .* inMv2(10,:) - inMv1(250,:) .* inMv2(40,:) - inMv1(251,:) .* inMv2(46,:) + inMv1(254,:) .* inMv2(52,:) + inMv1(255,:) .* inMv2(53,:);
    outMv(64,:) = -inMv1(248,:) .* inMv2(9,:) + inMv1(250,:) .* inMv2(39,:) - inMv1(252,:) .* inMv2(48,:) + inMv1(253,:) .* inMv2(50,:) + inMv1(254,:) .* inMv2(51,:);
    outMv(65,:) = inMv1(248,:) .* inMv2(8,:) - inMv1(250,:) .* inMv2(38,:) + inMv1(252,:) .* inMv2(47,:) - inMv1(253,:) .* inMv2(49,:) + inMv1(255,:) .* inMv2(51,:);
    outMv(66,:) = -inMv1(248,:) .* inMv2(7,:) + inMv1(250,:) .* inMv2(37,:) - inMv1(252,:) .* inMv2(46,:) - inMv1(254,:) .* inMv2(49,:) - inMv1(255,:) .* inMv2(50,:);
    outMv(67,:) = -inMv1(248,:) .* inMv2(6,:) + inMv1(250,:) .* inMv2(36,:) - inMv1(253,:) .* inMv2(46,:) - inMv1(254,:) .* inMv2(47,:) - inMv1(255,:) .* inMv2(48,:);
    outMv(68,:) = inMv1(248,:) .* inMv2(5,:) + inMv1(251,:) .* inMv2(39,:) + inMv1(252,:) .* inMv2(42,:) - inMv1(253,:) .* inMv2(44,:) - inMv1(254,:) .* inMv2(45,:);
    outMv(69,:) = -inMv1(248,:) .* inMv2(4,:) - inMv1(251,:) .* inMv2(38,:) - inMv1(252,:) .* inMv2(41,:) + inMv1(253,:) .* inMv2(43,:) - inMv1(255,:) .* inMv2(45,:);
    outMv(70,:) = inMv1(248,:) .* inMv2(3,:) + inMv1(251,:) .* inMv2(37,:) + inMv1(252,:) .* inMv2(40,:) + inMv1(254,:) .* inMv2(43,:) + inMv1(255,:) .* inMv2(44,:);
    outMv(71,:) = inMv1(248,:) .* inMv2(2,:) + inMv1(251,:) .* inMv2(36,:) + inMv1(253,:) .* inMv2(40,:) + inMv1(254,:) .* inMv2(41,:) + inMv1(255,:) .* inMv2(42,:);
    outMv(72,:) = -inMv1(248,:) .* inMv2(1,:) + inMv1(252,:) .* inMv2(36,:) - inMv1(253,:) .* inMv2(37,:) - inMv1(254,:) .* inMv2(38,:) - inMv1(255,:) .* inMv2(39,:);
    outMv(73,:) = -inMv1(249,:) .* inMv2(15,:) - inMv1(250,:) .* inMv2(25,:) - inMv1(251,:) .* inMv2(31,:) - inMv1(252,:) .* inMv2(34,:) + inMv1(253,:) .* inMv2(35,:);
    outMv(74,:) = inMv1(249,:) .* inMv2(14,:) + inMv1(250,:) .* inMv2(24,:) + inMv1(251,:) .* inMv2(30,:) + inMv1(252,:) .* inMv2(33,:) + inMv1(254,:) .* inMv2(35,:);
    outMv(75,:) = -inMv1(249,:) .* inMv2(13,:) - inMv1(250,:) .* inMv2(23,:) - inMv1(251,:) .* inMv2(29,:) - inMv1(252,:) .* inMv2(32,:) + inMv1(255,:) .* inMv2(35,:);
    outMv(76,:) = inMv1(249,:) .* inMv2(12,:) + inMv1(250,:) .* inMv2(22,:) + inMv1(251,:) .* inMv2(28,:) + inMv1(253,:) .* inMv2(33,:) + inMv1(254,:) .* inMv2(34,:);
    outMv(77,:) = -inMv1(249,:) .* inMv2(11,:) - inMv1(250,:) .* inMv2(21,:) - inMv1(251,:) .* inMv2(27,:) - inMv1(253,:) .* inMv2(32,:) + inMv1(255,:) .* inMv2(34,:);
    outMv(78,:) = inMv1(249,:) .* inMv2(10,:) + inMv1(250,:) .* inMv2(20,:) + inMv1(251,:) .* inMv2(26,:) - inMv1(254,:) .* inMv2(32,:) - inMv1(255,:) .* inMv2(33,:);
    outMv(79,:) = -inMv1(249,:) .* inMv2(9,:) - inMv1(250,:) .* inMv2(19,:) + inMv1(252,:) .* inMv2(28,:) - inMv1(253,:) .* inMv2(30,:) - inMv1(254,:) .* inMv2(31,:);
    outMv(80,:) = inMv1(249,:) .* inMv2(8,:) + inMv1(250,:) .* inMv2(18,:) - inMv1(252,:) .* inMv2(27,:) + inMv1(253,:) .* inMv2(29,:) - inMv1(255,:) .* inMv2(31,:);
    outMv(81,:) = -inMv1(249,:) .* inMv2(7,:) - inMv1(250,:) .* inMv2(17,:) + inMv1(252,:) .* inMv2(26,:) + inMv1(254,:) .* inMv2(29,:) + inMv1(255,:) .* inMv2(30,:);
    outMv(82,:) = -inMv1(249,:) .* inMv2(6,:) - inMv1(250,:) .* inMv2(16,:) + inMv1(253,:) .* inMv2(26,:) + inMv1(254,:) .* inMv2(27,:) + inMv1(255,:) .* inMv2(28,:);
    outMv(83,:) = inMv1(249,:) .* inMv2(5,:) - inMv1(251,:) .* inMv2(19,:) - inMv1(252,:) .* inMv2(22,:) + inMv1(253,:) .* inMv2(24,:) + inMv1(254,:) .* inMv2(25,:);
    outMv(84,:) = -inMv1(249,:) .* inMv2(4,:) + inMv1(251,:) .* inMv2(18,:) + inMv1(252,:) .* inMv2(21,:) - inMv1(253,:) .* inMv2(23,:) + inMv1(255,:) .* inMv2(25,:);
    outMv(85,:) = inMv1(249,:) .* inMv2(3,:) - inMv1(251,:) .* inMv2(17,:) - inMv1(252,:) .* inMv2(20,:) - inMv1(254,:) .* inMv2(23,:) - inMv1(255,:) .* inMv2(24,:);
    outMv(86,:) = inMv1(249,:) .* inMv2(2,:) - inMv1(251,:) .* inMv2(16,:) - inMv1(253,:) .* inMv2(20,:) - inMv1(254,:) .* inMv2(21,:) - inMv1(255,:) .* inMv2(22,:);
    outMv(87,:) = -inMv1(249,:) .* inMv2(1,:) - inMv1(252,:) .* inMv2(16,:) + inMv1(253,:) .* inMv2(17,:) + inMv1(254,:) .* inMv2(18,:) + inMv1(255,:) .* inMv2(19,:);
    outMv(88,:) = inMv1(250,:) .* inMv2(5,:) + inMv1(251,:) .* inMv2(9,:) + inMv1(252,:) .* inMv2(12,:) - inMv1(253,:) .* inMv2(14,:) - inMv1(254,:) .* inMv2(15,:);
    outMv(89,:) = -inMv1(250,:) .* inMv2(4,:) - inMv1(251,:) .* inMv2(8,:) - inMv1(252,:) .* inMv2(11,:) + inMv1(253,:) .* inMv2(13,:) - inMv1(255,:) .* inMv2(15,:);
    outMv(90,:) = inMv1(250,:) .* inMv2(3,:) + inMv1(251,:) .* inMv2(7,:) + inMv1(252,:) .* inMv2(10,:) + inMv1(254,:) .* inMv2(13,:) + inMv1(255,:) .* inMv2(14,:);
    outMv(91,:) = inMv1(250,:) .* inMv2(2,:) + inMv1(251,:) .* inMv2(6,:) + inMv1(253,:) .* inMv2(10,:) + inMv1(254,:) .* inMv2(11,:) + inMv1(255,:) .* inMv2(12,:);
    outMv(92,:) = -inMv1(250,:) .* inMv2(1,:) + inMv1(252,:) .* inMv2(6,:) - inMv1(253,:) .* inMv2(7,:) - inMv1(254,:) .* inMv2(8,:) - inMv1(255,:) .* inMv2(9,:);
    outMv(93,:) = -inMv1(251,:) .* inMv2(1,:) - inMv1(252,:) .* inMv2(2,:) + inMv1(253,:) .* inMv2(3,:) + inMv1(254,:) .* inMv2(4,:) + inMv1(255,:) .* inMv2(5,:);
    outMv(94,:) = inMv1(256,:) .* inMv2(70,:);
    outMv(95,:) = -inMv1(256,:) .* inMv2(69,:);
    outMv(96,:) = -inMv1(256,:) .* inMv2(68,:);
    outMv(97,:) = inMv1(256,:) .* inMv2(67,:);
    outMv(98,:) = -inMv1(256,:) .* inMv2(66,:);
    outMv(99,:) = inMv1(256,:) .* inMv2(65,:);
    outMv(100,:) = inMv1(256,:) .* inMv2(64,:);
    outMv(101,:) = -inMv1(256,:) .* inMv2(63,:);
    outMv(102,:) = inMv1(256,:) .* inMv2(62,:);
    outMv(103,:) = -inMv1(256,:) .* inMv2(61,:);
    outMv(104,:) = inMv1(256,:) .* inMv2(60,:);
    outMv(105,:) = -inMv1(256,:) .* inMv2(59,:);
    outMv(106,:) = inMv1(256,:) .* inMv2(58,:);
    outMv(107,:) = -inMv1(256,:) .* inMv2(57,:);
    outMv(108,:) = inMv1(256,:) .* inMv2(56,:);
    outMv(109,:) = -inMv1(256,:) .* inMv2(55,:);
    outMv(110,:) = -inMv1(256,:) .* inMv2(54,:);
    outMv(111,:) = inMv1(256,:) .* inMv2(53,:);
    outMv(112,:) = -inMv1(256,:) .* inMv2(52,:);
    outMv(113,:) = inMv1(256,:) .* inMv2(51,:);
    outMv(114,:) = -inMv1(256,:) .* inMv2(50,:);
    outMv(115,:) = inMv1(256,:) .* inMv2(49,:);
    outMv(116,:) = -inMv1(256,:) .* inMv2(48,:);
    outMv(117,:) = inMv1(256,:) .* inMv2(47,:);
    outMv(118,:) = -inMv1(256,:) .* inMv2(46,:);
    outMv(119,:) = -inMv1(256,:) .* inMv2(45,:);
    outMv(120,:) = inMv1(256,:) .* inMv2(44,:);
    outMv(121,:) = -inMv1(256,:) .* inMv2(43,:);
    outMv(122,:) = inMv1(256,:) .* inMv2(42,:);
    outMv(123,:) = -inMv1(256,:) .* inMv2(41,:);
    outMv(124,:) = inMv1(256,:) .* inMv2(40,:);
    outMv(125,:) = -inMv1(256,:) .* inMv2(39,:);
    outMv(126,:) = inMv1(256,:) .* inMv2(38,:);
    outMv(127,:) = -inMv1(256,:) .* inMv2(37,:);
    outMv(128,:) = -inMv1(256,:) .* inMv2(36,:);
    outMv(129,:) = inMv1(256,:) .* inMv2(35,:);
    outMv(130,:) = inMv1(256,:) .* inMv2(34,:);
    outMv(131,:) = -inMv1(256,:) .* inMv2(33,:);
    outMv(132,:) = inMv1(256,:) .* inMv2(32,:);
    outMv(133,:) = -inMv1(256,:) .* inMv2(31,:);
    outMv(134,:) = inMv1(256,:) .* inMv2(30,:);
    outMv(135,:) = -inMv1(256,:) .* inMv2(29,:);
    outMv(136,:) = inMv1(256,:) .* inMv2(28,:);
    outMv(137,:) = -inMv1(256,:) .* inMv2(27,:);
    outMv(138,:) = inMv1(256,:) .* inMv2(26,:);
    outMv(139,:) = inMv1(256,:) .* inMv2(25,:);
    outMv(140,:) = -inMv1(256,:) .* inMv2(24,:);
    outMv(141,:) = inMv1(256,:) .* inMv2(23,:);
    outMv(142,:) = -inMv1(256,:) .* inMv2(22,:);
    outMv(143,:) = inMv1(256,:) .* inMv2(21,:);
    outMv(144,:) = -inMv1(256,:) .* inMv2(20,:);
    outMv(145,:) = inMv1(256,:) .* inMv2(19,:);
    outMv(146,:) = -inMv1(256,:) .* inMv2(18,:);
    outMv(147,:) = inMv1(256,:) .* inMv2(17,:);
    outMv(148,:) = inMv1(256,:) .* inMv2(16,:);
    outMv(149,:) = -inMv1(256,:) .* inMv2(15,:);
    outMv(150,:) = inMv1(256,:) .* inMv2(14,:);
    outMv(151,:) = -inMv1(256,:) .* inMv2(13,:);
    outMv(152,:) = inMv1(256,:) .* inMv2(12,:);
    outMv(153,:) = -inMv1(256,:) .* inMv2(11,:);
    outMv(154,:) = inMv1(256,:) .* inMv2(10,:);
    outMv(155,:) = -inMv1(256,:) .* inMv2(9,:);
    outMv(156,:) = inMv1(256,:) .* inMv2(8,:);
    outMv(157,:) = -inMv1(256,:) .* inMv2(7,:);
    outMv(158,:) = -inMv1(256,:) .* inMv2(6,:);
    outMv(159,:) = inMv1(256,:) .* inMv2(5,:);
    outMv(160,:) = -inMv1(256,:) .* inMv2(4,:);
    outMv(161,:) = inMv1(256,:) .* inMv2(3,:);
    outMv(162,:) = inMv1(256,:) .* inMv2(2,:);
    outMv(163,:) = -inMv1(256,:) .* inMv2(1,:);
end
