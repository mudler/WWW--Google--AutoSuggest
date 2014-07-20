use strict;
use Test::More;
use WWW::Google::AutoSuggest;

is((WWW::Google::AutoSuggest->new->search("perl"))[0], "perl","First suggestion for perl is 'perl'");

done_testing;
