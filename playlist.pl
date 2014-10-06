#!/usr/bin/perl

use strict;
use warnings;

################
# Author: Zachary Leighton
# Date: 10/6/14
# Purpose: Playlist Creation/Randomizer

use Data::Dumper;

#Change this to change list length
my $LIST_LENGTH = 100; 

#this gets a song list in order
# my @songList = @{generateSongList(50)};

print Dumper(randomizePlaylist(generateSongList($LIST_LENGTH)));

#generate a song list in order, 0 - n
sub generateSongList {
    my $n = shift;
    my @songList;
    #0 to n
    foreach (0..$n) {
        #push the song onto the array with the #
        push @songList, "Song #$_";
    }
    #return reference for memory reasons
    return \@songList;
}

#this randomizes the song - O(N) complexity
sub randomizePlaylist {
    my $songs = shift;
    die 'NOT ARRAY REF OF SONGS' unless(ref($songs) eq 'ARRAY');

    my @songs = @$songs; #take first argument and derefence to array

    ### fisher yates shuffle
    for (my $i = scalar(@songs)-1; $i > 0; $i--) {
        my $j = int(rand($i+1));

        #we need a temp variable for readability
        my $temp = $songs[$j];

        #swap indexes at i and j
        $songs[$j] = $songs[$i];
        $songs[$i] = $temp;
    }

    return \@songs;
}


1;