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
        inMv1 (16,:) double
        inMv2 (16,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:) + inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(4,:) - inMv1(8,:) .* inMv2(8,:) + inMv1(5,:) .* inMv2(5,:) - inMv1(10,:) .* inMv2(10,:) - inMv1(11,:) .* inMv2(11,:) - inMv1(15,:) .* inMv2(15,:);
end
