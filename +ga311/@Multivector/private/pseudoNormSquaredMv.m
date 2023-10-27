% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outScalar = pseudoNormSquaredMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:) + inMv(2,:) .* inMv(2,:) + inMv(4,:) .* inMv(4,:) + inMv(8,:) .* inMv(8,:) + inMv(5,:) .* inMv(5,:) + inMv(10,:) .* inMv(10,:) + inMv(12,:) .* inMv(12,:) + inMv(19,:) .* inMv(19,:) + inMv(6,:) .* inMv(6,:) + inMv(13,:) .* inMv(13,:) + inMv(15,:) .* inMv(15,:) + inMv(22,:) .* inMv(22,:) + inMv(16,:) .* inMv(16,:) + inMv(24,:) .* inMv(24,:) + inMv(26,:) .* inMv(26,:) + inMv(30,:) .* inMv(30,:);
end
