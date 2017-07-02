// 
// TRPerson.swift
//
// 此文件由 CodeFly 生成，请不要手动修改
//

import Foundation
import Mappable

public struct TRPerson: Mappable {
    
    public var name: String?
    public var age: Int?
    public var sex: TRSex?
    
    public init() {}

    public init?(any: Any?) {
        
        guard let wrapper = MapWrapper(any) else { return nil }
        
        name = wrapper["name"]
        age = wrapper["age"]
        sex = wrapper["sex"]
    }
    
    public var json: Any {
        return MapWrapper.exportJSON {
            $0["name"] = name
            $0["age"] = age
            $0["sex"] = sex
        }
    }
}
