function disp2(x, msg)
    % disp2  Extended text display function for MATLAB/.NET objects
    %
    % Usage:
    %   disp2(x)
    %   disp2(x, msg)   % msg is a string shown alongside x

    % Check if a message was provided AND is a string
    if nargin == 2 && (isstring(msg) || ischar(msg))
        % Display msg and x on the same line
        fprintf('%s: ', msg);

        % Then fall through to normal x-display logic
    end

    % ---- Original logic below ----
    if isa(x, 'System.Object')
        try
            str = char(x.ToString());
            fprintf('%s\n', str);
        catch
            fprintf('[.NET object could not convert using ToString]\n');
        end
    else
        % Call the original MATLAB disp
        builtin('disp', x);
    end
end
