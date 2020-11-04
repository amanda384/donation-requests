* Encoding: UTF-8.

PRESERVE.
SET DECIMAL DOT.

GET DATA  /TYPE=TXT
  /FILE="/Users/amandawoods/Documents/FinalNVSQ Submission/Data Files and Code/Upload to "+
    "GitHub_donation-requests/Interpersonal Analyses_MANOVA Data.csv"
  /ENCODING='UTF8'
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  Trial AUTO
  Positivity_SMH AUTO
  Positivity_WIH AUTO
  Friendly_SMH AUTO
  Friendly_WIH AUTO
  Helpfulness_SMH AUTO
  Helpfulness_WIH AUTO
  Negativity_SMH AUTO
  Negativity_WIH AUTO
  Positivity AUTO
  Friendly AUTO
  Helpfulness AUTO
  Negativity AUTO
  Gender1F2M AUTO
  Race1L2W AUTO
  Donation1Y2N AUTO
  /MAP.
RESTORE.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

GLM Friendly Helpfulness Negativity BY Gender1F2M Race1L2W
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /PRINT=DESCRIPTIVE ETASQ HOMOGENEITY
  /CRITERIA=ALPHA(.05)
  /DESIGN= Gender1F2M Race1L2W Gender1F2M*Race1L2W.







