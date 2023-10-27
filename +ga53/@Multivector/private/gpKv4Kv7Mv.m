% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv4Kv7Mv(inMv1, inMv2)
    arguments
        inMv1 (70,:) double
        inMv2 (8,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(38,:) = inMv1(35,:) .* inMv2(1,:) + inMv1(55,:) .* inMv2(2,:) + inMv1(65,:) .* inMv2(3,:) + inMv1(69,:) .* inMv2(4,:) + inMv1(70,:) .* inMv2(5,:);
    outMv(39,:) = inMv1(34,:) .* inMv2(1,:) + inMv1(54,:) .* inMv2(2,:) + inMv1(64,:) .* inMv2(3,:) + inMv1(68,:) .* inMv2(4,:) + inMv1(70,:) .* inMv2(6,:);
    outMv(40,:) = -inMv1(33,:) .* inMv2(1,:) - inMv1(53,:) .* inMv2(2,:) - inMv1(63,:) .* inMv2(3,:) - inMv1(67,:) .* inMv2(4,:) + inMv1(70,:) .* inMv2(7,:);
    outMv(41,:) = inMv1(32,:) .* inMv2(1,:) + inMv1(52,:) .* inMv2(2,:) + inMv1(62,:) .* inMv2(3,:) + inMv1(66,:) .* inMv2(4,:) + inMv1(70,:) .* inMv2(8,:);
    outMv(42,:) = -inMv1(31,:) .* inMv2(1,:) - inMv1(51,:) .* inMv2(2,:) - inMv1(61,:) .* inMv2(3,:) + inMv1(68,:) .* inMv2(5,:) - inMv1(69,:) .* inMv2(6,:);
    outMv(43,:) = inMv1(30,:) .* inMv2(1,:) + inMv1(50,:) .* inMv2(2,:) + inMv1(60,:) .* inMv2(3,:) - inMv1(67,:) .* inMv2(5,:) - inMv1(69,:) .* inMv2(7,:);
    outMv(44,:) = -inMv1(29,:) .* inMv2(1,:) - inMv1(49,:) .* inMv2(2,:) - inMv1(59,:) .* inMv2(3,:) + inMv1(66,:) .* inMv2(5,:) - inMv1(69,:) .* inMv2(8,:);
    outMv(45,:) = inMv1(28,:) .* inMv2(1,:) + inMv1(48,:) .* inMv2(2,:) + inMv1(58,:) .* inMv2(3,:) - inMv1(67,:) .* inMv2(6,:) - inMv1(68,:) .* inMv2(7,:);
    outMv(46,:) = -inMv1(27,:) .* inMv2(1,:) - inMv1(47,:) .* inMv2(2,:) - inMv1(57,:) .* inMv2(3,:) + inMv1(66,:) .* inMv2(6,:) - inMv1(68,:) .* inMv2(8,:);
    outMv(47,:) = inMv1(26,:) .* inMv2(1,:) + inMv1(46,:) .* inMv2(2,:) + inMv1(56,:) .* inMv2(3,:) + inMv1(66,:) .* inMv2(7,:) + inMv1(67,:) .* inMv2(8,:);
    outMv(48,:) = inMv1(25,:) .* inMv2(1,:) + inMv1(45,:) .* inMv2(2,:) - inMv1(61,:) .* inMv2(4,:) - inMv1(64,:) .* inMv2(5,:) + inMv1(65,:) .* inMv2(6,:);
    outMv(49,:) = -inMv1(24,:) .* inMv2(1,:) - inMv1(44,:) .* inMv2(2,:) + inMv1(60,:) .* inMv2(4,:) + inMv1(63,:) .* inMv2(5,:) + inMv1(65,:) .* inMv2(7,:);
    outMv(50,:) = inMv1(23,:) .* inMv2(1,:) + inMv1(43,:) .* inMv2(2,:) - inMv1(59,:) .* inMv2(4,:) - inMv1(62,:) .* inMv2(5,:) + inMv1(65,:) .* inMv2(8,:);
    outMv(51,:) = -inMv1(22,:) .* inMv2(1,:) - inMv1(42,:) .* inMv2(2,:) + inMv1(58,:) .* inMv2(4,:) + inMv1(63,:) .* inMv2(6,:) + inMv1(64,:) .* inMv2(7,:);
    outMv(52,:) = inMv1(21,:) .* inMv2(1,:) + inMv1(41,:) .* inMv2(2,:) - inMv1(57,:) .* inMv2(4,:) - inMv1(62,:) .* inMv2(6,:) + inMv1(64,:) .* inMv2(8,:);
    outMv(53,:) = -inMv1(20,:) .* inMv2(1,:) - inMv1(40,:) .* inMv2(2,:) + inMv1(56,:) .* inMv2(4,:) - inMv1(62,:) .* inMv2(7,:) - inMv1(63,:) .* inMv2(8,:);
    outMv(54,:) = inMv1(19,:) .* inMv2(1,:) + inMv1(39,:) .* inMv2(2,:) + inMv1(58,:) .* inMv2(5,:) - inMv1(60,:) .* inMv2(6,:) - inMv1(61,:) .* inMv2(7,:);
    outMv(55,:) = -inMv1(18,:) .* inMv2(1,:) - inMv1(38,:) .* inMv2(2,:) - inMv1(57,:) .* inMv2(5,:) + inMv1(59,:) .* inMv2(6,:) - inMv1(61,:) .* inMv2(8,:);
    outMv(56,:) = inMv1(17,:) .* inMv2(1,:) + inMv1(37,:) .* inMv2(2,:) + inMv1(56,:) .* inMv2(5,:) + inMv1(59,:) .* inMv2(7,:) + inMv1(60,:) .* inMv2(8,:);
    outMv(57,:) = inMv1(16,:) .* inMv2(1,:) + inMv1(36,:) .* inMv2(2,:) + inMv1(56,:) .* inMv2(6,:) + inMv1(57,:) .* inMv2(7,:) + inMv1(58,:) .* inMv2(8,:);
    outMv(58,:) = -inMv1(15,:) .* inMv2(1,:) + inMv1(45,:) .* inMv2(3,:) + inMv1(51,:) .* inMv2(4,:) + inMv1(54,:) .* inMv2(5,:) - inMv1(55,:) .* inMv2(6,:);
    outMv(59,:) = inMv1(14,:) .* inMv2(1,:) - inMv1(44,:) .* inMv2(3,:) - inMv1(50,:) .* inMv2(4,:) - inMv1(53,:) .* inMv2(5,:) - inMv1(55,:) .* inMv2(7,:);
    outMv(60,:) = -inMv1(13,:) .* inMv2(1,:) + inMv1(43,:) .* inMv2(3,:) + inMv1(49,:) .* inMv2(4,:) + inMv1(52,:) .* inMv2(5,:) - inMv1(55,:) .* inMv2(8,:);
    outMv(61,:) = inMv1(12,:) .* inMv2(1,:) - inMv1(42,:) .* inMv2(3,:) - inMv1(48,:) .* inMv2(4,:) - inMv1(53,:) .* inMv2(6,:) - inMv1(54,:) .* inMv2(7,:);
    outMv(62,:) = -inMv1(11,:) .* inMv2(1,:) + inMv1(41,:) .* inMv2(3,:) + inMv1(47,:) .* inMv2(4,:) + inMv1(52,:) .* inMv2(6,:) - inMv1(54,:) .* inMv2(8,:);
    outMv(63,:) = inMv1(10,:) .* inMv2(1,:) - inMv1(40,:) .* inMv2(3,:) - inMv1(46,:) .* inMv2(4,:) + inMv1(52,:) .* inMv2(7,:) + inMv1(53,:) .* inMv2(8,:);
    outMv(64,:) = -inMv1(9,:) .* inMv2(1,:) + inMv1(39,:) .* inMv2(3,:) - inMv1(48,:) .* inMv2(5,:) + inMv1(50,:) .* inMv2(6,:) + inMv1(51,:) .* inMv2(7,:);
    outMv(65,:) = inMv1(8,:) .* inMv2(1,:) - inMv1(38,:) .* inMv2(3,:) + inMv1(47,:) .* inMv2(5,:) - inMv1(49,:) .* inMv2(6,:) + inMv1(51,:) .* inMv2(8,:);
    outMv(66,:) = -inMv1(7,:) .* inMv2(1,:) + inMv1(37,:) .* inMv2(3,:) - inMv1(46,:) .* inMv2(5,:) - inMv1(49,:) .* inMv2(7,:) - inMv1(50,:) .* inMv2(8,:);
    outMv(67,:) = -inMv1(6,:) .* inMv2(1,:) + inMv1(36,:) .* inMv2(3,:) - inMv1(46,:) .* inMv2(6,:) - inMv1(47,:) .* inMv2(7,:) - inMv1(48,:) .* inMv2(8,:);
    outMv(68,:) = inMv1(5,:) .* inMv2(1,:) + inMv1(39,:) .* inMv2(4,:) + inMv1(42,:) .* inMv2(5,:) - inMv1(44,:) .* inMv2(6,:) - inMv1(45,:) .* inMv2(7,:);
    outMv(69,:) = -inMv1(4,:) .* inMv2(1,:) - inMv1(38,:) .* inMv2(4,:) - inMv1(41,:) .* inMv2(5,:) + inMv1(43,:) .* inMv2(6,:) - inMv1(45,:) .* inMv2(8,:);
    outMv(70,:) = inMv1(3,:) .* inMv2(1,:) + inMv1(37,:) .* inMv2(4,:) + inMv1(40,:) .* inMv2(5,:) + inMv1(43,:) .* inMv2(7,:) + inMv1(44,:) .* inMv2(8,:);
    outMv(71,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(36,:) .* inMv2(4,:) + inMv1(40,:) .* inMv2(6,:) + inMv1(41,:) .* inMv2(7,:) + inMv1(42,:) .* inMv2(8,:);
    outMv(72,:) = -inMv1(1,:) .* inMv2(1,:) + inMv1(36,:) .* inMv2(5,:) - inMv1(37,:) .* inMv2(6,:) - inMv1(38,:) .* inMv2(7,:) - inMv1(39,:) .* inMv2(8,:);
    outMv(73,:) = -inMv1(15,:) .* inMv2(2,:) - inMv1(25,:) .* inMv2(3,:) - inMv1(31,:) .* inMv2(4,:) - inMv1(34,:) .* inMv2(5,:) + inMv1(35,:) .* inMv2(6,:);
    outMv(74,:) = inMv1(14,:) .* inMv2(2,:) + inMv1(24,:) .* inMv2(3,:) + inMv1(30,:) .* inMv2(4,:) + inMv1(33,:) .* inMv2(5,:) + inMv1(35,:) .* inMv2(7,:);
    outMv(75,:) = -inMv1(13,:) .* inMv2(2,:) - inMv1(23,:) .* inMv2(3,:) - inMv1(29,:) .* inMv2(4,:) - inMv1(32,:) .* inMv2(5,:) + inMv1(35,:) .* inMv2(8,:);
    outMv(76,:) = inMv1(12,:) .* inMv2(2,:) + inMv1(22,:) .* inMv2(3,:) + inMv1(28,:) .* inMv2(4,:) + inMv1(33,:) .* inMv2(6,:) + inMv1(34,:) .* inMv2(7,:);
    outMv(77,:) = -inMv1(11,:) .* inMv2(2,:) - inMv1(21,:) .* inMv2(3,:) - inMv1(27,:) .* inMv2(4,:) - inMv1(32,:) .* inMv2(6,:) + inMv1(34,:) .* inMv2(8,:);
    outMv(78,:) = inMv1(10,:) .* inMv2(2,:) + inMv1(20,:) .* inMv2(3,:) + inMv1(26,:) .* inMv2(4,:) - inMv1(32,:) .* inMv2(7,:) - inMv1(33,:) .* inMv2(8,:);
    outMv(79,:) = -inMv1(9,:) .* inMv2(2,:) - inMv1(19,:) .* inMv2(3,:) + inMv1(28,:) .* inMv2(5,:) - inMv1(30,:) .* inMv2(6,:) - inMv1(31,:) .* inMv2(7,:);
    outMv(80,:) = inMv1(8,:) .* inMv2(2,:) + inMv1(18,:) .* inMv2(3,:) - inMv1(27,:) .* inMv2(5,:) + inMv1(29,:) .* inMv2(6,:) - inMv1(31,:) .* inMv2(8,:);
    outMv(81,:) = -inMv1(7,:) .* inMv2(2,:) - inMv1(17,:) .* inMv2(3,:) + inMv1(26,:) .* inMv2(5,:) + inMv1(29,:) .* inMv2(7,:) + inMv1(30,:) .* inMv2(8,:);
    outMv(82,:) = -inMv1(6,:) .* inMv2(2,:) - inMv1(16,:) .* inMv2(3,:) + inMv1(26,:) .* inMv2(6,:) + inMv1(27,:) .* inMv2(7,:) + inMv1(28,:) .* inMv2(8,:);
    outMv(83,:) = inMv1(5,:) .* inMv2(2,:) - inMv1(19,:) .* inMv2(4,:) - inMv1(22,:) .* inMv2(5,:) + inMv1(24,:) .* inMv2(6,:) + inMv1(25,:) .* inMv2(7,:);
    outMv(84,:) = -inMv1(4,:) .* inMv2(2,:) + inMv1(18,:) .* inMv2(4,:) + inMv1(21,:) .* inMv2(5,:) - inMv1(23,:) .* inMv2(6,:) + inMv1(25,:) .* inMv2(8,:);
    outMv(85,:) = inMv1(3,:) .* inMv2(2,:) - inMv1(17,:) .* inMv2(4,:) - inMv1(20,:) .* inMv2(5,:) - inMv1(23,:) .* inMv2(7,:) - inMv1(24,:) .* inMv2(8,:);
    outMv(86,:) = inMv1(2,:) .* inMv2(2,:) - inMv1(16,:) .* inMv2(4,:) - inMv1(20,:) .* inMv2(6,:) - inMv1(21,:) .* inMv2(7,:) - inMv1(22,:) .* inMv2(8,:);
    outMv(87,:) = -inMv1(1,:) .* inMv2(2,:) - inMv1(16,:) .* inMv2(5,:) + inMv1(17,:) .* inMv2(6,:) + inMv1(18,:) .* inMv2(7,:) + inMv1(19,:) .* inMv2(8,:);
    outMv(88,:) = inMv1(5,:) .* inMv2(3,:) + inMv1(9,:) .* inMv2(4,:) + inMv1(12,:) .* inMv2(5,:) - inMv1(14,:) .* inMv2(6,:) - inMv1(15,:) .* inMv2(7,:);
    outMv(89,:) = -inMv1(4,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(4,:) - inMv1(11,:) .* inMv2(5,:) + inMv1(13,:) .* inMv2(6,:) - inMv1(15,:) .* inMv2(8,:);
    outMv(90,:) = inMv1(3,:) .* inMv2(3,:) + inMv1(7,:) .* inMv2(4,:) + inMv1(10,:) .* inMv2(5,:) + inMv1(13,:) .* inMv2(7,:) + inMv1(14,:) .* inMv2(8,:);
    outMv(91,:) = inMv1(2,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(4,:) + inMv1(10,:) .* inMv2(6,:) + inMv1(11,:) .* inMv2(7,:) + inMv1(12,:) .* inMv2(8,:);
    outMv(92,:) = -inMv1(1,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(7,:) - inMv1(9,:) .* inMv2(8,:);
    outMv(93,:) = -inMv1(1,:) .* inMv2(4,:) - inMv1(2,:) .* inMv2(5,:) + inMv1(3,:) .* inMv2(6,:) + inMv1(4,:) .* inMv2(7,:) + inMv1(5,:) .* inMv2(8,:);
    outMv(164,:) = -inMv1(66,:) .* inMv2(8,:) + inMv1(67,:) .* inMv2(7,:) - inMv1(68,:) .* inMv2(6,:) + inMv1(69,:) .* inMv2(5,:) - inMv1(70,:) .* inMv2(4,:);
    outMv(165,:) = inMv1(62,:) .* inMv2(8,:) - inMv1(63,:) .* inMv2(7,:) + inMv1(64,:) .* inMv2(6,:) - inMv1(65,:) .* inMv2(5,:) + inMv1(70,:) .* inMv2(3,:);
    outMv(166,:) = -inMv1(59,:) .* inMv2(8,:) + inMv1(60,:) .* inMv2(7,:) - inMv1(61,:) .* inMv2(6,:) + inMv1(65,:) .* inMv2(4,:) - inMv1(69,:) .* inMv2(3,:);
    outMv(167,:) = -inMv1(57,:) .* inMv2(8,:) + inMv1(58,:) .* inMv2(7,:) - inMv1(61,:) .* inMv2(5,:) + inMv1(64,:) .* inMv2(4,:) - inMv1(68,:) .* inMv2(3,:);
    outMv(168,:) = inMv1(56,:) .* inMv2(8,:) - inMv1(58,:) .* inMv2(6,:) + inMv1(60,:) .* inMv2(5,:) - inMv1(63,:) .* inMv2(4,:) + inMv1(67,:) .* inMv2(3,:);
    outMv(169,:) = -inMv1(56,:) .* inMv2(7,:) + inMv1(57,:) .* inMv2(6,:) - inMv1(59,:) .* inMv2(5,:) + inMv1(62,:) .* inMv2(4,:) - inMv1(66,:) .* inMv2(3,:);
    outMv(170,:) = -inMv1(52,:) .* inMv2(8,:) + inMv1(53,:) .* inMv2(7,:) - inMv1(54,:) .* inMv2(6,:) + inMv1(55,:) .* inMv2(5,:) - inMv1(70,:) .* inMv2(2,:);
    outMv(171,:) = inMv1(49,:) .* inMv2(8,:) - inMv1(50,:) .* inMv2(7,:) + inMv1(51,:) .* inMv2(6,:) - inMv1(55,:) .* inMv2(4,:) + inMv1(69,:) .* inMv2(2,:);
    outMv(172,:) = inMv1(47,:) .* inMv2(8,:) - inMv1(48,:) .* inMv2(7,:) + inMv1(51,:) .* inMv2(5,:) - inMv1(54,:) .* inMv2(4,:) + inMv1(68,:) .* inMv2(2,:);
    outMv(173,:) = -inMv1(46,:) .* inMv2(8,:) + inMv1(48,:) .* inMv2(6,:) - inMv1(50,:) .* inMv2(5,:) + inMv1(53,:) .* inMv2(4,:) - inMv1(67,:) .* inMv2(2,:);
    outMv(174,:) = inMv1(46,:) .* inMv2(7,:) - inMv1(47,:) .* inMv2(6,:) + inMv1(49,:) .* inMv2(5,:) - inMv1(52,:) .* inMv2(4,:) + inMv1(66,:) .* inMv2(2,:);
    outMv(175,:) = -inMv1(43,:) .* inMv2(8,:) + inMv1(44,:) .* inMv2(7,:) - inMv1(45,:) .* inMv2(6,:) + inMv1(55,:) .* inMv2(3,:) - inMv1(65,:) .* inMv2(2,:);
    outMv(176,:) = -inMv1(41,:) .* inMv2(8,:) + inMv1(42,:) .* inMv2(7,:) - inMv1(45,:) .* inMv2(5,:) + inMv1(54,:) .* inMv2(3,:) - inMv1(64,:) .* inMv2(2,:);
    outMv(177,:) = inMv1(40,:) .* inMv2(8,:) - inMv1(42,:) .* inMv2(6,:) + inMv1(44,:) .* inMv2(5,:) - inMv1(53,:) .* inMv2(3,:) + inMv1(63,:) .* inMv2(2,:);
    outMv(178,:) = -inMv1(40,:) .* inMv2(7,:) + inMv1(41,:) .* inMv2(6,:) - inMv1(43,:) .* inMv2(5,:) + inMv1(52,:) .* inMv2(3,:) - inMv1(62,:) .* inMv2(2,:);
    outMv(179,:) = inMv1(38,:) .* inMv2(8,:) - inMv1(39,:) .* inMv2(7,:) + inMv1(45,:) .* inMv2(4,:) - inMv1(51,:) .* inMv2(3,:) + inMv1(61,:) .* inMv2(2,:);
    outMv(180,:) = -inMv1(37,:) .* inMv2(8,:) + inMv1(39,:) .* inMv2(6,:) - inMv1(44,:) .* inMv2(4,:) + inMv1(50,:) .* inMv2(3,:) - inMv1(60,:) .* inMv2(2,:);
    outMv(181,:) = inMv1(37,:) .* inMv2(7,:) - inMv1(38,:) .* inMv2(6,:) + inMv1(43,:) .* inMv2(4,:) - inMv1(49,:) .* inMv2(3,:) + inMv1(59,:) .* inMv2(2,:);
    outMv(182,:) = -inMv1(36,:) .* inMv2(8,:) + inMv1(39,:) .* inMv2(5,:) - inMv1(42,:) .* inMv2(4,:) + inMv1(48,:) .* inMv2(3,:) - inMv1(58,:) .* inMv2(2,:);
    outMv(183,:) = inMv1(36,:) .* inMv2(7,:) - inMv1(38,:) .* inMv2(5,:) + inMv1(41,:) .* inMv2(4,:) - inMv1(47,:) .* inMv2(3,:) + inMv1(57,:) .* inMv2(2,:);
    outMv(184,:) = -inMv1(36,:) .* inMv2(6,:) + inMv1(37,:) .* inMv2(5,:) - inMv1(40,:) .* inMv2(4,:) + inMv1(46,:) .* inMv2(3,:) - inMv1(56,:) .* inMv2(2,:);
    outMv(185,:) = inMv1(32,:) .* inMv2(8,:) - inMv1(33,:) .* inMv2(7,:) + inMv1(34,:) .* inMv2(6,:) - inMv1(35,:) .* inMv2(5,:) + inMv1(70,:) .* inMv2(1,:);
    outMv(186,:) = -inMv1(29,:) .* inMv2(8,:) + inMv1(30,:) .* inMv2(7,:) - inMv1(31,:) .* inMv2(6,:) + inMv1(35,:) .* inMv2(4,:) - inMv1(69,:) .* inMv2(1,:);
    outMv(187,:) = -inMv1(27,:) .* inMv2(8,:) + inMv1(28,:) .* inMv2(7,:) - inMv1(31,:) .* inMv2(5,:) + inMv1(34,:) .* inMv2(4,:) - inMv1(68,:) .* inMv2(1,:);
    outMv(188,:) = inMv1(26,:) .* inMv2(8,:) - inMv1(28,:) .* inMv2(6,:) + inMv1(30,:) .* inMv2(5,:) - inMv1(33,:) .* inMv2(4,:) + inMv1(67,:) .* inMv2(1,:);
    outMv(189,:) = -inMv1(26,:) .* inMv2(7,:) + inMv1(27,:) .* inMv2(6,:) - inMv1(29,:) .* inMv2(5,:) + inMv1(32,:) .* inMv2(4,:) - inMv1(66,:) .* inMv2(1,:);
    outMv(190,:) = inMv1(23,:) .* inMv2(8,:) - inMv1(24,:) .* inMv2(7,:) + inMv1(25,:) .* inMv2(6,:) - inMv1(35,:) .* inMv2(3,:) + inMv1(65,:) .* inMv2(1,:);
    outMv(191,:) = inMv1(21,:) .* inMv2(8,:) - inMv1(22,:) .* inMv2(7,:) + inMv1(25,:) .* inMv2(5,:) - inMv1(34,:) .* inMv2(3,:) + inMv1(64,:) .* inMv2(1,:);
    outMv(192,:) = -inMv1(20,:) .* inMv2(8,:) + inMv1(22,:) .* inMv2(6,:) - inMv1(24,:) .* inMv2(5,:) + inMv1(33,:) .* inMv2(3,:) - inMv1(63,:) .* inMv2(1,:);
    outMv(193,:) = inMv1(20,:) .* inMv2(7,:) - inMv1(21,:) .* inMv2(6,:) + inMv1(23,:) .* inMv2(5,:) - inMv1(32,:) .* inMv2(3,:) + inMv1(62,:) .* inMv2(1,:);
    outMv(194,:) = -inMv1(18,:) .* inMv2(8,:) + inMv1(19,:) .* inMv2(7,:) - inMv1(25,:) .* inMv2(4,:) + inMv1(31,:) .* inMv2(3,:) - inMv1(61,:) .* inMv2(1,:);
    outMv(195,:) = inMv1(17,:) .* inMv2(8,:) - inMv1(19,:) .* inMv2(6,:) + inMv1(24,:) .* inMv2(4,:) - inMv1(30,:) .* inMv2(3,:) + inMv1(60,:) .* inMv2(1,:);
    outMv(196,:) = -inMv1(17,:) .* inMv2(7,:) + inMv1(18,:) .* inMv2(6,:) - inMv1(23,:) .* inMv2(4,:) + inMv1(29,:) .* inMv2(3,:) - inMv1(59,:) .* inMv2(1,:);
    outMv(197,:) = inMv1(16,:) .* inMv2(8,:) - inMv1(19,:) .* inMv2(5,:) + inMv1(22,:) .* inMv2(4,:) - inMv1(28,:) .* inMv2(3,:) + inMv1(58,:) .* inMv2(1,:);
    outMv(198,:) = -inMv1(16,:) .* inMv2(7,:) + inMv1(18,:) .* inMv2(5,:) - inMv1(21,:) .* inMv2(4,:) + inMv1(27,:) .* inMv2(3,:) - inMv1(57,:) .* inMv2(1,:);
    outMv(199,:) = inMv1(16,:) .* inMv2(6,:) - inMv1(17,:) .* inMv2(5,:) + inMv1(20,:) .* inMv2(4,:) - inMv1(26,:) .* inMv2(3,:) + inMv1(56,:) .* inMv2(1,:);
    outMv(200,:) = -inMv1(13,:) .* inMv2(8,:) + inMv1(14,:) .* inMv2(7,:) - inMv1(15,:) .* inMv2(6,:) + inMv1(35,:) .* inMv2(2,:) - inMv1(55,:) .* inMv2(1,:);
    outMv(201,:) = -inMv1(11,:) .* inMv2(8,:) + inMv1(12,:) .* inMv2(7,:) - inMv1(15,:) .* inMv2(5,:) + inMv1(34,:) .* inMv2(2,:) - inMv1(54,:) .* inMv2(1,:);
    outMv(202,:) = inMv1(10,:) .* inMv2(8,:) - inMv1(12,:) .* inMv2(6,:) + inMv1(14,:) .* inMv2(5,:) - inMv1(33,:) .* inMv2(2,:) + inMv1(53,:) .* inMv2(1,:);
    outMv(203,:) = -inMv1(10,:) .* inMv2(7,:) + inMv1(11,:) .* inMv2(6,:) - inMv1(13,:) .* inMv2(5,:) + inMv1(32,:) .* inMv2(2,:) - inMv1(52,:) .* inMv2(1,:);
    outMv(204,:) = inMv1(8,:) .* inMv2(8,:) - inMv1(9,:) .* inMv2(7,:) + inMv1(15,:) .* inMv2(4,:) - inMv1(31,:) .* inMv2(2,:) + inMv1(51,:) .* inMv2(1,:);
    outMv(205,:) = -inMv1(7,:) .* inMv2(8,:) + inMv1(9,:) .* inMv2(6,:) - inMv1(14,:) .* inMv2(4,:) + inMv1(30,:) .* inMv2(2,:) - inMv1(50,:) .* inMv2(1,:);
    outMv(206,:) = inMv1(7,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(6,:) + inMv1(13,:) .* inMv2(4,:) - inMv1(29,:) .* inMv2(2,:) + inMv1(49,:) .* inMv2(1,:);
    outMv(207,:) = -inMv1(6,:) .* inMv2(8,:) + inMv1(9,:) .* inMv2(5,:) - inMv1(12,:) .* inMv2(4,:) + inMv1(28,:) .* inMv2(2,:) - inMv1(48,:) .* inMv2(1,:);
    outMv(208,:) = inMv1(6,:) .* inMv2(7,:) - inMv1(8,:) .* inMv2(5,:) + inMv1(11,:) .* inMv2(4,:) - inMv1(27,:) .* inMv2(2,:) + inMv1(47,:) .* inMv2(1,:);
    outMv(209,:) = -inMv1(6,:) .* inMv2(6,:) + inMv1(7,:) .* inMv2(5,:) - inMv1(10,:) .* inMv2(4,:) + inMv1(26,:) .* inMv2(2,:) - inMv1(46,:) .* inMv2(1,:);
    outMv(210,:) = -inMv1(4,:) .* inMv2(8,:) + inMv1(5,:) .* inMv2(7,:) - inMv1(15,:) .* inMv2(3,:) + inMv1(25,:) .* inMv2(2,:) - inMv1(45,:) .* inMv2(1,:);
    outMv(211,:) = inMv1(3,:) .* inMv2(8,:) - inMv1(5,:) .* inMv2(6,:) + inMv1(14,:) .* inMv2(3,:) - inMv1(24,:) .* inMv2(2,:) + inMv1(44,:) .* inMv2(1,:);
    outMv(212,:) = -inMv1(3,:) .* inMv2(7,:) + inMv1(4,:) .* inMv2(6,:) - inMv1(13,:) .* inMv2(3,:) + inMv1(23,:) .* inMv2(2,:) - inMv1(43,:) .* inMv2(1,:);
    outMv(213,:) = inMv1(2,:) .* inMv2(8,:) - inMv1(5,:) .* inMv2(5,:) + inMv1(12,:) .* inMv2(3,:) - inMv1(22,:) .* inMv2(2,:) + inMv1(42,:) .* inMv2(1,:);
    outMv(214,:) = -inMv1(2,:) .* inMv2(7,:) + inMv1(4,:) .* inMv2(5,:) - inMv1(11,:) .* inMv2(3,:) + inMv1(21,:) .* inMv2(2,:) - inMv1(41,:) .* inMv2(1,:);
    outMv(215,:) = inMv1(2,:) .* inMv2(6,:) - inMv1(3,:) .* inMv2(5,:) + inMv1(10,:) .* inMv2(3,:) - inMv1(20,:) .* inMv2(2,:) + inMv1(40,:) .* inMv2(1,:);
    outMv(216,:) = -inMv1(1,:) .* inMv2(8,:) + inMv1(5,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(3,:) + inMv1(19,:) .* inMv2(2,:) - inMv1(39,:) .* inMv2(1,:);
    outMv(217,:) = inMv1(1,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(4,:) + inMv1(8,:) .* inMv2(3,:) - inMv1(18,:) .* inMv2(2,:) + inMv1(38,:) .* inMv2(1,:);
    outMv(218,:) = -inMv1(1,:) .* inMv2(6,:) + inMv1(3,:) .* inMv2(4,:) - inMv1(7,:) .* inMv2(3,:) + inMv1(17,:) .* inMv2(2,:) - inMv1(37,:) .* inMv2(1,:);
    outMv(219,:) = -inMv1(1,:) .* inMv2(5,:) + inMv1(2,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(3,:) + inMv1(16,:) .* inMv2(2,:) - inMv1(36,:) .* inMv2(1,:);
end
