//
//  Base+String.swift
//  Snoopy
//
//  Created by 马强 on 2016/12/31.
//  Copyright © 2016年 马强. All rights reserved.
//

import Foundation

extension String: Base {
    
    public init?(json: Any?) {
        guard let string = json as? String else { return nil }
        self = string
    }
    
    public var json: Any { return self }
}
