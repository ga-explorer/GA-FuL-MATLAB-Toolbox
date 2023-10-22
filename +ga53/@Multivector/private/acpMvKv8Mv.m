
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpMvKv8Mv(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(256,:) .* inMv2(1,:);
    outMv(10,:) = inMv1(247,:) .* inMv2(1,:);
    outMv(11,:) = -inMv1(246,:) .* inMv2(1,:);
    outMv(12,:) = inMv1(245,:) .* inMv2(1,:);
    outMv(13,:) = -inMv1(244,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(243,:) .* inMv2(1,:);
    outMv(15,:) = -inMv1(242,:) .* inMv2(1,:);
    outMv(16,:) = inMv1(241,:) .* inMv2(1,:);
    outMv(17,:) = -inMv1(240,:) .* inMv2(1,:);
    outMv(18,:) = inMv1(239,:) .* inMv2(1,:);
    outMv(19,:) = inMv1(238,:) .* inMv2(1,:);
    outMv(20,:) = -inMv1(237,:) .* inMv2(1,:);
    outMv(21,:) = inMv1(236,:) .* inMv2(1,:);
    outMv(22,:) = -inMv1(235,:) .* inMv2(1,:);
    outMv(23,:) = -inMv1(234,:) .* inMv2(1,:);
    outMv(24,:) = inMv1(233,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(232,:) .* inMv2(1,:);
    outMv(26,:) = -inMv1(231,:) .* inMv2(1,:);
    outMv(27,:) = inMv1(230,:) .* inMv2(1,:);
    outMv(28,:) = inMv1(229,:) .* inMv2(1,:);
    outMv(29,:) = -inMv1(228,:) .* inMv2(1,:);
    outMv(30,:) = inMv1(227,:) .* inMv2(1,:);
    outMv(31,:) = -inMv1(226,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(225,:) .* inMv2(1,:);
    outMv(33,:) = -inMv1(224,:) .* inMv2(1,:);
    outMv(34,:) = -inMv1(223,:) .* inMv2(1,:);
    outMv(35,:) = inMv1(222,:) .* inMv2(1,:);
    outMv(36,:) = -inMv1(221,:) .* inMv2(1,:);
    outMv(37,:) = inMv1(220,:) .* inMv2(1,:);
    outMv(94,:) = inMv1(163,:) .* inMv2(1,:);
    outMv(95,:) = -inMv1(162,:) .* inMv2(1,:);
    outMv(96,:) = -inMv1(161,:) .* inMv2(1,:);
    outMv(97,:) = inMv1(160,:) .* inMv2(1,:);
    outMv(98,:) = -inMv1(159,:) .* inMv2(1,:);
    outMv(99,:) = inMv1(158,:) .* inMv2(1,:);
    outMv(100,:) = inMv1(157,:) .* inMv2(1,:);
    outMv(101,:) = -inMv1(156,:) .* inMv2(1,:);
    outMv(102,:) = inMv1(155,:) .* inMv2(1,:);
    outMv(103,:) = -inMv1(154,:) .* inMv2(1,:);
    outMv(104,:) = inMv1(153,:) .* inMv2(1,:);
    outMv(105,:) = -inMv1(152,:) .* inMv2(1,:);
    outMv(106,:) = inMv1(151,:) .* inMv2(1,:);
    outMv(107,:) = -inMv1(150,:) .* inMv2(1,:);
    outMv(108,:) = inMv1(149,:) .* inMv2(1,:);
    outMv(109,:) = -inMv1(148,:) .* inMv2(1,:);
    outMv(110,:) = -inMv1(147,:) .* inMv2(1,:);
    outMv(111,:) = inMv1(146,:) .* inMv2(1,:);
    outMv(112,:) = -inMv1(145,:) .* inMv2(1,:);
    outMv(113,:) = inMv1(144,:) .* inMv2(1,:);
    outMv(114,:) = -inMv1(143,:) .* inMv2(1,:);
    outMv(115,:) = inMv1(142,:) .* inMv2(1,:);
    outMv(116,:) = -inMv1(141,:) .* inMv2(1,:);
    outMv(117,:) = inMv1(140,:) .* inMv2(1,:);
    outMv(118,:) = -inMv1(139,:) .* inMv2(1,:);
    outMv(119,:) = -inMv1(138,:) .* inMv2(1,:);
    outMv(120,:) = inMv1(137,:) .* inMv2(1,:);
    outMv(121,:) = -inMv1(136,:) .* inMv2(1,:);
    outMv(122,:) = inMv1(135,:) .* inMv2(1,:);
    outMv(123,:) = -inMv1(134,:) .* inMv2(1,:);
    outMv(124,:) = inMv1(133,:) .* inMv2(1,:);
    outMv(125,:) = -inMv1(132,:) .* inMv2(1,:);
    outMv(126,:) = inMv1(131,:) .* inMv2(1,:);
    outMv(127,:) = -inMv1(130,:) .* inMv2(1,:);
    outMv(128,:) = -inMv1(129,:) .* inMv2(1,:);
    outMv(129,:) = inMv1(128,:) .* inMv2(1,:);
    outMv(130,:) = inMv1(127,:) .* inMv2(1,:);
    outMv(131,:) = -inMv1(126,:) .* inMv2(1,:);
    outMv(132,:) = inMv1(125,:) .* inMv2(1,:);
    outMv(133,:) = -inMv1(124,:) .* inMv2(1,:);
    outMv(134,:) = inMv1(123,:) .* inMv2(1,:);
    outMv(135,:) = -inMv1(122,:) .* inMv2(1,:);
    outMv(136,:) = inMv1(121,:) .* inMv2(1,:);
    outMv(137,:) = -inMv1(120,:) .* inMv2(1,:);
    outMv(138,:) = inMv1(119,:) .* inMv2(1,:);
    outMv(139,:) = inMv1(118,:) .* inMv2(1,:);
    outMv(140,:) = -inMv1(117,:) .* inMv2(1,:);
    outMv(141,:) = inMv1(116,:) .* inMv2(1,:);
    outMv(142,:) = -inMv1(115,:) .* inMv2(1,:);
    outMv(143,:) = inMv1(114,:) .* inMv2(1,:);
    outMv(144,:) = -inMv1(113,:) .* inMv2(1,:);
    outMv(145,:) = inMv1(112,:) .* inMv2(1,:);
    outMv(146,:) = -inMv1(111,:) .* inMv2(1,:);
    outMv(147,:) = inMv1(110,:) .* inMv2(1,:);
    outMv(148,:) = inMv1(109,:) .* inMv2(1,:);
    outMv(149,:) = -inMv1(108,:) .* inMv2(1,:);
    outMv(150,:) = inMv1(107,:) .* inMv2(1,:);
    outMv(151,:) = -inMv1(106,:) .* inMv2(1,:);
    outMv(152,:) = inMv1(105,:) .* inMv2(1,:);
    outMv(153,:) = -inMv1(104,:) .* inMv2(1,:);
    outMv(154,:) = inMv1(103,:) .* inMv2(1,:);
    outMv(155,:) = -inMv1(102,:) .* inMv2(1,:);
    outMv(156,:) = inMv1(101,:) .* inMv2(1,:);
    outMv(157,:) = -inMv1(100,:) .* inMv2(1,:);
    outMv(158,:) = -inMv1(99,:) .* inMv2(1,:);
    outMv(159,:) = inMv1(98,:) .* inMv2(1,:);
    outMv(160,:) = -inMv1(97,:) .* inMv2(1,:);
    outMv(161,:) = inMv1(96,:) .* inMv2(1,:);
    outMv(162,:) = inMv1(95,:) .* inMv2(1,:);
    outMv(163,:) = -inMv1(94,:) .* inMv2(1,:);
    outMv(220,:) = -inMv1(37,:) .* inMv2(1,:);
    outMv(221,:) = inMv1(36,:) .* inMv2(1,:);
    outMv(222,:) = -inMv1(35,:) .* inMv2(1,:);
    outMv(223,:) = inMv1(34,:) .* inMv2(1,:);
    outMv(224,:) = inMv1(33,:) .* inMv2(1,:);
    outMv(225,:) = -inMv1(32,:) .* inMv2(1,:);
    outMv(226,:) = inMv1(31,:) .* inMv2(1,:);
    outMv(227,:) = -inMv1(30,:) .* inMv2(1,:);
    outMv(228,:) = inMv1(29,:) .* inMv2(1,:);
    outMv(229,:) = -inMv1(28,:) .* inMv2(1,:);
    outMv(230,:) = -inMv1(27,:) .* inMv2(1,:);
    outMv(231,:) = inMv1(26,:) .* inMv2(1,:);
    outMv(232,:) = -inMv1(25,:) .* inMv2(1,:);
    outMv(233,:) = -inMv1(24,:) .* inMv2(1,:);
    outMv(234,:) = inMv1(23,:) .* inMv2(1,:);
    outMv(235,:) = inMv1(22,:) .* inMv2(1,:);
    outMv(236,:) = -inMv1(21,:) .* inMv2(1,:);
    outMv(237,:) = inMv1(20,:) .* inMv2(1,:);
    outMv(238,:) = -inMv1(19,:) .* inMv2(1,:);
    outMv(239,:) = -inMv1(18,:) .* inMv2(1,:);
    outMv(240,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(241,:) = -inMv1(16,:) .* inMv2(1,:);
    outMv(242,:) = inMv1(15,:) .* inMv2(1,:);
    outMv(243,:) = -inMv1(14,:) .* inMv2(1,:);
    outMv(244,:) = inMv1(13,:) .* inMv2(1,:);
    outMv(245,:) = -inMv1(12,:) .* inMv2(1,:);
    outMv(246,:) = inMv1(11,:) .* inMv2(1,:);
    outMv(247,:) = -inMv1(10,:) .* inMv2(1,:);
    outMv(256,:) = inMv1(1,:) .* inMv2(1,:);
end
