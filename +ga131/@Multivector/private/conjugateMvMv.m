
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
    outMv(4,:) = -inMv(4,:);
    outMv(6,:) = inMv(6,:);
    outMv(7,:) = -inMv(7,:);
    outMv(8,:) = -inMv(8,:);
    outMv(9,:) = -inMv(9,:);
    outMv(13,:) = inMv(13,:);
    outMv(14,:) = inMv(14,:);
    outMv(15,:) = inMv(15,:);
    outMv(17,:) = inMv(17,:);
    outMv(21,:) = -inMv(21,:);
    outMv(22,:) = -inMv(22,:);
    outMv(23,:) = -inMv(23,:);
    outMv(28,:) = -inMv(28,:);
end
