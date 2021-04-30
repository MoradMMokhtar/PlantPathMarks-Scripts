#Input & Out directory
Data=/Data/Arabidopsis_lyrata
Script=/Script

            # extract annotation from genbank file
perl $Script/Etract-Feature.pl $Data/GCF_000004255.2_v.1.0_genomic.gbff.gz >$Data/Gene_product_list.txt
            #genbank to fasta
perl $Script/multigb_to_multifasta.pl $Data/GCF_000004255.2_v.1.0_genomic.gbff.gz $Data/all.fasta
