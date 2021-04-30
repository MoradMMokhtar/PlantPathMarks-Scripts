#Input & Out directory
Data=/Data/Arabidopsis_lyrata
Script=/Script

                                                    # PPTM design primer
perl $Script/p3_in.pl $Data/Arabidopsis_lyrata_Extract-seq-out.fasta

primer3_core $Data/Arabidopsis_lyrata_Extract-seq-out.fasta.p3in > $Data/Arabidopsis_lyrata_Extract-seq-out.fasta.p3out
perl $Script/p3_out.pl $Data/Arabidopsis_lyrata_Extract-seq-out.fasta.p3out
