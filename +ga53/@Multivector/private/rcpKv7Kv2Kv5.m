% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpKv7Kv2Kv5(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (28,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([56, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(21,:) - inMv1(2,:) .* inMv2(27,:) - inMv1(3,:) .* inMv2(28,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(20,:) + inMv1(2,:) .* inMv2(26,:) - inMv1(4,:) .* inMv2(28,:);
    outMv(3,:) = -inMv1(1,:) .* inMv2(19,:) - inMv1(2,:) .* inMv2(25,:) - inMv1(5,:) .* inMv2(28,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(18,:) - inMv1(2,:) .* inMv2(24,:) - inMv1(6,:) .* inMv2(28,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(17,:) + inMv1(2,:) .* inMv2(23,:) - inMv1(7,:) .* inMv2(28,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(16,:) - inMv1(2,:) .* inMv2(22,:) - inMv1(8,:) .* inMv2(28,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(15,:) + inMv1(3,:) .* inMv2(26,:) + inMv1(4,:) .* inMv2(27,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(14,:) - inMv1(3,:) .* inMv2(25,:) + inMv1(5,:) .* inMv2(27,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(13,:) - inMv1(3,:) .* inMv2(24,:) + inMv1(6,:) .* inMv2(27,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(12,:) + inMv1(3,:) .* inMv2(23,:) + inMv1(7,:) .* inMv2(27,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(22,:) + inMv1(8,:) .* inMv2(27,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(10,:) - inMv1(4,:) .* inMv2(25,:) - inMv1(5,:) .* inMv2(26,:);
    outMv(13,:) = -inMv1(1,:) .* inMv2(9,:) - inMv1(4,:) .* inMv2(24,:) - inMv1(6,:) .* inMv2(26,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(23,:) - inMv1(7,:) .* inMv2(26,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(22,:) - inMv1(8,:) .* inMv2(26,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(6,:) - inMv1(5,:) .* inMv2(24,:) + inMv1(6,:) .* inMv2(25,:);
    outMv(17,:) = -inMv1(1,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(23,:) + inMv1(7,:) .* inMv2(25,:);
    outMv(18,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(22,:) + inMv1(8,:) .* inMv2(25,:);
    outMv(19,:) = -inMv1(1,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(23,:) + inMv1(7,:) .* inMv2(24,:);
    outMv(20,:) = inMv1(1,:) .* inMv2(2,:) - inMv1(6,:) .* inMv2(22,:) + inMv1(8,:) .* inMv2(24,:);
    outMv(21,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(22,:) - inMv1(8,:) .* inMv2(23,:);
    outMv(22,:) = -inMv1(2,:) .* inMv2(15,:) - inMv1(3,:) .* inMv2(20,:) - inMv1(4,:) .* inMv2(21,:);
    outMv(23,:) = inMv1(2,:) .* inMv2(14,:) + inMv1(3,:) .* inMv2(19,:) - inMv1(5,:) .* inMv2(21,:);
    outMv(24,:) = inMv1(2,:) .* inMv2(13,:) + inMv1(3,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(21,:);
    outMv(25,:) = -inMv1(2,:) .* inMv2(12,:) - inMv1(3,:) .* inMv2(17,:) - inMv1(7,:) .* inMv2(21,:);
    outMv(26,:) = inMv1(2,:) .* inMv2(11,:) + inMv1(3,:) .* inMv2(16,:) - inMv1(8,:) .* inMv2(21,:);
    outMv(27,:) = -inMv1(2,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(19,:) + inMv1(5,:) .* inMv2(20,:);
    outMv(28,:) = -inMv1(2,:) .* inMv2(9,:) + inMv1(4,:) .* inMv2(18,:) + inMv1(6,:) .* inMv2(20,:);
    outMv(29,:) = inMv1(2,:) .* inMv2(8,:) - inMv1(4,:) .* inMv2(17,:) + inMv1(7,:) .* inMv2(20,:);
    outMv(30,:) = -inMv1(2,:) .* inMv2(7,:) + inMv1(4,:) .* inMv2(16,:) + inMv1(8,:) .* inMv2(20,:);
    outMv(31,:) = inMv1(2,:) .* inMv2(6,:) + inMv1(5,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(19,:);
    outMv(32,:) = -inMv1(2,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(17,:) - inMv1(7,:) .* inMv2(19,:);
    outMv(33,:) = inMv1(2,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(16,:) - inMv1(8,:) .* inMv2(19,:);
    outMv(34,:) = -inMv1(2,:) .* inMv2(3,:) - inMv1(6,:) .* inMv2(17,:) - inMv1(7,:) .* inMv2(18,:);
    outMv(35,:) = inMv1(2,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(16,:) - inMv1(8,:) .* inMv2(18,:);
    outMv(36,:) = -inMv1(2,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(16,:) + inMv1(8,:) .* inMv2(17,:);
    outMv(37,:) = -inMv1(3,:) .* inMv2(10,:) - inMv1(4,:) .* inMv2(14,:) - inMv1(5,:) .* inMv2(15,:);
    outMv(38,:) = -inMv1(3,:) .* inMv2(9,:) - inMv1(4,:) .* inMv2(13,:) - inMv1(6,:) .* inMv2(15,:);
    outMv(39,:) = inMv1(3,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(12,:) - inMv1(7,:) .* inMv2(15,:);
    outMv(40,:) = -inMv1(3,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(11,:) - inMv1(8,:) .* inMv2(15,:);
    outMv(41,:) = inMv1(3,:) .* inMv2(6,:) - inMv1(5,:) .* inMv2(13,:) + inMv1(6,:) .* inMv2(14,:);
    outMv(42,:) = -inMv1(3,:) .* inMv2(5,:) + inMv1(5,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(14,:);
    outMv(43,:) = inMv1(3,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(11,:) + inMv1(8,:) .* inMv2(14,:);
    outMv(44,:) = -inMv1(3,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(12,:) + inMv1(7,:) .* inMv2(13,:);
    outMv(45,:) = inMv1(3,:) .* inMv2(2,:) - inMv1(6,:) .* inMv2(11,:) + inMv1(8,:) .* inMv2(13,:);
    outMv(46,:) = -inMv1(3,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(11,:) - inMv1(8,:) .* inMv2(12,:);
    outMv(47,:) = inMv1(4,:) .* inMv2(6,:) + inMv1(5,:) .* inMv2(9,:) - inMv1(6,:) .* inMv2(10,:);
    outMv(48,:) = -inMv1(4,:) .* inMv2(5,:) - inMv1(5,:) .* inMv2(8,:) - inMv1(7,:) .* inMv2(10,:);
    outMv(49,:) = inMv1(4,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(10,:);
    outMv(50,:) = -inMv1(4,:) .* inMv2(3,:) - inMv1(6,:) .* inMv2(8,:) - inMv1(7,:) .* inMv2(9,:);
    outMv(51,:) = inMv1(4,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(9,:);
    outMv(52,:) = -inMv1(4,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(7,:) + inMv1(8,:) .* inMv2(8,:);
    outMv(53,:) = -inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(6,:);
    outMv(54,:) = inMv1(5,:) .* inMv2(2,:) - inMv1(6,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(6,:);
    outMv(55,:) = -inMv1(5,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(5,:);
    outMv(56,:) = -inMv1(6,:) .* inMv2(1,:) - inMv1(7,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(3,:);
end
