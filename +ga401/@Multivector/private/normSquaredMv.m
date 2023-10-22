
% ------------------------------------------------
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
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:) + inMv(3,:) .* inMv(3,:) + inMv(4,:) .* inMv(4,:) + inMv(9,:) .* inMv(9,:) + inMv(5,:) .* inMv(5,:) + inMv(11,:) .* inMv(11,:) + inMv(12,:) .* inMv(12,:) + inMv(20,:) .* inMv(20,:) + inMv(6,:) .* inMv(6,:) + inMv(14,:) .* inMv(14,:) + inMv(15,:) .* inMv(15,:) + inMv(23,:) .* inMv(23,:) + inMv(16,:) .* inMv(16,:) + inMv(25,:) .* inMv(25,:) + inMv(26,:) .* inMv(26,:) + inMv(31,:) .* inMv(31,:);
end
