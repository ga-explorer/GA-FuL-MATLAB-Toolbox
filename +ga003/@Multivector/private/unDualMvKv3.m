% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = unDualMvKv3(inMv)
    arguments
        inMv (8,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
end
