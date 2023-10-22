
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spKv4MvKv0(inMv1, inMv2)
    arguments
        inMv1 (70,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(94,:) - inMv1(2,:) .* inMv2(95,:) + inMv1(3,:) .* inMv2(96,:) + inMv1(4,:) .* inMv2(97,:) + inMv1(5,:) .* inMv2(98,:) - inMv1(6,:) .* inMv2(99,:) + inMv1(7,:) .* inMv2(100,:) + inMv1(8,:) .* inMv2(101,:) + inMv1(9,:) .* inMv2(102,:) + inMv1(10,:) .* inMv2(103,:) + inMv1(11,:) .* inMv2(104,:) + inMv1(12,:) .* inMv2(105,:) - inMv1(13,:) .* inMv2(106,:) - inMv1(14,:) .* inMv2(107,:) - inMv1(15,:) .* inMv2(108,:) - inMv1(16,:) .* inMv2(109,:) + inMv1(17,:) .* inMv2(110,:) + inMv1(18,:) .* inMv2(111,:) + inMv1(19,:) .* inMv2(112,:) + inMv1(20,:) .* inMv2(113,:) + inMv1(21,:) .* inMv2(114,:) + inMv1(22,:) .* inMv2(115,:) - inMv1(23,:) .* inMv2(116,:) - inMv1(24,:) .* inMv2(117,:) - inMv1(25,:) .* inMv2(118,:) + inMv1(26,:) .* inMv2(119,:) + inMv1(27,:) .* inMv2(120,:) + inMv1(28,:) .* inMv2(121,:) - inMv1(29,:) .* inMv2(122,:) - inMv1(30,:) .* inMv2(123,:) - inMv1(31,:) .* inMv2(124,:) - inMv1(32,:) .* inMv2(125,:) - inMv1(33,:) .* inMv2(126,:) - inMv1(34,:) .* inMv2(127,:) + inMv1(35,:) .* inMv2(128,:) - inMv1(36,:) .* inMv2(129,:) + inMv1(37,:) .* inMv2(130,:) + inMv1(38,:) .* inMv2(131,:) + inMv1(39,:) .* inMv2(132,:) + inMv1(40,:) .* inMv2(133,:) + inMv1(41,:) .* inMv2(134,:) + inMv1(42,:) .* inMv2(135,:) - inMv1(43,:) .* inMv2(136,:) - inMv1(44,:) .* inMv2(137,:) - inMv1(45,:) .* inMv2(138,:) + inMv1(46,:) .* inMv2(139,:) + inMv1(47,:) .* inMv2(140,:) + inMv1(48,:) .* inMv2(141,:) - inMv1(49,:) .* inMv2(142,:) - inMv1(50,:) .* inMv2(143,:) - inMv1(51,:) .* inMv2(144,:) - inMv1(52,:) .* inMv2(145,:) - inMv1(53,:) .* inMv2(146,:) - inMv1(54,:) .* inMv2(147,:) + inMv1(55,:) .* inMv2(148,:) + inMv1(56,:) .* inMv2(149,:) + inMv1(57,:) .* inMv2(150,:) + inMv1(58,:) .* inMv2(151,:) - inMv1(59,:) .* inMv2(152,:) - inMv1(60,:) .* inMv2(153,:) - inMv1(61,:) .* inMv2(154,:) - inMv1(62,:) .* inMv2(155,:) - inMv1(63,:) .* inMv2(156,:) - inMv1(64,:) .* inMv2(157,:) + inMv1(65,:) .* inMv2(158,:) - inMv1(66,:) .* inMv2(159,:) - inMv1(67,:) .* inMv2(160,:) - inMv1(68,:) .* inMv2(161,:) + inMv1(69,:) .* inMv2(162,:) + inMv1(70,:) .* inMv2(163,:);
end
