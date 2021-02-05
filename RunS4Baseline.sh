#!/bin/bash

bcalcdir=/Users/ruhl/code/BoloCalc
echo $bcalcdir

# Choose your experiment definition file here.
expt_dir=CMB-S4
expt=$expt_dir/Atacama_CDLAT_FlatBands_20210203
echo $expt
cp -R BoloCalcExperiments/$expt $bcalcdir/Experiments/$expt_dir

# Move over the desired set of configuration files, which sets how bolocalc runs at the top level
echo "Copying configuration files to BoloCalc directory..."
rm -r $bcalcdir/config/
cp -R BoloCalcConfigs/config_S4Baseline $bcalcdir/config


# Change into the BoloCalc directory and run Bolocalc
cd $bcalcdir
python3 calcBolos.py Experiments/CMB-S4/Atacama_CDLAT_FlatBands_20210203/


