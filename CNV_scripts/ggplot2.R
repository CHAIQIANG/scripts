setwd("/home/chaiqiang/CNV/bam/test/")
p <- read_tsv("processed_a35.rmdup.addRG.denoisedCR.tsv")
TSV <- mutate(p,bid=(1:5794))
library(ggplot2)
library(stringr)
#bid <- TSV$bid
#LOG2_Copy_ratio <- TSV$LOG2_COPY_RATIO
#df <- data_frame(x=bid,y=LOG2_Copy_ratio)

# 添加一列id到TSV
mm <- str_replace_all(TSV$CONTIG,"chr","") %>% as.data.frame() %>% dplyr::rename("id"= ".")
res <- bind_cols(TSV,mm)
#将染色体M删除
res <- res %>% filter(id!="M")
#将X和Y染色体改为23和24，然后对其id2值取余
res$id2 <- ifelse(res$id=="X", 23, ifelse(res$id=="Y", 24, as.numeric(as.character(res$id))))
res$id3 <- as.factor(res$id2%%2)
plot <- ggplot(res, aes(x=bid, y=LOG2_COPY_RATIO)) + geom_point(aes(color=id3), size=0.5)
plot + coord_cartesian(ylim = c(-10,10))
#p <- ggplot(df, aes(x = bid,y = LOG2_Copy_ratio)) +geom_point(colour = 'red', size = 1)
#p + coord_cartesian(ylim = c(-9,9))