import Foundation

extension Float: Mappable {
    
    public init?(any: Any?) {
        
        guard let number = any as? NSNumber else { return nil }
        
        self = number.floatValue
    }
    
    public var json: Any { return self }
}
