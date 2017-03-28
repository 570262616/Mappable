import Foundation

extension Bool: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.boolValue
    }
    
    public var json: Any { return self }
}
