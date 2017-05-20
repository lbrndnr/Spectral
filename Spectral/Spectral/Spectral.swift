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
        var aF: CGFloat = 0
        getRed(&rF, green: &gF, blue: &bF, alpha: &aF)
        
        let r = Int(rF*255)
        let g = Int(gF*255)
        let b = Int(bF*255)
        let a = Int(aF*255)
        
        return r << 24 + g << 16 + b << 8 + a
    }
    
    private convenience init(hex4 value: Int, alpha: CGFloat?) {
        let a = alpha ?? CGFloat(value & 0x000F)
        
        self.init(hex3: value >> 4, alpha: a/15)
    }
    
    private convenience init(hex3 value: Int, alpha: CGFloat) {
        let r = (value & 0xF00) >> 8
        let g = (value & 0x0F0) >> 4
        let b = value & 0x00F
        
        self.init(red: CGFloat(r)/15, green: CGFloat(g)/15, blue: CGFloat(b)/15, alpha: alpha)
    }
    
    private convenience init(hex8 value: Int, alpha: CGFloat?) {
        let a = alpha ?? CGFloat(value & 0x000000FF)
        
        self.init(hex6: (value >> 8), alpha: a/255)
    }
    
    private convenience init(hex6 value: Int, alpha: CGFloat) {
        let r = (value & 0xFF0000) >> 16
        let g = (value & 0x00FF00) >> 8
        let b = value & 0x0000FF
        
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: alpha)
    }
    
    public convenience init(hex value: Int, alpha: CGFloat? = nil) {
        if value <= 0xFFF {
            self.init(hex3: value, alpha: alpha ?? 1)
        }
        else if value <= 0xFFFF {
            self.init(hex4: value, alpha: alpha)
        }
        else if value <= 0xFFFFFF {
            self.init(hex6: value, alpha: alpha ?? 1)
        }
        else {
            self.init(hex8: value, alpha: alpha)
        }
    }
    
}
