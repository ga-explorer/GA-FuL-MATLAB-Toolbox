% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outScalar = pseudoNormSquaredKv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(3,:) .* inMv(3,:) + inMv(5,:) .* inMv(5,:) + inMv(6,:) .* inMv(6,:) + inMv(8,:) .* inMv(8,:) + inMv(9,:) .* inMv(9,:) + inMv(10,:) .* inMv(10,:);
end
