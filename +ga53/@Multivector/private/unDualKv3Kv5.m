% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = unDualKv3Kv5(inMv)
    arguments
        inMv (56,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([56, sampleCount], 'double');
    
    outMv(1,:) = inMv(56,:);
    outMv(2,:) = -inMv(55,:);
    outMv(3,:) = inMv(54,:);
    outMv(4,:) = inMv(53,:);
    outMv(5,:) = -inMv(52,:);
    outMv(6,:) = inMv(51,:);
    outMv(7,:) = inMv(50,:);
    outMv(8,:) = -inMv(49,:);
    outMv(9,:) = -inMv(48,:);
    outMv(10,:) = inMv(47,:);
    outMv(11,:) = -inMv(46,:);
    outMv(12,:) = inMv(45,:);
    outMv(13,:) = inMv(44,:);
    outMv(14,:) = -inMv(43,:);
    outMv(15,:) = inMv(42,:);
    outMv(16,:) = -inMv(41,:);
    outMv(17,:) = inMv(40,:);
    outMv(18,:) = -inMv(39,:);
    outMv(19,:) = inMv(38,:);
    outMv(20,:) = -inMv(37,:);
    outMv(21,:) = inMv(36,:);
    outMv(22,:) = -inMv(35,:);
    outMv(23,:) = inMv(34,:);
    outMv(24,:) = inMv(33,:);
    outMv(25,:) = -inMv(32,:);
    outMv(26,:) = inMv(31,:);
    outMv(27,:) = -inMv(30,:);
    outMv(28,:) = -inMv(29,:);
    outMv(29,:) = inMv(28,:);
    outMv(30,:) = -inMv(27,:);
    outMv(31,:) = inMv(26,:);
    outMv(32,:) = -inMv(25,:);
    outMv(33,:) = inMv(24,:);
    outMv(34,:) = -inMv(23,:);
    outMv(35,:) = inMv(22,:);
    outMv(36,:) = -inMv(21,:);
    outMv(37,:) = inMv(20,:);
    outMv(38,:) = inMv(19,:);
    outMv(39,:) = -inMv(18,:);
    outMv(40,:) = inMv(17,:);
    outMv(41,:) = -inMv(16,:);
    outMv(42,:) = inMv(15,:);
    outMv(43,:) = -inMv(14,:);
    outMv(44,:) = inMv(13,:);
    outMv(45,:) = -inMv(12,:);
    outMv(46,:) = inMv(11,:);
    outMv(47,:) = inMv(10,:);
    outMv(48,:) = -inMv(9,:);
    outMv(49,:) = inMv(8,:);
    outMv(50,:) = -inMv(7,:);
    outMv(51,:) = inMv(6,:);
    outMv(52,:) = -inMv(5,:);
    outMv(53,:) = inMv(4,:);
    outMv(54,:) = -inMv(3,:);
    outMv(55,:) = inMv(2,:);
    outMv(56,:) = inMv(1,:);
end
