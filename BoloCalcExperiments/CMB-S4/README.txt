
PBD-related LAT Models:
-----------------------

LAT CMB-S4 PBD models, baseline:
  Pole_TMALAT_FlatBands_20210206/        Flat bands, el = 50 deg still, flat 5% ade filter, and new (better) flat band edges.
  Atacama_CDLAT_FlatBands_20210203/      Flat bands, elevation=35deg, new (better) flat band edges.

LAT "Options" models:
  Pole_TMALAT_FlatBands_Option2Psat_20210207/    Psat set to the higher of the Atacama_CDLAT and Pole_TMALAT values, for each band.
  Atacama_CDLAT_FlatBands_Option2Psat_20210207/  Psat set to the higher of the Atacama_CDLAT and Pole_TMALAT values, for each band.
  Pole_TMALAT_FlatBands_OptionPsat_20210207/     Psat set to the average of Atacama_CDLAT and Pole_TMALAT values, for each band.
  Atacama_CDLAT_FlatBands_OptionPsat_20210207/   Psat set to the average of Atacama_CDLAT and Pole_TMALAT values, for each band.


Extra LAT models:
-----------------
  Atacama_CDLAT_FlatBands_20210202/      Flat bands, elevation=35deg.
  Pole_TMALAT_RealBands_20210202/        "Real detector bands" for SO models.  (Ade LP filter no longer "real", set to 5% reflection)
  Pole_TMALAT_FlatBands_20210202/ Flat bands like 20210115 but with LP filter set to R=0.05 rather than using band file.
  Pole_TMALAT_FlatBands_20210115/ Flat bands model of TMA LAT.  
    Flat bands designed to approximate the LAT "Real bands" in terms of their centers and widths and efficiencies.

  Atacama_CDLAT_RealBands_20210202/      "Real detector bands" for SO models.  (Ade LP filter no longer "real", set to 5% reflection)

  Atacama_SAT_MixedBands_20210115/
   Using real bands for 30/40 and 220/280GHz, flat bands at 90/150 split bands.

  Atacama_CDLAT_RealBands_20210115/      "Real bands" from SO band models, CD LAT .  Includes (not great) Ade filter LP measurement file, scaled, etc.

  Pole_TMALAT_RealBands_20210115/        "Real bands" from SO band models, TMA LAT

------------------------------------------------------------
------------------------------------------------------------

PBD-related SAT Models:
-----------------------

Pole_SAT_FlatBands_20210206       New (better) flat band edges, 5% ade filter, still el = 50deg
  
SAT CMB-S4 models for forming the ratios needed for N_ell scaling:

Pole_SAT_FlatBands_20210115/
   This is the "numerator" model.
   Flat bands model of SAT.  These flat bands are designed to approximate 
   the LAT "Real bands" in terms of their centers and widths and efficiencies.

Atacama_SAT_FlatBands_20210130/
   This is the numerator model for Atacama.  Identical to Pole_SAT_FlatBands_20210115, but site=Atacama, pwv = 0.993.

Pole_SAT_Bicep3bands_20210130/
   This is the "denominator" model.
   Same properties (and optics) as Pole_SAT_FlatBands_20210115/, except with
     Tbase = 250mK, Tc = 520mK, and only for 3 bands
     95GHz:  25% frac bandwidth.  det_eff = 0.65 to match s4 flat bands 95GHz
     150GHz: 25% frac bandwidth.  det_eff = 0.68 to match s4 flat bands 150GHz
     230GHz: 20% frac bandwidth.  det_eff = 0.67 to match s4 flat bands 220GHz


Extra SAT models:
-----------------
Pole_SAT_BicepLike_20210115/
   Model just like Pole_SAT_FlatBands_20210115/ but with Tbase = 250mK, 
   Tc = 520mK, and broader (non-split) 90/150 GHz bands.

Pole_SAT_DSR_20210129/
  Model that uses the inputs used by Viktor for the DSR.  





