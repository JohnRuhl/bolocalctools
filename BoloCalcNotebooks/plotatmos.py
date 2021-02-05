import matplotlib.pyplot as plt

import h5py as hp

bc_root_dir = "/Users/ruhl/code/bolocalc/BoloCalc/"
atmfile = bc_root_dir + "src/atm.hdf5"
hf = hp.File(atmfile, "r")

# Pick out a spectrum;  first number is PWV, second is observing elevation.
data=hf["Pole"]["0,90"]

# First column [0] is frequency.
# [2] appears to be Trj
# [3] appears to be transmission.
plt.plot(data[0],data[2])
plt.grid()
plt.xlabel("Frequency (GHz)");

plt.show()
