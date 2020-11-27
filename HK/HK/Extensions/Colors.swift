//
//  Colors.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/26/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import Foundation
import UIKit


// Color Names
let BRAND_PRIMARY = "BrandRed"
let BRAND_BLUE = "BrandBlue"
let BRAND_GREY = "BrandGrey"
let BEST_GREY = "BrandGray"

extension UIColor {
    
    // returns a Color Set Asset defined in Assets.xcassets
    @nonobjc class var brandPrimary: UIColor {
        return UIColor(named: BRAND_PRIMARY)!
    }
    
    @nonobjc class var brandBlue: UIColor {
        return UIColor(named: BRAND_BLUE)!
    }
    
    @nonobjc class var bestOfGrey: UIColor{
        return UIColor(named: BEST_GREY)!
    }
    
    
    @nonobjc class var brandGrey: UIColor {
        let color = 0xEDEDED
        return UIColor.rgb(fromHex: color)
    }
    
    @nonobjc class var brandGreyBackground: UIColor {
        let color = 0xF7F9FB
        return UIColor.rgb(fromHex: color)
    }
    
    // This method is used to convert HEX values to their intended RGBA values
    class func rgb(fromHex: Int) -> UIColor {
        
        let red =   CGFloat((fromHex & 0xFF0000) >> 16) / 0xFF
        let green = CGFloat((fromHex & 0x00FF00) >> 8) / 0xFF
        let blue =  CGFloat(fromHex & 0x0000FF) / 0xFF
        let alpha = CGFloat(1.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}
