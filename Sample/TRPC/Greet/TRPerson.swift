// 
// TRPerson.swift
//
// 此文件由 CodeFly 生成，请不要手动修改
//

import Foundation
import SwiftJSONMapping

public struct TRPerson: Base {
    
    public var name: String?
    public var age: Int?
    public var sex: TRSex?

    public init?(json: Any?) {
        
        guard let dict = json as? [String: Any] else { return nil }
        
        name = dict <- "name"
        age = dict <- "age"
        sex = dict <- "sex"
    }
    
    public var json: Any {
        
        var dict = [String: Any]()
        
        dict["name"] = name?.json
        dict["age"] = age?.json
        dict["sex"] = sex?.json

        return dict
    }
}
