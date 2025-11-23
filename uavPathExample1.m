% Initialize GA-FuL library .NET assemblies
gafulInit;

% Generate maze: maze contains 12 levels each containing 6 sides with max
% of 15 doors per level
obstacles = polygonMaze(1, 6, 12, 15);

% Solve the maze using Voronoi diagram
mazeSolver = solveMazeViaVoronoi(obstacles, 1, 100, 0.15, 0.5);

% Find all paths using A* applied to the free edges of the Voronoi diagram
% after removing all Voronoi edges that intersect with maze
pathFinder = mazeSolver.AdjacencyGraph.GetAStarPathFinder();

% Find the shortest path (through Voronoi edges) between two points
% - Start point: (0, 0)
% - End point: (-10, 0.5)
% - Safety distace to obstacles: 0.01
voronoiPath = pathFinder.FindPath(0, 0, -10, 0.5, obstacles, 0.01);
voronoiPathMetrics = voronoiPath.GetMetrics(obstacles);

% The Voronoi path is the source path to be optimized, we now can generate 
% many paths near to it and find the best one among them

% Plot maze with Voronoi path
% we first need to convert .NET arrays into MATLAB arrays
obstaclesArray = double(obstacles.ToArray2D());
voronoiPathArray = double(voronoiPath.ToArray2D());

plotLineSegments([obstaclesArray; voronoiPathArray]);

% Display the Voronoi path points and metrics
voronoiPath.ToString()
voronoiPathMetrics.ToString()

% Here we will use random search to find the best path, but the goal is to
% use metaheuristic optimization to find the best path

% Generate random initial candidate path
% - Safety distance to obstacles: 0.01
bestPath = voronoiPath.CreateRandom(obstacles, 0.01);
bestPathMetrics = bestPath.GetMetrics(obstacles);

geneSize = 2 * (voronoiPath.Count - 2);
itrCount = 10000;
while (itrCount > 0)
    itrCount = itrCount - 1;

    candidateGene = rand(geneSize, 1);

    % Except for the two end points, each point on the Voronoi path is 
    % shifted randomly inside the largest possible circle around the point.
    % The largest circle possible around a point has a radius equal to the
    % distance to the nearest obstacle from the path point minus a safety 
    % distance 
    candidatePath = voronoiPath.CreateFromGene(candidateGene, obstacles, 0.1);
    candidatePathMetrics = candidatePath.GetMetrics(obstacles);

    % If the minimum distance between the candidate path and obstacles is
    % smaller than a given safety distance, ignore this candidate solution
    if (candidatePathMetrics.GetMinObstacleDistance() < 0.05)
        continue;
    end

    % If the candidate path objective is better than the best-so-far
    % objective, update the best-so-far path
    if (candidatePathMetrics.GetMaxVertexAngleDegrees() < bestPathMetrics.GetMaxVertexAngleDegrees()) 
        bestPath = candidatePath;
        bestPathMetrics = candidatePathMetrics;
    end
end

% Plot maze with best found path
bestPathArray = double(bestPath.ToArray2D());
plotLineSegments([obstaclesArray; bestPathArray]);

% Display the best found path points and metrics
disp2(bestPathMetrics)
%bestPath.ToString()
%bestPathMetrics.ToString()