import Foundation

extension Double: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.doubleValue
    }
    
    public var json: Any { return self }
}
