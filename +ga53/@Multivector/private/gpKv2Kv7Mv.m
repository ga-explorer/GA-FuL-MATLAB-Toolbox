function outMv = gpKv2Kv7Mv(inMv1, inMv2)
    arguments
        inMv1 (28,:) double
        inMv2 (8,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(164,:) = -inMv1(21,:) .* inMv2(1,:) - inMv1(27,:) .* inMv2(2,:) - inMv1(28,:) .* inMv2(3,:);
    outMv(165,:) = inMv1(20,:) .* inMv2(1,:) + inMv1(26,:) .* inMv2(2,:) - inMv1(28,:) .* inMv2(4,:);
    outMv(166,:) = -inMv1(19,:) .* inMv2(1,:) - inMv1(25,:) .* inMv2(2,:) - inMv1(28,:) .* inMv2(5,:);
    outMv(167,:) = -inMv1(18,:) .* inMv2(1,:) - inMv1(24,:) .* inMv2(2,:) - inMv1(28,:) .* inMv2(6,:);
    outMv(168,:) = inMv1(17,:) .* inMv2(1,:) + inMv1(23,:) .* inMv2(2,:) - inMv1(28,:) .* inMv2(7,:);
    outMv(169,:) = -inMv1(16,:) .* inMv2(1,:) - inMv1(22,:) .* inMv2(2,:) - inMv1(28,:) .* inMv2(8,:);
    outMv(170,:) = -inMv1(15,:) .* inMv2(1,:) + inMv1(26,:) .* inMv2(3,:) + inMv1(27,:) .* inMv2(4,:);
    outMv(171,:) = inMv1(14,:) .* inMv2(1,:) - inMv1(25,:) .* inMv2(3,:) + inMv1(27,:) .* inMv2(5,:);
    outMv(172,:) = inMv1(13,:) .* inMv2(1,:) - inMv1(24,:) .* inMv2(3,:) + inMv1(27,:) .* inMv2(6,:);
    outMv(173,:) = -inMv1(12,:) .* inMv2(1,:) + inMv1(23,:) .* inMv2(3,:) + inMv1(27,:) .* inMv2(7,:);
    outMv(174,:) = inMv1(11,:) .* inMv2(1,:) - inMv1(22,:) .* inMv2(3,:) + inMv1(27,:) .* inMv2(8,:);
    outMv(175,:) = -inMv1(10,:) .* inMv2(1,:) - inMv1(25,:) .* inMv2(4,:) - inMv1(26,:) .* inMv2(5,:);
    outMv(176,:) = -inMv1(9,:) .* inMv2(1,:) - inMv1(24,:) .* inMv2(4,:) - inMv1(26,:) .* inMv2(6,:);
    outMv(177,:) = inMv1(8,:) .* inMv2(1,:) + inMv1(23,:) .* inMv2(4,:) - inMv1(26,:) .* inMv2(7,:);
    outMv(178,:) = -inMv1(7,:) .* inMv2(1,:) - inMv1(22,:) .* inMv2(4,:) - inMv1(26,:) .* inMv2(8,:);
    outMv(179,:) = inMv1(6,:) .* inMv2(1,:) - inMv1(24,:) .* inMv2(5,:) + inMv1(25,:) .* inMv2(6,:);
    outMv(180,:) = -inMv1(5,:) .* inMv2(1,:) + inMv1(23,:) .* inMv2(5,:) + inMv1(25,:) .* inMv2(7,:);
    outMv(181,:) = inMv1(4,:) .* inMv2(1,:) - inMv1(22,:) .* inMv2(5,:) + inMv1(25,:) .* inMv2(8,:);
    outMv(182,:) = -inMv1(3,:) .* inMv2(1,:) + inMv1(23,:) .* inMv2(6,:) + inMv1(24,:) .* inMv2(7,:);
    outMv(183,:) = inMv1(2,:) .* inMv2(1,:) - inMv1(22,:) .* inMv2(6,:) + inMv1(24,:) .* inMv2(8,:);
    outMv(184,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(22,:) .* inMv2(7,:) - inMv1(23,:) .* inMv2(8,:);
    outMv(185,:) = -inMv1(15,:) .* inMv2(2,:) - inMv1(20,:) .* inMv2(3,:) - inMv1(21,:) .* inMv2(4,:);
    outMv(186,:) = inMv1(14,:) .* inMv2(2,:) + inMv1(19,:) .* inMv2(3,:) - inMv1(21,:) .* inMv2(5,:);
    outMv(187,:) = inMv1(13,:) .* inMv2(2,:) + inMv1(18,:) .* inMv2(3,:) - inMv1(21,:) .* inMv2(6,:);
    outMv(188,:) = -inMv1(12,:) .* inMv2(2,:) - inMv1(17,:) .* inMv2(3,:) - inMv1(21,:) .* inMv2(7,:);
    outMv(189,:) = inMv1(11,:) .* inMv2(2,:) + inMv1(16,:) .* inMv2(3,:) - inMv1(21,:) .* inMv2(8,:);
    outMv(190,:) = -inMv1(10,:) .* inMv2(2,:) + inMv1(19,:) .* inMv2(4,:) + inMv1(20,:) .* inMv2(5,:);
    outMv(191,:) = -inMv1(9,:) .* inMv2(2,:) + inMv1(18,:) .* inMv2(4,:) + inMv1(20,:) .* inMv2(6,:);
    outMv(192,:) = inMv1(8,:) .* inMv2(2,:) - inMv1(17,:) .* inMv2(4,:) + inMv1(20,:) .* inMv2(7,:);
    outMv(193,:) = -inMv1(7,:) .* inMv2(2,:) + inMv1(16,:) .* inMv2(4,:) + inMv1(20,:) .* inMv2(8,:);
    outMv(194,:) = inMv1(6,:) .* inMv2(2,:) + inMv1(18,:) .* inMv2(5,:) - inMv1(19,:) .* inMv2(6,:);
    outMv(195,:) = -inMv1(5,:) .* inMv2(2,:) - inMv1(17,:) .* inMv2(5,:) - inMv1(19,:) .* inMv2(7,:);
    outMv(196,:) = inMv1(4,:) .* inMv2(2,:) + inMv1(16,:) .* inMv2(5,:) - inMv1(19,:) .* inMv2(8,:);
    outMv(197,:) = -inMv1(3,:) .* inMv2(2,:) - inMv1(17,:) .* inMv2(6,:) - inMv1(18,:) .* inMv2(7,:);
    outMv(198,:) = inMv1(2,:) .* inMv2(2,:) + inMv1(16,:) .* inMv2(6,:) - inMv1(18,:) .* inMv2(8,:);
    outMv(199,:) = -inMv1(1,:) .* inMv2(2,:) + inMv1(16,:) .* inMv2(7,:) + inMv1(17,:) .* inMv2(8,:);
    outMv(200,:) = -inMv1(10,:) .* inMv2(3,:) - inMv1(14,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(5,:);
    outMv(201,:) = -inMv1(9,:) .* inMv2(3,:) - inMv1(13,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(6,:);
    outMv(202,:) = inMv1(8,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(7,:);
    outMv(203,:) = -inMv1(7,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(8,:);
    outMv(204,:) = inMv1(6,:) .* inMv2(3,:) - inMv1(13,:) .* inMv2(5,:) + inMv1(14,:) .* inMv2(6,:);
    outMv(205,:) = -inMv1(5,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(5,:) + inMv1(14,:) .* inMv2(7,:);
    outMv(206,:) = inMv1(4,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(5,:) + inMv1(14,:) .* inMv2(8,:);
    outMv(207,:) = -inMv1(3,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(6,:) + inMv1(13,:) .* inMv2(7,:);
    outMv(208,:) = inMv1(2,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(6,:) + inMv1(13,:) .* inMv2(8,:);
    outMv(209,:) = -inMv1(1,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(7,:) - inMv1(12,:) .* inMv2(8,:);
    outMv(210,:) = inMv1(6,:) .* inMv2(4,:) + inMv1(9,:) .* inMv2(5,:) - inMv1(10,:) .* inMv2(6,:);
    outMv(211,:) = -inMv1(5,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(5,:) - inMv1(10,:) .* inMv2(7,:);
    outMv(212,:) = inMv1(4,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(5,:) - inMv1(10,:) .* inMv2(8,:);
    outMv(213,:) = -inMv1(3,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(7,:);
    outMv(214,:) = inMv1(2,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(8,:);
    outMv(215,:) = -inMv1(1,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(7,:) + inMv1(8,:) .* inMv2(8,:);
    outMv(216,:) = -inMv1(3,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(6,:) + inMv1(6,:) .* inMv2(7,:);
    outMv(217,:) = inMv1(2,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(6,:) + inMv1(6,:) .* inMv2(8,:);
    outMv(218,:) = -inMv1(1,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(7,:) - inMv1(5,:) .* inMv2(8,:);
    outMv(219,:) = -inMv1(1,:) .* inMv2(6,:) - inMv1(2,:) .* inMv2(7,:) - inMv1(3,:) .* inMv2(8,:);
    outMv(248,:) = inMv1(22,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(7,:) + inMv1(24,:) .* inMv2(6,:) - inMv1(25,:) .* inMv2(5,:) + inMv1(26,:) .* inMv2(4,:) - inMv1(27,:) .* inMv2(3,:) + inMv1(28,:) .* inMv2(2,:);
    outMv(249,:) = -inMv1(16,:) .* inMv2(8,:) + inMv1(17,:) .* inMv2(7,:) - inMv1(18,:) .* inMv2(6,:) + inMv1(19,:) .* inMv2(5,:) - inMv1(20,:) .* inMv2(4,:) + inMv1(21,:) .* inMv2(3,:) - inMv1(28,:) .* inMv2(1,:);
    outMv(250,:) = inMv1(11,:) .* inMv2(8,:) - inMv1(12,:) .* inMv2(7,:) + inMv1(13,:) .* inMv2(6,:) - inMv1(14,:) .* inMv2(5,:) + inMv1(15,:) .* inMv2(4,:) - inMv1(21,:) .* inMv2(2,:) + inMv1(27,:) .* inMv2(1,:);
    outMv(251,:) = -inMv1(7,:) .* inMv2(8,:) + inMv1(8,:) .* inMv2(7,:) - inMv1(9,:) .* inMv2(6,:) + inMv1(10,:) .* inMv2(5,:) - inMv1(15,:) .* inMv2(3,:) + inMv1(20,:) .* inMv2(2,:) - inMv1(26,:) .* inMv2(1,:);
    outMv(252,:) = inMv1(4,:) .* inMv2(8,:) - inMv1(5,:) .* inMv2(7,:) + inMv1(6,:) .* inMv2(6,:) - inMv1(10,:) .* inMv2(4,:) + inMv1(14,:) .* inMv2(3,:) - inMv1(19,:) .* inMv2(2,:) + inMv1(25,:) .* inMv2(1,:);
    outMv(253,:) = inMv1(2,:) .* inMv2(8,:) - inMv1(3,:) .* inMv2(7,:) + inMv1(6,:) .* inMv2(5,:) - inMv1(9,:) .* inMv2(4,:) + inMv1(13,:) .* inMv2(3,:) - inMv1(18,:) .* inMv2(2,:) + inMv1(24,:) .* inMv2(1,:);
    outMv(254,:) = -inMv1(1,:) .* inMv2(8,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(5,:) .* inMv2(5,:) + inMv1(8,:) .* inMv2(4,:) - inMv1(12,:) .* inMv2(3,:) + inMv1(17,:) .* inMv2(2,:) - inMv1(23,:) .* inMv2(1,:);
    outMv(255,:) = inMv1(1,:) .* inMv2(7,:) - inMv1(2,:) .* inMv2(6,:) + inMv1(4,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(4,:) + inMv1(11,:) .* inMv2(3,:) - inMv1(16,:) .* inMv2(2,:) + inMv1(22,:) .* inMv2(1,:);
end
