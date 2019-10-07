//
//  URL+.swift
//  SwiftyExts
//
//  Created by LDD on 2019/10/7.
//

import UIKit

extension URL: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        guard let url = URL(string: value) else {
            fatalError("\(value) is an invalid url")
        }
        self = url
    }

    public init(extendedGraphemeClusterLiteral value: String) {
        self.init(stringLiteral: value)
    }

    public init(unicodeScalarLiteral value: String) {
        self.init(stringLiteral: value)
    }
}
