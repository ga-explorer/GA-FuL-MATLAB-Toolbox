% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpKv2Kv4Mv(inMv1, inMv2)
    arguments
        inMv1 (28,:) double
        inMv2 (70,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(10,:) = inMv1(6,:) .* inMv2(1,:) + inMv1(9,:) .* inMv2(2,:) - inMv1(10,:) .* inMv2(3,:) + inMv1(13,:) .* inMv2(6,:) - inMv1(14,:) .* inMv2(7,:) - inMv1(15,:) .* inMv2(10,:) + inMv1(18,:) .* inMv2(16,:) - inMv1(19,:) .* inMv2(17,:) - inMv1(20,:) .* inMv2(20,:) - inMv1(21,:) .* inMv2(26,:) + inMv1(24,:) .* inMv2(36,:) - inMv1(25,:) .* inMv2(37,:) - inMv1(26,:) .* inMv2(40,:) - inMv1(27,:) .* inMv2(46,:) - inMv1(28,:) .* inMv2(56,:);
    outMv(11,:) = -inMv1(5,:) .* inMv2(1,:) - inMv1(8,:) .* inMv2(2,:) - inMv1(10,:) .* inMv2(4,:) - inMv1(12,:) .* inMv2(6,:) - inMv1(14,:) .* inMv2(8,:) - inMv1(15,:) .* inMv2(11,:) - inMv1(17,:) .* inMv2(16,:) - inMv1(19,:) .* inMv2(18,:) - inMv1(20,:) .* inMv2(21,:) - inMv1(21,:) .* inMv2(27,:) - inMv1(23,:) .* inMv2(36,:) - inMv1(25,:) .* inMv2(38,:) - inMv1(26,:) .* inMv2(41,:) - inMv1(27,:) .* inMv2(47,:) - inMv1(28,:) .* inMv2(57,:);
    outMv(12,:) = inMv1(4,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(2,:) - inMv1(10,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(6,:) - inMv1(14,:) .* inMv2(9,:) - inMv1(15,:) .* inMv2(12,:) + inMv1(16,:) .* inMv2(16,:) - inMv1(19,:) .* inMv2(19,:) - inMv1(20,:) .* inMv2(22,:) - inMv1(21,:) .* inMv2(28,:) + inMv1(22,:) .* inMv2(36,:) - inMv1(25,:) .* inMv2(39,:) - inMv1(26,:) .* inMv2(42,:) - inMv1(27,:) .* inMv2(48,:) - inMv1(28,:) .* inMv2(58,:);
    outMv(13,:) = -inMv1(3,:) .* inMv2(1,:) - inMv1(8,:) .* inMv2(3,:) - inMv1(9,:) .* inMv2(4,:) - inMv1(12,:) .* inMv2(7,:) - inMv1(13,:) .* inMv2(8,:) - inMv1(15,:) .* inMv2(13,:) - inMv1(17,:) .* inMv2(17,:) - inMv1(18,:) .* inMv2(18,:) - inMv1(20,:) .* inMv2(23,:) - inMv1(21,:) .* inMv2(29,:) - inMv1(23,:) .* inMv2(37,:) - inMv1(24,:) .* inMv2(38,:) - inMv1(26,:) .* inMv2(43,:) - inMv1(27,:) .* inMv2(49,:) - inMv1(28,:) .* inMv2(59,:);
    outMv(14,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(3,:) - inMv1(9,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(7,:) - inMv1(13,:) .* inMv2(9,:) - inMv1(15,:) .* inMv2(14,:) + inMv1(16,:) .* inMv2(17,:) - inMv1(18,:) .* inMv2(19,:) - inMv1(20,:) .* inMv2(24,:) - inMv1(21,:) .* inMv2(30,:) + inMv1(22,:) .* inMv2(37,:) - inMv1(24,:) .* inMv2(39,:) - inMv1(26,:) .* inMv2(44,:) - inMv1(27,:) .* inMv2(50,:) - inMv1(28,:) .* inMv2(60,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(1,:) + inMv1(7,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(8,:) + inMv1(12,:) .* inMv2(9,:) - inMv1(15,:) .* inMv2(15,:) + inMv1(16,:) .* inMv2(18,:) + inMv1(17,:) .* inMv2(19,:) - inMv1(20,:) .* inMv2(25,:) - inMv1(21,:) .* inMv2(31,:) + inMv1(22,:) .* inMv2(38,:) + inMv1(23,:) .* inMv2(39,:) - inMv1(26,:) .* inMv2(45,:) - inMv1(27,:) .* inMv2(51,:) - inMv1(28,:) .* inMv2(61,:);
    outMv(16,:) = -inMv1(3,:) .* inMv2(2,:) + inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(4,:) - inMv1(12,:) .* inMv2(10,:) - inMv1(13,:) .* inMv2(11,:) + inMv1(14,:) .* inMv2(13,:) - inMv1(17,:) .* inMv2(20,:) - inMv1(18,:) .* inMv2(21,:) + inMv1(19,:) .* inMv2(23,:) - inMv1(21,:) .* inMv2(32,:) - inMv1(23,:) .* inMv2(40,:) - inMv1(24,:) .* inMv2(41,:) + inMv1(25,:) .* inMv2(43,:) - inMv1(27,:) .* inMv2(52,:) - inMv1(28,:) .* inMv2(62,:);
    outMv(17,:) = inMv1(2,:) .* inMv2(2,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(10,:) - inMv1(13,:) .* inMv2(12,:) + inMv1(14,:) .* inMv2(14,:) + inMv1(16,:) .* inMv2(20,:) - inMv1(18,:) .* inMv2(22,:) + inMv1(19,:) .* inMv2(24,:) - inMv1(21,:) .* inMv2(33,:) + inMv1(22,:) .* inMv2(40,:) - inMv1(24,:) .* inMv2(42,:) + inMv1(25,:) .* inMv2(44,:) - inMv1(27,:) .* inMv2(53,:) - inMv1(28,:) .* inMv2(63,:);
    outMv(18,:) = -inMv1(1,:) .* inMv2(2,:) - inMv1(4,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(11,:) + inMv1(12,:) .* inMv2(12,:) + inMv1(14,:) .* inMv2(15,:) + inMv1(16,:) .* inMv2(21,:) + inMv1(17,:) .* inMv2(22,:) + inMv1(19,:) .* inMv2(25,:) - inMv1(21,:) .* inMv2(34,:) + inMv1(22,:) .* inMv2(41,:) + inMv1(23,:) .* inMv2(42,:) + inMv1(25,:) .* inMv2(45,:) - inMv1(27,:) .* inMv2(54,:) - inMv1(28,:) .* inMv2(64,:);
    outMv(19,:) = -inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(13,:) + inMv1(12,:) .* inMv2(14,:) + inMv1(13,:) .* inMv2(15,:) + inMv1(16,:) .* inMv2(23,:) + inMv1(17,:) .* inMv2(24,:) + inMv1(18,:) .* inMv2(25,:) - inMv1(21,:) .* inMv2(35,:) + inMv1(22,:) .* inMv2(43,:) + inMv1(23,:) .* inMv2(44,:) + inMv1(24,:) .* inMv2(45,:) - inMv1(27,:) .* inMv2(55,:) - inMv1(28,:) .* inMv2(65,:);
    outMv(20,:) = -inMv1(3,:) .* inMv2(6,:) + inMv1(5,:) .* inMv2(7,:) + inMv1(6,:) .* inMv2(8,:) + inMv1(8,:) .* inMv2(10,:) + inMv1(9,:) .* inMv2(11,:) - inMv1(10,:) .* inMv2(13,:) - inMv1(17,:) .* inMv2(26,:) - inMv1(18,:) .* inMv2(27,:) + inMv1(19,:) .* inMv2(29,:) + inMv1(20,:) .* inMv2(32,:) - inMv1(23,:) .* inMv2(46,:) - inMv1(24,:) .* inMv2(47,:) + inMv1(25,:) .* inMv2(49,:) + inMv1(26,:) .* inMv2(52,:) - inMv1(28,:) .* inMv2(66,:);
    outMv(21,:) = inMv1(2,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(7,:) + inMv1(6,:) .* inMv2(9,:) - inMv1(7,:) .* inMv2(10,:) + inMv1(9,:) .* inMv2(12,:) - inMv1(10,:) .* inMv2(14,:) + inMv1(16,:) .* inMv2(26,:) - inMv1(18,:) .* inMv2(28,:) + inMv1(19,:) .* inMv2(30,:) + inMv1(20,:) .* inMv2(33,:) + inMv1(22,:) .* inMv2(46,:) - inMv1(24,:) .* inMv2(48,:) + inMv1(25,:) .* inMv2(50,:) + inMv1(26,:) .* inMv2(53,:) - inMv1(28,:) .* inMv2(67,:);
    outMv(22,:) = -inMv1(1,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(8,:) - inMv1(5,:) .* inMv2(9,:) - inMv1(7,:) .* inMv2(11,:) - inMv1(8,:) .* inMv2(12,:) - inMv1(10,:) .* inMv2(15,:) + inMv1(16,:) .* inMv2(27,:) + inMv1(17,:) .* inMv2(28,:) + inMv1(19,:) .* inMv2(31,:) + inMv1(20,:) .* inMv2(34,:) + inMv1(22,:) .* inMv2(47,:) + inMv1(23,:) .* inMv2(48,:) + inMv1(25,:) .* inMv2(51,:) + inMv1(26,:) .* inMv2(54,:) - inMv1(28,:) .* inMv2(68,:);
    outMv(23,:) = -inMv1(1,:) .* inMv2(7,:) - inMv1(2,:) .* inMv2(8,:) - inMv1(3,:) .* inMv2(9,:) - inMv1(7,:) .* inMv2(13,:) - inMv1(8,:) .* inMv2(14,:) - inMv1(9,:) .* inMv2(15,:) + inMv1(16,:) .* inMv2(29,:) + inMv1(17,:) .* inMv2(30,:) + inMv1(18,:) .* inMv2(31,:) + inMv1(20,:) .* inMv2(35,:) + inMv1(22,:) .* inMv2(49,:) + inMv1(23,:) .* inMv2(50,:) + inMv1(24,:) .* inMv2(51,:) + inMv1(26,:) .* inMv2(55,:) - inMv1(28,:) .* inMv2(69,:);
    outMv(24,:) = -inMv1(1,:) .* inMv2(10,:) - inMv1(2,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(12,:) + inMv1(4,:) .* inMv2(13,:) + inMv1(5,:) .* inMv2(14,:) + inMv1(6,:) .* inMv2(15,:) + inMv1(16,:) .* inMv2(32,:) + inMv1(17,:) .* inMv2(33,:) + inMv1(18,:) .* inMv2(34,:) - inMv1(19,:) .* inMv2(35,:) + inMv1(22,:) .* inMv2(52,:) + inMv1(23,:) .* inMv2(53,:) + inMv1(24,:) .* inMv2(54,:) - inMv1(25,:) .* inMv2(55,:) - inMv1(28,:) .* inMv2(70,:);
    outMv(25,:) = -inMv1(3,:) .* inMv2(16,:) + inMv1(5,:) .* inMv2(17,:) + inMv1(6,:) .* inMv2(18,:) + inMv1(8,:) .* inMv2(20,:) + inMv1(9,:) .* inMv2(21,:) - inMv1(10,:) .* inMv2(23,:) + inMv1(12,:) .* inMv2(26,:) + inMv1(13,:) .* inMv2(27,:) - inMv1(14,:) .* inMv2(29,:) - inMv1(15,:) .* inMv2(32,:) - inMv1(23,:) .* inMv2(56,:) - inMv1(24,:) .* inMv2(57,:) + inMv1(25,:) .* inMv2(59,:) + inMv1(26,:) .* inMv2(62,:) + inMv1(27,:) .* inMv2(66,:);
    outMv(26,:) = inMv1(2,:) .* inMv2(16,:) - inMv1(4,:) .* inMv2(17,:) + inMv1(6,:) .* inMv2(19,:) - inMv1(7,:) .* inMv2(20,:) + inMv1(9,:) .* inMv2(22,:) - inMv1(10,:) .* inMv2(24,:) - inMv1(11,:) .* inMv2(26,:) + inMv1(13,:) .* inMv2(28,:) - inMv1(14,:) .* inMv2(30,:) - inMv1(15,:) .* inMv2(33,:) + inMv1(22,:) .* inMv2(56,:) - inMv1(24,:) .* inMv2(58,:) + inMv1(25,:) .* inMv2(60,:) + inMv1(26,:) .* inMv2(63,:) + inMv1(27,:) .* inMv2(67,:);
    outMv(27,:) = -inMv1(1,:) .* inMv2(16,:) - inMv1(4,:) .* inMv2(18,:) - inMv1(5,:) .* inMv2(19,:) - inMv1(7,:) .* inMv2(21,:) - inMv1(8,:) .* inMv2(22,:) - inMv1(10,:) .* inMv2(25,:) - inMv1(11,:) .* inMv2(27,:) - inMv1(12,:) .* inMv2(28,:) - inMv1(14,:) .* inMv2(31,:) - inMv1(15,:) .* inMv2(34,:) + inMv1(22,:) .* inMv2(57,:) + inMv1(23,:) .* inMv2(58,:) + inMv1(25,:) .* inMv2(61,:) + inMv1(26,:) .* inMv2(64,:) + inMv1(27,:) .* inMv2(68,:);
    outMv(28,:) = -inMv1(1,:) .* inMv2(17,:) - inMv1(2,:) .* inMv2(18,:) - inMv1(3,:) .* inMv2(19,:) - inMv1(7,:) .* inMv2(23,:) - inMv1(8,:) .* inMv2(24,:) - inMv1(9,:) .* inMv2(25,:) - inMv1(11,:) .* inMv2(29,:) - inMv1(12,:) .* inMv2(30,:) - inMv1(13,:) .* inMv2(31,:) - inMv1(15,:) .* inMv2(35,:) + inMv1(22,:) .* inMv2(59,:) + inMv1(23,:) .* inMv2(60,:) + inMv1(24,:) .* inMv2(61,:) + inMv1(26,:) .* inMv2(65,:) + inMv1(27,:) .* inMv2(69,:);
    outMv(29,:) = -inMv1(1,:) .* inMv2(20,:) - inMv1(2,:) .* inMv2(21,:) - inMv1(3,:) .* inMv2(22,:) + inMv1(4,:) .* inMv2(23,:) + inMv1(5,:) .* inMv2(24,:) + inMv1(6,:) .* inMv2(25,:) - inMv1(11,:) .* inMv2(32,:) - inMv1(12,:) .* inMv2(33,:) - inMv1(13,:) .* inMv2(34,:) + inMv1(14,:) .* inMv2(35,:) + inMv1(22,:) .* inMv2(62,:) + inMv1(23,:) .* inMv2(63,:) + inMv1(24,:) .* inMv2(64,:) - inMv1(25,:) .* inMv2(65,:) + inMv1(27,:) .* inMv2(70,:);
    outMv(30,:) = -inMv1(1,:) .* inMv2(26,:) - inMv1(2,:) .* inMv2(27,:) - inMv1(3,:) .* inMv2(28,:) + inMv1(4,:) .* inMv2(29,:) + inMv1(5,:) .* inMv2(30,:) + inMv1(6,:) .* inMv2(31,:) + inMv1(7,:) .* inMv2(32,:) + inMv1(8,:) .* inMv2(33,:) + inMv1(9,:) .* inMv2(34,:) - inMv1(10,:) .* inMv2(35,:) + inMv1(22,:) .* inMv2(66,:) + inMv1(23,:) .* inMv2(67,:) + inMv1(24,:) .* inMv2(68,:) - inMv1(25,:) .* inMv2(69,:) - inMv1(26,:) .* inMv2(70,:);
    outMv(31,:) = -inMv1(3,:) .* inMv2(36,:) + inMv1(5,:) .* inMv2(37,:) + inMv1(6,:) .* inMv2(38,:) + inMv1(8,:) .* inMv2(40,:) + inMv1(9,:) .* inMv2(41,:) - inMv1(10,:) .* inMv2(43,:) + inMv1(12,:) .* inMv2(46,:) + inMv1(13,:) .* inMv2(47,:) - inMv1(14,:) .* inMv2(49,:) - inMv1(15,:) .* inMv2(52,:) + inMv1(17,:) .* inMv2(56,:) + inMv1(18,:) .* inMv2(57,:) - inMv1(19,:) .* inMv2(59,:) - inMv1(20,:) .* inMv2(62,:) - inMv1(21,:) .* inMv2(66,:);
    outMv(32,:) = inMv1(2,:) .* inMv2(36,:) - inMv1(4,:) .* inMv2(37,:) + inMv1(6,:) .* inMv2(39,:) - inMv1(7,:) .* inMv2(40,:) + inMv1(9,:) .* inMv2(42,:) - inMv1(10,:) .* inMv2(44,:) - inMv1(11,:) .* inMv2(46,:) + inMv1(13,:) .* inMv2(48,:) - inMv1(14,:) .* inMv2(50,:) - inMv1(15,:) .* inMv2(53,:) - inMv1(16,:) .* inMv2(56,:) + inMv1(18,:) .* inMv2(58,:) - inMv1(19,:) .* inMv2(60,:) - inMv1(20,:) .* inMv2(63,:) - inMv1(21,:) .* inMv2(67,:);
    outMv(33,:) = -inMv1(1,:) .* inMv2(36,:) - inMv1(4,:) .* inMv2(38,:) - inMv1(5,:) .* inMv2(39,:) - inMv1(7,:) .* inMv2(41,:) - inMv1(8,:) .* inMv2(42,:) - inMv1(10,:) .* inMv2(45,:) - inMv1(11,:) .* inMv2(47,:) - inMv1(12,:) .* inMv2(48,:) - inMv1(14,:) .* inMv2(51,:) - inMv1(15,:) .* inMv2(54,:) - inMv1(16,:) .* inMv2(57,:) - inMv1(17,:) .* inMv2(58,:) - inMv1(19,:) .* inMv2(61,:) - inMv1(20,:) .* inMv2(64,:) - inMv1(21,:) .* inMv2(68,:);
    outMv(34,:) = -inMv1(1,:) .* inMv2(37,:) - inMv1(2,:) .* inMv2(38,:) - inMv1(3,:) .* inMv2(39,:) - inMv1(7,:) .* inMv2(43,:) - inMv1(8,:) .* inMv2(44,:) - inMv1(9,:) .* inMv2(45,:) - inMv1(11,:) .* inMv2(49,:) - inMv1(12,:) .* inMv2(50,:) - inMv1(13,:) .* inMv2(51,:) - inMv1(15,:) .* inMv2(55,:) - inMv1(16,:) .* inMv2(59,:) - inMv1(17,:) .* inMv2(60,:) - inMv1(18,:) .* inMv2(61,:) - inMv1(20,:) .* inMv2(65,:) - inMv1(21,:) .* inMv2(69,:);
    outMv(35,:) = -inMv1(1,:) .* inMv2(40,:) - inMv1(2,:) .* inMv2(41,:) - inMv1(3,:) .* inMv2(42,:) + inMv1(4,:) .* inMv2(43,:) + inMv1(5,:) .* inMv2(44,:) + inMv1(6,:) .* inMv2(45,:) - inMv1(11,:) .* inMv2(52,:) - inMv1(12,:) .* inMv2(53,:) - inMv1(13,:) .* inMv2(54,:) + inMv1(14,:) .* inMv2(55,:) - inMv1(16,:) .* inMv2(62,:) - inMv1(17,:) .* inMv2(63,:) - inMv1(18,:) .* inMv2(64,:) + inMv1(19,:) .* inMv2(65,:) - inMv1(21,:) .* inMv2(70,:);
    outMv(36,:) = -inMv1(1,:) .* inMv2(46,:) - inMv1(2,:) .* inMv2(47,:) - inMv1(3,:) .* inMv2(48,:) + inMv1(4,:) .* inMv2(49,:) + inMv1(5,:) .* inMv2(50,:) + inMv1(6,:) .* inMv2(51,:) + inMv1(7,:) .* inMv2(52,:) + inMv1(8,:) .* inMv2(53,:) + inMv1(9,:) .* inMv2(54,:) - inMv1(10,:) .* inMv2(55,:) - inMv1(16,:) .* inMv2(66,:) - inMv1(17,:) .* inMv2(67,:) - inMv1(18,:) .* inMv2(68,:) + inMv1(19,:) .* inMv2(69,:) + inMv1(20,:) .* inMv2(70,:);
    outMv(37,:) = -inMv1(1,:) .* inMv2(56,:) - inMv1(2,:) .* inMv2(57,:) - inMv1(3,:) .* inMv2(58,:) + inMv1(4,:) .* inMv2(59,:) + inMv1(5,:) .* inMv2(60,:) + inMv1(6,:) .* inMv2(61,:) + inMv1(7,:) .* inMv2(62,:) + inMv1(8,:) .* inMv2(63,:) + inMv1(9,:) .* inMv2(64,:) - inMv1(10,:) .* inMv2(65,:) + inMv1(11,:) .* inMv2(66,:) + inMv1(12,:) .* inMv2(67,:) + inMv1(13,:) .* inMv2(68,:) - inMv1(14,:) .* inMv2(69,:) - inMv1(15,:) .* inMv2(70,:);
    outMv(220,:) = inMv1(1,:) .* inMv2(15,:) - inMv1(2,:) .* inMv2(14,:) + inMv1(3,:) .* inMv2(13,:) + inMv1(4,:) .* inMv2(12,:) - inMv1(5,:) .* inMv2(11,:) + inMv1(6,:) .* inMv2(10,:) - inMv1(7,:) .* inMv2(9,:) + inMv1(8,:) .* inMv2(8,:) - inMv1(9,:) .* inMv2(7,:) + inMv1(10,:) .* inMv2(6,:) + inMv1(11,:) .* inMv2(5,:) - inMv1(12,:) .* inMv2(4,:) + inMv1(13,:) .* inMv2(3,:) - inMv1(14,:) .* inMv2(2,:) + inMv1(15,:) .* inMv2(1,:);
    outMv(221,:) = inMv1(1,:) .* inMv2(25,:) - inMv1(2,:) .* inMv2(24,:) + inMv1(3,:) .* inMv2(23,:) + inMv1(4,:) .* inMv2(22,:) - inMv1(5,:) .* inMv2(21,:) + inMv1(6,:) .* inMv2(20,:) - inMv1(7,:) .* inMv2(19,:) + inMv1(8,:) .* inMv2(18,:) - inMv1(9,:) .* inMv2(17,:) + inMv1(10,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(5,:) - inMv1(17,:) .* inMv2(4,:) + inMv1(18,:) .* inMv2(3,:) - inMv1(19,:) .* inMv2(2,:) + inMv1(20,:) .* inMv2(1,:);
    outMv(222,:) = inMv1(1,:) .* inMv2(31,:) - inMv1(2,:) .* inMv2(30,:) + inMv1(3,:) .* inMv2(29,:) + inMv1(4,:) .* inMv2(28,:) - inMv1(5,:) .* inMv2(27,:) + inMv1(6,:) .* inMv2(26,:) - inMv1(11,:) .* inMv2(19,:) + inMv1(12,:) .* inMv2(18,:) - inMv1(13,:) .* inMv2(17,:) + inMv1(14,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(9,:) - inMv1(17,:) .* inMv2(8,:) + inMv1(18,:) .* inMv2(7,:) - inMv1(19,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(1,:);
    outMv(223,:) = inMv1(1,:) .* inMv2(34,:) - inMv1(2,:) .* inMv2(33,:) + inMv1(3,:) .* inMv2(32,:) + inMv1(7,:) .* inMv2(28,:) - inMv1(8,:) .* inMv2(27,:) + inMv1(9,:) .* inMv2(26,:) - inMv1(11,:) .* inMv2(22,:) + inMv1(12,:) .* inMv2(21,:) - inMv1(13,:) .* inMv2(20,:) + inMv1(15,:) .* inMv2(16,:) + inMv1(16,:) .* inMv2(12,:) - inMv1(17,:) .* inMv2(11,:) + inMv1(18,:) .* inMv2(10,:) - inMv1(20,:) .* inMv2(6,:) + inMv1(21,:) .* inMv2(2,:);
    outMv(224,:) = inMv1(1,:) .* inMv2(35,:) - inMv1(4,:) .* inMv2(33,:) + inMv1(5,:) .* inMv2(32,:) + inMv1(7,:) .* inMv2(30,:) - inMv1(8,:) .* inMv2(29,:) + inMv1(10,:) .* inMv2(26,:) - inMv1(11,:) .* inMv2(24,:) + inMv1(12,:) .* inMv2(23,:) - inMv1(14,:) .* inMv2(20,:) + inMv1(15,:) .* inMv2(17,:) + inMv1(16,:) .* inMv2(14,:) - inMv1(17,:) .* inMv2(13,:) + inMv1(19,:) .* inMv2(10,:) - inMv1(20,:) .* inMv2(7,:) + inMv1(21,:) .* inMv2(3,:);
    outMv(225,:) = inMv1(2,:) .* inMv2(35,:) - inMv1(4,:) .* inMv2(34,:) + inMv1(6,:) .* inMv2(32,:) + inMv1(7,:) .* inMv2(31,:) - inMv1(9,:) .* inMv2(29,:) + inMv1(10,:) .* inMv2(27,:) - inMv1(11,:) .* inMv2(25,:) + inMv1(13,:) .* inMv2(23,:) - inMv1(14,:) .* inMv2(21,:) + inMv1(15,:) .* inMv2(18,:) + inMv1(16,:) .* inMv2(15,:) - inMv1(18,:) .* inMv2(13,:) + inMv1(19,:) .* inMv2(11,:) - inMv1(20,:) .* inMv2(8,:) + inMv1(21,:) .* inMv2(4,:);
    outMv(226,:) = inMv1(3,:) .* inMv2(35,:) - inMv1(5,:) .* inMv2(34,:) + inMv1(6,:) .* inMv2(33,:) + inMv1(8,:) .* inMv2(31,:) - inMv1(9,:) .* inMv2(30,:) + inMv1(10,:) .* inMv2(28,:) - inMv1(12,:) .* inMv2(25,:) + inMv1(13,:) .* inMv2(24,:) - inMv1(14,:) .* inMv2(22,:) + inMv1(15,:) .* inMv2(19,:) + inMv1(17,:) .* inMv2(15,:) - inMv1(18,:) .* inMv2(14,:) + inMv1(19,:) .* inMv2(12,:) - inMv1(20,:) .* inMv2(9,:) + inMv1(21,:) .* inMv2(5,:);
    outMv(227,:) = inMv1(1,:) .* inMv2(45,:) - inMv1(2,:) .* inMv2(44,:) + inMv1(3,:) .* inMv2(43,:) + inMv1(4,:) .* inMv2(42,:) - inMv1(5,:) .* inMv2(41,:) + inMv1(6,:) .* inMv2(40,:) - inMv1(7,:) .* inMv2(39,:) + inMv1(8,:) .* inMv2(38,:) - inMv1(9,:) .* inMv2(37,:) + inMv1(10,:) .* inMv2(36,:) + inMv1(22,:) .* inMv2(5,:) - inMv1(23,:) .* inMv2(4,:) + inMv1(24,:) .* inMv2(3,:) - inMv1(25,:) .* inMv2(2,:) + inMv1(26,:) .* inMv2(1,:);
    outMv(228,:) = inMv1(1,:) .* inMv2(51,:) - inMv1(2,:) .* inMv2(50,:) + inMv1(3,:) .* inMv2(49,:) + inMv1(4,:) .* inMv2(48,:) - inMv1(5,:) .* inMv2(47,:) + inMv1(6,:) .* inMv2(46,:) - inMv1(11,:) .* inMv2(39,:) + inMv1(12,:) .* inMv2(38,:) - inMv1(13,:) .* inMv2(37,:) + inMv1(14,:) .* inMv2(36,:) + inMv1(22,:) .* inMv2(9,:) - inMv1(23,:) .* inMv2(8,:) + inMv1(24,:) .* inMv2(7,:) - inMv1(25,:) .* inMv2(6,:) + inMv1(27,:) .* inMv2(1,:);
    outMv(229,:) = inMv1(1,:) .* inMv2(54,:) - inMv1(2,:) .* inMv2(53,:) + inMv1(3,:) .* inMv2(52,:) + inMv1(7,:) .* inMv2(48,:) - inMv1(8,:) .* inMv2(47,:) + inMv1(9,:) .* inMv2(46,:) - inMv1(11,:) .* inMv2(42,:) + inMv1(12,:) .* inMv2(41,:) - inMv1(13,:) .* inMv2(40,:) + inMv1(15,:) .* inMv2(36,:) + inMv1(22,:) .* inMv2(12,:) - inMv1(23,:) .* inMv2(11,:) + inMv1(24,:) .* inMv2(10,:) - inMv1(26,:) .* inMv2(6,:) + inMv1(27,:) .* inMv2(2,:);
    outMv(230,:) = inMv1(1,:) .* inMv2(55,:) - inMv1(4,:) .* inMv2(53,:) + inMv1(5,:) .* inMv2(52,:) + inMv1(7,:) .* inMv2(50,:) - inMv1(8,:) .* inMv2(49,:) + inMv1(10,:) .* inMv2(46,:) - inMv1(11,:) .* inMv2(44,:) + inMv1(12,:) .* inMv2(43,:) - inMv1(14,:) .* inMv2(40,:) + inMv1(15,:) .* inMv2(37,:) + inMv1(22,:) .* inMv2(14,:) - inMv1(23,:) .* inMv2(13,:) + inMv1(25,:) .* inMv2(10,:) - inMv1(26,:) .* inMv2(7,:) + inMv1(27,:) .* inMv2(3,:);
    outMv(231,:) = inMv1(2,:) .* inMv2(55,:) - inMv1(4,:) .* inMv2(54,:) + inMv1(6,:) .* inMv2(52,:) + inMv1(7,:) .* inMv2(51,:) - inMv1(9,:) .* inMv2(49,:) + inMv1(10,:) .* inMv2(47,:) - inMv1(11,:) .* inMv2(45,:) + inMv1(13,:) .* inMv2(43,:) - inMv1(14,:) .* inMv2(41,:) + inMv1(15,:) .* inMv2(38,:) + inMv1(22,:) .* inMv2(15,:) - inMv1(24,:) .* inMv2(13,:) + inMv1(25,:) .* inMv2(11,:) - inMv1(26,:) .* inMv2(8,:) + inMv1(27,:) .* inMv2(4,:);
    outMv(232,:) = inMv1(3,:) .* inMv2(55,:) - inMv1(5,:) .* inMv2(54,:) + inMv1(6,:) .* inMv2(53,:) + inMv1(8,:) .* inMv2(51,:) - inMv1(9,:) .* inMv2(50,:) + inMv1(10,:) .* inMv2(48,:) - inMv1(12,:) .* inMv2(45,:) + inMv1(13,:) .* inMv2(44,:) - inMv1(14,:) .* inMv2(42,:) + inMv1(15,:) .* inMv2(39,:) + inMv1(23,:) .* inMv2(15,:) - inMv1(24,:) .* inMv2(14,:) + inMv1(25,:) .* inMv2(12,:) - inMv1(26,:) .* inMv2(9,:) + inMv1(27,:) .* inMv2(5,:);
    outMv(233,:) = inMv1(1,:) .* inMv2(61,:) - inMv1(2,:) .* inMv2(60,:) + inMv1(3,:) .* inMv2(59,:) + inMv1(4,:) .* inMv2(58,:) - inMv1(5,:) .* inMv2(57,:) + inMv1(6,:) .* inMv2(56,:) - inMv1(16,:) .* inMv2(39,:) + inMv1(17,:) .* inMv2(38,:) - inMv1(18,:) .* inMv2(37,:) + inMv1(19,:) .* inMv2(36,:) + inMv1(22,:) .* inMv2(19,:) - inMv1(23,:) .* inMv2(18,:) + inMv1(24,:) .* inMv2(17,:) - inMv1(25,:) .* inMv2(16,:) + inMv1(28,:) .* inMv2(1,:);
    outMv(234,:) = inMv1(1,:) .* inMv2(64,:) - inMv1(2,:) .* inMv2(63,:) + inMv1(3,:) .* inMv2(62,:) + inMv1(7,:) .* inMv2(58,:) - inMv1(8,:) .* inMv2(57,:) + inMv1(9,:) .* inMv2(56,:) - inMv1(16,:) .* inMv2(42,:) + inMv1(17,:) .* inMv2(41,:) - inMv1(18,:) .* inMv2(40,:) + inMv1(20,:) .* inMv2(36,:) + inMv1(22,:) .* inMv2(22,:) - inMv1(23,:) .* inMv2(21,:) + inMv1(24,:) .* inMv2(20,:) - inMv1(26,:) .* inMv2(16,:) + inMv1(28,:) .* inMv2(2,:);
    outMv(235,:) = inMv1(1,:) .* inMv2(65,:) - inMv1(4,:) .* inMv2(63,:) + inMv1(5,:) .* inMv2(62,:) + inMv1(7,:) .* inMv2(60,:) - inMv1(8,:) .* inMv2(59,:) + inMv1(10,:) .* inMv2(56,:) - inMv1(16,:) .* inMv2(44,:) + inMv1(17,:) .* inMv2(43,:) - inMv1(19,:) .* inMv2(40,:) + inMv1(20,:) .* inMv2(37,:) + inMv1(22,:) .* inMv2(24,:) - inMv1(23,:) .* inMv2(23,:) + inMv1(25,:) .* inMv2(20,:) - inMv1(26,:) .* inMv2(17,:) + inMv1(28,:) .* inMv2(3,:);
    outMv(236,:) = inMv1(2,:) .* inMv2(65,:) - inMv1(4,:) .* inMv2(64,:) + inMv1(6,:) .* inMv2(62,:) + inMv1(7,:) .* inMv2(61,:) - inMv1(9,:) .* inMv2(59,:) + inMv1(10,:) .* inMv2(57,:) - inMv1(16,:) .* inMv2(45,:) + inMv1(18,:) .* inMv2(43,:) - inMv1(19,:) .* inMv2(41,:) + inMv1(20,:) .* inMv2(38,:) + inMv1(22,:) .* inMv2(25,:) - inMv1(24,:) .* inMv2(23,:) + inMv1(25,:) .* inMv2(21,:) - inMv1(26,:) .* inMv2(18,:) + inMv1(28,:) .* inMv2(4,:);
    outMv(237,:) = inMv1(3,:) .* inMv2(65,:) - inMv1(5,:) .* inMv2(64,:) + inMv1(6,:) .* inMv2(63,:) + inMv1(8,:) .* inMv2(61,:) - inMv1(9,:) .* inMv2(60,:) + inMv1(10,:) .* inMv2(58,:) - inMv1(17,:) .* inMv2(45,:) + inMv1(18,:) .* inMv2(44,:) - inMv1(19,:) .* inMv2(42,:) + inMv1(20,:) .* inMv2(39,:) + inMv1(23,:) .* inMv2(25,:) - inMv1(24,:) .* inMv2(24,:) + inMv1(25,:) .* inMv2(22,:) - inMv1(26,:) .* inMv2(19,:) + inMv1(28,:) .* inMv2(5,:);
    outMv(238,:) = inMv1(1,:) .* inMv2(68,:) - inMv1(2,:) .* inMv2(67,:) + inMv1(3,:) .* inMv2(66,:) + inMv1(11,:) .* inMv2(58,:) - inMv1(12,:) .* inMv2(57,:) + inMv1(13,:) .* inMv2(56,:) - inMv1(16,:) .* inMv2(48,:) + inMv1(17,:) .* inMv2(47,:) - inMv1(18,:) .* inMv2(46,:) + inMv1(21,:) .* inMv2(36,:) + inMv1(22,:) .* inMv2(28,:) - inMv1(23,:) .* inMv2(27,:) + inMv1(24,:) .* inMv2(26,:) - inMv1(27,:) .* inMv2(16,:) + inMv1(28,:) .* inMv2(6,:);
    outMv(239,:) = inMv1(1,:) .* inMv2(69,:) - inMv1(4,:) .* inMv2(67,:) + inMv1(5,:) .* inMv2(66,:) + inMv1(11,:) .* inMv2(60,:) - inMv1(12,:) .* inMv2(59,:) + inMv1(14,:) .* inMv2(56,:) - inMv1(16,:) .* inMv2(50,:) + inMv1(17,:) .* inMv2(49,:) - inMv1(19,:) .* inMv2(46,:) + inMv1(21,:) .* inMv2(37,:) + inMv1(22,:) .* inMv2(30,:) - inMv1(23,:) .* inMv2(29,:) + inMv1(25,:) .* inMv2(26,:) - inMv1(27,:) .* inMv2(17,:) + inMv1(28,:) .* inMv2(7,:);
    outMv(240,:) = inMv1(2,:) .* inMv2(69,:) - inMv1(4,:) .* inMv2(68,:) + inMv1(6,:) .* inMv2(66,:) + inMv1(11,:) .* inMv2(61,:) - inMv1(13,:) .* inMv2(59,:) + inMv1(14,:) .* inMv2(57,:) - inMv1(16,:) .* inMv2(51,:) + inMv1(18,:) .* inMv2(49,:) - inMv1(19,:) .* inMv2(47,:) + inMv1(21,:) .* inMv2(38,:) + inMv1(22,:) .* inMv2(31,:) - inMv1(24,:) .* inMv2(29,:) + inMv1(25,:) .* inMv2(27,:) - inMv1(27,:) .* inMv2(18,:) + inMv1(28,:) .* inMv2(8,:);
    outMv(241,:) = inMv1(3,:) .* inMv2(69,:) - inMv1(5,:) .* inMv2(68,:) + inMv1(6,:) .* inMv2(67,:) + inMv1(12,:) .* inMv2(61,:) - inMv1(13,:) .* inMv2(60,:) + inMv1(14,:) .* inMv2(58,:) - inMv1(17,:) .* inMv2(51,:) + inMv1(18,:) .* inMv2(50,:) - inMv1(19,:) .* inMv2(48,:) + inMv1(21,:) .* inMv2(39,:) + inMv1(23,:) .* inMv2(31,:) - inMv1(24,:) .* inMv2(30,:) + inMv1(25,:) .* inMv2(28,:) - inMv1(27,:) .* inMv2(19,:) + inMv1(28,:) .* inMv2(9,:);
    outMv(242,:) = inMv1(1,:) .* inMv2(70,:) - inMv1(7,:) .* inMv2(67,:) + inMv1(8,:) .* inMv2(66,:) + inMv1(11,:) .* inMv2(63,:) - inMv1(12,:) .* inMv2(62,:) + inMv1(15,:) .* inMv2(56,:) - inMv1(16,:) .* inMv2(53,:) + inMv1(17,:) .* inMv2(52,:) - inMv1(20,:) .* inMv2(46,:) + inMv1(21,:) .* inMv2(40,:) + inMv1(22,:) .* inMv2(33,:) - inMv1(23,:) .* inMv2(32,:) + inMv1(26,:) .* inMv2(26,:) - inMv1(27,:) .* inMv2(20,:) + inMv1(28,:) .* inMv2(10,:);
    outMv(243,:) = inMv1(2,:) .* inMv2(70,:) - inMv1(7,:) .* inMv2(68,:) + inMv1(9,:) .* inMv2(66,:) + inMv1(11,:) .* inMv2(64,:) - inMv1(13,:) .* inMv2(62,:) + inMv1(15,:) .* inMv2(57,:) - inMv1(16,:) .* inMv2(54,:) + inMv1(18,:) .* inMv2(52,:) - inMv1(20,:) .* inMv2(47,:) + inMv1(21,:) .* inMv2(41,:) + inMv1(22,:) .* inMv2(34,:) - inMv1(24,:) .* inMv2(32,:) + inMv1(26,:) .* inMv2(27,:) - inMv1(27,:) .* inMv2(21,:) + inMv1(28,:) .* inMv2(11,:);
    outMv(244,:) = inMv1(3,:) .* inMv2(70,:) - inMv1(8,:) .* inMv2(68,:) + inMv1(9,:) .* inMv2(67,:) + inMv1(12,:) .* inMv2(64,:) - inMv1(13,:) .* inMv2(63,:) + inMv1(15,:) .* inMv2(58,:) - inMv1(17,:) .* inMv2(54,:) + inMv1(18,:) .* inMv2(53,:) - inMv1(20,:) .* inMv2(48,:) + inMv1(21,:) .* inMv2(42,:) + inMv1(23,:) .* inMv2(34,:) - inMv1(24,:) .* inMv2(33,:) + inMv1(26,:) .* inMv2(28,:) - inMv1(27,:) .* inMv2(22,:) + inMv1(28,:) .* inMv2(12,:);
    outMv(245,:) = inMv1(4,:) .* inMv2(70,:) - inMv1(7,:) .* inMv2(69,:) + inMv1(10,:) .* inMv2(66,:) + inMv1(11,:) .* inMv2(65,:) - inMv1(14,:) .* inMv2(62,:) + inMv1(15,:) .* inMv2(59,:) - inMv1(16,:) .* inMv2(55,:) + inMv1(19,:) .* inMv2(52,:) - inMv1(20,:) .* inMv2(49,:) + inMv1(21,:) .* inMv2(43,:) + inMv1(22,:) .* inMv2(35,:) - inMv1(25,:) .* inMv2(32,:) + inMv1(26,:) .* inMv2(29,:) - inMv1(27,:) .* inMv2(23,:) + inMv1(28,:) .* inMv2(13,:);
    outMv(246,:) = inMv1(5,:) .* inMv2(70,:) - inMv1(8,:) .* inMv2(69,:) + inMv1(10,:) .* inMv2(67,:) + inMv1(12,:) .* inMv2(65,:) - inMv1(14,:) .* inMv2(63,:) + inMv1(15,:) .* inMv2(60,:) - inMv1(17,:) .* inMv2(55,:) + inMv1(19,:) .* inMv2(53,:) - inMv1(20,:) .* inMv2(50,:) + inMv1(21,:) .* inMv2(44,:) + inMv1(23,:) .* inMv2(35,:) - inMv1(25,:) .* inMv2(33,:) + inMv1(26,:) .* inMv2(30,:) - inMv1(27,:) .* inMv2(24,:) + inMv1(28,:) .* inMv2(14,:);
    outMv(247,:) = inMv1(6,:) .* inMv2(70,:) - inMv1(9,:) .* inMv2(69,:) + inMv1(10,:) .* inMv2(68,:) + inMv1(13,:) .* inMv2(65,:) - inMv1(14,:) .* inMv2(64,:) + inMv1(15,:) .* inMv2(61,:) - inMv1(18,:) .* inMv2(55,:) + inMv1(19,:) .* inMv2(54,:) - inMv1(20,:) .* inMv2(51,:) + inMv1(21,:) .* inMv2(45,:) + inMv1(24,:) .* inMv2(35,:) - inMv1(25,:) .* inMv2(34,:) + inMv1(26,:) .* inMv2(31,:) - inMv1(27,:) .* inMv2(25,:) + inMv1(28,:) .* inMv2(15,:);
end
