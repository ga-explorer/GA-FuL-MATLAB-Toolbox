% Define some useful basis blades for 4D CGA

en = cga.Vector([1, 0, 0, 0]);
ep = cga.Vector([0, 1, 0, 0]);
e1 = cga.Vector([0, 0, 1, 0]);
e2 = cga.Vector([0, 0, 0, 1]);

e12 = e1.Op(e2);

Ie = e1.Op(e2);
IeRev = Ie.Reverse();
IeInv = Ie.VersorInverse();

eo = cga.Vector([0.5, 0.5]);
ei = cga.Vector([1, -1]);
eoi = eo.Op(ei);

Ic = en.Op(ep).Op(Ie);
IcRev = Ic.Reverse();
IcInv = Ic.VersorInverse();

eoIe = eo.Op(Ie);
Ieei = Ie.Op(ei);