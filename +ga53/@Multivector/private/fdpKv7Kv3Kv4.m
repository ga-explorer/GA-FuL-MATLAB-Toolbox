% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpKv7Kv3Kv4(inMv1, inMv2)
    arguments
        inMv1 (8,:) double
        inMv2 (56,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([70, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(35,:) - inMv1(2,:) .* inMv2(50,:) - inMv1(3,:) .* inMv2(55,:) - inMv1(4,:) .* inMv2(56,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(34,:) + inMv1(2,:) .* inMv2(49,:) + inMv1(3,:) .* inMv2(54,:) - inMv1(5,:) .* inMv2(56,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(33,:) + inMv1(2,:) .* inMv2(48,:) + inMv1(3,:) .* inMv2(53,:) - inMv1(6,:) .* inMv2(56,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(32,:) - inMv1(2,:) .* inMv2(47,:) - inMv1(3,:) .* inMv2(52,:) - inMv1(7,:) .* inMv2(56,:);
    outMv(5,:) = inMv1(1,:) .* inMv2(31,:) + inMv1(2,:) .* inMv2(46,:) + inMv1(3,:) .* inMv2(51,:) - inMv1(8,:) .* inMv2(56,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(30,:) - inMv1(2,:) .* inMv2(45,:) + inMv1(4,:) .* inMv2(54,:) + inMv1(5,:) .* inMv2(55,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(29,:) - inMv1(2,:) .* inMv2(44,:) + inMv1(4,:) .* inMv2(53,:) + inMv1(6,:) .* inMv2(55,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(28,:) + inMv1(2,:) .* inMv2(43,:) - inMv1(4,:) .* inMv2(52,:) + inMv1(7,:) .* inMv2(55,:);
    outMv(9,:) = -inMv1(1,:) .* inMv2(27,:) - inMv1(2,:) .* inMv2(42,:) + inMv1(4,:) .* inMv2(51,:) + inMv1(8,:) .* inMv2(55,:);
    outMv(10,:) = inMv1(1,:) .* inMv2(26,:) + inMv1(2,:) .* inMv2(41,:) + inMv1(5,:) .* inMv2(53,:) - inMv1(6,:) .* inMv2(54,:);
    outMv(11,:) = -inMv1(1,:) .* inMv2(25,:) - inMv1(2,:) .* inMv2(40,:) - inMv1(5,:) .* inMv2(52,:) - inMv1(7,:) .* inMv2(54,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(24,:) + inMv1(2,:) .* inMv2(39,:) + inMv1(5,:) .* inMv2(51,:) - inMv1(8,:) .* inMv2(54,:);
    outMv(13,:) = -inMv1(1,:) .* inMv2(23,:) - inMv1(2,:) .* inMv2(38,:) - inMv1(6,:) .* inMv2(52,:) - inMv1(7,:) .* inMv2(53,:);
    outMv(14,:) = inMv1(1,:) .* inMv2(22,:) + inMv1(2,:) .* inMv2(37,:) + inMv1(6,:) .* inMv2(51,:) - inMv1(8,:) .* inMv2(53,:);
    outMv(15,:) = -inMv1(1,:) .* inMv2(21,:) - inMv1(2,:) .* inMv2(36,:) + inMv1(7,:) .* inMv2(51,:) + inMv1(8,:) .* inMv2(52,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(20,:) - inMv1(3,:) .* inMv2(45,:) - inMv1(4,:) .* inMv2(49,:) - inMv1(5,:) .* inMv2(50,:);
    outMv(17,:) = inMv1(1,:) .* inMv2(19,:) - inMv1(3,:) .* inMv2(44,:) - inMv1(4,:) .* inMv2(48,:) - inMv1(6,:) .* inMv2(50,:);
    outMv(18,:) = -inMv1(1,:) .* inMv2(18,:) + inMv1(3,:) .* inMv2(43,:) + inMv1(4,:) .* inMv2(47,:) - inMv1(7,:) .* inMv2(50,:);
    outMv(19,:) = inMv1(1,:) .* inMv2(17,:) - inMv1(3,:) .* inMv2(42,:) - inMv1(4,:) .* inMv2(46,:) - inMv1(8,:) .* inMv2(50,:);
    outMv(20,:) = -inMv1(1,:) .* inMv2(16,:) + inMv1(3,:) .* inMv2(41,:) - inMv1(5,:) .* inMv2(48,:) + inMv1(6,:) .* inMv2(49,:);
    outMv(21,:) = inMv1(1,:) .* inMv2(15,:) - inMv1(3,:) .* inMv2(40,:) + inMv1(5,:) .* inMv2(47,:) + inMv1(7,:) .* inMv2(49,:);
    outMv(22,:) = -inMv1(1,:) .* inMv2(14,:) + inMv1(3,:) .* inMv2(39,:) - inMv1(5,:) .* inMv2(46,:) + inMv1(8,:) .* inMv2(49,:);
    outMv(23,:) = inMv1(1,:) .* inMv2(13,:) - inMv1(3,:) .* inMv2(38,:) + inMv1(6,:) .* inMv2(47,:) + inMv1(7,:) .* inMv2(48,:);
    outMv(24,:) = -inMv1(1,:) .* inMv2(12,:) + inMv1(3,:) .* inMv2(37,:) - inMv1(6,:) .* inMv2(46,:) + inMv1(8,:) .* inMv2(48,:);
    outMv(25,:) = inMv1(1,:) .* inMv2(11,:) - inMv1(3,:) .* inMv2(36,:) - inMv1(7,:) .* inMv2(46,:) - inMv1(8,:) .* inMv2(47,:);
    outMv(26,:) = inMv1(1,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(41,:) + inMv1(5,:) .* inMv2(44,:) - inMv1(6,:) .* inMv2(45,:);
    outMv(27,:) = -inMv1(1,:) .* inMv2(9,:) - inMv1(4,:) .* inMv2(40,:) - inMv1(5,:) .* inMv2(43,:) - inMv1(7,:) .* inMv2(45,:);
    outMv(28,:) = inMv1(1,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(39,:) + inMv1(5,:) .* inMv2(42,:) - inMv1(8,:) .* inMv2(45,:);
    outMv(29,:) = -inMv1(1,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(38,:) - inMv1(6,:) .* inMv2(43,:) - inMv1(7,:) .* inMv2(44,:);
    outMv(30,:) = inMv1(1,:) .* inMv2(6,:) + inMv1(4,:) .* inMv2(37,:) + inMv1(6,:) .* inMv2(42,:) - inMv1(8,:) .* inMv2(44,:);
    outMv(31,:) = -inMv1(1,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(36,:) + inMv1(7,:) .* inMv2(42,:) + inMv1(8,:) .* inMv2(43,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(38,:) + inMv1(6,:) .* inMv2(40,:) + inMv1(7,:) .* inMv2(41,:);
    outMv(33,:) = -inMv1(1,:) .* inMv2(3,:) + inMv1(5,:) .* inMv2(37,:) - inMv1(6,:) .* inMv2(39,:) + inMv1(8,:) .* inMv2(41,:);
    outMv(34,:) = inMv1(1,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(36,:) - inMv1(7,:) .* inMv2(39,:) - inMv1(8,:) .* inMv2(40,:);
    outMv(35,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(6,:) .* inMv2(36,:) - inMv1(7,:) .* inMv2(37,:) - inMv1(8,:) .* inMv2(38,:);
    outMv(36,:) = inMv1(2,:) .* inMv2(20,:) + inMv1(3,:) .* inMv2(30,:) + inMv1(4,:) .* inMv2(34,:) + inMv1(5,:) .* inMv2(35,:);
    outMv(37,:) = inMv1(2,:) .* inMv2(19,:) + inMv1(3,:) .* inMv2(29,:) + inMv1(4,:) .* inMv2(33,:) + inMv1(6,:) .* inMv2(35,:);
    outMv(38,:) = -inMv1(2,:) .* inMv2(18,:) - inMv1(3,:) .* inMv2(28,:) - inMv1(4,:) .* inMv2(32,:) + inMv1(7,:) .* inMv2(35,:);
    outMv(39,:) = inMv1(2,:) .* inMv2(17,:) + inMv1(3,:) .* inMv2(27,:) + inMv1(4,:) .* inMv2(31,:) + inMv1(8,:) .* inMv2(35,:);
    outMv(40,:) = -inMv1(2,:) .* inMv2(16,:) - inMv1(3,:) .* inMv2(26,:) + inMv1(5,:) .* inMv2(33,:) - inMv1(6,:) .* inMv2(34,:);
    outMv(41,:) = inMv1(2,:) .* inMv2(15,:) + inMv1(3,:) .* inMv2(25,:) - inMv1(5,:) .* inMv2(32,:) - inMv1(7,:) .* inMv2(34,:);
    outMv(42,:) = -inMv1(2,:) .* inMv2(14,:) - inMv1(3,:) .* inMv2(24,:) + inMv1(5,:) .* inMv2(31,:) - inMv1(8,:) .* inMv2(34,:);
    outMv(43,:) = inMv1(2,:) .* inMv2(13,:) + inMv1(3,:) .* inMv2(23,:) - inMv1(6,:) .* inMv2(32,:) - inMv1(7,:) .* inMv2(33,:);
    outMv(44,:) = -inMv1(2,:) .* inMv2(12,:) - inMv1(3,:) .* inMv2(22,:) + inMv1(6,:) .* inMv2(31,:) - inMv1(8,:) .* inMv2(33,:);
    outMv(45,:) = inMv1(2,:) .* inMv2(11,:) + inMv1(3,:) .* inMv2(21,:) + inMv1(7,:) .* inMv2(31,:) + inMv1(8,:) .* inMv2(32,:);
    outMv(46,:) = inMv1(2,:) .* inMv2(10,:) - inMv1(4,:) .* inMv2(26,:) - inMv1(5,:) .* inMv2(29,:) + inMv1(6,:) .* inMv2(30,:);
    outMv(47,:) = -inMv1(2,:) .* inMv2(9,:) + inMv1(4,:) .* inMv2(25,:) + inMv1(5,:) .* inMv2(28,:) + inMv1(7,:) .* inMv2(30,:);
    outMv(48,:) = inMv1(2,:) .* inMv2(8,:) - inMv1(4,:) .* inMv2(24,:) - inMv1(5,:) .* inMv2(27,:) + inMv1(8,:) .* inMv2(30,:);
    outMv(49,:) = -inMv1(2,:) .* inMv2(7,:) + inMv1(4,:) .* inMv2(23,:) + inMv1(6,:) .* inMv2(28,:) + inMv1(7,:) .* inMv2(29,:);
    outMv(50,:) = inMv1(2,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(22,:) - inMv1(6,:) .* inMv2(27,:) + inMv1(8,:) .* inMv2(29,:);
    outMv(51,:) = -inMv1(2,:) .* inMv2(5,:) + inMv1(4,:) .* inMv2(21,:) - inMv1(7,:) .* inMv2(27,:) - inMv1(8,:) .* inMv2(28,:);
    outMv(52,:) = inMv1(2,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(23,:) - inMv1(6,:) .* inMv2(25,:) - inMv1(7,:) .* inMv2(26,:);
    outMv(53,:) = -inMv1(2,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(22,:) + inMv1(6,:) .* inMv2(24,:) - inMv1(8,:) .* inMv2(26,:);
    outMv(54,:) = inMv1(2,:) .* inMv2(2,:) + inMv1(5,:) .* inMv2(21,:) + inMv1(7,:) .* inMv2(24,:) + inMv1(8,:) .* inMv2(25,:);
    outMv(55,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(6,:) .* inMv2(21,:) + inMv1(7,:) .* inMv2(22,:) + inMv1(8,:) .* inMv2(23,:);
    outMv(56,:) = inMv1(3,:) .* inMv2(10,:) + inMv1(4,:) .* inMv2(16,:) + inMv1(5,:) .* inMv2(19,:) - inMv1(6,:) .* inMv2(20,:);
    outMv(57,:) = -inMv1(3,:) .* inMv2(9,:) - inMv1(4,:) .* inMv2(15,:) - inMv1(5,:) .* inMv2(18,:) - inMv1(7,:) .* inMv2(20,:);
    outMv(58,:) = inMv1(3,:) .* inMv2(8,:) + inMv1(4,:) .* inMv2(14,:) + inMv1(5,:) .* inMv2(17,:) - inMv1(8,:) .* inMv2(20,:);
    outMv(59,:) = -inMv1(3,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(13,:) - inMv1(6,:) .* inMv2(18,:) - inMv1(7,:) .* inMv2(19,:);
    outMv(60,:) = inMv1(3,:) .* inMv2(6,:) + inMv1(4,:) .* inMv2(12,:) + inMv1(6,:) .* inMv2(17,:) - inMv1(8,:) .* inMv2(19,:);
    outMv(61,:) = -inMv1(3,:) .* inMv2(5,:) - inMv1(4,:) .* inMv2(11,:) + inMv1(7,:) .* inMv2(17,:) + inMv1(8,:) .* inMv2(18,:);
    outMv(62,:) = inMv1(3,:) .* inMv2(4,:) - inMv1(5,:) .* inMv2(13,:) + inMv1(6,:) .* inMv2(15,:) + inMv1(7,:) .* inMv2(16,:);
    outMv(63,:) = -inMv1(3,:) .* inMv2(3,:) + inMv1(5,:) .* inMv2(12,:) - inMv1(6,:) .* inMv2(14,:) + inMv1(8,:) .* inMv2(16,:);
    outMv(64,:) = inMv1(3,:) .* inMv2(2,:) - inMv1(5,:) .* inMv2(11,:) - inMv1(7,:) .* inMv2(14,:) - inMv1(8,:) .* inMv2(15,:);
    outMv(65,:) = inMv1(3,:) .* inMv2(1,:) - inMv1(6,:) .* inMv2(11,:) - inMv1(7,:) .* inMv2(12,:) - inMv1(8,:) .* inMv2(13,:);
    outMv(66,:) = inMv1(4,:) .* inMv2(4,:) + inMv1(5,:) .* inMv2(7,:) - inMv1(6,:) .* inMv2(9,:) - inMv1(7,:) .* inMv2(10,:);
    outMv(67,:) = -inMv1(4,:) .* inMv2(3,:) - inMv1(5,:) .* inMv2(6,:) + inMv1(6,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(10,:);
    outMv(68,:) = inMv1(4,:) .* inMv2(2,:) + inMv1(5,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(8,:) + inMv1(8,:) .* inMv2(9,:);
    outMv(69,:) = inMv1(4,:) .* inMv2(1,:) + inMv1(6,:) .* inMv2(5,:) + inMv1(7,:) .* inMv2(6,:) + inMv1(8,:) .* inMv2(7,:);
    outMv(70,:) = inMv1(5,:) .* inMv2(1,:) - inMv1(6,:) .* inMv2(2,:) - inMv1(7,:) .* inMv2(3,:) - inMv1(8,:) .* inMv2(4,:);
end
