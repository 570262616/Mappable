import Foundation

extension Array where Element: SwiftJSONMappable {
    
    public init?(json: Any?) {
        
        if let elements = json as? [Any] {
            self = elements.flatMap { Element(json: $0) }
        } else {
            return nil
        }
    }
    
    public var json: Any { return self.map { $0.json } }
}
