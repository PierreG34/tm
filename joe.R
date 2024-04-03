#libraries & functions----
library(dplyr)
library(pdftools)
library(lubridate)
library(stringr)

no_accent = function(texte){#simplify_text replace upper case by lower case, delete punctuation and replace é by e, in variable names
  texte=tolower(texte)
  #texte=str_replace_all(texte,"[:punct:]","")
  #texte=str_replace_all(texte,"[:space:]","")
  texte=str_replace_all(texte,"[àâä]","a")
  texte=str_replace_all(texte,"[ç]","c")
  texte=str_replace_all(texte,"[éèêë]","e")
  texte=str_replace_all(texte,"[îï]","i")
  texte=str_replace_all(texte,"[ôö]","o")
  texte=str_replace_all(texte,"[ùûü]","u")
  return(texte)
}

#test with a legal paper----
#files <- list.files(pattern = "pdf$")
datapath="joe_20240403_0078_p000.pdf"
jo_raw = strsplit(pdf_text(datapath), "\n")
jo = no_accent(jo_raw)

jo_raw[1]
jo[2]