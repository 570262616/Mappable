import Foundation

extension Float: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.floatValue
    }
    
    public var json: Any { return self }
}
