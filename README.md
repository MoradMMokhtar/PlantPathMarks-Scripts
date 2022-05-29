# PlantPathMarks-Scripts
To construct the PlantPathMarks (PPMdb) core database, we integrated two powerful tools called MISA
(MIcroSAtellite identification) and primer3 into our in-house-developed “Perl and Shell”
scripts to strap all standalone bioinformatic analysis steps in one main pipeline called Pathway
Gene-Set Mining (PGM) pipeline. This pipeline was built to develop two novel marker systems
called Pathway Genes-Targeted Markers (PGTM) and Pathway Microsatellites-Targeted Markers
(PMTM). This pipeline was implemented to construct our PPMdb sub-databases through seven
main steps, as follows: (a) splitting the retrieved genomic data into sequence and annotation files
(b) classifying genomic sequence into genic or intergenic (c) sub-classifying genes into enzyme-
coding or non-enzyme-coding (d) mining microsatellites on enzyme-coding genes only (this step
exclusive to PMTM) (e) designing primers and classifying markers into PMTM or PGTM (f)
mapping all designed primers against KEGG reference maps.

**Shell Files
1. Shell_step1.sh
2. misa.sh
3. Extract-seq.sh
4. Extract-seq_EST.sh
5. PGTM_primers.sh
6. PPTM_primers.sh
7. map_primers_KEGG_Maps.sh

**Perl scripts (Folder Script/)
1. Etract-Feature.pl
2. multigb_to_multifasta.pl
3. extractseq.pl
4. misa.pl
5. p3_in.pl
6. p3_in2.pl
7. p3_out.pl

For questions and Issues please contact: morad.mokhtar@ageri.sci.eg; morad.mokhtar@um6p.ma

Citations

If you find this scripts useful, please cite:

Morad M. Mokhtar, Achraf El Allali, Mohamed-Elamir F. Hegazy & Mohamed A. M. Atia. PlantPathMarks (PPMdb): an interactive hub for pathways-based markers in plant genomes. Scientific Reports  11, 21300 (2021). https://doi.org/10.1038/s41598-021-00504-2
