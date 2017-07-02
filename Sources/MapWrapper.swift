import Foundation

public struct MapWrapper {
    
    private var json: [String: Any]
    
    public init?(_ any: Any?) {
        
        guard let dict = any as? [String: Any] else { return nil }
        
        self.json = dict
    }
    
    private init() { self.json = [:] }
    
    public static func exportJSON(_ maker: (inout MapWrapper) -> Void) -> Any {
        
        var wrapper = self.init()
        
        maker(&wrapper)
        
        return wrapper.json
    }
    
    public subscript<T: Mappable>(_ key: String) -> T? {
        set {
            self.json[key] = newValue?.json
        }
        get {
            return T(any: self.json[key])
        }
    }
    
    public subscript<T: Mappable & DefaultValue>(_ key: String) -> T {
        set {
            self.json[key] = newValue.json
        }
        get {
            return T(any: self.json[key]) ?? T.defaultValue
        }
    }
    
    public subscript<T: Mappable>(_ key: String) -> [T]? {
        set {
            self.json[key] = newValue?.json
        }
        get {
            return [T](any: self.json[key])
        }
    }
    
    public subscript<T: Mappable>(_ key: String) -> [T] {
        set {
            self.json[key] = newValue.json
        }
        get {
            return [T](any: self.json[key]) ?? []
        }
    }
}
