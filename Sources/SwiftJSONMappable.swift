import Foundation

public protocol SwiftJSONMappable {
    
    init?(json: Any?)
    
    var json: Any { get }
}
