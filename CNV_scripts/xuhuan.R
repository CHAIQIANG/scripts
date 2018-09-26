library(readr)
library(dplyr)

setwd("~/CNV/bam/Denoise/deno/Copy_ratio(cat)/PON-copy-ratio/")
pon <- read_tsv("PON.rmdup.addRG.denoisedCR.tsv",skip = 27)
setwd("~/CNV/bam/test")
files <- list.files(path = ".",pattern = NULL,all.files = FALSE)
for (file in files) {
  r1 <- read_tsv(file,col_names = F)
  m1 <- r1[1,]
  r2 <- read_tsv(file,col_names = F,skip=1)
  m2 <- r2[1:26,] 
  r3 <- read_tsv(file,skip = 27)
  m3 <- mutate(r3,"Copy-Ratio" = 2^r3$LOG2_COPY_RATIO) %>% select(-LOG2_COPY_RATIO)
  rs <- mutate(m3,"Copy" = m3$`Copy-Ratio`/pon$`Copy-Ratio`)%>% select(-`Copy-Ratio`)
  result <- mutate(rs,"LOG2_COPY_RATIO" = log2(rs$Copy) )%>% select(-Copy)
  c2 <- paste0("two_",file)
  c3 <- paste0("three_",file)
  c4 <- paste0("processed_",file)
  write_tsv(m1,c2,col_names = F)
  write_tsv(m2,c3,col_names = F)
  write_tsv(result,c4)
}
