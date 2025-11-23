% --- Initialize GA-FuL .NET assembly ---
gafulInit;

% --- Example signal ---
x = linspace(0, 4*pi, 400);
noisy = sin(x) + 0.3*randn(size(x));

% --- Smooth it ---
y = medianFilterDotNet(noisy, 5);

% --- Plot ---
plot(x, noisy, 'r.', x, y, 'b-', 'LineWidth', 1.5);
legend('Noisy data', 'Smoothed (SG)');
title('Median Filtering via .NET Core');
