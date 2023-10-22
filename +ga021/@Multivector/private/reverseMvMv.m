
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = reverseMvMv(inMv)
    arguments
        inMv (8,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([8, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = inMv(2,:);
    outMv(3,:) = inMv(3,:);
    outMv(4,:) = inMv(4,:);
    outMv(5,:) = -inMv(5,:);
    outMv(6,:) = -inMv(6,:);
    outMv(7,:) = -inMv(7,:);
    outMv(8,:) = -inMv(8,:);
end
