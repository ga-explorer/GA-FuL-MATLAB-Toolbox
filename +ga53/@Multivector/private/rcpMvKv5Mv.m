function outMv = rcpMvKv5Mv(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (56,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(164,:) .* inMv2(1,:) - inMv1(165,:) .* inMv2(2,:) - inMv1(166,:) .* inMv2(3,:) + inMv1(167,:) .* inMv2(4,:) + inMv1(168,:) .* inMv2(5,:) + inMv1(169,:) .* inMv2(6,:) - inMv1(170,:) .* inMv2(7,:) - inMv1(171,:) .* inMv2(8,:) + inMv1(172,:) .* inMv2(9,:) + inMv1(173,:) .* inMv2(10,:) + inMv1(174,:) .* inMv2(11,:) - inMv1(175,:) .* inMv2(12,:) + inMv1(176,:) .* inMv2(13,:) + inMv1(177,:) .* inMv2(14,:) + inMv1(178,:) .* inMv2(15,:) + inMv1(179,:) .* inMv2(16,:) + inMv1(180,:) .* inMv2(17,:) + inMv1(181,:) .* inMv2(18,:) - inMv1(182,:) .* inMv2(19,:) - inMv1(183,:) .* inMv2(20,:) - inMv1(184,:) .* inMv2(21,:) - inMv1(185,:) .* inMv2(22,:) - inMv1(186,:) .* inMv2(23,:) + inMv1(187,:) .* inMv2(24,:) + inMv1(188,:) .* inMv2(25,:) + inMv1(189,:) .* inMv2(26,:) - inMv1(190,:) .* inMv2(27,:) + inMv1(191,:) .* inMv2(28,:) + inMv1(192,:) .* inMv2(29,:) + inMv1(193,:) .* inMv2(30,:) + inMv1(194,:) .* inMv2(31,:) + inMv1(195,:) .* inMv2(32,:) + inMv1(196,:) .* inMv2(33,:) - inMv1(197,:) .* inMv2(34,:) - inMv1(198,:) .* inMv2(35,:) - inMv1(199,:) .* inMv2(36,:) - inMv1(200,:) .* inMv2(37,:) + inMv1(201,:) .* inMv2(38,:) + inMv1(202,:) .* inMv2(39,:) + inMv1(203,:) .* inMv2(40,:) + inMv1(204,:) .* inMv2(41,:) + inMv1(205,:) .* inMv2(42,:) + inMv1(206,:) .* inMv2(43,:) - inMv1(207,:) .* inMv2(44,:) - inMv1(208,:) .* inMv2(45,:) - inMv1(209,:) .* inMv2(46,:) + inMv1(210,:) .* inMv2(47,:) + inMv1(211,:) .* inMv2(48,:) + inMv1(212,:) .* inMv2(49,:) - inMv1(213,:) .* inMv2(50,:) - inMv1(214,:) .* inMv2(51,:) - inMv1(215,:) .* inMv2(52,:) - inMv1(216,:) .* inMv2(53,:) - inMv1(217,:) .* inMv2(54,:) - inMv1(218,:) .* inMv2(55,:) + inMv1(219,:) .* inMv2(56,:);
    outMv(2,:) = inMv1(220,:) .* inMv2(6,:) + inMv1(221,:) .* inMv2(11,:) + inMv1(222,:) .* inMv2(15,:) + inMv1(223,:) .* inMv2(18,:) - inMv1(224,:) .* inMv2(20,:) - inMv1(225,:) .* inMv2(21,:) + inMv1(227,:) .* inMv2(26,:) + inMv1(228,:) .* inMv2(30,:) + inMv1(229,:) .* inMv2(33,:) - inMv1(230,:) .* inMv2(35,:) - inMv1(231,:) .* inMv2(36,:) + inMv1(233,:) .* inMv2(40,:) + inMv1(234,:) .* inMv2(43,:) - inMv1(235,:) .* inMv2(45,:) - inMv1(236,:) .* inMv2(46,:) + inMv1(238,:) .* inMv2(49,:) - inMv1(239,:) .* inMv2(51,:) - inMv1(240,:) .* inMv2(52,:) - inMv1(242,:) .* inMv2(54,:) - inMv1(243,:) .* inMv2(55,:) + inMv1(245,:) .* inMv2(56,:);
    outMv(3,:) = -inMv1(220,:) .* inMv2(5,:) - inMv1(221,:) .* inMv2(10,:) - inMv1(222,:) .* inMv2(14,:) - inMv1(223,:) .* inMv2(17,:) + inMv1(224,:) .* inMv2(19,:) - inMv1(226,:) .* inMv2(21,:) - inMv1(227,:) .* inMv2(25,:) - inMv1(228,:) .* inMv2(29,:) - inMv1(229,:) .* inMv2(32,:) + inMv1(230,:) .* inMv2(34,:) - inMv1(232,:) .* inMv2(36,:) - inMv1(233,:) .* inMv2(39,:) - inMv1(234,:) .* inMv2(42,:) + inMv1(235,:) .* inMv2(44,:) - inMv1(237,:) .* inMv2(46,:) - inMv1(238,:) .* inMv2(48,:) + inMv1(239,:) .* inMv2(50,:) - inMv1(241,:) .* inMv2(52,:) + inMv1(242,:) .* inMv2(53,:) - inMv1(244,:) .* inMv2(55,:) + inMv1(246,:) .* inMv2(56,:);
    outMv(4,:) = inMv1(220,:) .* inMv2(4,:) + inMv1(221,:) .* inMv2(9,:) + inMv1(222,:) .* inMv2(13,:) + inMv1(223,:) .* inMv2(16,:) + inMv1(225,:) .* inMv2(19,:) + inMv1(226,:) .* inMv2(20,:) + inMv1(227,:) .* inMv2(24,:) + inMv1(228,:) .* inMv2(28,:) + inMv1(229,:) .* inMv2(31,:) + inMv1(231,:) .* inMv2(34,:) + inMv1(232,:) .* inMv2(35,:) + inMv1(233,:) .* inMv2(38,:) + inMv1(234,:) .* inMv2(41,:) + inMv1(236,:) .* inMv2(44,:) + inMv1(237,:) .* inMv2(45,:) + inMv1(238,:) .* inMv2(47,:) + inMv1(240,:) .* inMv2(50,:) + inMv1(241,:) .* inMv2(51,:) + inMv1(243,:) .* inMv2(53,:) + inMv1(244,:) .* inMv2(54,:) + inMv1(247,:) .* inMv2(56,:);
    outMv(5,:) = inMv1(220,:) .* inMv2(3,:) + inMv1(221,:) .* inMv2(8,:) + inMv1(222,:) .* inMv2(12,:) + inMv1(224,:) .* inMv2(16,:) + inMv1(225,:) .* inMv2(17,:) + inMv1(226,:) .* inMv2(18,:) + inMv1(227,:) .* inMv2(23,:) + inMv1(228,:) .* inMv2(27,:) + inMv1(230,:) .* inMv2(31,:) + inMv1(231,:) .* inMv2(32,:) + inMv1(232,:) .* inMv2(33,:) + inMv1(233,:) .* inMv2(37,:) + inMv1(235,:) .* inMv2(41,:) + inMv1(236,:) .* inMv2(42,:) + inMv1(237,:) .* inMv2(43,:) + inMv1(239,:) .* inMv2(47,:) + inMv1(240,:) .* inMv2(48,:) + inMv1(241,:) .* inMv2(49,:) + inMv1(245,:) .* inMv2(53,:) + inMv1(246,:) .* inMv2(54,:) + inMv1(247,:) .* inMv2(55,:);
    outMv(6,:) = -inMv1(220,:) .* inMv2(2,:) - inMv1(221,:) .* inMv2(7,:) + inMv1(223,:) .* inMv2(12,:) - inMv1(224,:) .* inMv2(13,:) - inMv1(225,:) .* inMv2(14,:) - inMv1(226,:) .* inMv2(15,:) - inMv1(227,:) .* inMv2(22,:) + inMv1(229,:) .* inMv2(27,:) - inMv1(230,:) .* inMv2(28,:) - inMv1(231,:) .* inMv2(29,:) - inMv1(232,:) .* inMv2(30,:) + inMv1(234,:) .* inMv2(37,:) - inMv1(235,:) .* inMv2(38,:) - inMv1(236,:) .* inMv2(39,:) - inMv1(237,:) .* inMv2(40,:) + inMv1(242,:) .* inMv2(47,:) + inMv1(243,:) .* inMv2(48,:) + inMv1(244,:) .* inMv2(49,:) - inMv1(245,:) .* inMv2(50,:) - inMv1(246,:) .* inMv2(51,:) - inMv1(247,:) .* inMv2(52,:);
    outMv(7,:) = inMv1(220,:) .* inMv2(1,:) - inMv1(222,:) .* inMv2(7,:) - inMv1(223,:) .* inMv2(8,:) + inMv1(224,:) .* inMv2(9,:) + inMv1(225,:) .* inMv2(10,:) + inMv1(226,:) .* inMv2(11,:) - inMv1(228,:) .* inMv2(22,:) - inMv1(229,:) .* inMv2(23,:) + inMv1(230,:) .* inMv2(24,:) + inMv1(231,:) .* inMv2(25,:) + inMv1(232,:) .* inMv2(26,:) + inMv1(238,:) .* inMv2(37,:) - inMv1(239,:) .* inMv2(38,:) - inMv1(240,:) .* inMv2(39,:) - inMv1(241,:) .* inMv2(40,:) - inMv1(242,:) .* inMv2(41,:) - inMv1(243,:) .* inMv2(42,:) - inMv1(244,:) .* inMv2(43,:) + inMv1(245,:) .* inMv2(44,:) + inMv1(246,:) .* inMv2(45,:) + inMv1(247,:) .* inMv2(46,:);
    outMv(8,:) = inMv1(221,:) .* inMv2(1,:) + inMv1(222,:) .* inMv2(2,:) + inMv1(223,:) .* inMv2(3,:) - inMv1(224,:) .* inMv2(4,:) - inMv1(225,:) .* inMv2(5,:) - inMv1(226,:) .* inMv2(6,:) - inMv1(233,:) .* inMv2(22,:) - inMv1(234,:) .* inMv2(23,:) + inMv1(235,:) .* inMv2(24,:) + inMv1(236,:) .* inMv2(25,:) + inMv1(237,:) .* inMv2(26,:) - inMv1(238,:) .* inMv2(27,:) + inMv1(239,:) .* inMv2(28,:) + inMv1(240,:) .* inMv2(29,:) + inMv1(241,:) .* inMv2(30,:) + inMv1(242,:) .* inMv2(31,:) + inMv1(243,:) .* inMv2(32,:) + inMv1(244,:) .* inMv2(33,:) - inMv1(245,:) .* inMv2(34,:) - inMv1(246,:) .* inMv2(35,:) - inMv1(247,:) .* inMv2(36,:);
    outMv(9,:) = inMv1(227,:) .* inMv2(1,:) + inMv1(228,:) .* inMv2(2,:) + inMv1(229,:) .* inMv2(3,:) - inMv1(230,:) .* inMv2(4,:) - inMv1(231,:) .* inMv2(5,:) - inMv1(232,:) .* inMv2(6,:) + inMv1(233,:) .* inMv2(7,:) + inMv1(234,:) .* inMv2(8,:) - inMv1(235,:) .* inMv2(9,:) - inMv1(236,:) .* inMv2(10,:) - inMv1(237,:) .* inMv2(11,:) + inMv1(238,:) .* inMv2(12,:) - inMv1(239,:) .* inMv2(13,:) - inMv1(240,:) .* inMv2(14,:) - inMv1(241,:) .* inMv2(15,:) - inMv1(242,:) .* inMv2(16,:) - inMv1(243,:) .* inMv2(17,:) - inMv1(244,:) .* inMv2(18,:) + inMv1(245,:) .* inMv2(19,:) + inMv1(246,:) .* inMv2(20,:) + inMv1(247,:) .* inMv2(21,:);
    outMv(10,:) = -inMv1(248,:) .* inMv2(21,:) - inMv1(249,:) .* inMv2(36,:) - inMv1(250,:) .* inMv2(46,:) - inMv1(251,:) .* inMv2(52,:) - inMv1(252,:) .* inMv2(55,:) + inMv1(253,:) .* inMv2(56,:);
    outMv(11,:) = inMv1(248,:) .* inMv2(20,:) + inMv1(249,:) .* inMv2(35,:) + inMv1(250,:) .* inMv2(45,:) + inMv1(251,:) .* inMv2(51,:) + inMv1(252,:) .* inMv2(54,:) + inMv1(254,:) .* inMv2(56,:);
    outMv(12,:) = -inMv1(248,:) .* inMv2(19,:) - inMv1(249,:) .* inMv2(34,:) - inMv1(250,:) .* inMv2(44,:) - inMv1(251,:) .* inMv2(50,:) - inMv1(252,:) .* inMv2(53,:) + inMv1(255,:) .* inMv2(56,:);
    outMv(13,:) = inMv1(248,:) .* inMv2(18,:) + inMv1(249,:) .* inMv2(33,:) + inMv1(250,:) .* inMv2(43,:) + inMv1(251,:) .* inMv2(49,:) + inMv1(253,:) .* inMv2(54,:) + inMv1(254,:) .* inMv2(55,:);
    outMv(14,:) = -inMv1(248,:) .* inMv2(17,:) - inMv1(249,:) .* inMv2(32,:) - inMv1(250,:) .* inMv2(42,:) - inMv1(251,:) .* inMv2(48,:) - inMv1(253,:) .* inMv2(53,:) + inMv1(255,:) .* inMv2(55,:);
    outMv(15,:) = inMv1(248,:) .* inMv2(16,:) + inMv1(249,:) .* inMv2(31,:) + inMv1(250,:) .* inMv2(41,:) + inMv1(251,:) .* inMv2(47,:) - inMv1(254,:) .* inMv2(53,:) - inMv1(255,:) .* inMv2(54,:);
    outMv(16,:) = -inMv1(248,:) .* inMv2(15,:) - inMv1(249,:) .* inMv2(30,:) - inMv1(250,:) .* inMv2(40,:) + inMv1(252,:) .* inMv2(49,:) - inMv1(253,:) .* inMv2(51,:) - inMv1(254,:) .* inMv2(52,:);
    outMv(17,:) = inMv1(248,:) .* inMv2(14,:) + inMv1(249,:) .* inMv2(29,:) + inMv1(250,:) .* inMv2(39,:) - inMv1(252,:) .* inMv2(48,:) + inMv1(253,:) .* inMv2(50,:) - inMv1(255,:) .* inMv2(52,:);
    outMv(18,:) = -inMv1(248,:) .* inMv2(13,:) - inMv1(249,:) .* inMv2(28,:) - inMv1(250,:) .* inMv2(38,:) + inMv1(252,:) .* inMv2(47,:) + inMv1(254,:) .* inMv2(50,:) + inMv1(255,:) .* inMv2(51,:);
    outMv(19,:) = -inMv1(248,:) .* inMv2(12,:) - inMv1(249,:) .* inMv2(27,:) - inMv1(250,:) .* inMv2(37,:) + inMv1(253,:) .* inMv2(47,:) + inMv1(254,:) .* inMv2(48,:) + inMv1(255,:) .* inMv2(49,:);
    outMv(20,:) = inMv1(248,:) .* inMv2(11,:) + inMv1(249,:) .* inMv2(26,:) - inMv1(251,:) .* inMv2(40,:) - inMv1(252,:) .* inMv2(43,:) + inMv1(253,:) .* inMv2(45,:) + inMv1(254,:) .* inMv2(46,:);
    outMv(21,:) = -inMv1(248,:) .* inMv2(10,:) - inMv1(249,:) .* inMv2(25,:) + inMv1(251,:) .* inMv2(39,:) + inMv1(252,:) .* inMv2(42,:) - inMv1(253,:) .* inMv2(44,:) + inMv1(255,:) .* inMv2(46,:);
    outMv(22,:) = inMv1(248,:) .* inMv2(9,:) + inMv1(249,:) .* inMv2(24,:) - inMv1(251,:) .* inMv2(38,:) - inMv1(252,:) .* inMv2(41,:) - inMv1(254,:) .* inMv2(44,:) - inMv1(255,:) .* inMv2(45,:);
    outMv(23,:) = inMv1(248,:) .* inMv2(8,:) + inMv1(249,:) .* inMv2(23,:) - inMv1(251,:) .* inMv2(37,:) - inMv1(253,:) .* inMv2(41,:) - inMv1(254,:) .* inMv2(42,:) - inMv1(255,:) .* inMv2(43,:);
    outMv(24,:) = -inMv1(248,:) .* inMv2(7,:) - inMv1(249,:) .* inMv2(22,:) - inMv1(252,:) .* inMv2(37,:) + inMv1(253,:) .* inMv2(38,:) + inMv1(254,:) .* inMv2(39,:) + inMv1(255,:) .* inMv2(40,:);
    outMv(25,:) = -inMv1(248,:) .* inMv2(6,:) + inMv1(250,:) .* inMv2(26,:) + inMv1(251,:) .* inMv2(30,:) + inMv1(252,:) .* inMv2(33,:) - inMv1(253,:) .* inMv2(35,:) - inMv1(254,:) .* inMv2(36,:);
    outMv(26,:) = inMv1(248,:) .* inMv2(5,:) - inMv1(250,:) .* inMv2(25,:) - inMv1(251,:) .* inMv2(29,:) - inMv1(252,:) .* inMv2(32,:) + inMv1(253,:) .* inMv2(34,:) - inMv1(255,:) .* inMv2(36,:);
    outMv(27,:) = -inMv1(248,:) .* inMv2(4,:) + inMv1(250,:) .* inMv2(24,:) + inMv1(251,:) .* inMv2(28,:) + inMv1(252,:) .* inMv2(31,:) + inMv1(254,:) .* inMv2(34,:) + inMv1(255,:) .* inMv2(35,:);
    outMv(28,:) = -inMv1(248,:) .* inMv2(3,:) + inMv1(250,:) .* inMv2(23,:) + inMv1(251,:) .* inMv2(27,:) + inMv1(253,:) .* inMv2(31,:) + inMv1(254,:) .* inMv2(32,:) + inMv1(255,:) .* inMv2(33,:);
    outMv(29,:) = inMv1(248,:) .* inMv2(2,:) - inMv1(250,:) .* inMv2(22,:) + inMv1(252,:) .* inMv2(27,:) - inMv1(253,:) .* inMv2(28,:) - inMv1(254,:) .* inMv2(29,:) - inMv1(255,:) .* inMv2(30,:);
    outMv(30,:) = -inMv1(248,:) .* inMv2(1,:) - inMv1(251,:) .* inMv2(22,:) - inMv1(252,:) .* inMv2(23,:) + inMv1(253,:) .* inMv2(24,:) + inMv1(254,:) .* inMv2(25,:) + inMv1(255,:) .* inMv2(26,:);
    outMv(31,:) = -inMv1(249,:) .* inMv2(6,:) - inMv1(250,:) .* inMv2(11,:) - inMv1(251,:) .* inMv2(15,:) - inMv1(252,:) .* inMv2(18,:) + inMv1(253,:) .* inMv2(20,:) + inMv1(254,:) .* inMv2(21,:);
    outMv(32,:) = inMv1(249,:) .* inMv2(5,:) + inMv1(250,:) .* inMv2(10,:) + inMv1(251,:) .* inMv2(14,:) + inMv1(252,:) .* inMv2(17,:) - inMv1(253,:) .* inMv2(19,:) + inMv1(255,:) .* inMv2(21,:);
    outMv(33,:) = -inMv1(249,:) .* inMv2(4,:) - inMv1(250,:) .* inMv2(9,:) - inMv1(251,:) .* inMv2(13,:) - inMv1(252,:) .* inMv2(16,:) - inMv1(254,:) .* inMv2(19,:) - inMv1(255,:) .* inMv2(20,:);
    outMv(34,:) = -inMv1(249,:) .* inMv2(3,:) - inMv1(250,:) .* inMv2(8,:) - inMv1(251,:) .* inMv2(12,:) - inMv1(253,:) .* inMv2(16,:) - inMv1(254,:) .* inMv2(17,:) - inMv1(255,:) .* inMv2(18,:);
    outMv(35,:) = inMv1(249,:) .* inMv2(2,:) + inMv1(250,:) .* inMv2(7,:) - inMv1(252,:) .* inMv2(12,:) + inMv1(253,:) .* inMv2(13,:) + inMv1(254,:) .* inMv2(14,:) + inMv1(255,:) .* inMv2(15,:);
    outMv(36,:) = -inMv1(249,:) .* inMv2(1,:) + inMv1(251,:) .* inMv2(7,:) + inMv1(252,:) .* inMv2(8,:) - inMv1(253,:) .* inMv2(9,:) - inMv1(254,:) .* inMv2(10,:) - inMv1(255,:) .* inMv2(11,:);
    outMv(37,:) = -inMv1(250,:) .* inMv2(1,:) - inMv1(251,:) .* inMv2(2,:) - inMv1(252,:) .* inMv2(3,:) + inMv1(253,:) .* inMv2(4,:) + inMv1(254,:) .* inMv2(5,:) + inMv1(255,:) .* inMv2(6,:);
    outMv(38,:) = inMv1(256,:) .* inMv2(56,:);
    outMv(39,:) = inMv1(256,:) .* inMv2(55,:);
    outMv(40,:) = -inMv1(256,:) .* inMv2(54,:);
    outMv(41,:) = inMv1(256,:) .* inMv2(53,:);
    outMv(42,:) = -inMv1(256,:) .* inMv2(52,:);
    outMv(43,:) = inMv1(256,:) .* inMv2(51,:);
    outMv(44,:) = -inMv1(256,:) .* inMv2(50,:);
    outMv(45,:) = inMv1(256,:) .* inMv2(49,:);
    outMv(46,:) = -inMv1(256,:) .* inMv2(48,:);
    outMv(47,:) = inMv1(256,:) .* inMv2(47,:);
    outMv(48,:) = inMv1(256,:) .* inMv2(46,:);
    outMv(49,:) = -inMv1(256,:) .* inMv2(45,:);
    outMv(50,:) = inMv1(256,:) .* inMv2(44,:);
    outMv(51,:) = -inMv1(256,:) .* inMv2(43,:);
    outMv(52,:) = inMv1(256,:) .* inMv2(42,:);
    outMv(53,:) = -inMv1(256,:) .* inMv2(41,:);
    outMv(54,:) = inMv1(256,:) .* inMv2(40,:);
    outMv(55,:) = -inMv1(256,:) .* inMv2(39,:);
    outMv(56,:) = inMv1(256,:) .* inMv2(38,:);
    outMv(57,:) = inMv1(256,:) .* inMv2(37,:);
    outMv(58,:) = -inMv1(256,:) .* inMv2(36,:);
    outMv(59,:) = inMv1(256,:) .* inMv2(35,:);
    outMv(60,:) = -inMv1(256,:) .* inMv2(34,:);
    outMv(61,:) = inMv1(256,:) .* inMv2(33,:);
    outMv(62,:) = -inMv1(256,:) .* inMv2(32,:);
    outMv(63,:) = inMv1(256,:) .* inMv2(31,:);
    outMv(64,:) = -inMv1(256,:) .* inMv2(30,:);
    outMv(65,:) = inMv1(256,:) .* inMv2(29,:);
    outMv(66,:) = -inMv1(256,:) .* inMv2(28,:);
    outMv(67,:) = -inMv1(256,:) .* inMv2(27,:);
    outMv(68,:) = inMv1(256,:) .* inMv2(26,:);
    outMv(69,:) = -inMv1(256,:) .* inMv2(25,:);
    outMv(70,:) = inMv1(256,:) .* inMv2(24,:);
    outMv(71,:) = inMv1(256,:) .* inMv2(23,:);
    outMv(72,:) = -inMv1(256,:) .* inMv2(22,:);
    outMv(73,:) = inMv1(256,:) .* inMv2(21,:);
    outMv(74,:) = -inMv1(256,:) .* inMv2(20,:);
    outMv(75,:) = inMv1(256,:) .* inMv2(19,:);
    outMv(76,:) = -inMv1(256,:) .* inMv2(18,:);
    outMv(77,:) = inMv1(256,:) .* inMv2(17,:);
    outMv(78,:) = -inMv1(256,:) .* inMv2(16,:);
    outMv(79,:) = inMv1(256,:) .* inMv2(15,:);
    outMv(80,:) = -inMv1(256,:) .* inMv2(14,:);
    outMv(81,:) = inMv1(256,:) .* inMv2(13,:);
    outMv(82,:) = inMv1(256,:) .* inMv2(12,:);
    outMv(83,:) = -inMv1(256,:) .* inMv2(11,:);
    outMv(84,:) = inMv1(256,:) .* inMv2(10,:);
    outMv(85,:) = -inMv1(256,:) .* inMv2(9,:);
    outMv(86,:) = -inMv1(256,:) .* inMv2(8,:);
    outMv(87,:) = inMv1(256,:) .* inMv2(7,:);
    outMv(88,:) = inMv1(256,:) .* inMv2(6,:);
    outMv(89,:) = -inMv1(256,:) .* inMv2(5,:);
    outMv(90,:) = inMv1(256,:) .* inMv2(4,:);
    outMv(91,:) = inMv1(256,:) .* inMv2(3,:);
    outMv(92,:) = -inMv1(256,:) .* inMv2(2,:);
    outMv(93,:) = inMv1(256,:) .* inMv2(1,:);
end
