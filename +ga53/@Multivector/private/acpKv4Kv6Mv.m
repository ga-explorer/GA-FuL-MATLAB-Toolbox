
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpKv4Kv6Mv(inMv1, inMv2)
    arguments
        inMv1 (70,:) double
        inMv2 (28,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(10,:) = -inMv1(15,:) .* inMv2(1,:) - inMv1(25,:) .* inMv2(2,:) - inMv1(31,:) .* inMv2(3,:) - inMv1(34,:) .* inMv2(4,:) + inMv1(35,:) .* inMv2(5,:) - inMv1(45,:) .* inMv2(8,:) - inMv1(51,:) .* inMv2(9,:) - inMv1(54,:) .* inMv2(10,:) + inMv1(55,:) .* inMv2(11,:) - inMv1(61,:) .* inMv2(14,:) - inMv1(64,:) .* inMv2(15,:) + inMv1(65,:) .* inMv2(16,:) - inMv1(68,:) .* inMv2(19,:) + inMv1(69,:) .* inMv2(20,:) + inMv1(70,:) .* inMv2(23,:);
    outMv(11,:) = inMv1(14,:) .* inMv2(1,:) + inMv1(24,:) .* inMv2(2,:) + inMv1(30,:) .* inMv2(3,:) + inMv1(33,:) .* inMv2(4,:) + inMv1(35,:) .* inMv2(6,:) + inMv1(44,:) .* inMv2(8,:) + inMv1(50,:) .* inMv2(9,:) + inMv1(53,:) .* inMv2(10,:) + inMv1(55,:) .* inMv2(12,:) + inMv1(60,:) .* inMv2(14,:) + inMv1(63,:) .* inMv2(15,:) + inMv1(65,:) .* inMv2(17,:) + inMv1(67,:) .* inMv2(19,:) + inMv1(69,:) .* inMv2(21,:) + inMv1(70,:) .* inMv2(24,:);
    outMv(12,:) = -inMv1(13,:) .* inMv2(1,:) - inMv1(23,:) .* inMv2(2,:) - inMv1(29,:) .* inMv2(3,:) - inMv1(32,:) .* inMv2(4,:) + inMv1(35,:) .* inMv2(7,:) - inMv1(43,:) .* inMv2(8,:) - inMv1(49,:) .* inMv2(9,:) - inMv1(52,:) .* inMv2(10,:) + inMv1(55,:) .* inMv2(13,:) - inMv1(59,:) .* inMv2(14,:) - inMv1(62,:) .* inMv2(15,:) + inMv1(65,:) .* inMv2(18,:) - inMv1(66,:) .* inMv2(19,:) + inMv1(69,:) .* inMv2(22,:) + inMv1(70,:) .* inMv2(25,:);
    outMv(13,:) = inMv1(12,:) .* inMv2(1,:) + inMv1(22,:) .* inMv2(2,:) + inMv1(28,:) .* inMv2(3,:) + inMv1(33,:) .* inMv2(5,:) + inMv1(34,:) .* inMv2(6,:) + inMv1(42,:) .* inMv2(8,:) + inMv1(48,:) .* inMv2(9,:) + inMv1(53,:) .* inMv2(11,:) + inMv1(54,:) .* inMv2(12,:) + inMv1(58,:) .* inMv2(14,:) + inMv1(63,:) .* inMv2(16,:) + inMv1(64,:) .* inMv2(17,:) + inMv1(67,:) .* inMv2(20,:) + inMv1(68,:) .* inMv2(21,:) + inMv1(70,:) .* inMv2(26,:);
    outMv(14,:) = -inMv1(11,:) .* inMv2(1,:) - inMv1(21,:) .* inMv2(2,:) - inMv1(27,:) .* inMv2(3,:) - inMv1(32,:) .* inMv2(5,:) + inMv1(34,:) .* inMv2(7,:) - inMv1(41,:) .* inMv2(8,:) - inMv1(47,:) .* inMv2(9,:) - inMv1(52,:) .* inMv2(11,:) + inMv1(54,:) .* inMv2(13,:) - inMv1(57,:) .* inMv2(14,:) - inMv1(62,:) .* inMv2(16,:) + inMv1(64,:) .* inMv2(18,:) - inMv1(66,:) .* inMv2(20,:) + inMv1(68,:) .* inMv2(22,:) + inMv1(70,:) .* inMv2(27,:);
    outMv(15,:) = inMv1(10,:) .* inMv2(1,:) + inMv1(20,:) .* inMv2(2,:) + inMv1(26,:) .* inMv2(3,:) - inMv1(32,:) .* inMv2(6,:) - inMv1(33,:) .* inMv2(7,:) + inMv1(40,:) .* inMv2(8,:) + inMv1(46,:) .* inMv2(9,:) - inMv1(52,:) .* inMv2(12,:) - inMv1(53,:) .* inMv2(13,:) + inMv1(56,:) .* inMv2(14,:) - inMv1(62,:) .* inMv2(17,:) - inMv1(63,:) .* inMv2(18,:) - inMv1(66,:) .* inMv2(21,:) - inMv1(67,:) .* inMv2(22,:) + inMv1(70,:) .* inMv2(28,:);
    outMv(16,:) = -inMv1(9,:) .* inMv2(1,:) - inMv1(19,:) .* inMv2(2,:) + inMv1(28,:) .* inMv2(4,:) - inMv1(30,:) .* inMv2(5,:) - inMv1(31,:) .* inMv2(6,:) - inMv1(39,:) .* inMv2(8,:) + inMv1(48,:) .* inMv2(10,:) - inMv1(50,:) .* inMv2(11,:) - inMv1(51,:) .* inMv2(12,:) + inMv1(58,:) .* inMv2(15,:) - inMv1(60,:) .* inMv2(16,:) - inMv1(61,:) .* inMv2(17,:) + inMv1(67,:) .* inMv2(23,:) + inMv1(68,:) .* inMv2(24,:) - inMv1(69,:) .* inMv2(26,:);
    outMv(17,:) = inMv1(8,:) .* inMv2(1,:) + inMv1(18,:) .* inMv2(2,:) - inMv1(27,:) .* inMv2(4,:) + inMv1(29,:) .* inMv2(5,:) - inMv1(31,:) .* inMv2(7,:) + inMv1(38,:) .* inMv2(8,:) - inMv1(47,:) .* inMv2(10,:) + inMv1(49,:) .* inMv2(11,:) - inMv1(51,:) .* inMv2(13,:) - inMv1(57,:) .* inMv2(15,:) + inMv1(59,:) .* inMv2(16,:) - inMv1(61,:) .* inMv2(18,:) - inMv1(66,:) .* inMv2(23,:) + inMv1(68,:) .* inMv2(25,:) - inMv1(69,:) .* inMv2(27,:);
    outMv(18,:) = -inMv1(7,:) .* inMv2(1,:) - inMv1(17,:) .* inMv2(2,:) + inMv1(26,:) .* inMv2(4,:) + inMv1(29,:) .* inMv2(6,:) + inMv1(30,:) .* inMv2(7,:) - inMv1(37,:) .* inMv2(8,:) + inMv1(46,:) .* inMv2(10,:) + inMv1(49,:) .* inMv2(12,:) + inMv1(50,:) .* inMv2(13,:) + inMv1(56,:) .* inMv2(15,:) + inMv1(59,:) .* inMv2(17,:) + inMv1(60,:) .* inMv2(18,:) - inMv1(66,:) .* inMv2(24,:) - inMv1(67,:) .* inMv2(25,:) - inMv1(69,:) .* inMv2(28,:);
    outMv(19,:) = -inMv1(6,:) .* inMv2(1,:) - inMv1(16,:) .* inMv2(2,:) + inMv1(26,:) .* inMv2(5,:) + inMv1(27,:) .* inMv2(6,:) + inMv1(28,:) .* inMv2(7,:) - inMv1(36,:) .* inMv2(8,:) + inMv1(46,:) .* inMv2(11,:) + inMv1(47,:) .* inMv2(12,:) + inMv1(48,:) .* inMv2(13,:) + inMv1(56,:) .* inMv2(16,:) + inMv1(57,:) .* inMv2(17,:) + inMv1(58,:) .* inMv2(18,:) - inMv1(66,:) .* inMv2(26,:) - inMv1(67,:) .* inMv2(27,:) - inMv1(68,:) .* inMv2(28,:);
    outMv(20,:) = inMv1(5,:) .* inMv2(1,:) - inMv1(19,:) .* inMv2(3,:) - inMv1(22,:) .* inMv2(4,:) + inMv1(24,:) .* inMv2(5,:) + inMv1(25,:) .* inMv2(6,:) - inMv1(39,:) .* inMv2(9,:) - inMv1(42,:) .* inMv2(10,:) + inMv1(44,:) .* inMv2(11,:) + inMv1(45,:) .* inMv2(12,:) + inMv1(58,:) .* inMv2(19,:) - inMv1(60,:) .* inMv2(20,:) - inMv1(61,:) .* inMv2(21,:) - inMv1(63,:) .* inMv2(23,:) - inMv1(64,:) .* inMv2(24,:) + inMv1(65,:) .* inMv2(26,:);
    outMv(21,:) = -inMv1(4,:) .* inMv2(1,:) + inMv1(18,:) .* inMv2(3,:) + inMv1(21,:) .* inMv2(4,:) - inMv1(23,:) .* inMv2(5,:) + inMv1(25,:) .* inMv2(7,:) + inMv1(38,:) .* inMv2(9,:) + inMv1(41,:) .* inMv2(10,:) - inMv1(43,:) .* inMv2(11,:) + inMv1(45,:) .* inMv2(13,:) - inMv1(57,:) .* inMv2(19,:) + inMv1(59,:) .* inMv2(20,:) - inMv1(61,:) .* inMv2(22,:) + inMv1(62,:) .* inMv2(23,:) - inMv1(64,:) .* inMv2(25,:) + inMv1(65,:) .* inMv2(27,:);
    outMv(22,:) = inMv1(3,:) .* inMv2(1,:) - inMv1(17,:) .* inMv2(3,:) - inMv1(20,:) .* inMv2(4,:) - inMv1(23,:) .* inMv2(6,:) - inMv1(24,:) .* inMv2(7,:) - inMv1(37,:) .* inMv2(9,:) - inMv1(40,:) .* inMv2(10,:) - inMv1(43,:) .* inMv2(12,:) - inMv1(44,:) .* inMv2(13,:) + inMv1(56,:) .* inMv2(19,:) + inMv1(59,:) .* inMv2(21,:) + inMv1(60,:) .* inMv2(22,:) + inMv1(62,:) .* inMv2(24,:) + inMv1(63,:) .* inMv2(25,:) + inMv1(65,:) .* inMv2(28,:);
    outMv(23,:) = inMv1(2,:) .* inMv2(1,:) - inMv1(16,:) .* inMv2(3,:) - inMv1(20,:) .* inMv2(5,:) - inMv1(21,:) .* inMv2(6,:) - inMv1(22,:) .* inMv2(7,:) - inMv1(36,:) .* inMv2(9,:) - inMv1(40,:) .* inMv2(11,:) - inMv1(41,:) .* inMv2(12,:) - inMv1(42,:) .* inMv2(13,:) + inMv1(56,:) .* inMv2(20,:) + inMv1(57,:) .* inMv2(21,:) + inMv1(58,:) .* inMv2(22,:) + inMv1(62,:) .* inMv2(26,:) + inMv1(63,:) .* inMv2(27,:) + inMv1(64,:) .* inMv2(28,:);
    outMv(24,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(16,:) .* inMv2(4,:) + inMv1(17,:) .* inMv2(5,:) + inMv1(18,:) .* inMv2(6,:) + inMv1(19,:) .* inMv2(7,:) - inMv1(36,:) .* inMv2(10,:) + inMv1(37,:) .* inMv2(11,:) + inMv1(38,:) .* inMv2(12,:) + inMv1(39,:) .* inMv2(13,:) + inMv1(56,:) .* inMv2(23,:) + inMv1(57,:) .* inMv2(24,:) + inMv1(58,:) .* inMv2(25,:) - inMv1(59,:) .* inMv2(26,:) - inMv1(60,:) .* inMv2(27,:) - inMv1(61,:) .* inMv2(28,:);
    outMv(25,:) = inMv1(5,:) .* inMv2(2,:) + inMv1(9,:) .* inMv2(3,:) + inMv1(12,:) .* inMv2(4,:) - inMv1(14,:) .* inMv2(5,:) - inMv1(15,:) .* inMv2(6,:) - inMv1(39,:) .* inMv2(14,:) - inMv1(42,:) .* inMv2(15,:) + inMv1(44,:) .* inMv2(16,:) + inMv1(45,:) .* inMv2(17,:) - inMv1(48,:) .* inMv2(19,:) + inMv1(50,:) .* inMv2(20,:) + inMv1(51,:) .* inMv2(21,:) + inMv1(53,:) .* inMv2(23,:) + inMv1(54,:) .* inMv2(24,:) - inMv1(55,:) .* inMv2(26,:);
    outMv(26,:) = -inMv1(4,:) .* inMv2(2,:) - inMv1(8,:) .* inMv2(3,:) - inMv1(11,:) .* inMv2(4,:) + inMv1(13,:) .* inMv2(5,:) - inMv1(15,:) .* inMv2(7,:) + inMv1(38,:) .* inMv2(14,:) + inMv1(41,:) .* inMv2(15,:) - inMv1(43,:) .* inMv2(16,:) + inMv1(45,:) .* inMv2(18,:) + inMv1(47,:) .* inMv2(19,:) - inMv1(49,:) .* inMv2(20,:) + inMv1(51,:) .* inMv2(22,:) - inMv1(52,:) .* inMv2(23,:) + inMv1(54,:) .* inMv2(25,:) - inMv1(55,:) .* inMv2(27,:);
    outMv(27,:) = inMv1(3,:) .* inMv2(2,:) + inMv1(7,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(4,:) + inMv1(13,:) .* inMv2(6,:) + inMv1(14,:) .* inMv2(7,:) - inMv1(37,:) .* inMv2(14,:) - inMv1(40,:) .* inMv2(15,:) - inMv1(43,:) .* inMv2(17,:) - inMv1(44,:) .* inMv2(18,:) - inMv1(46,:) .* inMv2(19,:) - inMv1(49,:) .* inMv2(21,:) - inMv1(50,:) .* inMv2(22,:) - inMv1(52,:) .* inMv2(24,:) - inMv1(53,:) .* inMv2(25,:) - inMv1(55,:) .* inMv2(28,:);
    outMv(28,:) = inMv1(2,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(3,:) + inMv1(10,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(6,:) + inMv1(12,:) .* inMv2(7,:) - inMv1(36,:) .* inMv2(14,:) - inMv1(40,:) .* inMv2(16,:) - inMv1(41,:) .* inMv2(17,:) - inMv1(42,:) .* inMv2(18,:) - inMv1(46,:) .* inMv2(20,:) - inMv1(47,:) .* inMv2(21,:) - inMv1(48,:) .* inMv2(22,:) - inMv1(52,:) .* inMv2(26,:) - inMv1(53,:) .* inMv2(27,:) - inMv1(54,:) .* inMv2(28,:);
    outMv(29,:) = -inMv1(1,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(4,:) - inMv1(7,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(7,:) - inMv1(36,:) .* inMv2(15,:) + inMv1(37,:) .* inMv2(16,:) + inMv1(38,:) .* inMv2(17,:) + inMv1(39,:) .* inMv2(18,:) - inMv1(46,:) .* inMv2(23,:) - inMv1(47,:) .* inMv2(24,:) - inMv1(48,:) .* inMv2(25,:) + inMv1(49,:) .* inMv2(26,:) + inMv1(50,:) .* inMv2(27,:) + inMv1(51,:) .* inMv2(28,:);
    outMv(30,:) = -inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(4,:) + inMv1(3,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(6,:) + inMv1(5,:) .* inMv2(7,:) - inMv1(36,:) .* inMv2(19,:) + inMv1(37,:) .* inMv2(20,:) + inMv1(38,:) .* inMv2(21,:) + inMv1(39,:) .* inMv2(22,:) + inMv1(40,:) .* inMv2(23,:) + inMv1(41,:) .* inMv2(24,:) + inMv1(42,:) .* inMv2(25,:) - inMv1(43,:) .* inMv2(26,:) - inMv1(44,:) .* inMv2(27,:) - inMv1(45,:) .* inMv2(28,:);
    outMv(31,:) = inMv1(5,:) .* inMv2(8,:) + inMv1(9,:) .* inMv2(9,:) + inMv1(12,:) .* inMv2(10,:) - inMv1(14,:) .* inMv2(11,:) - inMv1(15,:) .* inMv2(12,:) + inMv1(19,:) .* inMv2(14,:) + inMv1(22,:) .* inMv2(15,:) - inMv1(24,:) .* inMv2(16,:) - inMv1(25,:) .* inMv2(17,:) + inMv1(28,:) .* inMv2(19,:) - inMv1(30,:) .* inMv2(20,:) - inMv1(31,:) .* inMv2(21,:) - inMv1(33,:) .* inMv2(23,:) - inMv1(34,:) .* inMv2(24,:) + inMv1(35,:) .* inMv2(26,:);
    outMv(32,:) = -inMv1(4,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(9,:) - inMv1(11,:) .* inMv2(10,:) + inMv1(13,:) .* inMv2(11,:) - inMv1(15,:) .* inMv2(13,:) - inMv1(18,:) .* inMv2(14,:) - inMv1(21,:) .* inMv2(15,:) + inMv1(23,:) .* inMv2(16,:) - inMv1(25,:) .* inMv2(18,:) - inMv1(27,:) .* inMv2(19,:) + inMv1(29,:) .* inMv2(20,:) - inMv1(31,:) .* inMv2(22,:) + inMv1(32,:) .* inMv2(23,:) - inMv1(34,:) .* inMv2(25,:) + inMv1(35,:) .* inMv2(27,:);
    outMv(33,:) = inMv1(3,:) .* inMv2(8,:) + inMv1(7,:) .* inMv2(9,:) + inMv1(10,:) .* inMv2(10,:) + inMv1(13,:) .* inMv2(12,:) + inMv1(14,:) .* inMv2(13,:) + inMv1(17,:) .* inMv2(14,:) + inMv1(20,:) .* inMv2(15,:) + inMv1(23,:) .* inMv2(17,:) + inMv1(24,:) .* inMv2(18,:) + inMv1(26,:) .* inMv2(19,:) + inMv1(29,:) .* inMv2(21,:) + inMv1(30,:) .* inMv2(22,:) + inMv1(32,:) .* inMv2(24,:) + inMv1(33,:) .* inMv2(25,:) + inMv1(35,:) .* inMv2(28,:);
    outMv(34,:) = inMv1(2,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(9,:) + inMv1(10,:) .* inMv2(11,:) + inMv1(11,:) .* inMv2(12,:) + inMv1(12,:) .* inMv2(13,:) + inMv1(16,:) .* inMv2(14,:) + inMv1(20,:) .* inMv2(16,:) + inMv1(21,:) .* inMv2(17,:) + inMv1(22,:) .* inMv2(18,:) + inMv1(26,:) .* inMv2(20,:) + inMv1(27,:) .* inMv2(21,:) + inMv1(28,:) .* inMv2(22,:) + inMv1(32,:) .* inMv2(26,:) + inMv1(33,:) .* inMv2(27,:) + inMv1(34,:) .* inMv2(28,:);
    outMv(35,:) = -inMv1(1,:) .* inMv2(8,:) + inMv1(6,:) .* inMv2(10,:) - inMv1(7,:) .* inMv2(11,:) - inMv1(8,:) .* inMv2(12,:) - inMv1(9,:) .* inMv2(13,:) + inMv1(16,:) .* inMv2(15,:) - inMv1(17,:) .* inMv2(16,:) - inMv1(18,:) .* inMv2(17,:) - inMv1(19,:) .* inMv2(18,:) + inMv1(26,:) .* inMv2(23,:) + inMv1(27,:) .* inMv2(24,:) + inMv1(28,:) .* inMv2(25,:) - inMv1(29,:) .* inMv2(26,:) - inMv1(30,:) .* inMv2(27,:) - inMv1(31,:) .* inMv2(28,:);
    outMv(36,:) = -inMv1(1,:) .* inMv2(9,:) - inMv1(2,:) .* inMv2(10,:) + inMv1(3,:) .* inMv2(11,:) + inMv1(4,:) .* inMv2(12,:) + inMv1(5,:) .* inMv2(13,:) + inMv1(16,:) .* inMv2(19,:) - inMv1(17,:) .* inMv2(20,:) - inMv1(18,:) .* inMv2(21,:) - inMv1(19,:) .* inMv2(22,:) - inMv1(20,:) .* inMv2(23,:) - inMv1(21,:) .* inMv2(24,:) - inMv1(22,:) .* inMv2(25,:) + inMv1(23,:) .* inMv2(26,:) + inMv1(24,:) .* inMv2(27,:) + inMv1(25,:) .* inMv2(28,:);
    outMv(37,:) = -inMv1(1,:) .* inMv2(14,:) - inMv1(2,:) .* inMv2(15,:) + inMv1(3,:) .* inMv2(16,:) + inMv1(4,:) .* inMv2(17,:) + inMv1(5,:) .* inMv2(18,:) - inMv1(6,:) .* inMv2(19,:) + inMv1(7,:) .* inMv2(20,:) + inMv1(8,:) .* inMv2(21,:) + inMv1(9,:) .* inMv2(22,:) + inMv1(10,:) .* inMv2(23,:) + inMv1(11,:) .* inMv2(24,:) + inMv1(12,:) .* inMv2(25,:) - inMv1(13,:) .* inMv2(26,:) - inMv1(14,:) .* inMv2(27,:) - inMv1(15,:) .* inMv2(28,:);
    outMv(220,:) = -inMv1(56,:) .* inMv2(28,:) + inMv1(57,:) .* inMv2(27,:) - inMv1(58,:) .* inMv2(26,:) - inMv1(59,:) .* inMv2(25,:) + inMv1(60,:) .* inMv2(24,:) - inMv1(61,:) .* inMv2(23,:) + inMv1(62,:) .* inMv2(22,:) - inMv1(63,:) .* inMv2(21,:) + inMv1(64,:) .* inMv2(20,:) - inMv1(65,:) .* inMv2(19,:) - inMv1(66,:) .* inMv2(18,:) + inMv1(67,:) .* inMv2(17,:) - inMv1(68,:) .* inMv2(16,:) + inMv1(69,:) .* inMv2(15,:) - inMv1(70,:) .* inMv2(14,:);
    outMv(221,:) = inMv1(46,:) .* inMv2(28,:) - inMv1(47,:) .* inMv2(27,:) + inMv1(48,:) .* inMv2(26,:) + inMv1(49,:) .* inMv2(25,:) - inMv1(50,:) .* inMv2(24,:) + inMv1(51,:) .* inMv2(23,:) - inMv1(52,:) .* inMv2(22,:) + inMv1(53,:) .* inMv2(21,:) - inMv1(54,:) .* inMv2(20,:) + inMv1(55,:) .* inMv2(19,:) + inMv1(66,:) .* inMv2(13,:) - inMv1(67,:) .* inMv2(12,:) + inMv1(68,:) .* inMv2(11,:) - inMv1(69,:) .* inMv2(10,:) + inMv1(70,:) .* inMv2(9,:);
    outMv(222,:) = -inMv1(40,:) .* inMv2(28,:) + inMv1(41,:) .* inMv2(27,:) - inMv1(42,:) .* inMv2(26,:) - inMv1(43,:) .* inMv2(25,:) + inMv1(44,:) .* inMv2(24,:) - inMv1(45,:) .* inMv2(23,:) + inMv1(52,:) .* inMv2(18,:) - inMv1(53,:) .* inMv2(17,:) + inMv1(54,:) .* inMv2(16,:) - inMv1(55,:) .* inMv2(15,:) - inMv1(62,:) .* inMv2(13,:) + inMv1(63,:) .* inMv2(12,:) - inMv1(64,:) .* inMv2(11,:) + inMv1(65,:) .* inMv2(10,:) - inMv1(70,:) .* inMv2(8,:);
    outMv(223,:) = inMv1(37,:) .* inMv2(28,:) - inMv1(38,:) .* inMv2(27,:) + inMv1(39,:) .* inMv2(26,:) + inMv1(43,:) .* inMv2(22,:) - inMv1(44,:) .* inMv2(21,:) + inMv1(45,:) .* inMv2(20,:) - inMv1(49,:) .* inMv2(18,:) + inMv1(50,:) .* inMv2(17,:) - inMv1(51,:) .* inMv2(16,:) + inMv1(55,:) .* inMv2(14,:) + inMv1(59,:) .* inMv2(13,:) - inMv1(60,:) .* inMv2(12,:) + inMv1(61,:) .* inMv2(11,:) - inMv1(65,:) .* inMv2(9,:) + inMv1(69,:) .* inMv2(8,:);
    outMv(224,:) = inMv1(36,:) .* inMv2(28,:) - inMv1(38,:) .* inMv2(25,:) + inMv1(39,:) .* inMv2(24,:) + inMv1(41,:) .* inMv2(22,:) - inMv1(42,:) .* inMv2(21,:) + inMv1(45,:) .* inMv2(19,:) - inMv1(47,:) .* inMv2(18,:) + inMv1(48,:) .* inMv2(17,:) - inMv1(51,:) .* inMv2(15,:) + inMv1(54,:) .* inMv2(14,:) + inMv1(57,:) .* inMv2(13,:) - inMv1(58,:) .* inMv2(12,:) + inMv1(61,:) .* inMv2(10,:) - inMv1(64,:) .* inMv2(9,:) + inMv1(68,:) .* inMv2(8,:);
    outMv(225,:) = -inMv1(36,:) .* inMv2(27,:) + inMv1(37,:) .* inMv2(25,:) - inMv1(39,:) .* inMv2(23,:) - inMv1(40,:) .* inMv2(22,:) + inMv1(42,:) .* inMv2(20,:) - inMv1(44,:) .* inMv2(19,:) + inMv1(46,:) .* inMv2(18,:) - inMv1(48,:) .* inMv2(16,:) + inMv1(50,:) .* inMv2(15,:) - inMv1(53,:) .* inMv2(14,:) - inMv1(56,:) .* inMv2(13,:) + inMv1(58,:) .* inMv2(11,:) - inMv1(60,:) .* inMv2(10,:) + inMv1(63,:) .* inMv2(9,:) - inMv1(67,:) .* inMv2(8,:);
    outMv(226,:) = inMv1(36,:) .* inMv2(26,:) - inMv1(37,:) .* inMv2(24,:) + inMv1(38,:) .* inMv2(23,:) + inMv1(40,:) .* inMv2(21,:) - inMv1(41,:) .* inMv2(20,:) + inMv1(43,:) .* inMv2(19,:) - inMv1(46,:) .* inMv2(17,:) + inMv1(47,:) .* inMv2(16,:) - inMv1(49,:) .* inMv2(15,:) + inMv1(52,:) .* inMv2(14,:) + inMv1(56,:) .* inMv2(12,:) - inMv1(57,:) .* inMv2(11,:) + inMv1(59,:) .* inMv2(10,:) - inMv1(62,:) .* inMv2(9,:) + inMv1(66,:) .* inMv2(8,:);
    outMv(227,:) = -inMv1(26,:) .* inMv2(28,:) + inMv1(27,:) .* inMv2(27,:) - inMv1(28,:) .* inMv2(26,:) - inMv1(29,:) .* inMv2(25,:) + inMv1(30,:) .* inMv2(24,:) - inMv1(31,:) .* inMv2(23,:) + inMv1(32,:) .* inMv2(22,:) - inMv1(33,:) .* inMv2(21,:) + inMv1(34,:) .* inMv2(20,:) - inMv1(35,:) .* inMv2(19,:) - inMv1(66,:) .* inMv2(7,:) + inMv1(67,:) .* inMv2(6,:) - inMv1(68,:) .* inMv2(5,:) + inMv1(69,:) .* inMv2(4,:) - inMv1(70,:) .* inMv2(3,:);
    outMv(228,:) = inMv1(20,:) .* inMv2(28,:) - inMv1(21,:) .* inMv2(27,:) + inMv1(22,:) .* inMv2(26,:) + inMv1(23,:) .* inMv2(25,:) - inMv1(24,:) .* inMv2(24,:) + inMv1(25,:) .* inMv2(23,:) - inMv1(32,:) .* inMv2(18,:) + inMv1(33,:) .* inMv2(17,:) - inMv1(34,:) .* inMv2(16,:) + inMv1(35,:) .* inMv2(15,:) + inMv1(62,:) .* inMv2(7,:) - inMv1(63,:) .* inMv2(6,:) + inMv1(64,:) .* inMv2(5,:) - inMv1(65,:) .* inMv2(4,:) + inMv1(70,:) .* inMv2(2,:);
    outMv(229,:) = -inMv1(17,:) .* inMv2(28,:) + inMv1(18,:) .* inMv2(27,:) - inMv1(19,:) .* inMv2(26,:) - inMv1(23,:) .* inMv2(22,:) + inMv1(24,:) .* inMv2(21,:) - inMv1(25,:) .* inMv2(20,:) + inMv1(29,:) .* inMv2(18,:) - inMv1(30,:) .* inMv2(17,:) + inMv1(31,:) .* inMv2(16,:) - inMv1(35,:) .* inMv2(14,:) - inMv1(59,:) .* inMv2(7,:) + inMv1(60,:) .* inMv2(6,:) - inMv1(61,:) .* inMv2(5,:) + inMv1(65,:) .* inMv2(3,:) - inMv1(69,:) .* inMv2(2,:);
    outMv(230,:) = -inMv1(16,:) .* inMv2(28,:) + inMv1(18,:) .* inMv2(25,:) - inMv1(19,:) .* inMv2(24,:) - inMv1(21,:) .* inMv2(22,:) + inMv1(22,:) .* inMv2(21,:) - inMv1(25,:) .* inMv2(19,:) + inMv1(27,:) .* inMv2(18,:) - inMv1(28,:) .* inMv2(17,:) + inMv1(31,:) .* inMv2(15,:) - inMv1(34,:) .* inMv2(14,:) - inMv1(57,:) .* inMv2(7,:) + inMv1(58,:) .* inMv2(6,:) - inMv1(61,:) .* inMv2(4,:) + inMv1(64,:) .* inMv2(3,:) - inMv1(68,:) .* inMv2(2,:);
    outMv(231,:) = inMv1(16,:) .* inMv2(27,:) - inMv1(17,:) .* inMv2(25,:) + inMv1(19,:) .* inMv2(23,:) + inMv1(20,:) .* inMv2(22,:) - inMv1(22,:) .* inMv2(20,:) + inMv1(24,:) .* inMv2(19,:) - inMv1(26,:) .* inMv2(18,:) + inMv1(28,:) .* inMv2(16,:) - inMv1(30,:) .* inMv2(15,:) + inMv1(33,:) .* inMv2(14,:) + inMv1(56,:) .* inMv2(7,:) - inMv1(58,:) .* inMv2(5,:) + inMv1(60,:) .* inMv2(4,:) - inMv1(63,:) .* inMv2(3,:) + inMv1(67,:) .* inMv2(2,:);
    outMv(232,:) = -inMv1(16,:) .* inMv2(26,:) + inMv1(17,:) .* inMv2(24,:) - inMv1(18,:) .* inMv2(23,:) - inMv1(20,:) .* inMv2(21,:) + inMv1(21,:) .* inMv2(20,:) - inMv1(23,:) .* inMv2(19,:) + inMv1(26,:) .* inMv2(17,:) - inMv1(27,:) .* inMv2(16,:) + inMv1(29,:) .* inMv2(15,:) - inMv1(32,:) .* inMv2(14,:) - inMv1(56,:) .* inMv2(6,:) + inMv1(57,:) .* inMv2(5,:) - inMv1(59,:) .* inMv2(4,:) + inMv1(62,:) .* inMv2(3,:) - inMv1(66,:) .* inMv2(2,:);
    outMv(233,:) = -inMv1(10,:) .* inMv2(28,:) + inMv1(11,:) .* inMv2(27,:) - inMv1(12,:) .* inMv2(26,:) - inMv1(13,:) .* inMv2(25,:) + inMv1(14,:) .* inMv2(24,:) - inMv1(15,:) .* inMv2(23,:) + inMv1(32,:) .* inMv2(13,:) - inMv1(33,:) .* inMv2(12,:) + inMv1(34,:) .* inMv2(11,:) - inMv1(35,:) .* inMv2(10,:) - inMv1(52,:) .* inMv2(7,:) + inMv1(53,:) .* inMv2(6,:) - inMv1(54,:) .* inMv2(5,:) + inMv1(55,:) .* inMv2(4,:) - inMv1(70,:) .* inMv2(1,:);
    outMv(234,:) = inMv1(7,:) .* inMv2(28,:) - inMv1(8,:) .* inMv2(27,:) + inMv1(9,:) .* inMv2(26,:) + inMv1(13,:) .* inMv2(22,:) - inMv1(14,:) .* inMv2(21,:) + inMv1(15,:) .* inMv2(20,:) - inMv1(29,:) .* inMv2(13,:) + inMv1(30,:) .* inMv2(12,:) - inMv1(31,:) .* inMv2(11,:) + inMv1(35,:) .* inMv2(9,:) + inMv1(49,:) .* inMv2(7,:) - inMv1(50,:) .* inMv2(6,:) + inMv1(51,:) .* inMv2(5,:) - inMv1(55,:) .* inMv2(3,:) + inMv1(69,:) .* inMv2(1,:);
    outMv(235,:) = inMv1(6,:) .* inMv2(28,:) - inMv1(8,:) .* inMv2(25,:) + inMv1(9,:) .* inMv2(24,:) + inMv1(11,:) .* inMv2(22,:) - inMv1(12,:) .* inMv2(21,:) + inMv1(15,:) .* inMv2(19,:) - inMv1(27,:) .* inMv2(13,:) + inMv1(28,:) .* inMv2(12,:) - inMv1(31,:) .* inMv2(10,:) + inMv1(34,:) .* inMv2(9,:) + inMv1(47,:) .* inMv2(7,:) - inMv1(48,:) .* inMv2(6,:) + inMv1(51,:) .* inMv2(4,:) - inMv1(54,:) .* inMv2(3,:) + inMv1(68,:) .* inMv2(1,:);
    outMv(236,:) = -inMv1(6,:) .* inMv2(27,:) + inMv1(7,:) .* inMv2(25,:) - inMv1(9,:) .* inMv2(23,:) - inMv1(10,:) .* inMv2(22,:) + inMv1(12,:) .* inMv2(20,:) - inMv1(14,:) .* inMv2(19,:) + inMv1(26,:) .* inMv2(13,:) - inMv1(28,:) .* inMv2(11,:) + inMv1(30,:) .* inMv2(10,:) - inMv1(33,:) .* inMv2(9,:) - inMv1(46,:) .* inMv2(7,:) + inMv1(48,:) .* inMv2(5,:) - inMv1(50,:) .* inMv2(4,:) + inMv1(53,:) .* inMv2(3,:) - inMv1(67,:) .* inMv2(1,:);
    outMv(237,:) = inMv1(6,:) .* inMv2(26,:) - inMv1(7,:) .* inMv2(24,:) + inMv1(8,:) .* inMv2(23,:) + inMv1(10,:) .* inMv2(21,:) - inMv1(11,:) .* inMv2(20,:) + inMv1(13,:) .* inMv2(19,:) - inMv1(26,:) .* inMv2(12,:) + inMv1(27,:) .* inMv2(11,:) - inMv1(29,:) .* inMv2(10,:) + inMv1(32,:) .* inMv2(9,:) + inMv1(46,:) .* inMv2(6,:) - inMv1(47,:) .* inMv2(5,:) + inMv1(49,:) .* inMv2(4,:) - inMv1(52,:) .* inMv2(3,:) + inMv1(66,:) .* inMv2(1,:);
    outMv(238,:) = -inMv1(3,:) .* inMv2(28,:) + inMv1(4,:) .* inMv2(27,:) - inMv1(5,:) .* inMv2(26,:) - inMv1(13,:) .* inMv2(18,:) + inMv1(14,:) .* inMv2(17,:) - inMv1(15,:) .* inMv2(16,:) + inMv1(23,:) .* inMv2(13,:) - inMv1(24,:) .* inMv2(12,:) + inMv1(25,:) .* inMv2(11,:) - inMv1(35,:) .* inMv2(8,:) - inMv1(43,:) .* inMv2(7,:) + inMv1(44,:) .* inMv2(6,:) - inMv1(45,:) .* inMv2(5,:) + inMv1(55,:) .* inMv2(2,:) - inMv1(65,:) .* inMv2(1,:);
    outMv(239,:) = -inMv1(2,:) .* inMv2(28,:) + inMv1(4,:) .* inMv2(25,:) - inMv1(5,:) .* inMv2(24,:) - inMv1(11,:) .* inMv2(18,:) + inMv1(12,:) .* inMv2(17,:) - inMv1(15,:) .* inMv2(15,:) + inMv1(21,:) .* inMv2(13,:) - inMv1(22,:) .* inMv2(12,:) + inMv1(25,:) .* inMv2(10,:) - inMv1(34,:) .* inMv2(8,:) - inMv1(41,:) .* inMv2(7,:) + inMv1(42,:) .* inMv2(6,:) - inMv1(45,:) .* inMv2(4,:) + inMv1(54,:) .* inMv2(2,:) - inMv1(64,:) .* inMv2(1,:);
    outMv(240,:) = inMv1(2,:) .* inMv2(27,:) - inMv1(3,:) .* inMv2(25,:) + inMv1(5,:) .* inMv2(23,:) + inMv1(10,:) .* inMv2(18,:) - inMv1(12,:) .* inMv2(16,:) + inMv1(14,:) .* inMv2(15,:) - inMv1(20,:) .* inMv2(13,:) + inMv1(22,:) .* inMv2(11,:) - inMv1(24,:) .* inMv2(10,:) + inMv1(33,:) .* inMv2(8,:) + inMv1(40,:) .* inMv2(7,:) - inMv1(42,:) .* inMv2(5,:) + inMv1(44,:) .* inMv2(4,:) - inMv1(53,:) .* inMv2(2,:) + inMv1(63,:) .* inMv2(1,:);
    outMv(241,:) = -inMv1(2,:) .* inMv2(26,:) + inMv1(3,:) .* inMv2(24,:) - inMv1(4,:) .* inMv2(23,:) - inMv1(10,:) .* inMv2(17,:) + inMv1(11,:) .* inMv2(16,:) - inMv1(13,:) .* inMv2(15,:) + inMv1(20,:) .* inMv2(12,:) - inMv1(21,:) .* inMv2(11,:) + inMv1(23,:) .* inMv2(10,:) - inMv1(32,:) .* inMv2(8,:) - inMv1(40,:) .* inMv2(6,:) + inMv1(41,:) .* inMv2(5,:) - inMv1(43,:) .* inMv2(4,:) + inMv1(52,:) .* inMv2(2,:) - inMv1(62,:) .* inMv2(1,:);
    outMv(242,:) = inMv1(1,:) .* inMv2(28,:) - inMv1(4,:) .* inMv2(22,:) + inMv1(5,:) .* inMv2(21,:) + inMv1(8,:) .* inMv2(18,:) - inMv1(9,:) .* inMv2(17,:) + inMv1(15,:) .* inMv2(14,:) - inMv1(18,:) .* inMv2(13,:) + inMv1(19,:) .* inMv2(12,:) - inMv1(25,:) .* inMv2(9,:) + inMv1(31,:) .* inMv2(8,:) + inMv1(38,:) .* inMv2(7,:) - inMv1(39,:) .* inMv2(6,:) + inMv1(45,:) .* inMv2(3,:) - inMv1(51,:) .* inMv2(2,:) + inMv1(61,:) .* inMv2(1,:);
    outMv(243,:) = -inMv1(1,:) .* inMv2(27,:) + inMv1(3,:) .* inMv2(22,:) - inMv1(5,:) .* inMv2(20,:) - inMv1(7,:) .* inMv2(18,:) + inMv1(9,:) .* inMv2(16,:) - inMv1(14,:) .* inMv2(14,:) + inMv1(17,:) .* inMv2(13,:) - inMv1(19,:) .* inMv2(11,:) + inMv1(24,:) .* inMv2(9,:) - inMv1(30,:) .* inMv2(8,:) - inMv1(37,:) .* inMv2(7,:) + inMv1(39,:) .* inMv2(5,:) - inMv1(44,:) .* inMv2(3,:) + inMv1(50,:) .* inMv2(2,:) - inMv1(60,:) .* inMv2(1,:);
    outMv(244,:) = inMv1(1,:) .* inMv2(26,:) - inMv1(3,:) .* inMv2(21,:) + inMv1(4,:) .* inMv2(20,:) + inMv1(7,:) .* inMv2(17,:) - inMv1(8,:) .* inMv2(16,:) + inMv1(13,:) .* inMv2(14,:) - inMv1(17,:) .* inMv2(12,:) + inMv1(18,:) .* inMv2(11,:) - inMv1(23,:) .* inMv2(9,:) + inMv1(29,:) .* inMv2(8,:) + inMv1(37,:) .* inMv2(6,:) - inMv1(38,:) .* inMv2(5,:) + inMv1(43,:) .* inMv2(3,:) - inMv1(49,:) .* inMv2(2,:) + inMv1(59,:) .* inMv2(1,:);
    outMv(245,:) = -inMv1(1,:) .* inMv2(25,:) + inMv1(2,:) .* inMv2(22,:) - inMv1(5,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(18,:) + inMv1(9,:) .* inMv2(15,:) - inMv1(12,:) .* inMv2(14,:) + inMv1(16,:) .* inMv2(13,:) - inMv1(19,:) .* inMv2(10,:) + inMv1(22,:) .* inMv2(9,:) - inMv1(28,:) .* inMv2(8,:) - inMv1(36,:) .* inMv2(7,:) + inMv1(39,:) .* inMv2(4,:) - inMv1(42,:) .* inMv2(3,:) + inMv1(48,:) .* inMv2(2,:) - inMv1(58,:) .* inMv2(1,:);
    outMv(246,:) = inMv1(1,:) .* inMv2(24,:) - inMv1(2,:) .* inMv2(21,:) + inMv1(4,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(17,:) - inMv1(8,:) .* inMv2(15,:) + inMv1(11,:) .* inMv2(14,:) - inMv1(16,:) .* inMv2(12,:) + inMv1(18,:) .* inMv2(10,:) - inMv1(21,:) .* inMv2(9,:) + inMv1(27,:) .* inMv2(8,:) + inMv1(36,:) .* inMv2(6,:) - inMv1(38,:) .* inMv2(4,:) + inMv1(41,:) .* inMv2(3,:) - inMv1(47,:) .* inMv2(2,:) + inMv1(57,:) .* inMv2(1,:);
    outMv(247,:) = -inMv1(1,:) .* inMv2(23,:) + inMv1(2,:) .* inMv2(20,:) - inMv1(3,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(16,:) + inMv1(7,:) .* inMv2(15,:) - inMv1(10,:) .* inMv2(14,:) + inMv1(16,:) .* inMv2(11,:) - inMv1(17,:) .* inMv2(10,:) + inMv1(20,:) .* inMv2(9,:) - inMv1(26,:) .* inMv2(8,:) - inMv1(36,:) .* inMv2(5,:) + inMv1(37,:) .* inMv2(4,:) - inMv1(40,:) .* inMv2(3,:) + inMv1(46,:) .* inMv2(2,:) - inMv1(56,:) .* inMv2(1,:);
end
