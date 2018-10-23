###-------目的：通过anti_join来看两个文件中重叠的地方，将不重复的部分输出(条件：一个文件是包括另一个文件)######
library(readr)
download = read.table("d.txt",header = F)
get_data = read.table("get.txt",header = F)
colnames(download)=c("MD5","ENCODE")
colnames(get_data)=c("MD5","ENCODE")
again = anti_join(download,get_data,by="MD5",copy = FALSE)
 write.table(again,"scp_again")
 