% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = gpKv7Kv5Mv(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (56,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([256, sampleCount], 'double');
    
    outMv(10,:) = -inMv1(1,:) .* inMv2(21,:) - inMv1(2,:) .* inMv2(36,:) - inMv1(3,:) .* inMv2(46,:) - inMv1(4,:) .* inMv2(52,:) - inMv1(5,:) .* inMv2(55,:) + inMv1(6,:) .* inMv2(56,:);
    outMv(11,:) = inMv1(1,:) .* inMv2(20,:) + inMv1(2,:) .* inMv2(35,:) + inMv1(3,:) .* inMv2(45,:) + inMv1(4,:) .* inMv2(51,:) + inMv1(5,:) .* inMv2(54,:) + inMv1(7,:) .* inMv2(56,:);
    outMv(12,:) = -inMv1(1,:) .* inMv2(19,:) - inMv1(2,:) .* inMv2(34,:) - inMv1(3,:) .* inMv2(44,:) - inMv1(4,:) .* inMv2(50,:) - inMv1(5,:) .* inMv2(53,:) + inMv1(8,:) .* inMv2(56,:);
    outMv(13,:) = inMv1(1,:) .* inMv2(18,:) + inMv1(2,:) .* inMv2(33,:) + inMv1(3,:) .* inMv2(43,:) + inMv1(4,:) .* inMv2(49,:) + inMv1(6,:) .* inMv2(54,:) + inMv1(7,:) .* inMv2(55,:);
    outMv(14,:) = -inMv1(1,:) .* inMv2(17,:) - inMv1(2,:) .* inMv2(32,:) - inMv1(3,:) .* inMv2(42,:) - inMv1(4,:) .* inMv2(48,:) - inMv1(6,:) .* inMv2(53,:) + inMv1(8,:) .* inMv2(55,:);
    outMv(15,:) = inMv1(1,:) .* inMv2(16,:) + inMv1(2,:) .* inMv2(31,:) + inMv1(3,:) .* inMv2(41,:) + inMv1(4,:) .* inMv2(47,:) - inMv1(7,:) .* inMv2(53,:) - inMv1(8,:) .* inMv2(54,:);
    outMv(16,:) = -inMv1(1,:) .* inMv2(15,:) - inMv1(2,:) .* inMv2(30,:) - inMv1(3,:) .* inMv2(40,:) + inMv1(5,:) .* inMv2(49,:) - inMv1(6,:) .* inMv2(51,:) - inMv1(7,:) .* inMv2(52,:);
    outMv(17,:) = inMv1(1,:) .* inMv2(14,:) + inMv1(2,:) .* inMv2(29,:) + inMv1(3,:) .* inMv2(39,:) - inMv1(5,:) .* inMv2(48,:) + inMv1(6,:) .* inMv2(50,:) - inMv1(8,:) .* inMv2(52,:);
    outMv(18,:) = -inMv1(1,:) .* inMv2(13,:) - inMv1(2,:) .* inMv2(28,:) - inMv1(3,:) .* inMv2(38,:) + inMv1(5,:) .* inMv2(47,:) + inMv1(7,:) .* inMv2(50,:) + inMv1(8,:) .* inMv2(51,:);
    outMv(19,:) = -inMv1(1,:) .* inMv2(12,:) - inMv1(2,:) .* inMv2(27,:) - inMv1(3,:) .* inMv2(37,:) + inMv1(6,:) .* inMv2(47,:) + inMv1(7,:) .* inMv2(48,:) + inMv1(8,:) .* inMv2(49,:);
    outMv(20,:) = inMv1(1,:) .* inMv2(11,:) + inMv1(2,:) .* inMv2(26,:) - inMv1(4,:) .* inMv2(40,:) - inMv1(5,:) .* inMv2(43,:) + inMv1(6,:) .* inMv2(45,:) + inMv1(7,:) .* inMv2(46,:);
    outMv(21,:) = -inMv1(1,:) .* inMv2(10,:) - inMv1(2,:) .* inMv2(25,:) + inMv1(4,:) .* inMv2(39,:) + inMv1(5,:) .* inMv2(42,:) - inMv1(6,:) .* inMv2(44,:) + inMv1(8,:) .* inMv2(46,:);
    outMv(22,:) = inMv1(1,:) .* inMv2(9,:) + inMv1(2,:) .* inMv2(24,:) - inMv1(4,:) .* inMv2(38,:) - inMv1(5,:) .* inMv2(41,:) - inMv1(7,:) .* inMv2(44,:) - inMv1(8,:) .* inMv2(45,:);
    outMv(23,:) = inMv1(1,:) .* inMv2(8,:) + inMv1(2,:) .* inMv2(23,:) - inMv1(4,:) .* inMv2(37,:) - inMv1(6,:) .* inMv2(41,:) - inMv1(7,:) .* inMv2(42,:) - inMv1(8,:) .* inMv2(43,:);
    outMv(24,:) = -inMv1(1,:) .* inMv2(7,:) - inMv1(2,:) .* inMv2(22,:) - inMv1(5,:) .* inMv2(37,:) + inMv1(6,:) .* inMv2(38,:) + inMv1(7,:) .* inMv2(39,:) + inMv1(8,:) .* inMv2(40,:);
    outMv(25,:) = -inMv1(1,:) .* inMv2(6,:) + inMv1(3,:) .* inMv2(26,:) + inMv1(4,:) .* inMv2(30,:) + inMv1(5,:) .* inMv2(33,:) - inMv1(6,:) .* inMv2(35,:) - inMv1(7,:) .* inMv2(36,:);
    outMv(26,:) = inMv1(1,:) .* inMv2(5,:) - inMv1(3,:) .* inMv2(25,:) - inMv1(4,:) .* inMv2(29,:) - inMv1(5,:) .* inMv2(32,:) + inMv1(6,:) .* inMv2(34,:) - inMv1(8,:) .* inMv2(36,:);
    outMv(27,:) = -inMv1(1,:) .* inMv2(4,:) + inMv1(3,:) .* inMv2(24,:) + inMv1(4,:) .* inMv2(28,:) + inMv1(5,:) .* inMv2(31,:) + inMv1(7,:) .* inMv2(34,:) + inMv1(8,:) .* inMv2(35,:);
    outMv(28,:) = -inMv1(1,:) .* inMv2(3,:) + inMv1(3,:) .* inMv2(23,:) + inMv1(4,:) .* inMv2(27,:) + inMv1(6,:) .* inMv2(31,:) + inMv1(7,:) .* inMv2(32,:) + inMv1(8,:) .* inMv2(33,:);
    outMv(29,:) = inMv1(1,:) .* inMv2(2,:) - inMv1(3,:) .* inMv2(22,:) + inMv1(5,:) .* inMv2(27,:) - inMv1(6,:) .* inMv2(28,:) - inMv1(7,:) .* inMv2(29,:) - inMv1(8,:) .* inMv2(30,:);
    outMv(30,:) = -inMv1(1,:) .* inMv2(1,:) - inMv1(4,:) .* inMv2(22,:) - inMv1(5,:) .* inMv2(23,:) + inMv1(6,:) .* inMv2(24,:) + inMv1(7,:) .* inMv2(25,:) + inMv1(8,:) .* inMv2(26,:);
    outMv(31,:) = -inMv1(2,:) .* inMv2(6,:) - inMv1(3,:) .* inMv2(11,:) - inMv1(4,:) .* inMv2(15,:) - inMv1(5,:) .* inMv2(18,:) + inMv1(6,:) .* inMv2(20,:) + inMv1(7,:) .* inMv2(21,:);
    outMv(32,:) = inMv1(2,:) .* inMv2(5,:) + inMv1(3,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(14,:) + inMv1(5,:) .* inMv2(17,:) - inMv1(6,:) .* inMv2(19,:) + inMv1(8,:) .* inMv2(21,:);
    outMv(33,:) = -inMv1(2,:) .* inMv2(4,:) - inMv1(3,:) .* inMv2(9,:) - inMv1(4,:) .* inMv2(13,:) - inMv1(5,:) .* inMv2(16,:) - inMv1(7,:) .* inMv2(19,:) - inMv1(8,:) .* inMv2(20,:);
    outMv(34,:) = -inMv1(2,:) .* inMv2(3,:) - inMv1(3,:) .* inMv2(8,:) - inMv1(4,:) .* inMv2(12,:) - inMv1(6,:) .* inMv2(16,:) - inMv1(7,:) .* inMv2(17,:) - inMv1(8,:) .* inMv2(18,:);
    outMv(35,:) = inMv1(2,:) .* inMv2(2,:) + inMv1(3,:) .* inMv2(7,:) - inMv1(5,:) .* inMv2(12,:) + inMv1(6,:) .* inMv2(13,:) + inMv1(7,:) .* inMv2(14,:) + inMv1(8,:) .* inMv2(15,:);
    outMv(36,:) = -inMv1(2,:) .* inMv2(1,:) + inMv1(4,:) .* inMv2(7,:) + inMv1(5,:) .* inMv2(8,:) - inMv1(6,:) .* inMv2(9,:) - inMv1(7,:) .* inMv2(10,:) - inMv1(8,:) .* inMv2(11,:);
    outMv(37,:) = -inMv1(3,:) .* inMv2(1,:) - inMv1(4,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(3,:) + inMv1(6,:) .* inMv2(4,:) + inMv1(7,:) .* inMv2(5,:) + inMv1(8,:) .* inMv2(6,:);
    outMv(94,:) = inMv1(5,:) .* inMv2(56,:) - inMv1(6,:) .* inMv2(55,:) + inMv1(7,:) .* inMv2(54,:) - inMv1(8,:) .* inMv2(53,:);
    outMv(95,:) = -inMv1(4,:) .* inMv2(56,:) + inMv1(6,:) .* inMv2(52,:) - inMv1(7,:) .* inMv2(51,:) + inMv1(8,:) .* inMv2(50,:);
    outMv(96,:) = -inMv1(4,:) .* inMv2(55,:) + inMv1(5,:) .* inMv2(52,:) - inMv1(7,:) .* inMv2(49,:) + inMv1(8,:) .* inMv2(48,:);
    outMv(97,:) = inMv1(4,:) .* inMv2(54,:) - inMv1(5,:) .* inMv2(51,:) + inMv1(6,:) .* inMv2(49,:) - inMv1(8,:) .* inMv2(47,:);
    outMv(98,:) = -inMv1(4,:) .* inMv2(53,:) + inMv1(5,:) .* inMv2(50,:) - inMv1(6,:) .* inMv2(48,:) + inMv1(7,:) .* inMv2(47,:);
    outMv(99,:) = inMv1(3,:) .* inMv2(56,:) - inMv1(6,:) .* inMv2(46,:) + inMv1(7,:) .* inMv2(45,:) - inMv1(8,:) .* inMv2(44,:);
    outMv(100,:) = inMv1(3,:) .* inMv2(55,:) - inMv1(5,:) .* inMv2(46,:) + inMv1(7,:) .* inMv2(43,:) - inMv1(8,:) .* inMv2(42,:);
    outMv(101,:) = -inMv1(3,:) .* inMv2(54,:) + inMv1(5,:) .* inMv2(45,:) - inMv1(6,:) .* inMv2(43,:) + inMv1(8,:) .* inMv2(41,:);
    outMv(102,:) = inMv1(3,:) .* inMv2(53,:) - inMv1(5,:) .* inMv2(44,:) + inMv1(6,:) .* inMv2(42,:) - inMv1(7,:) .* inMv2(41,:);
    outMv(103,:) = -inMv1(3,:) .* inMv2(52,:) + inMv1(4,:) .* inMv2(46,:) - inMv1(7,:) .* inMv2(40,:) + inMv1(8,:) .* inMv2(39,:);
    outMv(104,:) = inMv1(3,:) .* inMv2(51,:) - inMv1(4,:) .* inMv2(45,:) + inMv1(6,:) .* inMv2(40,:) - inMv1(8,:) .* inMv2(38,:);
    outMv(105,:) = -inMv1(3,:) .* inMv2(50,:) + inMv1(4,:) .* inMv2(44,:) - inMv1(6,:) .* inMv2(39,:) + inMv1(7,:) .* inMv2(38,:);
    outMv(106,:) = inMv1(3,:) .* inMv2(49,:) - inMv1(4,:) .* inMv2(43,:) + inMv1(5,:) .* inMv2(40,:) - inMv1(8,:) .* inMv2(37,:);
    outMv(107,:) = -inMv1(3,:) .* inMv2(48,:) + inMv1(4,:) .* inMv2(42,:) - inMv1(5,:) .* inMv2(39,:) + inMv1(7,:) .* inMv2(37,:);
    outMv(108,:) = inMv1(3,:) .* inMv2(47,:) - inMv1(4,:) .* inMv2(41,:) + inMv1(5,:) .* inMv2(38,:) - inMv1(6,:) .* inMv2(37,:);
    outMv(109,:) = -inMv1(2,:) .* inMv2(56,:) + inMv1(6,:) .* inMv2(36,:) - inMv1(7,:) .* inMv2(35,:) + inMv1(8,:) .* inMv2(34,:);
    outMv(110,:) = -inMv1(2,:) .* inMv2(55,:) + inMv1(5,:) .* inMv2(36,:) - inMv1(7,:) .* inMv2(33,:) + inMv1(8,:) .* inMv2(32,:);
    outMv(111,:) = inMv1(2,:) .* inMv2(54,:) - inMv1(5,:) .* inMv2(35,:) + inMv1(6,:) .* inMv2(33,:) - inMv1(8,:) .* inMv2(31,:);
    outMv(112,:) = -inMv1(2,:) .* inMv2(53,:) + inMv1(5,:) .* inMv2(34,:) - inMv1(6,:) .* inMv2(32,:) + inMv1(7,:) .* inMv2(31,:);
    outMv(113,:) = inMv1(2,:) .* inMv2(52,:) - inMv1(4,:) .* inMv2(36,:) + inMv1(7,:) .* inMv2(30,:) - inMv1(8,:) .* inMv2(29,:);
    outMv(114,:) = -inMv1(2,:) .* inMv2(51,:) + inMv1(4,:) .* inMv2(35,:) - inMv1(6,:) .* inMv2(30,:) + inMv1(8,:) .* inMv2(28,:);
    outMv(115,:) = inMv1(2,:) .* inMv2(50,:) - inMv1(4,:) .* inMv2(34,:) + inMv1(6,:) .* inMv2(29,:) - inMv1(7,:) .* inMv2(28,:);
    outMv(116,:) = -inMv1(2,:) .* inMv2(49,:) + inMv1(4,:) .* inMv2(33,:) - inMv1(5,:) .* inMv2(30,:) + inMv1(8,:) .* inMv2(27,:);
    outMv(117,:) = inMv1(2,:) .* inMv2(48,:) - inMv1(4,:) .* inMv2(32,:) + inMv1(5,:) .* inMv2(29,:) - inMv1(7,:) .* inMv2(27,:);
    outMv(118,:) = -inMv1(2,:) .* inMv2(47,:) + inMv1(4,:) .* inMv2(31,:) - inMv1(5,:) .* inMv2(28,:) + inMv1(6,:) .* inMv2(27,:);
    outMv(119,:) = -inMv1(2,:) .* inMv2(46,:) + inMv1(3,:) .* inMv2(36,:) - inMv1(7,:) .* inMv2(26,:) + inMv1(8,:) .* inMv2(25,:);
    outMv(120,:) = inMv1(2,:) .* inMv2(45,:) - inMv1(3,:) .* inMv2(35,:) + inMv1(6,:) .* inMv2(26,:) - inMv1(8,:) .* inMv2(24,:);
    outMv(121,:) = -inMv1(2,:) .* inMv2(44,:) + inMv1(3,:) .* inMv2(34,:) - inMv1(6,:) .* inMv2(25,:) + inMv1(7,:) .* inMv2(24,:);
    outMv(122,:) = inMv1(2,:) .* inMv2(43,:) - inMv1(3,:) .* inMv2(33,:) + inMv1(5,:) .* inMv2(26,:) - inMv1(8,:) .* inMv2(23,:);
    outMv(123,:) = -inMv1(2,:) .* inMv2(42,:) + inMv1(3,:) .* inMv2(32,:) - inMv1(5,:) .* inMv2(25,:) + inMv1(7,:) .* inMv2(23,:);
    outMv(124,:) = inMv1(2,:) .* inMv2(41,:) - inMv1(3,:) .* inMv2(31,:) + inMv1(5,:) .* inMv2(24,:) - inMv1(6,:) .* inMv2(23,:);
    outMv(125,:) = -inMv1(2,:) .* inMv2(40,:) + inMv1(3,:) .* inMv2(30,:) - inMv1(4,:) .* inMv2(26,:) + inMv1(8,:) .* inMv2(22,:);
    outMv(126,:) = inMv1(2,:) .* inMv2(39,:) - inMv1(3,:) .* inMv2(29,:) + inMv1(4,:) .* inMv2(25,:) - inMv1(7,:) .* inMv2(22,:);
    outMv(127,:) = -inMv1(2,:) .* inMv2(38,:) + inMv1(3,:) .* inMv2(28,:) - inMv1(4,:) .* inMv2(24,:) + inMv1(6,:) .* inMv2(22,:);
    outMv(128,:) = -inMv1(2,:) .* inMv2(37,:) + inMv1(3,:) .* inMv2(27,:) - inMv1(4,:) .* inMv2(23,:) + inMv1(5,:) .* inMv2(22,:);
    outMv(129,:) = inMv1(1,:) .* inMv2(56,:) - inMv1(6,:) .* inMv2(21,:) + inMv1(7,:) .* inMv2(20,:) - inMv1(8,:) .* inMv2(19,:);
    outMv(130,:) = inMv1(1,:) .* inMv2(55,:) - inMv1(5,:) .* inMv2(21,:) + inMv1(7,:) .* inMv2(18,:) - inMv1(8,:) .* inMv2(17,:);
    outMv(131,:) = -inMv1(1,:) .* inMv2(54,:) + inMv1(5,:) .* inMv2(20,:) - inMv1(6,:) .* inMv2(18,:) + inMv1(8,:) .* inMv2(16,:);
    outMv(132,:) = inMv1(1,:) .* inMv2(53,:) - inMv1(5,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(17,:) - inMv1(7,:) .* inMv2(16,:);
    outMv(133,:) = -inMv1(1,:) .* inMv2(52,:) + inMv1(4,:) .* inMv2(21,:) - inMv1(7,:) .* inMv2(15,:) + inMv1(8,:) .* inMv2(14,:);
    outMv(134,:) = inMv1(1,:) .* inMv2(51,:) - inMv1(4,:) .* inMv2(20,:) + inMv1(6,:) .* inMv2(15,:) - inMv1(8,:) .* inMv2(13,:);
    outMv(135,:) = -inMv1(1,:) .* inMv2(50,:) + inMv1(4,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(14,:) + inMv1(7,:) .* inMv2(13,:);
    outMv(136,:) = inMv1(1,:) .* inMv2(49,:) - inMv1(4,:) .* inMv2(18,:) + inMv1(5,:) .* inMv2(15,:) - inMv1(8,:) .* inMv2(12,:);
    outMv(137,:) = -inMv1(1,:) .* inMv2(48,:) + inMv1(4,:) .* inMv2(17,:) - inMv1(5,:) .* inMv2(14,:) + inMv1(7,:) .* inMv2(12,:);
    outMv(138,:) = inMv1(1,:) .* inMv2(47,:) - inMv1(4,:) .* inMv2(16,:) + inMv1(5,:) .* inMv2(13,:) - inMv1(6,:) .* inMv2(12,:);
    outMv(139,:) = inMv1(1,:) .* inMv2(46,:) - inMv1(3,:) .* inMv2(21,:) + inMv1(7,:) .* inMv2(11,:) - inMv1(8,:) .* inMv2(10,:);
    outMv(140,:) = -inMv1(1,:) .* inMv2(45,:) + inMv1(3,:) .* inMv2(20,:) - inMv1(6,:) .* inMv2(11,:) + inMv1(8,:) .* inMv2(9,:);
    outMv(141,:) = inMv1(1,:) .* inMv2(44,:) - inMv1(3,:) .* inMv2(19,:) + inMv1(6,:) .* inMv2(10,:) - inMv1(7,:) .* inMv2(9,:);
    outMv(142,:) = -inMv1(1,:) .* inMv2(43,:) + inMv1(3,:) .* inMv2(18,:) - inMv1(5,:) .* inMv2(11,:) + inMv1(8,:) .* inMv2(8,:);
    outMv(143,:) = inMv1(1,:) .* inMv2(42,:) - inMv1(3,:) .* inMv2(17,:) + inMv1(5,:) .* inMv2(10,:) - inMv1(7,:) .* inMv2(8,:);
    outMv(144,:) = -inMv1(1,:) .* inMv2(41,:) + inMv1(3,:) .* inMv2(16,:) - inMv1(5,:) .* inMv2(9,:) + inMv1(6,:) .* inMv2(8,:);
    outMv(145,:) = inMv1(1,:) .* inMv2(40,:) - inMv1(3,:) .* inMv2(15,:) + inMv1(4,:) .* inMv2(11,:) - inMv1(8,:) .* inMv2(7,:);
    outMv(146,:) = -inMv1(1,:) .* inMv2(39,:) + inMv1(3,:) .* inMv2(14,:) - inMv1(4,:) .* inMv2(10,:) + inMv1(7,:) .* inMv2(7,:);
    outMv(147,:) = inMv1(1,:) .* inMv2(38,:) - inMv1(3,:) .* inMv2(13,:) + inMv1(4,:) .* inMv2(9,:) - inMv1(6,:) .* inMv2(7,:);
    outMv(148,:) = inMv1(1,:) .* inMv2(37,:) - inMv1(3,:) .* inMv2(12,:) + inMv1(4,:) .* inMv2(8,:) - inMv1(5,:) .* inMv2(7,:);
    outMv(149,:) = -inMv1(1,:) .* inMv2(36,:) + inMv1(2,:) .* inMv2(21,:) - inMv1(7,:) .* inMv2(6,:) + inMv1(8,:) .* inMv2(5,:);
    outMv(150,:) = inMv1(1,:) .* inMv2(35,:) - inMv1(2,:) .* inMv2(20,:) + inMv1(6,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(4,:);
    outMv(151,:) = -inMv1(1,:) .* inMv2(34,:) + inMv1(2,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(4,:);
    outMv(152,:) = inMv1(1,:) .* inMv2(33,:) - inMv1(2,:) .* inMv2(18,:) + inMv1(5,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(3,:);
    outMv(153,:) = -inMv1(1,:) .* inMv2(32,:) + inMv1(2,:) .* inMv2(17,:) - inMv1(5,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(3,:);
    outMv(154,:) = inMv1(1,:) .* inMv2(31,:) - inMv1(2,:) .* inMv2(16,:) + inMv1(5,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(3,:);
    outMv(155,:) = -inMv1(1,:) .* inMv2(30,:) + inMv1(2,:) .* inMv2(15,:) - inMv1(4,:) .* inMv2(6,:) + inMv1(8,:) .* inMv2(2,:);
    outMv(156,:) = inMv1(1,:) .* inMv2(29,:) - inMv1(2,:) .* inMv2(14,:) + inMv1(4,:) .* inMv2(5,:) - inMv1(7,:) .* inMv2(2,:);
    outMv(157,:) = -inMv1(1,:) .* inMv2(28,:) + inMv1(2,:) .* inMv2(13,:) - inMv1(4,:) .* inMv2(4,:) + inMv1(6,:) .* inMv2(2,:);
    outMv(158,:) = -inMv1(1,:) .* inMv2(27,:) + inMv1(2,:) .* inMv2(12,:) - inMv1(4,:) .* inMv2(3,:) + inMv1(5,:) .* inMv2(2,:);
    outMv(159,:) = inMv1(1,:) .* inMv2(26,:) - inMv1(2,:) .* inMv2(11,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(8,:) .* inMv2(1,:);
    outMv(160,:) = -inMv1(1,:) .* inMv2(25,:) + inMv1(2,:) .* inMv2(10,:) - inMv1(3,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(1,:);
    outMv(161,:) = inMv1(1,:) .* inMv2(24,:) - inMv1(2,:) .* inMv2(9,:) + inMv1(3,:) .* inMv2(4,:) - inMv1(6,:) .* inMv2(1,:);
    outMv(162,:) = inMv1(1,:) .* inMv2(23,:) - inMv1(2,:) .* inMv2(8,:) + inMv1(3,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(1,:);
    outMv(163,:) = -inMv1(1,:) .* inMv2(22,:) + inMv1(2,:) .* inMv2(7,:) - inMv1(3,:) .* inMv2(2,:) + inMv1(4,:) .* inMv2(1,:);
end
