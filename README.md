# SwiftJSONMapping

# Installation
    pod 'Mappable'

# Usage
```swift
import Foundation
import Mappable

public enum TRSex: Int, EnumMappable {

    public typealias E = Int
    
    case female = 2 
    case male = 1 
}

public struct TRPerson: Mappable {
    
    public var name: String?
    public var age: Int?
    public var sex: TRSex?
    
    public init() {}

    public init?(any: Any?) {
        
        guard let wrapper = SubscriptWrapper(any) else { return nil }
        
        name = wrapper["name"]
        age = wrapper["age"]
        sex = wrapper["sex"]
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
