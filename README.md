Israeli Tech Challenge Short Test
=============

## Playlist

This should generate a list according to the $LIST_LENGTH variable in order, then shuffle it according to the Fisher-Yates Algorithm which has O(N) complexity. To run the example install perl if you do not already have it, and simply run `perl playlist.pl` from a terminal, which uses nothing outside the default perl installation.
 
## Algorithm

The answer to the algorithm question is based off of Heap's Algorithm, combined with hashes which look up dictionary values quickly. It is recursive (as the algorithm is) but instead of returning blindly the end permutation it looks up the value in the hash and if it exists you can return the value knowing it is a real value in the dictionary, or return null and discard the permutation.


## Sources
http://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle
http://en.wikipedia.org/wiki/Heap's_algorithm
