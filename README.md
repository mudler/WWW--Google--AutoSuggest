# NAME

WWW::Google::AutoSuggest - Query the Google services to retrieve the query suggestions

# SYNOPSIS

```perl
use WWW::Google::AutoSuggest;
my $AutoSuggest=WWW::Google::AutoSuggest->new();
my @Suggestions = $AutoSuggest->search("perl");
###### or
use WWW::Google::AutoSuggest;
my $AutoSuggest=WWW::Google::AutoSuggest->new(domain=> "it" ,json=>1); #uses www.google.it instead of .com
my $result = $AutoSuggest->search("perl");
# $result now is a JSON object
###### or with the html tags
use WWW::Google::AutoSuggest;
my $AutoSuggest=WWW::Google::AutoSuggest->new(strip_html=>0);
my @Suggestions = $AutoSuggest->search("perl");
```

# DESCRIPTION

WWW::Google::AutoSuggest allows you to use Google Suggest in a quick and easy way and returning it as JSON for further inspection

# ARGUMENTS

## json

	my $AutoSuggest=WWW::Google::AutoSuggest->new(json=>1);

or

	$AutoSuggest->json(1);

Explicitally enable the return of the [JSON](https://metacpan.org/pod/JSON) object when calling ```search("term")```

## strip_html

	my $AutoSuggest=WWW::Google::AutoSuggest->new(strip_html=>0);

or

	$AutoSuggest->strip_html(0);

Explicitally disable the stripping of the HTML contained in the google responses

## raw


	my $AutoSuggest=WWW::Google::AutoSuggest->new(raw=>1);

or

	$AutoSuggest->raw(1);

Explicitally enable the return of the response content when calling ```search("term")```

## domain

	my $AutoSuggest=WWW::Google::AutoSuggest->new(domain=>"it");

or

	$AutoSuggest->domain("it");

Explicitally use the Google domain name in the request


# METHODS

## new

	my $AutoSuggest=WWW::Google::AutoSuggest->new();	

Creates a new WWW::Google::AutoSuggest object

## search

	my @Suggestions = $AutoSuggest->search($query);

Sends your ```$query``` to Google web server and fetches and parse suggestions for the given query.
Default returns an array of that form

	@Suggestions = ( 'foo bar' , 'baar foo',..);

Setting 
	```
	$AutoSuggest->json(1);
	```

will return the [JSON](https://metacpan.org/pod/JSON) object

# AUTHOR

mudler <mudler@dark-lab.net>

# COPYRIGHT

Copyright 2014 mudler

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[WebService::Google::Suggest](https://metacpan.org/pod/WebService::Google::Suggest)
