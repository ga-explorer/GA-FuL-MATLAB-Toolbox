
% ------------------------------------------------
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
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(16,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(11,:);
    outMv(7,:) = -inMv1(1,:) .* inMv2(10,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(9,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(8,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(7,:);
    outMv(11,:) = -inMv1(1,:) .* inMv2(6,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(1,:);
end
