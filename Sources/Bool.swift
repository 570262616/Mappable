import Foundation

extension Bool: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.boolValue
    }
    
    public var json: Any { return self }
}
