#!/bin/bash

Create() {
cat > cpptraj.in <<EOF
parm ala10.e16.mbondi2.top
trajin ala10.combined.nc 1 30
trajin ala10.combined.nc 1001 1020
trajin ala10.combined.nc 2001 2010
trajin ala10.combined.nc 3001 3005
trajin ala10.combined.nc 31 45
trajin ala10.combined.nc 1021 1030
trajin ala10.combined.nc 2011 2015
trajin ala10.combined.nc 3006 3010
trajout ala10.4states.nc
EOF
cpptraj -i cpptraj.in
}

cpptraj <<EOF
parm ala10.e16.mbondi2.top
trajin ala10.4states.nc
cluster info info.dat clusters 4 savepairdist
EOF
