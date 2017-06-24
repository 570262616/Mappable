import Foundation

extension Array where Element: Mappable {
    
    public var json: Any { return self.map { $0.json } }
}
