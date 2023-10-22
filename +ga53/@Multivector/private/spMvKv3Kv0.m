
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spMvKv3Kv0(inMv1, inMv2)
    arguments
        inMv1 (256,:) double
        inMv2 (56,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(38,:) .* inMv2(1,:) - inMv1(39,:) .* inMv2(2,:) - inMv1(40,:) .* inMv2(3,:) - inMv1(41,:) .* inMv2(4,:) - inMv1(42,:) .* inMv2(5,:) - inMv1(43,:) .* inMv2(6,:) - inMv1(44,:) .* inMv2(7,:) + inMv1(45,:) .* inMv2(8,:) + inMv1(46,:) .* inMv2(9,:) + inMv1(47,:) .* inMv2(10,:) - inMv1(48,:) .* inMv2(11,:) - inMv1(49,:) .* inMv2(12,:) - inMv1(50,:) .* inMv2(13,:) + inMv1(51,:) .* inMv2(14,:) + inMv1(52,:) .* inMv2(15,:) + inMv1(53,:) .* inMv2(16,:) + inMv1(54,:) .* inMv2(17,:) + inMv1(55,:) .* inMv2(18,:) + inMv1(56,:) .* inMv2(19,:) - inMv1(57,:) .* inMv2(20,:) - inMv1(58,:) .* inMv2(21,:) - inMv1(59,:) .* inMv2(22,:) - inMv1(60,:) .* inMv2(23,:) + inMv1(61,:) .* inMv2(24,:) + inMv1(62,:) .* inMv2(25,:) + inMv1(63,:) .* inMv2(26,:) + inMv1(64,:) .* inMv2(27,:) + inMv1(65,:) .* inMv2(28,:) + inMv1(66,:) .* inMv2(29,:) - inMv1(67,:) .* inMv2(30,:) + inMv1(68,:) .* inMv2(31,:) + inMv1(69,:) .* inMv2(32,:) + inMv1(70,:) .* inMv2(33,:) - inMv1(71,:) .* inMv2(34,:) - inMv1(72,:) .* inMv2(35,:) - inMv1(73,:) .* inMv2(36,:) - inMv1(74,:) .* inMv2(37,:) - inMv1(75,:) .* inMv2(38,:) + inMv1(76,:) .* inMv2(39,:) + inMv1(77,:) .* inMv2(40,:) + inMv1(78,:) .* inMv2(41,:) + inMv1(79,:) .* inMv2(42,:) + inMv1(80,:) .* inMv2(43,:) + inMv1(81,:) .* inMv2(44,:) - inMv1(82,:) .* inMv2(45,:) + inMv1(83,:) .* inMv2(46,:) + inMv1(84,:) .* inMv2(47,:) + inMv1(85,:) .* inMv2(48,:) - inMv1(86,:) .* inMv2(49,:) - inMv1(87,:) .* inMv2(50,:) + inMv1(88,:) .* inMv2(51,:) + inMv1(89,:) .* inMv2(52,:) + inMv1(90,:) .* inMv2(53,:) - inMv1(91,:) .* inMv2(54,:) - inMv1(92,:) .* inMv2(55,:) - inMv1(93,:) .* inMv2(56,:);
end
