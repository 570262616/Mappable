# SwiftJSONMapping

# Installation
    pod 'SwiftJSONMapping'

# Usage
```swift
import Foundation
import SwiftJSONMapping

public enum TRSex: Int, SwiftJSONEnumMappable {

    public typealias E = Int
    
    case female = 2 
    case male = 1 
}

public struct TRPerson: SwiftJSONMappable {
    
    public var name: String?
    public var age: Int?
    public var sex: TRSex?

    public init?(json: Any?) {
        
        guard let dict = json as? [String: Any] else { return nil }
        
        name = dict <- "name"
        age = dict <- "age"
        sex = dict <- "sex"
    }
    
    public var json: Any {
        
        var dict = [String: Any]()
        
        dict["name"] = name?.json
        dict["age"] = age?.json
        dict["sex"] = sex?.json

        return dict
    }
}
```