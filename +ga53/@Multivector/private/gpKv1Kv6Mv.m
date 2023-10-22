
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv1Kv6Mv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (28,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(164,:) = -inMv1(6,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(8,:);
    outMv(165,:) = inMv1(5,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(9,:);
    outMv(166,:) = -inMv1(4,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(10,:);
    outMv(167,:) = -inMv1(3,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(11,:);
    outMv(168,:) = inMv1(2,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(12,:);
    outMv(169,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(13,:);
    outMv(170,:) = inMv1(5,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(14,:);
    outMv(171,:) = -inMv1(4,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(15,:);
    outMv(172,:) = -inMv1(3,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(16,:);
    outMv(173,:) = inMv1(2,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(17,:);
    outMv(174,:) = -inMv1(1,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(18,:);
    outMv(175,:) = -inMv1(4,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(19,:);
    outMv(176,:) = -inMv1(3,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(20,:);
    outMv(177,:) = inMv1(2,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(21,:);
    outMv(178,:) = -inMv1(1,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(22,:);
    outMv(179,:) = -inMv1(3,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(23,:);
    outMv(180,:) = inMv1(2,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(24,:);
    outMv(181,:) = -inMv1(1,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(25,:);
    outMv(182,:) = inMv1(2,:) .* inMv2(5,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(26,:);
    outMv(183,:) = -inMv1(1,:) .* inMv2(5,:) + inMv1(3,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(27,:);
    outMv(184,:) = -inMv1(1,:) .* inMv2(6,:) - inMv1(2,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(28,:);
    outMv(185,:) = inMv1(5,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(9,:) + inMv1(7,:) .* inMv2(14,:);
    outMv(186,:) = -inMv1(4,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(10,:) + inMv1(7,:) .* inMv2(15,:);
    outMv(187,:) = -inMv1(3,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(11,:) + inMv1(7,:) .* inMv2(16,:);
    outMv(188,:) = inMv1(2,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(17,:);
    outMv(189,:) = -inMv1(1,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(13,:) + inMv1(7,:) .* inMv2(18,:);
    outMv(190,:) = -inMv1(4,:) .* inMv2(9,:) - inMv1(5,:) .* inMv2(10,:) + inMv1(7,:) .* inMv2(19,:);
    outMv(191,:) = -inMv1(3,:) .* inMv2(9,:) - inMv1(5,:) .* inMv2(11,:) + inMv1(7,:) .* inMv2(20,:);
    outMv(192,:) = inMv1(2,:) .* inMv2(9,:) - inMv1(5,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(21,:);
    outMv(193,:) = -inMv1(1,:) .* inMv2(9,:) - inMv1(5,:) .* inMv2(13,:) + inMv1(7,:) .* inMv2(22,:);
    outMv(194,:) = -inMv1(3,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(11,:) + inMv1(7,:) .* inMv2(23,:);
    outMv(195,:) = inMv1(2,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(24,:);
    outMv(196,:) = -inMv1(1,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(13,:) + inMv1(7,:) .* inMv2(25,:);
    outMv(197,:) = inMv1(2,:) .* inMv2(11,:) + inMv1(3,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(26,:);
    outMv(198,:) = -inMv1(1,:) .* inMv2(11,:) + inMv1(3,:) .* inMv2(13,:) + inMv1(7,:) .* inMv2(27,:);
    outMv(199,:) = -inMv1(1,:) .* inMv2(12,:) - inMv1(2,:) .* inMv2(13,:) + inMv1(7,:) .* inMv2(28,:);
    outMv(200,:) = -inMv1(4,:) .* inMv2(14,:) - inMv1(5,:) .* inMv2(15,:) - inMv1(6,:) .* inMv2(19,:);
    outMv(201,:) = -inMv1(3,:) .* inMv2(14,:) - inMv1(5,:) .* inMv2(16,:) - inMv1(6,:) .* inMv2(20,:);
    outMv(202,:) = inMv1(2,:) .* inMv2(14,:) - inMv1(5,:) .* inMv2(17,:) - inMv1(6,:) .* inMv2(21,:);
    outMv(203,:) = -inMv1(1,:) .* inMv2(14,:) - inMv1(5,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(22,:);
    outMv(204,:) = -inMv1(3,:) .* inMv2(15,:) + inMv1(4,:) .* inMv2(16,:) - inMv1(6,:) .* inMv2(23,:);
    outMv(205,:) = inMv1(2,:) .* inMv2(15,:) + inMv1(4,:) .* inMv2(17,:) - inMv1(6,:) .* inMv2(24,:);
    outMv(206,:) = -inMv1(1,:) .* inMv2(15,:) + inMv1(4,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(25,:);
    outMv(207,:) = inMv1(2,:) .* inMv2(16,:) + inMv1(3,:) .* inMv2(17,:) - inMv1(6,:) .* inMv2(26,:);
    outMv(208,:) = -inMv1(1,:) .* inMv2(16,:) + inMv1(3,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(27,:);
    outMv(209,:) = -inMv1(1,:) .* inMv2(17,:) - inMv1(2,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(28,:);
    outMv(210,:) = -inMv1(3,:) .* inMv2(19,:) + inMv1(4,:) .* inMv2(20,:) + inMv1(5,:) .* inMv2(23,:);
    outMv(211,:) = inMv1(2,:) .* inMv2(19,:) + inMv1(4,:) .* inMv2(21,:) + inMv1(5,:) .* inMv2(24,:);
    outMv(212,:) = -inMv1(1,:) .* inMv2(19,:) + inMv1(4,:) .* inMv2(22,:) + inMv1(5,:) .* inMv2(25,:);
    outMv(213,:) = inMv1(2,:) .* inMv2(20,:) + inMv1(3,:) .* inMv2(21,:) + inMv1(5,:) .* inMv2(26,:);
    outMv(214,:) = -inMv1(1,:) .* inMv2(20,:) + inMv1(3,:) .* inMv2(22,:) + inMv1(5,:) .* inMv2(27,:);
    outMv(215,:) = -inMv1(1,:) .* inMv2(21,:) - inMv1(2,:) .* inMv2(22,:) + inMv1(5,:) .* inMv2(28,:);
    outMv(216,:) = inMv1(2,:) .* inMv2(23,:) + inMv1(3,:) .* inMv2(24,:) - inMv1(4,:) .* inMv2(26,:);
    outMv(217,:) = -inMv1(1,:) .* inMv2(23,:) + inMv1(3,:) .* inMv2(25,:) - inMv1(4,:) .* inMv2(27,:);
    outMv(218,:) = -inMv1(1,:) .* inMv2(24,:) - inMv1(2,:) .* inMv2(25,:) - inMv1(4,:) .* inMv2(28,:);
    outMv(219,:) = -inMv1(1,:) .* inMv2(26,:) - inMv1(2,:) .* inMv2(27,:) - inMv1(3,:) .* inMv2(28,:);
    outMv(248,:) = inMv1(1,:) .* inMv2(7,:) - inMv1(2,:) .* inMv2(6,:) + inMv1(3,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(3,:) - inMv1(6,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(1,:);
    outMv(249,:) = inMv1(1,:) .* inMv2(13,:) - inMv1(2,:) .* inMv2(12,:) + inMv1(3,:) .* inMv2(11,:) - inMv1(4,:) .* inMv2(10,:) + inMv1(5,:) .* inMv2(9,:) - inMv1(6,:) .* inMv2(8,:) + inMv1(8,:) .* inMv2(1,:);
    outMv(250,:) = inMv1(1,:) .* inMv2(18,:) - inMv1(2,:) .* inMv2(17,:) + inMv1(3,:) .* inMv2(16,:) - inMv1(4,:) .* inMv2(15,:) + inMv1(5,:) .* inMv2(14,:) - inMv1(7,:) .* inMv2(8,:) + inMv1(8,:) .* inMv2(2,:);
    outMv(251,:) = inMv1(1,:) .* inMv2(22,:) - inMv1(2,:) .* inMv2(21,:) + inMv1(3,:) .* inMv2(20,:) - inMv1(4,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(14,:) - inMv1(7,:) .* inMv2(9,:) + inMv1(8,:) .* inMv2(3,:);
    outMv(252,:) = inMv1(1,:) .* inMv2(25,:) - inMv1(2,:) .* inMv2(24,:) + inMv1(3,:) .* inMv2(23,:) - inMv1(5,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(15,:) - inMv1(7,:) .* inMv2(10,:) + inMv1(8,:) .* inMv2(4,:);
    outMv(253,:) = inMv1(1,:) .* inMv2(27,:) - inMv1(2,:) .* inMv2(26,:) + inMv1(4,:) .* inMv2(23,:) - inMv1(5,:) .* inMv2(20,:) + inMv1(6,:) .* inMv2(16,:) - inMv1(7,:) .* inMv2(11,:) + inMv1(8,:) .* inMv2(5,:);
    outMv(254,:) = inMv1(1,:) .* inMv2(28,:) - inMv1(3,:) .* inMv2(26,:) + inMv1(4,:) .* inMv2(24,:) - inMv1(5,:) .* inMv2(21,:) + inMv1(6,:) .* inMv2(17,:) - inMv1(7,:) .* inMv2(12,:) + inMv1(8,:) .* inMv2(6,:);
    outMv(255,:) = inMv1(2,:) .* inMv2(28,:) - inMv1(3,:) .* inMv2(27,:) + inMv1(4,:) .* inMv2(25,:) - inMv1(5,:) .* inMv2(22,:) + inMv1(6,:) .* inMv2(18,:) - inMv1(7,:) .* inMv2(13,:) + inMv1(8,:) .* inMv2(7,:);
end
