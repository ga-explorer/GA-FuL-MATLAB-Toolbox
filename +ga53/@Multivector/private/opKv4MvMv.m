
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = opKv4MvMv(inMv1, inMv2)
    arguments
        inMv1 (70,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(94,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(95,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(96,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(97,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(98,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(99,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(100,:) = inMv1(7,:) .* inMv2(1,:);
    outMv(101,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(102,:) = inMv1(9,:) .* inMv2(1,:);
    outMv(103,:) = inMv1(10,:) .* inMv2(1,:);
    outMv(104,:) = inMv1(11,:) .* inMv2(1,:);
    outMv(105,:) = inMv1(12,:) .* inMv2(1,:);
    outMv(106,:) = inMv1(13,:) .* inMv2(1,:);
    outMv(107,:) = inMv1(14,:) .* inMv2(1,:);
    outMv(108,:) = inMv1(15,:) .* inMv2(1,:);
    outMv(109,:) = inMv1(16,:) .* inMv2(1,:);
    outMv(110,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(111,:) = inMv1(18,:) .* inMv2(1,:);
    outMv(112,:) = inMv1(19,:) .* inMv2(1,:);
    outMv(113,:) = inMv1(20,:) .* inMv2(1,:);
    outMv(114,:) = inMv1(21,:) .* inMv2(1,:);
    outMv(115,:) = inMv1(22,:) .* inMv2(1,:);
    outMv(116,:) = inMv1(23,:) .* inMv2(1,:);
    outMv(117,:) = inMv1(24,:) .* inMv2(1,:);
    outMv(118,:) = inMv1(25,:) .* inMv2(1,:);
    outMv(119,:) = inMv1(26,:) .* inMv2(1,:);
    outMv(120,:) = inMv1(27,:) .* inMv2(1,:);
    outMv(121,:) = inMv1(28,:) .* inMv2(1,:);
    outMv(122,:) = inMv1(29,:) .* inMv2(1,:);
    outMv(123,:) = inMv1(30,:) .* inMv2(1,:);
    outMv(124,:) = inMv1(31,:) .* inMv2(1,:);
    outMv(125,:) = inMv1(32,:) .* inMv2(1,:);
    outMv(126,:) = inMv1(33,:) .* inMv2(1,:);
    outMv(127,:) = inMv1(34,:) .* inMv2(1,:);
    outMv(128,:) = inMv1(35,:) .* inMv2(1,:);
    outMv(129,:) = inMv1(36,:) .* inMv2(1,:);
    outMv(130,:) = inMv1(37,:) .* inMv2(1,:);
    outMv(131,:) = inMv1(38,:) .* inMv2(1,:);
    outMv(132,:) = inMv1(39,:) .* inMv2(1,:);
    outMv(133,:) = inMv1(40,:) .* inMv2(1,:);
    outMv(134,:) = inMv1(41,:) .* inMv2(1,:);
    outMv(135,:) = inMv1(42,:) .* inMv2(1,:);
    outMv(136,:) = inMv1(43,:) .* inMv2(1,:);
    outMv(137,:) = inMv1(44,:) .* inMv2(1,:);
    outMv(138,:) = inMv1(45,:) .* inMv2(1,:);
    outMv(139,:) = inMv1(46,:) .* inMv2(1,:);
    outMv(140,:) = inMv1(47,:) .* inMv2(1,:);
    outMv(141,:) = inMv1(48,:) .* inMv2(1,:);
    outMv(142,:) = inMv1(49,:) .* inMv2(1,:);
    outMv(143,:) = inMv1(50,:) .* inMv2(1,:);
    outMv(144,:) = inMv1(51,:) .* inMv2(1,:);
    outMv(145,:) = inMv1(52,:) .* inMv2(1,:);
    outMv(146,:) = inMv1(53,:) .* inMv2(1,:);
    outMv(147,:) = inMv1(54,:) .* inMv2(1,:);
    outMv(148,:) = inMv1(55,:) .* inMv2(1,:);
    outMv(149,:) = inMv1(56,:) .* inMv2(1,:);
    outMv(150,:) = inMv1(57,:) .* inMv2(1,:);
    outMv(151,:) = inMv1(58,:) .* inMv2(1,:);
    outMv(152,:) = inMv1(59,:) .* inMv2(1,:);
    outMv(153,:) = inMv1(60,:) .* inMv2(1,:);
    outMv(154,:) = inMv1(61,:) .* inMv2(1,:);
    outMv(155,:) = inMv1(62,:) .* inMv2(1,:);
    outMv(156,:) = inMv1(63,:) .* inMv2(1,:);
    outMv(157,:) = inMv1(64,:) .* inMv2(1,:);
    outMv(158,:) = inMv1(65,:) .* inMv2(1,:);
    outMv(159,:) = inMv1(66,:) .* inMv2(1,:);
    outMv(160,:) = inMv1(67,:) .* inMv2(1,:);
    outMv(161,:) = inMv1(68,:) .* inMv2(1,:);
    outMv(162,:) = inMv1(69,:) .* inMv2(1,:);
    outMv(163,:) = inMv1(70,:) .* inMv2(1,:);
    outMv(164,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(2,:) .* inMv2(5,:) + inMv1(3,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(5,:) .* inMv2(2,:);
    outMv(165,:) = inMv1(1,:) .* inMv2(7,:) - inMv1(6,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(3,:) + inMv1(9,:) .* inMv2(2,:);
    outMv(166,:) = inMv1(2,:) .* inMv2(7,:) - inMv1(6,:) .* inMv2(6,:) + inMv1(10,:) .* inMv2(4,:) - inMv1(11,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(2,:);
    outMv(167,:) = inMv1(3,:) .* inMv2(7,:) - inMv1(7,:) .* inMv2(6,:) + inMv1(10,:) .* inMv2(5,:) - inMv1(13,:) .* inMv2(3,:) + inMv1(14,:) .* inMv2(2,:);
    outMv(168,:) = inMv1(4,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(6,:) + inMv1(11,:) .* inMv2(5,:) - inMv1(13,:) .* inMv2(4,:) + inMv1(15,:) .* inMv2(2,:);
    outMv(169,:) = inMv1(5,:) .* inMv2(7,:) - inMv1(9,:) .* inMv2(6,:) + inMv1(12,:) .* inMv2(5,:) - inMv1(14,:) .* inMv2(4,:) + inMv1(15,:) .* inMv2(3,:);
    outMv(170,:) = inMv1(1,:) .* inMv2(8,:) - inMv1(16,:) .* inMv2(5,:) + inMv1(17,:) .* inMv2(4,:) - inMv1(18,:) .* inMv2(3,:) + inMv1(19,:) .* inMv2(2,:);
    outMv(171,:) = inMv1(2,:) .* inMv2(8,:) - inMv1(16,:) .* inMv2(6,:) + inMv1(20,:) .* inMv2(4,:) - inMv1(21,:) .* inMv2(3,:) + inMv1(22,:) .* inMv2(2,:);
    outMv(172,:) = inMv1(3,:) .* inMv2(8,:) - inMv1(17,:) .* inMv2(6,:) + inMv1(20,:) .* inMv2(5,:) - inMv1(23,:) .* inMv2(3,:) + inMv1(24,:) .* inMv2(2,:);
    outMv(173,:) = inMv1(4,:) .* inMv2(8,:) - inMv1(18,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(5,:) - inMv1(23,:) .* inMv2(4,:) + inMv1(25,:) .* inMv2(2,:);
    outMv(174,:) = inMv1(5,:) .* inMv2(8,:) - inMv1(19,:) .* inMv2(6,:) + inMv1(22,:) .* inMv2(5,:) - inMv1(24,:) .* inMv2(4,:) + inMv1(25,:) .* inMv2(3,:);
    outMv(175,:) = inMv1(6,:) .* inMv2(8,:) - inMv1(16,:) .* inMv2(7,:) + inMv1(26,:) .* inMv2(4,:) - inMv1(27,:) .* inMv2(3,:) + inMv1(28,:) .* inMv2(2,:);
    outMv(176,:) = inMv1(7,:) .* inMv2(8,:) - inMv1(17,:) .* inMv2(7,:) + inMv1(26,:) .* inMv2(5,:) - inMv1(29,:) .* inMv2(3,:) + inMv1(30,:) .* inMv2(2,:);
    outMv(177,:) = inMv1(8,:) .* inMv2(8,:) - inMv1(18,:) .* inMv2(7,:) + inMv1(27,:) .* inMv2(5,:) - inMv1(29,:) .* inMv2(4,:) + inMv1(31,:) .* inMv2(2,:);
    outMv(178,:) = inMv1(9,:) .* inMv2(8,:) - inMv1(19,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(5,:) - inMv1(30,:) .* inMv2(4,:) + inMv1(31,:) .* inMv2(3,:);
    outMv(179,:) = inMv1(10,:) .* inMv2(8,:) - inMv1(20,:) .* inMv2(7,:) + inMv1(26,:) .* inMv2(6,:) - inMv1(32,:) .* inMv2(3,:) + inMv1(33,:) .* inMv2(2,:);
    outMv(180,:) = inMv1(11,:) .* inMv2(8,:) - inMv1(21,:) .* inMv2(7,:) + inMv1(27,:) .* inMv2(6,:) - inMv1(32,:) .* inMv2(4,:) + inMv1(34,:) .* inMv2(2,:);
    outMv(181,:) = inMv1(12,:) .* inMv2(8,:) - inMv1(22,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(6,:) - inMv1(33,:) .* inMv2(4,:) + inMv1(34,:) .* inMv2(3,:);
    outMv(182,:) = inMv1(13,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(7,:) + inMv1(29,:) .* inMv2(6,:) - inMv1(32,:) .* inMv2(5,:) + inMv1(35,:) .* inMv2(2,:);
    outMv(183,:) = inMv1(14,:) .* inMv2(8,:) - inMv1(24,:) .* inMv2(7,:) + inMv1(30,:) .* inMv2(6,:) - inMv1(33,:) .* inMv2(5,:) + inMv1(35,:) .* inMv2(3,:);
    outMv(184,:) = inMv1(15,:) .* inMv2(8,:) - inMv1(25,:) .* inMv2(7,:) + inMv1(31,:) .* inMv2(6,:) - inMv1(34,:) .* inMv2(5,:) + inMv1(35,:) .* inMv2(4,:);
    outMv(185,:) = inMv1(1,:) .* inMv2(9,:) - inMv1(36,:) .* inMv2(5,:) + inMv1(37,:) .* inMv2(4,:) - inMv1(38,:) .* inMv2(3,:) + inMv1(39,:) .* inMv2(2,:);
    outMv(186,:) = inMv1(2,:) .* inMv2(9,:) - inMv1(36,:) .* inMv2(6,:) + inMv1(40,:) .* inMv2(4,:) - inMv1(41,:) .* inMv2(3,:) + inMv1(42,:) .* inMv2(2,:);
    outMv(187,:) = inMv1(3,:) .* inMv2(9,:) - inMv1(37,:) .* inMv2(6,:) + inMv1(40,:) .* inMv2(5,:) - inMv1(43,:) .* inMv2(3,:) + inMv1(44,:) .* inMv2(2,:);
    outMv(188,:) = inMv1(4,:) .* inMv2(9,:) - inMv1(38,:) .* inMv2(6,:) + inMv1(41,:) .* inMv2(5,:) - inMv1(43,:) .* inMv2(4,:) + inMv1(45,:) .* inMv2(2,:);
    outMv(189,:) = inMv1(5,:) .* inMv2(9,:) - inMv1(39,:) .* inMv2(6,:) + inMv1(42,:) .* inMv2(5,:) - inMv1(44,:) .* inMv2(4,:) + inMv1(45,:) .* inMv2(3,:);
    outMv(190,:) = inMv1(6,:) .* inMv2(9,:) - inMv1(36,:) .* inMv2(7,:) + inMv1(46,:) .* inMv2(4,:) - inMv1(47,:) .* inMv2(3,:) + inMv1(48,:) .* inMv2(2,:);
    outMv(191,:) = inMv1(7,:) .* inMv2(9,:) - inMv1(37,:) .* inMv2(7,:) + inMv1(46,:) .* inMv2(5,:) - inMv1(49,:) .* inMv2(3,:) + inMv1(50,:) .* inMv2(2,:);
    outMv(192,:) = inMv1(8,:) .* inMv2(9,:) - inMv1(38,:) .* inMv2(7,:) + inMv1(47,:) .* inMv2(5,:) - inMv1(49,:) .* inMv2(4,:) + inMv1(51,:) .* inMv2(2,:);
    outMv(193,:) = inMv1(9,:) .* inMv2(9,:) - inMv1(39,:) .* inMv2(7,:) + inMv1(48,:) .* inMv2(5,:) - inMv1(50,:) .* inMv2(4,:) + inMv1(51,:) .* inMv2(3,:);
    outMv(194,:) = inMv1(10,:) .* inMv2(9,:) - inMv1(40,:) .* inMv2(7,:) + inMv1(46,:) .* inMv2(6,:) - inMv1(52,:) .* inMv2(3,:) + inMv1(53,:) .* inMv2(2,:);
    outMv(195,:) = inMv1(11,:) .* inMv2(9,:) - inMv1(41,:) .* inMv2(7,:) + inMv1(47,:) .* inMv2(6,:) - inMv1(52,:) .* inMv2(4,:) + inMv1(54,:) .* inMv2(2,:);
    outMv(196,:) = inMv1(12,:) .* inMv2(9,:) - inMv1(42,:) .* inMv2(7,:) + inMv1(48,:) .* inMv2(6,:) - inMv1(53,:) .* inMv2(4,:) + inMv1(54,:) .* inMv2(3,:);
    outMv(197,:) = inMv1(13,:) .* inMv2(9,:) - inMv1(43,:) .* inMv2(7,:) + inMv1(49,:) .* inMv2(6,:) - inMv1(52,:) .* inMv2(5,:) + inMv1(55,:) .* inMv2(2,:);
    outMv(198,:) = inMv1(14,:) .* inMv2(9,:) - inMv1(44,:) .* inMv2(7,:) + inMv1(50,:) .* inMv2(6,:) - inMv1(53,:) .* inMv2(5,:) + inMv1(55,:) .* inMv2(3,:);
    outMv(199,:) = inMv1(15,:) .* inMv2(9,:) - inMv1(45,:) .* inMv2(7,:) + inMv1(51,:) .* inMv2(6,:) - inMv1(54,:) .* inMv2(5,:) + inMv1(55,:) .* inMv2(4,:);
    outMv(200,:) = inMv1(16,:) .* inMv2(9,:) - inMv1(36,:) .* inMv2(8,:) + inMv1(56,:) .* inMv2(4,:) - inMv1(57,:) .* inMv2(3,:) + inMv1(58,:) .* inMv2(2,:);
    outMv(201,:) = inMv1(17,:) .* inMv2(9,:) - inMv1(37,:) .* inMv2(8,:) + inMv1(56,:) .* inMv2(5,:) - inMv1(59,:) .* inMv2(3,:) + inMv1(60,:) .* inMv2(2,:);
    outMv(202,:) = inMv1(18,:) .* inMv2(9,:) - inMv1(38,:) .* inMv2(8,:) + inMv1(57,:) .* inMv2(5,:) - inMv1(59,:) .* inMv2(4,:) + inMv1(61,:) .* inMv2(2,:);
    outMv(203,:) = inMv1(19,:) .* inMv2(9,:) - inMv1(39,:) .* inMv2(8,:) + inMv1(58,:) .* inMv2(5,:) - inMv1(60,:) .* inMv2(4,:) + inMv1(61,:) .* inMv2(3,:);
    outMv(204,:) = inMv1(20,:) .* inMv2(9,:) - inMv1(40,:) .* inMv2(8,:) + inMv1(56,:) .* inMv2(6,:) - inMv1(62,:) .* inMv2(3,:) + inMv1(63,:) .* inMv2(2,:);
    outMv(205,:) = inMv1(21,:) .* inMv2(9,:) - inMv1(41,:) .* inMv2(8,:) + inMv1(57,:) .* inMv2(6,:) - inMv1(62,:) .* inMv2(4,:) + inMv1(64,:) .* inMv2(2,:);
    outMv(206,:) = inMv1(22,:) .* inMv2(9,:) - inMv1(42,:) .* inMv2(8,:) + inMv1(58,:) .* inMv2(6,:) - inMv1(63,:) .* inMv2(4,:) + inMv1(64,:) .* inMv2(3,:);
    outMv(207,:) = inMv1(23,:) .* inMv2(9,:) - inMv1(43,:) .* inMv2(8,:) + inMv1(59,:) .* inMv2(6,:) - inMv1(62,:) .* inMv2(5,:) + inMv1(65,:) .* inMv2(2,:);
    outMv(208,:) = inMv1(24,:) .* inMv2(9,:) - inMv1(44,:) .* inMv2(8,:) + inMv1(60,:) .* inMv2(6,:) - inMv1(63,:) .* inMv2(5,:) + inMv1(65,:) .* inMv2(3,:);
    outMv(209,:) = inMv1(25,:) .* inMv2(9,:) - inMv1(45,:) .* inMv2(8,:) + inMv1(61,:) .* inMv2(6,:) - inMv1(64,:) .* inMv2(5,:) + inMv1(65,:) .* inMv2(4,:);
    outMv(210,:) = inMv1(26,:) .* inMv2(9,:) - inMv1(46,:) .* inMv2(8,:) + inMv1(56,:) .* inMv2(7,:) - inMv1(66,:) .* inMv2(3,:) + inMv1(67,:) .* inMv2(2,:);
    outMv(211,:) = inMv1(27,:) .* inMv2(9,:) - inMv1(47,:) .* inMv2(8,:) + inMv1(57,:) .* inMv2(7,:) - inMv1(66,:) .* inMv2(4,:) + inMv1(68,:) .* inMv2(2,:);
    outMv(212,:) = inMv1(28,:) .* inMv2(9,:) - inMv1(48,:) .* inMv2(8,:) + inMv1(58,:) .* inMv2(7,:) - inMv1(67,:) .* inMv2(4,:) + inMv1(68,:) .* inMv2(3,:);
    outMv(213,:) = inMv1(29,:) .* inMv2(9,:) - inMv1(49,:) .* inMv2(8,:) + inMv1(59,:) .* inMv2(7,:) - inMv1(66,:) .* inMv2(5,:) + inMv1(69,:) .* inMv2(2,:);
    outMv(214,:) = inMv1(30,:) .* inMv2(9,:) - inMv1(50,:) .* inMv2(8,:) + inMv1(60,:) .* inMv2(7,:) - inMv1(67,:) .* inMv2(5,:) + inMv1(69,:) .* inMv2(3,:);
    outMv(215,:) = inMv1(31,:) .* inMv2(9,:) - inMv1(51,:) .* inMv2(8,:) + inMv1(61,:) .* inMv2(7,:) - inMv1(68,:) .* inMv2(5,:) + inMv1(69,:) .* inMv2(4,:);
    outMv(216,:) = inMv1(32,:) .* inMv2(9,:) - inMv1(52,:) .* inMv2(8,:) + inMv1(62,:) .* inMv2(7,:) - inMv1(66,:) .* inMv2(6,:) + inMv1(70,:) .* inMv2(2,:);
    outMv(217,:) = inMv1(33,:) .* inMv2(9,:) - inMv1(53,:) .* inMv2(8,:) + inMv1(63,:) .* inMv2(7,:) - inMv1(67,:) .* inMv2(6,:) + inMv1(70,:) .* inMv2(3,:);
    outMv(218,:) = inMv1(34,:) .* inMv2(9,:) - inMv1(54,:) .* inMv2(8,:) + inMv1(64,:) .* inMv2(7,:) - inMv1(68,:) .* inMv2(6,:) + inMv1(70,:) .* inMv2(4,:);
    outMv(219,:) = inMv1(35,:) .* inMv2(9,:) - inMv1(55,:) .* inMv2(8,:) + inMv1(65,:) .* inMv2(7,:) - inMv1(69,:) .* inMv2(6,:) + inMv1(70,:) .* inMv2(5,:);
    outMv(220,:) = inMv1(1,:) .* inMv2(24,:) - inMv1(2,:) .* inMv2(23,:) + inMv1(3,:) .* inMv2(22,:) - inMv1(4,:) .* inMv2(21,:) + inMv1(5,:) .* inMv2(20,:) + inMv1(6,:) .* inMv2(19,:) - inMv1(7,:) .* inMv2(18,:) + inMv1(8,:) .* inMv2(17,:) - inMv1(9,:) .* inMv2(16,:) + inMv1(10,:) .* inMv2(15,:) - inMv1(11,:) .* inMv2(14,:) + inMv1(12,:) .* inMv2(13,:) + inMv1(13,:) .* inMv2(12,:) - inMv1(14,:) .* inMv2(11,:) + inMv1(15,:) .* inMv2(10,:);
    outMv(221,:) = inMv1(1,:) .* inMv2(29,:) - inMv1(2,:) .* inMv2(28,:) + inMv1(3,:) .* inMv2(27,:) - inMv1(4,:) .* inMv2(26,:) + inMv1(5,:) .* inMv2(25,:) + inMv1(16,:) .* inMv2(19,:) - inMv1(17,:) .* inMv2(18,:) + inMv1(18,:) .* inMv2(17,:) - inMv1(19,:) .* inMv2(16,:) + inMv1(20,:) .* inMv2(15,:) - inMv1(21,:) .* inMv2(14,:) + inMv1(22,:) .* inMv2(13,:) + inMv1(23,:) .* inMv2(12,:) - inMv1(24,:) .* inMv2(11,:) + inMv1(25,:) .* inMv2(10,:);
    outMv(222,:) = inMv1(1,:) .* inMv2(30,:) - inMv1(6,:) .* inMv2(28,:) + inMv1(7,:) .* inMv2(27,:) - inMv1(8,:) .* inMv2(26,:) + inMv1(9,:) .* inMv2(25,:) + inMv1(16,:) .* inMv2(23,:) - inMv1(17,:) .* inMv2(22,:) + inMv1(18,:) .* inMv2(21,:) - inMv1(19,:) .* inMv2(20,:) + inMv1(26,:) .* inMv2(15,:) - inMv1(27,:) .* inMv2(14,:) + inMv1(28,:) .* inMv2(13,:) + inMv1(29,:) .* inMv2(12,:) - inMv1(30,:) .* inMv2(11,:) + inMv1(31,:) .* inMv2(10,:);
    outMv(223,:) = inMv1(2,:) .* inMv2(30,:) - inMv1(6,:) .* inMv2(29,:) + inMv1(10,:) .* inMv2(27,:) - inMv1(11,:) .* inMv2(26,:) + inMv1(12,:) .* inMv2(25,:) + inMv1(16,:) .* inMv2(24,:) - inMv1(20,:) .* inMv2(22,:) + inMv1(21,:) .* inMv2(21,:) - inMv1(22,:) .* inMv2(20,:) + inMv1(26,:) .* inMv2(18,:) - inMv1(27,:) .* inMv2(17,:) + inMv1(28,:) .* inMv2(16,:) + inMv1(32,:) .* inMv2(12,:) - inMv1(33,:) .* inMv2(11,:) + inMv1(34,:) .* inMv2(10,:);
    outMv(224,:) = inMv1(3,:) .* inMv2(30,:) - inMv1(7,:) .* inMv2(29,:) + inMv1(10,:) .* inMv2(28,:) - inMv1(13,:) .* inMv2(26,:) + inMv1(14,:) .* inMv2(25,:) + inMv1(17,:) .* inMv2(24,:) - inMv1(20,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(21,:) - inMv1(24,:) .* inMv2(20,:) + inMv1(26,:) .* inMv2(19,:) - inMv1(29,:) .* inMv2(17,:) + inMv1(30,:) .* inMv2(16,:) + inMv1(32,:) .* inMv2(14,:) - inMv1(33,:) .* inMv2(13,:) + inMv1(35,:) .* inMv2(10,:);
    outMv(225,:) = inMv1(4,:) .* inMv2(30,:) - inMv1(8,:) .* inMv2(29,:) + inMv1(11,:) .* inMv2(28,:) - inMv1(13,:) .* inMv2(27,:) + inMv1(15,:) .* inMv2(25,:) + inMv1(18,:) .* inMv2(24,:) - inMv1(21,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(22,:) - inMv1(25,:) .* inMv2(20,:) + inMv1(27,:) .* inMv2(19,:) - inMv1(29,:) .* inMv2(18,:) + inMv1(31,:) .* inMv2(16,:) + inMv1(32,:) .* inMv2(15,:) - inMv1(34,:) .* inMv2(13,:) + inMv1(35,:) .* inMv2(11,:);
    outMv(226,:) = inMv1(5,:) .* inMv2(30,:) - inMv1(9,:) .* inMv2(29,:) + inMv1(12,:) .* inMv2(28,:) - inMv1(14,:) .* inMv2(27,:) + inMv1(15,:) .* inMv2(26,:) + inMv1(19,:) .* inMv2(24,:) - inMv1(22,:) .* inMv2(23,:) + inMv1(24,:) .* inMv2(22,:) - inMv1(25,:) .* inMv2(21,:) + inMv1(28,:) .* inMv2(19,:) - inMv1(30,:) .* inMv2(18,:) + inMv1(31,:) .* inMv2(17,:) + inMv1(33,:) .* inMv2(15,:) - inMv1(34,:) .* inMv2(14,:) + inMv1(35,:) .* inMv2(12,:);
    outMv(227,:) = inMv1(1,:) .* inMv2(35,:) - inMv1(2,:) .* inMv2(34,:) + inMv1(3,:) .* inMv2(33,:) - inMv1(4,:) .* inMv2(32,:) + inMv1(5,:) .* inMv2(31,:) + inMv1(36,:) .* inMv2(19,:) - inMv1(37,:) .* inMv2(18,:) + inMv1(38,:) .* inMv2(17,:) - inMv1(39,:) .* inMv2(16,:) + inMv1(40,:) .* inMv2(15,:) - inMv1(41,:) .* inMv2(14,:) + inMv1(42,:) .* inMv2(13,:) + inMv1(43,:) .* inMv2(12,:) - inMv1(44,:) .* inMv2(11,:) + inMv1(45,:) .* inMv2(10,:);
    outMv(228,:) = inMv1(1,:) .* inMv2(36,:) - inMv1(6,:) .* inMv2(34,:) + inMv1(7,:) .* inMv2(33,:) - inMv1(8,:) .* inMv2(32,:) + inMv1(9,:) .* inMv2(31,:) + inMv1(36,:) .* inMv2(23,:) - inMv1(37,:) .* inMv2(22,:) + inMv1(38,:) .* inMv2(21,:) - inMv1(39,:) .* inMv2(20,:) + inMv1(46,:) .* inMv2(15,:) - inMv1(47,:) .* inMv2(14,:) + inMv1(48,:) .* inMv2(13,:) + inMv1(49,:) .* inMv2(12,:) - inMv1(50,:) .* inMv2(11,:) + inMv1(51,:) .* inMv2(10,:);
    outMv(229,:) = inMv1(2,:) .* inMv2(36,:) - inMv1(6,:) .* inMv2(35,:) + inMv1(10,:) .* inMv2(33,:) - inMv1(11,:) .* inMv2(32,:) + inMv1(12,:) .* inMv2(31,:) + inMv1(36,:) .* inMv2(24,:) - inMv1(40,:) .* inMv2(22,:) + inMv1(41,:) .* inMv2(21,:) - inMv1(42,:) .* inMv2(20,:) + inMv1(46,:) .* inMv2(18,:) - inMv1(47,:) .* inMv2(17,:) + inMv1(48,:) .* inMv2(16,:) + inMv1(52,:) .* inMv2(12,:) - inMv1(53,:) .* inMv2(11,:) + inMv1(54,:) .* inMv2(10,:);
    outMv(230,:) = inMv1(3,:) .* inMv2(36,:) - inMv1(7,:) .* inMv2(35,:) + inMv1(10,:) .* inMv2(34,:) - inMv1(13,:) .* inMv2(32,:) + inMv1(14,:) .* inMv2(31,:) + inMv1(37,:) .* inMv2(24,:) - inMv1(40,:) .* inMv2(23,:) + inMv1(43,:) .* inMv2(21,:) - inMv1(44,:) .* inMv2(20,:) + inMv1(46,:) .* inMv2(19,:) - inMv1(49,:) .* inMv2(17,:) + inMv1(50,:) .* inMv2(16,:) + inMv1(52,:) .* inMv2(14,:) - inMv1(53,:) .* inMv2(13,:) + inMv1(55,:) .* inMv2(10,:);
    outMv(231,:) = inMv1(4,:) .* inMv2(36,:) - inMv1(8,:) .* inMv2(35,:) + inMv1(11,:) .* inMv2(34,:) - inMv1(13,:) .* inMv2(33,:) + inMv1(15,:) .* inMv2(31,:) + inMv1(38,:) .* inMv2(24,:) - inMv1(41,:) .* inMv2(23,:) + inMv1(43,:) .* inMv2(22,:) - inMv1(45,:) .* inMv2(20,:) + inMv1(47,:) .* inMv2(19,:) - inMv1(49,:) .* inMv2(18,:) + inMv1(51,:) .* inMv2(16,:) + inMv1(52,:) .* inMv2(15,:) - inMv1(54,:) .* inMv2(13,:) + inMv1(55,:) .* inMv2(11,:);
    outMv(232,:) = inMv1(5,:) .* inMv2(36,:) - inMv1(9,:) .* inMv2(35,:) + inMv1(12,:) .* inMv2(34,:) - inMv1(14,:) .* inMv2(33,:) + inMv1(15,:) .* inMv2(32,:) + inMv1(39,:) .* inMv2(24,:) - inMv1(42,:) .* inMv2(23,:) + inMv1(44,:) .* inMv2(22,:) - inMv1(45,:) .* inMv2(21,:) + inMv1(48,:) .* inMv2(19,:) - inMv1(50,:) .* inMv2(18,:) + inMv1(51,:) .* inMv2(17,:) + inMv1(53,:) .* inMv2(15,:) - inMv1(54,:) .* inMv2(14,:) + inMv1(55,:) .* inMv2(12,:);
    outMv(233,:) = inMv1(1,:) .* inMv2(37,:) - inMv1(16,:) .* inMv2(34,:) + inMv1(17,:) .* inMv2(33,:) - inMv1(18,:) .* inMv2(32,:) + inMv1(19,:) .* inMv2(31,:) + inMv1(36,:) .* inMv2(28,:) - inMv1(37,:) .* inMv2(27,:) + inMv1(38,:) .* inMv2(26,:) - inMv1(39,:) .* inMv2(25,:) + inMv1(56,:) .* inMv2(15,:) - inMv1(57,:) .* inMv2(14,:) + inMv1(58,:) .* inMv2(13,:) + inMv1(59,:) .* inMv2(12,:) - inMv1(60,:) .* inMv2(11,:) + inMv1(61,:) .* inMv2(10,:);
    outMv(234,:) = inMv1(2,:) .* inMv2(37,:) - inMv1(16,:) .* inMv2(35,:) + inMv1(20,:) .* inMv2(33,:) - inMv1(21,:) .* inMv2(32,:) + inMv1(22,:) .* inMv2(31,:) + inMv1(36,:) .* inMv2(29,:) - inMv1(40,:) .* inMv2(27,:) + inMv1(41,:) .* inMv2(26,:) - inMv1(42,:) .* inMv2(25,:) + inMv1(56,:) .* inMv2(18,:) - inMv1(57,:) .* inMv2(17,:) + inMv1(58,:) .* inMv2(16,:) + inMv1(62,:) .* inMv2(12,:) - inMv1(63,:) .* inMv2(11,:) + inMv1(64,:) .* inMv2(10,:);
    outMv(235,:) = inMv1(3,:) .* inMv2(37,:) - inMv1(17,:) .* inMv2(35,:) + inMv1(20,:) .* inMv2(34,:) - inMv1(23,:) .* inMv2(32,:) + inMv1(24,:) .* inMv2(31,:) + inMv1(37,:) .* inMv2(29,:) - inMv1(40,:) .* inMv2(28,:) + inMv1(43,:) .* inMv2(26,:) - inMv1(44,:) .* inMv2(25,:) + inMv1(56,:) .* inMv2(19,:) - inMv1(59,:) .* inMv2(17,:) + inMv1(60,:) .* inMv2(16,:) + inMv1(62,:) .* inMv2(14,:) - inMv1(63,:) .* inMv2(13,:) + inMv1(65,:) .* inMv2(10,:);
    outMv(236,:) = inMv1(4,:) .* inMv2(37,:) - inMv1(18,:) .* inMv2(35,:) + inMv1(21,:) .* inMv2(34,:) - inMv1(23,:) .* inMv2(33,:) + inMv1(25,:) .* inMv2(31,:) + inMv1(38,:) .* inMv2(29,:) - inMv1(41,:) .* inMv2(28,:) + inMv1(43,:) .* inMv2(27,:) - inMv1(45,:) .* inMv2(25,:) + inMv1(57,:) .* inMv2(19,:) - inMv1(59,:) .* inMv2(18,:) + inMv1(61,:) .* inMv2(16,:) + inMv1(62,:) .* inMv2(15,:) - inMv1(64,:) .* inMv2(13,:) + inMv1(65,:) .* inMv2(11,:);
    outMv(237,:) = inMv1(5,:) .* inMv2(37,:) - inMv1(19,:) .* inMv2(35,:) + inMv1(22,:) .* inMv2(34,:) - inMv1(24,:) .* inMv2(33,:) + inMv1(25,:) .* inMv2(32,:) + inMv1(39,:) .* inMv2(29,:) - inMv1(42,:) .* inMv2(28,:) + inMv1(44,:) .* inMv2(27,:) - inMv1(45,:) .* inMv2(26,:) + inMv1(58,:) .* inMv2(19,:) - inMv1(60,:) .* inMv2(18,:) + inMv1(61,:) .* inMv2(17,:) + inMv1(63,:) .* inMv2(15,:) - inMv1(64,:) .* inMv2(14,:) + inMv1(65,:) .* inMv2(12,:);
    outMv(238,:) = inMv1(6,:) .* inMv2(37,:) - inMv1(16,:) .* inMv2(36,:) + inMv1(26,:) .* inMv2(33,:) - inMv1(27,:) .* inMv2(32,:) + inMv1(28,:) .* inMv2(31,:) + inMv1(36,:) .* inMv2(30,:) - inMv1(46,:) .* inMv2(27,:) + inMv1(47,:) .* inMv2(26,:) - inMv1(48,:) .* inMv2(25,:) + inMv1(56,:) .* inMv2(22,:) - inMv1(57,:) .* inMv2(21,:) + inMv1(58,:) .* inMv2(20,:) + inMv1(66,:) .* inMv2(12,:) - inMv1(67,:) .* inMv2(11,:) + inMv1(68,:) .* inMv2(10,:);
    outMv(239,:) = inMv1(7,:) .* inMv2(37,:) - inMv1(17,:) .* inMv2(36,:) + inMv1(26,:) .* inMv2(34,:) - inMv1(29,:) .* inMv2(32,:) + inMv1(30,:) .* inMv2(31,:) + inMv1(37,:) .* inMv2(30,:) - inMv1(46,:) .* inMv2(28,:) + inMv1(49,:) .* inMv2(26,:) - inMv1(50,:) .* inMv2(25,:) + inMv1(56,:) .* inMv2(23,:) - inMv1(59,:) .* inMv2(21,:) + inMv1(60,:) .* inMv2(20,:) + inMv1(66,:) .* inMv2(14,:) - inMv1(67,:) .* inMv2(13,:) + inMv1(69,:) .* inMv2(10,:);
    outMv(240,:) = inMv1(8,:) .* inMv2(37,:) - inMv1(18,:) .* inMv2(36,:) + inMv1(27,:) .* inMv2(34,:) - inMv1(29,:) .* inMv2(33,:) + inMv1(31,:) .* inMv2(31,:) + inMv1(38,:) .* inMv2(30,:) - inMv1(47,:) .* inMv2(28,:) + inMv1(49,:) .* inMv2(27,:) - inMv1(51,:) .* inMv2(25,:) + inMv1(57,:) .* inMv2(23,:) - inMv1(59,:) .* inMv2(22,:) + inMv1(61,:) .* inMv2(20,:) + inMv1(66,:) .* inMv2(15,:) - inMv1(68,:) .* inMv2(13,:) + inMv1(69,:) .* inMv2(11,:);
    outMv(241,:) = inMv1(9,:) .* inMv2(37,:) - inMv1(19,:) .* inMv2(36,:) + inMv1(28,:) .* inMv2(34,:) - inMv1(30,:) .* inMv2(33,:) + inMv1(31,:) .* inMv2(32,:) + inMv1(39,:) .* inMv2(30,:) - inMv1(48,:) .* inMv2(28,:) + inMv1(50,:) .* inMv2(27,:) - inMv1(51,:) .* inMv2(26,:) + inMv1(58,:) .* inMv2(23,:) - inMv1(60,:) .* inMv2(22,:) + inMv1(61,:) .* inMv2(21,:) + inMv1(67,:) .* inMv2(15,:) - inMv1(68,:) .* inMv2(14,:) + inMv1(69,:) .* inMv2(12,:);
    outMv(242,:) = inMv1(10,:) .* inMv2(37,:) - inMv1(20,:) .* inMv2(36,:) + inMv1(26,:) .* inMv2(35,:) - inMv1(32,:) .* inMv2(32,:) + inMv1(33,:) .* inMv2(31,:) + inMv1(40,:) .* inMv2(30,:) - inMv1(46,:) .* inMv2(29,:) + inMv1(52,:) .* inMv2(26,:) - inMv1(53,:) .* inMv2(25,:) + inMv1(56,:) .* inMv2(24,:) - inMv1(62,:) .* inMv2(21,:) + inMv1(63,:) .* inMv2(20,:) + inMv1(66,:) .* inMv2(17,:) - inMv1(67,:) .* inMv2(16,:) + inMv1(70,:) .* inMv2(10,:);
    outMv(243,:) = inMv1(11,:) .* inMv2(37,:) - inMv1(21,:) .* inMv2(36,:) + inMv1(27,:) .* inMv2(35,:) - inMv1(32,:) .* inMv2(33,:) + inMv1(34,:) .* inMv2(31,:) + inMv1(41,:) .* inMv2(30,:) - inMv1(47,:) .* inMv2(29,:) + inMv1(52,:) .* inMv2(27,:) - inMv1(54,:) .* inMv2(25,:) + inMv1(57,:) .* inMv2(24,:) - inMv1(62,:) .* inMv2(22,:) + inMv1(64,:) .* inMv2(20,:) + inMv1(66,:) .* inMv2(18,:) - inMv1(68,:) .* inMv2(16,:) + inMv1(70,:) .* inMv2(11,:);
    outMv(244,:) = inMv1(12,:) .* inMv2(37,:) - inMv1(22,:) .* inMv2(36,:) + inMv1(28,:) .* inMv2(35,:) - inMv1(33,:) .* inMv2(33,:) + inMv1(34,:) .* inMv2(32,:) + inMv1(42,:) .* inMv2(30,:) - inMv1(48,:) .* inMv2(29,:) + inMv1(53,:) .* inMv2(27,:) - inMv1(54,:) .* inMv2(26,:) + inMv1(58,:) .* inMv2(24,:) - inMv1(63,:) .* inMv2(22,:) + inMv1(64,:) .* inMv2(21,:) + inMv1(67,:) .* inMv2(18,:) - inMv1(68,:) .* inMv2(17,:) + inMv1(70,:) .* inMv2(12,:);
    outMv(245,:) = inMv1(13,:) .* inMv2(37,:) - inMv1(23,:) .* inMv2(36,:) + inMv1(29,:) .* inMv2(35,:) - inMv1(32,:) .* inMv2(34,:) + inMv1(35,:) .* inMv2(31,:) + inMv1(43,:) .* inMv2(30,:) - inMv1(49,:) .* inMv2(29,:) + inMv1(52,:) .* inMv2(28,:) - inMv1(55,:) .* inMv2(25,:) + inMv1(59,:) .* inMv2(24,:) - inMv1(62,:) .* inMv2(23,:) + inMv1(65,:) .* inMv2(20,:) + inMv1(66,:) .* inMv2(19,:) - inMv1(69,:) .* inMv2(16,:) + inMv1(70,:) .* inMv2(13,:);
    outMv(246,:) = inMv1(14,:) .* inMv2(37,:) - inMv1(24,:) .* inMv2(36,:) + inMv1(30,:) .* inMv2(35,:) - inMv1(33,:) .* inMv2(34,:) + inMv1(35,:) .* inMv2(32,:) + inMv1(44,:) .* inMv2(30,:) - inMv1(50,:) .* inMv2(29,:) + inMv1(53,:) .* inMv2(28,:) - inMv1(55,:) .* inMv2(26,:) + inMv1(60,:) .* inMv2(24,:) - inMv1(63,:) .* inMv2(23,:) + inMv1(65,:) .* inMv2(21,:) + inMv1(67,:) .* inMv2(19,:) - inMv1(69,:) .* inMv2(17,:) + inMv1(70,:) .* inMv2(14,:);
    outMv(247,:) = inMv1(15,:) .* inMv2(37,:) - inMv1(25,:) .* inMv2(36,:) + inMv1(31,:) .* inMv2(35,:) - inMv1(34,:) .* inMv2(34,:) + inMv1(35,:) .* inMv2(33,:) + inMv1(45,:) .* inMv2(30,:) - inMv1(51,:) .* inMv2(29,:) + inMv1(54,:) .* inMv2(28,:) - inMv1(55,:) .* inMv2(27,:) + inMv1(61,:) .* inMv2(24,:) - inMv1(64,:) .* inMv2(23,:) + inMv1(65,:) .* inMv2(22,:) + inMv1(68,:) .* inMv2(19,:) - inMv1(69,:) .* inMv2(18,:) + inMv1(70,:) .* inMv2(15,:);
    outMv(248,:) = inMv1(1,:) .* inMv2(72,:) - inMv1(2,:) .* inMv2(71,:) + inMv1(3,:) .* inMv2(70,:) - inMv1(4,:) .* inMv2(69,:) + inMv1(5,:) .* inMv2(68,:) + inMv1(6,:) .* inMv2(67,:) - inMv1(7,:) .* inMv2(66,:) + inMv1(8,:) .* inMv2(65,:) - inMv1(9,:) .* inMv2(64,:) + inMv1(10,:) .* inMv2(63,:) - inMv1(11,:) .* inMv2(62,:) + inMv1(12,:) .* inMv2(61,:) + inMv1(13,:) .* inMv2(60,:) - inMv1(14,:) .* inMv2(59,:) + inMv1(15,:) .* inMv2(58,:) - inMv1(16,:) .* inMv2(57,:) + inMv1(17,:) .* inMv2(56,:) - inMv1(18,:) .* inMv2(55,:) + inMv1(19,:) .* inMv2(54,:) - inMv1(20,:) .* inMv2(53,:) + inMv1(21,:) .* inMv2(52,:) - inMv1(22,:) .* inMv2(51,:) - inMv1(23,:) .* inMv2(50,:) + inMv1(24,:) .* inMv2(49,:) - inMv1(25,:) .* inMv2(48,:) + inMv1(26,:) .* inMv2(47,:) - inMv1(27,:) .* inMv2(46,:) + inMv1(28,:) .* inMv2(45,:) + inMv1(29,:) .* inMv2(44,:) - inMv1(30,:) .* inMv2(43,:) + inMv1(31,:) .* inMv2(42,:) - inMv1(32,:) .* inMv2(41,:) + inMv1(33,:) .* inMv2(40,:) - inMv1(34,:) .* inMv2(39,:) + inMv1(35,:) .* inMv2(38,:);
    outMv(249,:) = inMv1(1,:) .* inMv2(87,:) - inMv1(2,:) .* inMv2(86,:) + inMv1(3,:) .* inMv2(85,:) - inMv1(4,:) .* inMv2(84,:) + inMv1(5,:) .* inMv2(83,:) + inMv1(6,:) .* inMv2(82,:) - inMv1(7,:) .* inMv2(81,:) + inMv1(8,:) .* inMv2(80,:) - inMv1(9,:) .* inMv2(79,:) + inMv1(10,:) .* inMv2(78,:) - inMv1(11,:) .* inMv2(77,:) + inMv1(12,:) .* inMv2(76,:) + inMv1(13,:) .* inMv2(75,:) - inMv1(14,:) .* inMv2(74,:) + inMv1(15,:) .* inMv2(73,:) - inMv1(36,:) .* inMv2(57,:) + inMv1(37,:) .* inMv2(56,:) - inMv1(38,:) .* inMv2(55,:) + inMv1(39,:) .* inMv2(54,:) - inMv1(40,:) .* inMv2(53,:) + inMv1(41,:) .* inMv2(52,:) - inMv1(42,:) .* inMv2(51,:) - inMv1(43,:) .* inMv2(50,:) + inMv1(44,:) .* inMv2(49,:) - inMv1(45,:) .* inMv2(48,:) + inMv1(46,:) .* inMv2(47,:) - inMv1(47,:) .* inMv2(46,:) + inMv1(48,:) .* inMv2(45,:) + inMv1(49,:) .* inMv2(44,:) - inMv1(50,:) .* inMv2(43,:) + inMv1(51,:) .* inMv2(42,:) - inMv1(52,:) .* inMv2(41,:) + inMv1(53,:) .* inMv2(40,:) - inMv1(54,:) .* inMv2(39,:) + inMv1(55,:) .* inMv2(38,:);
    outMv(250,:) = inMv1(1,:) .* inMv2(92,:) - inMv1(2,:) .* inMv2(91,:) + inMv1(3,:) .* inMv2(90,:) - inMv1(4,:) .* inMv2(89,:) + inMv1(5,:) .* inMv2(88,:) + inMv1(16,:) .* inMv2(82,:) - inMv1(17,:) .* inMv2(81,:) + inMv1(18,:) .* inMv2(80,:) - inMv1(19,:) .* inMv2(79,:) + inMv1(20,:) .* inMv2(78,:) - inMv1(21,:) .* inMv2(77,:) + inMv1(22,:) .* inMv2(76,:) + inMv1(23,:) .* inMv2(75,:) - inMv1(24,:) .* inMv2(74,:) + inMv1(25,:) .* inMv2(73,:) - inMv1(36,:) .* inMv2(67,:) + inMv1(37,:) .* inMv2(66,:) - inMv1(38,:) .* inMv2(65,:) + inMv1(39,:) .* inMv2(64,:) - inMv1(40,:) .* inMv2(63,:) + inMv1(41,:) .* inMv2(62,:) - inMv1(42,:) .* inMv2(61,:) - inMv1(43,:) .* inMv2(60,:) + inMv1(44,:) .* inMv2(59,:) - inMv1(45,:) .* inMv2(58,:) + inMv1(56,:) .* inMv2(47,:) - inMv1(57,:) .* inMv2(46,:) + inMv1(58,:) .* inMv2(45,:) + inMv1(59,:) .* inMv2(44,:) - inMv1(60,:) .* inMv2(43,:) + inMv1(61,:) .* inMv2(42,:) - inMv1(62,:) .* inMv2(41,:) + inMv1(63,:) .* inMv2(40,:) - inMv1(64,:) .* inMv2(39,:) + inMv1(65,:) .* inMv2(38,:);
    outMv(251,:) = inMv1(1,:) .* inMv2(93,:) - inMv1(6,:) .* inMv2(91,:) + inMv1(7,:) .* inMv2(90,:) - inMv1(8,:) .* inMv2(89,:) + inMv1(9,:) .* inMv2(88,:) + inMv1(16,:) .* inMv2(86,:) - inMv1(17,:) .* inMv2(85,:) + inMv1(18,:) .* inMv2(84,:) - inMv1(19,:) .* inMv2(83,:) + inMv1(26,:) .* inMv2(78,:) - inMv1(27,:) .* inMv2(77,:) + inMv1(28,:) .* inMv2(76,:) + inMv1(29,:) .* inMv2(75,:) - inMv1(30,:) .* inMv2(74,:) + inMv1(31,:) .* inMv2(73,:) - inMv1(36,:) .* inMv2(71,:) + inMv1(37,:) .* inMv2(70,:) - inMv1(38,:) .* inMv2(69,:) + inMv1(39,:) .* inMv2(68,:) - inMv1(46,:) .* inMv2(63,:) + inMv1(47,:) .* inMv2(62,:) - inMv1(48,:) .* inMv2(61,:) - inMv1(49,:) .* inMv2(60,:) + inMv1(50,:) .* inMv2(59,:) - inMv1(51,:) .* inMv2(58,:) + inMv1(56,:) .* inMv2(53,:) - inMv1(57,:) .* inMv2(52,:) + inMv1(58,:) .* inMv2(51,:) + inMv1(59,:) .* inMv2(50,:) - inMv1(60,:) .* inMv2(49,:) + inMv1(61,:) .* inMv2(48,:) - inMv1(66,:) .* inMv2(41,:) + inMv1(67,:) .* inMv2(40,:) - inMv1(68,:) .* inMv2(39,:) + inMv1(69,:) .* inMv2(38,:);
    outMv(252,:) = inMv1(2,:) .* inMv2(93,:) - inMv1(6,:) .* inMv2(92,:) + inMv1(10,:) .* inMv2(90,:) - inMv1(11,:) .* inMv2(89,:) + inMv1(12,:) .* inMv2(88,:) + inMv1(16,:) .* inMv2(87,:) - inMv1(20,:) .* inMv2(85,:) + inMv1(21,:) .* inMv2(84,:) - inMv1(22,:) .* inMv2(83,:) + inMv1(26,:) .* inMv2(81,:) - inMv1(27,:) .* inMv2(80,:) + inMv1(28,:) .* inMv2(79,:) + inMv1(32,:) .* inMv2(75,:) - inMv1(33,:) .* inMv2(74,:) + inMv1(34,:) .* inMv2(73,:) - inMv1(36,:) .* inMv2(72,:) + inMv1(40,:) .* inMv2(70,:) - inMv1(41,:) .* inMv2(69,:) + inMv1(42,:) .* inMv2(68,:) - inMv1(46,:) .* inMv2(66,:) + inMv1(47,:) .* inMv2(65,:) - inMv1(48,:) .* inMv2(64,:) - inMv1(52,:) .* inMv2(60,:) + inMv1(53,:) .* inMv2(59,:) - inMv1(54,:) .* inMv2(58,:) + inMv1(56,:) .* inMv2(56,:) - inMv1(57,:) .* inMv2(55,:) + inMv1(58,:) .* inMv2(54,:) + inMv1(62,:) .* inMv2(50,:) - inMv1(63,:) .* inMv2(49,:) + inMv1(64,:) .* inMv2(48,:) - inMv1(66,:) .* inMv2(44,:) + inMv1(67,:) .* inMv2(43,:) - inMv1(68,:) .* inMv2(42,:) + inMv1(70,:) .* inMv2(38,:);
    outMv(253,:) = inMv1(3,:) .* inMv2(93,:) - inMv1(7,:) .* inMv2(92,:) + inMv1(10,:) .* inMv2(91,:) - inMv1(13,:) .* inMv2(89,:) + inMv1(14,:) .* inMv2(88,:) + inMv1(17,:) .* inMv2(87,:) - inMv1(20,:) .* inMv2(86,:) + inMv1(23,:) .* inMv2(84,:) - inMv1(24,:) .* inMv2(83,:) + inMv1(26,:) .* inMv2(82,:) - inMv1(29,:) .* inMv2(80,:) + inMv1(30,:) .* inMv2(79,:) + inMv1(32,:) .* inMv2(77,:) - inMv1(33,:) .* inMv2(76,:) + inMv1(35,:) .* inMv2(73,:) - inMv1(37,:) .* inMv2(72,:) + inMv1(40,:) .* inMv2(71,:) - inMv1(43,:) .* inMv2(69,:) + inMv1(44,:) .* inMv2(68,:) - inMv1(46,:) .* inMv2(67,:) + inMv1(49,:) .* inMv2(65,:) - inMv1(50,:) .* inMv2(64,:) - inMv1(52,:) .* inMv2(62,:) + inMv1(53,:) .* inMv2(61,:) - inMv1(55,:) .* inMv2(58,:) + inMv1(56,:) .* inMv2(57,:) - inMv1(59,:) .* inMv2(55,:) + inMv1(60,:) .* inMv2(54,:) + inMv1(62,:) .* inMv2(52,:) - inMv1(63,:) .* inMv2(51,:) + inMv1(65,:) .* inMv2(48,:) - inMv1(66,:) .* inMv2(46,:) + inMv1(67,:) .* inMv2(45,:) - inMv1(69,:) .* inMv2(42,:) + inMv1(70,:) .* inMv2(39,:);
    outMv(254,:) = inMv1(4,:) .* inMv2(93,:) - inMv1(8,:) .* inMv2(92,:) + inMv1(11,:) .* inMv2(91,:) - inMv1(13,:) .* inMv2(90,:) + inMv1(15,:) .* inMv2(88,:) + inMv1(18,:) .* inMv2(87,:) - inMv1(21,:) .* inMv2(86,:) + inMv1(23,:) .* inMv2(85,:) - inMv1(25,:) .* inMv2(83,:) + inMv1(27,:) .* inMv2(82,:) - inMv1(29,:) .* inMv2(81,:) + inMv1(31,:) .* inMv2(79,:) + inMv1(32,:) .* inMv2(78,:) - inMv1(34,:) .* inMv2(76,:) + inMv1(35,:) .* inMv2(74,:) - inMv1(38,:) .* inMv2(72,:) + inMv1(41,:) .* inMv2(71,:) - inMv1(43,:) .* inMv2(70,:) + inMv1(45,:) .* inMv2(68,:) - inMv1(47,:) .* inMv2(67,:) + inMv1(49,:) .* inMv2(66,:) - inMv1(51,:) .* inMv2(64,:) - inMv1(52,:) .* inMv2(63,:) + inMv1(54,:) .* inMv2(61,:) - inMv1(55,:) .* inMv2(59,:) + inMv1(57,:) .* inMv2(57,:) - inMv1(59,:) .* inMv2(56,:) + inMv1(61,:) .* inMv2(54,:) + inMv1(62,:) .* inMv2(53,:) - inMv1(64,:) .* inMv2(51,:) + inMv1(65,:) .* inMv2(49,:) - inMv1(66,:) .* inMv2(47,:) + inMv1(68,:) .* inMv2(45,:) - inMv1(69,:) .* inMv2(43,:) + inMv1(70,:) .* inMv2(40,:);
    outMv(255,:) = inMv1(5,:) .* inMv2(93,:) - inMv1(9,:) .* inMv2(92,:) + inMv1(12,:) .* inMv2(91,:) - inMv1(14,:) .* inMv2(90,:) + inMv1(15,:) .* inMv2(89,:) + inMv1(19,:) .* inMv2(87,:) - inMv1(22,:) .* inMv2(86,:) + inMv1(24,:) .* inMv2(85,:) - inMv1(25,:) .* inMv2(84,:) + inMv1(28,:) .* inMv2(82,:) - inMv1(30,:) .* inMv2(81,:) + inMv1(31,:) .* inMv2(80,:) + inMv1(33,:) .* inMv2(78,:) - inMv1(34,:) .* inMv2(77,:) + inMv1(35,:) .* inMv2(75,:) - inMv1(39,:) .* inMv2(72,:) + inMv1(42,:) .* inMv2(71,:) - inMv1(44,:) .* inMv2(70,:) + inMv1(45,:) .* inMv2(69,:) - inMv1(48,:) .* inMv2(67,:) + inMv1(50,:) .* inMv2(66,:) - inMv1(51,:) .* inMv2(65,:) - inMv1(53,:) .* inMv2(63,:) + inMv1(54,:) .* inMv2(62,:) - inMv1(55,:) .* inMv2(60,:) + inMv1(58,:) .* inMv2(57,:) - inMv1(60,:) .* inMv2(56,:) + inMv1(61,:) .* inMv2(55,:) + inMv1(63,:) .* inMv2(53,:) - inMv1(64,:) .* inMv2(52,:) + inMv1(65,:) .* inMv2(50,:) - inMv1(67,:) .* inMv2(47,:) + inMv1(68,:) .* inMv2(46,:) - inMv1(69,:) .* inMv2(44,:) + inMv1(70,:) .* inMv2(41,:);
    outMv(256,:) = inMv1(1,:) .* inMv2(163,:) - inMv1(2,:) .* inMv2(162,:) + inMv1(3,:) .* inMv2(161,:) - inMv1(4,:) .* inMv2(160,:) + inMv1(5,:) .* inMv2(159,:) + inMv1(6,:) .* inMv2(158,:) - inMv1(7,:) .* inMv2(157,:) + inMv1(8,:) .* inMv2(156,:) - inMv1(9,:) .* inMv2(155,:) + inMv1(10,:) .* inMv2(154,:) - inMv1(11,:) .* inMv2(153,:) + inMv1(12,:) .* inMv2(152,:) + inMv1(13,:) .* inMv2(151,:) - inMv1(14,:) .* inMv2(150,:) + inMv1(15,:) .* inMv2(149,:) - inMv1(16,:) .* inMv2(148,:) + inMv1(17,:) .* inMv2(147,:) - inMv1(18,:) .* inMv2(146,:) + inMv1(19,:) .* inMv2(145,:) - inMv1(20,:) .* inMv2(144,:) + inMv1(21,:) .* inMv2(143,:) - inMv1(22,:) .* inMv2(142,:) - inMv1(23,:) .* inMv2(141,:) + inMv1(24,:) .* inMv2(140,:) - inMv1(25,:) .* inMv2(139,:) + inMv1(26,:) .* inMv2(138,:) - inMv1(27,:) .* inMv2(137,:) + inMv1(28,:) .* inMv2(136,:) + inMv1(29,:) .* inMv2(135,:) - inMv1(30,:) .* inMv2(134,:) + inMv1(31,:) .* inMv2(133,:) - inMv1(32,:) .* inMv2(132,:) + inMv1(33,:) .* inMv2(131,:) - inMv1(34,:) .* inMv2(130,:) + inMv1(35,:) .* inMv2(129,:) + inMv1(36,:) .* inMv2(128,:) - inMv1(37,:) .* inMv2(127,:) + inMv1(38,:) .* inMv2(126,:) - inMv1(39,:) .* inMv2(125,:) + inMv1(40,:) .* inMv2(124,:) - inMv1(41,:) .* inMv2(123,:) + inMv1(42,:) .* inMv2(122,:) + inMv1(43,:) .* inMv2(121,:) - inMv1(44,:) .* inMv2(120,:) + inMv1(45,:) .* inMv2(119,:) - inMv1(46,:) .* inMv2(118,:) + inMv1(47,:) .* inMv2(117,:) - inMv1(48,:) .* inMv2(116,:) - inMv1(49,:) .* inMv2(115,:) + inMv1(50,:) .* inMv2(114,:) - inMv1(51,:) .* inMv2(113,:) + inMv1(52,:) .* inMv2(112,:) - inMv1(53,:) .* inMv2(111,:) + inMv1(54,:) .* inMv2(110,:) - inMv1(55,:) .* inMv2(109,:) + inMv1(56,:) .* inMv2(108,:) - inMv1(57,:) .* inMv2(107,:) + inMv1(58,:) .* inMv2(106,:) + inMv1(59,:) .* inMv2(105,:) - inMv1(60,:) .* inMv2(104,:) + inMv1(61,:) .* inMv2(103,:) - inMv1(62,:) .* inMv2(102,:) + inMv1(63,:) .* inMv2(101,:) - inMv1(64,:) .* inMv2(100,:) + inMv1(65,:) .* inMv2(99,:) + inMv1(66,:) .* inMv2(98,:) - inMv1(67,:) .* inMv2(97,:) + inMv1(68,:) .* inMv2(96,:) - inMv1(69,:) .* inMv2(95,:) + inMv1(70,:) .* inMv2(94,:);
end
