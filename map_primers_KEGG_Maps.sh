#Input & Out directory
Data=/Data/Arabidopsis_lyrata
Script=/Script


                                                  ##### map primers to KEGG Maps

grep -f $Data/Arabidopsis_lyrata_KEGG_GENES.id $Data/Arabidopsis_lyrata_ncbi_GENES.id >$Data/KEGG.GENES.all.primers.id
awk '{ print $2}' $Data/KEGG.GENES.all.primers.id >$Data/KEGG.GENES.all.primers.id_only
awk '!seen[$1]++' $Data/KEGG.GENES.all.primers.id_only >$Data/KEGG.GENES.all.primers.id_only.uniq

 ##### upload KEGG.GENES.all.primers.id_only.uniq file to MySQL table to conact it with maps by use ImageMapster Plugin
