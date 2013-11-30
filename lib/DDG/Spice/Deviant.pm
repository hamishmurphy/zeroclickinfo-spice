package DDG::Spice::Deviant;
# ABSTRACT: Write and abstract here
# Start at https://dukgo.com/duckduckhack/spice_overview if you are new
# to instant answer development

use DDG::Spice;

#Attribution
primary_example_queries "deviant artgerm", "deviant hamishmurphy";
secondary_example_queries "optional -- demonstrate any additional triggers";
description "Succinct explanation of what this instant answer does";
name "Deviant";
icon_url "http://i.deviantart.net/icons/favicon.png";
source "";
code_url "https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/Deviant.pm";
category "entertainment";
topics "entertainment";
attribution github => ["https://github.com/hamishmurphy", "hamishmurphy"],
            twitter => ["https://twitter.com/hamishmurphy", "hamishmurphy"];

# Triggers
triggers any => "deviant", "deviants";

spice to => 'http://backend.deviantart.com/rss.xml?q=boost%3Apopular+$1&type=deviation';

# Handle statement
handle remainder => sub {

	# optional - regex guard
	# return unless qr/^\w+/;

	return $_ if $_;
	return;
};

1;
