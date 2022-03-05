## Ruby client for Live Departure Boards (LDBWS)

This took me half a morning to figure out so I guessed someone else might find it useful.

You'll need to sign up for an access code from National Rail to use this. Edit that into the ldb.rb file, and change CBY (Charlbury) to the station code of your choice.

Install one of the various continuity forks of soap4r, e.g. `gem install soap2r`. Then `ruby ldb.rb`.

Most of the files are automatically generated from the WSDL by wsdl2ruby, but this is a PITA to run and requires some hacking around, so I've bundled them here. You can find out what other operations are available by browsing through the source of ldbClient.rb, and then look at default.rb to see what parameters each one takes.

Licensed WTFPL and there is no warranty.
