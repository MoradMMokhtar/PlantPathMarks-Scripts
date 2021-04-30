# get Annotation , accession , Seq and all features
#!/usr/bin/perl -w
# PERL Method "Text in Feature"
# extract gene feature from gene bank file .

use Bio::SeqIO;
$searchfile = $ARGV[0];
$searchfor  = $ARGV[1];
$ofile      = $ARGV[2];
my $seqfile = Bio::SeqIO->new( -file => "$searchfile", -format => "genbank" );
$bool = 0;
open( OFILE, ">$ofile" );
my $preend = 0;
my $prestart=0;
while ( my $seqobj = $seqfile->next_seq ) {
    foreach $feat ( $seqobj->all_SeqFeatures() ) {
        foreach $tag ( $feat->all_tags() ) {
            
            
            if ( $preend != ( $feat->end ) && $prestart!= ( $feat->start ))
             {
                if ( $tag =~ m/gene/g ) {
                    if ( $bool == 0 ) {
                        my $line = ">"
                          . $seqobj->display_id() . "\t"
                          . $feat->start . "\t"
                          . $feat->end;
                        print "\n$line";
                        $preline = $line;
                    }
                    $bool = 1;
                }
                if ( $bool == 1 && $tag =~ m/product/ ) {
                    print ("\t",$feat->each_tag_value($tag));
                    $bool = 0;
               $preend = ($feat->end);  
               $prestart= ( $feat->start );
            
                }
             
            }
        }
    }
}
close OFILE;
