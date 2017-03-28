//
//  Base+Int.swift
//  Snoopy
//
//  Created by 马强 on 2016/12/31.
//  Copyright © 2016年 马强. All rights reserved.
//

import Foundation

extension Int8: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.int8Value
    }
    
    public var json: Any { return self }
}

extension Int16: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.int16Value
    }
    
    public var json: Any { return self }
}

extension Int32: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.int32Value
    }
    
    public var json: Any { return self }
}

extension Int: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.intValue
    }
    
    public var json: Any { return self }
}

extension Int64: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.int64Value
    }
    
    public var json: Any { return self }
}

extension UInt8: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uint8Value
    }
    
    public var json: Any { return self }
}

extension UInt16: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uint16Value
    }
    
    public var json: Any { return self }
}

extension UInt32: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uint32Value
    }
    
    public var json: Any { return self }
}

extension UInt: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uintValue
    }
    
    public var json: Any { return self }
}

extension UInt64: Base {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.uint64Value
    }
    
    public var json: Any { return self }
}
