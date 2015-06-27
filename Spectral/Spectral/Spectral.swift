//
//  Spectral.swift
//  Spectral
//
//  Created by Laurin Brandner on 27/06/15.
//  Copyright © 2015 Laurin Brandner. All rights reserved.
//

#if os(iOS)

import UIKit
typealias Color = UIColor

#elseif os(OSX)

import Cocoa
typealias Color = NSColor

#endif

extension Color {
    
    public var hexValue: Int {
        var rF: CGFloat = 0
        var gF: CGFloat = 0
        var bF: CGFloat = 0
        getRed(&rF, green: &gF, blue: &bF, alpha: nil)
        
        let r = Int(rF*255)
        let g = Int(gF*255)
        let b = Int(bF*255)
        
        return r << 16 + g << 8 + b
    }
    
    public convenience init(hex value: Int, alpha: CGFloat = 1) {
        let r = (value & 0xFF0000) >> 16
        let g = (value & 0x00FF00) >> 8
        let b = value & 0x0000FF
        
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: alpha)
    }
    
}