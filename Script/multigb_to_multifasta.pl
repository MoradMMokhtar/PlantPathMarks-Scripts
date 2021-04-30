# get Annotation , accession , Seq and all features
#!/usr/bin/perl -w
# extract sequence fasta format from gene bank format.
use Bio::SeqIO;
$infile = $ARGV[0];
$outfile = $ARGV[1];
my $seqfile = Bio::SeqIO->new( -file => "$infile", -format => "genbank" );
my $out = Bio::SeqIO->new(-file => ">>$outfile" ,'-format' => 'Fasta');
while (my $inseq = $seqfile->next_seq) {
    $out->write_seq($inseq);
}
