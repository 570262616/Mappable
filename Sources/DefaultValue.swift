import Foundation

public protocol DefaultValue {
    
    static var defaultValue: Self { get }
}

public protocol IntDefaultValue: DefaultValue {}

public protocol BoolDefaultValue: DefaultValue {}

public protocol FloatDefaultValue: DefaultValue {}

public protocol StringDefaultValue: DefaultValue {}

extension IntDefaultValue where Self: Mappable {
    
    public static var defaultValue: Self { return self.init(any: 0)! }
}

extension BoolDefaultValue where Self: Mappable {
    
    public static var defaultValue: Self { return self.init(any: false)! }
}

extension FloatDefaultValue where Self: Mappable {
    
    public static var defaultValue: Self { return self.init(any: 0.0)! }
}

extension StringDefaultValue where Self: Mappable {
    
    public static var defaultValue: Self { return self.init(any: "")! }
}

extension DefaultValue where Self: Mappable {
    
    static var defaultValue: Self { return self.init(any: [:])! }
}
