function mazeBvh = polygonMaze(baseOuterRadius, sideCount, levelCount, maxDoorsPerLevel)
% generatePolygonMaze  Wraps the PolygonMazeComposer.Generate factory method
%
%   mazeBvh = generatePolygonMaze(baseOuterRadius, sideCount, levelCount, maxDoorsPerLevel)
%
%   Calls the C# static method:
%   GeometricAlgebraFulcrumLib.Modeling.Geometry.BasicShapes.Polytopes.Space2D.Float64.PolygonMazeComposer.Generate()
%
%   INPUTS:
%       baseOuterRadius   - (double) outer radius of the outermost polygon
%       sideCount         - (int32) number of sides per polygon
%       levelCount        - (int32) number of polygon layers
%       maxDoorsPerLevel  - (int32) maximum number of openings per level
%
%   OUTPUT:
%       mazeBvh           - A .NET object of type Float64LineSegment2DBvh
%
%   REQUIREMENTS:
%       Ensure the .NET assembly GeometricAlgebraFulcrumLib.Modeling.dll is added via NET.addAssembly.

    % Ensure numeric types match .NET expectations
    baseOuterRadius   = double(baseOuterRadius);
    sideCount         = int32(sideCount);
    levelCount        = int32(levelCount);
    maxDoorsPerLevel  = int32(maxDoorsPerLevel);

    % Call the static C# factory method
    mazeBvh = ...
        GeometricAlgebraFulcrumLib.Modeling.Geometry.BasicShapes.Polytopes.Space2D.Float64.PolygonMazeComposer. ...
        Generate(baseOuterRadius, sideCount, levelCount, maxDoorsPerLevel);
end
