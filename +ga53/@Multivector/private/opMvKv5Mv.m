% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = opMvKv5Mv(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (56,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(164,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(165,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(166,:) = inMv1(1,:) .* inMv2(3,:);
    outMv(167,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(168,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(169,:) = inMv1(1,:) .* inMv2(6,:);
    outMv(170,:) = inMv1(1,:) .* inMv2(7,:);
    outMv(171,:) = inMv1(1,:) .* inMv2(8,:);
    outMv(172,:) = inMv1(1,:) .* inMv2(9,:);
    outMv(173,:) = inMv1(1,:) .* inMv2(10,:);
    outMv(174,:) = inMv1(1,:) .* inMv2(11,:);
    outMv(175,:) = inMv1(1,:) .* inMv2(12,:);
    outMv(176,:) = inMv1(1,:) .* inMv2(13,:);
    outMv(177,:) = inMv1(1,:) .* inMv2(14,:);
    outMv(178,:) = inMv1(1,:) .* inMv2(15,:);
    outMv(179,:) = inMv1(1,:) .* inMv2(16,:);
    outMv(180,:) = inMv1(1,:) .* inMv2(17,:);
    outMv(181,:) = inMv1(1,:) .* inMv2(18,:);
    outMv(182,:) = inMv1(1,:) .* inMv2(19,:);
    outMv(183,:) = inMv1(1,:) .* inMv2(20,:);
    outMv(184,:) = inMv1(1,:) .* inMv2(21,:);
    outMv(185,:) = inMv1(1,:) .* inMv2(22,:);
    outMv(186,:) = inMv1(1,:) .* inMv2(23,:);
    outMv(187,:) = inMv1(1,:) .* inMv2(24,:);
    outMv(188,:) = inMv1(1,:) .* inMv2(25,:);
    outMv(189,:) = inMv1(1,:) .* inMv2(26,:);
    outMv(190,:) = inMv1(1,:) .* inMv2(27,:);
    outMv(191,:) = inMv1(1,:) .* inMv2(28,:);
    outMv(192,:) = inMv1(1,:) .* inMv2(29,:);
    outMv(193,:) = inMv1(1,:) .* inMv2(30,:);
    outMv(194,:) = inMv1(1,:) .* inMv2(31,:);
    outMv(195,:) = inMv1(1,:) .* inMv2(32,:);
    outMv(196,:) = inMv1(1,:) .* inMv2(33,:);
    outMv(197,:) = inMv1(1,:) .* inMv2(34,:);
    outMv(198,:) = inMv1(1,:) .* inMv2(35,:);
    outMv(199,:) = inMv1(1,:) .* inMv2(36,:);
    outMv(200,:) = inMv1(1,:) .* inMv2(37,:);
    outMv(201,:) = inMv1(1,:) .* inMv2(38,:);
    outMv(202,:) = inMv1(1,:) .* inMv2(39,:);
    outMv(203,:) = inMv1(1,:) .* inMv2(40,:);
    outMv(204,:) = inMv1(1,:) .* inMv2(41,:);
    outMv(205,:) = inMv1(1,:) .* inMv2(42,:);
    outMv(206,:) = inMv1(1,:) .* inMv2(43,:);
    outMv(207,:) = inMv1(1,:) .* inMv2(44,:);
    outMv(208,:) = inMv1(1,:) .* inMv2(45,:);
    outMv(209,:) = inMv1(1,:) .* inMv2(46,:);
    outMv(210,:) = inMv1(1,:) .* inMv2(47,:);
    outMv(211,:) = inMv1(1,:) .* inMv2(48,:);
    outMv(212,:) = inMv1(1,:) .* inMv2(49,:);
    outMv(213,:) = inMv1(1,:) .* inMv2(50,:);
    outMv(214,:) = inMv1(1,:) .* inMv2(51,:);
    outMv(215,:) = inMv1(1,:) .* inMv2(52,:);
    outMv(216,:) = inMv1(1,:) .* inMv2(53,:);
    outMv(217,:) = inMv1(1,:) .* inMv2(54,:);
    outMv(218,:) = inMv1(1,:) .* inMv2(55,:);
    outMv(219,:) = inMv1(1,:) .* inMv2(56,:);
    outMv(220,:) = inMv1(2,:) .* inMv2(6,:) - inMv1(3,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(1,:);
    outMv(221,:) = inMv1(2,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(9,:) - inMv1(5,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(1,:);
    outMv(222,:) = inMv1(2,:) .* inMv2(15,:) - inMv1(3,:) .* inMv2(14,:) + inMv1(4,:) .* inMv2(13,:) - inMv1(5,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(2,:);
    outMv(223,:) = inMv1(2,:) .* inMv2(18,:) - inMv1(3,:) .* inMv2(17,:) + inMv1(4,:) .* inMv2(16,:) - inMv1(6,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(3,:);
    outMv(224,:) = inMv1(2,:) .* inMv2(20,:) - inMv1(3,:) .* inMv2(19,:) + inMv1(5,:) .* inMv2(16,:) - inMv1(6,:) .* inMv2(13,:) + inMv1(7,:) .* inMv2(9,:) - inMv1(8,:) .* inMv2(4,:);
    outMv(225,:) = inMv1(2,:) .* inMv2(21,:) - inMv1(4,:) .* inMv2(19,:) + inMv1(5,:) .* inMv2(17,:) - inMv1(6,:) .* inMv2(14,:) + inMv1(7,:) .* inMv2(10,:) - inMv1(8,:) .* inMv2(5,:);
    outMv(226,:) = inMv1(3,:) .* inMv2(21,:) - inMv1(4,:) .* inMv2(20,:) + inMv1(5,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(15,:) + inMv1(7,:) .* inMv2(11,:) - inMv1(8,:) .* inMv2(6,:);
    outMv(227,:) = inMv1(2,:) .* inMv2(26,:) - inMv1(3,:) .* inMv2(25,:) + inMv1(4,:) .* inMv2(24,:) - inMv1(5,:) .* inMv2(23,:) + inMv1(6,:) .* inMv2(22,:) - inMv1(9,:) .* inMv2(1,:);
    outMv(228,:) = inMv1(2,:) .* inMv2(30,:) - inMv1(3,:) .* inMv2(29,:) + inMv1(4,:) .* inMv2(28,:) - inMv1(5,:) .* inMv2(27,:) + inMv1(7,:) .* inMv2(22,:) - inMv1(9,:) .* inMv2(2,:);
    outMv(229,:) = inMv1(2,:) .* inMv2(33,:) - inMv1(3,:) .* inMv2(32,:) + inMv1(4,:) .* inMv2(31,:) - inMv1(6,:) .* inMv2(27,:) + inMv1(7,:) .* inMv2(23,:) - inMv1(9,:) .* inMv2(3,:);
    outMv(230,:) = inMv1(2,:) .* inMv2(35,:) - inMv1(3,:) .* inMv2(34,:) + inMv1(5,:) .* inMv2(31,:) - inMv1(6,:) .* inMv2(28,:) + inMv1(7,:) .* inMv2(24,:) - inMv1(9,:) .* inMv2(4,:);
    outMv(231,:) = inMv1(2,:) .* inMv2(36,:) - inMv1(4,:) .* inMv2(34,:) + inMv1(5,:) .* inMv2(32,:) - inMv1(6,:) .* inMv2(29,:) + inMv1(7,:) .* inMv2(25,:) - inMv1(9,:) .* inMv2(5,:);
    outMv(232,:) = inMv1(3,:) .* inMv2(36,:) - inMv1(4,:) .* inMv2(35,:) + inMv1(5,:) .* inMv2(33,:) - inMv1(6,:) .* inMv2(30,:) + inMv1(7,:) .* inMv2(26,:) - inMv1(9,:) .* inMv2(6,:);
    outMv(233,:) = inMv1(2,:) .* inMv2(40,:) - inMv1(3,:) .* inMv2(39,:) + inMv1(4,:) .* inMv2(38,:) - inMv1(5,:) .* inMv2(37,:) + inMv1(8,:) .* inMv2(22,:) - inMv1(9,:) .* inMv2(7,:);
    outMv(234,:) = inMv1(2,:) .* inMv2(43,:) - inMv1(3,:) .* inMv2(42,:) + inMv1(4,:) .* inMv2(41,:) - inMv1(6,:) .* inMv2(37,:) + inMv1(8,:) .* inMv2(23,:) - inMv1(9,:) .* inMv2(8,:);
    outMv(235,:) = inMv1(2,:) .* inMv2(45,:) - inMv1(3,:) .* inMv2(44,:) + inMv1(5,:) .* inMv2(41,:) - inMv1(6,:) .* inMv2(38,:) + inMv1(8,:) .* inMv2(24,:) - inMv1(9,:) .* inMv2(9,:);
    outMv(236,:) = inMv1(2,:) .* inMv2(46,:) - inMv1(4,:) .* inMv2(44,:) + inMv1(5,:) .* inMv2(42,:) - inMv1(6,:) .* inMv2(39,:) + inMv1(8,:) .* inMv2(25,:) - inMv1(9,:) .* inMv2(10,:);
    outMv(237,:) = inMv1(3,:) .* inMv2(46,:) - inMv1(4,:) .* inMv2(45,:) + inMv1(5,:) .* inMv2(43,:) - inMv1(6,:) .* inMv2(40,:) + inMv1(8,:) .* inMv2(26,:) - inMv1(9,:) .* inMv2(11,:);
    outMv(238,:) = inMv1(2,:) .* inMv2(49,:) - inMv1(3,:) .* inMv2(48,:) + inMv1(4,:) .* inMv2(47,:) - inMv1(7,:) .* inMv2(37,:) + inMv1(8,:) .* inMv2(27,:) - inMv1(9,:) .* inMv2(12,:);
    outMv(239,:) = inMv1(2,:) .* inMv2(51,:) - inMv1(3,:) .* inMv2(50,:) + inMv1(5,:) .* inMv2(47,:) - inMv1(7,:) .* inMv2(38,:) + inMv1(8,:) .* inMv2(28,:) - inMv1(9,:) .* inMv2(13,:);
    outMv(240,:) = inMv1(2,:) .* inMv2(52,:) - inMv1(4,:) .* inMv2(50,:) + inMv1(5,:) .* inMv2(48,:) - inMv1(7,:) .* inMv2(39,:) + inMv1(8,:) .* inMv2(29,:) - inMv1(9,:) .* inMv2(14,:);
    outMv(241,:) = inMv1(3,:) .* inMv2(52,:) - inMv1(4,:) .* inMv2(51,:) + inMv1(5,:) .* inMv2(49,:) - inMv1(7,:) .* inMv2(40,:) + inMv1(8,:) .* inMv2(30,:) - inMv1(9,:) .* inMv2(15,:);
    outMv(242,:) = inMv1(2,:) .* inMv2(54,:) - inMv1(3,:) .* inMv2(53,:) + inMv1(6,:) .* inMv2(47,:) - inMv1(7,:) .* inMv2(41,:) + inMv1(8,:) .* inMv2(31,:) - inMv1(9,:) .* inMv2(16,:);
    outMv(243,:) = inMv1(2,:) .* inMv2(55,:) - inMv1(4,:) .* inMv2(53,:) + inMv1(6,:) .* inMv2(48,:) - inMv1(7,:) .* inMv2(42,:) + inMv1(8,:) .* inMv2(32,:) - inMv1(9,:) .* inMv2(17,:);
    outMv(244,:) = inMv1(3,:) .* inMv2(55,:) - inMv1(4,:) .* inMv2(54,:) + inMv1(6,:) .* inMv2(49,:) - inMv1(7,:) .* inMv2(43,:) + inMv1(8,:) .* inMv2(33,:) - inMv1(9,:) .* inMv2(18,:);
    outMv(245,:) = inMv1(2,:) .* inMv2(56,:) - inMv1(5,:) .* inMv2(53,:) + inMv1(6,:) .* inMv2(50,:) - inMv1(7,:) .* inMv2(44,:) + inMv1(8,:) .* inMv2(34,:) - inMv1(9,:) .* inMv2(19,:);
    outMv(246,:) = inMv1(3,:) .* inMv2(56,:) - inMv1(5,:) .* inMv2(54,:) + inMv1(6,:) .* inMv2(51,:) - inMv1(7,:) .* inMv2(45,:) + inMv1(8,:) .* inMv2(35,:) - inMv1(9,:) .* inMv2(20,:);
    outMv(247,:) = inMv1(4,:) .* inMv2(56,:) - inMv1(5,:) .* inMv2(55,:) + inMv1(6,:) .* inMv2(52,:) - inMv1(7,:) .* inMv2(46,:) + inMv1(8,:) .* inMv2(36,:) - inMv1(9,:) .* inMv2(21,:);
    outMv(248,:) = inMv1(10,:) .* inMv2(21,:) - inMv1(11,:) .* inMv2(20,:) + inMv1(12,:) .* inMv2(19,:) + inMv1(13,:) .* inMv2(18,:) - inMv1(14,:) .* inMv2(17,:) + inMv1(15,:) .* inMv2(16,:) - inMv1(16,:) .* inMv2(15,:) + inMv1(17,:) .* inMv2(14,:) - inMv1(18,:) .* inMv2(13,:) + inMv1(19,:) .* inMv2(12,:) + inMv1(20,:) .* inMv2(11,:) - inMv1(21,:) .* inMv2(10,:) + inMv1(22,:) .* inMv2(9,:) - inMv1(23,:) .* inMv2(8,:) + inMv1(24,:) .* inMv2(7,:) - inMv1(25,:) .* inMv2(6,:) + inMv1(26,:) .* inMv2(5,:) - inMv1(27,:) .* inMv2(4,:) + inMv1(28,:) .* inMv2(3,:) - inMv1(29,:) .* inMv2(2,:) + inMv1(30,:) .* inMv2(1,:);
    outMv(249,:) = inMv1(10,:) .* inMv2(36,:) - inMv1(11,:) .* inMv2(35,:) + inMv1(12,:) .* inMv2(34,:) + inMv1(13,:) .* inMv2(33,:) - inMv1(14,:) .* inMv2(32,:) + inMv1(15,:) .* inMv2(31,:) - inMv1(16,:) .* inMv2(30,:) + inMv1(17,:) .* inMv2(29,:) - inMv1(18,:) .* inMv2(28,:) + inMv1(19,:) .* inMv2(27,:) + inMv1(20,:) .* inMv2(26,:) - inMv1(21,:) .* inMv2(25,:) + inMv1(22,:) .* inMv2(24,:) - inMv1(23,:) .* inMv2(23,:) + inMv1(24,:) .* inMv2(22,:) - inMv1(31,:) .* inMv2(6,:) + inMv1(32,:) .* inMv2(5,:) - inMv1(33,:) .* inMv2(4,:) + inMv1(34,:) .* inMv2(3,:) - inMv1(35,:) .* inMv2(2,:) + inMv1(36,:) .* inMv2(1,:);
    outMv(250,:) = inMv1(10,:) .* inMv2(46,:) - inMv1(11,:) .* inMv2(45,:) + inMv1(12,:) .* inMv2(44,:) + inMv1(13,:) .* inMv2(43,:) - inMv1(14,:) .* inMv2(42,:) + inMv1(15,:) .* inMv2(41,:) - inMv1(16,:) .* inMv2(40,:) + inMv1(17,:) .* inMv2(39,:) - inMv1(18,:) .* inMv2(38,:) + inMv1(19,:) .* inMv2(37,:) + inMv1(25,:) .* inMv2(26,:) - inMv1(26,:) .* inMv2(25,:) + inMv1(27,:) .* inMv2(24,:) - inMv1(28,:) .* inMv2(23,:) + inMv1(29,:) .* inMv2(22,:) - inMv1(31,:) .* inMv2(11,:) + inMv1(32,:) .* inMv2(10,:) - inMv1(33,:) .* inMv2(9,:) + inMv1(34,:) .* inMv2(8,:) - inMv1(35,:) .* inMv2(7,:) + inMv1(37,:) .* inMv2(1,:);
    outMv(251,:) = inMv1(10,:) .* inMv2(52,:) - inMv1(11,:) .* inMv2(51,:) + inMv1(12,:) .* inMv2(50,:) + inMv1(13,:) .* inMv2(49,:) - inMv1(14,:) .* inMv2(48,:) + inMv1(15,:) .* inMv2(47,:) - inMv1(20,:) .* inMv2(40,:) + inMv1(21,:) .* inMv2(39,:) - inMv1(22,:) .* inMv2(38,:) + inMv1(23,:) .* inMv2(37,:) + inMv1(25,:) .* inMv2(30,:) - inMv1(26,:) .* inMv2(29,:) + inMv1(27,:) .* inMv2(28,:) - inMv1(28,:) .* inMv2(27,:) + inMv1(30,:) .* inMv2(22,:) - inMv1(31,:) .* inMv2(15,:) + inMv1(32,:) .* inMv2(14,:) - inMv1(33,:) .* inMv2(13,:) + inMv1(34,:) .* inMv2(12,:) - inMv1(36,:) .* inMv2(7,:) + inMv1(37,:) .* inMv2(2,:);
    outMv(252,:) = inMv1(10,:) .* inMv2(55,:) - inMv1(11,:) .* inMv2(54,:) + inMv1(12,:) .* inMv2(53,:) + inMv1(16,:) .* inMv2(49,:) - inMv1(17,:) .* inMv2(48,:) + inMv1(18,:) .* inMv2(47,:) - inMv1(20,:) .* inMv2(43,:) + inMv1(21,:) .* inMv2(42,:) - inMv1(22,:) .* inMv2(41,:) + inMv1(24,:) .* inMv2(37,:) + inMv1(25,:) .* inMv2(33,:) - inMv1(26,:) .* inMv2(32,:) + inMv1(27,:) .* inMv2(31,:) - inMv1(29,:) .* inMv2(27,:) + inMv1(30,:) .* inMv2(23,:) - inMv1(31,:) .* inMv2(18,:) + inMv1(32,:) .* inMv2(17,:) - inMv1(33,:) .* inMv2(16,:) + inMv1(35,:) .* inMv2(12,:) - inMv1(36,:) .* inMv2(8,:) + inMv1(37,:) .* inMv2(3,:);
    outMv(253,:) = inMv1(10,:) .* inMv2(56,:) - inMv1(13,:) .* inMv2(54,:) + inMv1(14,:) .* inMv2(53,:) + inMv1(16,:) .* inMv2(51,:) - inMv1(17,:) .* inMv2(50,:) + inMv1(19,:) .* inMv2(47,:) - inMv1(20,:) .* inMv2(45,:) + inMv1(21,:) .* inMv2(44,:) - inMv1(23,:) .* inMv2(41,:) + inMv1(24,:) .* inMv2(38,:) + inMv1(25,:) .* inMv2(35,:) - inMv1(26,:) .* inMv2(34,:) + inMv1(28,:) .* inMv2(31,:) - inMv1(29,:) .* inMv2(28,:) + inMv1(30,:) .* inMv2(24,:) - inMv1(31,:) .* inMv2(20,:) + inMv1(32,:) .* inMv2(19,:) - inMv1(34,:) .* inMv2(16,:) + inMv1(35,:) .* inMv2(13,:) - inMv1(36,:) .* inMv2(9,:) + inMv1(37,:) .* inMv2(4,:);
    outMv(254,:) = inMv1(11,:) .* inMv2(56,:) - inMv1(13,:) .* inMv2(55,:) + inMv1(15,:) .* inMv2(53,:) + inMv1(16,:) .* inMv2(52,:) - inMv1(18,:) .* inMv2(50,:) + inMv1(19,:) .* inMv2(48,:) - inMv1(20,:) .* inMv2(46,:) + inMv1(22,:) .* inMv2(44,:) - inMv1(23,:) .* inMv2(42,:) + inMv1(24,:) .* inMv2(39,:) + inMv1(25,:) .* inMv2(36,:) - inMv1(27,:) .* inMv2(34,:) + inMv1(28,:) .* inMv2(32,:) - inMv1(29,:) .* inMv2(29,:) + inMv1(30,:) .* inMv2(25,:) - inMv1(31,:) .* inMv2(21,:) + inMv1(33,:) .* inMv2(19,:) - inMv1(34,:) .* inMv2(17,:) + inMv1(35,:) .* inMv2(14,:) - inMv1(36,:) .* inMv2(10,:) + inMv1(37,:) .* inMv2(5,:);
    outMv(255,:) = inMv1(12,:) .* inMv2(56,:) - inMv1(14,:) .* inMv2(55,:) + inMv1(15,:) .* inMv2(54,:) + inMv1(17,:) .* inMv2(52,:) - inMv1(18,:) .* inMv2(51,:) + inMv1(19,:) .* inMv2(49,:) - inMv1(21,:) .* inMv2(46,:) + inMv1(22,:) .* inMv2(45,:) - inMv1(23,:) .* inMv2(43,:) + inMv1(24,:) .* inMv2(40,:) + inMv1(26,:) .* inMv2(36,:) - inMv1(27,:) .* inMv2(35,:) + inMv1(28,:) .* inMv2(33,:) - inMv1(29,:) .* inMv2(30,:) + inMv1(30,:) .* inMv2(26,:) - inMv1(32,:) .* inMv2(21,:) + inMv1(33,:) .* inMv2(20,:) - inMv1(34,:) .* inMv2(18,:) + inMv1(35,:) .* inMv2(15,:) - inMv1(36,:) .* inMv2(11,:) + inMv1(37,:) .* inMv2(6,:);
    outMv(256,:) = inMv1(38,:) .* inMv2(56,:) - inMv1(39,:) .* inMv2(55,:) + inMv1(40,:) .* inMv2(54,:) - inMv1(41,:) .* inMv2(53,:) + inMv1(42,:) .* inMv2(52,:) - inMv1(43,:) .* inMv2(51,:) + inMv1(44,:) .* inMv2(50,:) + inMv1(45,:) .* inMv2(49,:) - inMv1(46,:) .* inMv2(48,:) + inMv1(47,:) .* inMv2(47,:) - inMv1(48,:) .* inMv2(46,:) + inMv1(49,:) .* inMv2(45,:) - inMv1(50,:) .* inMv2(44,:) - inMv1(51,:) .* inMv2(43,:) + inMv1(52,:) .* inMv2(42,:) - inMv1(53,:) .* inMv2(41,:) + inMv1(54,:) .* inMv2(40,:) - inMv1(55,:) .* inMv2(39,:) + inMv1(56,:) .* inMv2(38,:) - inMv1(57,:) .* inMv2(37,:) + inMv1(58,:) .* inMv2(36,:) - inMv1(59,:) .* inMv2(35,:) + inMv1(60,:) .* inMv2(34,:) + inMv1(61,:) .* inMv2(33,:) - inMv1(62,:) .* inMv2(32,:) + inMv1(63,:) .* inMv2(31,:) - inMv1(64,:) .* inMv2(30,:) + inMv1(65,:) .* inMv2(29,:) - inMv1(66,:) .* inMv2(28,:) + inMv1(67,:) .* inMv2(27,:) + inMv1(68,:) .* inMv2(26,:) - inMv1(69,:) .* inMv2(25,:) + inMv1(70,:) .* inMv2(24,:) - inMv1(71,:) .* inMv2(23,:) + inMv1(72,:) .* inMv2(22,:) - inMv1(73,:) .* inMv2(21,:) + inMv1(74,:) .* inMv2(20,:) - inMv1(75,:) .* inMv2(19,:) - inMv1(76,:) .* inMv2(18,:) + inMv1(77,:) .* inMv2(17,:) - inMv1(78,:) .* inMv2(16,:) + inMv1(79,:) .* inMv2(15,:) - inMv1(80,:) .* inMv2(14,:) + inMv1(81,:) .* inMv2(13,:) - inMv1(82,:) .* inMv2(12,:) - inMv1(83,:) .* inMv2(11,:) + inMv1(84,:) .* inMv2(10,:) - inMv1(85,:) .* inMv2(9,:) + inMv1(86,:) .* inMv2(8,:) - inMv1(87,:) .* inMv2(7,:) + inMv1(88,:) .* inMv2(6,:) - inMv1(89,:) .* inMv2(5,:) + inMv1(90,:) .* inMv2(4,:) - inMv1(91,:) .* inMv2(3,:) + inMv1(92,:) .* inMv2(2,:) - inMv1(93,:) .* inMv2(1,:);
end
