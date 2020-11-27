//
//  Animations.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/26/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    func makePulseAnimation(){
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.4
        pulse.fromValue = 0.8
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        layer.add(pulse, forKey: nil)
    }
    
    // Created by @Rob. adds the squish animation to an icon
    func addSqueezeButtonAnimationToView() {
        let easeOutTiming = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        let overshootTiming = CAMediaTimingFunction(controlPoints: 0.00, 0.00, 0.58, 1.30)
        let anticipateTiming = CAMediaTimingFunction(controlPoints: 0.42, -0.30, 1.00, 1.00)
        
        let squeezeGraphicRoundScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
        squeezeGraphicRoundScaleXAnimation.duration = 0.400
        squeezeGraphicRoundScaleXAnimation.values = [1.000, 1.000, 0.700, 1.000]
        squeezeGraphicRoundScaleXAnimation.keyTimes = [0.000, 0.250, 0.750, 1.000]
        squeezeGraphicRoundScaleXAnimation.timingFunctions = [anticipateTiming, overshootTiming, easeOutTiming]
        self.layer.add(squeezeGraphicRoundScaleXAnimation, forKey:"SqueezeButton_ScaleX")
        
        let squeezeGraphicRoundScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
        squeezeGraphicRoundScaleYAnimation.duration = 0.400
        squeezeGraphicRoundScaleYAnimation.values = [1.000, 0.700, 1.000, 1.000]
        squeezeGraphicRoundScaleYAnimation.keyTimes = [0.000, 0.250, 0.750, 1.000]
        squeezeGraphicRoundScaleYAnimation.timingFunctions = [overshootTiming, overshootTiming, anticipateTiming]
        self.layer.add(squeezeGraphicRoundScaleYAnimation, forKey:"SqueezeButton_ScaleY")
    } // end squeeze
}
// Murugo Sun and title animation effect
extension UIViewController {
    
    func murugoAnimation(murugoSun: UIImageView, murugoTitle: UIImageView) {
        murugoSun.frame = CGRect(x: 268, y: 270, width: 126, height: 113)
        murugoTitle.alpha = 0
        UIView.animate(withDuration: 2.0, animations: {
            murugoSun.frame = CGRect(x: 268, y: 81, width: 126, height: 113)
            //            murugoSun.transform = CGAffineTransform(rotationAngle: .pi)  // Uncomment this if you want the Murugo sun have a roation animation
            murugoTitle.alpha = 0.8
        }) { (true) in
            UIView.animate(withDuration: 1.0) {
                murugoTitle.alpha = 1
            }
        }
    }
}
