
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpKv8MvMv(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(256,:);
    outMv(10,:) = inMv1(1,:) .* inMv2(247,:);
    outMv(11,:) = -inMv1(1,:) .* inMv2(246,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(245,:);
    outMv(13,:) = -inMv1(1,:) .* inMv2(244,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(243,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(242,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(241,:);
    outMv(17,:) = -inMv1(1,:) .* inMv2(240,:);
    outMv(18,:) = inMv1(1,:) .* inMv2(239,:);
    outMv(19,:) = inMv1(1,:) .* inMv2(238,:);
    outMv(20,:) = -inMv1(1,:) .* inMv2(237,:);
    outMv(21,:) = inMv1(1,:) .* inMv2(236,:);
    outMv(22,:) = -inMv1(1,:) .* inMv2(235,:);
    outMv(23,:) = -inMv1(1,:) .* inMv2(234,:);
    outMv(24,:) = inMv1(1,:) .* inMv2(233,:);
    outMv(25,:) = inMv1(1,:) .* inMv2(232,:);
    outMv(26,:) = -inMv1(1,:) .* inMv2(231,:);
    outMv(27,:) = inMv1(1,:) .* inMv2(230,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(229,:);
    outMv(29,:) = -inMv1(1,:) .* inMv2(228,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(227,:);
    outMv(31,:) = -inMv1(1,:) .* inMv2(226,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(225,:);
    outMv(33,:) = -inMv1(1,:) .* inMv2(224,:);
    outMv(34,:) = -inMv1(1,:) .* inMv2(223,:);
    outMv(35,:) = inMv1(1,:) .* inMv2(222,:);
    outMv(36,:) = -inMv1(1,:) .* inMv2(221,:);
    outMv(37,:) = inMv1(1,:) .* inMv2(220,:);
    outMv(94,:) = inMv1(1,:) .* inMv2(163,:);
    outMv(95,:) = -inMv1(1,:) .* inMv2(162,:);
    outMv(96,:) = -inMv1(1,:) .* inMv2(161,:);
    outMv(97,:) = inMv1(1,:) .* inMv2(160,:);
    outMv(98,:) = -inMv1(1,:) .* inMv2(159,:);
    outMv(99,:) = inMv1(1,:) .* inMv2(158,:);
    outMv(100,:) = inMv1(1,:) .* inMv2(157,:);
    outMv(101,:) = -inMv1(1,:) .* inMv2(156,:);
    outMv(102,:) = inMv1(1,:) .* inMv2(155,:);
    outMv(103,:) = -inMv1(1,:) .* inMv2(154,:);
    outMv(104,:) = inMv1(1,:) .* inMv2(153,:);
    outMv(105,:) = -inMv1(1,:) .* inMv2(152,:);
    outMv(106,:) = inMv1(1,:) .* inMv2(151,:);
    outMv(107,:) = -inMv1(1,:) .* inMv2(150,:);
    outMv(108,:) = inMv1(1,:) .* inMv2(149,:);
    outMv(109,:) = -inMv1(1,:) .* inMv2(148,:);
    outMv(110,:) = -inMv1(1,:) .* inMv2(147,:);
    outMv(111,:) = inMv1(1,:) .* inMv2(146,:);
    outMv(112,:) = -inMv1(1,:) .* inMv2(145,:);
    outMv(113,:) = inMv1(1,:) .* inMv2(144,:);
    outMv(114,:) = -inMv1(1,:) .* inMv2(143,:);
    outMv(115,:) = inMv1(1,:) .* inMv2(142,:);
    outMv(116,:) = -inMv1(1,:) .* inMv2(141,:);
    outMv(117,:) = inMv1(1,:) .* inMv2(140,:);
    outMv(118,:) = -inMv1(1,:) .* inMv2(139,:);
    outMv(119,:) = -inMv1(1,:) .* inMv2(138,:);
    outMv(120,:) = inMv1(1,:) .* inMv2(137,:);
    outMv(121,:) = -inMv1(1,:) .* inMv2(136,:);
    outMv(122,:) = inMv1(1,:) .* inMv2(135,:);
    outMv(123,:) = -inMv1(1,:) .* inMv2(134,:);
    outMv(124,:) = inMv1(1,:) .* inMv2(133,:);
    outMv(125,:) = -inMv1(1,:) .* inMv2(132,:);
    outMv(126,:) = inMv1(1,:) .* inMv2(131,:);
    outMv(127,:) = -inMv1(1,:) .* inMv2(130,:);
    outMv(128,:) = -inMv1(1,:) .* inMv2(129,:);
    outMv(129,:) = inMv1(1,:) .* inMv2(128,:);
    outMv(130,:) = inMv1(1,:) .* inMv2(127,:);
    outMv(131,:) = -inMv1(1,:) .* inMv2(126,:);
    outMv(132,:) = inMv1(1,:) .* inMv2(125,:);
    outMv(133,:) = -inMv1(1,:) .* inMv2(124,:);
    outMv(134,:) = inMv1(1,:) .* inMv2(123,:);
    outMv(135,:) = -inMv1(1,:) .* inMv2(122,:);
    outMv(136,:) = inMv1(1,:) .* inMv2(121,:);
    outMv(137,:) = -inMv1(1,:) .* inMv2(120,:);
    outMv(138,:) = inMv1(1,:) .* inMv2(119,:);
    outMv(139,:) = inMv1(1,:) .* inMv2(118,:);
    outMv(140,:) = -inMv1(1,:) .* inMv2(117,:);
    outMv(141,:) = inMv1(1,:) .* inMv2(116,:);
    outMv(142,:) = -inMv1(1,:) .* inMv2(115,:);
    outMv(143,:) = inMv1(1,:) .* inMv2(114,:);
    outMv(144,:) = -inMv1(1,:) .* inMv2(113,:);
    outMv(145,:) = inMv1(1,:) .* inMv2(112,:);
    outMv(146,:) = -inMv1(1,:) .* inMv2(111,:);
    outMv(147,:) = inMv1(1,:) .* inMv2(110,:);
    outMv(148,:) = inMv1(1,:) .* inMv2(109,:);
    outMv(149,:) = -inMv1(1,:) .* inMv2(108,:);
    outMv(150,:) = inMv1(1,:) .* inMv2(107,:);
    outMv(151,:) = -inMv1(1,:) .* inMv2(106,:);
    outMv(152,:) = inMv1(1,:) .* inMv2(105,:);
    outMv(153,:) = -inMv1(1,:) .* inMv2(104,:);
    outMv(154,:) = inMv1(1,:) .* inMv2(103,:);
    outMv(155,:) = -inMv1(1,:) .* inMv2(102,:);
    outMv(156,:) = inMv1(1,:) .* inMv2(101,:);
    outMv(157,:) = -inMv1(1,:) .* inMv2(100,:);
    outMv(158,:) = -inMv1(1,:) .* inMv2(99,:);
    outMv(159,:) = inMv1(1,:) .* inMv2(98,:);
    outMv(160,:) = -inMv1(1,:) .* inMv2(97,:);
    outMv(161,:) = inMv1(1,:) .* inMv2(96,:);
    outMv(162,:) = inMv1(1,:) .* inMv2(95,:);
    outMv(163,:) = -inMv1(1,:) .* inMv2(94,:);
    outMv(220,:) = -inMv1(1,:) .* inMv2(37,:);
    outMv(221,:) = inMv1(1,:) .* inMv2(36,:);
    outMv(222,:) = -inMv1(1,:) .* inMv2(35,:);
    outMv(223,:) = inMv1(1,:) .* inMv2(34,:);
    outMv(224,:) = inMv1(1,:) .* inMv2(33,:);
    outMv(225,:) = -inMv1(1,:) .* inMv2(32,:);
    outMv(226,:) = inMv1(1,:) .* inMv2(31,:);
    outMv(227,:) = -inMv1(1,:) .* inMv2(30,:);
    outMv(228,:) = inMv1(1,:) .* inMv2(29,:);
    outMv(229,:) = -inMv1(1,:) .* inMv2(28,:);
    outMv(230,:) = -inMv1(1,:) .* inMv2(27,:);
    outMv(231,:) = inMv1(1,:) .* inMv2(26,:);
    outMv(232,:) = -inMv1(1,:) .* inMv2(25,:);
    outMv(233,:) = -inMv1(1,:) .* inMv2(24,:);
    outMv(234,:) = inMv1(1,:) .* inMv2(23,:);
    outMv(235,:) = inMv1(1,:) .* inMv2(22,:);
    outMv(236,:) = -inMv1(1,:) .* inMv2(21,:);
    outMv(237,:) = inMv1(1,:) .* inMv2(20,:);
    outMv(238,:) = -inMv1(1,:) .* inMv2(19,:);
    outMv(239,:) = -inMv1(1,:) .* inMv2(18,:);
    outMv(240,:) = inMv1(1,:) .* inMv2(17,:);
    outMv(241,:) = -inMv1(1,:) .* inMv2(16,:);
    outMv(242,:) = inMv1(1,:) .* inMv2(15,:);
    outMv(243,:) = -inMv1(1,:) .* inMv2(14,:);
    outMv(244,:) = inMv1(1,:) .* inMv2(13,:);
    outMv(245,:) = -inMv1(1,:) .* inMv2(12,:);
    outMv(246,:) = inMv1(1,:) .* inMv2(11,:);
    outMv(247,:) = -inMv1(1,:) .* inMv2(10,:);
    outMv(256,:) = inMv1(1,:) .* inMv2(1,:);
end
