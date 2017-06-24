import Foundation

public protocol Mappable {
    
    init?(any: Any?)
    
    var json: Any { get }
}

public protocol EnumMappable: Mappable {
    
    associatedtype E
    
    init?(rawValue: E)
    
    var rawValue: E { get }
}

extension EnumMappable {
    
    public init?(any: Any?) {
        
        guard let raw = any as? E else { return nil }
        
        self.init(rawValue: raw)
    }
    
    public var json: Any { return self.rawValue }
}
