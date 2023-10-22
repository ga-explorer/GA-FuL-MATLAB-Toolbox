
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpMvKv0Mv(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(2,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(3,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(4,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(5,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(6,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(7,:) = inMv1(7,:) .* inMv2(1,:);
    outMv(8,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(9,:) = inMv1(9,:) .* inMv2(1,:);
    outMv(10,:) = inMv1(10,:) .* inMv2(1,:);
    outMv(11,:) = inMv1(11,:) .* inMv2(1,:);
    outMv(12,:) = inMv1(12,:) .* inMv2(1,:);
    outMv(13,:) = inMv1(13,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(14,:) .* inMv2(1,:);
    outMv(15,:) = inMv1(15,:) .* inMv2(1,:);
    outMv(16,:) = inMv1(16,:) .* inMv2(1,:);
    outMv(17,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(18,:) = inMv1(18,:) .* inMv2(1,:);
    outMv(19,:) = inMv1(19,:) .* inMv2(1,:);
    outMv(20,:) = inMv1(20,:) .* inMv2(1,:);
    outMv(21,:) = inMv1(21,:) .* inMv2(1,:);
    outMv(22,:) = inMv1(22,:) .* inMv2(1,:);
    outMv(23,:) = inMv1(23,:) .* inMv2(1,:);
    outMv(24,:) = inMv1(24,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(25,:) .* inMv2(1,:);
    outMv(26,:) = inMv1(26,:) .* inMv2(1,:);
    outMv(27,:) = inMv1(27,:) .* inMv2(1,:);
    outMv(28,:) = inMv1(28,:) .* inMv2(1,:);
    outMv(29,:) = inMv1(29,:) .* inMv2(1,:);
    outMv(30,:) = inMv1(30,:) .* inMv2(1,:);
    outMv(31,:) = inMv1(31,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(32,:) .* inMv2(1,:);
    outMv(33,:) = inMv1(33,:) .* inMv2(1,:);
    outMv(34,:) = inMv1(34,:) .* inMv2(1,:);
    outMv(35,:) = inMv1(35,:) .* inMv2(1,:);
    outMv(36,:) = inMv1(36,:) .* inMv2(1,:);
    outMv(37,:) = inMv1(37,:) .* inMv2(1,:);
    outMv(38,:) = inMv1(38,:) .* inMv2(1,:);
    outMv(39,:) = inMv1(39,:) .* inMv2(1,:);
    outMv(40,:) = inMv1(40,:) .* inMv2(1,:);
    outMv(41,:) = inMv1(41,:) .* inMv2(1,:);
    outMv(42,:) = inMv1(42,:) .* inMv2(1,:);
    outMv(43,:) = inMv1(43,:) .* inMv2(1,:);
    outMv(44,:) = inMv1(44,:) .* inMv2(1,:);
    outMv(45,:) = inMv1(45,:) .* inMv2(1,:);
    outMv(46,:) = inMv1(46,:) .* inMv2(1,:);
    outMv(47,:) = inMv1(47,:) .* inMv2(1,:);
    outMv(48,:) = inMv1(48,:) .* inMv2(1,:);
    outMv(49,:) = inMv1(49,:) .* inMv2(1,:);
    outMv(50,:) = inMv1(50,:) .* inMv2(1,:);
    outMv(51,:) = inMv1(51,:) .* inMv2(1,:);
    outMv(52,:) = inMv1(52,:) .* inMv2(1,:);
    outMv(53,:) = inMv1(53,:) .* inMv2(1,:);
    outMv(54,:) = inMv1(54,:) .* inMv2(1,:);
    outMv(55,:) = inMv1(55,:) .* inMv2(1,:);
    outMv(56,:) = inMv1(56,:) .* inMv2(1,:);
    outMv(57,:) = inMv1(57,:) .* inMv2(1,:);
    outMv(58,:) = inMv1(58,:) .* inMv2(1,:);
    outMv(59,:) = inMv1(59,:) .* inMv2(1,:);
    outMv(60,:) = inMv1(60,:) .* inMv2(1,:);
    outMv(61,:) = inMv1(61,:) .* inMv2(1,:);
    outMv(62,:) = inMv1(62,:) .* inMv2(1,:);
    outMv(63,:) = inMv1(63,:) .* inMv2(1,:);
    outMv(64,:) = inMv1(64,:) .* inMv2(1,:);
    outMv(65,:) = inMv1(65,:) .* inMv2(1,:);
    outMv(66,:) = inMv1(66,:) .* inMv2(1,:);
    outMv(67,:) = inMv1(67,:) .* inMv2(1,:);
    outMv(68,:) = inMv1(68,:) .* inMv2(1,:);
    outMv(69,:) = inMv1(69,:) .* inMv2(1,:);
    outMv(70,:) = inMv1(70,:) .* inMv2(1,:);
    outMv(71,:) = inMv1(71,:) .* inMv2(1,:);
    outMv(72,:) = inMv1(72,:) .* inMv2(1,:);
    outMv(73,:) = inMv1(73,:) .* inMv2(1,:);
    outMv(74,:) = inMv1(74,:) .* inMv2(1,:);
    outMv(75,:) = inMv1(75,:) .* inMv2(1,:);
    outMv(76,:) = inMv1(76,:) .* inMv2(1,:);
    outMv(77,:) = inMv1(77,:) .* inMv2(1,:);
    outMv(78,:) = inMv1(78,:) .* inMv2(1,:);
    outMv(79,:) = inMv1(79,:) .* inMv2(1,:);
    outMv(80,:) = inMv1(80,:) .* inMv2(1,:);
    outMv(81,:) = inMv1(81,:) .* inMv2(1,:);
    outMv(82,:) = inMv1(82,:) .* inMv2(1,:);
    outMv(83,:) = inMv1(83,:) .* inMv2(1,:);
    outMv(84,:) = inMv1(84,:) .* inMv2(1,:);
    outMv(85,:) = inMv1(85,:) .* inMv2(1,:);
    outMv(86,:) = inMv1(86,:) .* inMv2(1,:);
    outMv(87,:) = inMv1(87,:) .* inMv2(1,:);
    outMv(88,:) = inMv1(88,:) .* inMv2(1,:);
    outMv(89,:) = inMv1(89,:) .* inMv2(1,:);
    outMv(90,:) = inMv1(90,:) .* inMv2(1,:);
    outMv(91,:) = inMv1(91,:) .* inMv2(1,:);
    outMv(92,:) = inMv1(92,:) .* inMv2(1,:);
    outMv(93,:) = inMv1(93,:) .* inMv2(1,:);
    outMv(94,:) = inMv1(94,:) .* inMv2(1,:);
    outMv(95,:) = inMv1(95,:) .* inMv2(1,:);
    outMv(96,:) = inMv1(96,:) .* inMv2(1,:);
    outMv(97,:) = inMv1(97,:) .* inMv2(1,:);
    outMv(98,:) = inMv1(98,:) .* inMv2(1,:);
    outMv(99,:) = inMv1(99,:) .* inMv2(1,:);
    outMv(100,:) = inMv1(100,:) .* inMv2(1,:);
    outMv(101,:) = inMv1(101,:) .* inMv2(1,:);
    outMv(102,:) = inMv1(102,:) .* inMv2(1,:);
    outMv(103,:) = inMv1(103,:) .* inMv2(1,:);
    outMv(104,:) = inMv1(104,:) .* inMv2(1,:);
    outMv(105,:) = inMv1(105,:) .* inMv2(1,:);
    outMv(106,:) = inMv1(106,:) .* inMv2(1,:);
    outMv(107,:) = inMv1(107,:) .* inMv2(1,:);
    outMv(108,:) = inMv1(108,:) .* inMv2(1,:);
    outMv(109,:) = inMv1(109,:) .* inMv2(1,:);
    outMv(110,:) = inMv1(110,:) .* inMv2(1,:);
    outMv(111,:) = inMv1(111,:) .* inMv2(1,:);
    outMv(112,:) = inMv1(112,:) .* inMv2(1,:);
    outMv(113,:) = inMv1(113,:) .* inMv2(1,:);
    outMv(114,:) = inMv1(114,:) .* inMv2(1,:);
    outMv(115,:) = inMv1(115,:) .* inMv2(1,:);
    outMv(116,:) = inMv1(116,:) .* inMv2(1,:);
    outMv(117,:) = inMv1(117,:) .* inMv2(1,:);
    outMv(118,:) = inMv1(118,:) .* inMv2(1,:);
    outMv(119,:) = inMv1(119,:) .* inMv2(1,:);
    outMv(120,:) = inMv1(120,:) .* inMv2(1,:);
    outMv(121,:) = inMv1(121,:) .* inMv2(1,:);
    outMv(122,:) = inMv1(122,:) .* inMv2(1,:);
    outMv(123,:) = inMv1(123,:) .* inMv2(1,:);
    outMv(124,:) = inMv1(124,:) .* inMv2(1,:);
    outMv(125,:) = inMv1(125,:) .* inMv2(1,:);
    outMv(126,:) = inMv1(126,:) .* inMv2(1,:);
    outMv(127,:) = inMv1(127,:) .* inMv2(1,:);
    outMv(128,:) = inMv1(128,:) .* inMv2(1,:);
    outMv(129,:) = inMv1(129,:) .* inMv2(1,:);
    outMv(130,:) = inMv1(130,:) .* inMv2(1,:);
    outMv(131,:) = inMv1(131,:) .* inMv2(1,:);
    outMv(132,:) = inMv1(132,:) .* inMv2(1,:);
    outMv(133,:) = inMv1(133,:) .* inMv2(1,:);
    outMv(134,:) = inMv1(134,:) .* inMv2(1,:);
    outMv(135,:) = inMv1(135,:) .* inMv2(1,:);
    outMv(136,:) = inMv1(136,:) .* inMv2(1,:);
    outMv(137,:) = inMv1(137,:) .* inMv2(1,:);
    outMv(138,:) = inMv1(138,:) .* inMv2(1,:);
    outMv(139,:) = inMv1(139,:) .* inMv2(1,:);
    outMv(140,:) = inMv1(140,:) .* inMv2(1,:);
    outMv(141,:) = inMv1(141,:) .* inMv2(1,:);
    outMv(142,:) = inMv1(142,:) .* inMv2(1,:);
    outMv(143,:) = inMv1(143,:) .* inMv2(1,:);
    outMv(144,:) = inMv1(144,:) .* inMv2(1,:);
    outMv(145,:) = inMv1(145,:) .* inMv2(1,:);
    outMv(146,:) = inMv1(146,:) .* inMv2(1,:);
    outMv(147,:) = inMv1(147,:) .* inMv2(1,:);
    outMv(148,:) = inMv1(148,:) .* inMv2(1,:);
    outMv(149,:) = inMv1(149,:) .* inMv2(1,:);
    outMv(150,:) = inMv1(150,:) .* inMv2(1,:);
    outMv(151,:) = inMv1(151,:) .* inMv2(1,:);
    outMv(152,:) = inMv1(152,:) .* inMv2(1,:);
    outMv(153,:) = inMv1(153,:) .* inMv2(1,:);
    outMv(154,:) = inMv1(154,:) .* inMv2(1,:);
    outMv(155,:) = inMv1(155,:) .* inMv2(1,:);
    outMv(156,:) = inMv1(156,:) .* inMv2(1,:);
    outMv(157,:) = inMv1(157,:) .* inMv2(1,:);
    outMv(158,:) = inMv1(158,:) .* inMv2(1,:);
    outMv(159,:) = inMv1(159,:) .* inMv2(1,:);
    outMv(160,:) = inMv1(160,:) .* inMv2(1,:);
    outMv(161,:) = inMv1(161,:) .* inMv2(1,:);
    outMv(162,:) = inMv1(162,:) .* inMv2(1,:);
    outMv(163,:) = inMv1(163,:) .* inMv2(1,:);
    outMv(164,:) = inMv1(164,:) .* inMv2(1,:);
    outMv(165,:) = inMv1(165,:) .* inMv2(1,:);
    outMv(166,:) = inMv1(166,:) .* inMv2(1,:);
    outMv(167,:) = inMv1(167,:) .* inMv2(1,:);
    outMv(168,:) = inMv1(168,:) .* inMv2(1,:);
    outMv(169,:) = inMv1(169,:) .* inMv2(1,:);
    outMv(170,:) = inMv1(170,:) .* inMv2(1,:);
    outMv(171,:) = inMv1(171,:) .* inMv2(1,:);
    outMv(172,:) = inMv1(172,:) .* inMv2(1,:);
    outMv(173,:) = inMv1(173,:) .* inMv2(1,:);
    outMv(174,:) = inMv1(174,:) .* inMv2(1,:);
    outMv(175,:) = inMv1(175,:) .* inMv2(1,:);
    outMv(176,:) = inMv1(176,:) .* inMv2(1,:);
    outMv(177,:) = inMv1(177,:) .* inMv2(1,:);
    outMv(178,:) = inMv1(178,:) .* inMv2(1,:);
    outMv(179,:) = inMv1(179,:) .* inMv2(1,:);
    outMv(180,:) = inMv1(180,:) .* inMv2(1,:);
    outMv(181,:) = inMv1(181,:) .* inMv2(1,:);
    outMv(182,:) = inMv1(182,:) .* inMv2(1,:);
    outMv(183,:) = inMv1(183,:) .* inMv2(1,:);
    outMv(184,:) = inMv1(184,:) .* inMv2(1,:);
    outMv(185,:) = inMv1(185,:) .* inMv2(1,:);
    outMv(186,:) = inMv1(186,:) .* inMv2(1,:);
    outMv(187,:) = inMv1(187,:) .* inMv2(1,:);
    outMv(188,:) = inMv1(188,:) .* inMv2(1,:);
    outMv(189,:) = inMv1(189,:) .* inMv2(1,:);
    outMv(190,:) = inMv1(190,:) .* inMv2(1,:);
    outMv(191,:) = inMv1(191,:) .* inMv2(1,:);
    outMv(192,:) = inMv1(192,:) .* inMv2(1,:);
    outMv(193,:) = inMv1(193,:) .* inMv2(1,:);
    outMv(194,:) = inMv1(194,:) .* inMv2(1,:);
    outMv(195,:) = inMv1(195,:) .* inMv2(1,:);
    outMv(196,:) = inMv1(196,:) .* inMv2(1,:);
    outMv(197,:) = inMv1(197,:) .* inMv2(1,:);
    outMv(198,:) = inMv1(198,:) .* inMv2(1,:);
    outMv(199,:) = inMv1(199,:) .* inMv2(1,:);
    outMv(200,:) = inMv1(200,:) .* inMv2(1,:);
    outMv(201,:) = inMv1(201,:) .* inMv2(1,:);
    outMv(202,:) = inMv1(202,:) .* inMv2(1,:);
    outMv(203,:) = inMv1(203,:) .* inMv2(1,:);
    outMv(204,:) = inMv1(204,:) .* inMv2(1,:);
    outMv(205,:) = inMv1(205,:) .* inMv2(1,:);
    outMv(206,:) = inMv1(206,:) .* inMv2(1,:);
    outMv(207,:) = inMv1(207,:) .* inMv2(1,:);
    outMv(208,:) = inMv1(208,:) .* inMv2(1,:);
    outMv(209,:) = inMv1(209,:) .* inMv2(1,:);
    outMv(210,:) = inMv1(210,:) .* inMv2(1,:);
    outMv(211,:) = inMv1(211,:) .* inMv2(1,:);
    outMv(212,:) = inMv1(212,:) .* inMv2(1,:);
    outMv(213,:) = inMv1(213,:) .* inMv2(1,:);
    outMv(214,:) = inMv1(214,:) .* inMv2(1,:);
    outMv(215,:) = inMv1(215,:) .* inMv2(1,:);
    outMv(216,:) = inMv1(216,:) .* inMv2(1,:);
    outMv(217,:) = inMv1(217,:) .* inMv2(1,:);
    outMv(218,:) = inMv1(218,:) .* inMv2(1,:);
    outMv(219,:) = inMv1(219,:) .* inMv2(1,:);
    outMv(220,:) = inMv1(220,:) .* inMv2(1,:);
    outMv(221,:) = inMv1(221,:) .* inMv2(1,:);
    outMv(222,:) = inMv1(222,:) .* inMv2(1,:);
    outMv(223,:) = inMv1(223,:) .* inMv2(1,:);
    outMv(224,:) = inMv1(224,:) .* inMv2(1,:);
    outMv(225,:) = inMv1(225,:) .* inMv2(1,:);
    outMv(226,:) = inMv1(226,:) .* inMv2(1,:);
    outMv(227,:) = inMv1(227,:) .* inMv2(1,:);
    outMv(228,:) = inMv1(228,:) .* inMv2(1,:);
    outMv(229,:) = inMv1(229,:) .* inMv2(1,:);
    outMv(230,:) = inMv1(230,:) .* inMv2(1,:);
    outMv(231,:) = inMv1(231,:) .* inMv2(1,:);
    outMv(232,:) = inMv1(232,:) .* inMv2(1,:);
    outMv(233,:) = inMv1(233,:) .* inMv2(1,:);
    outMv(234,:) = inMv1(234,:) .* inMv2(1,:);
    outMv(235,:) = inMv1(235,:) .* inMv2(1,:);
    outMv(236,:) = inMv1(236,:) .* inMv2(1,:);
    outMv(237,:) = inMv1(237,:) .* inMv2(1,:);
    outMv(238,:) = inMv1(238,:) .* inMv2(1,:);
    outMv(239,:) = inMv1(239,:) .* inMv2(1,:);
    outMv(240,:) = inMv1(240,:) .* inMv2(1,:);
    outMv(241,:) = inMv1(241,:) .* inMv2(1,:);
    outMv(242,:) = inMv1(242,:) .* inMv2(1,:);
    outMv(243,:) = inMv1(243,:) .* inMv2(1,:);
    outMv(244,:) = inMv1(244,:) .* inMv2(1,:);
    outMv(245,:) = inMv1(245,:) .* inMv2(1,:);
    outMv(246,:) = inMv1(246,:) .* inMv2(1,:);
    outMv(247,:) = inMv1(247,:) .* inMv2(1,:);
    outMv(248,:) = inMv1(248,:) .* inMv2(1,:);
    outMv(249,:) = inMv1(249,:) .* inMv2(1,:);
    outMv(250,:) = inMv1(250,:) .* inMv2(1,:);
    outMv(251,:) = inMv1(251,:) .* inMv2(1,:);
    outMv(252,:) = inMv1(252,:) .* inMv2(1,:);
    outMv(253,:) = inMv1(253,:) .* inMv2(1,:);
    outMv(254,:) = inMv1(254,:) .* inMv2(1,:);
    outMv(255,:) = inMv1(255,:) .* inMv2(1,:);
    outMv(256,:) = inMv1(256,:) .* inMv2(1,:);
end
