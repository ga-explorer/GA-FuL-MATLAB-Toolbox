% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spKv3MvKv0(inMv1, inMv2)
    arguments
        inMv1 (56,:) double
        inMv2 (256,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(38,:) - inMv1(2,:) .* inMv2(39,:) - inMv1(3,:) .* inMv2(40,:) - inMv1(4,:) .* inMv2(41,:) - inMv1(5,:) .* inMv2(42,:) - inMv1(6,:) .* inMv2(43,:) - inMv1(7,:) .* inMv2(44,:) + inMv1(8,:) .* inMv2(45,:) + inMv1(9,:) .* inMv2(46,:) + inMv1(10,:) .* inMv2(47,:) - inMv1(11,:) .* inMv2(48,:) - inMv1(12,:) .* inMv2(49,:) - inMv1(13,:) .* inMv2(50,:) + inMv1(14,:) .* inMv2(51,:) + inMv1(15,:) .* inMv2(52,:) + inMv1(16,:) .* inMv2(53,:) + inMv1(17,:) .* inMv2(54,:) + inMv1(18,:) .* inMv2(55,:) + inMv1(19,:) .* inMv2(56,:) - inMv1(20,:) .* inMv2(57,:) - inMv1(21,:) .* inMv2(58,:) - inMv1(22,:) .* inMv2(59,:) - inMv1(23,:) .* inMv2(60,:) + inMv1(24,:) .* inMv2(61,:) + inMv1(25,:) .* inMv2(62,:) + inMv1(26,:) .* inMv2(63,:) + inMv1(27,:) .* inMv2(64,:) + inMv1(28,:) .* inMv2(65,:) + inMv1(29,:) .* inMv2(66,:) - inMv1(30,:) .* inMv2(67,:) + inMv1(31,:) .* inMv2(68,:) + inMv1(32,:) .* inMv2(69,:) + inMv1(33,:) .* inMv2(70,:) - inMv1(34,:) .* inMv2(71,:) - inMv1(35,:) .* inMv2(72,:) - inMv1(36,:) .* inMv2(73,:) - inMv1(37,:) .* inMv2(74,:) - inMv1(38,:) .* inMv2(75,:) + inMv1(39,:) .* inMv2(76,:) + inMv1(40,:) .* inMv2(77,:) + inMv1(41,:) .* inMv2(78,:) + inMv1(42,:) .* inMv2(79,:) + inMv1(43,:) .* inMv2(80,:) + inMv1(44,:) .* inMv2(81,:) - inMv1(45,:) .* inMv2(82,:) + inMv1(46,:) .* inMv2(83,:) + inMv1(47,:) .* inMv2(84,:) + inMv1(48,:) .* inMv2(85,:) - inMv1(49,:) .* inMv2(86,:) - inMv1(50,:) .* inMv2(87,:) + inMv1(51,:) .* inMv2(88,:) + inMv1(52,:) .* inMv2(89,:) + inMv1(53,:) .* inMv2(90,:) - inMv1(54,:) .* inMv2(91,:) - inMv1(55,:) .* inMv2(92,:) - inMv1(56,:) .* inMv2(93,:);
end
