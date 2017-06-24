// 
// TRPerson.swift
//
// 此文件由 CodeFly 生成，请不要手动修改
//

import Foundation
import SwiftJSONMapping

public struct TRPerson: Mappable {
    
    public var name: String?
    public var age: Int?
    public var sex: TRSex?

    public init?(any: Any?) {
        
        guard let json = SwiftJSON(any) else { return }
        
        name = json["name"]
        age = json["age"]
        sex = json["sex"]
    }
    
    public var json: Any {
        
        var dict = [String: Any]()
        
        dict["name"] = name?.json
        dict["age"] = age?.json
        dict["sex"] = sex?.json

        return dict
    }
}
