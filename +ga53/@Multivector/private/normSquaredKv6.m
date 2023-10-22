
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outScalar = normSquaredKv6(inMv)
    arguments
        inMv (28,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = -inMv(1,:) .* inMv(1,:) - inMv(2,:) .* inMv(2,:) - inMv(3,:) .* inMv(3,:) - inMv(4,:) .* inMv(4,:) + inMv(5,:) .* inMv(5,:) + inMv(6,:) .* inMv(6,:) + inMv(7,:) .* inMv(7,:) - inMv(8,:) .* inMv(8,:) - inMv(9,:) .* inMv(9,:) - inMv(10,:) .* inMv(10,:) + inMv(11,:) .* inMv(11,:) + inMv(12,:) .* inMv(12,:) + inMv(13,:) .* inMv(13,:) - inMv(14,:) .* inMv(14,:) - inMv(15,:) .* inMv(15,:) + inMv(16,:) .* inMv(16,:) + inMv(17,:) .* inMv(17,:) + inMv(18,:) .* inMv(18,:) - inMv(19,:) .* inMv(19,:) + inMv(20,:) .* inMv(20,:) + inMv(21,:) .* inMv(21,:) + inMv(22,:) .* inMv(22,:) + inMv(23,:) .* inMv(23,:) + inMv(24,:) .* inMv(24,:) + inMv(25,:) .* inMv(25,:) - inMv(26,:) .* inMv(26,:) - inMv(27,:) .* inMv(27,:) - inMv(28,:) .* inMv(28,:);
end
