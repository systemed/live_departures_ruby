require 'xsd/qname'

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetBoardRequestParams
#   numRows - SOAP::SOAPUnsignedShort
#   crs - (any)
#   filterCrs - (any)
#   filterType - FilterType
#   timeOffset - SOAP::SOAPInt
#   timeWindow - SOAP::SOAPInt
class GetBoardRequestParams
  attr_accessor :numRows
  attr_accessor :crs
  attr_accessor :filterCrs
  attr_accessor :filterType
  attr_accessor :timeOffset
  attr_accessor :timeWindow

  def initialize(numRows = nil, crs = nil, filterCrs = nil, filterType = nil, timeOffset = nil, timeWindow = nil)
    @numRows = numRows
    @crs = crs
    @filterCrs = filterCrs
    @filterType = filterType
    @timeOffset = timeOffset
    @timeWindow = timeWindow
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetServiceDetailsRequestParams
#   serviceID - (any)
class GetServiceDetailsRequestParams
  attr_accessor :serviceID

  def initialize(serviceID = nil)
    @serviceID = serviceID
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/}GetDeparturesRequestParams
#   crs - (any)
#   filterList - GetDeparturesRequestParams::FilterList
#   timeOffset - SOAP::SOAPInt
#   timeWindow - SOAP::SOAPInt
class GetDeparturesRequestParams

  # inner class for member: filterList
  # {http://thalesgroup.com/RTTI/2017-10-01/ldb/}filterList
  class FilterList < ::Array
  end

  attr_accessor :crs
  attr_accessor :filterList
  attr_accessor :timeOffset
  attr_accessor :timeWindow

  def initialize(crs = nil, filterList = nil, timeOffset = nil, timeWindow = nil)
    @crs = crs
    @filterList = filterList
    @timeOffset = timeOffset
    @timeWindow = timeWindow
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardResponseType
#   getStationBoardResult - StationBoard
class StationBoardResponseType
  attr_accessor :getStationBoardResult

  def initialize(getStationBoardResult = nil)
    @getStationBoardResult = getStationBoardResult
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/}StationBoardWithDetailsResponseType
#   getStationBoardResult - StationBoardWithDetails
class StationBoardWithDetailsResponseType
  attr_accessor :getStationBoardResult

  def initialize(getStationBoardResult = nil)
    @getStationBoardResult = getStationBoardResult
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/}ServiceDetailsResponseType
#   getServiceDetailsResult - ServiceDetails
class ServiceDetailsResponseType
  attr_accessor :getServiceDetailsResult

  def initialize(getServiceDetailsResult = nil)
    @getServiceDetailsResult = getServiceDetailsResult
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardResponseType
#   departuresBoard - DeparturesBoard
class DeparturesBoardResponseType
  attr_accessor :departuresBoard

  def initialize(departuresBoard = nil)
    @departuresBoard = departuresBoard
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/}DeparturesBoardWithDetailsResponseType
#   departuresBoard - DeparturesBoardWithDetails
class DeparturesBoardWithDetailsResponseType
  attr_accessor :departuresBoard

  def initialize(departuresBoard = nil)
    @departuresBoard = departuresBoard
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}BaseServiceDetails
#   generatedAt - SOAP::SOAPDateTime
#   serviceType - ServiceType
#   locationName - (any)
#   crs - (any)
#   operator - (any)
#   operatorCode - (any)
#   rsid - (any)
#   isCancelled - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   overdueMessage - SOAP::SOAPString
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   platform - (any)
#   sta - (any)
#   eta - (any)
#   ata - (any)
#   std - (any)
#   etd - (any)
#   atd - (any)
class BaseServiceDetails
  attr_accessor :generatedAt
  attr_accessor :serviceType
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :rsid
  attr_accessor :isCancelled
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :overdueMessage
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :platform
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :ata
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :atd

  def initialize(generatedAt = nil, serviceType = nil, locationName = nil, crs = nil, operator = nil, operatorCode = nil, rsid = nil, isCancelled = nil, cancelReason = nil, delayReason = nil, overdueMessage = nil, length = nil, detachFront = nil, isReverseFormation = nil, platform = nil, sta = nil, eta = nil, ata = nil, std = nil, etd = nil, atd = nil)
    @generatedAt = generatedAt
    @serviceType = serviceType
    @locationName = locationName
    @crs = crs
    @operator = operator
    @operatorCode = operatorCode
    @rsid = rsid
    @isCancelled = isCancelled
    @cancelReason = cancelReason
    @delayReason = delayReason
    @overdueMessage = overdueMessage
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @platform = platform
    @sta = sta
    @eta = eta
    @ata = ata
    @std = std
    @etd = etd
    @atd = atd
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ServiceDetails
#   generatedAt - SOAP::SOAPDateTime
#   serviceType - ServiceType
#   locationName - (any)
#   crs - (any)
#   operator - (any)
#   operatorCode - (any)
#   rsid - (any)
#   isCancelled - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   overdueMessage - SOAP::SOAPString
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   platform - (any)
#   sta - (any)
#   eta - (any)
#   ata - (any)
#   std - (any)
#   etd - (any)
#   atd - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   formation - FormationData
#   previousCallingPoints - ArrayOfArrayOfCallingPoints
#   subsequentCallingPoints - ArrayOfArrayOfCallingPoints
class ServiceDetails < BaseServiceDetails
  attr_accessor :generatedAt
  attr_accessor :serviceType
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :rsid
  attr_accessor :isCancelled
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :overdueMessage
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :platform
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :ata
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :atd
  attr_accessor :adhocAlerts
  attr_accessor :formation
  attr_accessor :previousCallingPoints
  attr_accessor :subsequentCallingPoints

  def initialize(generatedAt = nil, serviceType = nil, locationName = nil, crs = nil, operator = nil, operatorCode = nil, rsid = nil, isCancelled = nil, cancelReason = nil, delayReason = nil, overdueMessage = nil, length = nil, detachFront = nil, isReverseFormation = nil, platform = nil, sta = nil, eta = nil, ata = nil, std = nil, etd = nil, atd = nil, adhocAlerts = nil, formation = nil, previousCallingPoints = nil, subsequentCallingPoints = nil)
    @generatedAt = generatedAt
    @serviceType = serviceType
    @locationName = locationName
    @crs = crs
    @operator = operator
    @operatorCode = operatorCode
    @rsid = rsid
    @isCancelled = isCancelled
    @cancelReason = cancelReason
    @delayReason = delayReason
    @overdueMessage = overdueMessage
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @platform = platform
    @sta = sta
    @eta = eta
    @ata = ata
    @std = std
    @etd = etd
    @atd = atd
    @adhocAlerts = adhocAlerts
    @formation = formation
    @previousCallingPoints = previousCallingPoints
    @subsequentCallingPoints = subsequentCallingPoints
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}DepartureItem
#   service - ServiceItem
#   xmlattr_crs - SOAP::SOAPString
class DepartureItem
  AttrCrs = XSD::QName.new(nil, "crs")

  attr_accessor :service

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_crs
    __xmlattr[AttrCrs]
  end

  def xmlattr_crs=(value)
    __xmlattr[AttrCrs] = value
  end

  def initialize(service = nil)
    @service = service
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}DepartureItemWithCallingPoints
#   service - ServiceItemWithCallingPoints
#   xmlattr_crs - SOAP::SOAPString
class DepartureItemWithCallingPoints
  AttrCrs = XSD::QName.new(nil, "crs")

  attr_accessor :service

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_crs
    __xmlattr[AttrCrs]
  end

  def xmlattr_crs=(value)
    __xmlattr[AttrCrs] = value
  end

  def initialize(service = nil)
    @service = service
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}CallingPoint
#   locationName - (any)
#   crs - (any)
#   st - (any)
#   et - (any)
#   at - (any)
#   isCancelled - SOAP::SOAPBoolean
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   formation - FormationData
#   adhocAlerts - ArrayOfAdhocAlert
class CallingPoint
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :st
  attr_accessor :et
  attr_accessor :at
  attr_accessor :isCancelled
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :formation
  attr_accessor :adhocAlerts

  def initialize(locationName = nil, crs = nil, st = nil, et = nil, at = nil, isCancelled = nil, length = nil, detachFront = nil, formation = nil, adhocAlerts = nil)
    @locationName = locationName
    @crs = crs
    @st = st
    @et = et
    @at = at
    @isCancelled = isCancelled
    @length = length
    @detachFront = detachFront
    @formation = formation
    @adhocAlerts = adhocAlerts
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}FormationData
#   avgLoading - (any)
#   coaches - ArrayOfCoaches
class FormationData
  attr_accessor :avgLoading
  attr_accessor :coaches

  def initialize(avgLoading = nil, coaches = nil)
    @avgLoading = avgLoading
    @coaches = coaches
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}CoachData
#   coachClass - (any)
#   toilet - ToiletAvailabilityType
#   loading - (any)
#   xmlattr_number - SOAP::SOAPString
class CoachData
  AttrNumber = XSD::QName.new(nil, "number")

  attr_accessor :coachClass
  attr_accessor :toilet
  attr_accessor :loading

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_number
    __xmlattr[AttrNumber]
  end

  def xmlattr_number=(value)
    __xmlattr[AttrNumber] = value
  end

  def initialize(coachClass = nil, toilet = nil, loading = nil)
    @coachClass = coachClass
    @toilet = toilet
    @loading = loading
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ArrayOfServiceItems
class ArrayOfServiceItems < ::Array
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ArrayOfServiceItemsWithCallingPoints
class ArrayOfServiceItemsWithCallingPoints < ::Array
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ArrayOfDepartureItems
class ArrayOfDepartureItems < ::Array
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ArrayOfDepartureItemsWithCallingPoints
class ArrayOfDepartureItemsWithCallingPoints < ::Array
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ArrayOfCoaches
class ArrayOfCoaches < ::Array
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ArrayOfArrayOfCallingPoints
class ArrayOfArrayOfCallingPoints < ::Array
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ArrayOfCallingPoints
#   callingPoint - CallingPoint
#   xmlattr_serviceType - SOAP::SOAPString
#   xmlattr_serviceChangeRequired - SOAP::SOAPBoolean
#   xmlattr_assocIsCancelled - SOAP::SOAPBoolean
class ArrayOfCallingPoints
  AttrAssocIsCancelled = XSD::QName.new(nil, "assocIsCancelled")
  AttrServiceChangeRequired = XSD::QName.new(nil, "serviceChangeRequired")
  AttrServiceType = XSD::QName.new(nil, "serviceType")

  attr_accessor :callingPoint

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_serviceType
    __xmlattr[AttrServiceType]
  end

  def xmlattr_serviceType=(value)
    __xmlattr[AttrServiceType] = value
  end

  def xmlattr_serviceChangeRequired
    __xmlattr[AttrServiceChangeRequired]
  end

  def xmlattr_serviceChangeRequired=(value)
    __xmlattr[AttrServiceChangeRequired] = value
  end

  def xmlattr_assocIsCancelled
    __xmlattr[AttrAssocIsCancelled]
  end

  def xmlattr_assocIsCancelled=(value)
    __xmlattr[AttrAssocIsCancelled] = value
  end

  def initialize(callingPoint = [])
    @callingPoint = callingPoint
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/commontypes}ToiletAvailabilityType
#   xmlattr_status - SOAP::SOAPString
class ToiletAvailabilityType < ::String
  AttrStatus = XSD::QName.new(nil, "status")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_status
    __xmlattr[AttrStatus]
  end

  def xmlattr_status=(value)
    __xmlattr[AttrStatus] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}ServiceLocation
#   locationName - (any)
#   crs - (any)
#   via - SOAP::SOAPString
#   futureChangeTo - SOAP::SOAPString
class ServiceLocation
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :via
  attr_accessor :futureChangeTo

  def initialize(locationName = nil, crs = nil, via = nil, futureChangeTo = nil)
    @locationName = locationName
    @crs = crs
    @via = via
    @futureChangeTo = futureChangeTo
  end
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}ArrayOfServiceLocations
class ArrayOfServiceLocations < ::Array
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}ServiceItem
#   origin - ArrayOfServiceLocations
#   destination - ArrayOfServiceLocations
#   currentOrigins - ArrayOfServiceLocations
#   currentDestinations - ArrayOfServiceLocations
#   sta - (any)
#   eta - (any)
#   std - (any)
#   etd - (any)
#   platform - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCircularRoute - SOAP::SOAPBoolean
#   serviceID - (any)
#   adhocAlerts - ArrayOfAdhocAlert
class ServiceItem_
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :currentOrigins
  attr_accessor :currentDestinations
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :platform
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCircularRoute
  attr_accessor :serviceID
  attr_accessor :adhocAlerts

  def initialize(origin = nil, destination = nil, currentOrigins = nil, currentDestinations = nil, sta = nil, eta = nil, std = nil, etd = nil, platform = nil, operator = nil, operatorCode = nil, isCircularRoute = nil, serviceID = nil, adhocAlerts = nil)
    @origin = origin
    @destination = destination
    @currentOrigins = currentOrigins
    @currentDestinations = currentDestinations
    @sta = sta
    @eta = eta
    @std = std
    @etd = etd
    @platform = platform
    @operator = operator
    @operatorCode = operatorCode
    @isCircularRoute = isCircularRoute
    @serviceID = serviceID
    @adhocAlerts = adhocAlerts
  end
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}ArrayOfServiceItems
class ArrayOfServiceItems_ < ::Array
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}NRCCMessage
class NRCCMessage < ::String
  def initialize(*arg)
    super
  end
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}ArrayOfNRCCMessages
class ArrayOfNRCCMessages < ::Array
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}CallingPoint
#   locationName - (any)
#   crs - (any)
#   st - (any)
#   et - (any)
#   at - (any)
#   adhocAlerts - ArrayOfAdhocAlert
class CallingPoint_
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :st
  attr_accessor :et
  attr_accessor :at
  attr_accessor :adhocAlerts

  def initialize(locationName = nil, crs = nil, st = nil, et = nil, at = nil, adhocAlerts = nil)
    @locationName = locationName
    @crs = crs
    @st = st
    @et = et
    @at = at
    @adhocAlerts = adhocAlerts
  end
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}ArrayOfCallingPoints
#   callingPoint - CallingPoint_
#   xmlattr_serviceType - SOAP::SOAPString
#   xmlattr_serviceChangeRequired - SOAP::SOAPBoolean
class ArrayOfCallingPoints_
  AttrServiceChangeRequired = XSD::QName.new(nil, "serviceChangeRequired")
  AttrServiceType = XSD::QName.new(nil, "serviceType")

  attr_accessor :callingPoint

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_serviceType
    __xmlattr[AttrServiceType]
  end

  def xmlattr_serviceType=(value)
    __xmlattr[AttrServiceType] = value
  end

  def xmlattr_serviceChangeRequired
    __xmlattr[AttrServiceChangeRequired]
  end

  def xmlattr_serviceChangeRequired=(value)
    __xmlattr[AttrServiceChangeRequired] = value
  end

  def initialize(callingPoint = [])
    @callingPoint = callingPoint
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}ArrayOfArrayOfCallingPoints
class ArrayOfArrayOfCallingPoints_ < ::Array
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}StationBoard
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   trainServices - ArrayOfServiceItems_
#   busServices - ArrayOfServiceItems_
#   ferryServices - ArrayOfServiceItems_
class StationBoard_
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :trainServices
  attr_accessor :busServices
  attr_accessor :ferryServices

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, trainServices = nil, busServices = nil, ferryServices = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @trainServices = trainServices
    @busServices = busServices
    @ferryServices = ferryServices
  end
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}ArrayOfAdhocAlert
class ArrayOfAdhocAlert < ::Array
end

# {http://thalesgroup.com/RTTI/2012-01-13/ldb/types}ServiceDetails
#   generatedAt - SOAP::SOAPDateTime
#   serviceType - ServiceType
#   locationName - (any)
#   crs - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCancelled - SOAP::SOAPBoolean
#   disruptionReason - SOAP::SOAPString
#   overdueMessage - SOAP::SOAPString
#   platform - (any)
#   sta - (any)
#   eta - (any)
#   ata - (any)
#   std - (any)
#   etd - (any)
#   atd - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   previousCallingPoints - ArrayOfArrayOfCallingPoints_
#   subsequentCallingPoints - ArrayOfArrayOfCallingPoints_
class ServiceDetails_
  attr_accessor :generatedAt
  attr_accessor :serviceType
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCancelled
  attr_accessor :disruptionReason
  attr_accessor :overdueMessage
  attr_accessor :platform
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :ata
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :atd
  attr_accessor :adhocAlerts
  attr_accessor :previousCallingPoints
  attr_accessor :subsequentCallingPoints

  def initialize(generatedAt = nil, serviceType = nil, locationName = nil, crs = nil, operator = nil, operatorCode = nil, isCancelled = nil, disruptionReason = nil, overdueMessage = nil, platform = nil, sta = nil, eta = nil, ata = nil, std = nil, etd = nil, atd = nil, adhocAlerts = nil, previousCallingPoints = nil, subsequentCallingPoints = nil)
    @generatedAt = generatedAt
    @serviceType = serviceType
    @locationName = locationName
    @crs = crs
    @operator = operator
    @operatorCode = operatorCode
    @isCancelled = isCancelled
    @disruptionReason = disruptionReason
    @overdueMessage = overdueMessage
    @platform = platform
    @sta = sta
    @eta = eta
    @ata = ata
    @std = std
    @etd = etd
    @atd = atd
    @adhocAlerts = adhocAlerts
    @previousCallingPoints = previousCallingPoints
    @subsequentCallingPoints = subsequentCallingPoints
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ServiceDetails
#   generatedAt - SOAP::SOAPDateTime
#   serviceType - ServiceType
#   locationName - (any)
#   crs - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCancelled - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   overdueMessage - SOAP::SOAPString
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   platform - (any)
#   sta - (any)
#   eta - (any)
#   ata - (any)
#   std - (any)
#   etd - (any)
#   atd - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   previousCallingPoints - ArrayOfArrayOfCallingPoints__
#   subsequentCallingPoints - ArrayOfArrayOfCallingPoints__
class ServiceDetails__
  attr_accessor :generatedAt
  attr_accessor :serviceType
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCancelled
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :overdueMessage
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :platform
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :ata
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :atd
  attr_accessor :adhocAlerts
  attr_accessor :previousCallingPoints
  attr_accessor :subsequentCallingPoints

  def initialize(generatedAt = nil, serviceType = nil, locationName = nil, crs = nil, operator = nil, operatorCode = nil, isCancelled = nil, cancelReason = nil, delayReason = nil, overdueMessage = nil, length = nil, detachFront = nil, isReverseFormation = nil, platform = nil, sta = nil, eta = nil, ata = nil, std = nil, etd = nil, atd = nil, adhocAlerts = nil, previousCallingPoints = nil, subsequentCallingPoints = nil)
    @generatedAt = generatedAt
    @serviceType = serviceType
    @locationName = locationName
    @crs = crs
    @operator = operator
    @operatorCode = operatorCode
    @isCancelled = isCancelled
    @cancelReason = cancelReason
    @delayReason = delayReason
    @overdueMessage = overdueMessage
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @platform = platform
    @sta = sta
    @eta = eta
    @ata = ata
    @std = std
    @etd = etd
    @atd = atd
    @adhocAlerts = adhocAlerts
    @previousCallingPoints = previousCallingPoints
    @subsequentCallingPoints = subsequentCallingPoints
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}ServiceDetails
#   generatedAt - SOAP::SOAPDateTime
#   serviceType - ServiceType
#   locationName - (any)
#   crs - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCancelled - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   overdueMessage - SOAP::SOAPString
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   platform - (any)
#   sta - (any)
#   eta - (any)
#   ata - (any)
#   std - (any)
#   etd - (any)
#   atd - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   previousCallingPoints - ArrayOfArrayOfCallingPoints__
#   subsequentCallingPoints - ArrayOfArrayOfCallingPoints__
#   rsid - (any)
class ServiceDetails___ < ServiceDetails__
  attr_accessor :generatedAt
  attr_accessor :serviceType
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCancelled
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :overdueMessage
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :platform
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :ata
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :atd
  attr_accessor :adhocAlerts
  attr_accessor :previousCallingPoints
  attr_accessor :subsequentCallingPoints
  attr_accessor :rsid

  def initialize(generatedAt = nil, serviceType = nil, locationName = nil, crs = nil, operator = nil, operatorCode = nil, isCancelled = nil, cancelReason = nil, delayReason = nil, overdueMessage = nil, length = nil, detachFront = nil, isReverseFormation = nil, platform = nil, sta = nil, eta = nil, ata = nil, std = nil, etd = nil, atd = nil, adhocAlerts = nil, previousCallingPoints = nil, subsequentCallingPoints = nil, rsid = nil)
    @generatedAt = generatedAt
    @serviceType = serviceType
    @locationName = locationName
    @crs = crs
    @operator = operator
    @operatorCode = operatorCode
    @isCancelled = isCancelled
    @cancelReason = cancelReason
    @delayReason = delayReason
    @overdueMessage = overdueMessage
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @platform = platform
    @sta = sta
    @eta = eta
    @ata = ata
    @std = std
    @etd = etd
    @atd = atd
    @adhocAlerts = adhocAlerts
    @previousCallingPoints = previousCallingPoints
    @subsequentCallingPoints = subsequentCallingPoints
    @rsid = rsid
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ArrayOfServiceItems
class ArrayOfServiceItems__ < ::Array
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ArrayOfServiceItemsWithCallingPoints
class ArrayOfServiceItemsWithCallingPoints_ < ::Array
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ArrayOfServiceLocations
class ArrayOfServiceLocations_ < ::Array
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ArrayOfArrayOfCallingPoints
class ArrayOfArrayOfCallingPoints__ < ::Array
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ArrayOfCallingPoints
#   callingPoint - CallingPoint__
#   xmlattr_serviceType - SOAP::SOAPString
#   xmlattr_serviceChangeRequired - SOAP::SOAPBoolean
#   xmlattr_assocIsCancelled - SOAP::SOAPBoolean
class ArrayOfCallingPoints__
  AttrAssocIsCancelled = XSD::QName.new(nil, "assocIsCancelled")
  AttrServiceChangeRequired = XSD::QName.new(nil, "serviceChangeRequired")
  AttrServiceType = XSD::QName.new(nil, "serviceType")

  attr_accessor :callingPoint

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_serviceType
    __xmlattr[AttrServiceType]
  end

  def xmlattr_serviceType=(value)
    __xmlattr[AttrServiceType] = value
  end

  def xmlattr_serviceChangeRequired
    __xmlattr[AttrServiceChangeRequired]
  end

  def xmlattr_serviceChangeRequired=(value)
    __xmlattr[AttrServiceChangeRequired] = value
  end

  def xmlattr_assocIsCancelled
    __xmlattr[AttrAssocIsCancelled]
  end

  def xmlattr_assocIsCancelled=(value)
    __xmlattr[AttrAssocIsCancelled] = value
  end

  def initialize(callingPoint = [])
    @callingPoint = callingPoint
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ArrayOfDepartureItems
class ArrayOfDepartureItems_ < ::Array
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ArrayOfDepartureItemsWithCallingPoints
class ArrayOfDepartureItemsWithCallingPoints_ < ::Array
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}BaseStationBoard
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
class BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}StationBoard
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   trainServices - ArrayOfServiceItems
#   busServices - ArrayOfServiceItems
#   ferryServices - ArrayOfServiceItems
class StationBoard < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :trainServices
  attr_accessor :busServices
  attr_accessor :ferryServices

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, trainServices = nil, busServices = nil, ferryServices = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @trainServices = trainServices
    @busServices = busServices
    @ferryServices = ferryServices
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}StationBoardWithDetails
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   trainServices - ArrayOfServiceItemsWithCallingPoints
#   busServices - ArrayOfServiceItemsWithCallingPoints
#   ferryServices - ArrayOfServiceItemsWithCallingPoints
class StationBoardWithDetails < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :trainServices
  attr_accessor :busServices
  attr_accessor :ferryServices

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, trainServices = nil, busServices = nil, ferryServices = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @trainServices = trainServices
    @busServices = busServices
    @ferryServices = ferryServices
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}DeparturesBoard
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   departures - ArrayOfDepartureItems
class DeparturesBoard < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :departures

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, departures = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @departures = departures
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}DeparturesBoardWithDetails
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   departures - ArrayOfDepartureItemsWithCallingPoints
class DeparturesBoardWithDetails < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :departures

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, departures = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @departures = departures
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}StationBoard
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   trainServices - ArrayOfServiceItems__
#   busServices - ArrayOfServiceItems__
#   ferryServices - ArrayOfServiceItems__
class StationBoard__ < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :trainServices
  attr_accessor :busServices
  attr_accessor :ferryServices

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, trainServices = nil, busServices = nil, ferryServices = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @trainServices = trainServices
    @busServices = busServices
    @ferryServices = ferryServices
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}StationBoardWithDetails
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   trainServices - ArrayOfServiceItemsWithCallingPoints_
#   busServices - ArrayOfServiceItemsWithCallingPoints_
#   ferryServices - ArrayOfServiceItemsWithCallingPoints_
class StationBoardWithDetails_ < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :trainServices
  attr_accessor :busServices
  attr_accessor :ferryServices

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, trainServices = nil, busServices = nil, ferryServices = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @trainServices = trainServices
    @busServices = busServices
    @ferryServices = ferryServices
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}DeparturesBoard
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   departures - ArrayOfDepartureItems_
class DeparturesBoard_ < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :departures

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, departures = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @departures = departures
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}DeparturesBoardWithDetails
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   departures - ArrayOfDepartureItemsWithCallingPoints_
class DeparturesBoardWithDetails_ < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :departures

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, departures = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @departures = departures
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}StationBoard
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   trainServices - ArrayOfServiceItems___
#   busServices - ArrayOfServiceItems___
#   ferryServices - ArrayOfServiceItems___
class StationBoard___ < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :trainServices
  attr_accessor :busServices
  attr_accessor :ferryServices

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, trainServices = nil, busServices = nil, ferryServices = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @trainServices = trainServices
    @busServices = busServices
    @ferryServices = ferryServices
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}StationBoardWithDetails
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   trainServices - ArrayOfServiceItemsWithCallingPoints__
#   busServices - ArrayOfServiceItemsWithCallingPoints__
#   ferryServices - ArrayOfServiceItemsWithCallingPoints__
class StationBoardWithDetails__ < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :trainServices
  attr_accessor :busServices
  attr_accessor :ferryServices

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, trainServices = nil, busServices = nil, ferryServices = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @trainServices = trainServices
    @busServices = busServices
    @ferryServices = ferryServices
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}DeparturesBoard
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   departures - ArrayOfDepartureItems__
class DeparturesBoard__ < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :departures

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, departures = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @departures = departures
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}DeparturesBoardWithDetails
#   generatedAt - SOAP::SOAPDateTime
#   locationName - (any)
#   crs - (any)
#   filterLocationName - (any)
#   filtercrs - (any)
#   filterType - FilterType
#   nrccMessages - ArrayOfNRCCMessages
#   platformAvailable - SOAP::SOAPBoolean
#   areServicesAvailable - SOAP::SOAPBoolean
#   departures - ArrayOfDepartureItemsWithCallingPoints__
class DeparturesBoardWithDetails__ < BaseStationBoard
  attr_accessor :generatedAt
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :filterLocationName
  attr_accessor :filtercrs
  attr_accessor :filterType
  attr_accessor :nrccMessages
  attr_accessor :platformAvailable
  attr_accessor :areServicesAvailable
  attr_accessor :departures

  def initialize(generatedAt = nil, locationName = nil, crs = nil, filterLocationName = nil, filtercrs = nil, filterType = nil, nrccMessages = nil, platformAvailable = nil, areServicesAvailable = nil, departures = nil)
    @generatedAt = generatedAt
    @locationName = locationName
    @crs = crs
    @filterLocationName = filterLocationName
    @filtercrs = filtercrs
    @filterType = filterType
    @nrccMessages = nrccMessages
    @platformAvailable = platformAvailable
    @areServicesAvailable = areServicesAvailable
    @departures = departures
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}BaseServiceItem
#   sta - (any)
#   eta - (any)
#   std - (any)
#   etd - (any)
#   platform - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCircularRoute - SOAP::SOAPBoolean
#   isCancelled - SOAP::SOAPBoolean
#   filterLocationCancelled - SOAP::SOAPBoolean
#   serviceType - ServiceType
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   serviceID - (any)
#   adhocAlerts - ArrayOfAdhocAlert
class BaseServiceItem
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :platform
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCircularRoute
  attr_accessor :isCancelled
  attr_accessor :filterLocationCancelled
  attr_accessor :serviceType
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :serviceID
  attr_accessor :adhocAlerts

  def initialize(sta = nil, eta = nil, std = nil, etd = nil, platform = nil, operator = nil, operatorCode = nil, isCircularRoute = nil, isCancelled = nil, filterLocationCancelled = nil, serviceType = nil, length = nil, detachFront = nil, isReverseFormation = nil, cancelReason = nil, delayReason = nil, serviceID = nil, adhocAlerts = nil)
    @sta = sta
    @eta = eta
    @std = std
    @etd = etd
    @platform = platform
    @operator = operator
    @operatorCode = operatorCode
    @isCircularRoute = isCircularRoute
    @isCancelled = isCancelled
    @filterLocationCancelled = filterLocationCancelled
    @serviceType = serviceType
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @cancelReason = cancelReason
    @delayReason = delayReason
    @serviceID = serviceID
    @adhocAlerts = adhocAlerts
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ServiceItem
#   sta - (any)
#   eta - (any)
#   std - (any)
#   etd - (any)
#   platform - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCircularRoute - SOAP::SOAPBoolean
#   isCancelled - SOAP::SOAPBoolean
#   filterLocationCancelled - SOAP::SOAPBoolean
#   serviceType - ServiceType
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   serviceID - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   origin - ArrayOfServiceLocations_
#   destination - ArrayOfServiceLocations_
#   currentOrigins - ArrayOfServiceLocations_
#   currentDestinations - ArrayOfServiceLocations_
class ServiceItem__ < BaseServiceItem
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :platform
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCircularRoute
  attr_accessor :isCancelled
  attr_accessor :filterLocationCancelled
  attr_accessor :serviceType
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :serviceID
  attr_accessor :adhocAlerts
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :currentOrigins
  attr_accessor :currentDestinations

  def initialize(sta = nil, eta = nil, std = nil, etd = nil, platform = nil, operator = nil, operatorCode = nil, isCircularRoute = nil, isCancelled = nil, filterLocationCancelled = nil, serviceType = nil, length = nil, detachFront = nil, isReverseFormation = nil, cancelReason = nil, delayReason = nil, serviceID = nil, adhocAlerts = nil, origin = nil, destination = nil, currentOrigins = nil, currentDestinations = nil)
    @sta = sta
    @eta = eta
    @std = std
    @etd = etd
    @platform = platform
    @operator = operator
    @operatorCode = operatorCode
    @isCircularRoute = isCircularRoute
    @isCancelled = isCancelled
    @filterLocationCancelled = filterLocationCancelled
    @serviceType = serviceType
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @cancelReason = cancelReason
    @delayReason = delayReason
    @serviceID = serviceID
    @adhocAlerts = adhocAlerts
    @origin = origin
    @destination = destination
    @currentOrigins = currentOrigins
    @currentDestinations = currentDestinations
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ServiceItemWithCallingPoints
#   sta - (any)
#   eta - (any)
#   std - (any)
#   etd - (any)
#   platform - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCircularRoute - SOAP::SOAPBoolean
#   isCancelled - SOAP::SOAPBoolean
#   filterLocationCancelled - SOAP::SOAPBoolean
#   serviceType - ServiceType
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   serviceID - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   origin - ArrayOfServiceLocations_
#   destination - ArrayOfServiceLocations_
#   currentOrigins - ArrayOfServiceLocations_
#   currentDestinations - ArrayOfServiceLocations_
#   previousCallingPoints - ArrayOfArrayOfCallingPoints__
#   subsequentCallingPoints - ArrayOfArrayOfCallingPoints__
class ServiceItemWithCallingPoints_ < ServiceItem__
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :platform
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCircularRoute
  attr_accessor :isCancelled
  attr_accessor :filterLocationCancelled
  attr_accessor :serviceType
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :serviceID
  attr_accessor :adhocAlerts
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :currentOrigins
  attr_accessor :currentDestinations
  attr_accessor :previousCallingPoints
  attr_accessor :subsequentCallingPoints

  def initialize(sta = nil, eta = nil, std = nil, etd = nil, platform = nil, operator = nil, operatorCode = nil, isCircularRoute = nil, isCancelled = nil, filterLocationCancelled = nil, serviceType = nil, length = nil, detachFront = nil, isReverseFormation = nil, cancelReason = nil, delayReason = nil, serviceID = nil, adhocAlerts = nil, origin = nil, destination = nil, currentOrigins = nil, currentDestinations = nil, previousCallingPoints = nil, subsequentCallingPoints = nil)
    @sta = sta
    @eta = eta
    @std = std
    @etd = etd
    @platform = platform
    @operator = operator
    @operatorCode = operatorCode
    @isCircularRoute = isCircularRoute
    @isCancelled = isCancelled
    @filterLocationCancelled = filterLocationCancelled
    @serviceType = serviceType
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @cancelReason = cancelReason
    @delayReason = delayReason
    @serviceID = serviceID
    @adhocAlerts = adhocAlerts
    @origin = origin
    @destination = destination
    @currentOrigins = currentOrigins
    @currentDestinations = currentDestinations
    @previousCallingPoints = previousCallingPoints
    @subsequentCallingPoints = subsequentCallingPoints
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}BaseServiceItem
#   sta - (any)
#   eta - (any)
#   std - (any)
#   etd - (any)
#   platform - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCircularRoute - SOAP::SOAPBoolean
#   isCancelled - SOAP::SOAPBoolean
#   filterLocationCancelled - SOAP::SOAPBoolean
#   serviceType - ServiceType
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   serviceID - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   rsid - (any)
class BaseServiceItem_ < BaseServiceItem
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :platform
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCircularRoute
  attr_accessor :isCancelled
  attr_accessor :filterLocationCancelled
  attr_accessor :serviceType
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :serviceID
  attr_accessor :adhocAlerts
  attr_accessor :rsid

  def initialize(sta = nil, eta = nil, std = nil, etd = nil, platform = nil, operator = nil, operatorCode = nil, isCircularRoute = nil, isCancelled = nil, filterLocationCancelled = nil, serviceType = nil, length = nil, detachFront = nil, isReverseFormation = nil, cancelReason = nil, delayReason = nil, serviceID = nil, adhocAlerts = nil, rsid = nil)
    @sta = sta
    @eta = eta
    @std = std
    @etd = etd
    @platform = platform
    @operator = operator
    @operatorCode = operatorCode
    @isCircularRoute = isCircularRoute
    @isCancelled = isCancelled
    @filterLocationCancelled = filterLocationCancelled
    @serviceType = serviceType
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @cancelReason = cancelReason
    @delayReason = delayReason
    @serviceID = serviceID
    @adhocAlerts = adhocAlerts
    @rsid = rsid
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}ServiceItem
#   sta - (any)
#   eta - (any)
#   std - (any)
#   etd - (any)
#   platform - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCircularRoute - SOAP::SOAPBoolean
#   isCancelled - SOAP::SOAPBoolean
#   filterLocationCancelled - SOAP::SOAPBoolean
#   serviceType - ServiceType
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   serviceID - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   rsid - (any)
#   origin - ArrayOfServiceLocations_
#   destination - ArrayOfServiceLocations_
#   currentOrigins - ArrayOfServiceLocations_
#   currentDestinations - ArrayOfServiceLocations_
class ServiceItem___ < BaseServiceItem_
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :platform
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCircularRoute
  attr_accessor :isCancelled
  attr_accessor :filterLocationCancelled
  attr_accessor :serviceType
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :serviceID
  attr_accessor :adhocAlerts
  attr_accessor :rsid
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :currentOrigins
  attr_accessor :currentDestinations

  def initialize(sta = nil, eta = nil, std = nil, etd = nil, platform = nil, operator = nil, operatorCode = nil, isCircularRoute = nil, isCancelled = nil, filterLocationCancelled = nil, serviceType = nil, length = nil, detachFront = nil, isReverseFormation = nil, cancelReason = nil, delayReason = nil, serviceID = nil, adhocAlerts = nil, rsid = nil, origin = nil, destination = nil, currentOrigins = nil, currentDestinations = nil)
    @sta = sta
    @eta = eta
    @std = std
    @etd = etd
    @platform = platform
    @operator = operator
    @operatorCode = operatorCode
    @isCircularRoute = isCircularRoute
    @isCancelled = isCancelled
    @filterLocationCancelled = filterLocationCancelled
    @serviceType = serviceType
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @cancelReason = cancelReason
    @delayReason = delayReason
    @serviceID = serviceID
    @adhocAlerts = adhocAlerts
    @rsid = rsid
    @origin = origin
    @destination = destination
    @currentOrigins = currentOrigins
    @currentDestinations = currentDestinations
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ServiceItem
#   sta - (any)
#   eta - (any)
#   std - (any)
#   etd - (any)
#   platform - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCircularRoute - SOAP::SOAPBoolean
#   isCancelled - SOAP::SOAPBoolean
#   filterLocationCancelled - SOAP::SOAPBoolean
#   serviceType - ServiceType
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   serviceID - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   rsid - (any)
#   origin - ArrayOfServiceLocations_
#   destination - ArrayOfServiceLocations_
#   currentOrigins - ArrayOfServiceLocations_
#   currentDestinations - ArrayOfServiceLocations_
#   formation - FormationData
class ServiceItem < ServiceItem___
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :platform
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCircularRoute
  attr_accessor :isCancelled
  attr_accessor :filterLocationCancelled
  attr_accessor :serviceType
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :serviceID
  attr_accessor :adhocAlerts
  attr_accessor :rsid
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :currentOrigins
  attr_accessor :currentDestinations
  attr_accessor :formation

  def initialize(sta = nil, eta = nil, std = nil, etd = nil, platform = nil, operator = nil, operatorCode = nil, isCircularRoute = nil, isCancelled = nil, filterLocationCancelled = nil, serviceType = nil, length = nil, detachFront = nil, isReverseFormation = nil, cancelReason = nil, delayReason = nil, serviceID = nil, adhocAlerts = nil, rsid = nil, origin = nil, destination = nil, currentOrigins = nil, currentDestinations = nil, formation = nil)
    @sta = sta
    @eta = eta
    @std = std
    @etd = etd
    @platform = platform
    @operator = operator
    @operatorCode = operatorCode
    @isCircularRoute = isCircularRoute
    @isCancelled = isCancelled
    @filterLocationCancelled = filterLocationCancelled
    @serviceType = serviceType
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @cancelReason = cancelReason
    @delayReason = delayReason
    @serviceID = serviceID
    @adhocAlerts = adhocAlerts
    @rsid = rsid
    @origin = origin
    @destination = destination
    @currentOrigins = currentOrigins
    @currentDestinations = currentDestinations
    @formation = formation
  end
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/types}ServiceItemWithCallingPoints
#   sta - (any)
#   eta - (any)
#   std - (any)
#   etd - (any)
#   platform - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCircularRoute - SOAP::SOAPBoolean
#   isCancelled - SOAP::SOAPBoolean
#   filterLocationCancelled - SOAP::SOAPBoolean
#   serviceType - ServiceType
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   serviceID - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   rsid - (any)
#   origin - ArrayOfServiceLocations_
#   destination - ArrayOfServiceLocations_
#   currentOrigins - ArrayOfServiceLocations_
#   currentDestinations - ArrayOfServiceLocations_
#   formation - FormationData
class ServiceItemWithCallingPoints < ServiceItem
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :platform
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCircularRoute
  attr_accessor :isCancelled
  attr_accessor :filterLocationCancelled
  attr_accessor :serviceType
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :serviceID
  attr_accessor :adhocAlerts
  attr_accessor :rsid
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :currentOrigins
  attr_accessor :currentDestinations
  attr_accessor :formation

  def initialize(sta = nil, eta = nil, std = nil, etd = nil, platform = nil, operator = nil, operatorCode = nil, isCircularRoute = nil, isCancelled = nil, filterLocationCancelled = nil, serviceType = nil, length = nil, detachFront = nil, isReverseFormation = nil, cancelReason = nil, delayReason = nil, serviceID = nil, adhocAlerts = nil, rsid = nil, origin = nil, destination = nil, currentOrigins = nil, currentDestinations = nil, formation = nil)
    @sta = sta
    @eta = eta
    @std = std
    @etd = etd
    @platform = platform
    @operator = operator
    @operatorCode = operatorCode
    @isCircularRoute = isCircularRoute
    @isCancelled = isCancelled
    @filterLocationCancelled = filterLocationCancelled
    @serviceType = serviceType
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @cancelReason = cancelReason
    @delayReason = delayReason
    @serviceID = serviceID
    @adhocAlerts = adhocAlerts
    @rsid = rsid
    @origin = origin
    @destination = destination
    @currentOrigins = currentOrigins
    @currentDestinations = currentDestinations
    @formation = formation
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}ServiceItemWithCallingPoints
#   sta - (any)
#   eta - (any)
#   std - (any)
#   etd - (any)
#   platform - (any)
#   operator - (any)
#   operatorCode - (any)
#   isCircularRoute - SOAP::SOAPBoolean
#   isCancelled - SOAP::SOAPBoolean
#   filterLocationCancelled - SOAP::SOAPBoolean
#   serviceType - ServiceType
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   isReverseFormation - SOAP::SOAPBoolean
#   cancelReason - SOAP::SOAPString
#   delayReason - SOAP::SOAPString
#   serviceID - (any)
#   adhocAlerts - ArrayOfAdhocAlert
#   rsid - (any)
#   origin - ArrayOfServiceLocations_
#   destination - ArrayOfServiceLocations_
#   currentOrigins - ArrayOfServiceLocations_
#   currentDestinations - ArrayOfServiceLocations_
#   previousCallingPoints - ArrayOfArrayOfCallingPoints__
#   subsequentCallingPoints - ArrayOfArrayOfCallingPoints__
class ServiceItemWithCallingPoints__ < ServiceItem___
  attr_accessor :sta
  attr_accessor :eta
  attr_accessor :std
  attr_accessor :etd
  attr_accessor :platform
  attr_accessor :operator
  attr_accessor :operatorCode
  attr_accessor :isCircularRoute
  attr_accessor :isCancelled
  attr_accessor :filterLocationCancelled
  attr_accessor :serviceType
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :isReverseFormation
  attr_accessor :cancelReason
  attr_accessor :delayReason
  attr_accessor :serviceID
  attr_accessor :adhocAlerts
  attr_accessor :rsid
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :currentOrigins
  attr_accessor :currentDestinations
  attr_accessor :previousCallingPoints
  attr_accessor :subsequentCallingPoints

  def initialize(sta = nil, eta = nil, std = nil, etd = nil, platform = nil, operator = nil, operatorCode = nil, isCircularRoute = nil, isCancelled = nil, filterLocationCancelled = nil, serviceType = nil, length = nil, detachFront = nil, isReverseFormation = nil, cancelReason = nil, delayReason = nil, serviceID = nil, adhocAlerts = nil, rsid = nil, origin = nil, destination = nil, currentOrigins = nil, currentDestinations = nil, previousCallingPoints = nil, subsequentCallingPoints = nil)
    @sta = sta
    @eta = eta
    @std = std
    @etd = etd
    @platform = platform
    @operator = operator
    @operatorCode = operatorCode
    @isCircularRoute = isCircularRoute
    @isCancelled = isCancelled
    @filterLocationCancelled = filterLocationCancelled
    @serviceType = serviceType
    @length = length
    @detachFront = detachFront
    @isReverseFormation = isReverseFormation
    @cancelReason = cancelReason
    @delayReason = delayReason
    @serviceID = serviceID
    @adhocAlerts = adhocAlerts
    @rsid = rsid
    @origin = origin
    @destination = destination
    @currentOrigins = currentOrigins
    @currentDestinations = currentDestinations
    @previousCallingPoints = previousCallingPoints
    @subsequentCallingPoints = subsequentCallingPoints
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}DepartureItem
#   service - ServiceItem__
#   xmlattr_crs - SOAP::SOAPString
class DepartureItem_
  AttrCrs = XSD::QName.new(nil, "crs")

  attr_accessor :service

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_crs
    __xmlattr[AttrCrs]
  end

  def xmlattr_crs=(value)
    __xmlattr[AttrCrs] = value
  end

  def initialize(service = nil)
    @service = service
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}DepartureItemWithCallingPoints
#   service - ServiceItemWithCallingPoints_
#   xmlattr_crs - SOAP::SOAPString
class DepartureItemWithCallingPoints_
  AttrCrs = XSD::QName.new(nil, "crs")

  attr_accessor :service

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_crs
    __xmlattr[AttrCrs]
  end

  def xmlattr_crs=(value)
    __xmlattr[AttrCrs] = value
  end

  def initialize(service = nil)
    @service = service
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}ServiceLocation
#   locationName - (any)
#   crs - (any)
#   via - SOAP::SOAPString
#   futureChangeTo - SOAP::SOAPString
#   assocIsCancelled - SOAP::SOAPBoolean
class ServiceLocation_
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :via
  attr_accessor :futureChangeTo
  attr_accessor :assocIsCancelled

  def initialize(locationName = nil, crs = nil, via = nil, futureChangeTo = nil, assocIsCancelled = nil)
    @locationName = locationName
    @crs = crs
    @via = via
    @futureChangeTo = futureChangeTo
    @assocIsCancelled = assocIsCancelled
  end
end

# {http://thalesgroup.com/RTTI/2015-11-27/ldb/types}CallingPoint
#   locationName - (any)
#   crs - (any)
#   st - (any)
#   et - (any)
#   at - (any)
#   isCancelled - SOAP::SOAPBoolean
#   length - (any)
#   detachFront - SOAP::SOAPBoolean
#   adhocAlerts - ArrayOfAdhocAlert
class CallingPoint__
  attr_accessor :locationName
  attr_accessor :crs
  attr_accessor :st
  attr_accessor :et
  attr_accessor :at
  attr_accessor :isCancelled
  attr_accessor :length
  attr_accessor :detachFront
  attr_accessor :adhocAlerts

  def initialize(locationName = nil, crs = nil, st = nil, et = nil, at = nil, isCancelled = nil, length = nil, detachFront = nil, adhocAlerts = nil)
    @locationName = locationName
    @crs = crs
    @st = st
    @et = et
    @at = at
    @isCancelled = isCancelled
    @length = length
    @detachFront = detachFront
    @adhocAlerts = adhocAlerts
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}ArrayOfServiceItems
class ArrayOfServiceItems___ < ::Array
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}ArrayOfServiceItemsWithCallingPoints
class ArrayOfServiceItemsWithCallingPoints__ < ::Array
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}ArrayOfDepartureItems
class ArrayOfDepartureItems__ < ::Array
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}ArrayOfDepartureItemsWithCallingPoints
class ArrayOfDepartureItemsWithCallingPoints__ < ::Array
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}DepartureItem
#   service - ServiceItem___
#   xmlattr_crs - SOAP::SOAPString
class DepartureItem__
  AttrCrs = XSD::QName.new(nil, "crs")

  attr_accessor :service

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_crs
    __xmlattr[AttrCrs]
  end

  def xmlattr_crs=(value)
    __xmlattr[AttrCrs] = value
  end

  def initialize(service = nil)
    @service = service
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2016-02-16/ldb/types}DepartureItemWithCallingPoints
#   service - ServiceItemWithCallingPoints__
#   xmlattr_crs - SOAP::SOAPString
class DepartureItemWithCallingPoints__
  AttrCrs = XSD::QName.new(nil, "crs")

  attr_accessor :service

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_crs
    __xmlattr[AttrCrs]
  end

  def xmlattr_crs=(value)
    __xmlattr[AttrCrs] = value
  end

  def initialize(service = nil)
    @service = service
    @__xmlattr = {}
  end
end

# {http://thalesgroup.com/RTTI/2013-11-28/Token/types}AccessToken
#   tokenValue - SOAP::SOAPString
class AccessToken
  attr_accessor :tokenValue

  def initialize(tokenValue = nil)
    @tokenValue = tokenValue
  end
end

# {http://thalesgroup.com/RTTI/2007-10-10/ldb/commontypes}FilterType
class FilterType < ::String
  From = new("from")
  To = new("to")
end

# {http://thalesgroup.com/RTTI/2007-10-10/ldb/commontypes}ServiceType
class ServiceType < ::String
  Bus = new("bus")
  Ferry = new("ferry")
  Train = new("train")
end

# {http://thalesgroup.com/RTTI/2017-10-01/ldb/commontypes}ToiletStatus
class ToiletStatus < ::String
  InService = new("InService")
  NotInService = new("NotInService")
  Unknown = new("Unknown")
end
