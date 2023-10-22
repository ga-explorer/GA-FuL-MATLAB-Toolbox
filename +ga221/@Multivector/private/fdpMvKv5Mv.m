
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = fdpMvKv5Mv(inMv1, inMv2)
    arguments
        inMv1 (32,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(4,:) = inMv1(29,:) .* inMv2(1,:);
    outMv(8,:) = -inMv1(25,:) .* inMv2(1,:);
    outMv(9,:) = inMv1(24,:) .* inMv2(1,:);
    outMv(12,:) = -inMv1(21,:) .* inMv2(1,:);
    outMv(15,:) = inMv1(18,:) .* inMv2(1,:);
    outMv(17,:) = -inMv1(16,:) .* inMv2(1,:);
    outMv(19,:) = inMv1(14,:) .* inMv2(1,:);
    outMv(20,:) = -inMv1(13,:) .* inMv2(1,:);
    outMv(22,:) = -inMv1(11,:) .* inMv2(1,:);
    outMv(23,:) = inMv1(10,:) .* inMv2(1,:);
    outMv(26,:) = -inMv1(7,:) .* inMv2(1,:);
    outMv(27,:) = inMv1(6,:) .* inMv2(1,:);
    outMv(28,:) = -inMv1(5,:) .* inMv2(1,:);
    outMv(30,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(31,:) = -inMv1(2,:) .* inMv2(1,:);
    outMv(32,:) = inMv1(1,:) .* inMv2(1,:);
end
