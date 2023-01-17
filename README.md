# Semtex-Rotating-Sphere

Here is the data and files for the Semtex simulations for the flow around a rotating sphere. [Semtex](https://users.monash.edu.au/~bburn/semtex.html) is a quadrilateral spectral element DNS software that solves the incompressible Navier-Stokes equations which can solve problems in "2 and a half" dimensions; meaning geomteries in 3D can be solved if there is a periodic symmetry such as cylindircal coordinate systems. In order to use Semtex refer to the [manual](https://users.monash.edu.au/~bburn/pdf/semtex-user.pdf). 

The computational domain consists of a sphere spun up from rest encased in a large cylinder immersed in fluid. With the assumption of axisymmetry the 3D problem can be reduced to 2D resulting in the significant reduction of computational power and time via Semtex's state of the art methods. See Calabretto _et al_ ([2015](https://doi.org/10.1098/rspa.2015.0299), [2019](https://doi.org/10.1017/jfm.2019.783)) and Smith _et al_ (2023) [in draft] for full details.   

The session file [sphere](https://github.com/bensmith95/Semtex-Rotating-Sphere/blob/main/sphere) includes all information for the _DNS_ command to run, where the geometry of the discetised domain is described in [sphere.num](https://github.com/bensmith95/Semtex-Rotating-Sphere/blob/main/sphere.num). Post-poricessing can be done using [Tecplot360](https://www.tecplot.com/products/tecplot-360/) which produced the .mp4 files in the [videos](https://github.com/bensmith95/Semtex-Rotating-Sphere/tree/main/videos) directory. In case Semtex is not installed, some data can be obtained from [data](https://github.com/bensmith95/Semtex-Rotating-Sphere/tree/main/data) directory which has all the element and flow data in MATLAB files that be loaded easily. In order to view some plots around the equator simply download the relevant data file and run _figures.m_.

<p align="center">
  <img width="800" src="https://user-images.githubusercontent.com/29705711/212913583-e8069350-26e1-4aa4-8e82-217fcf4d45e9.png">
</p>
