% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spKv5MvKv0(inMv1, inMv2)
    arguments
        inMv1 (56,:) double
        inMv2 (256,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(164,:) - inMv1(2,:) .* inMv2(165,:) - inMv1(3,:) .* inMv2(166,:) + inMv1(4,:) .* inMv2(167,:) + inMv1(5,:) .* inMv2(168,:) + inMv1(6,:) .* inMv2(169,:) - inMv1(7,:) .* inMv2(170,:) - inMv1(8,:) .* inMv2(171,:) + inMv1(9,:) .* inMv2(172,:) + inMv1(10,:) .* inMv2(173,:) + inMv1(11,:) .* inMv2(174,:) - inMv1(12,:) .* inMv2(175,:) + inMv1(13,:) .* inMv2(176,:) + inMv1(14,:) .* inMv2(177,:) + inMv1(15,:) .* inMv2(178,:) + inMv1(16,:) .* inMv2(179,:) + inMv1(17,:) .* inMv2(180,:) + inMv1(18,:) .* inMv2(181,:) - inMv1(19,:) .* inMv2(182,:) - inMv1(20,:) .* inMv2(183,:) - inMv1(21,:) .* inMv2(184,:) - inMv1(22,:) .* inMv2(185,:) - inMv1(23,:) .* inMv2(186,:) + inMv1(24,:) .* inMv2(187,:) + inMv1(25,:) .* inMv2(188,:) + inMv1(26,:) .* inMv2(189,:) - inMv1(27,:) .* inMv2(190,:) + inMv1(28,:) .* inMv2(191,:) + inMv1(29,:) .* inMv2(192,:) + inMv1(30,:) .* inMv2(193,:) + inMv1(31,:) .* inMv2(194,:) + inMv1(32,:) .* inMv2(195,:) + inMv1(33,:) .* inMv2(196,:) - inMv1(34,:) .* inMv2(197,:) - inMv1(35,:) .* inMv2(198,:) - inMv1(36,:) .* inMv2(199,:) - inMv1(37,:) .* inMv2(200,:) + inMv1(38,:) .* inMv2(201,:) + inMv1(39,:) .* inMv2(202,:) + inMv1(40,:) .* inMv2(203,:) + inMv1(41,:) .* inMv2(204,:) + inMv1(42,:) .* inMv2(205,:) + inMv1(43,:) .* inMv2(206,:) - inMv1(44,:) .* inMv2(207,:) - inMv1(45,:) .* inMv2(208,:) - inMv1(46,:) .* inMv2(209,:) + inMv1(47,:) .* inMv2(210,:) + inMv1(48,:) .* inMv2(211,:) + inMv1(49,:) .* inMv2(212,:) - inMv1(50,:) .* inMv2(213,:) - inMv1(51,:) .* inMv2(214,:) - inMv1(52,:) .* inMv2(215,:) - inMv1(53,:) .* inMv2(216,:) - inMv1(54,:) .* inMv2(217,:) - inMv1(55,:) .* inMv2(218,:) + inMv1(56,:) .* inMv2(219,:);
end
