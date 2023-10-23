% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = conjugateKv1Kv1(inMv)
    arguments
        inMv (4,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(1,:) = -inMv(1,:);
    outMv(2,:) = -inMv(2,:);
    outMv(3,:) = inMv(3,:);
    outMv(4,:) = inMv(4,:);
end
