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
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:) + inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(4,:) - inMv1(9,:) .* inMv2(9,:) + inMv1(5,:) .* inMv2(5,:) - inMv1(11,:) .* inMv2(11,:) - inMv1(12,:) .* inMv2(12,:) - inMv1(20,:) .* inMv2(20,:) + inMv1(6,:) .* inMv2(6,:) - inMv1(14,:) .* inMv2(14,:) - inMv1(15,:) .* inMv2(15,:) - inMv1(23,:) .* inMv2(23,:) - inMv1(16,:) .* inMv2(16,:) - inMv1(25,:) .* inMv2(25,:) - inMv1(26,:) .* inMv2(26,:) + inMv1(31,:) .* inMv2(31,:);
end
