% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv2Kv2Mv(inMv1, inMv2)
    arguments
        inMv1 (28,:) double
        inMv2 (28,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(2,:) .* inMv2(2,:) - inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(5,:) + inMv1(6,:) .* inMv2(6,:) + inMv1(7,:) .* inMv2(7,:) + inMv1(8,:) .* inMv2(8,:) + inMv1(9,:) .* inMv2(9,:) - inMv1(10,:) .* inMv2(10,:) + inMv1(11,:) .* inMv2(11,:) + inMv1(12,:) .* inMv2(12,:) + inMv1(13,:) .* inMv2(13,:) - inMv1(14,:) .* inMv2(14,:) - inMv1(15,:) .* inMv2(15,:) + inMv1(16,:) .* inMv2(16,:) + inMv1(17,:) .* inMv2(17,:) + inMv1(18,:) .* inMv2(18,:) - inMv1(19,:) .* inMv2(19,:) - inMv1(20,:) .* inMv2(20,:) - inMv1(21,:) .* inMv2(21,:) + inMv1(22,:) .* inMv2(22,:) + inMv1(23,:) .* inMv2(23,:) + inMv1(24,:) .* inMv2(24,:) - inMv1(25,:) .* inMv2(25,:) - inMv1(26,:) .* inMv2(26,:) - inMv1(27,:) .* inMv2(27,:) - inMv1(28,:) .* inMv2(28,:);
    outMv(10,:) = inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(2,:) - inMv1(4,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(4,:) - inMv1(7,:) .* inMv2(8,:) + inMv1(8,:) .* inMv2(7,:) - inMv1(11,:) .* inMv2(12,:) + inMv1(12,:) .* inMv2(11,:) - inMv1(16,:) .* inMv2(17,:) + inMv1(17,:) .* inMv2(16,:) - inMv1(22,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(22,:);
    outMv(11,:) = -inMv1(1,:) .* inMv2(3,:) + inMv1(3,:) .* inMv2(1,:) - inMv1(4,:) .* inMv2(6,:) + inMv1(6,:) .* inMv2(4,:) - inMv1(7,:) .* inMv2(9,:) + inMv1(9,:) .* inMv2(7,:) - inMv1(11,:) .* inMv2(13,:) + inMv1(13,:) .* inMv2(11,:) - inMv1(16,:) .* inMv2(18,:) + inMv1(18,:) .* inMv2(16,:) - inMv1(22,:) .* inMv2(24,:) + inMv1(24,:) .* inMv2(22,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(1,:) - inMv1(5,:) .* inMv2(6,:) + inMv1(6,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(9,:) + inMv1(9,:) .* inMv2(8,:) - inMv1(12,:) .* inMv2(13,:) + inMv1(13,:) .* inMv2(12,:) - inMv1(17,:) .* inMv2(18,:) + inMv1(18,:) .* inMv2(17,:) - inMv1(23,:) .* inMv2(24,:) + inMv1(24,:) .* inMv2(23,:);
    outMv(13,:) = -inMv1(1,:) .* inMv2(5,:) - inMv1(2,:) .* inMv2(6,:) + inMv1(5,:) .* inMv2(1,:) + inMv1(6,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(10,:) + inMv1(10,:) .* inMv2(7,:) - inMv1(11,:) .* inMv2(14,:) + inMv1(14,:) .* inMv2(11,:) - inMv1(16,:) .* inMv2(19,:) + inMv1(19,:) .* inMv2(16,:) - inMv1(22,:) .* inMv2(25,:) + inMv1(25,:) .* inMv2(22,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(1,:) + inMv1(6,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(10,:) + inMv1(10,:) .* inMv2(8,:) - inMv1(12,:) .* inMv2(14,:) + inMv1(14,:) .* inMv2(12,:) - inMv1(17,:) .* inMv2(19,:) + inMv1(19,:) .* inMv2(17,:) - inMv1(23,:) .* inMv2(25,:) + inMv1(25,:) .* inMv2(23,:);
    outMv(15,:) = inMv1(2,:) .* inMv2(4,:) + inMv1(3,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(3,:) - inMv1(9,:) .* inMv2(10,:) + inMv1(10,:) .* inMv2(9,:) - inMv1(13,:) .* inMv2(14,:) + inMv1(14,:) .* inMv2(13,:) - inMv1(18,:) .* inMv2(19,:) + inMv1(19,:) .* inMv2(18,:) - inMv1(24,:) .* inMv2(25,:) + inMv1(25,:) .* inMv2(24,:);
    outMv(16,:) = -inMv1(1,:) .* inMv2(8,:) - inMv1(2,:) .* inMv2(9,:) + inMv1(4,:) .* inMv2(10,:) + inMv1(8,:) .* inMv2(1,:) + inMv1(9,:) .* inMv2(2,:) - inMv1(10,:) .* inMv2(4,:) - inMv1(11,:) .* inMv2(15,:) + inMv1(15,:) .* inMv2(11,:) - inMv1(16,:) .* inMv2(20,:) + inMv1(20,:) .* inMv2(16,:) - inMv1(22,:) .* inMv2(26,:) + inMv1(26,:) .* inMv2(22,:);
    outMv(17,:) = inMv1(1,:) .* inMv2(7,:) - inMv1(3,:) .* inMv2(9,:) + inMv1(5,:) .* inMv2(10,:) - inMv1(7,:) .* inMv2(1,:) + inMv1(9,:) .* inMv2(3,:) - inMv1(10,:) .* inMv2(5,:) - inMv1(12,:) .* inMv2(15,:) + inMv1(15,:) .* inMv2(12,:) - inMv1(17,:) .* inMv2(20,:) + inMv1(20,:) .* inMv2(17,:) - inMv1(23,:) .* inMv2(26,:) + inMv1(26,:) .* inMv2(23,:);
    outMv(18,:) = inMv1(2,:) .* inMv2(7,:) + inMv1(3,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(10,:) - inMv1(7,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(3,:) - inMv1(10,:) .* inMv2(6,:) - inMv1(13,:) .* inMv2(15,:) + inMv1(15,:) .* inMv2(13,:) - inMv1(18,:) .* inMv2(20,:) + inMv1(20,:) .* inMv2(18,:) - inMv1(24,:) .* inMv2(26,:) + inMv1(26,:) .* inMv2(24,:);
    outMv(19,:) = inMv1(4,:) .* inMv2(7,:) + inMv1(5,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(9,:) - inMv1(7,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(5,:) - inMv1(9,:) .* inMv2(6,:) - inMv1(14,:) .* inMv2(15,:) + inMv1(15,:) .* inMv2(14,:) - inMv1(19,:) .* inMv2(20,:) + inMv1(20,:) .* inMv2(19,:) - inMv1(25,:) .* inMv2(26,:) + inMv1(26,:) .* inMv2(25,:);
    outMv(20,:) = -inMv1(1,:) .* inMv2(12,:) - inMv1(2,:) .* inMv2(13,:) + inMv1(4,:) .* inMv2(14,:) + inMv1(7,:) .* inMv2(15,:) + inMv1(12,:) .* inMv2(1,:) + inMv1(13,:) .* inMv2(2,:) - inMv1(14,:) .* inMv2(4,:) - inMv1(15,:) .* inMv2(7,:) - inMv1(16,:) .* inMv2(21,:) + inMv1(21,:) .* inMv2(16,:) - inMv1(22,:) .* inMv2(27,:) + inMv1(27,:) .* inMv2(22,:);
    outMv(21,:) = inMv1(1,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(13,:) + inMv1(5,:) .* inMv2(14,:) + inMv1(8,:) .* inMv2(15,:) - inMv1(11,:) .* inMv2(1,:) + inMv1(13,:) .* inMv2(3,:) - inMv1(14,:) .* inMv2(5,:) - inMv1(15,:) .* inMv2(8,:) - inMv1(17,:) .* inMv2(21,:) + inMv1(21,:) .* inMv2(17,:) - inMv1(23,:) .* inMv2(27,:) + inMv1(27,:) .* inMv2(23,:);
    outMv(22,:) = inMv1(2,:) .* inMv2(11,:) + inMv1(3,:) .* inMv2(12,:) + inMv1(6,:) .* inMv2(14,:) + inMv1(9,:) .* inMv2(15,:) - inMv1(11,:) .* inMv2(2,:) - inMv1(12,:) .* inMv2(3,:) - inMv1(14,:) .* inMv2(6,:) - inMv1(15,:) .* inMv2(9,:) - inMv1(18,:) .* inMv2(21,:) + inMv1(21,:) .* inMv2(18,:) - inMv1(24,:) .* inMv2(27,:) + inMv1(27,:) .* inMv2(24,:);
    outMv(23,:) = inMv1(4,:) .* inMv2(11,:) + inMv1(5,:) .* inMv2(12,:) + inMv1(6,:) .* inMv2(13,:) + inMv1(10,:) .* inMv2(15,:) - inMv1(11,:) .* inMv2(4,:) - inMv1(12,:) .* inMv2(5,:) - inMv1(13,:) .* inMv2(6,:) - inMv1(15,:) .* inMv2(10,:) - inMv1(19,:) .* inMv2(21,:) + inMv1(21,:) .* inMv2(19,:) - inMv1(25,:) .* inMv2(27,:) + inMv1(27,:) .* inMv2(25,:);
    outMv(24,:) = inMv1(7,:) .* inMv2(11,:) + inMv1(8,:) .* inMv2(12,:) + inMv1(9,:) .* inMv2(13,:) - inMv1(10,:) .* inMv2(14,:) - inMv1(11,:) .* inMv2(7,:) - inMv1(12,:) .* inMv2(8,:) - inMv1(13,:) .* inMv2(9,:) + inMv1(14,:) .* inMv2(10,:) - inMv1(20,:) .* inMv2(21,:) + inMv1(21,:) .* inMv2(20,:) - inMv1(26,:) .* inMv2(27,:) + inMv1(27,:) .* inMv2(26,:);
    outMv(25,:) = -inMv1(1,:) .* inMv2(17,:) - inMv1(2,:) .* inMv2(18,:) + inMv1(4,:) .* inMv2(19,:) + inMv1(7,:) .* inMv2(20,:) + inMv1(11,:) .* inMv2(21,:) + inMv1(17,:) .* inMv2(1,:) + inMv1(18,:) .* inMv2(2,:) - inMv1(19,:) .* inMv2(4,:) - inMv1(20,:) .* inMv2(7,:) - inMv1(21,:) .* inMv2(11,:) - inMv1(22,:) .* inMv2(28,:) + inMv1(28,:) .* inMv2(22,:);
    outMv(26,:) = inMv1(1,:) .* inMv2(16,:) - inMv1(3,:) .* inMv2(18,:) + inMv1(5,:) .* inMv2(19,:) + inMv1(8,:) .* inMv2(20,:) + inMv1(12,:) .* inMv2(21,:) - inMv1(16,:) .* inMv2(1,:) + inMv1(18,:) .* inMv2(3,:) - inMv1(19,:) .* inMv2(5,:) - inMv1(20,:) .* inMv2(8,:) - inMv1(21,:) .* inMv2(12,:) - inMv1(23,:) .* inMv2(28,:) + inMv1(28,:) .* inMv2(23,:);
    outMv(27,:) = inMv1(2,:) .* inMv2(16,:) + inMv1(3,:) .* inMv2(17,:) + inMv1(6,:) .* inMv2(19,:) + inMv1(9,:) .* inMv2(20,:) + inMv1(13,:) .* inMv2(21,:) - inMv1(16,:) .* inMv2(2,:) - inMv1(17,:) .* inMv2(3,:) - inMv1(19,:) .* inMv2(6,:) - inMv1(20,:) .* inMv2(9,:) - inMv1(21,:) .* inMv2(13,:) - inMv1(24,:) .* inMv2(28,:) + inMv1(28,:) .* inMv2(24,:);
    outMv(28,:) = inMv1(4,:) .* inMv2(16,:) + inMv1(5,:) .* inMv2(17,:) + inMv1(6,:) .* inMv2(18,:) + inMv1(10,:) .* inMv2(20,:) + inMv1(14,:) .* inMv2(21,:) - inMv1(16,:) .* inMv2(4,:) - inMv1(17,:) .* inMv2(5,:) - inMv1(18,:) .* inMv2(6,:) - inMv1(20,:) .* inMv2(10,:) - inMv1(21,:) .* inMv2(14,:) - inMv1(25,:) .* inMv2(28,:) + inMv1(28,:) .* inMv2(25,:);
    outMv(29,:) = inMv1(7,:) .* inMv2(16,:) + inMv1(8,:) .* inMv2(17,:) + inMv1(9,:) .* inMv2(18,:) - inMv1(10,:) .* inMv2(19,:) + inMv1(15,:) .* inMv2(21,:) - inMv1(16,:) .* inMv2(7,:) - inMv1(17,:) .* inMv2(8,:) - inMv1(18,:) .* inMv2(9,:) + inMv1(19,:) .* inMv2(10,:) - inMv1(21,:) .* inMv2(15,:) - inMv1(26,:) .* inMv2(28,:) + inMv1(28,:) .* inMv2(26,:);
    outMv(30,:) = inMv1(11,:) .* inMv2(16,:) + inMv1(12,:) .* inMv2(17,:) + inMv1(13,:) .* inMv2(18,:) - inMv1(14,:) .* inMv2(19,:) - inMv1(15,:) .* inMv2(20,:) - inMv1(16,:) .* inMv2(11,:) - inMv1(17,:) .* inMv2(12,:) - inMv1(18,:) .* inMv2(13,:) + inMv1(19,:) .* inMv2(14,:) + inMv1(20,:) .* inMv2(15,:) - inMv1(27,:) .* inMv2(28,:) + inMv1(28,:) .* inMv2(27,:);
    outMv(31,:) = -inMv1(1,:) .* inMv2(23,:) - inMv1(2,:) .* inMv2(24,:) + inMv1(4,:) .* inMv2(25,:) + inMv1(7,:) .* inMv2(26,:) + inMv1(11,:) .* inMv2(27,:) + inMv1(16,:) .* inMv2(28,:) + inMv1(23,:) .* inMv2(1,:) + inMv1(24,:) .* inMv2(2,:) - inMv1(25,:) .* inMv2(4,:) - inMv1(26,:) .* inMv2(7,:) - inMv1(27,:) .* inMv2(11,:) - inMv1(28,:) .* inMv2(16,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(22,:) - inMv1(3,:) .* inMv2(24,:) + inMv1(5,:) .* inMv2(25,:) + inMv1(8,:) .* inMv2(26,:) + inMv1(12,:) .* inMv2(27,:) + inMv1(17,:) .* inMv2(28,:) - inMv1(22,:) .* inMv2(1,:) + inMv1(24,:) .* inMv2(3,:) - inMv1(25,:) .* inMv2(5,:) - inMv1(26,:) .* inMv2(8,:) - inMv1(27,:) .* inMv2(12,:) - inMv1(28,:) .* inMv2(17,:);
    outMv(33,:) = inMv1(2,:) .* inMv2(22,:) + inMv1(3,:) .* inMv2(23,:) + inMv1(6,:) .* inMv2(25,:) + inMv1(9,:) .* inMv2(26,:) + inMv1(13,:) .* inMv2(27,:) + inMv1(18,:) .* inMv2(28,:) - inMv1(22,:) .* inMv2(2,:) - inMv1(23,:) .* inMv2(3,:) - inMv1(25,:) .* inMv2(6,:) - inMv1(26,:) .* inMv2(9,:) - inMv1(27,:) .* inMv2(13,:) - inMv1(28,:) .* inMv2(18,:);
    outMv(34,:) = inMv1(4,:) .* inMv2(22,:) + inMv1(5,:) .* inMv2(23,:) + inMv1(6,:) .* inMv2(24,:) + inMv1(10,:) .* inMv2(26,:) + inMv1(14,:) .* inMv2(27,:) + inMv1(19,:) .* inMv2(28,:) - inMv1(22,:) .* inMv2(4,:) - inMv1(23,:) .* inMv2(5,:) - inMv1(24,:) .* inMv2(6,:) - inMv1(26,:) .* inMv2(10,:) - inMv1(27,:) .* inMv2(14,:) - inMv1(28,:) .* inMv2(19,:);
    outMv(35,:) = inMv1(7,:) .* inMv2(22,:) + inMv1(8,:) .* inMv2(23,:) + inMv1(9,:) .* inMv2(24,:) - inMv1(10,:) .* inMv2(25,:) + inMv1(15,:) .* inMv2(27,:) + inMv1(20,:) .* inMv2(28,:) - inMv1(22,:) .* inMv2(7,:) - inMv1(23,:) .* inMv2(8,:) - inMv1(24,:) .* inMv2(9,:) + inMv1(25,:) .* inMv2(10,:) - inMv1(27,:) .* inMv2(15,:) - inMv1(28,:) .* inMv2(20,:);
    outMv(36,:) = inMv1(11,:) .* inMv2(22,:) + inMv1(12,:) .* inMv2(23,:) + inMv1(13,:) .* inMv2(24,:) - inMv1(14,:) .* inMv2(25,:) - inMv1(15,:) .* inMv2(26,:) + inMv1(21,:) .* inMv2(28,:) - inMv1(22,:) .* inMv2(11,:) - inMv1(23,:) .* inMv2(12,:) - inMv1(24,:) .* inMv2(13,:) + inMv1(25,:) .* inMv2(14,:) + inMv1(26,:) .* inMv2(15,:) - inMv1(28,:) .* inMv2(21,:);
    outMv(37,:) = inMv1(16,:) .* inMv2(22,:) + inMv1(17,:) .* inMv2(23,:) + inMv1(18,:) .* inMv2(24,:) - inMv1(19,:) .* inMv2(25,:) - inMv1(20,:) .* inMv2(26,:) - inMv1(21,:) .* inMv2(27,:) - inMv1(22,:) .* inMv2(16,:) - inMv1(23,:) .* inMv2(17,:) - inMv1(24,:) .* inMv2(18,:) + inMv1(25,:) .* inMv2(19,:) + inMv1(26,:) .* inMv2(20,:) + inMv1(27,:) .* inMv2(21,:);
    outMv(94,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(2,:) .* inMv2(5,:) + inMv1(3,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(1,:);
    outMv(95,:) = inMv1(1,:) .* inMv2(9,:) - inMv1(2,:) .* inMv2(8,:) + inMv1(3,:) .* inMv2(7,:) + inMv1(7,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(2,:) + inMv1(9,:) .* inMv2(1,:);
    outMv(96,:) = inMv1(1,:) .* inMv2(10,:) - inMv1(4,:) .* inMv2(8,:) + inMv1(5,:) .* inMv2(7,:) + inMv1(7,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(4,:) + inMv1(10,:) .* inMv2(1,:);
    outMv(97,:) = inMv1(2,:) .* inMv2(10,:) - inMv1(4,:) .* inMv2(9,:) + inMv1(6,:) .* inMv2(7,:) + inMv1(7,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(4,:) + inMv1(10,:) .* inMv2(2,:);
    outMv(98,:) = inMv1(3,:) .* inMv2(10,:) - inMv1(5,:) .* inMv2(9,:) + inMv1(6,:) .* inMv2(8,:) + inMv1(8,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(5,:) + inMv1(10,:) .* inMv2(3,:);
    outMv(99,:) = inMv1(1,:) .* inMv2(13,:) - inMv1(2,:) .* inMv2(12,:) + inMv1(3,:) .* inMv2(11,:) + inMv1(11,:) .* inMv2(3,:) - inMv1(12,:) .* inMv2(2,:) + inMv1(13,:) .* inMv2(1,:);
    outMv(100,:) = inMv1(1,:) .* inMv2(14,:) - inMv1(4,:) .* inMv2(12,:) + inMv1(5,:) .* inMv2(11,:) + inMv1(11,:) .* inMv2(5,:) - inMv1(12,:) .* inMv2(4,:) + inMv1(14,:) .* inMv2(1,:);
    outMv(101,:) = inMv1(2,:) .* inMv2(14,:) - inMv1(4,:) .* inMv2(13,:) + inMv1(6,:) .* inMv2(11,:) + inMv1(11,:) .* inMv2(6,:) - inMv1(13,:) .* inMv2(4,:) + inMv1(14,:) .* inMv2(2,:);
    outMv(102,:) = inMv1(3,:) .* inMv2(14,:) - inMv1(5,:) .* inMv2(13,:) + inMv1(6,:) .* inMv2(12,:) + inMv1(12,:) .* inMv2(6,:) - inMv1(13,:) .* inMv2(5,:) + inMv1(14,:) .* inMv2(3,:);
    outMv(103,:) = inMv1(1,:) .* inMv2(15,:) - inMv1(7,:) .* inMv2(12,:) + inMv1(8,:) .* inMv2(11,:) + inMv1(11,:) .* inMv2(8,:) - inMv1(12,:) .* inMv2(7,:) + inMv1(15,:) .* inMv2(1,:);
    outMv(104,:) = inMv1(2,:) .* inMv2(15,:) - inMv1(7,:) .* inMv2(13,:) + inMv1(9,:) .* inMv2(11,:) + inMv1(11,:) .* inMv2(9,:) - inMv1(13,:) .* inMv2(7,:) + inMv1(15,:) .* inMv2(2,:);
    outMv(105,:) = inMv1(3,:) .* inMv2(15,:) - inMv1(8,:) .* inMv2(13,:) + inMv1(9,:) .* inMv2(12,:) + inMv1(12,:) .* inMv2(9,:) - inMv1(13,:) .* inMv2(8,:) + inMv1(15,:) .* inMv2(3,:);
    outMv(106,:) = inMv1(4,:) .* inMv2(15,:) - inMv1(7,:) .* inMv2(14,:) + inMv1(10,:) .* inMv2(11,:) + inMv1(11,:) .* inMv2(10,:) - inMv1(14,:) .* inMv2(7,:) + inMv1(15,:) .* inMv2(4,:);
    outMv(107,:) = inMv1(5,:) .* inMv2(15,:) - inMv1(8,:) .* inMv2(14,:) + inMv1(10,:) .* inMv2(12,:) + inMv1(12,:) .* inMv2(10,:) - inMv1(14,:) .* inMv2(8,:) + inMv1(15,:) .* inMv2(5,:);
    outMv(108,:) = inMv1(6,:) .* inMv2(15,:) - inMv1(9,:) .* inMv2(14,:) + inMv1(10,:) .* inMv2(13,:) + inMv1(13,:) .* inMv2(10,:) - inMv1(14,:) .* inMv2(9,:) + inMv1(15,:) .* inMv2(6,:);
    outMv(109,:) = inMv1(1,:) .* inMv2(18,:) - inMv1(2,:) .* inMv2(17,:) + inMv1(3,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(3,:) - inMv1(17,:) .* inMv2(2,:) + inMv1(18,:) .* inMv2(1,:);
    outMv(110,:) = inMv1(1,:) .* inMv2(19,:) - inMv1(4,:) .* inMv2(17,:) + inMv1(5,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(5,:) - inMv1(17,:) .* inMv2(4,:) + inMv1(19,:) .* inMv2(1,:);
    outMv(111,:) = inMv1(2,:) .* inMv2(19,:) - inMv1(4,:) .* inMv2(18,:) + inMv1(6,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(6,:) - inMv1(18,:) .* inMv2(4,:) + inMv1(19,:) .* inMv2(2,:);
    outMv(112,:) = inMv1(3,:) .* inMv2(19,:) - inMv1(5,:) .* inMv2(18,:) + inMv1(6,:) .* inMv2(17,:) + inMv1(17,:) .* inMv2(6,:) - inMv1(18,:) .* inMv2(5,:) + inMv1(19,:) .* inMv2(3,:);
    outMv(113,:) = inMv1(1,:) .* inMv2(20,:) - inMv1(7,:) .* inMv2(17,:) + inMv1(8,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(8,:) - inMv1(17,:) .* inMv2(7,:) + inMv1(20,:) .* inMv2(1,:);
    outMv(114,:) = inMv1(2,:) .* inMv2(20,:) - inMv1(7,:) .* inMv2(18,:) + inMv1(9,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(9,:) - inMv1(18,:) .* inMv2(7,:) + inMv1(20,:) .* inMv2(2,:);
    outMv(115,:) = inMv1(3,:) .* inMv2(20,:) - inMv1(8,:) .* inMv2(18,:) + inMv1(9,:) .* inMv2(17,:) + inMv1(17,:) .* inMv2(9,:) - inMv1(18,:) .* inMv2(8,:) + inMv1(20,:) .* inMv2(3,:);
    outMv(116,:) = inMv1(4,:) .* inMv2(20,:) - inMv1(7,:) .* inMv2(19,:) + inMv1(10,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(10,:) - inMv1(19,:) .* inMv2(7,:) + inMv1(20,:) .* inMv2(4,:);
    outMv(117,:) = inMv1(5,:) .* inMv2(20,:) - inMv1(8,:) .* inMv2(19,:) + inMv1(10,:) .* inMv2(17,:) + inMv1(17,:) .* inMv2(10,:) - inMv1(19,:) .* inMv2(8,:) + inMv1(20,:) .* inMv2(5,:);
    outMv(118,:) = inMv1(6,:) .* inMv2(20,:) - inMv1(9,:) .* inMv2(19,:) + inMv1(10,:) .* inMv2(18,:) + inMv1(18,:) .* inMv2(10,:) - inMv1(19,:) .* inMv2(9,:) + inMv1(20,:) .* inMv2(6,:);
    outMv(119,:) = inMv1(1,:) .* inMv2(21,:) - inMv1(11,:) .* inMv2(17,:) + inMv1(12,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(12,:) - inMv1(17,:) .* inMv2(11,:) + inMv1(21,:) .* inMv2(1,:);
    outMv(120,:) = inMv1(2,:) .* inMv2(21,:) - inMv1(11,:) .* inMv2(18,:) + inMv1(13,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(13,:) - inMv1(18,:) .* inMv2(11,:) + inMv1(21,:) .* inMv2(2,:);
    outMv(121,:) = inMv1(3,:) .* inMv2(21,:) - inMv1(12,:) .* inMv2(18,:) + inMv1(13,:) .* inMv2(17,:) + inMv1(17,:) .* inMv2(13,:) - inMv1(18,:) .* inMv2(12,:) + inMv1(21,:) .* inMv2(3,:);
    outMv(122,:) = inMv1(4,:) .* inMv2(21,:) - inMv1(11,:) .* inMv2(19,:) + inMv1(14,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(14,:) - inMv1(19,:) .* inMv2(11,:) + inMv1(21,:) .* inMv2(4,:);
    outMv(123,:) = inMv1(5,:) .* inMv2(21,:) - inMv1(12,:) .* inMv2(19,:) + inMv1(14,:) .* inMv2(17,:) + inMv1(17,:) .* inMv2(14,:) - inMv1(19,:) .* inMv2(12,:) + inMv1(21,:) .* inMv2(5,:);
    outMv(124,:) = inMv1(6,:) .* inMv2(21,:) - inMv1(13,:) .* inMv2(19,:) + inMv1(14,:) .* inMv2(18,:) + inMv1(18,:) .* inMv2(14,:) - inMv1(19,:) .* inMv2(13,:) + inMv1(21,:) .* inMv2(6,:);
    outMv(125,:) = inMv1(7,:) .* inMv2(21,:) - inMv1(11,:) .* inMv2(20,:) + inMv1(15,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(15,:) - inMv1(20,:) .* inMv2(11,:) + inMv1(21,:) .* inMv2(7,:);
    outMv(126,:) = inMv1(8,:) .* inMv2(21,:) - inMv1(12,:) .* inMv2(20,:) + inMv1(15,:) .* inMv2(17,:) + inMv1(17,:) .* inMv2(15,:) - inMv1(20,:) .* inMv2(12,:) + inMv1(21,:) .* inMv2(8,:);
    outMv(127,:) = inMv1(9,:) .* inMv2(21,:) - inMv1(13,:) .* inMv2(20,:) + inMv1(15,:) .* inMv2(18,:) + inMv1(18,:) .* inMv2(15,:) - inMv1(20,:) .* inMv2(13,:) + inMv1(21,:) .* inMv2(9,:);
    outMv(128,:) = inMv1(10,:) .* inMv2(21,:) - inMv1(14,:) .* inMv2(20,:) + inMv1(15,:) .* inMv2(19,:) + inMv1(19,:) .* inMv2(15,:) - inMv1(20,:) .* inMv2(14,:) + inMv1(21,:) .* inMv2(10,:);
    outMv(129,:) = inMv1(1,:) .* inMv2(24,:) - inMv1(2,:) .* inMv2(23,:) + inMv1(3,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(3,:) - inMv1(23,:) .* inMv2(2,:) + inMv1(24,:) .* inMv2(1,:);
    outMv(130,:) = inMv1(1,:) .* inMv2(25,:) - inMv1(4,:) .* inMv2(23,:) + inMv1(5,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(5,:) - inMv1(23,:) .* inMv2(4,:) + inMv1(25,:) .* inMv2(1,:);
    outMv(131,:) = inMv1(2,:) .* inMv2(25,:) - inMv1(4,:) .* inMv2(24,:) + inMv1(6,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(6,:) - inMv1(24,:) .* inMv2(4,:) + inMv1(25,:) .* inMv2(2,:);
    outMv(132,:) = inMv1(3,:) .* inMv2(25,:) - inMv1(5,:) .* inMv2(24,:) + inMv1(6,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(6,:) - inMv1(24,:) .* inMv2(5,:) + inMv1(25,:) .* inMv2(3,:);
    outMv(133,:) = inMv1(1,:) .* inMv2(26,:) - inMv1(7,:) .* inMv2(23,:) + inMv1(8,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(8,:) - inMv1(23,:) .* inMv2(7,:) + inMv1(26,:) .* inMv2(1,:);
    outMv(134,:) = inMv1(2,:) .* inMv2(26,:) - inMv1(7,:) .* inMv2(24,:) + inMv1(9,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(9,:) - inMv1(24,:) .* inMv2(7,:) + inMv1(26,:) .* inMv2(2,:);
    outMv(135,:) = inMv1(3,:) .* inMv2(26,:) - inMv1(8,:) .* inMv2(24,:) + inMv1(9,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(9,:) - inMv1(24,:) .* inMv2(8,:) + inMv1(26,:) .* inMv2(3,:);
    outMv(136,:) = inMv1(4,:) .* inMv2(26,:) - inMv1(7,:) .* inMv2(25,:) + inMv1(10,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(10,:) - inMv1(25,:) .* inMv2(7,:) + inMv1(26,:) .* inMv2(4,:);
    outMv(137,:) = inMv1(5,:) .* inMv2(26,:) - inMv1(8,:) .* inMv2(25,:) + inMv1(10,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(10,:) - inMv1(25,:) .* inMv2(8,:) + inMv1(26,:) .* inMv2(5,:);
    outMv(138,:) = inMv1(6,:) .* inMv2(26,:) - inMv1(9,:) .* inMv2(25,:) + inMv1(10,:) .* inMv2(24,:) + inMv1(24,:) .* inMv2(10,:) - inMv1(25,:) .* inMv2(9,:) + inMv1(26,:) .* inMv2(6,:);
    outMv(139,:) = inMv1(1,:) .* inMv2(27,:) - inMv1(11,:) .* inMv2(23,:) + inMv1(12,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(12,:) - inMv1(23,:) .* inMv2(11,:) + inMv1(27,:) .* inMv2(1,:);
    outMv(140,:) = inMv1(2,:) .* inMv2(27,:) - inMv1(11,:) .* inMv2(24,:) + inMv1(13,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(13,:) - inMv1(24,:) .* inMv2(11,:) + inMv1(27,:) .* inMv2(2,:);
    outMv(141,:) = inMv1(3,:) .* inMv2(27,:) - inMv1(12,:) .* inMv2(24,:) + inMv1(13,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(13,:) - inMv1(24,:) .* inMv2(12,:) + inMv1(27,:) .* inMv2(3,:);
    outMv(142,:) = inMv1(4,:) .* inMv2(27,:) - inMv1(11,:) .* inMv2(25,:) + inMv1(14,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(14,:) - inMv1(25,:) .* inMv2(11,:) + inMv1(27,:) .* inMv2(4,:);
    outMv(143,:) = inMv1(5,:) .* inMv2(27,:) - inMv1(12,:) .* inMv2(25,:) + inMv1(14,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(14,:) - inMv1(25,:) .* inMv2(12,:) + inMv1(27,:) .* inMv2(5,:);
    outMv(144,:) = inMv1(6,:) .* inMv2(27,:) - inMv1(13,:) .* inMv2(25,:) + inMv1(14,:) .* inMv2(24,:) + inMv1(24,:) .* inMv2(14,:) - inMv1(25,:) .* inMv2(13,:) + inMv1(27,:) .* inMv2(6,:);
    outMv(145,:) = inMv1(7,:) .* inMv2(27,:) - inMv1(11,:) .* inMv2(26,:) + inMv1(15,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(15,:) - inMv1(26,:) .* inMv2(11,:) + inMv1(27,:) .* inMv2(7,:);
    outMv(146,:) = inMv1(8,:) .* inMv2(27,:) - inMv1(12,:) .* inMv2(26,:) + inMv1(15,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(15,:) - inMv1(26,:) .* inMv2(12,:) + inMv1(27,:) .* inMv2(8,:);
    outMv(147,:) = inMv1(9,:) .* inMv2(27,:) - inMv1(13,:) .* inMv2(26,:) + inMv1(15,:) .* inMv2(24,:) + inMv1(24,:) .* inMv2(15,:) - inMv1(26,:) .* inMv2(13,:) + inMv1(27,:) .* inMv2(9,:);
    outMv(148,:) = inMv1(10,:) .* inMv2(27,:) - inMv1(14,:) .* inMv2(26,:) + inMv1(15,:) .* inMv2(25,:) + inMv1(25,:) .* inMv2(15,:) - inMv1(26,:) .* inMv2(14,:) + inMv1(27,:) .* inMv2(10,:);
    outMv(149,:) = inMv1(1,:) .* inMv2(28,:) - inMv1(16,:) .* inMv2(23,:) + inMv1(17,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(17,:) - inMv1(23,:) .* inMv2(16,:) + inMv1(28,:) .* inMv2(1,:);
    outMv(150,:) = inMv1(2,:) .* inMv2(28,:) - inMv1(16,:) .* inMv2(24,:) + inMv1(18,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(18,:) - inMv1(24,:) .* inMv2(16,:) + inMv1(28,:) .* inMv2(2,:);
    outMv(151,:) = inMv1(3,:) .* inMv2(28,:) - inMv1(17,:) .* inMv2(24,:) + inMv1(18,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(18,:) - inMv1(24,:) .* inMv2(17,:) + inMv1(28,:) .* inMv2(3,:);
    outMv(152,:) = inMv1(4,:) .* inMv2(28,:) - inMv1(16,:) .* inMv2(25,:) + inMv1(19,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(19,:) - inMv1(25,:) .* inMv2(16,:) + inMv1(28,:) .* inMv2(4,:);
    outMv(153,:) = inMv1(5,:) .* inMv2(28,:) - inMv1(17,:) .* inMv2(25,:) + inMv1(19,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(19,:) - inMv1(25,:) .* inMv2(17,:) + inMv1(28,:) .* inMv2(5,:);
    outMv(154,:) = inMv1(6,:) .* inMv2(28,:) - inMv1(18,:) .* inMv2(25,:) + inMv1(19,:) .* inMv2(24,:) + inMv1(24,:) .* inMv2(19,:) - inMv1(25,:) .* inMv2(18,:) + inMv1(28,:) .* inMv2(6,:);
    outMv(155,:) = inMv1(7,:) .* inMv2(28,:) - inMv1(16,:) .* inMv2(26,:) + inMv1(20,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(20,:) - inMv1(26,:) .* inMv2(16,:) + inMv1(28,:) .* inMv2(7,:);
    outMv(156,:) = inMv1(8,:) .* inMv2(28,:) - inMv1(17,:) .* inMv2(26,:) + inMv1(20,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(20,:) - inMv1(26,:) .* inMv2(17,:) + inMv1(28,:) .* inMv2(8,:);
    outMv(157,:) = inMv1(9,:) .* inMv2(28,:) - inMv1(18,:) .* inMv2(26,:) + inMv1(20,:) .* inMv2(24,:) + inMv1(24,:) .* inMv2(20,:) - inMv1(26,:) .* inMv2(18,:) + inMv1(28,:) .* inMv2(9,:);
    outMv(158,:) = inMv1(10,:) .* inMv2(28,:) - inMv1(19,:) .* inMv2(26,:) + inMv1(20,:) .* inMv2(25,:) + inMv1(25,:) .* inMv2(20,:) - inMv1(26,:) .* inMv2(19,:) + inMv1(28,:) .* inMv2(10,:);
    outMv(159,:) = inMv1(11,:) .* inMv2(28,:) - inMv1(16,:) .* inMv2(27,:) + inMv1(21,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(21,:) - inMv1(27,:) .* inMv2(16,:) + inMv1(28,:) .* inMv2(11,:);
    outMv(160,:) = inMv1(12,:) .* inMv2(28,:) - inMv1(17,:) .* inMv2(27,:) + inMv1(21,:) .* inMv2(23,:) + inMv1(23,:) .* inMv2(21,:) - inMv1(27,:) .* inMv2(17,:) + inMv1(28,:) .* inMv2(12,:);
    outMv(161,:) = inMv1(13,:) .* inMv2(28,:) - inMv1(18,:) .* inMv2(27,:) + inMv1(21,:) .* inMv2(24,:) + inMv1(24,:) .* inMv2(21,:) - inMv1(27,:) .* inMv2(18,:) + inMv1(28,:) .* inMv2(13,:);
    outMv(162,:) = inMv1(14,:) .* inMv2(28,:) - inMv1(19,:) .* inMv2(27,:) + inMv1(21,:) .* inMv2(25,:) + inMv1(25,:) .* inMv2(21,:) - inMv1(27,:) .* inMv2(19,:) + inMv1(28,:) .* inMv2(14,:);
    outMv(163,:) = inMv1(15,:) .* inMv2(28,:) - inMv1(20,:) .* inMv2(27,:) + inMv1(21,:) .* inMv2(26,:) + inMv1(26,:) .* inMv2(21,:) - inMv1(27,:) .* inMv2(20,:) + inMv1(28,:) .* inMv2(15,:);
end
