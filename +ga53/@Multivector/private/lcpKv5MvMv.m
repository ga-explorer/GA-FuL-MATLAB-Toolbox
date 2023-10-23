% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv5MvMv(inMv1, inMv2)
    arguments
        inMv1 (56,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(164,:) - inMv1(2,:) .* inMv2(165,:) - inMv1(3,:) .* inMv2(166,:) + inMv1(4,:) .* inMv2(167,:) + inMv1(5,:) .* inMv2(168,:) + inMv1(6,:) .* inMv2(169,:) - inMv1(7,:) .* inMv2(170,:) - inMv1(8,:) .* inMv2(171,:) + inMv1(9,:) .* inMv2(172,:) + inMv1(10,:) .* inMv2(173,:) + inMv1(11,:) .* inMv2(174,:) - inMv1(12,:) .* inMv2(175,:) + inMv1(13,:) .* inMv2(176,:) + inMv1(14,:) .* inMv2(177,:) + inMv1(15,:) .* inMv2(178,:) + inMv1(16,:) .* inMv2(179,:) + inMv1(17,:) .* inMv2(180,:) + inMv1(18,:) .* inMv2(181,:) - inMv1(19,:) .* inMv2(182,:) - inMv1(20,:) .* inMv2(183,:) - inMv1(21,:) .* inMv2(184,:) - inMv1(22,:) .* inMv2(185,:) - inMv1(23,:) .* inMv2(186,:) + inMv1(24,:) .* inMv2(187,:) + inMv1(25,:) .* inMv2(188,:) + inMv1(26,:) .* inMv2(189,:) - inMv1(27,:) .* inMv2(190,:) + inMv1(28,:) .* inMv2(191,:) + inMv1(29,:) .* inMv2(192,:) + inMv1(30,:) .* inMv2(193,:) + inMv1(31,:) .* inMv2(194,:) + inMv1(32,:) .* inMv2(195,:) + inMv1(33,:) .* inMv2(196,:) - inMv1(34,:) .* inMv2(197,:) - inMv1(35,:) .* inMv2(198,:) - inMv1(36,:) .* inMv2(199,:) - inMv1(37,:) .* inMv2(200,:) + inMv1(38,:) .* inMv2(201,:) + inMv1(39,:) .* inMv2(202,:) + inMv1(40,:) .* inMv2(203,:) + inMv1(41,:) .* inMv2(204,:) + inMv1(42,:) .* inMv2(205,:) + inMv1(43,:) .* inMv2(206,:) - inMv1(44,:) .* inMv2(207,:) - inMv1(45,:) .* inMv2(208,:) - inMv1(46,:) .* inMv2(209,:) + inMv1(47,:) .* inMv2(210,:) + inMv1(48,:) .* inMv2(211,:) + inMv1(49,:) .* inMv2(212,:) - inMv1(50,:) .* inMv2(213,:) - inMv1(51,:) .* inMv2(214,:) - inMv1(52,:) .* inMv2(215,:) - inMv1(53,:) .* inMv2(216,:) - inMv1(54,:) .* inMv2(217,:) - inMv1(55,:) .* inMv2(218,:) + inMv1(56,:) .* inMv2(219,:);
    outMv(2,:) = -inMv1(6,:) .* inMv2(220,:) - inMv1(11,:) .* inMv2(221,:) - inMv1(15,:) .* inMv2(222,:) - inMv1(18,:) .* inMv2(223,:) + inMv1(20,:) .* inMv2(224,:) + inMv1(21,:) .* inMv2(225,:) - inMv1(26,:) .* inMv2(227,:) - inMv1(30,:) .* inMv2(228,:) - inMv1(33,:) .* inMv2(229,:) + inMv1(35,:) .* inMv2(230,:) + inMv1(36,:) .* inMv2(231,:) - inMv1(40,:) .* inMv2(233,:) - inMv1(43,:) .* inMv2(234,:) + inMv1(45,:) .* inMv2(235,:) + inMv1(46,:) .* inMv2(236,:) - inMv1(49,:) .* inMv2(238,:) + inMv1(51,:) .* inMv2(239,:) + inMv1(52,:) .* inMv2(240,:) + inMv1(54,:) .* inMv2(242,:) + inMv1(55,:) .* inMv2(243,:) - inMv1(56,:) .* inMv2(245,:);
    outMv(3,:) = inMv1(5,:) .* inMv2(220,:) + inMv1(10,:) .* inMv2(221,:) + inMv1(14,:) .* inMv2(222,:) + inMv1(17,:) .* inMv2(223,:) - inMv1(19,:) .* inMv2(224,:) + inMv1(21,:) .* inMv2(226,:) + inMv1(25,:) .* inMv2(227,:) + inMv1(29,:) .* inMv2(228,:) + inMv1(32,:) .* inMv2(229,:) - inMv1(34,:) .* inMv2(230,:) + inMv1(36,:) .* inMv2(232,:) + inMv1(39,:) .* inMv2(233,:) + inMv1(42,:) .* inMv2(234,:) - inMv1(44,:) .* inMv2(235,:) + inMv1(46,:) .* inMv2(237,:) + inMv1(48,:) .* inMv2(238,:) - inMv1(50,:) .* inMv2(239,:) + inMv1(52,:) .* inMv2(241,:) - inMv1(53,:) .* inMv2(242,:) + inMv1(55,:) .* inMv2(244,:) - inMv1(56,:) .* inMv2(246,:);
    outMv(4,:) = -inMv1(4,:) .* inMv2(220,:) - inMv1(9,:) .* inMv2(221,:) - inMv1(13,:) .* inMv2(222,:) - inMv1(16,:) .* inMv2(223,:) - inMv1(19,:) .* inMv2(225,:) - inMv1(20,:) .* inMv2(226,:) - inMv1(24,:) .* inMv2(227,:) - inMv1(28,:) .* inMv2(228,:) - inMv1(31,:) .* inMv2(229,:) - inMv1(34,:) .* inMv2(231,:) - inMv1(35,:) .* inMv2(232,:) - inMv1(38,:) .* inMv2(233,:) - inMv1(41,:) .* inMv2(234,:) - inMv1(44,:) .* inMv2(236,:) - inMv1(45,:) .* inMv2(237,:) - inMv1(47,:) .* inMv2(238,:) - inMv1(50,:) .* inMv2(240,:) - inMv1(51,:) .* inMv2(241,:) - inMv1(53,:) .* inMv2(243,:) - inMv1(54,:) .* inMv2(244,:) - inMv1(56,:) .* inMv2(247,:);
    outMv(5,:) = -inMv1(3,:) .* inMv2(220,:) - inMv1(8,:) .* inMv2(221,:) - inMv1(12,:) .* inMv2(222,:) - inMv1(16,:) .* inMv2(224,:) - inMv1(17,:) .* inMv2(225,:) - inMv1(18,:) .* inMv2(226,:) - inMv1(23,:) .* inMv2(227,:) - inMv1(27,:) .* inMv2(228,:) - inMv1(31,:) .* inMv2(230,:) - inMv1(32,:) .* inMv2(231,:) - inMv1(33,:) .* inMv2(232,:) - inMv1(37,:) .* inMv2(233,:) - inMv1(41,:) .* inMv2(235,:) - inMv1(42,:) .* inMv2(236,:) - inMv1(43,:) .* inMv2(237,:) - inMv1(47,:) .* inMv2(239,:) - inMv1(48,:) .* inMv2(240,:) - inMv1(49,:) .* inMv2(241,:) - inMv1(53,:) .* inMv2(245,:) - inMv1(54,:) .* inMv2(246,:) - inMv1(55,:) .* inMv2(247,:);
    outMv(6,:) = inMv1(2,:) .* inMv2(220,:) + inMv1(7,:) .* inMv2(221,:) - inMv1(12,:) .* inMv2(223,:) + inMv1(13,:) .* inMv2(224,:) + inMv1(14,:) .* inMv2(225,:) + inMv1(15,:) .* inMv2(226,:) + inMv1(22,:) .* inMv2(227,:) - inMv1(27,:) .* inMv2(229,:) + inMv1(28,:) .* inMv2(230,:) + inMv1(29,:) .* inMv2(231,:) + inMv1(30,:) .* inMv2(232,:) - inMv1(37,:) .* inMv2(234,:) + inMv1(38,:) .* inMv2(235,:) + inMv1(39,:) .* inMv2(236,:) + inMv1(40,:) .* inMv2(237,:) - inMv1(47,:) .* inMv2(242,:) - inMv1(48,:) .* inMv2(243,:) - inMv1(49,:) .* inMv2(244,:) + inMv1(50,:) .* inMv2(245,:) + inMv1(51,:) .* inMv2(246,:) + inMv1(52,:) .* inMv2(247,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(220,:) + inMv1(7,:) .* inMv2(222,:) + inMv1(8,:) .* inMv2(223,:) - inMv1(9,:) .* inMv2(224,:) - inMv1(10,:) .* inMv2(225,:) - inMv1(11,:) .* inMv2(226,:) + inMv1(22,:) .* inMv2(228,:) + inMv1(23,:) .* inMv2(229,:) - inMv1(24,:) .* inMv2(230,:) - inMv1(25,:) .* inMv2(231,:) - inMv1(26,:) .* inMv2(232,:) - inMv1(37,:) .* inMv2(238,:) + inMv1(38,:) .* inMv2(239,:) + inMv1(39,:) .* inMv2(240,:) + inMv1(40,:) .* inMv2(241,:) + inMv1(41,:) .* inMv2(242,:) + inMv1(42,:) .* inMv2(243,:) + inMv1(43,:) .* inMv2(244,:) - inMv1(44,:) .* inMv2(245,:) - inMv1(45,:) .* inMv2(246,:) - inMv1(46,:) .* inMv2(247,:);
    outMv(8,:) = -inMv1(1,:) .* inMv2(221,:) - inMv1(2,:) .* inMv2(222,:) - inMv1(3,:) .* inMv2(223,:) + inMv1(4,:) .* inMv2(224,:) + inMv1(5,:) .* inMv2(225,:) + inMv1(6,:) .* inMv2(226,:) + inMv1(22,:) .* inMv2(233,:) + inMv1(23,:) .* inMv2(234,:) - inMv1(24,:) .* inMv2(235,:) - inMv1(25,:) .* inMv2(236,:) - inMv1(26,:) .* inMv2(237,:) + inMv1(27,:) .* inMv2(238,:) - inMv1(28,:) .* inMv2(239,:) - inMv1(29,:) .* inMv2(240,:) - inMv1(30,:) .* inMv2(241,:) - inMv1(31,:) .* inMv2(242,:) - inMv1(32,:) .* inMv2(243,:) - inMv1(33,:) .* inMv2(244,:) + inMv1(34,:) .* inMv2(245,:) + inMv1(35,:) .* inMv2(246,:) + inMv1(36,:) .* inMv2(247,:);
    outMv(9,:) = -inMv1(1,:) .* inMv2(227,:) - inMv1(2,:) .* inMv2(228,:) - inMv1(3,:) .* inMv2(229,:) + inMv1(4,:) .* inMv2(230,:) + inMv1(5,:) .* inMv2(231,:) + inMv1(6,:) .* inMv2(232,:) - inMv1(7,:) .* inMv2(233,:) - inMv1(8,:) .* inMv2(234,:) + inMv1(9,:) .* inMv2(235,:) + inMv1(10,:) .* inMv2(236,:) + inMv1(11,:) .* inMv2(237,:) - inMv1(12,:) .* inMv2(238,:) + inMv1(13,:) .* inMv2(239,:) + inMv1(14,:) .* inMv2(240,:) + inMv1(15,:) .* inMv2(241,:) + inMv1(16,:) .* inMv2(242,:) + inMv1(17,:) .* inMv2(243,:) + inMv1(18,:) .* inMv2(244,:) - inMv1(19,:) .* inMv2(245,:) - inMv1(20,:) .* inMv2(246,:) - inMv1(21,:) .* inMv2(247,:);
    outMv(10,:) = -inMv1(21,:) .* inMv2(248,:) - inMv1(36,:) .* inMv2(249,:) - inMv1(46,:) .* inMv2(250,:) - inMv1(52,:) .* inMv2(251,:) - inMv1(55,:) .* inMv2(252,:) + inMv1(56,:) .* inMv2(253,:);
    outMv(11,:) = inMv1(20,:) .* inMv2(248,:) + inMv1(35,:) .* inMv2(249,:) + inMv1(45,:) .* inMv2(250,:) + inMv1(51,:) .* inMv2(251,:) + inMv1(54,:) .* inMv2(252,:) + inMv1(56,:) .* inMv2(254,:);
    outMv(12,:) = -inMv1(19,:) .* inMv2(248,:) - inMv1(34,:) .* inMv2(249,:) - inMv1(44,:) .* inMv2(250,:) - inMv1(50,:) .* inMv2(251,:) - inMv1(53,:) .* inMv2(252,:) + inMv1(56,:) .* inMv2(255,:);
    outMv(13,:) = inMv1(18,:) .* inMv2(248,:) + inMv1(33,:) .* inMv2(249,:) + inMv1(43,:) .* inMv2(250,:) + inMv1(49,:) .* inMv2(251,:) + inMv1(54,:) .* inMv2(253,:) + inMv1(55,:) .* inMv2(254,:);
    outMv(14,:) = -inMv1(17,:) .* inMv2(248,:) - inMv1(32,:) .* inMv2(249,:) - inMv1(42,:) .* inMv2(250,:) - inMv1(48,:) .* inMv2(251,:) - inMv1(53,:) .* inMv2(253,:) + inMv1(55,:) .* inMv2(255,:);
    outMv(15,:) = inMv1(16,:) .* inMv2(248,:) + inMv1(31,:) .* inMv2(249,:) + inMv1(41,:) .* inMv2(250,:) + inMv1(47,:) .* inMv2(251,:) - inMv1(53,:) .* inMv2(254,:) - inMv1(54,:) .* inMv2(255,:);
    outMv(16,:) = -inMv1(15,:) .* inMv2(248,:) - inMv1(30,:) .* inMv2(249,:) - inMv1(40,:) .* inMv2(250,:) + inMv1(49,:) .* inMv2(252,:) - inMv1(51,:) .* inMv2(253,:) - inMv1(52,:) .* inMv2(254,:);
    outMv(17,:) = inMv1(14,:) .* inMv2(248,:) + inMv1(29,:) .* inMv2(249,:) + inMv1(39,:) .* inMv2(250,:) - inMv1(48,:) .* inMv2(252,:) + inMv1(50,:) .* inMv2(253,:) - inMv1(52,:) .* inMv2(255,:);
    outMv(18,:) = -inMv1(13,:) .* inMv2(248,:) - inMv1(28,:) .* inMv2(249,:) - inMv1(38,:) .* inMv2(250,:) + inMv1(47,:) .* inMv2(252,:) + inMv1(50,:) .* inMv2(254,:) + inMv1(51,:) .* inMv2(255,:);
    outMv(19,:) = -inMv1(12,:) .* inMv2(248,:) - inMv1(27,:) .* inMv2(249,:) - inMv1(37,:) .* inMv2(250,:) + inMv1(47,:) .* inMv2(253,:) + inMv1(48,:) .* inMv2(254,:) + inMv1(49,:) .* inMv2(255,:);
    outMv(20,:) = inMv1(11,:) .* inMv2(248,:) + inMv1(26,:) .* inMv2(249,:) - inMv1(40,:) .* inMv2(251,:) - inMv1(43,:) .* inMv2(252,:) + inMv1(45,:) .* inMv2(253,:) + inMv1(46,:) .* inMv2(254,:);
    outMv(21,:) = -inMv1(10,:) .* inMv2(248,:) - inMv1(25,:) .* inMv2(249,:) + inMv1(39,:) .* inMv2(251,:) + inMv1(42,:) .* inMv2(252,:) - inMv1(44,:) .* inMv2(253,:) + inMv1(46,:) .* inMv2(255,:);
    outMv(22,:) = inMv1(9,:) .* inMv2(248,:) + inMv1(24,:) .* inMv2(249,:) - inMv1(38,:) .* inMv2(251,:) - inMv1(41,:) .* inMv2(252,:) - inMv1(44,:) .* inMv2(254,:) - inMv1(45,:) .* inMv2(255,:);
    outMv(23,:) = inMv1(8,:) .* inMv2(248,:) + inMv1(23,:) .* inMv2(249,:) - inMv1(37,:) .* inMv2(251,:) - inMv1(41,:) .* inMv2(253,:) - inMv1(42,:) .* inMv2(254,:) - inMv1(43,:) .* inMv2(255,:);
    outMv(24,:) = -inMv1(7,:) .* inMv2(248,:) - inMv1(22,:) .* inMv2(249,:) - inMv1(37,:) .* inMv2(252,:) + inMv1(38,:) .* inMv2(253,:) + inMv1(39,:) .* inMv2(254,:) + inMv1(40,:) .* inMv2(255,:);
    outMv(25,:) = -inMv1(6,:) .* inMv2(248,:) + inMv1(26,:) .* inMv2(250,:) + inMv1(30,:) .* inMv2(251,:) + inMv1(33,:) .* inMv2(252,:) - inMv1(35,:) .* inMv2(253,:) - inMv1(36,:) .* inMv2(254,:);
    outMv(26,:) = inMv1(5,:) .* inMv2(248,:) - inMv1(25,:) .* inMv2(250,:) - inMv1(29,:) .* inMv2(251,:) - inMv1(32,:) .* inMv2(252,:) + inMv1(34,:) .* inMv2(253,:) - inMv1(36,:) .* inMv2(255,:);
    outMv(27,:) = -inMv1(4,:) .* inMv2(248,:) + inMv1(24,:) .* inMv2(250,:) + inMv1(28,:) .* inMv2(251,:) + inMv1(31,:) .* inMv2(252,:) + inMv1(34,:) .* inMv2(254,:) + inMv1(35,:) .* inMv2(255,:);
    outMv(28,:) = -inMv1(3,:) .* inMv2(248,:) + inMv1(23,:) .* inMv2(250,:) + inMv1(27,:) .* inMv2(251,:) + inMv1(31,:) .* inMv2(253,:) + inMv1(32,:) .* inMv2(254,:) + inMv1(33,:) .* inMv2(255,:);
    outMv(29,:) = inMv1(2,:) .* inMv2(248,:) - inMv1(22,:) .* inMv2(250,:) + inMv1(27,:) .* inMv2(252,:) - inMv1(28,:) .* inMv2(253,:) - inMv1(29,:) .* inMv2(254,:) - inMv1(30,:) .* inMv2(255,:);
    outMv(30,:) = -inMv1(1,:) .* inMv2(248,:) - inMv1(22,:) .* inMv2(251,:) - inMv1(23,:) .* inMv2(252,:) + inMv1(24,:) .* inMv2(253,:) + inMv1(25,:) .* inMv2(254,:) + inMv1(26,:) .* inMv2(255,:);
    outMv(31,:) = -inMv1(6,:) .* inMv2(249,:) - inMv1(11,:) .* inMv2(250,:) - inMv1(15,:) .* inMv2(251,:) - inMv1(18,:) .* inMv2(252,:) + inMv1(20,:) .* inMv2(253,:) + inMv1(21,:) .* inMv2(254,:);
    outMv(32,:) = inMv1(5,:) .* inMv2(249,:) + inMv1(10,:) .* inMv2(250,:) + inMv1(14,:) .* inMv2(251,:) + inMv1(17,:) .* inMv2(252,:) - inMv1(19,:) .* inMv2(253,:) + inMv1(21,:) .* inMv2(255,:);
    outMv(33,:) = -inMv1(4,:) .* inMv2(249,:) - inMv1(9,:) .* inMv2(250,:) - inMv1(13,:) .* inMv2(251,:) - inMv1(16,:) .* inMv2(252,:) - inMv1(19,:) .* inMv2(254,:) - inMv1(20,:) .* inMv2(255,:);
    outMv(34,:) = -inMv1(3,:) .* inMv2(249,:) - inMv1(8,:) .* inMv2(250,:) - inMv1(12,:) .* inMv2(251,:) - inMv1(16,:) .* inMv2(253,:) - inMv1(17,:) .* inMv2(254,:) - inMv1(18,:) .* inMv2(255,:);
    outMv(35,:) = inMv1(2,:) .* inMv2(249,:) + inMv1(7,:) .* inMv2(250,:) - inMv1(12,:) .* inMv2(252,:) + inMv1(13,:) .* inMv2(253,:) + inMv1(14,:) .* inMv2(254,:) + inMv1(15,:) .* inMv2(255,:);
    outMv(36,:) = -inMv1(1,:) .* inMv2(249,:) + inMv1(7,:) .* inMv2(251,:) + inMv1(8,:) .* inMv2(252,:) - inMv1(9,:) .* inMv2(253,:) - inMv1(10,:) .* inMv2(254,:) - inMv1(11,:) .* inMv2(255,:);
    outMv(37,:) = -inMv1(1,:) .* inMv2(250,:) - inMv1(2,:) .* inMv2(251,:) - inMv1(3,:) .* inMv2(252,:) + inMv1(4,:) .* inMv2(253,:) + inMv1(5,:) .* inMv2(254,:) + inMv1(6,:) .* inMv2(255,:);
    outMv(38,:) = -inMv1(56,:) .* inMv2(256,:);
    outMv(39,:) = -inMv1(55,:) .* inMv2(256,:);
    outMv(40,:) = inMv1(54,:) .* inMv2(256,:);
    outMv(41,:) = -inMv1(53,:) .* inMv2(256,:);
    outMv(42,:) = inMv1(52,:) .* inMv2(256,:);
    outMv(43,:) = -inMv1(51,:) .* inMv2(256,:);
    outMv(44,:) = inMv1(50,:) .* inMv2(256,:);
    outMv(45,:) = -inMv1(49,:) .* inMv2(256,:);
    outMv(46,:) = inMv1(48,:) .* inMv2(256,:);
    outMv(47,:) = -inMv1(47,:) .* inMv2(256,:);
    outMv(48,:) = -inMv1(46,:) .* inMv2(256,:);
    outMv(49,:) = inMv1(45,:) .* inMv2(256,:);
    outMv(50,:) = -inMv1(44,:) .* inMv2(256,:);
    outMv(51,:) = inMv1(43,:) .* inMv2(256,:);
    outMv(52,:) = -inMv1(42,:) .* inMv2(256,:);
    outMv(53,:) = inMv1(41,:) .* inMv2(256,:);
    outMv(54,:) = -inMv1(40,:) .* inMv2(256,:);
    outMv(55,:) = inMv1(39,:) .* inMv2(256,:);
    outMv(56,:) = -inMv1(38,:) .* inMv2(256,:);
    outMv(57,:) = -inMv1(37,:) .* inMv2(256,:);
    outMv(58,:) = inMv1(36,:) .* inMv2(256,:);
    outMv(59,:) = -inMv1(35,:) .* inMv2(256,:);
    outMv(60,:) = inMv1(34,:) .* inMv2(256,:);
    outMv(61,:) = -inMv1(33,:) .* inMv2(256,:);
    outMv(62,:) = inMv1(32,:) .* inMv2(256,:);
    outMv(63,:) = -inMv1(31,:) .* inMv2(256,:);
    outMv(64,:) = inMv1(30,:) .* inMv2(256,:);
    outMv(65,:) = -inMv1(29,:) .* inMv2(256,:);
    outMv(66,:) = inMv1(28,:) .* inMv2(256,:);
    outMv(67,:) = inMv1(27,:) .* inMv2(256,:);
    outMv(68,:) = -inMv1(26,:) .* inMv2(256,:);
    outMv(69,:) = inMv1(25,:) .* inMv2(256,:);
    outMv(70,:) = -inMv1(24,:) .* inMv2(256,:);
    outMv(71,:) = -inMv1(23,:) .* inMv2(256,:);
    outMv(72,:) = inMv1(22,:) .* inMv2(256,:);
    outMv(73,:) = -inMv1(21,:) .* inMv2(256,:);
    outMv(74,:) = inMv1(20,:) .* inMv2(256,:);
    outMv(75,:) = -inMv1(19,:) .* inMv2(256,:);
    outMv(76,:) = inMv1(18,:) .* inMv2(256,:);
    outMv(77,:) = -inMv1(17,:) .* inMv2(256,:);
    outMv(78,:) = inMv1(16,:) .* inMv2(256,:);
    outMv(79,:) = -inMv1(15,:) .* inMv2(256,:);
    outMv(80,:) = inMv1(14,:) .* inMv2(256,:);
    outMv(81,:) = -inMv1(13,:) .* inMv2(256,:);
    outMv(82,:) = -inMv1(12,:) .* inMv2(256,:);
    outMv(83,:) = inMv1(11,:) .* inMv2(256,:);
    outMv(84,:) = -inMv1(10,:) .* inMv2(256,:);
    outMv(85,:) = inMv1(9,:) .* inMv2(256,:);
    outMv(86,:) = inMv1(8,:) .* inMv2(256,:);
    outMv(87,:) = -inMv1(7,:) .* inMv2(256,:);
    outMv(88,:) = -inMv1(6,:) .* inMv2(256,:);
    outMv(89,:) = inMv1(5,:) .* inMv2(256,:);
    outMv(90,:) = -inMv1(4,:) .* inMv2(256,:);
    outMv(91,:) = -inMv1(3,:) .* inMv2(256,:);
    outMv(92,:) = inMv1(2,:) .* inMv2(256,:);
    outMv(93,:) = -inMv1(1,:) .* inMv2(256,:);
end
