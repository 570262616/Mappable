//
//  SwiftJSONMappable+Operator.swift
//  Sample
//
//  Created by 马强 on 2016/12/31.
//  Copyright © 2016年 马强. All rights reserved.
//

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
