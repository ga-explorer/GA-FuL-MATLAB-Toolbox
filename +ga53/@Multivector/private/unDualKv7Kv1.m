% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = unDualKv7Kv1(inMv)
    arguments
        inMv (8,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(1,:) = inMv(8,:);
    outMv(2,:) = -inMv(7,:);
    outMv(3,:) = inMv(6,:);
    outMv(4,:) = inMv(5,:);
    outMv(5,:) = -inMv(4,:);
    outMv(6,:) = inMv(3,:);
    outMv(7,:) = -inMv(2,:);
    outMv(8,:) = inMv(1,:);
end
