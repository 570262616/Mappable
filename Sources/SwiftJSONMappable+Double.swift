import Foundation

extension Double: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.doubleValue
    }
    
    public var json: Any { return self }
}
