#!/usr/bin/perl -w
# Author: Thomas Thiel
# Program name: primer3_in.pl
# Description: creates a PRIMER3 input file based on SSR search results
my $filename = $ARGV[0];
open (SRC,"<$filename");
open (OUT,">$filename.p3re");

undef $/;
$/= ">";

my $count;
while (<SRC>)
  {
  next unless (my ($id,$seq) = /(.*?)\n(.*)/s);
  $seq =~ s/[\d\s>]//g;#remove digits, spaces, line breaks,...
   
    print OUT "$id\t$seq\n";
      };

