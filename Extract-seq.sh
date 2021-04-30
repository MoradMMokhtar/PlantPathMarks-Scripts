#Input & Out directory
Data=/Data/Arabidopsis_lyrata
Script=/Script
                                           ######### extract sequences for primer design
perl $Script/extractseq.pl $data/all.fasta $Data/all.fasta.misa Arabidopsis_lyrata_Extract-seq-out.fasta
