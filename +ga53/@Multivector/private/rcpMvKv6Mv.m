
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpMvKv6Mv(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (28,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = inMv1(220,:) .* inMv2(1,:) + inMv1(221,:) .* inMv2(2,:) + inMv1(222,:) .* inMv2(3,:) + inMv1(223,:) .* inMv2(4,:) - inMv1(224,:) .* inMv2(5,:) - inMv1(225,:) .* inMv2(6,:) - inMv1(226,:) .* inMv2(7,:) + inMv1(227,:) .* inMv2(8,:) + inMv1(228,:) .* inMv2(9,:) + inMv1(229,:) .* inMv2(10,:) - inMv1(230,:) .* inMv2(11,:) - inMv1(231,:) .* inMv2(12,:) - inMv1(232,:) .* inMv2(13,:) + inMv1(233,:) .* inMv2(14,:) + inMv1(234,:) .* inMv2(15,:) - inMv1(235,:) .* inMv2(16,:) - inMv1(236,:) .* inMv2(17,:) - inMv1(237,:) .* inMv2(18,:) + inMv1(238,:) .* inMv2(19,:) - inMv1(239,:) .* inMv2(20,:) - inMv1(240,:) .* inMv2(21,:) - inMv1(241,:) .* inMv2(22,:) - inMv1(242,:) .* inMv2(23,:) - inMv1(243,:) .* inMv2(24,:) - inMv1(244,:) .* inMv2(25,:) + inMv1(245,:) .* inMv2(26,:) + inMv1(246,:) .* inMv2(27,:) + inMv1(247,:) .* inMv2(28,:);
    outMv(2,:) = -inMv1(248,:) .* inMv2(7,:) - inMv1(249,:) .* inMv2(13,:) - inMv1(250,:) .* inMv2(18,:) - inMv1(251,:) .* inMv2(22,:) - inMv1(252,:) .* inMv2(25,:) + inMv1(253,:) .* inMv2(27,:) + inMv1(254,:) .* inMv2(28,:);
    outMv(3,:) = inMv1(248,:) .* inMv2(6,:) + inMv1(249,:) .* inMv2(12,:) + inMv1(250,:) .* inMv2(17,:) + inMv1(251,:) .* inMv2(21,:) + inMv1(252,:) .* inMv2(24,:) - inMv1(253,:) .* inMv2(26,:) + inMv1(255,:) .* inMv2(28,:);
    outMv(4,:) = -inMv1(248,:) .* inMv2(5,:) - inMv1(249,:) .* inMv2(11,:) - inMv1(250,:) .* inMv2(16,:) - inMv1(251,:) .* inMv2(20,:) - inMv1(252,:) .* inMv2(23,:) - inMv1(254,:) .* inMv2(26,:) - inMv1(255,:) .* inMv2(27,:);
    outMv(5,:) = -inMv1(248,:) .* inMv2(4,:) - inMv1(249,:) .* inMv2(10,:) - inMv1(250,:) .* inMv2(15,:) - inMv1(251,:) .* inMv2(19,:) - inMv1(253,:) .* inMv2(23,:) - inMv1(254,:) .* inMv2(24,:) - inMv1(255,:) .* inMv2(25,:);
    outMv(6,:) = inMv1(248,:) .* inMv2(3,:) + inMv1(249,:) .* inMv2(9,:) + inMv1(250,:) .* inMv2(14,:) - inMv1(252,:) .* inMv2(19,:) + inMv1(253,:) .* inMv2(20,:) + inMv1(254,:) .* inMv2(21,:) + inMv1(255,:) .* inMv2(22,:);
    outMv(7,:) = -inMv1(248,:) .* inMv2(2,:) - inMv1(249,:) .* inMv2(8,:) + inMv1(251,:) .* inMv2(14,:) + inMv1(252,:) .* inMv2(15,:) - inMv1(253,:) .* inMv2(16,:) - inMv1(254,:) .* inMv2(17,:) - inMv1(255,:) .* inMv2(18,:);
    outMv(8,:) = inMv1(248,:) .* inMv2(1,:) - inMv1(250,:) .* inMv2(8,:) - inMv1(251,:) .* inMv2(9,:) - inMv1(252,:) .* inMv2(10,:) + inMv1(253,:) .* inMv2(11,:) + inMv1(254,:) .* inMv2(12,:) + inMv1(255,:) .* inMv2(13,:);
    outMv(9,:) = inMv1(249,:) .* inMv2(1,:) + inMv1(250,:) .* inMv2(2,:) + inMv1(251,:) .* inMv2(3,:) + inMv1(252,:) .* inMv2(4,:) - inMv1(253,:) .* inMv2(5,:) - inMv1(254,:) .* inMv2(6,:) - inMv1(255,:) .* inMv2(7,:);
    outMv(10,:) = inMv1(256,:) .* inMv2(28,:);
    outMv(11,:) = -inMv1(256,:) .* inMv2(27,:);
    outMv(12,:) = inMv1(256,:) .* inMv2(26,:);
    outMv(13,:) = -inMv1(256,:) .* inMv2(25,:);
    outMv(14,:) = inMv1(256,:) .* inMv2(24,:);
    outMv(15,:) = -inMv1(256,:) .* inMv2(23,:);
    outMv(16,:) = inMv1(256,:) .* inMv2(22,:);
    outMv(17,:) = -inMv1(256,:) .* inMv2(21,:);
    outMv(18,:) = inMv1(256,:) .* inMv2(20,:);
    outMv(19,:) = inMv1(256,:) .* inMv2(19,:);
    outMv(20,:) = -inMv1(256,:) .* inMv2(18,:);
    outMv(21,:) = inMv1(256,:) .* inMv2(17,:);
    outMv(22,:) = -inMv1(256,:) .* inMv2(16,:);
    outMv(23,:) = -inMv1(256,:) .* inMv2(15,:);
    outMv(24,:) = inMv1(256,:) .* inMv2(14,:);
    outMv(25,:) = inMv1(256,:) .* inMv2(13,:);
    outMv(26,:) = -inMv1(256,:) .* inMv2(12,:);
    outMv(27,:) = inMv1(256,:) .* inMv2(11,:);
    outMv(28,:) = inMv1(256,:) .* inMv2(10,:);
    outMv(29,:) = -inMv1(256,:) .* inMv2(9,:);
    outMv(30,:) = inMv1(256,:) .* inMv2(8,:);
    outMv(31,:) = -inMv1(256,:) .* inMv2(7,:);
    outMv(32,:) = inMv1(256,:) .* inMv2(6,:);
    outMv(33,:) = -inMv1(256,:) .* inMv2(5,:);
    outMv(34,:) = -inMv1(256,:) .* inMv2(4,:);
    outMv(35,:) = inMv1(256,:) .* inMv2(3,:);
    outMv(36,:) = -inMv1(256,:) .* inMv2(2,:);
    outMv(37,:) = inMv1(256,:) .* inMv2(1,:);
end
