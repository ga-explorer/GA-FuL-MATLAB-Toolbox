
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = acpMvKv4Mv(inMv1, inMv2)
    arguments
        inMv1 (16,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(16,:) .* inMv2(1,:);
    outMv(6,:) = -inMv1(11,:) .* inMv2(1,:);
    outMv(7,:) = inMv1(10,:) .* inMv2(1,:);
    outMv(8,:) = inMv1(9,:) .* inMv2(1,:);
    outMv(9,:) = -inMv1(8,:) .* inMv2(1,:);
    outMv(10,:) = -inMv1(7,:) .* inMv2(1,:);
    outMv(11,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(1,:);
end
