#!/bin/bash
#conda install entrez-direct
GSMs=`cat SRR_NA_GSM.txt | grep -v "GEO"| cut -f3 | sort | uniq`
for GSM in $GSMs
do
 SRR_string=`esearch -db sra -query $GSM | efetch -format docsum | xtract -pattern DocumentSummary -element Run@acc`
 #echo -e "$GSM\t$SRR_string" >> GSM_to_SRR_tsv.txt
 SRR_array_unsorted=($SRR_string) #将$SRR_string 放入一对括号内，就变成数组
 IFS=$'\n' SRR_array=($(sort <<<"${SRR_array_unsorted[*]}"))  #${SRR_array_unsorted[*]} 将数组里所有元素进行排序，放到一堆括号里，所以排序后的也是一个数组，命名为SRR_array
 unset IFS
 
 #srr_total=${#SRR_array[@]} #的意思是获取数组SRR_array[@] 的个数
 for SRR in ${SRR_array[@]}
 do
 echo -e "$GSM\t$SRR" >> GSM_to_SRR_encode.txt
 done
done 
