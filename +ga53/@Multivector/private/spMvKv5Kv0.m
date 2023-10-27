% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spMvKv5Kv0(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (56,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(164,:) .* inMv2(1,:) - inMv1(165,:) .* inMv2(2,:) - inMv1(166,:) .* inMv2(3,:) + inMv1(167,:) .* inMv2(4,:) + inMv1(168,:) .* inMv2(5,:) + inMv1(169,:) .* inMv2(6,:) - inMv1(170,:) .* inMv2(7,:) - inMv1(171,:) .* inMv2(8,:) + inMv1(172,:) .* inMv2(9,:) + inMv1(173,:) .* inMv2(10,:) + inMv1(174,:) .* inMv2(11,:) - inMv1(175,:) .* inMv2(12,:) + inMv1(176,:) .* inMv2(13,:) + inMv1(177,:) .* inMv2(14,:) + inMv1(178,:) .* inMv2(15,:) + inMv1(179,:) .* inMv2(16,:) + inMv1(180,:) .* inMv2(17,:) + inMv1(181,:) .* inMv2(18,:) - inMv1(182,:) .* inMv2(19,:) - inMv1(183,:) .* inMv2(20,:) - inMv1(184,:) .* inMv2(21,:) - inMv1(185,:) .* inMv2(22,:) - inMv1(186,:) .* inMv2(23,:) + inMv1(187,:) .* inMv2(24,:) + inMv1(188,:) .* inMv2(25,:) + inMv1(189,:) .* inMv2(26,:) - inMv1(190,:) .* inMv2(27,:) + inMv1(191,:) .* inMv2(28,:) + inMv1(192,:) .* inMv2(29,:) + inMv1(193,:) .* inMv2(30,:) + inMv1(194,:) .* inMv2(31,:) + inMv1(195,:) .* inMv2(32,:) + inMv1(196,:) .* inMv2(33,:) - inMv1(197,:) .* inMv2(34,:) - inMv1(198,:) .* inMv2(35,:) - inMv1(199,:) .* inMv2(36,:) - inMv1(200,:) .* inMv2(37,:) + inMv1(201,:) .* inMv2(38,:) + inMv1(202,:) .* inMv2(39,:) + inMv1(203,:) .* inMv2(40,:) + inMv1(204,:) .* inMv2(41,:) + inMv1(205,:) .* inMv2(42,:) + inMv1(206,:) .* inMv2(43,:) - inMv1(207,:) .* inMv2(44,:) - inMv1(208,:) .* inMv2(45,:) - inMv1(209,:) .* inMv2(46,:) + inMv1(210,:) .* inMv2(47,:) + inMv1(211,:) .* inMv2(48,:) + inMv1(212,:) .* inMv2(49,:) - inMv1(213,:) .* inMv2(50,:) - inMv1(214,:) .* inMv2(51,:) - inMv1(215,:) .* inMv2(52,:) - inMv1(216,:) .* inMv2(53,:) - inMv1(217,:) .* inMv2(54,:) - inMv1(218,:) .* inMv2(55,:) + inMv1(219,:) .* inMv2(56,:);
end
