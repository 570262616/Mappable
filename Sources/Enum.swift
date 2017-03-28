//
//  Enum.swift
//  Snoopy
//
//  Created by 马强 on 2016/12/31.
//  Copyright © 2016年 马强. All rights reserved.
//

import Foundation

public protocol Enum: Base {
    
    associatedtype E
    
    init?(rawValue: E)
    
    var rawValue: E { get }
}

extension Enum {
    
    public init?(json: Any?) {
        guard let raw = json as? E else { return nil }
        self.init(rawValue: raw)
    }
    
    public var json: Any { return self.rawValue }
}
