#!/bin/bash

bcalcdir=/Users/ruhl/code/BoloCalc

echo $bcalcdir

# This is ugly in that it deletes files in the target space, doesn't save them.
echo "Copying configuration files to BoloCalc directory..."
rm -r $bcalcdir/config/
cp -R BoloCalcConfigs/config_S4Baseline $bcalcdir/config

# Change into the BoloCalc directory and run Bolocalc
cd $bcalcdir

pwd

####  All the models needed for the PBD
echo "Atacama CDLAT FlatBands"
python3 calcBolos.py Experiments/CMB-S4/Atacama_CDLAT_FlatBands_20210203/


