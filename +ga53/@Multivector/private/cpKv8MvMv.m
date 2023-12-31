% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = cpKv8MvMv(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (256,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(1,:) .* inMv2(255,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(254,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(253,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(252,:);
    outMv(6,:) = inMv1(1,:) .* inMv2(251,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(250,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(249,:);
    outMv(9,:) = -inMv1(1,:) .* inMv2(248,:);
    outMv(38,:) = inMv1(1,:) .* inMv2(219,:);
    outMv(39,:) = inMv1(1,:) .* inMv2(218,:);
    outMv(40,:) = -inMv1(1,:) .* inMv2(217,:);
    outMv(41,:) = inMv1(1,:) .* inMv2(216,:);
    outMv(42,:) = -inMv1(1,:) .* inMv2(215,:);
    outMv(43,:) = inMv1(1,:) .* inMv2(214,:);
    outMv(44,:) = -inMv1(1,:) .* inMv2(213,:);
    outMv(45,:) = inMv1(1,:) .* inMv2(212,:);
    outMv(46,:) = -inMv1(1,:) .* inMv2(211,:);
    outMv(47,:) = inMv1(1,:) .* inMv2(210,:);
    outMv(48,:) = inMv1(1,:) .* inMv2(209,:);
    outMv(49,:) = -inMv1(1,:) .* inMv2(208,:);
    outMv(50,:) = inMv1(1,:) .* inMv2(207,:);
    outMv(51,:) = -inMv1(1,:) .* inMv2(206,:);
    outMv(52,:) = inMv1(1,:) .* inMv2(205,:);
    outMv(53,:) = -inMv1(1,:) .* inMv2(204,:);
    outMv(54,:) = inMv1(1,:) .* inMv2(203,:);
    outMv(55,:) = -inMv1(1,:) .* inMv2(202,:);
    outMv(56,:) = inMv1(1,:) .* inMv2(201,:);
    outMv(57,:) = inMv1(1,:) .* inMv2(200,:);
    outMv(58,:) = -inMv1(1,:) .* inMv2(199,:);
    outMv(59,:) = inMv1(1,:) .* inMv2(198,:);
    outMv(60,:) = -inMv1(1,:) .* inMv2(197,:);
    outMv(61,:) = inMv1(1,:) .* inMv2(196,:);
    outMv(62,:) = -inMv1(1,:) .* inMv2(195,:);
    outMv(63,:) = inMv1(1,:) .* inMv2(194,:);
    outMv(64,:) = -inMv1(1,:) .* inMv2(193,:);
    outMv(65,:) = inMv1(1,:) .* inMv2(192,:);
    outMv(66,:) = -inMv1(1,:) .* inMv2(191,:);
    outMv(67,:) = -inMv1(1,:) .* inMv2(190,:);
    outMv(68,:) = inMv1(1,:) .* inMv2(189,:);
    outMv(69,:) = -inMv1(1,:) .* inMv2(188,:);
    outMv(70,:) = inMv1(1,:) .* inMv2(187,:);
    outMv(71,:) = inMv1(1,:) .* inMv2(186,:);
    outMv(72,:) = -inMv1(1,:) .* inMv2(185,:);
    outMv(73,:) = inMv1(1,:) .* inMv2(184,:);
    outMv(74,:) = -inMv1(1,:) .* inMv2(183,:);
    outMv(75,:) = inMv1(1,:) .* inMv2(182,:);
    outMv(76,:) = -inMv1(1,:) .* inMv2(181,:);
    outMv(77,:) = inMv1(1,:) .* inMv2(180,:);
    outMv(78,:) = -inMv1(1,:) .* inMv2(179,:);
    outMv(79,:) = inMv1(1,:) .* inMv2(178,:);
    outMv(80,:) = -inMv1(1,:) .* inMv2(177,:);
    outMv(81,:) = inMv1(1,:) .* inMv2(176,:);
    outMv(82,:) = inMv1(1,:) .* inMv2(175,:);
    outMv(83,:) = -inMv1(1,:) .* inMv2(174,:);
    outMv(84,:) = inMv1(1,:) .* inMv2(173,:);
    outMv(85,:) = -inMv1(1,:) .* inMv2(172,:);
    outMv(86,:) = -inMv1(1,:) .* inMv2(171,:);
    outMv(87,:) = inMv1(1,:) .* inMv2(170,:);
    outMv(88,:) = inMv1(1,:) .* inMv2(169,:);
    outMv(89,:) = -inMv1(1,:) .* inMv2(168,:);
    outMv(90,:) = inMv1(1,:) .* inMv2(167,:);
    outMv(91,:) = inMv1(1,:) .* inMv2(166,:);
    outMv(92,:) = -inMv1(1,:) .* inMv2(165,:);
    outMv(93,:) = inMv1(1,:) .* inMv2(164,:);
    outMv(164,:) = -inMv1(1,:) .* inMv2(93,:);
    outMv(165,:) = inMv1(1,:) .* inMv2(92,:);
    outMv(166,:) = -inMv1(1,:) .* inMv2(91,:);
    outMv(167,:) = -inMv1(1,:) .* inMv2(90,:);
    outMv(168,:) = inMv1(1,:) .* inMv2(89,:);
    outMv(169,:) = -inMv1(1,:) .* inMv2(88,:);
    outMv(170,:) = -inMv1(1,:) .* inMv2(87,:);
    outMv(171,:) = inMv1(1,:) .* inMv2(86,:);
    outMv(172,:) = inMv1(1,:) .* inMv2(85,:);
    outMv(173,:) = -inMv1(1,:) .* inMv2(84,:);
    outMv(174,:) = inMv1(1,:) .* inMv2(83,:);
    outMv(175,:) = -inMv1(1,:) .* inMv2(82,:);
    outMv(176,:) = -inMv1(1,:) .* inMv2(81,:);
    outMv(177,:) = inMv1(1,:) .* inMv2(80,:);
    outMv(178,:) = -inMv1(1,:) .* inMv2(79,:);
    outMv(179,:) = inMv1(1,:) .* inMv2(78,:);
    outMv(180,:) = -inMv1(1,:) .* inMv2(77,:);
    outMv(181,:) = inMv1(1,:) .* inMv2(76,:);
    outMv(182,:) = -inMv1(1,:) .* inMv2(75,:);
    outMv(183,:) = inMv1(1,:) .* inMv2(74,:);
    outMv(184,:) = -inMv1(1,:) .* inMv2(73,:);
    outMv(185,:) = inMv1(1,:) .* inMv2(72,:);
    outMv(186,:) = -inMv1(1,:) .* inMv2(71,:);
    outMv(187,:) = -inMv1(1,:) .* inMv2(70,:);
    outMv(188,:) = inMv1(1,:) .* inMv2(69,:);
    outMv(189,:) = -inMv1(1,:) .* inMv2(68,:);
    outMv(190,:) = inMv1(1,:) .* inMv2(67,:);
    outMv(191,:) = inMv1(1,:) .* inMv2(66,:);
    outMv(192,:) = -inMv1(1,:) .* inMv2(65,:);
    outMv(193,:) = inMv1(1,:) .* inMv2(64,:);
    outMv(194,:) = -inMv1(1,:) .* inMv2(63,:);
    outMv(195,:) = inMv1(1,:) .* inMv2(62,:);
    outMv(196,:) = -inMv1(1,:) .* inMv2(61,:);
    outMv(197,:) = inMv1(1,:) .* inMv2(60,:);
    outMv(198,:) = -inMv1(1,:) .* inMv2(59,:);
    outMv(199,:) = inMv1(1,:) .* inMv2(58,:);
    outMv(200,:) = -inMv1(1,:) .* inMv2(57,:);
    outMv(201,:) = -inMv1(1,:) .* inMv2(56,:);
    outMv(202,:) = inMv1(1,:) .* inMv2(55,:);
    outMv(203,:) = -inMv1(1,:) .* inMv2(54,:);
    outMv(204,:) = inMv1(1,:) .* inMv2(53,:);
    outMv(205,:) = -inMv1(1,:) .* inMv2(52,:);
    outMv(206,:) = inMv1(1,:) .* inMv2(51,:);
    outMv(207,:) = -inMv1(1,:) .* inMv2(50,:);
    outMv(208,:) = inMv1(1,:) .* inMv2(49,:);
    outMv(209,:) = -inMv1(1,:) .* inMv2(48,:);
    outMv(210,:) = -inMv1(1,:) .* inMv2(47,:);
    outMv(211,:) = inMv1(1,:) .* inMv2(46,:);
    outMv(212,:) = -inMv1(1,:) .* inMv2(45,:);
    outMv(213,:) = inMv1(1,:) .* inMv2(44,:);
    outMv(214,:) = -inMv1(1,:) .* inMv2(43,:);
    outMv(215,:) = inMv1(1,:) .* inMv2(42,:);
    outMv(216,:) = -inMv1(1,:) .* inMv2(41,:);
    outMv(217,:) = inMv1(1,:) .* inMv2(40,:);
    outMv(218,:) = -inMv1(1,:) .* inMv2(39,:);
    outMv(219,:) = -inMv1(1,:) .* inMv2(38,:);
    outMv(248,:) = inMv1(1,:) .* inMv2(9,:);
    outMv(249,:) = -inMv1(1,:) .* inMv2(8,:);
    outMv(250,:) = inMv1(1,:) .* inMv2(7,:);
    outMv(251,:) = -inMv1(1,:) .* inMv2(6,:);
    outMv(252,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(253,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(254,:) = -inMv1(1,:) .* inMv2(3,:);
    outMv(255,:) = inMv1(1,:) .* inMv2(2,:);
end
