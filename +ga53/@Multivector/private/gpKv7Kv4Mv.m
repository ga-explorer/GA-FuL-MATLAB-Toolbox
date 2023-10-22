
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv7Kv4Mv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (70,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(38,:) = inMv1(1,:) .* inMv2(35,:) + inMv1(2,:) .* inMv2(55,:) + inMv1(3,:) .* inMv2(65,:) + inMv1(4,:) .* inMv2(69,:) + inMv1(5,:) .* inMv2(70,:);
    outMv(39,:) = inMv1(1,:) .* inMv2(34,:) + inMv1(2,:) .* inMv2(54,:) + inMv1(3,:) .* inMv2(64,:) + inMv1(4,:) .* inMv2(68,:) + inMv1(6,:) .* inMv2(70,:);
    outMv(40,:) = -inMv1(1,:) .* inMv2(33,:) - inMv1(2,:) .* inMv2(53,:) - inMv1(3,:) .* inMv2(63,:) - inMv1(4,:) .* inMv2(67,:) + inMv1(7,:) .* inMv2(70,:);
    outMv(41,:) = inMv1(1,:) .* inMv2(32,:) + inMv1(2,:) .* inMv2(52,:) + inMv1(3,:) .* inMv2(62,:) + inMv1(4,:) .* inMv2(66,:) + inMv1(8,:) .* inMv2(70,:);
    outMv(42,:) = -inMv1(1,:) .* inMv2(31,:) - inMv1(2,:) .* inMv2(51,:) - inMv1(3,:) .* inMv2(61,:) + inMv1(5,:) .* inMv2(68,:) - inMv1(6,:) .* inMv2(69,:);
    outMv(43,:) = inMv1(1,:) .* inMv2(30,:) + inMv1(2,:) .* inMv2(50,:) + inMv1(3,:) .* inMv2(60,:) - inMv1(5,:) .* inMv2(67,:) - inMv1(7,:) .* inMv2(69,:);
    outMv(44,:) = -inMv1(1,:) .* inMv2(29,:) - inMv1(2,:) .* inMv2(49,:) - inMv1(3,:) .* inMv2(59,:) + inMv1(5,:) .* inMv2(66,:) - inMv1(8,:) .* inMv2(69,:);
    outMv(45,:) = inMv1(1,:) .* inMv2(28,:) + inMv1(2,:) .* inMv2(48,:) + inMv1(3,:) .* inMv2(58,:) - inMv1(6,:) .* inMv2(67,:) - inMv1(7,:) .* inMv2(68,:);
    outMv(46,:) = -inMv1(1,:) .* inMv2(27,:) - inMv1(2,:) .* inMv2(47,:) - inMv1(3,:) .* inMv2(57,:) + inMv1(6,:) .* inMv2(66,:) - inMv1(8,:) .* inMv2(68,:);
    outMv(47,:) = inMv1(1,:) .* inMv2(26,:) + inMv1(2,:) .* inMv2(46,:) + inMv1(3,:) .* inMv2(56,:) + inMv1(7,:) .* inMv2(66,:) + inMv1(8,:) .* inMv2(67,:);
    outMv(48,:) = inMv1(1,:) .* inMv2(25,:) + inMv1(2,:) .* inMv2(45,:) - inMv1(4,:) .* inMv2(61,:) - inMv1(5,:) .* inMv2(64,:) + inMv1(6,:) .* inMv2(65,:);
    outMv(49,:) = -inMv1(1,:) .* inMv2(24,:) - inMv1(2,:) .* inMv2(44,:) + inMv1(4,:) .* inMv2(60,:) + inMv1(5,:) .* inMv2(63,:) + inMv1(7,:) .* inMv2(65,:);
    outMv(50,:) = inMv1(1,:) .* inMv2(23,:) + inMv1(2,:) .* inMv2(43,:) - inMv1(4,:) .* inMv2(59,:) - inMv1(5,:) .* inMv2(62,:) + inMv1(8,:) .* inMv2(65,:);
    outMv(51,:) = -inMv1(1,:) .* inMv2(22,:) - inMv1(2,:) .* inMv2(42,:) + inMv1(4,:) .* inMv2(58,:) + inMv1(6,:) .* inMv2(63,:) + inMv1(7,:) .* inMv2(64,:);
    outMv(52,:) = inMv1(1,:) .* inMv2(21,:) + inMv1(2,:) .* inMv2(41,:) - inMv1(4,:) .* inMv2(57,:) - inMv1(6,:) .* inMv2(62,:) + inMv1(8,:) .* inMv2(64,:);
    outMv(53,:) = -inMv1(1,:) .* inMv2(20,:) - inMv1(2,:) .* inMv2(40,:) + inMv1(4,:) .* inMv2(56,:) - inMv1(7,:) .* inMv2(62,:) - inMv1(8,:) .* inMv2(63,:);
    outMv(54,:) = inMv1(1,:) .* inMv2(19,:) + inMv1(2,:) .* inMv2(39,:) + inMv1(5,:) .* inMv2(58,:) - inMv1(6,:) .* inMv2(60,:) - inMv1(7,:) .* inMv2(61,:);
    outMv(55,:) = -inMv1(1,:) .* inMv2(18,:) - inMv1(2,:) .* inMv2(38,:) - inMv1(5,:) .* inMv2(57,:) + inMv1(6,:) .* inMv2(59,:) - inMv1(8,:) .* inMv2(61,:);
    outMv(56,:) = inMv1(1,:) .* inMv2(17,:) + inMv1(2,:) .* inMv2(37,:) + inMv1(5,:) .* inMv2(56,:) + inMv1(7,:) .* inMv2(59,:) + inMv1(8,:) .* inMv2(60,:);
    outMv(57,:) = inMv1(1,:) .* inMv2(16,:) + inMv1(2,:) .* inMv2(36,:) + inMv1(6,:) .* inMv2(56,:) + inMv1(7,:) .* inMv2(57,:) + inMv1(8,:) .* inMv2(58,:);
    outMv(58,:) = -inMv1(1,:) .* inMv2(15,:) + inMv1(3,:) .* inMv2(45,:) + inMv1(4,:) .* inMv2(51,:) + inMv1(5,:) .* inMv2(54,:) - inMv1(6,:) .* inMv2(55,:);
    outMv(59,:) = inMv1(1,:) .* inMv2(14,:) - inMv1(3,:) .* inMv2(44,:) - inMv1(4,:) .* inMv2(50,:) - inMv1(5,:) .* inMv2(53,:) - inMv1(7,:) .* inMv2(55,:);
    outMv(60,:) = -inMv1(1,:) .* inMv2(13,:) + inMv1(3,:) .* inMv2(43,:) + inMv1(4,:) .* inMv2(49,:) + inMv1(5,:) .* inMv2(52,:) - inMv1(8,:) .* inMv2(55,:);
    outMv(61,:) = inMv1(1,:) .* inMv2(12,:) - inMv1(3,:) .* inMv2(42,:) - inMv1(4,:) .* inMv2(48,:) - inMv1(6,:) .* inMv2(53,:) - inMv1(7,:) .* inMv2(54,:);
    outMv(62,:) = -inMv1(1,:) .* inMv2(11,:) + inMv1(3,:) .* inMv2(41,:) + inMv1(4,:) .* inMv2(47,:) + inMv1(6,:) .* inMv2(52,:) - inMv1(8,:) .* inMv2(54,:);
    outMv(63,:) = inMv1(1,:) .* inMv2(10,:) - inMv1(3,:) .* inMv2(40,:) - inMv1(4,:) .* inMv2(46,:) + inMv1(7,:) .* inMv2(52,:) + inMv1(8,:) .* inMv2(53,:);
    outMv(64,:) = -inMv1(1,:) .* inMv2(9,:) + inMv1(3,:) .* inMv2(39,:) - inMv1(5,:) .* inMv2(48,:) + inMv1(6,:) .* inMv2(50,:) + inMv1(7,:) .* inMv2(51,:);
    outMv(65,:) = inMv1(1,:) .* inMv2(8,:) - inMv1(3,:) .* inMv2(38,:) + inMv1(5,:) .* inMv2(47,:) - inMv1(6,:) .* inMv2(49,:) + inMv1(8,:) .* inMv2(51,:);
    outMv(66,:) = -inMv1(1,:) .* inMv2(7,:) + inMv1(3,:) .* inMv2(37,:) - inMv1(5,:) .* inMv2(46,:) - inMv1(7,:) .* inMv2(49,:) - inMv1(8,:) .* inMv2(50,:);
    outMv(67,:) = -inMv1(1,:) .* inMv2(6,:) + inMv1(3,:) .* inMv2(36,:) - inMv1(6,:) .* inMv2(46,:) - inMv1(7,:) .* inMv2(47,:) - inMv1(8,:) .* inMv2(48,:);
    outMv(68,:) = inMv1(1,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(39,:) + inMv1(5,:) .* inMv2(42,:) - inMv1(6,:) .* inMv2(44,:) - inMv1(7,:) .* inMv2(45,:);
    outMv(69,:) = -inMv1(1,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(38,:) - inMv1(5,:) .* inMv2(41,:) + inMv1(6,:) .* inMv2(43,:) - inMv1(8,:) .* inMv2(45,:);
    outMv(70,:) = inMv1(1,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(37,:) + inMv1(5,:) .* inMv2(40,:) + inMv1(7,:) .* inMv2(43,:) + inMv1(8,:) .* inMv2(44,:);
    outMv(71,:) = inMv1(1,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(36,:) + inMv1(6,:) .* inMv2(40,:) + inMv1(7,:) .* inMv2(41,:) + inMv1(8,:) .* inMv2(42,:);
    outMv(72,:) = -inMv1(1,:) .* inMv2(1,:) + inMv1(5,:) .* inMv2(36,:) - inMv1(6,:) .* inMv2(37,:) - inMv1(7,:) .* inMv2(38,:) - inMv1(8,:) .* inMv2(39,:);
    outMv(73,:) = -inMv1(2,:) .* inMv2(15,:) - inMv1(3,:) .* inMv2(25,:) - inMv1(4,:) .* inMv2(31,:) - inMv1(5,:) .* inMv2(34,:) + inMv1(6,:) .* inMv2(35,:);
    outMv(74,:) = inMv1(2,:) .* inMv2(14,:) + inMv1(3,:) .* inMv2(24,:) + inMv1(4,:) .* inMv2(30,:) + inMv1(5,:) .* inMv2(33,:) + inMv1(7,:) .* inMv2(35,:);
    outMv(75,:) = -inMv1(2,:) .* inMv2(13,:) - inMv1(3,:) .* inMv2(23,:) - inMv1(4,:) .* inMv2(29,:) - inMv1(5,:) .* inMv2(32,:) + inMv1(8,:) .* inMv2(35,:);
    outMv(76,:) = inMv1(2,:) .* inMv2(12,:) + inMv1(3,:) .* inMv2(22,:) + inMv1(4,:) .* inMv2(28,:) + inMv1(6,:) .* inMv2(33,:) + inMv1(7,:) .* inMv2(34,:);
    outMv(77,:) = -inMv1(2,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(21,:) - inMv1(4,:) .* inMv2(27,:) - inMv1(6,:) .* inMv2(32,:) + inMv1(8,:) .* inMv2(34,:);
    outMv(78,:) = inMv1(2,:) .* inMv2(10,:) + inMv1(3,:) .* inMv2(20,:) + inMv1(4,:) .* inMv2(26,:) - inMv1(7,:) .* inMv2(32,:) - inMv1(8,:) .* inMv2(33,:);
    outMv(79,:) = -inMv1(2,:) .* inMv2(9,:) - inMv1(3,:) .* inMv2(19,:) + inMv1(5,:) .* inMv2(28,:) - inMv1(6,:) .* inMv2(30,:) - inMv1(7,:) .* inMv2(31,:);
    outMv(80,:) = inMv1(2,:) .* inMv2(8,:) + inMv1(3,:) .* inMv2(18,:) - inMv1(5,:) .* inMv2(27,:) + inMv1(6,:) .* inMv2(29,:) - inMv1(8,:) .* inMv2(31,:);
    outMv(81,:) = -inMv1(2,:) .* inMv2(7,:) - inMv1(3,:) .* inMv2(17,:) + inMv1(5,:) .* inMv2(26,:) + inMv1(7,:) .* inMv2(29,:) + inMv1(8,:) .* inMv2(30,:);
    outMv(82,:) = -inMv1(2,:) .* inMv2(6,:) - inMv1(3,:) .* inMv2(16,:) + inMv1(6,:) .* inMv2(26,:) + inMv1(7,:) .* inMv2(27,:) + inMv1(8,:) .* inMv2(28,:);
    outMv(83,:) = inMv1(2,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(19,:) - inMv1(5,:) .* inMv2(22,:) + inMv1(6,:) .* inMv2(24,:) + inMv1(7,:) .* inMv2(25,:);
    outMv(84,:) = -inMv1(2,:) .* inMv2(4,:) + inMv1(4,:) .* inMv2(18,:) + inMv1(5,:) .* inMv2(21,:) - inMv1(6,:) .* inMv2(23,:) + inMv1(8,:) .* inMv2(25,:);
    outMv(85,:) = inMv1(2,:) .* inMv2(3,:) - inMv1(4,:) .* inMv2(17,:) - inMv1(5,:) .* inMv2(20,:) - inMv1(7,:) .* inMv2(23,:) - inMv1(8,:) .* inMv2(24,:);
    outMv(86,:) = inMv1(2,:) .* inMv2(2,:) - inMv1(4,:) .* inMv2(16,:) - inMv1(6,:) .* inMv2(20,:) - inMv1(7,:) .* inMv2(21,:) - inMv1(8,:) .* inMv2(22,:);
    outMv(87,:) = -inMv1(2,:) .* inMv2(1,:) - inMv1(5,:) .* inMv2(16,:) + inMv1(6,:) .* inMv2(17,:) + inMv1(7,:) .* inMv2(18,:) + inMv1(8,:) .* inMv2(19,:);
    outMv(88,:) = inMv1(3,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(9,:) + inMv1(5,:) .* inMv2(12,:) - inMv1(6,:) .* inMv2(14,:) - inMv1(7,:) .* inMv2(15,:);
    outMv(89,:) = -inMv1(3,:) .* inMv2(4,:) - inMv1(4,:) .* inMv2(8,:) - inMv1(5,:) .* inMv2(11,:) + inMv1(6,:) .* inMv2(13,:) - inMv1(8,:) .* inMv2(15,:);
    outMv(90,:) = inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(7,:) + inMv1(5,:) .* inMv2(10,:) + inMv1(7,:) .* inMv2(13,:) + inMv1(8,:) .* inMv2(14,:);
    outMv(91,:) = inMv1(3,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(6,:) + inMv1(6,:) .* inMv2(10,:) + inMv1(7,:) .* inMv2(11,:) + inMv1(8,:) .* inMv2(12,:);
    outMv(92,:) = -inMv1(3,:) .* inMv2(1,:) + inMv1(5,:) .* inMv2(6,:) - inMv1(6,:) .* inMv2(7,:) - inMv1(7,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(9,:);
    outMv(93,:) = -inMv1(4,:) .* inMv2(1,:) - inMv1(5,:) .* inMv2(2,:) + inMv1(6,:) .* inMv2(3,:) + inMv1(7,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(5,:);
    outMv(164,:) = inMv1(4,:) .* inMv2(70,:) - inMv1(5,:) .* inMv2(69,:) + inMv1(6,:) .* inMv2(68,:) - inMv1(7,:) .* inMv2(67,:) + inMv1(8,:) .* inMv2(66,:);
    outMv(165,:) = -inMv1(3,:) .* inMv2(70,:) + inMv1(5,:) .* inMv2(65,:) - inMv1(6,:) .* inMv2(64,:) + inMv1(7,:) .* inMv2(63,:) - inMv1(8,:) .* inMv2(62,:);
    outMv(166,:) = inMv1(3,:) .* inMv2(69,:) - inMv1(4,:) .* inMv2(65,:) + inMv1(6,:) .* inMv2(61,:) - inMv1(7,:) .* inMv2(60,:) + inMv1(8,:) .* inMv2(59,:);
    outMv(167,:) = inMv1(3,:) .* inMv2(68,:) - inMv1(4,:) .* inMv2(64,:) + inMv1(5,:) .* inMv2(61,:) - inMv1(7,:) .* inMv2(58,:) + inMv1(8,:) .* inMv2(57,:);
    outMv(168,:) = -inMv1(3,:) .* inMv2(67,:) + inMv1(4,:) .* inMv2(63,:) - inMv1(5,:) .* inMv2(60,:) + inMv1(6,:) .* inMv2(58,:) - inMv1(8,:) .* inMv2(56,:);
    outMv(169,:) = inMv1(3,:) .* inMv2(66,:) - inMv1(4,:) .* inMv2(62,:) + inMv1(5,:) .* inMv2(59,:) - inMv1(6,:) .* inMv2(57,:) + inMv1(7,:) .* inMv2(56,:);
    outMv(170,:) = inMv1(2,:) .* inMv2(70,:) - inMv1(5,:) .* inMv2(55,:) + inMv1(6,:) .* inMv2(54,:) - inMv1(7,:) .* inMv2(53,:) + inMv1(8,:) .* inMv2(52,:);
    outMv(171,:) = -inMv1(2,:) .* inMv2(69,:) + inMv1(4,:) .* inMv2(55,:) - inMv1(6,:) .* inMv2(51,:) + inMv1(7,:) .* inMv2(50,:) - inMv1(8,:) .* inMv2(49,:);
    outMv(172,:) = -inMv1(2,:) .* inMv2(68,:) + inMv1(4,:) .* inMv2(54,:) - inMv1(5,:) .* inMv2(51,:) + inMv1(7,:) .* inMv2(48,:) - inMv1(8,:) .* inMv2(47,:);
    outMv(173,:) = inMv1(2,:) .* inMv2(67,:) - inMv1(4,:) .* inMv2(53,:) + inMv1(5,:) .* inMv2(50,:) - inMv1(6,:) .* inMv2(48,:) + inMv1(8,:) .* inMv2(46,:);
    outMv(174,:) = -inMv1(2,:) .* inMv2(66,:) + inMv1(4,:) .* inMv2(52,:) - inMv1(5,:) .* inMv2(49,:) + inMv1(6,:) .* inMv2(47,:) - inMv1(7,:) .* inMv2(46,:);
    outMv(175,:) = inMv1(2,:) .* inMv2(65,:) - inMv1(3,:) .* inMv2(55,:) + inMv1(6,:) .* inMv2(45,:) - inMv1(7,:) .* inMv2(44,:) + inMv1(8,:) .* inMv2(43,:);
    outMv(176,:) = inMv1(2,:) .* inMv2(64,:) - inMv1(3,:) .* inMv2(54,:) + inMv1(5,:) .* inMv2(45,:) - inMv1(7,:) .* inMv2(42,:) + inMv1(8,:) .* inMv2(41,:);
    outMv(177,:) = -inMv1(2,:) .* inMv2(63,:) + inMv1(3,:) .* inMv2(53,:) - inMv1(5,:) .* inMv2(44,:) + inMv1(6,:) .* inMv2(42,:) - inMv1(8,:) .* inMv2(40,:);
    outMv(178,:) = inMv1(2,:) .* inMv2(62,:) - inMv1(3,:) .* inMv2(52,:) + inMv1(5,:) .* inMv2(43,:) - inMv1(6,:) .* inMv2(41,:) + inMv1(7,:) .* inMv2(40,:);
    outMv(179,:) = -inMv1(2,:) .* inMv2(61,:) + inMv1(3,:) .* inMv2(51,:) - inMv1(4,:) .* inMv2(45,:) + inMv1(7,:) .* inMv2(39,:) - inMv1(8,:) .* inMv2(38,:);
    outMv(180,:) = inMv1(2,:) .* inMv2(60,:) - inMv1(3,:) .* inMv2(50,:) + inMv1(4,:) .* inMv2(44,:) - inMv1(6,:) .* inMv2(39,:) + inMv1(8,:) .* inMv2(37,:);
    outMv(181,:) = -inMv1(2,:) .* inMv2(59,:) + inMv1(3,:) .* inMv2(49,:) - inMv1(4,:) .* inMv2(43,:) + inMv1(6,:) .* inMv2(38,:) - inMv1(7,:) .* inMv2(37,:);
    outMv(182,:) = inMv1(2,:) .* inMv2(58,:) - inMv1(3,:) .* inMv2(48,:) + inMv1(4,:) .* inMv2(42,:) - inMv1(5,:) .* inMv2(39,:) + inMv1(8,:) .* inMv2(36,:);
    outMv(183,:) = -inMv1(2,:) .* inMv2(57,:) + inMv1(3,:) .* inMv2(47,:) - inMv1(4,:) .* inMv2(41,:) + inMv1(5,:) .* inMv2(38,:) - inMv1(7,:) .* inMv2(36,:);
    outMv(184,:) = inMv1(2,:) .* inMv2(56,:) - inMv1(3,:) .* inMv2(46,:) + inMv1(4,:) .* inMv2(40,:) - inMv1(5,:) .* inMv2(37,:) + inMv1(6,:) .* inMv2(36,:);
    outMv(185,:) = -inMv1(1,:) .* inMv2(70,:) + inMv1(5,:) .* inMv2(35,:) - inMv1(6,:) .* inMv2(34,:) + inMv1(7,:) .* inMv2(33,:) - inMv1(8,:) .* inMv2(32,:);
    outMv(186,:) = inMv1(1,:) .* inMv2(69,:) - inMv1(4,:) .* inMv2(35,:) + inMv1(6,:) .* inMv2(31,:) - inMv1(7,:) .* inMv2(30,:) + inMv1(8,:) .* inMv2(29,:);
    outMv(187,:) = inMv1(1,:) .* inMv2(68,:) - inMv1(4,:) .* inMv2(34,:) + inMv1(5,:) .* inMv2(31,:) - inMv1(7,:) .* inMv2(28,:) + inMv1(8,:) .* inMv2(27,:);
    outMv(188,:) = -inMv1(1,:) .* inMv2(67,:) + inMv1(4,:) .* inMv2(33,:) - inMv1(5,:) .* inMv2(30,:) + inMv1(6,:) .* inMv2(28,:) - inMv1(8,:) .* inMv2(26,:);
    outMv(189,:) = inMv1(1,:) .* inMv2(66,:) - inMv1(4,:) .* inMv2(32,:) + inMv1(5,:) .* inMv2(29,:) - inMv1(6,:) .* inMv2(27,:) + inMv1(7,:) .* inMv2(26,:);
    outMv(190,:) = -inMv1(1,:) .* inMv2(65,:) + inMv1(3,:) .* inMv2(35,:) - inMv1(6,:) .* inMv2(25,:) + inMv1(7,:) .* inMv2(24,:) - inMv1(8,:) .* inMv2(23,:);
    outMv(191,:) = -inMv1(1,:) .* inMv2(64,:) + inMv1(3,:) .* inMv2(34,:) - inMv1(5,:) .* inMv2(25,:) + inMv1(7,:) .* inMv2(22,:) - inMv1(8,:) .* inMv2(21,:);
    outMv(192,:) = inMv1(1,:) .* inMv2(63,:) - inMv1(3,:) .* inMv2(33,:) + inMv1(5,:) .* inMv2(24,:) - inMv1(6,:) .* inMv2(22,:) + inMv1(8,:) .* inMv2(20,:);
    outMv(193,:) = -inMv1(1,:) .* inMv2(62,:) + inMv1(3,:) .* inMv2(32,:) - inMv1(5,:) .* inMv2(23,:) + inMv1(6,:) .* inMv2(21,:) - inMv1(7,:) .* inMv2(20,:);
    outMv(194,:) = inMv1(1,:) .* inMv2(61,:) - inMv1(3,:) .* inMv2(31,:) + inMv1(4,:) .* inMv2(25,:) - inMv1(7,:) .* inMv2(19,:) + inMv1(8,:) .* inMv2(18,:);
    outMv(195,:) = -inMv1(1,:) .* inMv2(60,:) + inMv1(3,:) .* inMv2(30,:) - inMv1(4,:) .* inMv2(24,:) + inMv1(6,:) .* inMv2(19,:) - inMv1(8,:) .* inMv2(17,:);
    outMv(196,:) = inMv1(1,:) .* inMv2(59,:) - inMv1(3,:) .* inMv2(29,:) + inMv1(4,:) .* inMv2(23,:) - inMv1(6,:) .* inMv2(18,:) + inMv1(7,:) .* inMv2(17,:);
    outMv(197,:) = -inMv1(1,:) .* inMv2(58,:) + inMv1(3,:) .* inMv2(28,:) - inMv1(4,:) .* inMv2(22,:) + inMv1(5,:) .* inMv2(19,:) - inMv1(8,:) .* inMv2(16,:);
    outMv(198,:) = inMv1(1,:) .* inMv2(57,:) - inMv1(3,:) .* inMv2(27,:) + inMv1(4,:) .* inMv2(21,:) - inMv1(5,:) .* inMv2(18,:) + inMv1(7,:) .* inMv2(16,:);
    outMv(199,:) = -inMv1(1,:) .* inMv2(56,:) + inMv1(3,:) .* inMv2(26,:) - inMv1(4,:) .* inMv2(20,:) + inMv1(5,:) .* inMv2(17,:) - inMv1(6,:) .* inMv2(16,:);
    outMv(200,:) = inMv1(1,:) .* inMv2(55,:) - inMv1(2,:) .* inMv2(35,:) + inMv1(6,:) .* inMv2(15,:) - inMv1(7,:) .* inMv2(14,:) + inMv1(8,:) .* inMv2(13,:);
    outMv(201,:) = inMv1(1,:) .* inMv2(54,:) - inMv1(2,:) .* inMv2(34,:) + inMv1(5,:) .* inMv2(15,:) - inMv1(7,:) .* inMv2(12,:) + inMv1(8,:) .* inMv2(11,:);
    outMv(202,:) = -inMv1(1,:) .* inMv2(53,:) + inMv1(2,:) .* inMv2(33,:) - inMv1(5,:) .* inMv2(14,:) + inMv1(6,:) .* inMv2(12,:) - inMv1(8,:) .* inMv2(10,:);
    outMv(203,:) = inMv1(1,:) .* inMv2(52,:) - inMv1(2,:) .* inMv2(32,:) + inMv1(5,:) .* inMv2(13,:) - inMv1(6,:) .* inMv2(11,:) + inMv1(7,:) .* inMv2(10,:);
    outMv(204,:) = -inMv1(1,:) .* inMv2(51,:) + inMv1(2,:) .* inMv2(31,:) - inMv1(4,:) .* inMv2(15,:) + inMv1(7,:) .* inMv2(9,:) - inMv1(8,:) .* inMv2(8,:);
    outMv(205,:) = inMv1(1,:) .* inMv2(50,:) - inMv1(2,:) .* inMv2(30,:) + inMv1(4,:) .* inMv2(14,:) - inMv1(6,:) .* inMv2(9,:) + inMv1(8,:) .* inMv2(7,:);
    outMv(206,:) = -inMv1(1,:) .* inMv2(49,:) + inMv1(2,:) .* inMv2(29,:) - inMv1(4,:) .* inMv2(13,:) + inMv1(6,:) .* inMv2(8,:) - inMv1(7,:) .* inMv2(7,:);
    outMv(207,:) = inMv1(1,:) .* inMv2(48,:) - inMv1(2,:) .* inMv2(28,:) + inMv1(4,:) .* inMv2(12,:) - inMv1(5,:) .* inMv2(9,:) + inMv1(8,:) .* inMv2(6,:);
    outMv(208,:) = -inMv1(1,:) .* inMv2(47,:) + inMv1(2,:) .* inMv2(27,:) - inMv1(4,:) .* inMv2(11,:) + inMv1(5,:) .* inMv2(8,:) - inMv1(7,:) .* inMv2(6,:);
    outMv(209,:) = inMv1(1,:) .* inMv2(46,:) - inMv1(2,:) .* inMv2(26,:) + inMv1(4,:) .* inMv2(10,:) - inMv1(5,:) .* inMv2(7,:) + inMv1(6,:) .* inMv2(6,:);
    outMv(210,:) = inMv1(1,:) .* inMv2(45,:) - inMv1(2,:) .* inMv2(25,:) + inMv1(3,:) .* inMv2(15,:) - inMv1(7,:) .* inMv2(5,:) + inMv1(8,:) .* inMv2(4,:);
    outMv(211,:) = -inMv1(1,:) .* inMv2(44,:) + inMv1(2,:) .* inMv2(24,:) - inMv1(3,:) .* inMv2(14,:) + inMv1(6,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(3,:);
    outMv(212,:) = inMv1(1,:) .* inMv2(43,:) - inMv1(2,:) .* inMv2(23,:) + inMv1(3,:) .* inMv2(13,:) - inMv1(6,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(3,:);
    outMv(213,:) = -inMv1(1,:) .* inMv2(42,:) + inMv1(2,:) .* inMv2(22,:) - inMv1(3,:) .* inMv2(12,:) + inMv1(5,:) .* inMv2(5,:) - inMv1(8,:) .* inMv2(2,:);
    outMv(214,:) = inMv1(1,:) .* inMv2(41,:) - inMv1(2,:) .* inMv2(21,:) + inMv1(3,:) .* inMv2(11,:) - inMv1(5,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(2,:);
    outMv(215,:) = -inMv1(1,:) .* inMv2(40,:) + inMv1(2,:) .* inMv2(20,:) - inMv1(3,:) .* inMv2(10,:) + inMv1(5,:) .* inMv2(3,:) - inMv1(6,:) .* inMv2(2,:);
    outMv(216,:) = inMv1(1,:) .* inMv2(39,:) - inMv1(2,:) .* inMv2(19,:) + inMv1(3,:) .* inMv2(9,:) - inMv1(4,:) .* inMv2(5,:) + inMv1(8,:) .* inMv2(1,:);
    outMv(217,:) = -inMv1(1,:) .* inMv2(38,:) + inMv1(2,:) .* inMv2(18,:) - inMv1(3,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(4,:) - inMv1(7,:) .* inMv2(1,:);
    outMv(218,:) = inMv1(1,:) .* inMv2(37,:) - inMv1(2,:) .* inMv2(17,:) + inMv1(3,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(1,:);
    outMv(219,:) = inMv1(1,:) .* inMv2(36,:) - inMv1(2,:) .* inMv2(16,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(2,:) + inMv1(5,:) .* inMv2(1,:);
end
