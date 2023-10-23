% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = lcpKv2MvMv(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (16,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv1(4,:) .* inMv2(9,:);
    outMv(3,:) = -inMv1(4,:) .* inMv2(13,:);
    outMv(4,:) = -inMv1(4,:) .* inMv2(14,:);
    outMv(8,:) = inMv1(4,:) .* inMv2(16,:);
end
