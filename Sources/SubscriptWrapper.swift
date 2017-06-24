import Foundation

public struct SubscriptWrapper {
    
    private let storage: [String: Any]
    
    public init?(_ any: Any?) {
        
        guard let dict = any as? [String: Any] else { return nil }
        
        self.storage = dict
    }
    
    public subscript<T: Mappable>(_ key: String) -> T? {
        
        return T(any: self.storage[key])
    }
    
    public subscript<T: Collection>(_ key: String) -> T? where T.Element: Mappable {
        
        guard let elements = self.storage[key] as? [Any] else { return nil }
        
        return elements.flatMap { T.Element(any: $0) } as? T
    }
}
