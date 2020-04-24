# Y-plus-Calculator
Y+ is a dimensionless parameter in fluid dynamics, defined as the dimensionless distance from the wall based on the thickness of the
viscous sub-layer near the wall. For properly modeling turbulent viscous flows in the near-wall region using CFD, it is necessary
that the first cell height (height of the first row of cells near the wall) the mesh/grid should be according to the Y+ resolution
required by the turbulence model.
For turbulence models like k-espilon with standard wall functions Y+ should be in the range of 30-300 and for turbulence models with
wall treatment (like k-omega, Spalart-Allmaras, k-espilon with Enhanced Wall Treatment), Y+ should be equal to 1.
Y+ calculation is fairly an easy task, yet it gets disturbing to do the tedious task of hand calculations again and again. There are
some online calculators available but they have are based on old Prandtl (1925)'s 1/7th powerlaw, which works only for limited lower
ranges of Reynolds numbers.
This Matlab code is built to calculate the estimated first cell height from the free-stream conditions and the desired value of Y+,
based on the skin-friction coefficient estimation of Hermann Schlichting (1979) (which works efficiently up to Reynolds numbers of
10^9) for external flows.
