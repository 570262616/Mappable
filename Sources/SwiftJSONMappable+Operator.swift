import Foundation

precedencegroup ParserOperatorPrecedence {
    associativity:  none
    higherThan:     MultiplicationPrecedence
}

infix operator <-: ParserOperatorPrecedence
public func <-<T: SwiftJSONMappable>(dict: [String: Any], key: String) -> T? {
    return T(json: dict[key])
}

public func <-<T: SwiftJSONMappable>(dict: [String: Any], key: String) -> [T]? {
    return [T](json: dict[key])
}
