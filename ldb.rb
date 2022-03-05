
	require './defaultDriver.rb'
	require './ldbws_auth.rb'

	obj = LDBServiceSoap.new
	# uncomment this to see raw SOAP messages:
	# obj.wiredump_dev = STDOUT
	obj.headerhandler << LDBWSAuth.new("insert-your-nre-token-here")
	pp obj.getDepartureBoard(GetBoardRequestParams.new(20,"CBY"))
