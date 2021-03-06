//
//  NSColor+.swift
//  SwiftyExts
//
//  Created by LDD on 2018/3/7.
//

#if canImport(AppKit)
import AppKit

public extension NSColor {

    func ciColor() -> CIColor {
        return cgColor().ciColor()
    }

    func cgColor() -> CGColor {
        return cgColor
    }
}
#endif
