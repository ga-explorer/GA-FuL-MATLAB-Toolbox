
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = rcpKv4MvMv(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (16,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([16, sampleCount], 'double');
    
    outMv(3,:) = -inMv1(1,:) .* inMv2(14,:);
    outMv(6,:) = -inMv1(1,:) .* inMv2(11,:);
    outMv(8,:) = inMv1(1,:) .* inMv2(9,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(7,:);
    outMv(12,:) = inMv1(1,:) .* inMv2(5,:);
    outMv(13,:) = -inMv1(1,:) .* inMv2(4,:);
    outMv(15,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(16,:) = inMv1(1,:) .* inMv2(1,:);
end
