% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outScalar = normSquaredKv3(inMv)
    arguments
        inMv (4,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = -inMv(1,:) .* inMv(1,:) + inMv(2,:) .* inMv(2,:) + inMv(3,:) .* inMv(3,:) + inMv(4,:) .* inMv(4,:);
end
