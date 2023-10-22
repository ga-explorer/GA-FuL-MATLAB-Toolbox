
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv6MvMv(inMv1, inMv2)
    arguments
        inMv1 (28,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(220,:) + inMv1(2,:) .* inMv2(221,:) + inMv1(3,:) .* inMv2(222,:) + inMv1(4,:) .* inMv2(223,:) - inMv1(5,:) .* inMv2(224,:) - inMv1(6,:) .* inMv2(225,:) - inMv1(7,:) .* inMv2(226,:) + inMv1(8,:) .* inMv2(227,:) + inMv1(9,:) .* inMv2(228,:) + inMv1(10,:) .* inMv2(229,:) - inMv1(11,:) .* inMv2(230,:) - inMv1(12,:) .* inMv2(231,:) - inMv1(13,:) .* inMv2(232,:) + inMv1(14,:) .* inMv2(233,:) + inMv1(15,:) .* inMv2(234,:) - inMv1(16,:) .* inMv2(235,:) - inMv1(17,:) .* inMv2(236,:) - inMv1(18,:) .* inMv2(237,:) + inMv1(19,:) .* inMv2(238,:) - inMv1(20,:) .* inMv2(239,:) - inMv1(21,:) .* inMv2(240,:) - inMv1(22,:) .* inMv2(241,:) - inMv1(23,:) .* inMv2(242,:) - inMv1(24,:) .* inMv2(243,:) - inMv1(25,:) .* inMv2(244,:) + inMv1(26,:) .* inMv2(245,:) + inMv1(27,:) .* inMv2(246,:) + inMv1(28,:) .* inMv2(247,:);
    outMv(2,:) = -inMv1(7,:) .* inMv2(248,:) - inMv1(13,:) .* inMv2(249,:) - inMv1(18,:) .* inMv2(250,:) - inMv1(22,:) .* inMv2(251,:) - inMv1(25,:) .* inMv2(252,:) + inMv1(27,:) .* inMv2(253,:) + inMv1(28,:) .* inMv2(254,:);
    outMv(3,:) = inMv1(6,:) .* inMv2(248,:) + inMv1(12,:) .* inMv2(249,:) + inMv1(17,:) .* inMv2(250,:) + inMv1(21,:) .* inMv2(251,:) + inMv1(24,:) .* inMv2(252,:) - inMv1(26,:) .* inMv2(253,:) + inMv1(28,:) .* inMv2(255,:);
    outMv(4,:) = -inMv1(5,:) .* inMv2(248,:) - inMv1(11,:) .* inMv2(249,:) - inMv1(16,:) .* inMv2(250,:) - inMv1(20,:) .* inMv2(251,:) - inMv1(23,:) .* inMv2(252,:) - inMv1(26,:) .* inMv2(254,:) - inMv1(27,:) .* inMv2(255,:);
    outMv(5,:) = -inMv1(4,:) .* inMv2(248,:) - inMv1(10,:) .* inMv2(249,:) - inMv1(15,:) .* inMv2(250,:) - inMv1(19,:) .* inMv2(251,:) - inMv1(23,:) .* inMv2(253,:) - inMv1(24,:) .* inMv2(254,:) - inMv1(25,:) .* inMv2(255,:);
    outMv(6,:) = inMv1(3,:) .* inMv2(248,:) + inMv1(9,:) .* inMv2(249,:) + inMv1(14,:) .* inMv2(250,:) - inMv1(19,:) .* inMv2(252,:) + inMv1(20,:) .* inMv2(253,:) + inMv1(21,:) .* inMv2(254,:) + inMv1(22,:) .* inMv2(255,:);
    outMv(7,:) = -inMv1(2,:) .* inMv2(248,:) - inMv1(8,:) .* inMv2(249,:) + inMv1(14,:) .* inMv2(251,:) + inMv1(15,:) .* inMv2(252,:) - inMv1(16,:) .* inMv2(253,:) - inMv1(17,:) .* inMv2(254,:) - inMv1(18,:) .* inMv2(255,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(248,:) - inMv1(8,:) .* inMv2(250,:) - inMv1(9,:) .* inMv2(251,:) - inMv1(10,:) .* inMv2(252,:) + inMv1(11,:) .* inMv2(253,:) + inMv1(12,:) .* inMv2(254,:) + inMv1(13,:) .* inMv2(255,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(249,:) + inMv1(2,:) .* inMv2(250,:) + inMv1(3,:) .* inMv2(251,:) + inMv1(4,:) .* inMv2(252,:) - inMv1(5,:) .* inMv2(253,:) - inMv1(6,:) .* inMv2(254,:) - inMv1(7,:) .* inMv2(255,:);
    outMv(10,:) = inMv1(28,:) .* inMv2(256,:);
    outMv(11,:) = -inMv1(27,:) .* inMv2(256,:);
    outMv(12,:) = inMv1(26,:) .* inMv2(256,:);
    outMv(13,:) = -inMv1(25,:) .* inMv2(256,:);
    outMv(14,:) = inMv1(24,:) .* inMv2(256,:);
    outMv(15,:) = -inMv1(23,:) .* inMv2(256,:);
    outMv(16,:) = inMv1(22,:) .* inMv2(256,:);
    outMv(17,:) = -inMv1(21,:) .* inMv2(256,:);
    outMv(18,:) = inMv1(20,:) .* inMv2(256,:);
    outMv(19,:) = inMv1(19,:) .* inMv2(256,:);
    outMv(20,:) = -inMv1(18,:) .* inMv2(256,:);
    outMv(21,:) = inMv1(17,:) .* inMv2(256,:);
    outMv(22,:) = -inMv1(16,:) .* inMv2(256,:);
    outMv(23,:) = -inMv1(15,:) .* inMv2(256,:);
    outMv(24,:) = inMv1(14,:) .* inMv2(256,:);
    outMv(25,:) = inMv1(13,:) .* inMv2(256,:);
    outMv(26,:) = -inMv1(12,:) .* inMv2(256,:);
    outMv(27,:) = inMv1(11,:) .* inMv2(256,:);
    outMv(28,:) = inMv1(10,:) .* inMv2(256,:);
    outMv(29,:) = -inMv1(9,:) .* inMv2(256,:);
    outMv(30,:) = inMv1(8,:) .* inMv2(256,:);
    outMv(31,:) = -inMv1(7,:) .* inMv2(256,:);
    outMv(32,:) = inMv1(6,:) .* inMv2(256,:);
    outMv(33,:) = -inMv1(5,:) .* inMv2(256,:);
    outMv(34,:) = -inMv1(4,:) .* inMv2(256,:);
    outMv(35,:) = inMv1(3,:) .* inMv2(256,:);
    outMv(36,:) = -inMv1(2,:) .* inMv2(256,:);
    outMv(37,:) = inMv1(1,:) .* inMv2(256,:);
end
