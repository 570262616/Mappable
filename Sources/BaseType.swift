import Foundation

extension Int8: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.int8Value
    }
    
    public var json: Any { return self }
}

extension Int16: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.int16Value
    }
    
    public var json: Any { return self }
}

extension Int32: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.int32Value
    }
    
    public var json: Any { return self }
}

extension Int: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.intValue
    }
    
    public var json: Any { return self }
}

extension Int64: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.int64Value
    }
    
    public var json: Any { return self }
}

extension UInt8: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.uint8Value
    }
    
    public var json: Any { return self }
}

extension UInt16: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.uint16Value
    }
    
    public var json: Any { return self }
}

extension UInt32: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.uint32Value
    }
    
    public var json: Any { return self }
}

extension UInt: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.uintValue
    }
    
    public var json: Any { return self }
}

extension UInt64: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.uint64Value
    }
    
    public var json: Any { return self }
}

extension Float: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.floatValue
    }
    
    public var json: Any { return self }
}

extension Double: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.doubleValue
    }
    
    public var json: Any { return self }
}

extension Bool: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.boolValue
    }
    
    public var json: Any { return self }
}

extension String: Mappable {
    
    public init?(any: Any?) {
        
        guard let string = any as? String else { return nil }
        
        self = string
    }
    
    public var json: Any { return self }
}

extension Array where Element: Mappable {
    
    public var json: Any { return self.map { $0.json } }
}
