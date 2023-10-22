
% ------------------------------------------------
%
% The Geometric Algebra Fulcrum (GA-FuL) MATLAB Toolbox
% 
% Copyright (c) 2023 Ahmad Hosny Eid
%
% MIT License
%
% ------------------------------------------------

function outMv = conjugateMvMv(inMv)
    arguments
        inMv (32,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outMv = zeros([32, sampleCount], 'double');
    
    outMv(1,:) = inMv(1,:);
    outMv(2,:) = -inMv(2,:);
    outMv(3,:) = -inMv(3,:);
    outMv(5,:) = inMv(5,:);
    outMv(6,:) = inMv(6,:);
    outMv(7,:) = -inMv(7,:);
    outMv(10,:) = inMv(10,:);
    outMv(11,:) = inMv(11,:);
    outMv(13,:) = inMv(13,:);
    outMv(14,:) = inMv(14,:);
    outMv(16,:) = -inMv(16,:);
    outMv(18,:) = -inMv(18,:);
    outMv(21,:) = -inMv(21,:);
    outMv(24,:) = inMv(24,:);
    outMv(25,:) = inMv(25,:);
    outMv(29,:) = inMv(29,:);
end
