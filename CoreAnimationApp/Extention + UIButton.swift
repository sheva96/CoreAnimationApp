//
//  Extention + UIButton.swift
//  CoreAnimationApp
//
//  Created by Yevhen Shevchenko on 11.12.2020.
//

import UIKit

extension UIButton {
    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.fromValue = 0.8
        pulse.toValue = 1
        pulse.duration = 0.6
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.4
        pulse.damping = 1
        
        layer.add(pulse, forKey: nil)
    }
}
