
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv1Kv7Mv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (8,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(220,:) = inMv1(7,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(2,:);
    outMv(221,:) = -inMv1(6,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(3,:);
    outMv(222,:) = inMv1(5,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(4,:);
    outMv(223,:) = -inMv1(4,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(5,:);
    outMv(224,:) = -inMv1(3,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(6,:);
    outMv(225,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(7,:);
    outMv(226,:) = -inMv1(1,:) .* inMv2(1,:) + inMv1(8,:) .* inMv2(8,:);
    outMv(227,:) = -inMv1(6,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(3,:);
    outMv(228,:) = inMv1(5,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(4,:);
    outMv(229,:) = -inMv1(4,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(5,:);
    outMv(230,:) = -inMv1(3,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(6,:);
    outMv(231,:) = inMv1(2,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(7,:);
    outMv(232,:) = -inMv1(1,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(8,:);
    outMv(233,:) = inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(4,:);
    outMv(234,:) = -inMv1(4,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(5,:);
    outMv(235,:) = -inMv1(3,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(6,:);
    outMv(236,:) = inMv1(2,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(7,:);
    outMv(237,:) = -inMv1(1,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(8,:);
    outMv(238,:) = -inMv1(4,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(5,:);
    outMv(239,:) = -inMv1(3,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(6,:);
    outMv(240,:) = inMv1(2,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(7,:);
    outMv(241,:) = -inMv1(1,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(8,:);
    outMv(242,:) = -inMv1(3,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(6,:);
    outMv(243,:) = inMv1(2,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(7,:);
    outMv(244,:) = -inMv1(1,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(8,:);
    outMv(245,:) = inMv1(2,:) .* inMv2(6,:) + inMv1(3,:) .* inMv2(7,:);
    outMv(246,:) = -inMv1(1,:) .* inMv2(6,:) + inMv1(3,:) .* inMv2(8,:);
    outMv(247,:) = -inMv1(1,:) .* inMv2(7,:) - inMv1(2,:) .* inMv2(8,:);
    outMv(256,:) = inMv1(1,:) .* inMv2(8,:) - inMv1(2,:) .* inMv2(7,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(3,:) + inMv1(7,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(1,:);
end
