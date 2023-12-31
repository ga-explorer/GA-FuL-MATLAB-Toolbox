% -----------------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outScalar = normSquaredMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:) - inMv(2,:) .* inMv(2,:) - inMv(3,:) .* inMv(3,:) + inMv(7,:) .* inMv(7,:) + inMv(5,:) .* inMv(5,:) - inMv(10,:) .* inMv(10,:) - inMv(11,:) .* inMv(11,:) + inMv(18,:) .* inMv(18,:) + inMv(6,:) .* inMv(6,:) - inMv(13,:) .* inMv(13,:) - inMv(14,:) .* inMv(14,:) + inMv(21,:) .* inMv(21,:) + inMv(16,:) .* inMv(16,:) - inMv(24,:) .* inMv(24,:) - inMv(25,:) .* inMv(25,:) + inMv(29,:) .* inMv(29,:);
end
