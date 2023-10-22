
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpKv3Kv0Kv3(inMv1, inMv2)
    arguments
        inMv1 (56,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([56, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(2,:) = inMv1(2,:) .* inMv2(1,:);
    outMv(3,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(4,:) = inMv1(4,:) .* inMv2(1,:);
    outMv(5,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(6,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(7,:) = inMv1(7,:) .* inMv2(1,:);
    outMv(8,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(9,:) = inMv1(9,:) .* inMv2(1,:);
    outMv(10,:) = inMv1(10,:) .* inMv2(1,:);
    outMv(11,:) = inMv1(11,:) .* inMv2(1,:);
    outMv(12,:) = inMv1(12,:) .* inMv2(1,:);
    outMv(13,:) = inMv1(13,:) .* inMv2(1,:);
    outMv(14,:) = inMv1(14,:) .* inMv2(1,:);
    outMv(15,:) = inMv1(15,:) .* inMv2(1,:);
    outMv(16,:) = inMv1(16,:) .* inMv2(1,:);
    outMv(17,:) = inMv1(17,:) .* inMv2(1,:);
    outMv(18,:) = inMv1(18,:) .* inMv2(1,:);
    outMv(19,:) = inMv1(19,:) .* inMv2(1,:);
    outMv(20,:) = inMv1(20,:) .* inMv2(1,:);
    outMv(21,:) = inMv1(21,:) .* inMv2(1,:);
    outMv(22,:) = inMv1(22,:) .* inMv2(1,:);
    outMv(23,:) = inMv1(23,:) .* inMv2(1,:);
    outMv(24,:) = inMv1(24,:) .* inMv2(1,:);
    outMv(25,:) = inMv1(25,:) .* inMv2(1,:);
    outMv(26,:) = inMv1(26,:) .* inMv2(1,:);
    outMv(27,:) = inMv1(27,:) .* inMv2(1,:);
    outMv(28,:) = inMv1(28,:) .* inMv2(1,:);
    outMv(29,:) = inMv1(29,:) .* inMv2(1,:);
    outMv(30,:) = inMv1(30,:) .* inMv2(1,:);
    outMv(31,:) = inMv1(31,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(32,:) .* inMv2(1,:);
    outMv(33,:) = inMv1(33,:) .* inMv2(1,:);
    outMv(34,:) = inMv1(34,:) .* inMv2(1,:);
    outMv(35,:) = inMv1(35,:) .* inMv2(1,:);
    outMv(36,:) = inMv1(36,:) .* inMv2(1,:);
    outMv(37,:) = inMv1(37,:) .* inMv2(1,:);
    outMv(38,:) = inMv1(38,:) .* inMv2(1,:);
    outMv(39,:) = inMv1(39,:) .* inMv2(1,:);
    outMv(40,:) = inMv1(40,:) .* inMv2(1,:);
    outMv(41,:) = inMv1(41,:) .* inMv2(1,:);
    outMv(42,:) = inMv1(42,:) .* inMv2(1,:);
    outMv(43,:) = inMv1(43,:) .* inMv2(1,:);
    outMv(44,:) = inMv1(44,:) .* inMv2(1,:);
    outMv(45,:) = inMv1(45,:) .* inMv2(1,:);
    outMv(46,:) = inMv1(46,:) .* inMv2(1,:);
    outMv(47,:) = inMv1(47,:) .* inMv2(1,:);
    outMv(48,:) = inMv1(48,:) .* inMv2(1,:);
    outMv(49,:) = inMv1(49,:) .* inMv2(1,:);
    outMv(50,:) = inMv1(50,:) .* inMv2(1,:);
    outMv(51,:) = inMv1(51,:) .* inMv2(1,:);
    outMv(52,:) = inMv1(52,:) .* inMv2(1,:);
    outMv(53,:) = inMv1(53,:) .* inMv2(1,:);
    outMv(54,:) = inMv1(54,:) .* inMv2(1,:);
    outMv(55,:) = inMv1(55,:) .* inMv2(1,:);
    outMv(56,:) = inMv1(56,:) .* inMv2(1,:);
end
