require 'soap/header/simplehandler'

class LDBWSAuth < SOAP::Header::SimpleHandler

	def initialize(token)
		super(XSD::QName.new("http://thalesgroup.com/RTTI/2013-11-28/Token/types", "AccessToken"))
		@token = token
	end

	def on_simple_outbound
		{ 'TokenValue' => @token }
	end
end
