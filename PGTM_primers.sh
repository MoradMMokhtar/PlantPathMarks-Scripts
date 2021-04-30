#Input & Out directory
Data=/Data/Arabidopsis_lyrata
Script=/Script
                                     #### design EST primers
perl $Script/p3_in2.pl $EST/Arabidopsis_lyrata_Extract-seq-EST.fasta
primer3_core $EST/Arabidopsis_lyrata_Extract-seq-EST.fasta.p3in > $EST/Arabidopsis_lyrata_Extract-seq-EST.fasta.p3out
perl $Script/p3_out.pl $EST/Arabidopsis_lyrata_Extract-seq-EST.fasta.p3out
