
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = dualKv4Kv4(inMv)
    arguments
        inMv (70,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([70, sampleCount], 'double');
    
    outMv(1,:) = -inMv(70,:);
    outMv(2,:) = inMv(69,:);
    outMv(3,:) = inMv(68,:);
    outMv(4,:) = -inMv(67,:);
    outMv(5,:) = inMv(66,:);
    outMv(6,:) = -inMv(65,:);
    outMv(7,:) = -inMv(64,:);
    outMv(8,:) = inMv(63,:);
    outMv(9,:) = -inMv(62,:);
    outMv(10,:) = inMv(61,:);
    outMv(11,:) = -inMv(60,:);
    outMv(12,:) = inMv(59,:);
    outMv(13,:) = -inMv(58,:);
    outMv(14,:) = inMv(57,:);
    outMv(15,:) = -inMv(56,:);
    outMv(16,:) = inMv(55,:);
    outMv(17,:) = inMv(54,:);
    outMv(18,:) = -inMv(53,:);
    outMv(19,:) = inMv(52,:);
    outMv(20,:) = -inMv(51,:);
    outMv(21,:) = inMv(50,:);
    outMv(22,:) = -inMv(49,:);
    outMv(23,:) = inMv(48,:);
    outMv(24,:) = -inMv(47,:);
    outMv(25,:) = inMv(46,:);
    outMv(26,:) = inMv(45,:);
    outMv(27,:) = -inMv(44,:);
    outMv(28,:) = inMv(43,:);
    outMv(29,:) = -inMv(42,:);
    outMv(30,:) = inMv(41,:);
    outMv(31,:) = -inMv(40,:);
    outMv(32,:) = inMv(39,:);
    outMv(33,:) = -inMv(38,:);
    outMv(34,:) = inMv(37,:);
    outMv(35,:) = inMv(36,:);
    outMv(36,:) = -inMv(35,:);
    outMv(37,:) = -inMv(34,:);
    outMv(38,:) = inMv(33,:);
    outMv(39,:) = -inMv(32,:);
    outMv(40,:) = inMv(31,:);
    outMv(41,:) = -inMv(30,:);
    outMv(42,:) = inMv(29,:);
    outMv(43,:) = -inMv(28,:);
    outMv(44,:) = inMv(27,:);
    outMv(45,:) = -inMv(26,:);
    outMv(46,:) = -inMv(25,:);
    outMv(47,:) = inMv(24,:);
    outMv(48,:) = -inMv(23,:);
    outMv(49,:) = inMv(22,:);
    outMv(50,:) = -inMv(21,:);
    outMv(51,:) = inMv(20,:);
    outMv(52,:) = -inMv(19,:);
    outMv(53,:) = inMv(18,:);
    outMv(54,:) = -inMv(17,:);
    outMv(55,:) = -inMv(16,:);
    outMv(56,:) = inMv(15,:);
    outMv(57,:) = -inMv(14,:);
    outMv(58,:) = inMv(13,:);
    outMv(59,:) = -inMv(12,:);
    outMv(60,:) = inMv(11,:);
    outMv(61,:) = -inMv(10,:);
    outMv(62,:) = inMv(9,:);
    outMv(63,:) = -inMv(8,:);
    outMv(64,:) = inMv(7,:);
    outMv(65,:) = inMv(6,:);
    outMv(66,:) = -inMv(5,:);
    outMv(67,:) = inMv(4,:);
    outMv(68,:) = -inMv(3,:);
    outMv(69,:) = -inMv(2,:);
    outMv(70,:) = inMv(1,:);
end
