require_relative 'default.rb'
require_relative 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

class LDBServiceSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://lite.realtime.nationalrail.co.uk/OpenLDBWS/ldb11.asmx"

  Methods = [
    [ "http://thalesgroup.com/RTTI/2012-01-13/ldb/GetDepartureBoard",
      "getDepartureBoard",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetDepartureBoardRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetDepartureBoardResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2012-01-13/ldb/GetArrivalBoard",
      "getArrivalBoard",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetArrivalBoardRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetArrivalBoardResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2012-01-13/ldb/GetArrivalDepartureBoard",
      "getArrivalDepartureBoard",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetArrivalDepartureBoardRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetArrivalDepartureBoardResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2012-01-13/ldb/GetServiceDetails",
      "getServiceDetails",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetServiceDetailsRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetServiceDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2015-05-14/ldb/GetDepBoardWithDetails",
      "getDepBoardWithDetails",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetDepBoardWithDetailsRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetDepBoardWithDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2015-05-14/ldb/GetArrBoardWithDetails",
      "getArrBoardWithDetails",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetArrBoardWithDetailsRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetArrBoardWithDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2015-05-14/ldb/GetArrDepBoardWithDetails",
      "getArrDepBoardWithDetails",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetArrDepBoardWithDetailsRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetArrDepBoardWithDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2015-05-14/ldb/GetNextDepartures",
      "getNextDepartures",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetNextDeparturesRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetNextDeparturesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2015-05-14/ldb/GetNextDeparturesWithDetails",
      "getNextDeparturesWithDetails",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetNextDeparturesWithDetailsRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetNextDeparturesWithDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2015-05-14/ldb/GetFastestDepartures",
      "getFastestDepartures",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetFastestDeparturesRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetFastestDeparturesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://thalesgroup.com/RTTI/2015-05-14/ldb/GetFastestDeparturesWithDetails",
      "getFastestDeparturesWithDetails",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetFastestDeparturesWithDetailsRequest"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://thalesgroup.com/RTTI/2017-10-01/ldb/", "GetFastestDeparturesWithDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

