% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = opKv6MvMv(inMv1, inMv2)
    arguments
        inMv1 (28,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(220,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(221,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(222,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(223,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(224,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(225,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(226,:) = inMv1(7,:) .* inMv2(1,:);
    outMv(227,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(228,:) = inMv1(9,:) .* inMv2(1,:);
    outMv(229,:) = inMv1(10,:) .* inMv2(1,:);
    outMv(230,:) = inMv1(11,:) .* inMv2(1,:);
    outMv(231,:) = inMv1(12,:) .* inMv2(1,:);
    outMv(232,:) = inMv1(13,:) .* inMv2(1,:);
    outMv(233,:) = inMv1(14,:) .* inMv2(1,:);
    outMv(234,:) = inMv1(15,:) .* inMv2(1,:);
    outMv(235,:) = inMv1(16,:) .* inMv2(1,:);
    outMv(236,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(237,:) = inMv1(18,:) .* inMv2(1,:);
    outMv(238,:) = inMv1(19,:) .* inMv2(1,:);
    outMv(239,:) = inMv1(20,:) .* inMv2(1,:);
    outMv(240,:) = inMv1(21,:) .* inMv2(1,:);
    outMv(241,:) = inMv1(22,:) .* inMv2(1,:);
    outMv(242,:) = inMv1(23,:) .* inMv2(1,:);
    outMv(243,:) = inMv1(24,:) .* inMv2(1,:);
    outMv(244,:) = inMv1(25,:) .* inMv2(1,:);
    outMv(245,:) = inMv1(26,:) .* inMv2(1,:);
    outMv(246,:) = inMv1(27,:) .* inMv2(1,:);
    outMv(247,:) = inMv1(28,:) .* inMv2(1,:);
    outMv(248,:) = inMv1(1,:) .* inMv2(8,:) - inMv1(2,:) .* inMv2(7,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(3,:) + inMv1(7,:) .* inMv2(2,:);
    outMv(249,:) = inMv1(1,:) .* inMv2(9,:) - inMv1(8,:) .* inMv2(7,:) + inMv1(9,:) .* inMv2(6,:) - inMv1(10,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(4,:) - inMv1(12,:) .* inMv2(3,:) + inMv1(13,:) .* inMv2(2,:);
    outMv(250,:) = inMv1(2,:) .* inMv2(9,:) - inMv1(8,:) .* inMv2(8,:) + inMv1(14,:) .* inMv2(6,:) - inMv1(15,:) .* inMv2(5,:) + inMv1(16,:) .* inMv2(4,:) - inMv1(17,:) .* inMv2(3,:) + inMv1(18,:) .* inMv2(2,:);
    outMv(251,:) = inMv1(3,:) .* inMv2(9,:) - inMv1(9,:) .* inMv2(8,:) + inMv1(14,:) .* inMv2(7,:) - inMv1(19,:) .* inMv2(5,:) + inMv1(20,:) .* inMv2(4,:) - inMv1(21,:) .* inMv2(3,:) + inMv1(22,:) .* inMv2(2,:);
    outMv(252,:) = inMv1(4,:) .* inMv2(9,:) - inMv1(10,:) .* inMv2(8,:) + inMv1(15,:) .* inMv2(7,:) - inMv1(19,:) .* inMv2(6,:) + inMv1(23,:) .* inMv2(4,:) - inMv1(24,:) .* inMv2(3,:) + inMv1(25,:) .* inMv2(2,:);
    outMv(253,:) = inMv1(5,:) .* inMv2(9,:) - inMv1(11,:) .* inMv2(8,:) + inMv1(16,:) .* inMv2(7,:) - inMv1(20,:) .* inMv2(6,:) + inMv1(23,:) .* inMv2(5,:) - inMv1(26,:) .* inMv2(3,:) + inMv1(27,:) .* inMv2(2,:);
    outMv(254,:) = inMv1(6,:) .* inMv2(9,:) - inMv1(12,:) .* inMv2(8,:) + inMv1(17,:) .* inMv2(7,:) - inMv1(21,:) .* inMv2(6,:) + inMv1(24,:) .* inMv2(5,:) - inMv1(26,:) .* inMv2(4,:) + inMv1(28,:) .* inMv2(2,:);
    outMv(255,:) = inMv1(7,:) .* inMv2(9,:) - inMv1(13,:) .* inMv2(8,:) + inMv1(18,:) .* inMv2(7,:) - inMv1(22,:) .* inMv2(6,:) + inMv1(25,:) .* inMv2(5,:) - inMv1(27,:) .* inMv2(4,:) + inMv1(28,:) .* inMv2(3,:);
    outMv(256,:) = inMv1(1,:) .* inMv2(37,:) - inMv1(2,:) .* inMv2(36,:) + inMv1(3,:) .* inMv2(35,:) - inMv1(4,:) .* inMv2(34,:) + inMv1(5,:) .* inMv2(33,:) - inMv1(6,:) .* inMv2(32,:) + inMv1(7,:) .* inMv2(31,:) + inMv1(8,:) .* inMv2(30,:) - inMv1(9,:) .* inMv2(29,:) + inMv1(10,:) .* inMv2(28,:) - inMv1(11,:) .* inMv2(27,:) + inMv1(12,:) .* inMv2(26,:) - inMv1(13,:) .* inMv2(25,:) + inMv1(14,:) .* inMv2(24,:) - inMv1(15,:) .* inMv2(23,:) + inMv1(16,:) .* inMv2(22,:) - inMv1(17,:) .* inMv2(21,:) + inMv1(18,:) .* inMv2(20,:) + inMv1(19,:) .* inMv2(19,:) - inMv1(20,:) .* inMv2(18,:) + inMv1(21,:) .* inMv2(17,:) - inMv1(22,:) .* inMv2(16,:) + inMv1(23,:) .* inMv2(15,:) - inMv1(24,:) .* inMv2(14,:) + inMv1(25,:) .* inMv2(13,:) + inMv1(26,:) .* inMv2(12,:) - inMv1(27,:) .* inMv2(11,:) + inMv1(28,:) .* inMv2(10,:);
end
