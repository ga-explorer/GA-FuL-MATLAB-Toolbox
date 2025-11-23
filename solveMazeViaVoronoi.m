function solverObj = solveMazeViaVoronoi(mazeSegments, maxVoronoiSiteDistance, maxEdgeLength, minObstacleDistance, minLeafEdgeLength)
% solveMazeViaVoronoi  Wraps the VoronoiMazeSolver2D.Solve factory method
%
%   solverObj = solveVoronoiMaze2D(mazeSegments, maxVoronoiSiteDistance, maxEdgeLength, minObstacleDistance, minLeafEdgeLength)
%
%   Calls the C# static method:
%   GeometricAlgebraFulcrumLib.Modeling.Research.UAVs.VoronoiMazeSolver2D.Solve()
%
%   INPUTS:
%       mazeSegments            - (.NET object) Float64LineSegment2DBvh returned by generatePolygonMaze()
%       maxVoronoiSiteDistance  - (double) maximum distance between Voronoi sites
%       maxEdgeLength           - (double) maximum Voronoi edge length
%       minObstacleDistance     - (double) minimum distance from obstacles
%       minLeafEdgeLength       - (double) minimum leaf edge length
%
%   OUTPUT:
%       solverObj               - A .NET object of type VoronoiMazeSolver2D
%
%   REQUIREMENTS:
%       Ensure GeometricAlgebraFulcrumLib.dll is loaded via NET.addAssembly before calling.

    % Ensure numeric types match C# method signature
    maxVoronoiSiteDistance = double(maxVoronoiSiteDistance);
    maxEdgeLength          = double(maxEdgeLength);
    minObstacleDistance    = double(minObstacleDistance);
    minLeafEdgeLength      = double(minLeafEdgeLength);

    % Call static C# factory method
    solverObj = ...
        GeometricAlgebraFulcrumLib.Modeling.Research.UAVs.VoronoiMazeSolver2D. ...
        Solve(mazeSegments, ...
              maxVoronoiSiteDistance, ...
              maxEdgeLength, ...
              minObstacleDistance, ...
              minLeafEdgeLength);
end
