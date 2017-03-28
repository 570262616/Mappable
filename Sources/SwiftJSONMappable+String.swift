import Foundation

extension String: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let string = json as? String else { return nil }
        self = string
    }
    
    public var json: Any { return self }
}
