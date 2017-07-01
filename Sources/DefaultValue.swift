import Foundation

public protocol DefaultValue {
    
    init()
    
    static var defaultValue: Self { get }
}

extension DefaultValue where Self: Mappable {
    
    public static var defaultValue: Self { return self.init() }
}
