
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outScalar = normSquaredKv3(inMv)
    arguments
        inMv (56,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = -inMv(1,:) .* inMv(1,:) + inMv(2,:) .* inMv(2,:) + inMv(3,:) .* inMv(3,:) + inMv(4,:) .* inMv(4,:) + inMv(5,:) .* inMv(5,:) + inMv(6,:) .* inMv(6,:) + inMv(7,:) .* inMv(7,:) - inMv(8,:) .* inMv(8,:) - inMv(9,:) .* inMv(9,:) - inMv(10,:) .* inMv(10,:) + inMv(11,:) .* inMv(11,:) + inMv(12,:) .* inMv(12,:) + inMv(13,:) .* inMv(13,:) - inMv(14,:) .* inMv(14,:) - inMv(15,:) .* inMv(15,:) - inMv(16,:) .* inMv(16,:) - inMv(17,:) .* inMv(17,:) - inMv(18,:) .* inMv(18,:) - inMv(19,:) .* inMv(19,:) + inMv(20,:) .* inMv(20,:) + inMv(21,:) .* inMv(21,:) + inMv(22,:) .* inMv(22,:) + inMv(23,:) .* inMv(23,:) - inMv(24,:) .* inMv(24,:) - inMv(25,:) .* inMv(25,:) - inMv(26,:) .* inMv(26,:) - inMv(27,:) .* inMv(27,:) - inMv(28,:) .* inMv(28,:) - inMv(29,:) .* inMv(29,:) + inMv(30,:) .* inMv(30,:) - inMv(31,:) .* inMv(31,:) - inMv(32,:) .* inMv(32,:) - inMv(33,:) .* inMv(33,:) + inMv(34,:) .* inMv(34,:) + inMv(35,:) .* inMv(35,:) + inMv(36,:) .* inMv(36,:) + inMv(37,:) .* inMv(37,:) + inMv(38,:) .* inMv(38,:) - inMv(39,:) .* inMv(39,:) - inMv(40,:) .* inMv(40,:) - inMv(41,:) .* inMv(41,:) - inMv(42,:) .* inMv(42,:) - inMv(43,:) .* inMv(43,:) - inMv(44,:) .* inMv(44,:) + inMv(45,:) .* inMv(45,:) - inMv(46,:) .* inMv(46,:) - inMv(47,:) .* inMv(47,:) - inMv(48,:) .* inMv(48,:) + inMv(49,:) .* inMv(49,:) + inMv(50,:) .* inMv(50,:) - inMv(51,:) .* inMv(51,:) - inMv(52,:) .* inMv(52,:) - inMv(53,:) .* inMv(53,:) + inMv(54,:) .* inMv(54,:) + inMv(55,:) .* inMv(55,:) + inMv(56,:) .* inMv(56,:);
end
