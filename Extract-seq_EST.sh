#Input & Out directory
Data=/Data/Arabidopsis_lyrata
Script=/Script
                                           ######### extract sequences for primer design
perl $Script/extractseq.pl $data/all.fasta $Data/Gene_product_list.txt Arabidopsis_lyrata_Extract-seq-EST.fasta
