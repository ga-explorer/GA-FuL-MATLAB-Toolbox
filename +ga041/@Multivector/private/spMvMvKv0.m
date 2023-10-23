% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = spMvMvKv0(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (32,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:) - inMv1(2,:) .* inMv2(2,:) - inMv1(3,:) .* inMv2(3,:) - inMv1(7,:) .* inMv2(7,:) - inMv1(4,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(8,:) - inMv1(9,:) .* inMv2(9,:) + inMv1(17,:) .* inMv2(17,:) - inMv1(5,:) .* inMv2(5,:) - inMv1(10,:) .* inMv2(10,:) - inMv1(11,:) .* inMv2(11,:) + inMv1(18,:) .* inMv2(18,:) - inMv1(12,:) .* inMv2(12,:) + inMv1(19,:) .* inMv2(19,:) + inMv1(20,:) .* inMv2(20,:) + inMv1(27,:) .* inMv2(27,:);
end
