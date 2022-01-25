# ALA10 DECOY SET

Daniel R. Roe

[Roe et al. JOURNAL OF PHYSICAL CHEMISTRY B 111 (7): 1846-1857 FEB 22 2007](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4810457/)

## Introduction

This is a decoy set of 4000 Ala10 (ACE-A10-NH2) structures generated during 
4 Thermodynamic Integration (TI) runs at 300 K. 

The set is subdivided by the conformation each was restrained to during the 
TI run: alpha helix, left-handed alpha helix, polyproline II helix, and 
beta hairpin, in directories alpha, left, pp2, and hairpin respectively. 

## Files

The main directory has 6 files:

README - This file.

ala10.e16.mbondi2.top - Amber topology file for Ala10 using FF99SB forcefield
                        parameters and mbondi2 radii.

example.delphi.in - An example input file for delphi, used to calculate all PB
                    energies.

ala10.e16.mbondi2.top.crg - Charge file for ala10, used with delphi.

ala10.e16.mbondi2.top.siz - Radii file for ala10, used with delphi.

example.sanderPP.in - An example input file for sander, used to calculate all
                      GB energies.

Each subdirectory also contains 6 files:

L2.0.trj.gz - The TI trajectory.

ala10gb.igbX.Energy.dat - Energies obtained from post-processing the
                          trajectory with the GB solvent model indicated by
                          igb=X, where X is 1, 5, or 7. The columns in the 
                          files are:
         Etot,Ektot,Eptot,Ebond,Eangle,Edihed,E14nb,E14eel,Evdwaals,Eelec,Egb
                          The first two columns are always 0.0 as these are  
                          energies from post-processing, not actual dynamics.

converted.ala10gb.PBenergies.out - PB energies obtained using delphi.

strip.Y.md5.rst.1 - Amber restart file for conformation Y.

