
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = unDualMvMv(inMv)
    arguments
        inMv (256,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = -inMv(256,:);
    outMv(2,:) = inMv(255,:);
    outMv(3,:) = -inMv(254,:);
    outMv(4,:) = inMv(253,:);
    outMv(5,:) = inMv(252,:);
    outMv(6,:) = -inMv(251,:);
    outMv(7,:) = inMv(250,:);
    outMv(8,:) = -inMv(249,:);
    outMv(9,:) = inMv(248,:);
    outMv(10,:) = inMv(247,:);
    outMv(11,:) = -inMv(246,:);
    outMv(12,:) = inMv(245,:);
    outMv(13,:) = -inMv(244,:);
    outMv(14,:) = inMv(243,:);
    outMv(15,:) = -inMv(242,:);
    outMv(16,:) = inMv(241,:);
    outMv(17,:) = -inMv(240,:);
    outMv(18,:) = inMv(239,:);
    outMv(19,:) = inMv(238,:);
    outMv(20,:) = -inMv(237,:);
    outMv(21,:) = inMv(236,:);
    outMv(22,:) = -inMv(235,:);
    outMv(23,:) = -inMv(234,:);
    outMv(24,:) = inMv(233,:);
    outMv(25,:) = inMv(232,:);
    outMv(26,:) = -inMv(231,:);
    outMv(27,:) = inMv(230,:);
    outMv(28,:) = inMv(229,:);
    outMv(29,:) = -inMv(228,:);
    outMv(30,:) = inMv(227,:);
    outMv(31,:) = -inMv(226,:);
    outMv(32,:) = inMv(225,:);
    outMv(33,:) = -inMv(224,:);
    outMv(34,:) = -inMv(223,:);
    outMv(35,:) = inMv(222,:);
    outMv(36,:) = -inMv(221,:);
    outMv(37,:) = inMv(220,:);
    outMv(38,:) = -inMv(219,:);
    outMv(39,:) = -inMv(218,:);
    outMv(40,:) = inMv(217,:);
    outMv(41,:) = -inMv(216,:);
    outMv(42,:) = inMv(215,:);
    outMv(43,:) = -inMv(214,:);
    outMv(44,:) = inMv(213,:);
    outMv(45,:) = -inMv(212,:);
    outMv(46,:) = inMv(211,:);
    outMv(47,:) = -inMv(210,:);
    outMv(48,:) = -inMv(209,:);
    outMv(49,:) = inMv(208,:);
    outMv(50,:) = -inMv(207,:);
    outMv(51,:) = inMv(206,:);
    outMv(52,:) = -inMv(205,:);
    outMv(53,:) = inMv(204,:);
    outMv(54,:) = -inMv(203,:);
    outMv(55,:) = inMv(202,:);
    outMv(56,:) = -inMv(201,:);
    outMv(57,:) = -inMv(200,:);
    outMv(58,:) = inMv(199,:);
    outMv(59,:) = -inMv(198,:);
    outMv(60,:) = inMv(197,:);
    outMv(61,:) = -inMv(196,:);
    outMv(62,:) = inMv(195,:);
    outMv(63,:) = -inMv(194,:);
    outMv(64,:) = inMv(193,:);
    outMv(65,:) = -inMv(192,:);
    outMv(66,:) = inMv(191,:);
    outMv(67,:) = inMv(190,:);
    outMv(68,:) = -inMv(189,:);
    outMv(69,:) = inMv(188,:);
    outMv(70,:) = -inMv(187,:);
    outMv(71,:) = -inMv(186,:);
    outMv(72,:) = inMv(185,:);
    outMv(73,:) = -inMv(184,:);
    outMv(74,:) = inMv(183,:);
    outMv(75,:) = -inMv(182,:);
    outMv(76,:) = inMv(181,:);
    outMv(77,:) = -inMv(180,:);
    outMv(78,:) = inMv(179,:);
    outMv(79,:) = -inMv(178,:);
    outMv(80,:) = inMv(177,:);
    outMv(81,:) = -inMv(176,:);
    outMv(82,:) = -inMv(175,:);
    outMv(83,:) = inMv(174,:);
    outMv(84,:) = -inMv(173,:);
    outMv(85,:) = inMv(172,:);
    outMv(86,:) = inMv(171,:);
    outMv(87,:) = -inMv(170,:);
    outMv(88,:) = -inMv(169,:);
    outMv(89,:) = inMv(168,:);
    outMv(90,:) = -inMv(167,:);
    outMv(91,:) = -inMv(166,:);
    outMv(92,:) = inMv(165,:);
    outMv(93,:) = -inMv(164,:);
    outMv(94,:) = inMv(163,:);
    outMv(95,:) = -inMv(162,:);
    outMv(96,:) = -inMv(161,:);
    outMv(97,:) = inMv(160,:);
    outMv(98,:) = -inMv(159,:);
    outMv(99,:) = inMv(158,:);
    outMv(100,:) = inMv(157,:);
    outMv(101,:) = -inMv(156,:);
    outMv(102,:) = inMv(155,:);
    outMv(103,:) = -inMv(154,:);
    outMv(104,:) = inMv(153,:);
    outMv(105,:) = -inMv(152,:);
    outMv(106,:) = inMv(151,:);
    outMv(107,:) = -inMv(150,:);
    outMv(108,:) = inMv(149,:);
    outMv(109,:) = -inMv(148,:);
    outMv(110,:) = -inMv(147,:);
    outMv(111,:) = inMv(146,:);
    outMv(112,:) = -inMv(145,:);
    outMv(113,:) = inMv(144,:);
    outMv(114,:) = -inMv(143,:);
    outMv(115,:) = inMv(142,:);
    outMv(116,:) = -inMv(141,:);
    outMv(117,:) = inMv(140,:);
    outMv(118,:) = -inMv(139,:);
    outMv(119,:) = -inMv(138,:);
    outMv(120,:) = inMv(137,:);
    outMv(121,:) = -inMv(136,:);
    outMv(122,:) = inMv(135,:);
    outMv(123,:) = -inMv(134,:);
    outMv(124,:) = inMv(133,:);
    outMv(125,:) = -inMv(132,:);
    outMv(126,:) = inMv(131,:);
    outMv(127,:) = -inMv(130,:);
    outMv(128,:) = -inMv(129,:);
    outMv(129,:) = inMv(128,:);
    outMv(130,:) = inMv(127,:);
    outMv(131,:) = -inMv(126,:);
    outMv(132,:) = inMv(125,:);
    outMv(133,:) = -inMv(124,:);
    outMv(134,:) = inMv(123,:);
    outMv(135,:) = -inMv(122,:);
    outMv(136,:) = inMv(121,:);
    outMv(137,:) = -inMv(120,:);
    outMv(138,:) = inMv(119,:);
    outMv(139,:) = inMv(118,:);
    outMv(140,:) = -inMv(117,:);
    outMv(141,:) = inMv(116,:);
    outMv(142,:) = -inMv(115,:);
    outMv(143,:) = inMv(114,:);
    outMv(144,:) = -inMv(113,:);
    outMv(145,:) = inMv(112,:);
    outMv(146,:) = -inMv(111,:);
    outMv(147,:) = inMv(110,:);
    outMv(148,:) = inMv(109,:);
    outMv(149,:) = -inMv(108,:);
    outMv(150,:) = inMv(107,:);
    outMv(151,:) = -inMv(106,:);
    outMv(152,:) = inMv(105,:);
    outMv(153,:) = -inMv(104,:);
    outMv(154,:) = inMv(103,:);
    outMv(155,:) = -inMv(102,:);
    outMv(156,:) = inMv(101,:);
    outMv(157,:) = -inMv(100,:);
    outMv(158,:) = -inMv(99,:);
    outMv(159,:) = inMv(98,:);
    outMv(160,:) = -inMv(97,:);
    outMv(161,:) = inMv(96,:);
    outMv(162,:) = inMv(95,:);
    outMv(163,:) = -inMv(94,:);
    outMv(164,:) = inMv(93,:);
    outMv(165,:) = -inMv(92,:);
    outMv(166,:) = inMv(91,:);
    outMv(167,:) = inMv(90,:);
    outMv(168,:) = -inMv(89,:);
    outMv(169,:) = inMv(88,:);
    outMv(170,:) = inMv(87,:);
    outMv(171,:) = -inMv(86,:);
    outMv(172,:) = -inMv(85,:);
    outMv(173,:) = inMv(84,:);
    outMv(174,:) = -inMv(83,:);
    outMv(175,:) = inMv(82,:);
    outMv(176,:) = inMv(81,:);
    outMv(177,:) = -inMv(80,:);
    outMv(178,:) = inMv(79,:);
    outMv(179,:) = -inMv(78,:);
    outMv(180,:) = inMv(77,:);
    outMv(181,:) = -inMv(76,:);
    outMv(182,:) = inMv(75,:);
    outMv(183,:) = -inMv(74,:);
    outMv(184,:) = inMv(73,:);
    outMv(185,:) = -inMv(72,:);
    outMv(186,:) = inMv(71,:);
    outMv(187,:) = inMv(70,:);
    outMv(188,:) = -inMv(69,:);
    outMv(189,:) = inMv(68,:);
    outMv(190,:) = -inMv(67,:);
    outMv(191,:) = -inMv(66,:);
    outMv(192,:) = inMv(65,:);
    outMv(193,:) = -inMv(64,:);
    outMv(194,:) = inMv(63,:);
    outMv(195,:) = -inMv(62,:);
    outMv(196,:) = inMv(61,:);
    outMv(197,:) = -inMv(60,:);
    outMv(198,:) = inMv(59,:);
    outMv(199,:) = -inMv(58,:);
    outMv(200,:) = inMv(57,:);
    outMv(201,:) = inMv(56,:);
    outMv(202,:) = -inMv(55,:);
    outMv(203,:) = inMv(54,:);
    outMv(204,:) = -inMv(53,:);
    outMv(205,:) = inMv(52,:);
    outMv(206,:) = -inMv(51,:);
    outMv(207,:) = inMv(50,:);
    outMv(208,:) = -inMv(49,:);
    outMv(209,:) = inMv(48,:);
    outMv(210,:) = inMv(47,:);
    outMv(211,:) = -inMv(46,:);
    outMv(212,:) = inMv(45,:);
    outMv(213,:) = -inMv(44,:);
    outMv(214,:) = inMv(43,:);
    outMv(215,:) = -inMv(42,:);
    outMv(216,:) = inMv(41,:);
    outMv(217,:) = -inMv(40,:);
    outMv(218,:) = inMv(39,:);
    outMv(219,:) = inMv(38,:);
    outMv(220,:) = -inMv(37,:);
    outMv(221,:) = inMv(36,:);
    outMv(222,:) = -inMv(35,:);
    outMv(223,:) = inMv(34,:);
    outMv(224,:) = inMv(33,:);
    outMv(225,:) = -inMv(32,:);
    outMv(226,:) = inMv(31,:);
    outMv(227,:) = -inMv(30,:);
    outMv(228,:) = inMv(29,:);
    outMv(229,:) = -inMv(28,:);
    outMv(230,:) = -inMv(27,:);
    outMv(231,:) = inMv(26,:);
    outMv(232,:) = -inMv(25,:);
    outMv(233,:) = -inMv(24,:);
    outMv(234,:) = inMv(23,:);
    outMv(235,:) = inMv(22,:);
    outMv(236,:) = -inMv(21,:);
    outMv(237,:) = inMv(20,:);
    outMv(238,:) = -inMv(19,:);
    outMv(239,:) = -inMv(18,:);
    outMv(240,:) = inMv(17,:);
    outMv(241,:) = -inMv(16,:);
    outMv(242,:) = inMv(15,:);
    outMv(243,:) = -inMv(14,:);
    outMv(244,:) = inMv(13,:);
    outMv(245,:) = -inMv(12,:);
    outMv(246,:) = inMv(11,:);
    outMv(247,:) = -inMv(10,:);
    outMv(248,:) = -inMv(9,:);
    outMv(249,:) = inMv(8,:);
    outMv(250,:) = -inMv(7,:);
    outMv(251,:) = inMv(6,:);
    outMv(252,:) = -inMv(5,:);
    outMv(253,:) = -inMv(4,:);
    outMv(254,:) = inMv(3,:);
    outMv(255,:) = -inMv(2,:);
    outMv(256,:) = inMv(1,:);
end
