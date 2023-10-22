
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = dualKv4Kv1(inMv)
    arguments
        inMv (5,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(1,:) = -inMv(5,:);
    outMv(2,:) = -inMv(4,:);
    outMv(3,:) = inMv(3,:);
    outMv(4,:) = -inMv(2,:);
    outMv(5,:) = inMv(1,:);
end
