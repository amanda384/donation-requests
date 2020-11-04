* Encoding: UTF-8.

*path

cd "/Users/amandawoods/Documents/FinalNVSQ Submission/Data Files and Code".

*file name.

get "Interpersonal Analyses_MANOVA Data.sav".


GLM Friendly Helpfulness Negativity BY Gender1F2M Race1L2W
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /PRINT=DESCRIPTIVE ETASQ HOMOGENEITY
  /CRITERIA=ALPHA(.05)
  /DESIGN= Gender1F2M Race1L2W Gender1F2M*Race1L2W.


