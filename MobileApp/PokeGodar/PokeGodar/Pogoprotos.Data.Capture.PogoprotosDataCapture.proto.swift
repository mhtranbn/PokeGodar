// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "POGOProtos.Data.Capture.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public func == (lhs: Pogoprotos.Data.Capture.CaptureAward, rhs: Pogoprotos.Data.Capture.CaptureAward) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.activityType == rhs.activityType)
  fieldCheck = fieldCheck && (lhs.xp == rhs.xp)
  fieldCheck = fieldCheck && (lhs.candy == rhs.candy)
  fieldCheck = fieldCheck && (lhs.stardust == rhs.stardust)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public func == (lhs: Pogoprotos.Data.Capture.CaptureProbability, rhs: Pogoprotos.Data.Capture.CaptureProbability) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.pokeballType == rhs.pokeballType)
  fieldCheck = fieldCheck && (lhs.captureProbability == rhs.captureProbability)
  fieldCheck = fieldCheck && (lhs.hasReticleDifficultyScale == rhs.hasReticleDifficultyScale) && (!lhs.hasReticleDifficultyScale || lhs.reticleDifficultyScale == rhs.reticleDifficultyScale)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Data.Capture {
  public struct PogoprotosDataCaptureRoot {
    public static var sharedInstance : PogoprotosDataCaptureRoot {
     struct Static {
         static let instance : PogoprotosDataCaptureRoot = PogoprotosDataCaptureRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Enums.PogoprotosEnumsRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.PogoprotosInventoryRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(_ registry:ExtensionRegistry) {
    }
  }

  final public class CaptureAward : GeneratedMessage, GeneratedMessageProtocol {
    private var activityTypeMemoizedSerializedSize:Int32 = 0
    public private(set) var activityType:Array<Pogoprotos.Enums.ActivityType> = Array<Pogoprotos.Enums.ActivityType>()
    public private(set) var xp:Array<Int32> = Array<Int32>()
    private var xpMemoizedSerializedSize:Int32 = -1
    public private(set) var candy:Array<Int32> = Array<Int32>()
    private var candyMemoizedSerializedSize:Int32 = -1
    public private(set) var stardust:Array<Int32> = Array<Int32>()
    private var stardustMemoizedSerializedSize:Int32 = -1
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(_ output:CodedOutputStream) throws {
      for oneValueOfactivityType in activityType {
          try output.writeEnum(1, value:oneValueOfactivityType.rawValue)
      }
      if !xp.isEmpty {
        try output.writeRawVarint32(18)
        try output.writeRawVarint32(xpMemoizedSerializedSize)
        for oneValuexp in xp {
          try output.writeInt32NoTag(oneValuexp)
        }
      }
      if !candy.isEmpty {
        try output.writeRawVarint32(26)
        try output.writeRawVarint32(candyMemoizedSerializedSize)
        for oneValuecandy in candy {
          try output.writeInt32NoTag(oneValuecandy)
        }
      }
      if !stardust.isEmpty {
        try output.writeRawVarint32(34)
        try output.writeRawVarint32(stardustMemoizedSerializedSize)
        for oneValuestardust in stardust {
          try output.writeInt32NoTag(oneValuestardust)
        }
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      var dataSizeactivityType:Int32 = 0
      for oneValueOfactivityType in activityType {
          dataSizeactivityType += oneValueOfactivityType.rawValue.computeEnumSizeNoTag()
      }
      serialize_size += dataSizeactivityType
      serialize_size += (1 * Int32(activityType.count))
      var dataSizeXp:Int32 = 0
      for oneValuexp in xp {
          dataSizeXp += oneValuexp.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeXp
      if !xp.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeXp.computeInt32SizeNoTag()
      }
      xpMemoizedSerializedSize = dataSizeXp
      var dataSizeCandy:Int32 = 0
      for oneValuecandy in candy {
          dataSizeCandy += oneValuecandy.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeCandy
      if !candy.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeCandy.computeInt32SizeNoTag()
      }
      candyMemoizedSerializedSize = dataSizeCandy
      var dataSizeStardust:Int32 = 0
      for oneValuestardust in stardust {
          dataSizeStardust += oneValuestardust.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeStardust
      if !stardust.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeStardust.computeInt32SizeNoTag()
      }
      stardustMemoizedSerializedSize = dataSizeStardust
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(_ input:InputStream) throws -> Array<Pogoprotos.Data.Capture.CaptureAward> {
      var mergedArray = Array<Pogoprotos.Data.Capture.CaptureAward>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(_ input:InputStream) throws -> Pogoprotos.Data.Capture.CaptureAward? {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(_ data:Data) throws -> Pogoprotos.Data.Capture.CaptureAward {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Data.Capture.PogoprotosDataCaptureRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(_ data:Data, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Capture.CaptureAward {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(_ input:InputStream) throws -> Pogoprotos.Data.Capture.CaptureAward {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(_ input:InputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Capture.CaptureAward {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(_ input:CodedInputStream) throws -> Pogoprotos.Data.Capture.CaptureAward {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(_ input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Capture.CaptureAward {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Data.Capture.CaptureAward.Builder {
      return Pogoprotos.Data.Capture.CaptureAward.classBuilder() as! Pogoprotos.Data.Capture.CaptureAward.Builder
    }
    public func getBuilder() -> Pogoprotos.Data.Capture.CaptureAward.Builder {
      return classBuilder() as! Pogoprotos.Data.Capture.CaptureAward.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Capture.CaptureAward.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Capture.CaptureAward.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Data.Capture.CaptureAward.Builder {
      return try Pogoprotos.Data.Capture.CaptureAward.builderWithPrototype(self)
    }
    public class func builderWithPrototype(_ prototype:Pogoprotos.Data.Capture.CaptureAward) throws -> Pogoprotos.Data.Capture.CaptureAward.Builder {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if !activityType.isEmpty {
        var jsonArrayActivityType:Array<String> = []
          for oneValueActivityType in activityType {
            jsonArrayActivityType += [oneValueActivityType.toString()]
          }
        jsonMap["activityType"] = jsonArrayActivityType
      }
      if !xp.isEmpty {
        var jsonArrayXp:Array<NSNumber> = []
          for oneValueXp in xp {
            jsonArrayXp += [NSNumber(value:oneValueXp)]
          }
        jsonMap["xp"] = jsonArrayXp
      }
      if !candy.isEmpty {
        var jsonArrayCandy:Array<NSNumber> = []
          for oneValueCandy in candy {
            jsonArrayCandy += [NSNumber(value:oneValueCandy)]
          }
        jsonMap["candy"] = jsonArrayCandy
      }
      if !stardust.isEmpty {
        var jsonArrayStardust:Array<NSNumber> = []
          for oneValueStardust in stardust {
            jsonArrayStardust += [NSNumber(value:oneValueStardust)]
          }
        jsonMap["stardust"] = jsonArrayStardust
      }
      return jsonMap
    }
    override class public func decode(_ jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Capture.CaptureAward {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(_ data:Data) throws -> Pogoprotos.Data.Capture.CaptureAward {
      return try Pogoprotos.Data.Capture.CaptureAward.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(_ indent:String) throws -> String {
      var output = ""
      var activityTypeElementIndex:Int = 0
      for oneValueOfactivityType in activityType {
          output += "\(indent) activityType[\(activityTypeElementIndex)]: \(oneValueOfactivityType.description)\n"
          activityTypeElementIndex += 1
      }
      var xpElementIndex:Int = 0
      for oneValueXp in xp  {
          output += "\(indent) xp[\(xpElementIndex)]: \(oneValueXp)\n"
          xpElementIndex += 1
      }
      var candyElementIndex:Int = 0
      for oneValueCandy in candy  {
          output += "\(indent) candy[\(candyElementIndex)]: \(oneValueCandy)\n"
          candyElementIndex += 1
      }
      var stardustElementIndex:Int = 0
      for oneValueStardust in stardust  {
          output += "\(indent) stardust[\(stardustElementIndex)]: \(oneValueStardust)\n"
          stardustElementIndex += 1
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            for oneValueOfactivityType in activityType {
                hashCode = (hashCode &* 31) &+ Int(oneValueOfactivityType.rawValue)
            }
            for oneValueXp in xp {
                hashCode = (hashCode &* 31) &+ oneValueXp.hashValue
            }
            for oneValueCandy in candy {
                hashCode = (hashCode &* 31) &+ oneValueCandy.hashValue
            }
            for oneValueStardust in stardust {
                hashCode = (hashCode &* 31) &+ oneValueStardust.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Data.Capture.CaptureAward"
    }
    override public func className() -> String {
        return "Pogoprotos.Data.Capture.CaptureAward"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Data.Capture.CaptureAward.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Data.Capture.CaptureAward = Pogoprotos.Data.Capture.CaptureAward()
      public func getMessage() -> Pogoprotos.Data.Capture.CaptureAward {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var activityType:Array<Pogoprotos.Enums.ActivityType> {
          get {
              return builderResult.activityType
          }
          set (value) {
              builderResult.activityType = value
          }
      }
      public func setActivityType(_ value:Array<Pogoprotos.Enums.ActivityType>) -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        self.activityType = value
        return self
      }
      public func clearActivityType() -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        builderResult.activityType.removeAll(keepingCapacity: false)
        return self
      }
      public var xp:Array<Int32> {
           get {
               return builderResult.xp
           }
           set (array) {
               builderResult.xp = array
           }
      }
      public func setXp(_ value:Array<Int32>) -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        self.xp = value
        return self
      }
      public func clearXp() -> Pogoprotos.Data.Capture.CaptureAward.Builder {
         builderResult.xp.removeAll(keepingCapacity: false)
         return self
      }
      public var candy:Array<Int32> {
           get {
               return builderResult.candy
           }
           set (array) {
               builderResult.candy = array
           }
      }
      public func setCandy(_ value:Array<Int32>) -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        self.candy = value
        return self
      }
      public func clearCandy() -> Pogoprotos.Data.Capture.CaptureAward.Builder {
         builderResult.candy.removeAll(keepingCapacity: false)
         return self
      }
      public var stardust:Array<Int32> {
           get {
               return builderResult.stardust
           }
           set (array) {
               builderResult.stardust = array
           }
      }
      public func setStardust(_ value:Array<Int32>) -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        self.stardust = value
        return self
      }
      public func clearStardust() -> Pogoprotos.Data.Capture.CaptureAward.Builder {
         builderResult.stardust.removeAll(keepingCapacity: false)
         return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        builderResult = Pogoprotos.Data.Capture.CaptureAward()
        return self
      }
      override public func clone() throws -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        return try Pogoprotos.Data.Capture.CaptureAward.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Data.Capture.CaptureAward {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Data.Capture.CaptureAward {
        let returnMe:Pogoprotos.Data.Capture.CaptureAward = builderResult
        return returnMe
      }
      public func mergeFrom(_ other:Pogoprotos.Data.Capture.CaptureAward) throws -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        if other == Pogoprotos.Data.Capture.CaptureAward() {
         return self
        }
        if !other.activityType.isEmpty {
           builderResult.activityType += other.activityType
        }
        if !other.xp.isEmpty {
            builderResult.xp += other.xp
        }
        if !other.candy.isEmpty {
            builderResult.candy += other.candy
        }
        if !other.stardust.isEmpty {
            builderResult.stardust += other.stardust
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(_ input:CodedInputStream) throws -> Pogoprotos.Data.Capture.CaptureAward.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(_ input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntactivityType = try input.readEnum()
            if let enumsactivityType = Pogoprotos.Enums.ActivityType(rawValue:valueIntactivityType) {
                 builderResult.activityType += [enumsactivityType]
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntactivityType))
            }

          case 18:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.xp += [try input.readInt32()]
            }
            input.popLimit(limit)

          case 26:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.candy += [try input.readInt32()]
            }
            input.popLimit(limit)

          case 34:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.stardust += [try input.readInt32()]
            }
            input.popLimit(limit)

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(_ jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        let resultDecodedBuilder = Pogoprotos.Data.Capture.CaptureAward.Builder()
        if let jsonValueActivityType = jsonMap["activityType"] as? Array<String> {
          var jsonArrayActivityType:Array<Pogoprotos.Enums.ActivityType> = []
          for oneValueActivityType in jsonValueActivityType {
            let enumFromStringActivityType = try Pogoprotos.Enums.ActivityType.fromString(oneValueActivityType)
            jsonArrayActivityType += [enumFromStringActivityType]
          }
          resultDecodedBuilder.activityType = jsonArrayActivityType
        }
        if let jsonValueXp = jsonMap["xp"] as? Array<NSNumber> {
          var jsonArrayXp:Array<Int32> = []
          for oneValueXp in jsonValueXp {
            jsonArrayXp += [oneValueXp.int32Value]
          }
          resultDecodedBuilder.xp = jsonArrayXp
        }
        if let jsonValueCandy = jsonMap["candy"] as? Array<NSNumber> {
          var jsonArrayCandy:Array<Int32> = []
          for oneValueCandy in jsonValueCandy {
            jsonArrayCandy += [oneValueCandy.int32Value]
          }
          resultDecodedBuilder.candy = jsonArrayCandy
        }
        if let jsonValueStardust = jsonMap["stardust"] as? Array<NSNumber> {
          var jsonArrayStardust:Array<Int32> = []
          for oneValueStardust in jsonValueStardust {
            jsonArrayStardust += [oneValueStardust.int32Value]
          }
          resultDecodedBuilder.stardust = jsonArrayStardust
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(_ data:Data) throws -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        let jsonData = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Data.Capture.CaptureAward.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

  final public class CaptureProbability : GeneratedMessage, GeneratedMessageProtocol {
    private var pokeballTypeMemoizedSerializedSize:Int32 = 0
    public private(set) var pokeballType:Array<Pogoprotos.Inventory.ItemId> = Array<Pogoprotos.Inventory.ItemId>()
    public private(set) var captureProbability:Array<Float> = Array<Float>()
    private var captureProbabilityMemoizedSerializedSize:Int32 = -1
    public private(set) var hasReticleDifficultyScale:Bool = false
    public private(set) var reticleDifficultyScale:Double = Double(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(_ output:CodedOutputStream) throws {
      for oneValueOfpokeballType in pokeballType {
          try output.writeEnum(1, value:oneValueOfpokeballType.rawValue)
      }
      if !captureProbability.isEmpty {
        try output.writeRawVarint32(18)
        try output.writeRawVarint32(captureProbabilityMemoizedSerializedSize)
        for oneValuecaptureProbability in captureProbability {
          try output.writeFloatNoTag(oneValuecaptureProbability)
        }
      }
      if hasReticleDifficultyScale {
        try output.writeDouble(12, value:reticleDifficultyScale)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      var dataSizepokeballType:Int32 = 0
      for oneValueOfpokeballType in pokeballType {
          dataSizepokeballType += oneValueOfpokeballType.rawValue.computeEnumSizeNoTag()
      }
      serialize_size += dataSizepokeballType
      serialize_size += (1 * Int32(pokeballType.count))
      var dataSizeCaptureProbability:Int32 = 0
      dataSizeCaptureProbability = 4 * Int32(captureProbability.count)
      serialize_size += dataSizeCaptureProbability
      if !captureProbability.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeCaptureProbability.computeInt32SizeNoTag()
      }
      captureProbabilityMemoizedSerializedSize = dataSizeCaptureProbability
      if hasReticleDifficultyScale {
        serialize_size += reticleDifficultyScale.computeDoubleSize(12)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(_ input:InputStream) throws -> Array<Pogoprotos.Data.Capture.CaptureProbability> {
      var mergedArray = Array<Pogoprotos.Data.Capture.CaptureProbability>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(_ input:InputStream) throws -> Pogoprotos.Data.Capture.CaptureProbability? {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(_ data:Data) throws -> Pogoprotos.Data.Capture.CaptureProbability {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Data.Capture.PogoprotosDataCaptureRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(_ data:Data, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Capture.CaptureProbability {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(_ input:InputStream) throws -> Pogoprotos.Data.Capture.CaptureProbability {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(_ input:InputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Capture.CaptureProbability {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(_ input:CodedInputStream) throws -> Pogoprotos.Data.Capture.CaptureProbability {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(_ input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Capture.CaptureProbability {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
      return Pogoprotos.Data.Capture.CaptureProbability.classBuilder() as! Pogoprotos.Data.Capture.CaptureProbability.Builder
    }
    public func getBuilder() -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
      return classBuilder() as! Pogoprotos.Data.Capture.CaptureProbability.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Capture.CaptureProbability.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Capture.CaptureProbability.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
      return try Pogoprotos.Data.Capture.CaptureProbability.builderWithPrototype(self)
    }
    public class func builderWithPrototype(_ prototype:Pogoprotos.Data.Capture.CaptureProbability) throws -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if !pokeballType.isEmpty {
        var jsonArrayPokeballType:Array<String> = []
          for oneValuePokeballType in pokeballType {
            jsonArrayPokeballType += [oneValuePokeballType.toString()]
          }
        jsonMap["pokeballType"] = jsonArrayPokeballType
      }
      if !captureProbability.isEmpty {
        var jsonArrayCaptureProbability:Array<NSNumber> = []
          for oneValueCaptureProbability in captureProbability {
            jsonArrayCaptureProbability += [NSNumber(value:oneValueCaptureProbability)]
          }
        jsonMap["captureProbability"] = jsonArrayCaptureProbability
      }
      if hasReticleDifficultyScale {
        jsonMap["reticleDifficultyScale"] = NSNumber(value:reticleDifficultyScale)
      }
      return jsonMap
    }
    override class public func decode(_ jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Capture.CaptureProbability {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(_ data:Data) throws -> Pogoprotos.Data.Capture.CaptureProbability {
      return try Pogoprotos.Data.Capture.CaptureProbability.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(_ indent:String) throws -> String {
      var output = ""
      var pokeballTypeElementIndex:Int = 0
      for oneValueOfpokeballType in pokeballType {
          output += "\(indent) pokeballType[\(pokeballTypeElementIndex)]: \(oneValueOfpokeballType.description)\n"
          pokeballTypeElementIndex += 1
      }
      var captureProbabilityElementIndex:Int = 0
      for oneValueCaptureProbability in captureProbability  {
          output += "\(indent) captureProbability[\(captureProbabilityElementIndex)]: \(oneValueCaptureProbability)\n"
          captureProbabilityElementIndex += 1
      }
      if hasReticleDifficultyScale {
        output += "\(indent) reticleDifficultyScale: \(reticleDifficultyScale) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            for oneValueOfpokeballType in pokeballType {
                hashCode = (hashCode &* 31) &+ Int(oneValueOfpokeballType.rawValue)
            }
            for oneValueCaptureProbability in captureProbability {
                hashCode = (hashCode &* 31) &+ oneValueCaptureProbability.hashValue
            }
            if hasReticleDifficultyScale {
               hashCode = (hashCode &* 31) &+ reticleDifficultyScale.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Data.Capture.CaptureProbability"
    }
    override public func className() -> String {
        return "Pogoprotos.Data.Capture.CaptureProbability"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Data.Capture.CaptureProbability.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Data.Capture.CaptureProbability = Pogoprotos.Data.Capture.CaptureProbability()
      public func getMessage() -> Pogoprotos.Data.Capture.CaptureProbability {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var pokeballType:Array<Pogoprotos.Inventory.ItemId> {
          get {
              return builderResult.pokeballType
          }
          set (value) {
              builderResult.pokeballType = value
          }
      }
      public func setPokeballType(_ value:Array<Pogoprotos.Inventory.ItemId>) -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        self.pokeballType = value
        return self
      }
      public func clearPokeballType() -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        builderResult.pokeballType.removeAll(keepingCapacity: false)
        return self
      }
      public var captureProbability:Array<Float> {
           get {
               return builderResult.captureProbability
           }
           set (array) {
               builderResult.captureProbability = array
           }
      }
      public func setCaptureProbability(_ value:Array<Float>) -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        self.captureProbability = value
        return self
      }
      public func clearCaptureProbability() -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
         builderResult.captureProbability.removeAll(keepingCapacity: false)
         return self
      }
      public var hasReticleDifficultyScale:Bool {
           get {
                return builderResult.hasReticleDifficultyScale
           }
      }
      public var reticleDifficultyScale:Double {
           get {
                return builderResult.reticleDifficultyScale
           }
           set (value) {
               builderResult.hasReticleDifficultyScale = true
               builderResult.reticleDifficultyScale = value
           }
      }
      public func setReticleDifficultyScale(_ value:Double) -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        self.reticleDifficultyScale = value
        return self
      }
      public func clearReticleDifficultyScale() -> Pogoprotos.Data.Capture.CaptureProbability.Builder{
           builderResult.hasReticleDifficultyScale = false
           builderResult.reticleDifficultyScale = Double(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        builderResult = Pogoprotos.Data.Capture.CaptureProbability()
        return self
      }
      override public func clone() throws -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        return try Pogoprotos.Data.Capture.CaptureProbability.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Data.Capture.CaptureProbability {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Data.Capture.CaptureProbability {
        let returnMe:Pogoprotos.Data.Capture.CaptureProbability = builderResult
        return returnMe
      }
      public func mergeFrom(_ other:Pogoprotos.Data.Capture.CaptureProbability) throws -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        if other == Pogoprotos.Data.Capture.CaptureProbability() {
         return self
        }
        if !other.pokeballType.isEmpty {
           builderResult.pokeballType += other.pokeballType
        }
        if !other.captureProbability.isEmpty {
            builderResult.captureProbability += other.captureProbability
        }
        if other.hasReticleDifficultyScale {
             reticleDifficultyScale = other.reticleDifficultyScale
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(_ input:CodedInputStream) throws -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(_ input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntpokeballType = try input.readEnum()
            if let enumspokeballType = Pogoprotos.Inventory.ItemId(rawValue:valueIntpokeballType) {
                 builderResult.pokeballType += [enumspokeballType]
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntpokeballType))
            }

          case 18:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.captureProbability += [try input.readFloat()]
            }
            input.popLimit(limit)

          case 97:
            reticleDifficultyScale = try input.readDouble()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(_ jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        let resultDecodedBuilder = Pogoprotos.Data.Capture.CaptureProbability.Builder()
        if let jsonValuePokeballType = jsonMap["pokeballType"] as? Array<String> {
          var jsonArrayPokeballType:Array<Pogoprotos.Inventory.ItemId> = []
          for oneValuePokeballType in jsonValuePokeballType {
            let enumFromStringPokeballType = try Pogoprotos.Inventory.ItemId.fromString(oneValuePokeballType)
            jsonArrayPokeballType += [enumFromStringPokeballType]
          }
          resultDecodedBuilder.pokeballType = jsonArrayPokeballType
        }
        if let jsonValueCaptureProbability = jsonMap["captureProbability"] as? Array<NSNumber> {
          var jsonArrayCaptureProbability:Array<Float> = []
          for oneValueCaptureProbability in jsonValueCaptureProbability {
            jsonArrayCaptureProbability += [oneValueCaptureProbability.floatValue]
          }
          resultDecodedBuilder.captureProbability = jsonArrayCaptureProbability
        }
        if let jsonValueReticleDifficultyScale = jsonMap["reticleDifficultyScale"] as? NSNumber {
          resultDecodedBuilder.reticleDifficultyScale = jsonValueReticleDifficultyScale.doubleValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(_ data:Data) throws -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        let jsonData = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Data.Capture.CaptureProbability.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
