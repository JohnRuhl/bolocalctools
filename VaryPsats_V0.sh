#!/bin/bash

# This is ugly in that it deletes files in the target space, doesn't save them.
echo "Copying configuration files to BoloCalc directory..."
rm -r BoloCalc/config/
cp -r config_LAT_varyPsatFac/ config/
mv config BoloCalc/

# Change into the BoloCalc directory and run Bolocalc
cd BoloCalc

python3 calcBolos.py Experiments/CD/Real_Bands/ --vary --vary_tog

