
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpMvKv2Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (6,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv1(9,:) .* inMv2(4,:);
    outMv(3,:) = -inMv1(13,:) .* inMv2(4,:);
    outMv(4,:) = -inMv1(14,:) .* inMv2(4,:);
    outMv(8,:) = inMv1(16,:) .* inMv2(4,:);
end
