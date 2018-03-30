//
//  UIButtonExt.swift
//  Xylophone
//
//  Created by Manohar Kurapati on 30/03/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

extension UIButton {

    func animateShake(){
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.autoreverses = true
        shake.repeatCount = 2
        
        let fromPoint = CGPoint(x: center.x - 5, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: nil)
    }

}
