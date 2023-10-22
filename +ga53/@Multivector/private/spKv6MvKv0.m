
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spKv6MvKv0(inMv1, inMv2)
    arguments
        inMv1 (28,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(220,:) + inMv1(2,:) .* inMv2(221,:) + inMv1(3,:) .* inMv2(222,:) + inMv1(4,:) .* inMv2(223,:) - inMv1(5,:) .* inMv2(224,:) - inMv1(6,:) .* inMv2(225,:) - inMv1(7,:) .* inMv2(226,:) + inMv1(8,:) .* inMv2(227,:) + inMv1(9,:) .* inMv2(228,:) + inMv1(10,:) .* inMv2(229,:) - inMv1(11,:) .* inMv2(230,:) - inMv1(12,:) .* inMv2(231,:) - inMv1(13,:) .* inMv2(232,:) + inMv1(14,:) .* inMv2(233,:) + inMv1(15,:) .* inMv2(234,:) - inMv1(16,:) .* inMv2(235,:) - inMv1(17,:) .* inMv2(236,:) - inMv1(18,:) .* inMv2(237,:) + inMv1(19,:) .* inMv2(238,:) - inMv1(20,:) .* inMv2(239,:) - inMv1(21,:) .* inMv2(240,:) - inMv1(22,:) .* inMv2(241,:) - inMv1(23,:) .* inMv2(242,:) - inMv1(24,:) .* inMv2(243,:) - inMv1(25,:) .* inMv2(244,:) + inMv1(26,:) .* inMv2(245,:) + inMv1(27,:) .* inMv2(246,:) + inMv1(28,:) .* inMv2(247,:);
end
