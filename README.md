# GA-FuL-MATLAB-Toolbox

A MATLAB toolbox for interfacing with the extensive [Geometric Algebra Fulcrum Library (GA-FuL)](https://github.com/ga-explorer/GeometricAlgebraFulcrumLib) on Windows

## Installation

You need a PC or virtual machine with a **64-bits version of Windows 10 or later** and **MATLAB 2022b or later** for the toolbox to work properly. Make sure you have the **`MATLAB compiler` and `MATLAB compiler SDK` components** installed with your MATLAB installation.

To install the toolbox:

1. Clone the repo into a local folder on your Windows PC\virtual machine (for example, `c:\ga-ful-toolbox\`). It is preferable to use **short path names** for the toolbox folder.
2. Download the latest GA-FuL binaries from [this online folder](https://drive.google.com/drive/folders/1l_9SVOQVPnK1r4O664nBiTGr7CPR66xl?usp=sharing).
3. Extract the GA-FuL binaries into your local repo folder. You should find the folder named `DotNET` created, and containing the GA-FuL .NET assemblies `GeometricAlgebraFulcrumLib.Algebra.dll` and `GeometricAlgebraFulcrumLib.Modeling.dll`, among others, under your local toolbox folder `c:\ga-ful-toolbox\DotNET\`.
4. In MATLAB, open the file `gaEx01.m` and make sure the **current MATLAB folder** is set to your toolbox folder `c:\ga-ful-toolbox\`. Execute `gaEx01.m` in MATLAB to make sure everything is working properly.
5. **Have fun exploring** the other example scripts and toolbox code!
