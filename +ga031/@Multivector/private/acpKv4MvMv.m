% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpKv4MvMv(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (16,:) double
    end
    
    sampleCount1 = size(inMv1, 2);
    sampleCount2 = size(inMv2, 2);
    
    if (sampleCount1 ~= sampleCount2 && sampleCount1 ~= 1 && sampleCount2 ~= 1)
        error('Number of columns in both inputs must either match or equal 1');
    end
    
    sampleCount = max(sampleCount1, sampleCount2);
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(9,:) = -inMv1(1,:) .* inMv2(8,:);
    outMv(10,:) = inMv1(1,:) .* inMv2(7,:);
    outMv(11,:) = -inMv1(1,:) .* inMv2(6,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(1,:);
end
