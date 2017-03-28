//
//  SwiftJSONMappable.swift
//  Sample
//
//  Created by 马强 on 2016/12/31.
//  Copyright © 2016年 马强. All rights reserved.
//

import Foundation

public protocol SwiftJSONMappable {
    
    init?(json: Any?)
    
    var json: Any { get }
}
