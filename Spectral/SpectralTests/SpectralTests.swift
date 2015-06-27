//
//  SpectralTests.swift
//  SpectralTests
//
//  Created by Laurin Brandner on 27/06/15.
//  Copyright © 2015 Laurin Brandner. All rights reserved.
//

import XCTest
import Spectral

#if os(iOS)
    
    import UIKit
    typealias Color = UIColor
    
    #elseif os(OSX)
    
    import Cocoa
    typealias Color = NSColor
    
#endif

class SpectralTests: XCTestCase {
    
    func testOpaqueColorInitialization() {
        let color = Color(hex: 0xFFFFFF)
        let otherColor = Color(red: 1, green: 1, blue: 1, alpha: 1)
        
        XCTAssertEqual(color, otherColor)
    }
    
    func testTransparentColorInitialization() {
        let color = Color(hex: 0xFFFFFF, alpha: 0.5)
        let otherColor = Color(red: 1, green: 1, blue: 1, alpha: 0.5)
        
        XCTAssertEqual(color, otherColor)
    }
    
    func testHexValue() {
        let hexValue = 0xB43FAA
        let color = Color(hex: hexValue)
        XCTAssertEqual(color.hexValue, hexValue)
    }
    
    func testOverflowingHexValue() {
        let color = Color(hex: 0x110000FF)
        XCTAssertEqual(color.hexValue, 0x000000FF)
    }
    
    func testUnderflowingHexValue() {
        let color = Color(hex: 0xFF)
        XCTAssertEqual(color.hexValue, 0x0000FF)
    }
    
}
