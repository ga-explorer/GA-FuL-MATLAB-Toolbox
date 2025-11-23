function plotLineSegments(lineSegments)
%PLOTLINESEGMMENTS  Plot 2D line segments with equal aspect ratio and margins.
%
%   PLOTLINESEGMMENTS(lineSegments) takes an n-by-4 matrix where each row
%   represents a 2D line segment defined by its endpoints:
%
%       [x1, y1, x2, y2]
%
%   The function plots all line segments in a single figure using a 1:1
%   aspect ratio, automatically adjusts the axes to fit all segments, and
%   adds a small margin around the data for better visualization.
%
%   Example:
%       % Define three line segments
%       lineSegments = [0 0 1 1;
%                       1 0 2 1;
%                      -1 1 0 2];
%       plotLineSegments(lineSegments);
%
%   See also: plot, axis, xlim, ylim
%
%   Author: Your Name
%   Date:   2025-11-10
%   Version: 1.0

    %---------------------------%
    % Validate input arguments  %
    %---------------------------%
    if nargin < 1
        error('plotLineSegments:MissingInput', ...
              'Input argument "lineSegments" is required.');
    end

    % Check that input is numeric
    if ~isnumeric(lineSegments)
        error('plotLineSegments:InvalidType', ...
              'Input "lineSegments" must be a numeric matrix.');
    end

    % Check matrix size (n-by-4)
    [nRows, nCols] = size(lineSegments);
    if nCols ~= 4
        error('plotLineSegments:InvalidSize', ...
              'Input "lineSegments" must be an n-by-4 matrix.');
    end
    if nRows == 0
        warning('plotLineSegments:EmptyInput', ...
                'Input "lineSegments" is empty. Nothing to plot.');
        return;
    end

    % Check for NaN or Inf values
    if any(~isfinite(lineSegments(:)))
        error('plotLineSegments:InvalidValues', ...
              'Input "lineSegments" contains NaN or Inf values.');
    end

    %---------------------------------------%
    % Prepare data for vectorized plotting  %
    %---------------------------------------%
    % Create X and Y arrays with NaN separators
    X = [lineSegments(:,1) lineSegments(:,3) NaN(size(lineSegments,1),1)]';
    Y = [lineSegments(:,2) lineSegments(:,4) NaN(size(lineSegments,1),1)]';

    %---------------------------------------%
    % Plot all line segments efficiently    %
    %---------------------------------------%
    figure; hold on; axis equal;
    plot(X(:), Y(:), 'b-', 'LineWidth', 1.5);

    %---------------------------------------%
    % Compute and apply plot margins        %
    %---------------------------------------%
    x_all = [lineSegments(:,1); lineSegments(:,3)];
    y_all = [lineSegments(:,2); lineSegments(:,4)];

    % Use 5% margin of the range (can be adjusted)
    x_margin = 0.05 * range(x_all);
    y_margin = 0.05 * range(y_all);

    % Handle degenerate cases (e.g., all x or y are equal)
    if x_margin == 0, x_margin = 1; end
    if y_margin == 0, y_margin = 1; end

    xlim([min(x_all)-x_margin, max(x_all)+x_margin]);
    ylim([min(y_all)-y_margin, max(y_all)+y_margin]);

    %---------------------------------------%
    % Enhance plot appearance               %
    %---------------------------------------%
    xlabel('X');
    ylabel('Y');
    title('2D Line Segments');
    grid on;
    box on;

    % Optionally return to command window
    fprintf('Plotted %d line segments.\n', nRows);
end
