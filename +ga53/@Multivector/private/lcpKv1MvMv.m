% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv1MvMv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (256,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(6,:) + inMv1(6,:) .* inMv2(7,:) + inMv1(7,:) .* inMv2(8,:) + inMv1(8,:) .* inMv2(9,:);
    outMv(2,:) = inMv1(2,:) .* inMv2(10,:) + inMv1(3,:) .* inMv2(11,:) - inMv1(4,:) .* inMv2(13,:) - inMv1(5,:) .* inMv2(16,:) - inMv1(6,:) .* inMv2(20,:) - inMv1(7,:) .* inMv2(25,:) - inMv1(8,:) .* inMv2(31,:);
    outMv(3,:) = -inMv1(1,:) .* inMv2(10,:) + inMv1(3,:) .* inMv2(12,:) - inMv1(4,:) .* inMv2(14,:) - inMv1(5,:) .* inMv2(17,:) - inMv1(6,:) .* inMv2(21,:) - inMv1(7,:) .* inMv2(26,:) - inMv1(8,:) .* inMv2(32,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(11,:) - inMv1(2,:) .* inMv2(12,:) - inMv1(4,:) .* inMv2(15,:) - inMv1(5,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(22,:) - inMv1(7,:) .* inMv2(27,:) - inMv1(8,:) .* inMv2(33,:);
    outMv(5,:) = -inMv1(1,:) .* inMv2(13,:) - inMv1(2,:) .* inMv2(14,:) - inMv1(3,:) .* inMv2(15,:) - inMv1(5,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(23,:) - inMv1(7,:) .* inMv2(28,:) - inMv1(8,:) .* inMv2(34,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(16,:) - inMv1(2,:) .* inMv2(17,:) - inMv1(3,:) .* inMv2(18,:) + inMv1(4,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(24,:) - inMv1(7,:) .* inMv2(29,:) - inMv1(8,:) .* inMv2(35,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(20,:) - inMv1(2,:) .* inMv2(21,:) - inMv1(3,:) .* inMv2(22,:) + inMv1(4,:) .* inMv2(23,:) + inMv1(5,:) .* inMv2(24,:) - inMv1(7,:) .* inMv2(30,:) - inMv1(8,:) .* inMv2(36,:);
    outMv(8,:) = -inMv1(1,:) .* inMv2(25,:) - inMv1(2,:) .* inMv2(26,:) - inMv1(3,:) .* inMv2(27,:) + inMv1(4,:) .* inMv2(28,:) + inMv1(5,:) .* inMv2(29,:) + inMv1(6,:) .* inMv2(30,:) - inMv1(8,:) .* inMv2(37,:);
    outMv(9,:) = -inMv1(1,:) .* inMv2(31,:) - inMv1(2,:) .* inMv2(32,:) - inMv1(3,:) .* inMv2(33,:) + inMv1(4,:) .* inMv2(34,:) + inMv1(5,:) .* inMv2(35,:) + inMv1(6,:) .* inMv2(36,:) + inMv1(7,:) .* inMv2(37,:);
    outMv(10,:) = -inMv1(3,:) .* inMv2(38,:) + inMv1(4,:) .* inMv2(39,:) + inMv1(5,:) .* inMv2(42,:) + inMv1(6,:) .* inMv2(48,:) + inMv1(7,:) .* inMv2(58,:) + inMv1(8,:) .* inMv2(73,:);
    outMv(11,:) = inMv1(2,:) .* inMv2(38,:) + inMv1(4,:) .* inMv2(40,:) + inMv1(5,:) .* inMv2(43,:) + inMv1(6,:) .* inMv2(49,:) + inMv1(7,:) .* inMv2(59,:) + inMv1(8,:) .* inMv2(74,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(38,:) + inMv1(4,:) .* inMv2(41,:) + inMv1(5,:) .* inMv2(44,:) + inMv1(6,:) .* inMv2(50,:) + inMv1(7,:) .* inMv2(60,:) + inMv1(8,:) .* inMv2(75,:);
    outMv(13,:) = inMv1(2,:) .* inMv2(39,:) + inMv1(3,:) .* inMv2(40,:) + inMv1(5,:) .* inMv2(45,:) + inMv1(6,:) .* inMv2(51,:) + inMv1(7,:) .* inMv2(61,:) + inMv1(8,:) .* inMv2(76,:);
    outMv(14,:) = -inMv1(1,:) .* inMv2(39,:) + inMv1(3,:) .* inMv2(41,:) + inMv1(5,:) .* inMv2(46,:) + inMv1(6,:) .* inMv2(52,:) + inMv1(7,:) .* inMv2(62,:) + inMv1(8,:) .* inMv2(77,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(40,:) - inMv1(2,:) .* inMv2(41,:) + inMv1(5,:) .* inMv2(47,:) + inMv1(6,:) .* inMv2(53,:) + inMv1(7,:) .* inMv2(63,:) + inMv1(8,:) .* inMv2(78,:);
    outMv(16,:) = inMv1(2,:) .* inMv2(42,:) + inMv1(3,:) .* inMv2(43,:) - inMv1(4,:) .* inMv2(45,:) + inMv1(6,:) .* inMv2(54,:) + inMv1(7,:) .* inMv2(64,:) + inMv1(8,:) .* inMv2(79,:);
    outMv(17,:) = -inMv1(1,:) .* inMv2(42,:) + inMv1(3,:) .* inMv2(44,:) - inMv1(4,:) .* inMv2(46,:) + inMv1(6,:) .* inMv2(55,:) + inMv1(7,:) .* inMv2(65,:) + inMv1(8,:) .* inMv2(80,:);
    outMv(18,:) = -inMv1(1,:) .* inMv2(43,:) - inMv1(2,:) .* inMv2(44,:) - inMv1(4,:) .* inMv2(47,:) + inMv1(6,:) .* inMv2(56,:) + inMv1(7,:) .* inMv2(66,:) + inMv1(8,:) .* inMv2(81,:);
    outMv(19,:) = -inMv1(1,:) .* inMv2(45,:) - inMv1(2,:) .* inMv2(46,:) - inMv1(3,:) .* inMv2(47,:) + inMv1(6,:) .* inMv2(57,:) + inMv1(7,:) .* inMv2(67,:) + inMv1(8,:) .* inMv2(82,:);
    outMv(20,:) = inMv1(2,:) .* inMv2(48,:) + inMv1(3,:) .* inMv2(49,:) - inMv1(4,:) .* inMv2(51,:) - inMv1(5,:) .* inMv2(54,:) + inMv1(7,:) .* inMv2(68,:) + inMv1(8,:) .* inMv2(83,:);
    outMv(21,:) = -inMv1(1,:) .* inMv2(48,:) + inMv1(3,:) .* inMv2(50,:) - inMv1(4,:) .* inMv2(52,:) - inMv1(5,:) .* inMv2(55,:) + inMv1(7,:) .* inMv2(69,:) + inMv1(8,:) .* inMv2(84,:);
    outMv(22,:) = -inMv1(1,:) .* inMv2(49,:) - inMv1(2,:) .* inMv2(50,:) - inMv1(4,:) .* inMv2(53,:) - inMv1(5,:) .* inMv2(56,:) + inMv1(7,:) .* inMv2(70,:) + inMv1(8,:) .* inMv2(85,:);
    outMv(23,:) = -inMv1(1,:) .* inMv2(51,:) - inMv1(2,:) .* inMv2(52,:) - inMv1(3,:) .* inMv2(53,:) - inMv1(5,:) .* inMv2(57,:) + inMv1(7,:) .* inMv2(71,:) + inMv1(8,:) .* inMv2(86,:);
    outMv(24,:) = -inMv1(1,:) .* inMv2(54,:) - inMv1(2,:) .* inMv2(55,:) - inMv1(3,:) .* inMv2(56,:) + inMv1(4,:) .* inMv2(57,:) + inMv1(7,:) .* inMv2(72,:) + inMv1(8,:) .* inMv2(87,:);
    outMv(25,:) = inMv1(2,:) .* inMv2(58,:) + inMv1(3,:) .* inMv2(59,:) - inMv1(4,:) .* inMv2(61,:) - inMv1(5,:) .* inMv2(64,:) - inMv1(6,:) .* inMv2(68,:) + inMv1(8,:) .* inMv2(88,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(58,:) + inMv1(3,:) .* inMv2(60,:) - inMv1(4,:) .* inMv2(62,:) - inMv1(5,:) .* inMv2(65,:) - inMv1(6,:) .* inMv2(69,:) + inMv1(8,:) .* inMv2(89,:);
    outMv(27,:) = -inMv1(1,:) .* inMv2(59,:) - inMv1(2,:) .* inMv2(60,:) - inMv1(4,:) .* inMv2(63,:) - inMv1(5,:) .* inMv2(66,:) - inMv1(6,:) .* inMv2(70,:) + inMv1(8,:) .* inMv2(90,:);
    outMv(28,:) = -inMv1(1,:) .* inMv2(61,:) - inMv1(2,:) .* inMv2(62,:) - inMv1(3,:) .* inMv2(63,:) - inMv1(5,:) .* inMv2(67,:) - inMv1(6,:) .* inMv2(71,:) + inMv1(8,:) .* inMv2(91,:);
    outMv(29,:) = -inMv1(1,:) .* inMv2(64,:) - inMv1(2,:) .* inMv2(65,:) - inMv1(3,:) .* inMv2(66,:) + inMv1(4,:) .* inMv2(67,:) - inMv1(6,:) .* inMv2(72,:) + inMv1(8,:) .* inMv2(92,:);
    outMv(30,:) = -inMv1(1,:) .* inMv2(68,:) - inMv1(2,:) .* inMv2(69,:) - inMv1(3,:) .* inMv2(70,:) + inMv1(4,:) .* inMv2(71,:) + inMv1(5,:) .* inMv2(72,:) + inMv1(8,:) .* inMv2(93,:);
    outMv(31,:) = inMv1(2,:) .* inMv2(73,:) + inMv1(3,:) .* inMv2(74,:) - inMv1(4,:) .* inMv2(76,:) - inMv1(5,:) .* inMv2(79,:) - inMv1(6,:) .* inMv2(83,:) - inMv1(7,:) .* inMv2(88,:);
    outMv(32,:) = -inMv1(1,:) .* inMv2(73,:) + inMv1(3,:) .* inMv2(75,:) - inMv1(4,:) .* inMv2(77,:) - inMv1(5,:) .* inMv2(80,:) - inMv1(6,:) .* inMv2(84,:) - inMv1(7,:) .* inMv2(89,:);
    outMv(33,:) = -inMv1(1,:) .* inMv2(74,:) - inMv1(2,:) .* inMv2(75,:) - inMv1(4,:) .* inMv2(78,:) - inMv1(5,:) .* inMv2(81,:) - inMv1(6,:) .* inMv2(85,:) - inMv1(7,:) .* inMv2(90,:);
    outMv(34,:) = -inMv1(1,:) .* inMv2(76,:) - inMv1(2,:) .* inMv2(77,:) - inMv1(3,:) .* inMv2(78,:) - inMv1(5,:) .* inMv2(82,:) - inMv1(6,:) .* inMv2(86,:) - inMv1(7,:) .* inMv2(91,:);
    outMv(35,:) = -inMv1(1,:) .* inMv2(79,:) - inMv1(2,:) .* inMv2(80,:) - inMv1(3,:) .* inMv2(81,:) + inMv1(4,:) .* inMv2(82,:) - inMv1(6,:) .* inMv2(87,:) - inMv1(7,:) .* inMv2(92,:);
    outMv(36,:) = -inMv1(1,:) .* inMv2(83,:) - inMv1(2,:) .* inMv2(84,:) - inMv1(3,:) .* inMv2(85,:) + inMv1(4,:) .* inMv2(86,:) + inMv1(5,:) .* inMv2(87,:) - inMv1(7,:) .* inMv2(93,:);
    outMv(37,:) = -inMv1(1,:) .* inMv2(88,:) - inMv1(2,:) .* inMv2(89,:) - inMv1(3,:) .* inMv2(90,:) + inMv1(4,:) .* inMv2(91,:) + inMv1(5,:) .* inMv2(92,:) + inMv1(6,:) .* inMv2(93,:);
    outMv(38,:) = -inMv1(4,:) .* inMv2(94,:) - inMv1(5,:) .* inMv2(95,:) - inMv1(6,:) .* inMv2(99,:) - inMv1(7,:) .* inMv2(109,:) - inMv1(8,:) .* inMv2(129,:);
    outMv(39,:) = -inMv1(3,:) .* inMv2(94,:) - inMv1(5,:) .* inMv2(96,:) - inMv1(6,:) .* inMv2(100,:) - inMv1(7,:) .* inMv2(110,:) - inMv1(8,:) .* inMv2(130,:);
    outMv(40,:) = inMv1(2,:) .* inMv2(94,:) - inMv1(5,:) .* inMv2(97,:) - inMv1(6,:) .* inMv2(101,:) - inMv1(7,:) .* inMv2(111,:) - inMv1(8,:) .* inMv2(131,:);
    outMv(41,:) = -inMv1(1,:) .* inMv2(94,:) - inMv1(5,:) .* inMv2(98,:) - inMv1(6,:) .* inMv2(102,:) - inMv1(7,:) .* inMv2(112,:) - inMv1(8,:) .* inMv2(132,:);
    outMv(42,:) = -inMv1(3,:) .* inMv2(95,:) + inMv1(4,:) .* inMv2(96,:) - inMv1(6,:) .* inMv2(103,:) - inMv1(7,:) .* inMv2(113,:) - inMv1(8,:) .* inMv2(133,:);
    outMv(43,:) = inMv1(2,:) .* inMv2(95,:) + inMv1(4,:) .* inMv2(97,:) - inMv1(6,:) .* inMv2(104,:) - inMv1(7,:) .* inMv2(114,:) - inMv1(8,:) .* inMv2(134,:);
    outMv(44,:) = -inMv1(1,:) .* inMv2(95,:) + inMv1(4,:) .* inMv2(98,:) - inMv1(6,:) .* inMv2(105,:) - inMv1(7,:) .* inMv2(115,:) - inMv1(8,:) .* inMv2(135,:);
    outMv(45,:) = inMv1(2,:) .* inMv2(96,:) + inMv1(3,:) .* inMv2(97,:) - inMv1(6,:) .* inMv2(106,:) - inMv1(7,:) .* inMv2(116,:) - inMv1(8,:) .* inMv2(136,:);
    outMv(46,:) = -inMv1(1,:) .* inMv2(96,:) + inMv1(3,:) .* inMv2(98,:) - inMv1(6,:) .* inMv2(107,:) - inMv1(7,:) .* inMv2(117,:) - inMv1(8,:) .* inMv2(137,:);
    outMv(47,:) = -inMv1(1,:) .* inMv2(97,:) - inMv1(2,:) .* inMv2(98,:) - inMv1(6,:) .* inMv2(108,:) - inMv1(7,:) .* inMv2(118,:) - inMv1(8,:) .* inMv2(138,:);
    outMv(48,:) = -inMv1(3,:) .* inMv2(99,:) + inMv1(4,:) .* inMv2(100,:) + inMv1(5,:) .* inMv2(103,:) - inMv1(7,:) .* inMv2(119,:) - inMv1(8,:) .* inMv2(139,:);
    outMv(49,:) = inMv1(2,:) .* inMv2(99,:) + inMv1(4,:) .* inMv2(101,:) + inMv1(5,:) .* inMv2(104,:) - inMv1(7,:) .* inMv2(120,:) - inMv1(8,:) .* inMv2(140,:);
    outMv(50,:) = -inMv1(1,:) .* inMv2(99,:) + inMv1(4,:) .* inMv2(102,:) + inMv1(5,:) .* inMv2(105,:) - inMv1(7,:) .* inMv2(121,:) - inMv1(8,:) .* inMv2(141,:);
    outMv(51,:) = inMv1(2,:) .* inMv2(100,:) + inMv1(3,:) .* inMv2(101,:) + inMv1(5,:) .* inMv2(106,:) - inMv1(7,:) .* inMv2(122,:) - inMv1(8,:) .* inMv2(142,:);
    outMv(52,:) = -inMv1(1,:) .* inMv2(100,:) + inMv1(3,:) .* inMv2(102,:) + inMv1(5,:) .* inMv2(107,:) - inMv1(7,:) .* inMv2(123,:) - inMv1(8,:) .* inMv2(143,:);
    outMv(53,:) = -inMv1(1,:) .* inMv2(101,:) - inMv1(2,:) .* inMv2(102,:) + inMv1(5,:) .* inMv2(108,:) - inMv1(7,:) .* inMv2(124,:) - inMv1(8,:) .* inMv2(144,:);
    outMv(54,:) = inMv1(2,:) .* inMv2(103,:) + inMv1(3,:) .* inMv2(104,:) - inMv1(4,:) .* inMv2(106,:) - inMv1(7,:) .* inMv2(125,:) - inMv1(8,:) .* inMv2(145,:);
    outMv(55,:) = -inMv1(1,:) .* inMv2(103,:) + inMv1(3,:) .* inMv2(105,:) - inMv1(4,:) .* inMv2(107,:) - inMv1(7,:) .* inMv2(126,:) - inMv1(8,:) .* inMv2(146,:);
    outMv(56,:) = -inMv1(1,:) .* inMv2(104,:) - inMv1(2,:) .* inMv2(105,:) - inMv1(4,:) .* inMv2(108,:) - inMv1(7,:) .* inMv2(127,:) - inMv1(8,:) .* inMv2(147,:);
    outMv(57,:) = -inMv1(1,:) .* inMv2(106,:) - inMv1(2,:) .* inMv2(107,:) - inMv1(3,:) .* inMv2(108,:) - inMv1(7,:) .* inMv2(128,:) - inMv1(8,:) .* inMv2(148,:);
    outMv(58,:) = -inMv1(3,:) .* inMv2(109,:) + inMv1(4,:) .* inMv2(110,:) + inMv1(5,:) .* inMv2(113,:) + inMv1(6,:) .* inMv2(119,:) - inMv1(8,:) .* inMv2(149,:);
    outMv(59,:) = inMv1(2,:) .* inMv2(109,:) + inMv1(4,:) .* inMv2(111,:) + inMv1(5,:) .* inMv2(114,:) + inMv1(6,:) .* inMv2(120,:) - inMv1(8,:) .* inMv2(150,:);
    outMv(60,:) = -inMv1(1,:) .* inMv2(109,:) + inMv1(4,:) .* inMv2(112,:) + inMv1(5,:) .* inMv2(115,:) + inMv1(6,:) .* inMv2(121,:) - inMv1(8,:) .* inMv2(151,:);
    outMv(61,:) = inMv1(2,:) .* inMv2(110,:) + inMv1(3,:) .* inMv2(111,:) + inMv1(5,:) .* inMv2(116,:) + inMv1(6,:) .* inMv2(122,:) - inMv1(8,:) .* inMv2(152,:);
    outMv(62,:) = -inMv1(1,:) .* inMv2(110,:) + inMv1(3,:) .* inMv2(112,:) + inMv1(5,:) .* inMv2(117,:) + inMv1(6,:) .* inMv2(123,:) - inMv1(8,:) .* inMv2(153,:);
    outMv(63,:) = -inMv1(1,:) .* inMv2(111,:) - inMv1(2,:) .* inMv2(112,:) + inMv1(5,:) .* inMv2(118,:) + inMv1(6,:) .* inMv2(124,:) - inMv1(8,:) .* inMv2(154,:);
    outMv(64,:) = inMv1(2,:) .* inMv2(113,:) + inMv1(3,:) .* inMv2(114,:) - inMv1(4,:) .* inMv2(116,:) + inMv1(6,:) .* inMv2(125,:) - inMv1(8,:) .* inMv2(155,:);
    outMv(65,:) = -inMv1(1,:) .* inMv2(113,:) + inMv1(3,:) .* inMv2(115,:) - inMv1(4,:) .* inMv2(117,:) + inMv1(6,:) .* inMv2(126,:) - inMv1(8,:) .* inMv2(156,:);
    outMv(66,:) = -inMv1(1,:) .* inMv2(114,:) - inMv1(2,:) .* inMv2(115,:) - inMv1(4,:) .* inMv2(118,:) + inMv1(6,:) .* inMv2(127,:) - inMv1(8,:) .* inMv2(157,:);
    outMv(67,:) = -inMv1(1,:) .* inMv2(116,:) - inMv1(2,:) .* inMv2(117,:) - inMv1(3,:) .* inMv2(118,:) + inMv1(6,:) .* inMv2(128,:) - inMv1(8,:) .* inMv2(158,:);
    outMv(68,:) = inMv1(2,:) .* inMv2(119,:) + inMv1(3,:) .* inMv2(120,:) - inMv1(4,:) .* inMv2(122,:) - inMv1(5,:) .* inMv2(125,:) - inMv1(8,:) .* inMv2(159,:);
    outMv(69,:) = -inMv1(1,:) .* inMv2(119,:) + inMv1(3,:) .* inMv2(121,:) - inMv1(4,:) .* inMv2(123,:) - inMv1(5,:) .* inMv2(126,:) - inMv1(8,:) .* inMv2(160,:);
    outMv(70,:) = -inMv1(1,:) .* inMv2(120,:) - inMv1(2,:) .* inMv2(121,:) - inMv1(4,:) .* inMv2(124,:) - inMv1(5,:) .* inMv2(127,:) - inMv1(8,:) .* inMv2(161,:);
    outMv(71,:) = -inMv1(1,:) .* inMv2(122,:) - inMv1(2,:) .* inMv2(123,:) - inMv1(3,:) .* inMv2(124,:) - inMv1(5,:) .* inMv2(128,:) - inMv1(8,:) .* inMv2(162,:);
    outMv(72,:) = -inMv1(1,:) .* inMv2(125,:) - inMv1(2,:) .* inMv2(126,:) - inMv1(3,:) .* inMv2(127,:) + inMv1(4,:) .* inMv2(128,:) - inMv1(8,:) .* inMv2(163,:);
    outMv(73,:) = -inMv1(3,:) .* inMv2(129,:) + inMv1(4,:) .* inMv2(130,:) + inMv1(5,:) .* inMv2(133,:) + inMv1(6,:) .* inMv2(139,:) + inMv1(7,:) .* inMv2(149,:);
    outMv(74,:) = inMv1(2,:) .* inMv2(129,:) + inMv1(4,:) .* inMv2(131,:) + inMv1(5,:) .* inMv2(134,:) + inMv1(6,:) .* inMv2(140,:) + inMv1(7,:) .* inMv2(150,:);
    outMv(75,:) = -inMv1(1,:) .* inMv2(129,:) + inMv1(4,:) .* inMv2(132,:) + inMv1(5,:) .* inMv2(135,:) + inMv1(6,:) .* inMv2(141,:) + inMv1(7,:) .* inMv2(151,:);
    outMv(76,:) = inMv1(2,:) .* inMv2(130,:) + inMv1(3,:) .* inMv2(131,:) + inMv1(5,:) .* inMv2(136,:) + inMv1(6,:) .* inMv2(142,:) + inMv1(7,:) .* inMv2(152,:);
    outMv(77,:) = -inMv1(1,:) .* inMv2(130,:) + inMv1(3,:) .* inMv2(132,:) + inMv1(5,:) .* inMv2(137,:) + inMv1(6,:) .* inMv2(143,:) + inMv1(7,:) .* inMv2(153,:);
    outMv(78,:) = -inMv1(1,:) .* inMv2(131,:) - inMv1(2,:) .* inMv2(132,:) + inMv1(5,:) .* inMv2(138,:) + inMv1(6,:) .* inMv2(144,:) + inMv1(7,:) .* inMv2(154,:);
    outMv(79,:) = inMv1(2,:) .* inMv2(133,:) + inMv1(3,:) .* inMv2(134,:) - inMv1(4,:) .* inMv2(136,:) + inMv1(6,:) .* inMv2(145,:) + inMv1(7,:) .* inMv2(155,:);
    outMv(80,:) = -inMv1(1,:) .* inMv2(133,:) + inMv1(3,:) .* inMv2(135,:) - inMv1(4,:) .* inMv2(137,:) + inMv1(6,:) .* inMv2(146,:) + inMv1(7,:) .* inMv2(156,:);
    outMv(81,:) = -inMv1(1,:) .* inMv2(134,:) - inMv1(2,:) .* inMv2(135,:) - inMv1(4,:) .* inMv2(138,:) + inMv1(6,:) .* inMv2(147,:) + inMv1(7,:) .* inMv2(157,:);
    outMv(82,:) = -inMv1(1,:) .* inMv2(136,:) - inMv1(2,:) .* inMv2(137,:) - inMv1(3,:) .* inMv2(138,:) + inMv1(6,:) .* inMv2(148,:) + inMv1(7,:) .* inMv2(158,:);
    outMv(83,:) = inMv1(2,:) .* inMv2(139,:) + inMv1(3,:) .* inMv2(140,:) - inMv1(4,:) .* inMv2(142,:) - inMv1(5,:) .* inMv2(145,:) + inMv1(7,:) .* inMv2(159,:);
    outMv(84,:) = -inMv1(1,:) .* inMv2(139,:) + inMv1(3,:) .* inMv2(141,:) - inMv1(4,:) .* inMv2(143,:) - inMv1(5,:) .* inMv2(146,:) + inMv1(7,:) .* inMv2(160,:);
    outMv(85,:) = -inMv1(1,:) .* inMv2(140,:) - inMv1(2,:) .* inMv2(141,:) - inMv1(4,:) .* inMv2(144,:) - inMv1(5,:) .* inMv2(147,:) + inMv1(7,:) .* inMv2(161,:);
    outMv(86,:) = -inMv1(1,:) .* inMv2(142,:) - inMv1(2,:) .* inMv2(143,:) - inMv1(3,:) .* inMv2(144,:) - inMv1(5,:) .* inMv2(148,:) + inMv1(7,:) .* inMv2(162,:);
    outMv(87,:) = -inMv1(1,:) .* inMv2(145,:) - inMv1(2,:) .* inMv2(146,:) - inMv1(3,:) .* inMv2(147,:) + inMv1(4,:) .* inMv2(148,:) + inMv1(7,:) .* inMv2(163,:);
    outMv(88,:) = inMv1(2,:) .* inMv2(149,:) + inMv1(3,:) .* inMv2(150,:) - inMv1(4,:) .* inMv2(152,:) - inMv1(5,:) .* inMv2(155,:) - inMv1(6,:) .* inMv2(159,:);
    outMv(89,:) = -inMv1(1,:) .* inMv2(149,:) + inMv1(3,:) .* inMv2(151,:) - inMv1(4,:) .* inMv2(153,:) - inMv1(5,:) .* inMv2(156,:) - inMv1(6,:) .* inMv2(160,:);
    outMv(90,:) = -inMv1(1,:) .* inMv2(150,:) - inMv1(2,:) .* inMv2(151,:) - inMv1(4,:) .* inMv2(154,:) - inMv1(5,:) .* inMv2(157,:) - inMv1(6,:) .* inMv2(161,:);
    outMv(91,:) = -inMv1(1,:) .* inMv2(152,:) - inMv1(2,:) .* inMv2(153,:) - inMv1(3,:) .* inMv2(154,:) - inMv1(5,:) .* inMv2(158,:) - inMv1(6,:) .* inMv2(162,:);
    outMv(92,:) = -inMv1(1,:) .* inMv2(155,:) - inMv1(2,:) .* inMv2(156,:) - inMv1(3,:) .* inMv2(157,:) + inMv1(4,:) .* inMv2(158,:) - inMv1(6,:) .* inMv2(163,:);
    outMv(93,:) = -inMv1(1,:) .* inMv2(159,:) - inMv1(2,:) .* inMv2(160,:) - inMv1(3,:) .* inMv2(161,:) + inMv1(4,:) .* inMv2(162,:) + inMv1(5,:) .* inMv2(163,:);
    outMv(94,:) = inMv1(5,:) .* inMv2(164,:) + inMv1(6,:) .* inMv2(165,:) + inMv1(7,:) .* inMv2(170,:) + inMv1(8,:) .* inMv2(185,:);
    outMv(95,:) = -inMv1(4,:) .* inMv2(164,:) + inMv1(6,:) .* inMv2(166,:) + inMv1(7,:) .* inMv2(171,:) + inMv1(8,:) .* inMv2(186,:);
    outMv(96,:) = -inMv1(3,:) .* inMv2(164,:) + inMv1(6,:) .* inMv2(167,:) + inMv1(7,:) .* inMv2(172,:) + inMv1(8,:) .* inMv2(187,:);
    outMv(97,:) = inMv1(2,:) .* inMv2(164,:) + inMv1(6,:) .* inMv2(168,:) + inMv1(7,:) .* inMv2(173,:) + inMv1(8,:) .* inMv2(188,:);
    outMv(98,:) = -inMv1(1,:) .* inMv2(164,:) + inMv1(6,:) .* inMv2(169,:) + inMv1(7,:) .* inMv2(174,:) + inMv1(8,:) .* inMv2(189,:);
    outMv(99,:) = -inMv1(4,:) .* inMv2(165,:) - inMv1(5,:) .* inMv2(166,:) + inMv1(7,:) .* inMv2(175,:) + inMv1(8,:) .* inMv2(190,:);
    outMv(100,:) = -inMv1(3,:) .* inMv2(165,:) - inMv1(5,:) .* inMv2(167,:) + inMv1(7,:) .* inMv2(176,:) + inMv1(8,:) .* inMv2(191,:);
    outMv(101,:) = inMv1(2,:) .* inMv2(165,:) - inMv1(5,:) .* inMv2(168,:) + inMv1(7,:) .* inMv2(177,:) + inMv1(8,:) .* inMv2(192,:);
    outMv(102,:) = -inMv1(1,:) .* inMv2(165,:) - inMv1(5,:) .* inMv2(169,:) + inMv1(7,:) .* inMv2(178,:) + inMv1(8,:) .* inMv2(193,:);
    outMv(103,:) = -inMv1(3,:) .* inMv2(166,:) + inMv1(4,:) .* inMv2(167,:) + inMv1(7,:) .* inMv2(179,:) + inMv1(8,:) .* inMv2(194,:);
    outMv(104,:) = inMv1(2,:) .* inMv2(166,:) + inMv1(4,:) .* inMv2(168,:) + inMv1(7,:) .* inMv2(180,:) + inMv1(8,:) .* inMv2(195,:);
    outMv(105,:) = -inMv1(1,:) .* inMv2(166,:) + inMv1(4,:) .* inMv2(169,:) + inMv1(7,:) .* inMv2(181,:) + inMv1(8,:) .* inMv2(196,:);
    outMv(106,:) = inMv1(2,:) .* inMv2(167,:) + inMv1(3,:) .* inMv2(168,:) + inMv1(7,:) .* inMv2(182,:) + inMv1(8,:) .* inMv2(197,:);
    outMv(107,:) = -inMv1(1,:) .* inMv2(167,:) + inMv1(3,:) .* inMv2(169,:) + inMv1(7,:) .* inMv2(183,:) + inMv1(8,:) .* inMv2(198,:);
    outMv(108,:) = -inMv1(1,:) .* inMv2(168,:) - inMv1(2,:) .* inMv2(169,:) + inMv1(7,:) .* inMv2(184,:) + inMv1(8,:) .* inMv2(199,:);
    outMv(109,:) = -inMv1(4,:) .* inMv2(170,:) - inMv1(5,:) .* inMv2(171,:) - inMv1(6,:) .* inMv2(175,:) + inMv1(8,:) .* inMv2(200,:);
    outMv(110,:) = -inMv1(3,:) .* inMv2(170,:) - inMv1(5,:) .* inMv2(172,:) - inMv1(6,:) .* inMv2(176,:) + inMv1(8,:) .* inMv2(201,:);
    outMv(111,:) = inMv1(2,:) .* inMv2(170,:) - inMv1(5,:) .* inMv2(173,:) - inMv1(6,:) .* inMv2(177,:) + inMv1(8,:) .* inMv2(202,:);
    outMv(112,:) = -inMv1(1,:) .* inMv2(170,:) - inMv1(5,:) .* inMv2(174,:) - inMv1(6,:) .* inMv2(178,:) + inMv1(8,:) .* inMv2(203,:);
    outMv(113,:) = -inMv1(3,:) .* inMv2(171,:) + inMv1(4,:) .* inMv2(172,:) - inMv1(6,:) .* inMv2(179,:) + inMv1(8,:) .* inMv2(204,:);
    outMv(114,:) = inMv1(2,:) .* inMv2(171,:) + inMv1(4,:) .* inMv2(173,:) - inMv1(6,:) .* inMv2(180,:) + inMv1(8,:) .* inMv2(205,:);
    outMv(115,:) = -inMv1(1,:) .* inMv2(171,:) + inMv1(4,:) .* inMv2(174,:) - inMv1(6,:) .* inMv2(181,:) + inMv1(8,:) .* inMv2(206,:);
    outMv(116,:) = inMv1(2,:) .* inMv2(172,:) + inMv1(3,:) .* inMv2(173,:) - inMv1(6,:) .* inMv2(182,:) + inMv1(8,:) .* inMv2(207,:);
    outMv(117,:) = -inMv1(1,:) .* inMv2(172,:) + inMv1(3,:) .* inMv2(174,:) - inMv1(6,:) .* inMv2(183,:) + inMv1(8,:) .* inMv2(208,:);
    outMv(118,:) = -inMv1(1,:) .* inMv2(173,:) - inMv1(2,:) .* inMv2(174,:) - inMv1(6,:) .* inMv2(184,:) + inMv1(8,:) .* inMv2(209,:);
    outMv(119,:) = -inMv1(3,:) .* inMv2(175,:) + inMv1(4,:) .* inMv2(176,:) + inMv1(5,:) .* inMv2(179,:) + inMv1(8,:) .* inMv2(210,:);
    outMv(120,:) = inMv1(2,:) .* inMv2(175,:) + inMv1(4,:) .* inMv2(177,:) + inMv1(5,:) .* inMv2(180,:) + inMv1(8,:) .* inMv2(211,:);
    outMv(121,:) = -inMv1(1,:) .* inMv2(175,:) + inMv1(4,:) .* inMv2(178,:) + inMv1(5,:) .* inMv2(181,:) + inMv1(8,:) .* inMv2(212,:);
    outMv(122,:) = inMv1(2,:) .* inMv2(176,:) + inMv1(3,:) .* inMv2(177,:) + inMv1(5,:) .* inMv2(182,:) + inMv1(8,:) .* inMv2(213,:);
    outMv(123,:) = -inMv1(1,:) .* inMv2(176,:) + inMv1(3,:) .* inMv2(178,:) + inMv1(5,:) .* inMv2(183,:) + inMv1(8,:) .* inMv2(214,:);
    outMv(124,:) = -inMv1(1,:) .* inMv2(177,:) - inMv1(2,:) .* inMv2(178,:) + inMv1(5,:) .* inMv2(184,:) + inMv1(8,:) .* inMv2(215,:);
    outMv(125,:) = inMv1(2,:) .* inMv2(179,:) + inMv1(3,:) .* inMv2(180,:) - inMv1(4,:) .* inMv2(182,:) + inMv1(8,:) .* inMv2(216,:);
    outMv(126,:) = -inMv1(1,:) .* inMv2(179,:) + inMv1(3,:) .* inMv2(181,:) - inMv1(4,:) .* inMv2(183,:) + inMv1(8,:) .* inMv2(217,:);
    outMv(127,:) = -inMv1(1,:) .* inMv2(180,:) - inMv1(2,:) .* inMv2(181,:) - inMv1(4,:) .* inMv2(184,:) + inMv1(8,:) .* inMv2(218,:);
    outMv(128,:) = -inMv1(1,:) .* inMv2(182,:) - inMv1(2,:) .* inMv2(183,:) - inMv1(3,:) .* inMv2(184,:) + inMv1(8,:) .* inMv2(219,:);
    outMv(129,:) = -inMv1(4,:) .* inMv2(185,:) - inMv1(5,:) .* inMv2(186,:) - inMv1(6,:) .* inMv2(190,:) - inMv1(7,:) .* inMv2(200,:);
    outMv(130,:) = -inMv1(3,:) .* inMv2(185,:) - inMv1(5,:) .* inMv2(187,:) - inMv1(6,:) .* inMv2(191,:) - inMv1(7,:) .* inMv2(201,:);
    outMv(131,:) = inMv1(2,:) .* inMv2(185,:) - inMv1(5,:) .* inMv2(188,:) - inMv1(6,:) .* inMv2(192,:) - inMv1(7,:) .* inMv2(202,:);
    outMv(132,:) = -inMv1(1,:) .* inMv2(185,:) - inMv1(5,:) .* inMv2(189,:) - inMv1(6,:) .* inMv2(193,:) - inMv1(7,:) .* inMv2(203,:);
    outMv(133,:) = -inMv1(3,:) .* inMv2(186,:) + inMv1(4,:) .* inMv2(187,:) - inMv1(6,:) .* inMv2(194,:) - inMv1(7,:) .* inMv2(204,:);
    outMv(134,:) = inMv1(2,:) .* inMv2(186,:) + inMv1(4,:) .* inMv2(188,:) - inMv1(6,:) .* inMv2(195,:) - inMv1(7,:) .* inMv2(205,:);
    outMv(135,:) = -inMv1(1,:) .* inMv2(186,:) + inMv1(4,:) .* inMv2(189,:) - inMv1(6,:) .* inMv2(196,:) - inMv1(7,:) .* inMv2(206,:);
    outMv(136,:) = inMv1(2,:) .* inMv2(187,:) + inMv1(3,:) .* inMv2(188,:) - inMv1(6,:) .* inMv2(197,:) - inMv1(7,:) .* inMv2(207,:);
    outMv(137,:) = -inMv1(1,:) .* inMv2(187,:) + inMv1(3,:) .* inMv2(189,:) - inMv1(6,:) .* inMv2(198,:) - inMv1(7,:) .* inMv2(208,:);
    outMv(138,:) = -inMv1(1,:) .* inMv2(188,:) - inMv1(2,:) .* inMv2(189,:) - inMv1(6,:) .* inMv2(199,:) - inMv1(7,:) .* inMv2(209,:);
    outMv(139,:) = -inMv1(3,:) .* inMv2(190,:) + inMv1(4,:) .* inMv2(191,:) + inMv1(5,:) .* inMv2(194,:) - inMv1(7,:) .* inMv2(210,:);
    outMv(140,:) = inMv1(2,:) .* inMv2(190,:) + inMv1(4,:) .* inMv2(192,:) + inMv1(5,:) .* inMv2(195,:) - inMv1(7,:) .* inMv2(211,:);
    outMv(141,:) = -inMv1(1,:) .* inMv2(190,:) + inMv1(4,:) .* inMv2(193,:) + inMv1(5,:) .* inMv2(196,:) - inMv1(7,:) .* inMv2(212,:);
    outMv(142,:) = inMv1(2,:) .* inMv2(191,:) + inMv1(3,:) .* inMv2(192,:) + inMv1(5,:) .* inMv2(197,:) - inMv1(7,:) .* inMv2(213,:);
    outMv(143,:) = -inMv1(1,:) .* inMv2(191,:) + inMv1(3,:) .* inMv2(193,:) + inMv1(5,:) .* inMv2(198,:) - inMv1(7,:) .* inMv2(214,:);
    outMv(144,:) = -inMv1(1,:) .* inMv2(192,:) - inMv1(2,:) .* inMv2(193,:) + inMv1(5,:) .* inMv2(199,:) - inMv1(7,:) .* inMv2(215,:);
    outMv(145,:) = inMv1(2,:) .* inMv2(194,:) + inMv1(3,:) .* inMv2(195,:) - inMv1(4,:) .* inMv2(197,:) - inMv1(7,:) .* inMv2(216,:);
    outMv(146,:) = -inMv1(1,:) .* inMv2(194,:) + inMv1(3,:) .* inMv2(196,:) - inMv1(4,:) .* inMv2(198,:) - inMv1(7,:) .* inMv2(217,:);
    outMv(147,:) = -inMv1(1,:) .* inMv2(195,:) - inMv1(2,:) .* inMv2(196,:) - inMv1(4,:) .* inMv2(199,:) - inMv1(7,:) .* inMv2(218,:);
    outMv(148,:) = -inMv1(1,:) .* inMv2(197,:) - inMv1(2,:) .* inMv2(198,:) - inMv1(3,:) .* inMv2(199,:) - inMv1(7,:) .* inMv2(219,:);
    outMv(149,:) = -inMv1(3,:) .* inMv2(200,:) + inMv1(4,:) .* inMv2(201,:) + inMv1(5,:) .* inMv2(204,:) + inMv1(6,:) .* inMv2(210,:);
    outMv(150,:) = inMv1(2,:) .* inMv2(200,:) + inMv1(4,:) .* inMv2(202,:) + inMv1(5,:) .* inMv2(205,:) + inMv1(6,:) .* inMv2(211,:);
    outMv(151,:) = -inMv1(1,:) .* inMv2(200,:) + inMv1(4,:) .* inMv2(203,:) + inMv1(5,:) .* inMv2(206,:) + inMv1(6,:) .* inMv2(212,:);
    outMv(152,:) = inMv1(2,:) .* inMv2(201,:) + inMv1(3,:) .* inMv2(202,:) + inMv1(5,:) .* inMv2(207,:) + inMv1(6,:) .* inMv2(213,:);
    outMv(153,:) = -inMv1(1,:) .* inMv2(201,:) + inMv1(3,:) .* inMv2(203,:) + inMv1(5,:) .* inMv2(208,:) + inMv1(6,:) .* inMv2(214,:);
    outMv(154,:) = -inMv1(1,:) .* inMv2(202,:) - inMv1(2,:) .* inMv2(203,:) + inMv1(5,:) .* inMv2(209,:) + inMv1(6,:) .* inMv2(215,:);
    outMv(155,:) = inMv1(2,:) .* inMv2(204,:) + inMv1(3,:) .* inMv2(205,:) - inMv1(4,:) .* inMv2(207,:) + inMv1(6,:) .* inMv2(216,:);
    outMv(156,:) = -inMv1(1,:) .* inMv2(204,:) + inMv1(3,:) .* inMv2(206,:) - inMv1(4,:) .* inMv2(208,:) + inMv1(6,:) .* inMv2(217,:);
    outMv(157,:) = -inMv1(1,:) .* inMv2(205,:) - inMv1(2,:) .* inMv2(206,:) - inMv1(4,:) .* inMv2(209,:) + inMv1(6,:) .* inMv2(218,:);
    outMv(158,:) = -inMv1(1,:) .* inMv2(207,:) - inMv1(2,:) .* inMv2(208,:) - inMv1(3,:) .* inMv2(209,:) + inMv1(6,:) .* inMv2(219,:);
    outMv(159,:) = inMv1(2,:) .* inMv2(210,:) + inMv1(3,:) .* inMv2(211,:) - inMv1(4,:) .* inMv2(213,:) - inMv1(5,:) .* inMv2(216,:);
    outMv(160,:) = -inMv1(1,:) .* inMv2(210,:) + inMv1(3,:) .* inMv2(212,:) - inMv1(4,:) .* inMv2(214,:) - inMv1(5,:) .* inMv2(217,:);
    outMv(161,:) = -inMv1(1,:) .* inMv2(211,:) - inMv1(2,:) .* inMv2(212,:) - inMv1(4,:) .* inMv2(215,:) - inMv1(5,:) .* inMv2(218,:);
    outMv(162,:) = -inMv1(1,:) .* inMv2(213,:) - inMv1(2,:) .* inMv2(214,:) - inMv1(3,:) .* inMv2(215,:) - inMv1(5,:) .* inMv2(219,:);
    outMv(163,:) = -inMv1(1,:) .* inMv2(216,:) - inMv1(2,:) .* inMv2(217,:) - inMv1(3,:) .* inMv2(218,:) + inMv1(4,:) .* inMv2(219,:);
    outMv(164,:) = -inMv1(6,:) .* inMv2(220,:) - inMv1(7,:) .* inMv2(221,:) - inMv1(8,:) .* inMv2(227,:);
    outMv(165,:) = inMv1(5,:) .* inMv2(220,:) - inMv1(7,:) .* inMv2(222,:) - inMv1(8,:) .* inMv2(228,:);
    outMv(166,:) = -inMv1(4,:) .* inMv2(220,:) - inMv1(7,:) .* inMv2(223,:) - inMv1(8,:) .* inMv2(229,:);
    outMv(167,:) = -inMv1(3,:) .* inMv2(220,:) - inMv1(7,:) .* inMv2(224,:) - inMv1(8,:) .* inMv2(230,:);
    outMv(168,:) = inMv1(2,:) .* inMv2(220,:) - inMv1(7,:) .* inMv2(225,:) - inMv1(8,:) .* inMv2(231,:);
    outMv(169,:) = -inMv1(1,:) .* inMv2(220,:) - inMv1(7,:) .* inMv2(226,:) - inMv1(8,:) .* inMv2(232,:);
    outMv(170,:) = inMv1(5,:) .* inMv2(221,:) + inMv1(6,:) .* inMv2(222,:) - inMv1(8,:) .* inMv2(233,:);
    outMv(171,:) = -inMv1(4,:) .* inMv2(221,:) + inMv1(6,:) .* inMv2(223,:) - inMv1(8,:) .* inMv2(234,:);
    outMv(172,:) = -inMv1(3,:) .* inMv2(221,:) + inMv1(6,:) .* inMv2(224,:) - inMv1(8,:) .* inMv2(235,:);
    outMv(173,:) = inMv1(2,:) .* inMv2(221,:) + inMv1(6,:) .* inMv2(225,:) - inMv1(8,:) .* inMv2(236,:);
    outMv(174,:) = -inMv1(1,:) .* inMv2(221,:) + inMv1(6,:) .* inMv2(226,:) - inMv1(8,:) .* inMv2(237,:);
    outMv(175,:) = -inMv1(4,:) .* inMv2(222,:) - inMv1(5,:) .* inMv2(223,:) - inMv1(8,:) .* inMv2(238,:);
    outMv(176,:) = -inMv1(3,:) .* inMv2(222,:) - inMv1(5,:) .* inMv2(224,:) - inMv1(8,:) .* inMv2(239,:);
    outMv(177,:) = inMv1(2,:) .* inMv2(222,:) - inMv1(5,:) .* inMv2(225,:) - inMv1(8,:) .* inMv2(240,:);
    outMv(178,:) = -inMv1(1,:) .* inMv2(222,:) - inMv1(5,:) .* inMv2(226,:) - inMv1(8,:) .* inMv2(241,:);
    outMv(179,:) = -inMv1(3,:) .* inMv2(223,:) + inMv1(4,:) .* inMv2(224,:) - inMv1(8,:) .* inMv2(242,:);
    outMv(180,:) = inMv1(2,:) .* inMv2(223,:) + inMv1(4,:) .* inMv2(225,:) - inMv1(8,:) .* inMv2(243,:);
    outMv(181,:) = -inMv1(1,:) .* inMv2(223,:) + inMv1(4,:) .* inMv2(226,:) - inMv1(8,:) .* inMv2(244,:);
    outMv(182,:) = inMv1(2,:) .* inMv2(224,:) + inMv1(3,:) .* inMv2(225,:) - inMv1(8,:) .* inMv2(245,:);
    outMv(183,:) = -inMv1(1,:) .* inMv2(224,:) + inMv1(3,:) .* inMv2(226,:) - inMv1(8,:) .* inMv2(246,:);
    outMv(184,:) = -inMv1(1,:) .* inMv2(225,:) - inMv1(2,:) .* inMv2(226,:) - inMv1(8,:) .* inMv2(247,:);
    outMv(185,:) = inMv1(5,:) .* inMv2(227,:) + inMv1(6,:) .* inMv2(228,:) + inMv1(7,:) .* inMv2(233,:);
    outMv(186,:) = -inMv1(4,:) .* inMv2(227,:) + inMv1(6,:) .* inMv2(229,:) + inMv1(7,:) .* inMv2(234,:);
    outMv(187,:) = -inMv1(3,:) .* inMv2(227,:) + inMv1(6,:) .* inMv2(230,:) + inMv1(7,:) .* inMv2(235,:);
    outMv(188,:) = inMv1(2,:) .* inMv2(227,:) + inMv1(6,:) .* inMv2(231,:) + inMv1(7,:) .* inMv2(236,:);
    outMv(189,:) = -inMv1(1,:) .* inMv2(227,:) + inMv1(6,:) .* inMv2(232,:) + inMv1(7,:) .* inMv2(237,:);
    outMv(190,:) = -inMv1(4,:) .* inMv2(228,:) - inMv1(5,:) .* inMv2(229,:) + inMv1(7,:) .* inMv2(238,:);
    outMv(191,:) = -inMv1(3,:) .* inMv2(228,:) - inMv1(5,:) .* inMv2(230,:) + inMv1(7,:) .* inMv2(239,:);
    outMv(192,:) = inMv1(2,:) .* inMv2(228,:) - inMv1(5,:) .* inMv2(231,:) + inMv1(7,:) .* inMv2(240,:);
    outMv(193,:) = -inMv1(1,:) .* inMv2(228,:) - inMv1(5,:) .* inMv2(232,:) + inMv1(7,:) .* inMv2(241,:);
    outMv(194,:) = -inMv1(3,:) .* inMv2(229,:) + inMv1(4,:) .* inMv2(230,:) + inMv1(7,:) .* inMv2(242,:);
    outMv(195,:) = inMv1(2,:) .* inMv2(229,:) + inMv1(4,:) .* inMv2(231,:) + inMv1(7,:) .* inMv2(243,:);
    outMv(196,:) = -inMv1(1,:) .* inMv2(229,:) + inMv1(4,:) .* inMv2(232,:) + inMv1(7,:) .* inMv2(244,:);
    outMv(197,:) = inMv1(2,:) .* inMv2(230,:) + inMv1(3,:) .* inMv2(231,:) + inMv1(7,:) .* inMv2(245,:);
    outMv(198,:) = -inMv1(1,:) .* inMv2(230,:) + inMv1(3,:) .* inMv2(232,:) + inMv1(7,:) .* inMv2(246,:);
    outMv(199,:) = -inMv1(1,:) .* inMv2(231,:) - inMv1(2,:) .* inMv2(232,:) + inMv1(7,:) .* inMv2(247,:);
    outMv(200,:) = -inMv1(4,:) .* inMv2(233,:) - inMv1(5,:) .* inMv2(234,:) - inMv1(6,:) .* inMv2(238,:);
    outMv(201,:) = -inMv1(3,:) .* inMv2(233,:) - inMv1(5,:) .* inMv2(235,:) - inMv1(6,:) .* inMv2(239,:);
    outMv(202,:) = inMv1(2,:) .* inMv2(233,:) - inMv1(5,:) .* inMv2(236,:) - inMv1(6,:) .* inMv2(240,:);
    outMv(203,:) = -inMv1(1,:) .* inMv2(233,:) - inMv1(5,:) .* inMv2(237,:) - inMv1(6,:) .* inMv2(241,:);
    outMv(204,:) = -inMv1(3,:) .* inMv2(234,:) + inMv1(4,:) .* inMv2(235,:) - inMv1(6,:) .* inMv2(242,:);
    outMv(205,:) = inMv1(2,:) .* inMv2(234,:) + inMv1(4,:) .* inMv2(236,:) - inMv1(6,:) .* inMv2(243,:);
    outMv(206,:) = -inMv1(1,:) .* inMv2(234,:) + inMv1(4,:) .* inMv2(237,:) - inMv1(6,:) .* inMv2(244,:);
    outMv(207,:) = inMv1(2,:) .* inMv2(235,:) + inMv1(3,:) .* inMv2(236,:) - inMv1(6,:) .* inMv2(245,:);
    outMv(208,:) = -inMv1(1,:) .* inMv2(235,:) + inMv1(3,:) .* inMv2(237,:) - inMv1(6,:) .* inMv2(246,:);
    outMv(209,:) = -inMv1(1,:) .* inMv2(236,:) - inMv1(2,:) .* inMv2(237,:) - inMv1(6,:) .* inMv2(247,:);
    outMv(210,:) = -inMv1(3,:) .* inMv2(238,:) + inMv1(4,:) .* inMv2(239,:) + inMv1(5,:) .* inMv2(242,:);
    outMv(211,:) = inMv1(2,:) .* inMv2(238,:) + inMv1(4,:) .* inMv2(240,:) + inMv1(5,:) .* inMv2(243,:);
    outMv(212,:) = -inMv1(1,:) .* inMv2(238,:) + inMv1(4,:) .* inMv2(241,:) + inMv1(5,:) .* inMv2(244,:);
    outMv(213,:) = inMv1(2,:) .* inMv2(239,:) + inMv1(3,:) .* inMv2(240,:) + inMv1(5,:) .* inMv2(245,:);
    outMv(214,:) = -inMv1(1,:) .* inMv2(239,:) + inMv1(3,:) .* inMv2(241,:) + inMv1(5,:) .* inMv2(246,:);
    outMv(215,:) = -inMv1(1,:) .* inMv2(240,:) - inMv1(2,:) .* inMv2(241,:) + inMv1(5,:) .* inMv2(247,:);
    outMv(216,:) = inMv1(2,:) .* inMv2(242,:) + inMv1(3,:) .* inMv2(243,:) - inMv1(4,:) .* inMv2(245,:);
    outMv(217,:) = -inMv1(1,:) .* inMv2(242,:) + inMv1(3,:) .* inMv2(244,:) - inMv1(4,:) .* inMv2(246,:);
    outMv(218,:) = -inMv1(1,:) .* inMv2(243,:) - inMv1(2,:) .* inMv2(244,:) - inMv1(4,:) .* inMv2(247,:);
    outMv(219,:) = -inMv1(1,:) .* inMv2(245,:) - inMv1(2,:) .* inMv2(246,:) - inMv1(3,:) .* inMv2(247,:);
    outMv(220,:) = inMv1(7,:) .* inMv2(248,:) + inMv1(8,:) .* inMv2(249,:);
    outMv(221,:) = -inMv1(6,:) .* inMv2(248,:) + inMv1(8,:) .* inMv2(250,:);
    outMv(222,:) = inMv1(5,:) .* inMv2(248,:) + inMv1(8,:) .* inMv2(251,:);
    outMv(223,:) = -inMv1(4,:) .* inMv2(248,:) + inMv1(8,:) .* inMv2(252,:);
    outMv(224,:) = -inMv1(3,:) .* inMv2(248,:) + inMv1(8,:) .* inMv2(253,:);
    outMv(225,:) = inMv1(2,:) .* inMv2(248,:) + inMv1(8,:) .* inMv2(254,:);
    outMv(226,:) = -inMv1(1,:) .* inMv2(248,:) + inMv1(8,:) .* inMv2(255,:);
    outMv(227,:) = -inMv1(6,:) .* inMv2(249,:) - inMv1(7,:) .* inMv2(250,:);
    outMv(228,:) = inMv1(5,:) .* inMv2(249,:) - inMv1(7,:) .* inMv2(251,:);
    outMv(229,:) = -inMv1(4,:) .* inMv2(249,:) - inMv1(7,:) .* inMv2(252,:);
    outMv(230,:) = -inMv1(3,:) .* inMv2(249,:) - inMv1(7,:) .* inMv2(253,:);
    outMv(231,:) = inMv1(2,:) .* inMv2(249,:) - inMv1(7,:) .* inMv2(254,:);
    outMv(232,:) = -inMv1(1,:) .* inMv2(249,:) - inMv1(7,:) .* inMv2(255,:);
    outMv(233,:) = inMv1(5,:) .* inMv2(250,:) + inMv1(6,:) .* inMv2(251,:);
    outMv(234,:) = -inMv1(4,:) .* inMv2(250,:) + inMv1(6,:) .* inMv2(252,:);
    outMv(235,:) = -inMv1(3,:) .* inMv2(250,:) + inMv1(6,:) .* inMv2(253,:);
    outMv(236,:) = inMv1(2,:) .* inMv2(250,:) + inMv1(6,:) .* inMv2(254,:);
    outMv(237,:) = -inMv1(1,:) .* inMv2(250,:) + inMv1(6,:) .* inMv2(255,:);
    outMv(238,:) = -inMv1(4,:) .* inMv2(251,:) - inMv1(5,:) .* inMv2(252,:);
    outMv(239,:) = -inMv1(3,:) .* inMv2(251,:) - inMv1(5,:) .* inMv2(253,:);
    outMv(240,:) = inMv1(2,:) .* inMv2(251,:) - inMv1(5,:) .* inMv2(254,:);
    outMv(241,:) = -inMv1(1,:) .* inMv2(251,:) - inMv1(5,:) .* inMv2(255,:);
    outMv(242,:) = -inMv1(3,:) .* inMv2(252,:) + inMv1(4,:) .* inMv2(253,:);
    outMv(243,:) = inMv1(2,:) .* inMv2(252,:) + inMv1(4,:) .* inMv2(254,:);
    outMv(244,:) = -inMv1(1,:) .* inMv2(252,:) + inMv1(4,:) .* inMv2(255,:);
    outMv(245,:) = inMv1(2,:) .* inMv2(253,:) + inMv1(3,:) .* inMv2(254,:);
    outMv(246,:) = -inMv1(1,:) .* inMv2(253,:) + inMv1(3,:) .* inMv2(255,:);
    outMv(247,:) = -inMv1(1,:) .* inMv2(254,:) - inMv1(2,:) .* inMv2(255,:);
    outMv(248,:) = -inMv1(8,:) .* inMv2(256,:);
    outMv(249,:) = inMv1(7,:) .* inMv2(256,:);
    outMv(250,:) = -inMv1(6,:) .* inMv2(256,:);
    outMv(251,:) = inMv1(5,:) .* inMv2(256,:);
    outMv(252,:) = -inMv1(4,:) .* inMv2(256,:);
    outMv(253,:) = -inMv1(3,:) .* inMv2(256,:);
    outMv(254,:) = inMv1(2,:) .* inMv2(256,:);
    outMv(255,:) = -inMv1(1,:) .* inMv2(256,:);
end
