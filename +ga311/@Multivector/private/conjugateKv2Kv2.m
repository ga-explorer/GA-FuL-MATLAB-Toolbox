% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = conjugateKv2Kv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(2,:) = inMv(2,:);
    outMv(4,:) = inMv(4,:);
    outMv(6,:) = -inMv(6,:);
    outMv(7,:) = inMv(7,:);
    outMv(9,:) = -inMv(9,:);
    outMv(10,:) = -inMv(10,:);
end
