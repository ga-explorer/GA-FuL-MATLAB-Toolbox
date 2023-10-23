% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spMvMvKv0(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(2,:) .* inMv2(2,:) - inMv1(3,:) .* inMv2(3,:) - inMv1(10,:) .* inMv2(10,:) - inMv1(4,:) .* inMv2(4,:) - inMv1(11,:) .* inMv2(11,:) - inMv1(12,:) .* inMv2(12,:) + inMv1(38,:) .* inMv2(38,:) + inMv1(5,:) .* inMv2(5,:) + inMv1(13,:) .* inMv2(13,:) + inMv1(14,:) .* inMv2(14,:) - inMv1(39,:) .* inMv2(39,:) + inMv1(15,:) .* inMv2(15,:) - inMv1(40,:) .* inMv2(40,:) - inMv1(41,:) .* inMv2(41,:) - inMv1(94,:) .* inMv2(94,:) + inMv1(6,:) .* inMv2(6,:) + inMv1(16,:) .* inMv2(16,:) + inMv1(17,:) .* inMv2(17,:) - inMv1(42,:) .* inMv2(42,:) + inMv1(18,:) .* inMv2(18,:) - inMv1(43,:) .* inMv2(43,:) - inMv1(44,:) .* inMv2(44,:) - inMv1(95,:) .* inMv2(95,:) - inMv1(19,:) .* inMv2(19,:) + inMv1(45,:) .* inMv2(45,:) + inMv1(46,:) .* inMv2(46,:) + inMv1(96,:) .* inMv2(96,:) + inMv1(47,:) .* inMv2(47,:) + inMv1(97,:) .* inMv2(97,:) + inMv1(98,:) .* inMv2(98,:) - inMv1(164,:) .* inMv2(164,:) + inMv1(7,:) .* inMv2(7,:) + inMv1(20,:) .* inMv2(20,:) + inMv1(21,:) .* inMv2(21,:) - inMv1(48,:) .* inMv2(48,:) + inMv1(22,:) .* inMv2(22,:) - inMv1(49,:) .* inMv2(49,:) - inMv1(50,:) .* inMv2(50,:) - inMv1(99,:) .* inMv2(99,:) - inMv1(23,:) .* inMv2(23,:) + inMv1(51,:) .* inMv2(51,:) + inMv1(52,:) .* inMv2(52,:) + inMv1(100,:) .* inMv2(100,:) + inMv1(53,:) .* inMv2(53,:) + inMv1(101,:) .* inMv2(101,:) + inMv1(102,:) .* inMv2(102,:) - inMv1(165,:) .* inMv2(165,:) - inMv1(24,:) .* inMv2(24,:) + inMv1(54,:) .* inMv2(54,:) + inMv1(55,:) .* inMv2(55,:) + inMv1(103,:) .* inMv2(103,:) + inMv1(56,:) .* inMv2(56,:) + inMv1(104,:) .* inMv2(104,:) + inMv1(105,:) .* inMv2(105,:) - inMv1(166,:) .* inMv2(166,:) - inMv1(57,:) .* inMv2(57,:) - inMv1(106,:) .* inMv2(106,:) - inMv1(107,:) .* inMv2(107,:) + inMv1(167,:) .* inMv2(167,:) - inMv1(108,:) .* inMv2(108,:) + inMv1(168,:) .* inMv2(168,:) + inMv1(169,:) .* inMv2(169,:) + inMv1(220,:) .* inMv2(220,:) + inMv1(8,:) .* inMv2(8,:) + inMv1(25,:) .* inMv2(25,:) + inMv1(26,:) .* inMv2(26,:) - inMv1(58,:) .* inMv2(58,:) + inMv1(27,:) .* inMv2(27,:) - inMv1(59,:) .* inMv2(59,:) - inMv1(60,:) .* inMv2(60,:) - inMv1(109,:) .* inMv2(109,:) - inMv1(28,:) .* inMv2(28,:) + inMv1(61,:) .* inMv2(61,:) + inMv1(62,:) .* inMv2(62,:) + inMv1(110,:) .* inMv2(110,:) + inMv1(63,:) .* inMv2(63,:) + inMv1(111,:) .* inMv2(111,:) + inMv1(112,:) .* inMv2(112,:) - inMv1(170,:) .* inMv2(170,:) - inMv1(29,:) .* inMv2(29,:) + inMv1(64,:) .* inMv2(64,:) + inMv1(65,:) .* inMv2(65,:) + inMv1(113,:) .* inMv2(113,:) + inMv1(66,:) .* inMv2(66,:) + inMv1(114,:) .* inMv2(114,:) + inMv1(115,:) .* inMv2(115,:) - inMv1(171,:) .* inMv2(171,:) - inMv1(67,:) .* inMv2(67,:) - inMv1(116,:) .* inMv2(116,:) - inMv1(117,:) .* inMv2(117,:) + inMv1(172,:) .* inMv2(172,:) - inMv1(118,:) .* inMv2(118,:) + inMv1(173,:) .* inMv2(173,:) + inMv1(174,:) .* inMv2(174,:) + inMv1(221,:) .* inMv2(221,:) - inMv1(30,:) .* inMv2(30,:) + inMv1(68,:) .* inMv2(68,:) + inMv1(69,:) .* inMv2(69,:) + inMv1(119,:) .* inMv2(119,:) + inMv1(70,:) .* inMv2(70,:) + inMv1(120,:) .* inMv2(120,:) + inMv1(121,:) .* inMv2(121,:) - inMv1(175,:) .* inMv2(175,:) - inMv1(71,:) .* inMv2(71,:) - inMv1(122,:) .* inMv2(122,:) - inMv1(123,:) .* inMv2(123,:) + inMv1(176,:) .* inMv2(176,:) - inMv1(124,:) .* inMv2(124,:) + inMv1(177,:) .* inMv2(177,:) + inMv1(178,:) .* inMv2(178,:) + inMv1(222,:) .* inMv2(222,:) - inMv1(72,:) .* inMv2(72,:) - inMv1(125,:) .* inMv2(125,:) - inMv1(126,:) .* inMv2(126,:) + inMv1(179,:) .* inMv2(179,:) - inMv1(127,:) .* inMv2(127,:) + inMv1(180,:) .* inMv2(180,:) + inMv1(181,:) .* inMv2(181,:) + inMv1(223,:) .* inMv2(223,:) + inMv1(128,:) .* inMv2(128,:) - inMv1(182,:) .* inMv2(182,:) - inMv1(183,:) .* inMv2(183,:) - inMv1(224,:) .* inMv2(224,:) - inMv1(184,:) .* inMv2(184,:) - inMv1(225,:) .* inMv2(225,:) - inMv1(226,:) .* inMv2(226,:) + inMv1(248,:) .* inMv2(248,:) + inMv1(9,:) .* inMv2(9,:) + inMv1(31,:) .* inMv2(31,:) + inMv1(32,:) .* inMv2(32,:) - inMv1(73,:) .* inMv2(73,:) + inMv1(33,:) .* inMv2(33,:) - inMv1(74,:) .* inMv2(74,:) - inMv1(75,:) .* inMv2(75,:) - inMv1(129,:) .* inMv2(129,:) - inMv1(34,:) .* inMv2(34,:) + inMv1(76,:) .* inMv2(76,:) + inMv1(77,:) .* inMv2(77,:) + inMv1(130,:) .* inMv2(130,:) + inMv1(78,:) .* inMv2(78,:) + inMv1(131,:) .* inMv2(131,:) + inMv1(132,:) .* inMv2(132,:) - inMv1(185,:) .* inMv2(185,:) - inMv1(35,:) .* inMv2(35,:) + inMv1(79,:) .* inMv2(79,:) + inMv1(80,:) .* inMv2(80,:) + inMv1(133,:) .* inMv2(133,:) + inMv1(81,:) .* inMv2(81,:) + inMv1(134,:) .* inMv2(134,:) + inMv1(135,:) .* inMv2(135,:) - inMv1(186,:) .* inMv2(186,:) - inMv1(82,:) .* inMv2(82,:) - inMv1(136,:) .* inMv2(136,:) - inMv1(137,:) .* inMv2(137,:) + inMv1(187,:) .* inMv2(187,:) - inMv1(138,:) .* inMv2(138,:) + inMv1(188,:) .* inMv2(188,:) + inMv1(189,:) .* inMv2(189,:) + inMv1(227,:) .* inMv2(227,:) - inMv1(36,:) .* inMv2(36,:) + inMv1(83,:) .* inMv2(83,:) + inMv1(84,:) .* inMv2(84,:) + inMv1(139,:) .* inMv2(139,:) + inMv1(85,:) .* inMv2(85,:) + inMv1(140,:) .* inMv2(140,:) + inMv1(141,:) .* inMv2(141,:) - inMv1(190,:) .* inMv2(190,:) - inMv1(86,:) .* inMv2(86,:) - inMv1(142,:) .* inMv2(142,:) - inMv1(143,:) .* inMv2(143,:) + inMv1(191,:) .* inMv2(191,:) - inMv1(144,:) .* inMv2(144,:) + inMv1(192,:) .* inMv2(192,:) + inMv1(193,:) .* inMv2(193,:) + inMv1(228,:) .* inMv2(228,:) - inMv1(87,:) .* inMv2(87,:) - inMv1(145,:) .* inMv2(145,:) - inMv1(146,:) .* inMv2(146,:) + inMv1(194,:) .* inMv2(194,:) - inMv1(147,:) .* inMv2(147,:) + inMv1(195,:) .* inMv2(195,:) + inMv1(196,:) .* inMv2(196,:) + inMv1(229,:) .* inMv2(229,:) + inMv1(148,:) .* inMv2(148,:) - inMv1(197,:) .* inMv2(197,:) - inMv1(198,:) .* inMv2(198,:) - inMv1(230,:) .* inMv2(230,:) - inMv1(199,:) .* inMv2(199,:) - inMv1(231,:) .* inMv2(231,:) - inMv1(232,:) .* inMv2(232,:) + inMv1(249,:) .* inMv2(249,:) - inMv1(37,:) .* inMv2(37,:) + inMv1(88,:) .* inMv2(88,:) + inMv1(89,:) .* inMv2(89,:) + inMv1(149,:) .* inMv2(149,:) + inMv1(90,:) .* inMv2(90,:) + inMv1(150,:) .* inMv2(150,:) + inMv1(151,:) .* inMv2(151,:) - inMv1(200,:) .* inMv2(200,:) - inMv1(91,:) .* inMv2(91,:) - inMv1(152,:) .* inMv2(152,:) - inMv1(153,:) .* inMv2(153,:) + inMv1(201,:) .* inMv2(201,:) - inMv1(154,:) .* inMv2(154,:) + inMv1(202,:) .* inMv2(202,:) + inMv1(203,:) .* inMv2(203,:) + inMv1(233,:) .* inMv2(233,:) - inMv1(92,:) .* inMv2(92,:) - inMv1(155,:) .* inMv2(155,:) - inMv1(156,:) .* inMv2(156,:) + inMv1(204,:) .* inMv2(204,:) - inMv1(157,:) .* inMv2(157,:) + inMv1(205,:) .* inMv2(205,:) + inMv1(206,:) .* inMv2(206,:) + inMv1(234,:) .* inMv2(234,:) + inMv1(158,:) .* inMv2(158,:) - inMv1(207,:) .* inMv2(207,:) - inMv1(208,:) .* inMv2(208,:) - inMv1(235,:) .* inMv2(235,:) - inMv1(209,:) .* inMv2(209,:) - inMv1(236,:) .* inMv2(236,:) - inMv1(237,:) .* inMv2(237,:) + inMv1(250,:) .* inMv2(250,:) - inMv1(93,:) .* inMv2(93,:) - inMv1(159,:) .* inMv2(159,:) - inMv1(160,:) .* inMv2(160,:) + inMv1(210,:) .* inMv2(210,:) - inMv1(161,:) .* inMv2(161,:) + inMv1(211,:) .* inMv2(211,:) + inMv1(212,:) .* inMv2(212,:) + inMv1(238,:) .* inMv2(238,:) + inMv1(162,:) .* inMv2(162,:) - inMv1(213,:) .* inMv2(213,:) - inMv1(214,:) .* inMv2(214,:) - inMv1(239,:) .* inMv2(239,:) - inMv1(215,:) .* inMv2(215,:) - inMv1(240,:) .* inMv2(240,:) - inMv1(241,:) .* inMv2(241,:) + inMv1(251,:) .* inMv2(251,:) + inMv1(163,:) .* inMv2(163,:) - inMv1(216,:) .* inMv2(216,:) - inMv1(217,:) .* inMv2(217,:) - inMv1(242,:) .* inMv2(242,:) - inMv1(218,:) .* inMv2(218,:) - inMv1(243,:) .* inMv2(243,:) - inMv1(244,:) .* inMv2(244,:) + inMv1(252,:) .* inMv2(252,:) + inMv1(219,:) .* inMv2(219,:) + inMv1(245,:) .* inMv2(245,:) + inMv1(246,:) .* inMv2(246,:) - inMv1(253,:) .* inMv2(253,:) + inMv1(247,:) .* inMv2(247,:) - inMv1(254,:) .* inMv2(254,:) - inMv1(255,:) .* inMv2(255,:) - inMv1(256,:) .* inMv2(256,:);
end
