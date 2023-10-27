% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv3Kv7Mv(inMv1, inMv2)
    arguments
        inMv1 (56,:) double
        inMv2 (8,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(94,:) = -inMv1(35,:) .* inMv2(1,:) - inMv1(50,:) .* inMv2(2,:) - inMv1(55,:) .* inMv2(3,:) - inMv1(56,:) .* inMv2(4,:);
    outMv(95,:) = inMv1(34,:) .* inMv2(1,:) + inMv1(49,:) .* inMv2(2,:) + inMv1(54,:) .* inMv2(3,:) - inMv1(56,:) .* inMv2(5,:);
    outMv(96,:) = inMv1(33,:) .* inMv2(1,:) + inMv1(48,:) .* inMv2(2,:) + inMv1(53,:) .* inMv2(3,:) - inMv1(56,:) .* inMv2(6,:);
    outMv(97,:) = -inMv1(32,:) .* inMv2(1,:) - inMv1(47,:) .* inMv2(2,:) - inMv1(52,:) .* inMv2(3,:) - inMv1(56,:) .* inMv2(7,:);
    outMv(98,:) = inMv1(31,:) .* inMv2(1,:) + inMv1(46,:) .* inMv2(2,:) + inMv1(51,:) .* inMv2(3,:) - inMv1(56,:) .* inMv2(8,:);
    outMv(99,:) = -inMv1(30,:) .* inMv2(1,:) - inMv1(45,:) .* inMv2(2,:) + inMv1(54,:) .* inMv2(4,:) + inMv1(55,:) .* inMv2(5,:);
    outMv(100,:) = -inMv1(29,:) .* inMv2(1,:) - inMv1(44,:) .* inMv2(2,:) + inMv1(53,:) .* inMv2(4,:) + inMv1(55,:) .* inMv2(6,:);
    outMv(101,:) = inMv1(28,:) .* inMv2(1,:) + inMv1(43,:) .* inMv2(2,:) - inMv1(52,:) .* inMv2(4,:) + inMv1(55,:) .* inMv2(7,:);
    outMv(102,:) = -inMv1(27,:) .* inMv2(1,:) - inMv1(42,:) .* inMv2(2,:) + inMv1(51,:) .* inMv2(4,:) + inMv1(55,:) .* inMv2(8,:);
    outMv(103,:) = inMv1(26,:) .* inMv2(1,:) + inMv1(41,:) .* inMv2(2,:) + inMv1(53,:) .* inMv2(5,:) - inMv1(54,:) .* inMv2(6,:);
    outMv(104,:) = -inMv1(25,:) .* inMv2(1,:) - inMv1(40,:) .* inMv2(2,:) - inMv1(52,:) .* inMv2(5,:) - inMv1(54,:) .* inMv2(7,:);
    outMv(105,:) = inMv1(24,:) .* inMv2(1,:) + inMv1(39,:) .* inMv2(2,:) + inMv1(51,:) .* inMv2(5,:) - inMv1(54,:) .* inMv2(8,:);
    outMv(106,:) = -inMv1(23,:) .* inMv2(1,:) - inMv1(38,:) .* inMv2(2,:) - inMv1(52,:) .* inMv2(6,:) - inMv1(53,:) .* inMv2(7,:);
    outMv(107,:) = inMv1(22,:) .* inMv2(1,:) + inMv1(37,:) .* inMv2(2,:) + inMv1(51,:) .* inMv2(6,:) - inMv1(53,:) .* inMv2(8,:);
    outMv(108,:) = -inMv1(21,:) .* inMv2(1,:) - inMv1(36,:) .* inMv2(2,:) + inMv1(51,:) .* inMv2(7,:) + inMv1(52,:) .* inMv2(8,:);
    outMv(109,:) = inMv1(20,:) .* inMv2(1,:) - inMv1(45,:) .* inMv2(3,:) - inMv1(49,:) .* inMv2(4,:) - inMv1(50,:) .* inMv2(5,:);
    outMv(110,:) = inMv1(19,:) .* inMv2(1,:) - inMv1(44,:) .* inMv2(3,:) - inMv1(48,:) .* inMv2(4,:) - inMv1(50,:) .* inMv2(6,:);
    outMv(111,:) = -inMv1(18,:) .* inMv2(1,:) + inMv1(43,:) .* inMv2(3,:) + inMv1(47,:) .* inMv2(4,:) - inMv1(50,:) .* inMv2(7,:);
    outMv(112,:) = inMv1(17,:) .* inMv2(1,:) - inMv1(42,:) .* inMv2(3,:) - inMv1(46,:) .* inMv2(4,:) - inMv1(50,:) .* inMv2(8,:);
    outMv(113,:) = -inMv1(16,:) .* inMv2(1,:) + inMv1(41,:) .* inMv2(3,:) - inMv1(48,:) .* inMv2(5,:) + inMv1(49,:) .* inMv2(6,:);
    outMv(114,:) = inMv1(15,:) .* inMv2(1,:) - inMv1(40,:) .* inMv2(3,:) + inMv1(47,:) .* inMv2(5,:) + inMv1(49,:) .* inMv2(7,:);
    outMv(115,:) = -inMv1(14,:) .* inMv2(1,:) + inMv1(39,:) .* inMv2(3,:) - inMv1(46,:) .* inMv2(5,:) + inMv1(49,:) .* inMv2(8,:);
    outMv(116,:) = inMv1(13,:) .* inMv2(1,:) - inMv1(38,:) .* inMv2(3,:) + inMv1(47,:) .* inMv2(6,:) + inMv1(48,:) .* inMv2(7,:);
    outMv(117,:) = -inMv1(12,:) .* inMv2(1,:) + inMv1(37,:) .* inMv2(3,:) - inMv1(46,:) .* inMv2(6,:) + inMv1(48,:) .* inMv2(8,:);
    outMv(118,:) = inMv1(11,:) .* inMv2(1,:) - inMv1(36,:) .* inMv2(3,:) - inMv1(46,:) .* inMv2(7,:) - inMv1(47,:) .* inMv2(8,:);
    outMv(119,:) = inMv1(10,:) .* inMv2(1,:) + inMv1(41,:) .* inMv2(4,:) + inMv1(44,:) .* inMv2(5,:) - inMv1(45,:) .* inMv2(6,:);
    outMv(120,:) = -inMv1(9,:) .* inMv2(1,:) - inMv1(40,:) .* inMv2(4,:) - inMv1(43,:) .* inMv2(5,:) - inMv1(45,:) .* inMv2(7,:);
    outMv(121,:) = inMv1(8,:) .* inMv2(1,:) + inMv1(39,:) .* inMv2(4,:) + inMv1(42,:) .* inMv2(5,:) - inMv1(45,:) .* inMv2(8,:);
    outMv(122,:) = -inMv1(7,:) .* inMv2(1,:) - inMv1(38,:) .* inMv2(4,:) - inMv1(43,:) .* inMv2(6,:) - inMv1(44,:) .* inMv2(7,:);
    outMv(123,:) = inMv1(6,:) .* inMv2(1,:) + inMv1(37,:) .* inMv2(4,:) + inMv1(42,:) .* inMv2(6,:) - inMv1(44,:) .* inMv2(8,:);
    outMv(124,:) = -inMv1(5,:) .* inMv2(1,:) - inMv1(36,:) .* inMv2(4,:) + inMv1(42,:) .* inMv2(7,:) + inMv1(43,:) .* inMv2(8,:);
    outMv(125,:) = inMv1(4,:) .* inMv2(1,:) - inMv1(38,:) .* inMv2(5,:) + inMv1(40,:) .* inMv2(6,:) + inMv1(41,:) .* inMv2(7,:);
    outMv(126,:) = -inMv1(3,:) .* inMv2(1,:) + inMv1(37,:) .* inMv2(5,:) - inMv1(39,:) .* inMv2(6,:) + inMv1(41,:) .* inMv2(8,:);
    outMv(127,:) = inMv1(2,:) .* inMv2(1,:) - inMv1(36,:) .* inMv2(5,:) - inMv1(39,:) .* inMv2(7,:) - inMv1(40,:) .* inMv2(8,:);
    outMv(128,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(36,:) .* inMv2(6,:) - inMv1(37,:) .* inMv2(7,:) - inMv1(38,:) .* inMv2(8,:);
    outMv(129,:) = inMv1(20,:) .* inMv2(2,:) + inMv1(30,:) .* inMv2(3,:) + inMv1(34,:) .* inMv2(4,:) + inMv1(35,:) .* inMv2(5,:);
    outMv(130,:) = inMv1(19,:) .* inMv2(2,:) + inMv1(29,:) .* inMv2(3,:) + inMv1(33,:) .* inMv2(4,:) + inMv1(35,:) .* inMv2(6,:);
    outMv(131,:) = -inMv1(18,:) .* inMv2(2,:) - inMv1(28,:) .* inMv2(3,:) - inMv1(32,:) .* inMv2(4,:) + inMv1(35,:) .* inMv2(7,:);
    outMv(132,:) = inMv1(17,:) .* inMv2(2,:) + inMv1(27,:) .* inMv2(3,:) + inMv1(31,:) .* inMv2(4,:) + inMv1(35,:) .* inMv2(8,:);
    outMv(133,:) = -inMv1(16,:) .* inMv2(2,:) - inMv1(26,:) .* inMv2(3,:) + inMv1(33,:) .* inMv2(5,:) - inMv1(34,:) .* inMv2(6,:);
    outMv(134,:) = inMv1(15,:) .* inMv2(2,:) + inMv1(25,:) .* inMv2(3,:) - inMv1(32,:) .* inMv2(5,:) - inMv1(34,:) .* inMv2(7,:);
    outMv(135,:) = -inMv1(14,:) .* inMv2(2,:) - inMv1(24,:) .* inMv2(3,:) + inMv1(31,:) .* inMv2(5,:) - inMv1(34,:) .* inMv2(8,:);
    outMv(136,:) = inMv1(13,:) .* inMv2(2,:) + inMv1(23,:) .* inMv2(3,:) - inMv1(32,:) .* inMv2(6,:) - inMv1(33,:) .* inMv2(7,:);
    outMv(137,:) = -inMv1(12,:) .* inMv2(2,:) - inMv1(22,:) .* inMv2(3,:) + inMv1(31,:) .* inMv2(6,:) - inMv1(33,:) .* inMv2(8,:);
    outMv(138,:) = inMv1(11,:) .* inMv2(2,:) + inMv1(21,:) .* inMv2(3,:) + inMv1(31,:) .* inMv2(7,:) + inMv1(32,:) .* inMv2(8,:);
    outMv(139,:) = inMv1(10,:) .* inMv2(2,:) - inMv1(26,:) .* inMv2(4,:) - inMv1(29,:) .* inMv2(5,:) + inMv1(30,:) .* inMv2(6,:);
    outMv(140,:) = -inMv1(9,:) .* inMv2(2,:) + inMv1(25,:) .* inMv2(4,:) + inMv1(28,:) .* inMv2(5,:) + inMv1(30,:) .* inMv2(7,:);
    outMv(141,:) = inMv1(8,:) .* inMv2(2,:) - inMv1(24,:) .* inMv2(4,:) - inMv1(27,:) .* inMv2(5,:) + inMv1(30,:) .* inMv2(8,:);
    outMv(142,:) = -inMv1(7,:) .* inMv2(2,:) + inMv1(23,:) .* inMv2(4,:) + inMv1(28,:) .* inMv2(6,:) + inMv1(29,:) .* inMv2(7,:);
    outMv(143,:) = inMv1(6,:) .* inMv2(2,:) - inMv1(22,:) .* inMv2(4,:) - inMv1(27,:) .* inMv2(6,:) + inMv1(29,:) .* inMv2(8,:);
    outMv(144,:) = -inMv1(5,:) .* inMv2(2,:) + inMv1(21,:) .* inMv2(4,:) - inMv1(27,:) .* inMv2(7,:) - inMv1(28,:) .* inMv2(8,:);
    outMv(145,:) = inMv1(4,:) .* inMv2(2,:) + inMv1(23,:) .* inMv2(5,:) - inMv1(25,:) .* inMv2(6,:) - inMv1(26,:) .* inMv2(7,:);
    outMv(146,:) = -inMv1(3,:) .* inMv2(2,:) - inMv1(22,:) .* inMv2(5,:) + inMv1(24,:) .* inMv2(6,:) - inMv1(26,:) .* inMv2(8,:);
    outMv(147,:) = inMv1(2,:) .* inMv2(2,:) + inMv1(21,:) .* inMv2(5,:) + inMv1(24,:) .* inMv2(7,:) + inMv1(25,:) .* inMv2(8,:);
    outMv(148,:) = inMv1(1,:) .* inMv2(2,:) + inMv1(21,:) .* inMv2(6,:) + inMv1(22,:) .* inMv2(7,:) + inMv1(23,:) .* inMv2(8,:);
    outMv(149,:) = inMv1(10,:) .* inMv2(3,:) + inMv1(16,:) .* inMv2(4,:) + inMv1(19,:) .* inMv2(5,:) - inMv1(20,:) .* inMv2(6,:);
    outMv(150,:) = -inMv1(9,:) .* inMv2(3,:) - inMv1(15,:) .* inMv2(4,:) - inMv1(18,:) .* inMv2(5,:) - inMv1(20,:) .* inMv2(7,:);
    outMv(151,:) = inMv1(8,:) .* inMv2(3,:) + inMv1(14,:) .* inMv2(4,:) + inMv1(17,:) .* inMv2(5,:) - inMv1(20,:) .* inMv2(8,:);
    outMv(152,:) = -inMv1(7,:) .* inMv2(3,:) - inMv1(13,:) .* inMv2(4,:) - inMv1(18,:) .* inMv2(6,:) - inMv1(19,:) .* inMv2(7,:);
    outMv(153,:) = inMv1(6,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(4,:) + inMv1(17,:) .* inMv2(6,:) - inMv1(19,:) .* inMv2(8,:);
    outMv(154,:) = -inMv1(5,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(4,:) + inMv1(17,:) .* inMv2(7,:) + inMv1(18,:) .* inMv2(8,:);
    outMv(155,:) = inMv1(4,:) .* inMv2(3,:) - inMv1(13,:) .* inMv2(5,:) + inMv1(15,:) .* inMv2(6,:) + inMv1(16,:) .* inMv2(7,:);
    outMv(156,:) = -inMv1(3,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(5,:) - inMv1(14,:) .* inMv2(6,:) + inMv1(16,:) .* inMv2(8,:);
    outMv(157,:) = inMv1(2,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(5,:) - inMv1(14,:) .* inMv2(7,:) - inMv1(15,:) .* inMv2(8,:);
    outMv(158,:) = inMv1(1,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(6,:) - inMv1(12,:) .* inMv2(7,:) - inMv1(13,:) .* inMv2(8,:);
    outMv(159,:) = inMv1(4,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(5,:) - inMv1(9,:) .* inMv2(6,:) - inMv1(10,:) .* inMv2(7,:);
    outMv(160,:) = -inMv1(3,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(5,:) + inMv1(8,:) .* inMv2(6,:) - inMv1(10,:) .* inMv2(8,:);
    outMv(161,:) = inMv1(2,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(5,:) + inMv1(8,:) .* inMv2(7,:) + inMv1(9,:) .* inMv2(8,:);
    outMv(162,:) = inMv1(1,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(6,:) + inMv1(6,:) .* inMv2(7,:) + inMv1(7,:) .* inMv2(8,:);
    outMv(163,:) = inMv1(1,:) .* inMv2(5,:) - inMv1(2,:) .* inMv2(6,:) - inMv1(3,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(8,:);
    outMv(220,:) = -inMv1(51,:) .* inMv2(8,:) + inMv1(52,:) .* inMv2(7,:) - inMv1(53,:) .* inMv2(6,:) + inMv1(54,:) .* inMv2(5,:) - inMv1(55,:) .* inMv2(4,:) + inMv1(56,:) .* inMv2(3,:);
    outMv(221,:) = inMv1(46,:) .* inMv2(8,:) - inMv1(47,:) .* inMv2(7,:) + inMv1(48,:) .* inMv2(6,:) - inMv1(49,:) .* inMv2(5,:) + inMv1(50,:) .* inMv2(4,:) - inMv1(56,:) .* inMv2(2,:);
    outMv(222,:) = -inMv1(42,:) .* inMv2(8,:) + inMv1(43,:) .* inMv2(7,:) - inMv1(44,:) .* inMv2(6,:) + inMv1(45,:) .* inMv2(5,:) - inMv1(50,:) .* inMv2(3,:) + inMv1(55,:) .* inMv2(2,:);
    outMv(223,:) = inMv1(39,:) .* inMv2(8,:) - inMv1(40,:) .* inMv2(7,:) + inMv1(41,:) .* inMv2(6,:) - inMv1(45,:) .* inMv2(4,:) + inMv1(49,:) .* inMv2(3,:) - inMv1(54,:) .* inMv2(2,:);
    outMv(224,:) = inMv1(37,:) .* inMv2(8,:) - inMv1(38,:) .* inMv2(7,:) + inMv1(41,:) .* inMv2(5,:) - inMv1(44,:) .* inMv2(4,:) + inMv1(48,:) .* inMv2(3,:) - inMv1(53,:) .* inMv2(2,:);
    outMv(225,:) = -inMv1(36,:) .* inMv2(8,:) + inMv1(38,:) .* inMv2(6,:) - inMv1(40,:) .* inMv2(5,:) + inMv1(43,:) .* inMv2(4,:) - inMv1(47,:) .* inMv2(3,:) + inMv1(52,:) .* inMv2(2,:);
    outMv(226,:) = inMv1(36,:) .* inMv2(7,:) - inMv1(37,:) .* inMv2(6,:) + inMv1(39,:) .* inMv2(5,:) - inMv1(42,:) .* inMv2(4,:) + inMv1(46,:) .* inMv2(3,:) - inMv1(51,:) .* inMv2(2,:);
    outMv(227,:) = -inMv1(31,:) .* inMv2(8,:) + inMv1(32,:) .* inMv2(7,:) - inMv1(33,:) .* inMv2(6,:) + inMv1(34,:) .* inMv2(5,:) - inMv1(35,:) .* inMv2(4,:) + inMv1(56,:) .* inMv2(1,:);
    outMv(228,:) = inMv1(27,:) .* inMv2(8,:) - inMv1(28,:) .* inMv2(7,:) + inMv1(29,:) .* inMv2(6,:) - inMv1(30,:) .* inMv2(5,:) + inMv1(35,:) .* inMv2(3,:) - inMv1(55,:) .* inMv2(1,:);
    outMv(229,:) = -inMv1(24,:) .* inMv2(8,:) + inMv1(25,:) .* inMv2(7,:) - inMv1(26,:) .* inMv2(6,:) + inMv1(30,:) .* inMv2(4,:) - inMv1(34,:) .* inMv2(3,:) + inMv1(54,:) .* inMv2(1,:);
    outMv(230,:) = -inMv1(22,:) .* inMv2(8,:) + inMv1(23,:) .* inMv2(7,:) - inMv1(26,:) .* inMv2(5,:) + inMv1(29,:) .* inMv2(4,:) - inMv1(33,:) .* inMv2(3,:) + inMv1(53,:) .* inMv2(1,:);
    outMv(231,:) = inMv1(21,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(6,:) + inMv1(25,:) .* inMv2(5,:) - inMv1(28,:) .* inMv2(4,:) + inMv1(32,:) .* inMv2(3,:) - inMv1(52,:) .* inMv2(1,:);
    outMv(232,:) = -inMv1(21,:) .* inMv2(7,:) + inMv1(22,:) .* inMv2(6,:) - inMv1(24,:) .* inMv2(5,:) + inMv1(27,:) .* inMv2(4,:) - inMv1(31,:) .* inMv2(3,:) + inMv1(51,:) .* inMv2(1,:);
    outMv(233,:) = -inMv1(17,:) .* inMv2(8,:) + inMv1(18,:) .* inMv2(7,:) - inMv1(19,:) .* inMv2(6,:) + inMv1(20,:) .* inMv2(5,:) - inMv1(35,:) .* inMv2(2,:) + inMv1(50,:) .* inMv2(1,:);
    outMv(234,:) = inMv1(14,:) .* inMv2(8,:) - inMv1(15,:) .* inMv2(7,:) + inMv1(16,:) .* inMv2(6,:) - inMv1(20,:) .* inMv2(4,:) + inMv1(34,:) .* inMv2(2,:) - inMv1(49,:) .* inMv2(1,:);
    outMv(235,:) = inMv1(12,:) .* inMv2(8,:) - inMv1(13,:) .* inMv2(7,:) + inMv1(16,:) .* inMv2(5,:) - inMv1(19,:) .* inMv2(4,:) + inMv1(33,:) .* inMv2(2,:) - inMv1(48,:) .* inMv2(1,:);
    outMv(236,:) = -inMv1(11,:) .* inMv2(8,:) + inMv1(13,:) .* inMv2(6,:) - inMv1(15,:) .* inMv2(5,:) + inMv1(18,:) .* inMv2(4,:) - inMv1(32,:) .* inMv2(2,:) + inMv1(47,:) .* inMv2(1,:);
    outMv(237,:) = inMv1(11,:) .* inMv2(7,:) - inMv1(12,:) .* inMv2(6,:) + inMv1(14,:) .* inMv2(5,:) - inMv1(17,:) .* inMv2(4,:) + inMv1(31,:) .* inMv2(2,:) - inMv1(46,:) .* inMv2(1,:);
    outMv(238,:) = -inMv1(8,:) .* inMv2(8,:) + inMv1(9,:) .* inMv2(7,:) - inMv1(10,:) .* inMv2(6,:) + inMv1(20,:) .* inMv2(3,:) - inMv1(30,:) .* inMv2(2,:) + inMv1(45,:) .* inMv2(1,:);
    outMv(239,:) = -inMv1(6,:) .* inMv2(8,:) + inMv1(7,:) .* inMv2(7,:) - inMv1(10,:) .* inMv2(5,:) + inMv1(19,:) .* inMv2(3,:) - inMv1(29,:) .* inMv2(2,:) + inMv1(44,:) .* inMv2(1,:);
    outMv(240,:) = inMv1(5,:) .* inMv2(8,:) - inMv1(7,:) .* inMv2(6,:) + inMv1(9,:) .* inMv2(5,:) - inMv1(18,:) .* inMv2(3,:) + inMv1(28,:) .* inMv2(2,:) - inMv1(43,:) .* inMv2(1,:);
    outMv(241,:) = -inMv1(5,:) .* inMv2(7,:) + inMv1(6,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(5,:) + inMv1(17,:) .* inMv2(3,:) - inMv1(27,:) .* inMv2(2,:) + inMv1(42,:) .* inMv2(1,:);
    outMv(242,:) = inMv1(3,:) .* inMv2(8,:) - inMv1(4,:) .* inMv2(7,:) + inMv1(10,:) .* inMv2(4,:) - inMv1(16,:) .* inMv2(3,:) + inMv1(26,:) .* inMv2(2,:) - inMv1(41,:) .* inMv2(1,:);
    outMv(243,:) = -inMv1(2,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(4,:) + inMv1(15,:) .* inMv2(3,:) - inMv1(25,:) .* inMv2(2,:) + inMv1(40,:) .* inMv2(1,:);
    outMv(244,:) = inMv1(2,:) .* inMv2(7,:) - inMv1(3,:) .* inMv2(6,:) + inMv1(8,:) .* inMv2(4,:) - inMv1(14,:) .* inMv2(3,:) + inMv1(24,:) .* inMv2(2,:) - inMv1(39,:) .* inMv2(1,:);
    outMv(245,:) = -inMv1(1,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(4,:) + inMv1(13,:) .* inMv2(3,:) - inMv1(23,:) .* inMv2(2,:) + inMv1(38,:) .* inMv2(1,:);
    outMv(246,:) = inMv1(1,:) .* inMv2(7,:) - inMv1(3,:) .* inMv2(5,:) + inMv1(6,:) .* inMv2(4,:) - inMv1(12,:) .* inMv2(3,:) + inMv1(22,:) .* inMv2(2,:) - inMv1(37,:) .* inMv2(1,:);
    outMv(247,:) = -inMv1(1,:) .* inMv2(6,:) + inMv1(2,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(4,:) + inMv1(11,:) .* inMv2(3,:) - inMv1(21,:) .* inMv2(2,:) + inMv1(36,:) .* inMv2(1,:);
end
