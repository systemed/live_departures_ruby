#!/usr/bin/env ruby
require_relative 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = LDBServiceSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   getDepartureBoard(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardResponseType
#
parameters = nil
puts obj.getDepartureBoard(parameters)

# SYNOPSIS
#   getArrivalBoard(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardResponseType
#
parameters = nil
puts obj.getArrivalBoard(parameters)

# SYNOPSIS
#   getArrivalDepartureBoard(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardResponseType
#
parameters = nil
puts obj.getArrivalDepartureBoard(parameters)

# SYNOPSIS
#   getServiceDetails(parameters)
#
# ARGS
#   parameters      GetServiceDetailsRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetServiceDetailsRequestParams
#
# RETURNS
#   parameters      ServiceDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}ServiceDetailsResponseType
#
parameters = nil
puts obj.getServiceDetails(parameters)

# SYNOPSIS
#   getDepBoardWithDetails(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardWithDetailsResponseType
#
parameters = nil
puts obj.getDepBoardWithDetails(parameters)

# SYNOPSIS
#   getArrBoardWithDetails(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardWithDetailsResponseType
#
parameters = nil
puts obj.getArrBoardWithDetails(parameters)

# SYNOPSIS
#   getArrDepBoardWithDetails(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardWithDetailsResponseType
#
parameters = nil
puts obj.getArrDepBoardWithDetails(parameters)

# SYNOPSIS
#   getNextDepartures(parameters)
#
# ARGS
#   parameters      GetDeparturesRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetDeparturesRequestParams
#
# RETURNS
#   parameters      DeparturesBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardResponseType
#
parameters = nil
puts obj.getNextDepartures(parameters)

# SYNOPSIS
#   getNextDeparturesWithDetails(parameters)
#
# ARGS
#   parameters      GetDeparturesRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetDeparturesRequestParams
#
# RETURNS
#   parameters      DeparturesBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardWithDetailsResponseType
#
parameters = nil
puts obj.getNextDeparturesWithDetails(parameters)

# SYNOPSIS
#   getFastestDepartures(parameters)
#
# ARGS
#   parameters      GetDeparturesRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetDeparturesRequestParams
#
# RETURNS
#   parameters      DeparturesBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardResponseType
#
parameters = nil
puts obj.getFastestDepartures(parameters)

# SYNOPSIS
#   getFastestDeparturesWithDetails(parameters)
#
# ARGS
#   parameters      GetDeparturesRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetDeparturesRequestParams
#
# RETURNS
#   parameters      DeparturesBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardWithDetailsResponseType
#
parameters = nil
puts obj.getFastestDeparturesWithDetails(parameters)


endpoint_url = ARGV.shift
obj = LDBServiceSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   getDepartureBoard(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardResponseType
#
parameters = nil
puts obj.getDepartureBoard(parameters)

# SYNOPSIS
#   getArrivalBoard(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardResponseType
#
parameters = nil
puts obj.getArrivalBoard(parameters)

# SYNOPSIS
#   getArrivalDepartureBoard(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardResponseType
#
parameters = nil
puts obj.getArrivalDepartureBoard(parameters)

# SYNOPSIS
#   getServiceDetails(parameters)
#
# ARGS
#   parameters      GetServiceDetailsRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetServiceDetailsRequestParams
#
# RETURNS
#   parameters      ServiceDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}ServiceDetailsResponseType
#
parameters = nil
puts obj.getServiceDetails(parameters)

# SYNOPSIS
#   getDepBoardWithDetails(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardWithDetailsResponseType
#
parameters = nil
puts obj.getDepBoardWithDetails(parameters)

# SYNOPSIS
#   getArrBoardWithDetails(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardWithDetailsResponseType
#
parameters = nil
puts obj.getArrBoardWithDetails(parameters)

# SYNOPSIS
#   getArrDepBoardWithDetails(parameters)
#
# ARGS
#   parameters      GetBoardRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#
# RETURNS
#   parameters      StationBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardWithDetailsResponseType
#
parameters = nil
puts obj.getArrDepBoardWithDetails(parameters)

# SYNOPSIS
#   getNextDepartures(parameters)
#
# ARGS
#   parameters      GetDeparturesRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetDeparturesRequestParams
#
# RETURNS
#   parameters      DeparturesBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardResponseType
#
parameters = nil
puts obj.getNextDepartures(parameters)

# SYNOPSIS
#   getNextDeparturesWithDetails(parameters)
#
# ARGS
#   parameters      GetDeparturesRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetDeparturesRequestParams
#
# RETURNS
#   parameters      DeparturesBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardWithDetailsResponseType
#
parameters = nil
puts obj.getNextDeparturesWithDetails(parameters)

# SYNOPSIS
#   getFastestDepartures(parameters)
#
# ARGS
#   parameters      GetDeparturesRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetDeparturesRequestParams
#
# RETURNS
#   parameters      DeparturesBoardResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardResponseType
#
parameters = nil
puts obj.getFastestDepartures(parameters)

# SYNOPSIS
#   getFastestDeparturesWithDetails(parameters)
#
# ARGS
#   parameters      GetDeparturesRequestParams - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetDeparturesRequestParams
#
# RETURNS
#   parameters      DeparturesBoardWithDetailsResponseType - {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardWithDetailsResponseType
#
parameters = nil
puts obj.getFastestDeparturesWithDetails(parameters)


