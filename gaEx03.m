gafulInit;

cgaGeo = defineGeometryCGA5();

% CGA null basis vectors
eo = cgaGeo.Eo;
ei = cgaGeo.Ei;

% define the Staübli robot link lengths
d1 = 480.0;
a3 = 425.0;
d4 = 425.0;

% CGA null vector of the desired position of end-effector
cgaP = cgaGeo.Encode.IpnsRound.Point(561.8479, 262.7685, 455.0104);

% point at the origin
cgaP0 = eo;

% compute p1 (translation of p0)
cgaP1 = cgaP0.TranslateBy(0, 0, d1);

% plane passing by p0, p1 and desired position of end-effector
plane = cgaP0.Op(cgaP1).Op(cgaP).Op(ei);

% sphere center = p1 and radius = a3
cgaSphere1 = cgaP1 - 0.5 * a3.^2 * ei;

% sphere center = position and radius = d4
cgaSphere2 = cgaP - 0.5 * d4.^2 * ei;

% intersection of the two spheres results in a circle
cgaCircle = cgaSphere1.Op(cgaSphere2);

% intersection of the plane and circle results in a pair of points
cgaPointPair = plane.CGaDual().Op(cgaCircle);

% extract one point from point pair, the other is completely analogous
cgaP2 = cgaPointPair.DecodeIpnsRound.PointPairIpnsPoint1();

% normal vector to plane
normal = plane.DecodeOpnsFlat.VGaNormalVector3D();
disp2(normal)

% first joint angle
theta1 = acos(normal.X / normal.L2Norm()) - pi / 2;

% auxiliary lines l1, l2, l3
cgaLine1 = cgaP0.Op(cgaP1).Op(ei);
cgaLine2 = cgaP1.Op(cgaP2).Op(ei);
cgaLine3 = cgaP2.Op(cgaP).Op(ei);

% square roots of modules of auxiliary lines l1, l2, l3
l11 = sqrt(cgaLine1.SpSquared());
l22 = sqrt(cgaLine2.SpSquared());
l33 = sqrt(cgaLine3.SpSquared());

% cos angle between lines l1 and l2
theta2Cos = cgaLine2.Sp(cgaLine1) / (l11 * l22);

% cos angle between lines l2 and l3
theta3Cos = cgaLine2.Sp(cgaLine3) / (l22 * l33);

% second and third joint angles
theta2 = acos(theta2Cos);
theta3 = acos(theta3Cos);

disp(theta1); % should equal 0.4375 radians
disp(theta2); % should equal 0.8590 radians
disp(theta3); % should equal 1.5040 radians