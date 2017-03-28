import Foundation

extension Int8: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.int8Value
    }
    
    public var json: Any { return self }
}

extension Int16: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.int16Value
    }
    
    public var json: Any { return self }
}

extension Int32: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.int32Value
    }
    
    public var json: Any { return self }
}

extension Int: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.intValue
    }
    
    public var json: Any { return self }
}

extension Int64: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.int64Value
    }
    
    public var json: Any { return self }
}

extension UInt8: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uint8Value
    }
    
    public var json: Any { return self }
}

extension UInt16: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uint16Value
    }
    
    public var json: Any { return self }
}

extension UInt32: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uint32Value
    }
    
    public var json: Any { return self }
}

extension UInt: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uintValue
    }
    
    public var json: Any { return self }
}

extension UInt64: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uint64Value
    }
    
    public var json: Any { return self }
}
