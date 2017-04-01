import Foundation

public protocol SwiftJSONEnumMappable: SwiftJSONMappable {
    
    associatedtype E
    
    init?(rawValue: E)
    
    var rawValue: E { get }
}

extension SwiftJSONEnumMappable {
    
    public init?(json: Any?) {
        guard let raw = json as? E else { return nil }
        self.init(rawValue: raw)
    }
    
    public var json: Any { return self.rawValue }
}
