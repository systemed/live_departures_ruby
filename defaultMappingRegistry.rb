require_relative 'default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsCommontypes = "http://thalesgroup.com/RTTI/2017-10-01/ldb/commontypes"
  NsCommontypes_0 = "http://thalesgroup.com/RTTI/2007-10-10/ldb/commontypes"
  NsLdb = "http://thalesgroup.com/RTTI/2017-10-01/ldb/"
  NsTypes = "http://thalesgroup.com/RTTI/2015-11-27/ldb/types"
  NsTypes_0 = "http://thalesgroup.com/RTTI/2017-10-01/ldb/types"
  NsTypes_1 = "http://thalesgroup.com/RTTI/2016-02-16/ldb/types"
  NsTypes_2 = "http://thalesgroup.com/RTTI/2012-01-13/ldb/types"
  NsTypes_3 = "http://thalesgroup.com/RTTI/2013-11-28/Token/types"

  EncodedRegistry.register(
    :class => GetBoardRequestParams,
    :schema_type => XSD::QName.new(NsLdb, "GetBoardRequestParams"),
    :schema_element => [
      ["numRows", "SOAP::SOAPUnsignedShort"],
      ["crs", nil],
      ["filterCrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetServiceDetailsRequestParams,
    :schema_type => XSD::QName.new(NsLdb, "GetServiceDetailsRequestParams"),
    :schema_element => [
      ["serviceID", nil]
    ]
  )

  EncodedRegistry.register(
    :class => GetDeparturesRequestParams,
    :schema_type => XSD::QName.new(NsLdb, "GetDeparturesRequestParams"),
    :schema_element => [
      ["crs", nil],
      ["filterList", "GetDeparturesRequestParams::FilterList"],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDeparturesRequestParams::FilterList,
    :schema_name => XSD::QName.new(NsLdb, "filterList"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["crs", "[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => StationBoardResponseType,
    :schema_type => XSD::QName.new(NsLdb, "StationBoardResponseType"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoard", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StationBoardWithDetailsResponseType,
    :schema_type => XSD::QName.new(NsLdb, "StationBoardWithDetailsResponseType"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoardWithDetails", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceDetailsResponseType,
    :schema_type => XSD::QName.new(NsLdb, "ServiceDetailsResponseType"),
    :schema_element => [
      ["getServiceDetailsResult", ["ServiceDetails", XSD::QName.new(NsLdb, "GetServiceDetailsResult")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeparturesBoardResponseType,
    :schema_type => XSD::QName.new(NsLdb, "DeparturesBoardResponseType"),
    :schema_element => [
      ["departuresBoard", ["DeparturesBoard", XSD::QName.new(NsLdb, "DeparturesBoard")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeparturesBoardWithDetailsResponseType,
    :schema_type => XSD::QName.new(NsLdb, "DeparturesBoardWithDetailsResponseType"),
    :schema_element => [
      ["departuresBoard", ["DeparturesBoardWithDetails", XSD::QName.new(NsLdb, "DeparturesBoard")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StationBoard,
    :schema_type => XSD::QName.new(NsTypes_0, "StationBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["trainServices", "ArrayOfServiceItems", [0, 1]],
      ["busServices", "ArrayOfServiceItems", [0, 1]],
      ["ferryServices", "ArrayOfServiceItems", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StationBoardWithDetails,
    :schema_type => XSD::QName.new(NsTypes_0, "StationBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["trainServices", "ArrayOfServiceItemsWithCallingPoints", [0, 1]],
      ["busServices", "ArrayOfServiceItemsWithCallingPoints", [0, 1]],
      ["ferryServices", "ArrayOfServiceItemsWithCallingPoints", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceDetails,
    :schema_type => XSD::QName.new(NsTypes_0, "ServiceDetails"),
    :schema_basetype => XSD::QName.new(NsTypes_0, "BaseServiceDetails"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["serviceType", "ServiceType"],
      ["locationName", nil],
      ["crs", nil],
      ["operator", nil],
      ["operatorCode", nil],
      ["rsid", nil, [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["overdueMessage", "SOAP::SOAPString", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["platform", nil, [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["ata", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["atd", nil, [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["formation", "FormationData", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeparturesBoard,
    :schema_type => XSD::QName.new(NsTypes_0, "DeparturesBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["departures", "ArrayOfDepartureItems"]
    ]
  )

  EncodedRegistry.register(
    :class => DeparturesBoardWithDetails,
    :schema_type => XSD::QName.new(NsTypes_0, "DeparturesBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["departures", "ArrayOfDepartureItemsWithCallingPoints"]
    ]
  )

  EncodedRegistry.register(
    :class => BaseServiceDetails,
    :schema_type => XSD::QName.new(NsTypes_0, "BaseServiceDetails"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["serviceType", "ServiceType"],
      ["locationName", nil],
      ["crs", nil],
      ["operator", nil],
      ["operatorCode", nil],
      ["rsid", nil, [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["overdueMessage", "SOAP::SOAPString", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["platform", nil, [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["ata", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["atd", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceItem,
    :schema_type => XSD::QName.new(NsTypes_0, "ServiceItem"),
    :schema_basetype => XSD::QName.new(NsTypes_1, "ServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", [nil, XSD::QName.new(NsTypes_1, "rsid")], [0, 1]],
      ["origin", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "origin")], [0, 1]],
      ["destination", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "destination")], [0, 1]],
      ["currentOrigins", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "currentOrigins")], [0, 1]],
      ["currentDestinations", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "currentDestinations")], [0, 1]],
      ["formation", "FormationData", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceItemWithCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ServiceItemWithCallingPoints"),
    :schema_basetype => XSD::QName.new(NsTypes_0, "ServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", [nil, XSD::QName.new(NsTypes_1, "rsid")], [0, 1]],
      ["origin", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "origin")], [0, 1]],
      ["destination", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "destination")], [0, 1]],
      ["currentOrigins", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "currentOrigins")], [0, 1]],
      ["currentDestinations", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "currentDestinations")], [0, 1]],
      ["formation", "FormationData", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DepartureItem,
    :schema_type => XSD::QName.new(NsTypes_0, "DepartureItem"),
    :schema_element => [
      ["service", "ServiceItem"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => DepartureItemWithCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "DepartureItemWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => CallingPoint,
    :schema_type => XSD::QName.new(NsTypes_0, "CallingPoint"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["st", nil, [0, 1]],
      ["et", nil, [0, 1]],
      ["at", nil, [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["formation", "FormationData", [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FormationData,
    :schema_type => XSD::QName.new(NsTypes_0, "FormationData"),
    :schema_element => [
      ["avgLoading", nil, [0, 1]],
      ["coaches", "ArrayOfCoaches", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CoachData,
    :schema_type => XSD::QName.new(NsTypes_0, "CoachData"),
    :schema_element => [
      ["coachClass", nil, [0, 1]],
      ["toilet", "ToiletAvailabilityType", [0, 1]],
      ["loading", nil, [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "number") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => ArrayOfServiceItems,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfServiceItems"),
    :schema_element => [
      ["service", "ServiceItem[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfServiceItemsWithCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfServiceItemsWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDepartureItems,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfDepartureItems"),
    :schema_element => [
      ["destination", "DepartureItem[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDepartureItemsWithCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfDepartureItemsWithCallingPoints"),
    :schema_element => [
      ["destination", "DepartureItemWithCallingPoints[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCoaches,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfCoaches"),
    :schema_element => [
      ["coach", "CoachData[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfArrayOfCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfArrayOfCallingPoints"),
    :schema_element => [
      ["callingPointList", "ArrayOfCallingPoints[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfCallingPoints"),
    :schema_element => [
      ["callingPoint", "CallingPoint[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "serviceType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "serviceChangeRequired") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "assocIsCancelled") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => ToiletAvailabilityType,
    :schema_type => XSD::QName.new(NsCommontypes, "ToiletAvailabilityType"),
    :schema_attribute => {
      XSD::QName.new(nil, "status") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => ServiceLocation,
    :schema_type => XSD::QName.new(NsTypes_2, "ServiceLocation"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["via", "SOAP::SOAPString", [0, 1]],
      ["futureChangeTo", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfServiceLocations,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfServiceLocations"),
    :schema_element => [
      ["location", "ServiceLocation[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceItem_,
    :schema_type => XSD::QName.new(NsTypes_2, "ServiceItem"),
    :schema_element => [
      ["origin", "ArrayOfServiceLocations", [0, 1]],
      ["destination", "ArrayOfServiceLocations", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations", [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["platform", nil, [0, 1]],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCircularRoute", "SOAP::SOAPBoolean", [0, 1]],
      ["serviceID", nil],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfServiceItems_,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfServiceItems"),
    :schema_element => [
      ["service", "ServiceItem_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => NRCCMessage,
    :schema_type => XSD::QName.new(NsTypes_2, "NRCCMessage")
  )

  EncodedRegistry.register(
    :class => ArrayOfNRCCMessages,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfNRCCMessages"),
    :schema_element => [
      ["message", "NRCCMessage[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CallingPoint_,
    :schema_type => XSD::QName.new(NsTypes_2, "CallingPoint"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["st", nil, [0, 1]],
      ["et", nil, [0, 1]],
      ["at", nil, [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfCallingPoints"),
    :schema_element => [
      ["callingPoint", "CallingPoint_[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "serviceType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "serviceChangeRequired") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => ArrayOfArrayOfCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfArrayOfCallingPoints"),
    :schema_element => [
      ["callingPointList", "ArrayOfCallingPoints_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => StationBoard_,
    :schema_type => XSD::QName.new(NsTypes_2, "StationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["trainServices", "ArrayOfServiceItems_", [0, 1]],
      ["busServices", "ArrayOfServiceItems_", [0, 1]],
      ["ferryServices", "ArrayOfServiceItems_", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdhocAlert,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfAdhocAlert"),
    :schema_element => [
      ["adhocAlertText", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceDetails_,
    :schema_type => XSD::QName.new(NsTypes_2, "ServiceDetails"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["serviceType", "ServiceType"],
      ["locationName", nil],
      ["crs", nil],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["disruptionReason", "SOAP::SOAPString", [0, 1]],
      ["overdueMessage", "SOAP::SOAPString", [0, 1]],
      ["platform", nil, [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["ata", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["atd", nil, [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints_", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints_", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StationBoard__,
    :schema_type => XSD::QName.new(NsTypes, "StationBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["trainServices", "ArrayOfServiceItems__", [0, 1]],
      ["busServices", "ArrayOfServiceItems__", [0, 1]],
      ["ferryServices", "ArrayOfServiceItems__", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StationBoardWithDetails_,
    :schema_type => XSD::QName.new(NsTypes, "StationBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["trainServices", "ArrayOfServiceItemsWithCallingPoints_", [0, 1]],
      ["busServices", "ArrayOfServiceItemsWithCallingPoints_", [0, 1]],
      ["ferryServices", "ArrayOfServiceItemsWithCallingPoints_", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceDetails__,
    :schema_type => XSD::QName.new(NsTypes, "ServiceDetails"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["serviceType", "ServiceType"],
      ["locationName", nil],
      ["crs", nil],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["overdueMessage", "SOAP::SOAPString", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["platform", nil, [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["ata", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["atd", nil, [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeparturesBoard_,
    :schema_type => XSD::QName.new(NsTypes, "DeparturesBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["departures", "ArrayOfDepartureItems_"]
    ]
  )

  EncodedRegistry.register(
    :class => DeparturesBoardWithDetails_,
    :schema_type => XSD::QName.new(NsTypes, "DeparturesBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["departures", "ArrayOfDepartureItemsWithCallingPoints_"]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfServiceItems__,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfServiceItems"),
    :schema_element => [
      ["service", "ServiceItem__[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfServiceItemsWithCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfServiceItemsWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfServiceLocations_,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfServiceLocations"),
    :schema_element => [
      ["location", "ServiceLocation_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfArrayOfCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfArrayOfCallingPoints"),
    :schema_element => [
      ["callingPointList", "ArrayOfCallingPoints__[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfCallingPoints"),
    :schema_element => [
      ["callingPoint", "CallingPoint__[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "serviceType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "serviceChangeRequired") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "assocIsCancelled") => "SOAP::SOAPBoolean"
    }
  )

  EncodedRegistry.register(
    :class => ArrayOfDepartureItems_,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfDepartureItems"),
    :schema_element => [
      ["destination", "DepartureItem_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDepartureItemsWithCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfDepartureItemsWithCallingPoints"),
    :schema_element => [
      ["destination", "DepartureItemWithCallingPoints_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BaseStationBoard,
    :schema_type => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BaseServiceItem,
    :schema_type => XSD::QName.new(NsTypes, "BaseServiceItem"),
    :schema_element => [
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["platform", nil, [0, 1]],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCircularRoute", "SOAP::SOAPBoolean", [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["filterLocationCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["serviceType", "ServiceType"],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["serviceID", nil],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceItem__,
    :schema_type => XSD::QName.new(NsTypes, "ServiceItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseServiceItem"),
    :schema_element => [
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["platform", nil, [0, 1]],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCircularRoute", "SOAP::SOAPBoolean", [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["filterLocationCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["serviceType", "ServiceType"],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["serviceID", nil],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["origin", "ArrayOfServiceLocations_", [0, 1]],
      ["destination", "ArrayOfServiceLocations_", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations_", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations_", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceItemWithCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes, "ServiceItemWithCallingPoints"),
    :schema_basetype => XSD::QName.new(NsTypes, "ServiceItem"),
    :schema_element => [
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["platform", nil, [0, 1]],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCircularRoute", "SOAP::SOAPBoolean", [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["filterLocationCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["serviceType", "ServiceType"],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["serviceID", nil],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["origin", "ArrayOfServiceLocations_", [0, 1]],
      ["destination", "ArrayOfServiceLocations_", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations_", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations_", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DepartureItem_,
    :schema_type => XSD::QName.new(NsTypes, "DepartureItem"),
    :schema_element => [
      ["service", "ServiceItem__"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => DepartureItemWithCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes, "DepartureItemWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints_"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => ServiceLocation_,
    :schema_type => XSD::QName.new(NsTypes, "ServiceLocation"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["via", "SOAP::SOAPString", [0, 1]],
      ["futureChangeTo", "SOAP::SOAPString", [0, 1]],
      ["assocIsCancelled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CallingPoint__,
    :schema_type => XSD::QName.new(NsTypes, "CallingPoint"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["st", nil, [0, 1]],
      ["et", nil, [0, 1]],
      ["at", nil, [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StationBoard___,
    :schema_type => XSD::QName.new(NsTypes_1, "StationBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["trainServices", "ArrayOfServiceItems___", [0, 1]],
      ["busServices", "ArrayOfServiceItems___", [0, 1]],
      ["ferryServices", "ArrayOfServiceItems___", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StationBoardWithDetails__,
    :schema_type => XSD::QName.new(NsTypes_1, "StationBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["trainServices", "ArrayOfServiceItemsWithCallingPoints__", [0, 1]],
      ["busServices", "ArrayOfServiceItemsWithCallingPoints__", [0, 1]],
      ["ferryServices", "ArrayOfServiceItemsWithCallingPoints__", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceDetails___,
    :schema_type => XSD::QName.new(NsTypes_1, "ServiceDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "ServiceDetails"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["overdueMessage", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "overdueMessage")], [0, 1]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["ata", [nil, XSD::QName.new(NsTypes, "ata")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["atd", [nil, XSD::QName.new(NsTypes, "atd")], [0, 1]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["previousCallingPoints", ["ArrayOfArrayOfCallingPoints__", XSD::QName.new(NsTypes, "previousCallingPoints")], [0, 1]],
      ["subsequentCallingPoints", ["ArrayOfArrayOfCallingPoints__", XSD::QName.new(NsTypes, "subsequentCallingPoints")], [0, 1]],
      ["rsid", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeparturesBoard__,
    :schema_type => XSD::QName.new(NsTypes_1, "DeparturesBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["departures", "ArrayOfDepartureItems__"]
    ]
  )

  EncodedRegistry.register(
    :class => DeparturesBoardWithDetails__,
    :schema_type => XSD::QName.new(NsTypes_1, "DeparturesBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["departures", "ArrayOfDepartureItemsWithCallingPoints__"]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfServiceItems___,
    :schema_type => XSD::QName.new(NsTypes_1, "ArrayOfServiceItems"),
    :schema_element => [
      ["service", "ServiceItem___[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfServiceItemsWithCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes_1, "ArrayOfServiceItemsWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints__[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDepartureItems__,
    :schema_type => XSD::QName.new(NsTypes_1, "ArrayOfDepartureItems"),
    :schema_element => [
      ["destination", "DepartureItem__[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDepartureItemsWithCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes_1, "ArrayOfDepartureItemsWithCallingPoints"),
    :schema_element => [
      ["destination", "DepartureItemWithCallingPoints__[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BaseServiceItem_,
    :schema_type => XSD::QName.new(NsTypes_1, "BaseServiceItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceItem___,
    :schema_type => XSD::QName.new(NsTypes_1, "ServiceItem"),
    :schema_basetype => XSD::QName.new(NsTypes_1, "BaseServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", nil, [0, 1]],
      ["origin", "ArrayOfServiceLocations_", [0, 1]],
      ["destination", "ArrayOfServiceLocations_", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations_", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations_", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceItemWithCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes_1, "ServiceItemWithCallingPoints"),
    :schema_basetype => XSD::QName.new(NsTypes_1, "ServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", nil, [0, 1]],
      ["origin", "ArrayOfServiceLocations_", [0, 1]],
      ["destination", "ArrayOfServiceLocations_", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations_", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations_", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DepartureItem__,
    :schema_type => XSD::QName.new(NsTypes_1, "DepartureItem"),
    :schema_element => [
      ["service", "ServiceItem___"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => DepartureItemWithCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes_1, "DepartureItemWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints__"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => AccessToken,
    :schema_type => XSD::QName.new(NsTypes_3, "AccessToken"),
    :schema_element => [
      ["tokenValue", ["SOAP::SOAPString", XSD::QName.new(NsTypes_3, "TokenValue")]]
    ]
  )

  EncodedRegistry.register(
    :class => FilterType,
    :schema_type => XSD::QName.new(NsCommontypes_0, "FilterType")
  )

  EncodedRegistry.register(
    :class => ServiceType,
    :schema_type => XSD::QName.new(NsCommontypes_0, "ServiceType")
  )

  EncodedRegistry.register(
    :class => ToiletStatus,
    :schema_type => XSD::QName.new(NsCommontypes, "ToiletStatus")
  )

  LiteralRegistry.register(
    :class => GetBoardRequestParams,
    :schema_type => XSD::QName.new(NsLdb, "GetBoardRequestParams"),
    :schema_element => [
      ["numRows", "SOAP::SOAPUnsignedShort"],
      ["crs", nil],
      ["filterCrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetServiceDetailsRequestParams,
    :schema_type => XSD::QName.new(NsLdb, "GetServiceDetailsRequestParams"),
    :schema_element => [
      ["serviceID", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams,
    :schema_type => XSD::QName.new(NsLdb, "GetDeparturesRequestParams"),
    :schema_element => [
      ["crs", nil],
      ["filterList", "GetDeparturesRequestParams::FilterList"],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams::FilterList,
    :schema_name => XSD::QName.new(NsLdb, "filterList"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["crs", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardResponseType,
    :schema_type => XSD::QName.new(NsLdb, "StationBoardResponseType"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoard", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardWithDetailsResponseType,
    :schema_type => XSD::QName.new(NsLdb, "StationBoardWithDetailsResponseType"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoardWithDetails", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceDetailsResponseType,
    :schema_type => XSD::QName.new(NsLdb, "ServiceDetailsResponseType"),
    :schema_element => [
      ["getServiceDetailsResult", ["ServiceDetails", XSD::QName.new(NsLdb, "GetServiceDetailsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoardResponseType,
    :schema_type => XSD::QName.new(NsLdb, "DeparturesBoardResponseType"),
    :schema_element => [
      ["departuresBoard", ["DeparturesBoard", XSD::QName.new(NsLdb, "DeparturesBoard")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoardWithDetailsResponseType,
    :schema_type => XSD::QName.new(NsLdb, "DeparturesBoardWithDetailsResponseType"),
    :schema_element => [
      ["departuresBoard", ["DeparturesBoardWithDetails", XSD::QName.new(NsLdb, "DeparturesBoard")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoard,
    :schema_type => XSD::QName.new(NsTypes_0, "StationBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["trainServices", "ArrayOfServiceItems", [0, 1]],
      ["busServices", "ArrayOfServiceItems", [0, 1]],
      ["ferryServices", "ArrayOfServiceItems", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardWithDetails,
    :schema_type => XSD::QName.new(NsTypes_0, "StationBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["trainServices", "ArrayOfServiceItemsWithCallingPoints", [0, 1]],
      ["busServices", "ArrayOfServiceItemsWithCallingPoints", [0, 1]],
      ["ferryServices", "ArrayOfServiceItemsWithCallingPoints", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceDetails,
    :schema_type => XSD::QName.new(NsTypes_0, "ServiceDetails"),
    :schema_basetype => XSD::QName.new(NsTypes_0, "BaseServiceDetails"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["serviceType", "ServiceType"],
      ["locationName", nil],
      ["crs", nil],
      ["operator", nil],
      ["operatorCode", nil],
      ["rsid", nil, [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["overdueMessage", "SOAP::SOAPString", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["platform", nil, [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["ata", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["atd", nil, [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["formation", "FormationData", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoard,
    :schema_type => XSD::QName.new(NsTypes_0, "DeparturesBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["departures", "ArrayOfDepartureItems"]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoardWithDetails,
    :schema_type => XSD::QName.new(NsTypes_0, "DeparturesBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["departures", "ArrayOfDepartureItemsWithCallingPoints"]
    ]
  )

  LiteralRegistry.register(
    :class => BaseServiceDetails,
    :schema_type => XSD::QName.new(NsTypes_0, "BaseServiceDetails"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["serviceType", "ServiceType"],
      ["locationName", nil],
      ["crs", nil],
      ["operator", nil],
      ["operatorCode", nil],
      ["rsid", nil, [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["overdueMessage", "SOAP::SOAPString", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["platform", nil, [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["ata", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["atd", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceItem,
    :schema_type => XSD::QName.new(NsTypes_0, "ServiceItem"),
    :schema_basetype => XSD::QName.new(NsTypes_1, "ServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", [nil, XSD::QName.new(NsTypes_1, "rsid")], [0, 1]],
      ["origin", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "origin")], [0, 1]],
      ["destination", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "destination")], [0, 1]],
      ["currentOrigins", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "currentOrigins")], [0, 1]],
      ["currentDestinations", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "currentDestinations")], [0, 1]],
      ["formation", "FormationData", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceItemWithCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ServiceItemWithCallingPoints"),
    :schema_basetype => XSD::QName.new(NsTypes_0, "ServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", [nil, XSD::QName.new(NsTypes_1, "rsid")], [0, 1]],
      ["origin", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "origin")], [0, 1]],
      ["destination", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "destination")], [0, 1]],
      ["currentOrigins", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "currentOrigins")], [0, 1]],
      ["currentDestinations", ["ArrayOfServiceLocations_", XSD::QName.new(NsTypes_1, "currentDestinations")], [0, 1]],
      ["formation", "FormationData", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DepartureItem,
    :schema_type => XSD::QName.new(NsTypes_0, "DepartureItem"),
    :schema_element => [
      ["service", "ServiceItem"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => DepartureItemWithCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "DepartureItemWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => CallingPoint,
    :schema_type => XSD::QName.new(NsTypes_0, "CallingPoint"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["st", nil, [0, 1]],
      ["et", nil, [0, 1]],
      ["at", nil, [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["formation", "FormationData", [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FormationData,
    :schema_type => XSD::QName.new(NsTypes_0, "FormationData"),
    :schema_element => [
      ["avgLoading", nil, [0, 1]],
      ["coaches", "ArrayOfCoaches", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CoachData,
    :schema_type => XSD::QName.new(NsTypes_0, "CoachData"),
    :schema_element => [
      ["coachClass", nil, [0, 1]],
      ["toilet", "ToiletAvailabilityType", [0, 1]],
      ["loading", nil, [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "number") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => ArrayOfServiceItems,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfServiceItems"),
    :schema_element => [
      ["service", "ServiceItem[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfServiceItemsWithCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfServiceItemsWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDepartureItems,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfDepartureItems"),
    :schema_element => [
      ["destination", "DepartureItem[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDepartureItemsWithCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfDepartureItemsWithCallingPoints"),
    :schema_element => [
      ["destination", "DepartureItemWithCallingPoints[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCoaches,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfCoaches"),
    :schema_element => [
      ["coach", "CoachData[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfArrayOfCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfArrayOfCallingPoints"),
    :schema_element => [
      ["callingPointList", "ArrayOfCallingPoints[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCallingPoints,
    :schema_type => XSD::QName.new(NsTypes_0, "ArrayOfCallingPoints"),
    :schema_element => [
      ["callingPoint", "CallingPoint[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "serviceType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "serviceChangeRequired") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "assocIsCancelled") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => ToiletAvailabilityType,
    :schema_type => XSD::QName.new(NsCommontypes, "ToiletAvailabilityType"),
    :schema_attribute => {
      XSD::QName.new(nil, "status") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => ServiceLocation,
    :schema_type => XSD::QName.new(NsTypes_2, "ServiceLocation"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["via", "SOAP::SOAPString", [0, 1]],
      ["futureChangeTo", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfServiceLocations,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfServiceLocations"),
    :schema_element => [
      ["location", "ServiceLocation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceItem_,
    :schema_type => XSD::QName.new(NsTypes_2, "ServiceItem"),
    :schema_element => [
      ["origin", "ArrayOfServiceLocations", [0, 1]],
      ["destination", "ArrayOfServiceLocations", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations", [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["platform", nil, [0, 1]],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCircularRoute", "SOAP::SOAPBoolean", [0, 1]],
      ["serviceID", nil],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfServiceItems_,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfServiceItems"),
    :schema_element => [
      ["service", "ServiceItem_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => NRCCMessage,
    :schema_type => XSD::QName.new(NsTypes_2, "NRCCMessage")
  )

  LiteralRegistry.register(
    :class => ArrayOfNRCCMessages,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfNRCCMessages"),
    :schema_element => [
      ["message", "NRCCMessage[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CallingPoint_,
    :schema_type => XSD::QName.new(NsTypes_2, "CallingPoint"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["st", nil, [0, 1]],
      ["et", nil, [0, 1]],
      ["at", nil, [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfCallingPoints"),
    :schema_element => [
      ["callingPoint", "CallingPoint_[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "serviceType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "serviceChangeRequired") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => ArrayOfArrayOfCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfArrayOfCallingPoints"),
    :schema_element => [
      ["callingPointList", "ArrayOfCallingPoints_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoard_,
    :schema_type => XSD::QName.new(NsTypes_2, "StationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["trainServices", "ArrayOfServiceItems_", [0, 1]],
      ["busServices", "ArrayOfServiceItems_", [0, 1]],
      ["ferryServices", "ArrayOfServiceItems_", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdhocAlert,
    :schema_type => XSD::QName.new(NsTypes_2, "ArrayOfAdhocAlert"),
    :schema_element => [
      ["adhocAlertText", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceDetails_,
    :schema_type => XSD::QName.new(NsTypes_2, "ServiceDetails"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["serviceType", "ServiceType"],
      ["locationName", nil],
      ["crs", nil],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["disruptionReason", "SOAP::SOAPString", [0, 1]],
      ["overdueMessage", "SOAP::SOAPString", [0, 1]],
      ["platform", nil, [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["ata", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["atd", nil, [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints_", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints_", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoard__,
    :schema_type => XSD::QName.new(NsTypes, "StationBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["trainServices", "ArrayOfServiceItems__", [0, 1]],
      ["busServices", "ArrayOfServiceItems__", [0, 1]],
      ["ferryServices", "ArrayOfServiceItems__", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardWithDetails_,
    :schema_type => XSD::QName.new(NsTypes, "StationBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["trainServices", "ArrayOfServiceItemsWithCallingPoints_", [0, 1]],
      ["busServices", "ArrayOfServiceItemsWithCallingPoints_", [0, 1]],
      ["ferryServices", "ArrayOfServiceItemsWithCallingPoints_", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceDetails__,
    :schema_type => XSD::QName.new(NsTypes, "ServiceDetails"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["serviceType", "ServiceType"],
      ["locationName", nil],
      ["crs", nil],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["overdueMessage", "SOAP::SOAPString", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["platform", nil, [0, 1]],
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["ata", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["atd", nil, [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoard_,
    :schema_type => XSD::QName.new(NsTypes, "DeparturesBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["departures", "ArrayOfDepartureItems_"]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoardWithDetails_,
    :schema_type => XSD::QName.new(NsTypes, "DeparturesBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["departures", "ArrayOfDepartureItemsWithCallingPoints_"]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfServiceItems__,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfServiceItems"),
    :schema_element => [
      ["service", "ServiceItem__[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfServiceItemsWithCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfServiceItemsWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfServiceLocations_,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfServiceLocations"),
    :schema_element => [
      ["location", "ServiceLocation_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfArrayOfCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfArrayOfCallingPoints"),
    :schema_element => [
      ["callingPointList", "ArrayOfCallingPoints__[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfCallingPoints"),
    :schema_element => [
      ["callingPoint", "CallingPoint__[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "serviceType") => "SOAP::SOAPString",
      XSD::QName.new(nil, "serviceChangeRequired") => "SOAP::SOAPBoolean",
      XSD::QName.new(nil, "assocIsCancelled") => "SOAP::SOAPBoolean"
    }
  )

  LiteralRegistry.register(
    :class => ArrayOfDepartureItems_,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfDepartureItems"),
    :schema_element => [
      ["destination", "DepartureItem_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDepartureItemsWithCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfDepartureItemsWithCallingPoints"),
    :schema_element => [
      ["destination", "DepartureItemWithCallingPoints_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BaseStationBoard,
    :schema_type => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", "SOAP::SOAPDateTime"],
      ["locationName", nil],
      ["crs", nil],
      ["filterLocationName", nil, [0, 1]],
      ["filtercrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["nrccMessages", "ArrayOfNRCCMessages", [0, 1]],
      ["platformAvailable", "SOAP::SOAPBoolean", [0, 1]],
      ["areServicesAvailable", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BaseServiceItem,
    :schema_type => XSD::QName.new(NsTypes, "BaseServiceItem"),
    :schema_element => [
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["platform", nil, [0, 1]],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCircularRoute", "SOAP::SOAPBoolean", [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["filterLocationCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["serviceType", "ServiceType"],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["serviceID", nil],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceItem__,
    :schema_type => XSD::QName.new(NsTypes, "ServiceItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseServiceItem"),
    :schema_element => [
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["platform", nil, [0, 1]],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCircularRoute", "SOAP::SOAPBoolean", [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["filterLocationCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["serviceType", "ServiceType"],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["serviceID", nil],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["origin", "ArrayOfServiceLocations_", [0, 1]],
      ["destination", "ArrayOfServiceLocations_", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations_", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations_", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceItemWithCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes, "ServiceItemWithCallingPoints"),
    :schema_basetype => XSD::QName.new(NsTypes, "ServiceItem"),
    :schema_element => [
      ["sta", nil, [0, 1]],
      ["eta", nil, [0, 1]],
      ["std", nil, [0, 1]],
      ["etd", nil, [0, 1]],
      ["platform", nil, [0, 1]],
      ["operator", nil],
      ["operatorCode", nil],
      ["isCircularRoute", "SOAP::SOAPBoolean", [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["filterLocationCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["serviceType", "ServiceType"],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["isReverseFormation", "SOAP::SOAPBoolean", [0, 1]],
      ["cancelReason", "SOAP::SOAPString", [0, 1]],
      ["delayReason", "SOAP::SOAPString", [0, 1]],
      ["serviceID", nil],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]],
      ["origin", "ArrayOfServiceLocations_", [0, 1]],
      ["destination", "ArrayOfServiceLocations_", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations_", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations_", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DepartureItem_,
    :schema_type => XSD::QName.new(NsTypes, "DepartureItem"),
    :schema_element => [
      ["service", "ServiceItem__"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => DepartureItemWithCallingPoints_,
    :schema_type => XSD::QName.new(NsTypes, "DepartureItemWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints_"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => ServiceLocation_,
    :schema_type => XSD::QName.new(NsTypes, "ServiceLocation"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["via", "SOAP::SOAPString", [0, 1]],
      ["futureChangeTo", "SOAP::SOAPString", [0, 1]],
      ["assocIsCancelled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CallingPoint__,
    :schema_type => XSD::QName.new(NsTypes, "CallingPoint"),
    :schema_element => [
      ["locationName", nil],
      ["crs", nil],
      ["st", nil, [0, 1]],
      ["et", nil, [0, 1]],
      ["at", nil, [0, 1]],
      ["isCancelled", "SOAP::SOAPBoolean", [0, 1]],
      ["length", nil, [0, 1]],
      ["detachFront", "SOAP::SOAPBoolean", [0, 1]],
      ["adhocAlerts", "ArrayOfAdhocAlert", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoard___,
    :schema_type => XSD::QName.new(NsTypes_1, "StationBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["trainServices", "ArrayOfServiceItems___", [0, 1]],
      ["busServices", "ArrayOfServiceItems___", [0, 1]],
      ["ferryServices", "ArrayOfServiceItems___", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardWithDetails__,
    :schema_type => XSD::QName.new(NsTypes_1, "StationBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["trainServices", "ArrayOfServiceItemsWithCallingPoints__", [0, 1]],
      ["busServices", "ArrayOfServiceItemsWithCallingPoints__", [0, 1]],
      ["ferryServices", "ArrayOfServiceItemsWithCallingPoints__", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceDetails___,
    :schema_type => XSD::QName.new(NsTypes_1, "ServiceDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "ServiceDetails"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["overdueMessage", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "overdueMessage")], [0, 1]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["ata", [nil, XSD::QName.new(NsTypes, "ata")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["atd", [nil, XSD::QName.new(NsTypes, "atd")], [0, 1]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["previousCallingPoints", ["ArrayOfArrayOfCallingPoints__", XSD::QName.new(NsTypes, "previousCallingPoints")], [0, 1]],
      ["subsequentCallingPoints", ["ArrayOfArrayOfCallingPoints__", XSD::QName.new(NsTypes, "subsequentCallingPoints")], [0, 1]],
      ["rsid", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoard__,
    :schema_type => XSD::QName.new(NsTypes_1, "DeparturesBoard"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["departures", "ArrayOfDepartureItems__"]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoardWithDetails__,
    :schema_type => XSD::QName.new(NsTypes_1, "DeparturesBoardWithDetails"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseStationBoard"),
    :schema_element => [
      ["generatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(NsTypes, "generatedAt")]],
      ["locationName", [nil, XSD::QName.new(NsTypes, "locationName")]],
      ["crs", [nil, XSD::QName.new(NsTypes, "crs")]],
      ["filterLocationName", [nil, XSD::QName.new(NsTypes, "filterLocationName")], [0, 1]],
      ["filtercrs", [nil, XSD::QName.new(NsTypes, "filtercrs")], [0, 1]],
      ["filterType", ["FilterType", XSD::QName.new(NsTypes, "filterType")], [0, 1]],
      ["nrccMessages", ["ArrayOfNRCCMessages", XSD::QName.new(NsTypes, "nrccMessages")], [0, 1]],
      ["platformAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "platformAvailable")], [0, 1]],
      ["areServicesAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "areServicesAvailable")], [0, 1]],
      ["departures", "ArrayOfDepartureItemsWithCallingPoints__"]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfServiceItems___,
    :schema_type => XSD::QName.new(NsTypes_1, "ArrayOfServiceItems"),
    :schema_element => [
      ["service", "ServiceItem___[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfServiceItemsWithCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes_1, "ArrayOfServiceItemsWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints__[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDepartureItems__,
    :schema_type => XSD::QName.new(NsTypes_1, "ArrayOfDepartureItems"),
    :schema_element => [
      ["destination", "DepartureItem__[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDepartureItemsWithCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes_1, "ArrayOfDepartureItemsWithCallingPoints"),
    :schema_element => [
      ["destination", "DepartureItemWithCallingPoints__[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BaseServiceItem_,
    :schema_type => XSD::QName.new(NsTypes_1, "BaseServiceItem"),
    :schema_basetype => XSD::QName.new(NsTypes, "BaseServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceItem___,
    :schema_type => XSD::QName.new(NsTypes_1, "ServiceItem"),
    :schema_basetype => XSD::QName.new(NsTypes_1, "BaseServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", nil, [0, 1]],
      ["origin", "ArrayOfServiceLocations_", [0, 1]],
      ["destination", "ArrayOfServiceLocations_", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations_", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations_", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceItemWithCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes_1, "ServiceItemWithCallingPoints"),
    :schema_basetype => XSD::QName.new(NsTypes_1, "ServiceItem"),
    :schema_element => [
      ["sta", [nil, XSD::QName.new(NsTypes, "sta")], [0, 1]],
      ["eta", [nil, XSD::QName.new(NsTypes, "eta")], [0, 1]],
      ["std", [nil, XSD::QName.new(NsTypes, "std")], [0, 1]],
      ["etd", [nil, XSD::QName.new(NsTypes, "etd")], [0, 1]],
      ["platform", [nil, XSD::QName.new(NsTypes, "platform")], [0, 1]],
      ["operator", [nil, XSD::QName.new(NsTypes, "operator")]],
      ["operatorCode", [nil, XSD::QName.new(NsTypes, "operatorCode")]],
      ["isCircularRoute", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCircularRoute")], [0, 1]],
      ["isCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isCancelled")], [0, 1]],
      ["filterLocationCancelled", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "filterLocationCancelled")], [0, 1]],
      ["serviceType", ["ServiceType", XSD::QName.new(NsTypes, "serviceType")]],
      ["length", [nil, XSD::QName.new(NsTypes, "length")], [0, 1]],
      ["detachFront", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "detachFront")], [0, 1]],
      ["isReverseFormation", ["SOAP::SOAPBoolean", XSD::QName.new(NsTypes, "isReverseFormation")], [0, 1]],
      ["cancelReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "cancelReason")], [0, 1]],
      ["delayReason", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "delayReason")], [0, 1]],
      ["serviceID", [nil, XSD::QName.new(NsTypes, "serviceID")]],
      ["adhocAlerts", ["ArrayOfAdhocAlert", XSD::QName.new(NsTypes, "adhocAlerts")], [0, 1]],
      ["rsid", nil, [0, 1]],
      ["origin", "ArrayOfServiceLocations_", [0, 1]],
      ["destination", "ArrayOfServiceLocations_", [0, 1]],
      ["currentOrigins", "ArrayOfServiceLocations_", [0, 1]],
      ["currentDestinations", "ArrayOfServiceLocations_", [0, 1]],
      ["previousCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]],
      ["subsequentCallingPoints", "ArrayOfArrayOfCallingPoints__", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DepartureItem__,
    :schema_type => XSD::QName.new(NsTypes_1, "DepartureItem"),
    :schema_element => [
      ["service", "ServiceItem___"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => DepartureItemWithCallingPoints__,
    :schema_type => XSD::QName.new(NsTypes_1, "DepartureItemWithCallingPoints"),
    :schema_element => [
      ["service", "ServiceItemWithCallingPoints__"]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "crs") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => AccessToken,
    :schema_type => XSD::QName.new(NsTypes_3, "AccessToken"),
    :schema_element => [
      ["tokenValue", ["SOAP::SOAPString", XSD::QName.new(NsTypes_3, "TokenValue")]]
    ]
  )

  LiteralRegistry.register(
    :class => FilterType,
    :schema_type => XSD::QName.new(NsCommontypes_0, "FilterType")
  )

  LiteralRegistry.register(
    :class => ServiceType,
    :schema_type => XSD::QName.new(NsCommontypes_0, "ServiceType")
  )

  LiteralRegistry.register(
    :class => ToiletStatus,
    :schema_type => XSD::QName.new(NsCommontypes, "ToiletStatus")
  )

  LiteralRegistry.register(
    :class => GetBoardRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetDepartureBoardRequest"),
    :schema_element => [
      ["numRows", "SOAP::SOAPUnsignedShort"],
      ["crs", nil],
      ["filterCrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBoardRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetArrivalBoardRequest"),
    :schema_element => [
      ["numRows", "SOAP::SOAPUnsignedShort"],
      ["crs", nil],
      ["filterCrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBoardRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetArrivalDepartureBoardRequest"),
    :schema_element => [
      ["numRows", "SOAP::SOAPUnsignedShort"],
      ["crs", nil],
      ["filterCrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetServiceDetailsRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetServiceDetailsRequest"),
    :schema_element => [
      ["serviceID", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetBoardRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetDepBoardWithDetailsRequest"),
    :schema_element => [
      ["numRows", "SOAP::SOAPUnsignedShort"],
      ["crs", nil],
      ["filterCrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBoardRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetArrBoardWithDetailsRequest"),
    :schema_element => [
      ["numRows", "SOAP::SOAPUnsignedShort"],
      ["crs", nil],
      ["filterCrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBoardRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetArrDepBoardWithDetailsRequest"),
    :schema_element => [
      ["numRows", "SOAP::SOAPUnsignedShort"],
      ["crs", nil],
      ["filterCrs", nil, [0, 1]],
      ["filterType", "FilterType", [0, 1]],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetNextDeparturesRequest"),
    :schema_element => [
      ["crs", nil],
      ["filterList", "GetDeparturesRequestParams::FilterList"],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams::FilterList,
    :schema_name => XSD::QName.new(NsLdb, "filterList"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["crs", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetNextDeparturesWithDetailsRequest"),
    :schema_element => [
      ["crs", nil],
      ["filterList", "GetDeparturesRequestParams::FilterList"],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams::FilterList,
    :schema_name => XSD::QName.new(NsLdb, "filterList"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["crs", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetFastestDeparturesRequest"),
    :schema_element => [
      ["crs", nil],
      ["filterList", "GetDeparturesRequestParams::FilterList"],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams::FilterList,
    :schema_name => XSD::QName.new(NsLdb, "filterList"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["crs", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams,
    :schema_name => XSD::QName.new(NsLdb, "GetFastestDeparturesWithDetailsRequest"),
    :schema_element => [
      ["crs", nil],
      ["filterList", "GetDeparturesRequestParams::FilterList"],
      ["timeOffset", "SOAP::SOAPInt", [0, 1]],
      ["timeWindow", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeparturesRequestParams::FilterList,
    :schema_name => XSD::QName.new(NsLdb, "filterList"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["crs", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetDepartureBoardResponse"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoard", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetArrivalBoardResponse"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoard", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetArrivalDepartureBoardResponse"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoard", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceDetailsResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetServiceDetailsResponse"),
    :schema_element => [
      ["getServiceDetailsResult", ["ServiceDetails", XSD::QName.new(NsLdb, "GetServiceDetailsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardWithDetailsResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetDepBoardWithDetailsResponse"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoardWithDetails", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardWithDetailsResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetArrBoardWithDetailsResponse"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoardWithDetails", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StationBoardWithDetailsResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetArrDepBoardWithDetailsResponse"),
    :schema_element => [
      ["getStationBoardResult", ["StationBoardWithDetails", XSD::QName.new(NsLdb, "GetStationBoardResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoardResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetNextDeparturesResponse"),
    :schema_element => [
      ["departuresBoard", ["DeparturesBoard", XSD::QName.new(NsLdb, "DeparturesBoard")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoardWithDetailsResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetNextDeparturesWithDetailsResponse"),
    :schema_element => [
      ["departuresBoard", ["DeparturesBoardWithDetails", XSD::QName.new(NsLdb, "DeparturesBoard")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoardResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetFastestDeparturesResponse"),
    :schema_element => [
      ["departuresBoard", ["DeparturesBoard", XSD::QName.new(NsLdb, "DeparturesBoard")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeparturesBoardWithDetailsResponseType,
    :schema_name => XSD::QName.new(NsLdb, "GetFastestDeparturesWithDetailsResponse"),
    :schema_element => [
      ["departuresBoard", ["DeparturesBoardWithDetails", XSD::QName.new(NsLdb, "DeparturesBoard")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccessToken,
    :schema_name => XSD::QName.new(NsTypes_3, "AccessToken"),
    :schema_element => [
      ["tokenValue", ["SOAP::SOAPString", XSD::QName.new(NsTypes_3, "TokenValue")]]
    ]
  )
end
