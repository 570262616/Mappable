//
//  Base.swift
//  Snoopy
//
//  Created by 马强 on 2016/12/31.
//  Copyright © 2016年 马强. All rights reserved.
//

import Foundation

public protocol Base {
    
    init?(json: Any?)
    
    var json: Any { get }
}
