import Foundation

extension String: Mappable {
    
    public init?(any: Any?) {
        
        guard let string = any as? String else { return nil }
        
        self = string
    }
    
    public var json: Any { return self }
}
