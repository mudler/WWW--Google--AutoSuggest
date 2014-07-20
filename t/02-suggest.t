use strict;
use Test::More;
use WWW::Google::AutoSuggest;

is( ( WWW::Google::AutoSuggest->new->search("perl") )[0],
    "perl", "First suggestion for perl is 'perl'" );
isa_ok(
    @{ WWW::Google::AutoSuggest->new( json => 1 )->search("perl") }[-1]
        ->{'t'}->{'tlw'},
    "JSON::PP::Boolean",
    "JSON->[-1]->{t}->{tlw} response"
);
ok grep {/\</}
    WWW::Google::AutoSuggest->new( strip_html => 0 )->search("perl");

done_testing;
