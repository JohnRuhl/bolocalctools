#!/bin/bash

bcalcdir=/Users/ruhl/code/BoloCalc
echo $bcalcdir

# Choose your experiment definition file here.
expt_dir=CMB-S4

#Pole_SAT_FlatBands_20210206/
#run=Pole_TMALAT_FlatBands_20210206
#run=Pole_SAT_FlatBands_MFsamePsat_20210207
#run=Pole_TMALAT_FlatBands_OptionPsat_20210207
#run=Pole_TMALAT_FlatBands_Option2Psat_20210207
run=Atacama_CDLAT_FlatBands_Option2Psat_20210207

echo $expt_dir
echo $run

cp -R BoloCalcExperiments/$expt_dir/$run $bcalcdir/Experiments/$expt_dir

# Move over the desired set of configuration files, which sets how bolocalc runs at the top level
echo "Copying configuration files to BoloCalc directory..."
rm -r $bcalcdir/config/
cp -R BoloCalcConfigs/config_LAT_varyPsatFac $bcalcdir/config

# Change into the BoloCalc directory and run Bolocalc
cd $bcalcdir

python3 calcBolos.py Experiments/$expt_dir/$run --vary --vary_tog

