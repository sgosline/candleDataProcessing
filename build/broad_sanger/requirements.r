install.packages('curl')
install.packages("rio")
install.packages("readr")
install.packages("curl")
#install.packages("stringi")
install.packages("stringr")
install.packages("dplyr")
install.packages("XML")
#install.packages('webchem')
#install.packages('remotes')
install.packages('reticulate')
install.packages('tidyr')
install.packages("BiocManager")
BiocManager::install("PharmacoGx",update=TRUE,ask=FALSE)
BiocManager::install("org.Hs.eg.db",update=TRUE,ask=FALSE)