//
//  animation.swift
//  TinderAnimation
//
//  Created by Landon Vago-Hughes on 25/08/2017.
//  Copyright © 2017 Landon Vago-Hughes. All rights reserved.
//

import Foundation
import UIKit


class TinderAnimate {
    var superView: UIView?
    
    func setup(view: UIView, colour: UIColor) {
        let constant: CGFloat = 150.0
        let circularAnimation = UIView()
        view.addSubview(circularAnimation)
        self.superView = view
        circularAnimation.tag = 1
        circularAnimation.translatesAutoresizingMaskIntoConstraints = false
        circularAnimation.layer.borderWidth = 2.0
        circularAnimation.layer.borderColor = colour.cgColor
        circularAnimation.layer.backgroundColor = UIColor.clear.cgColor
        circularAnimation.layer.opacity = 1.0
        circularAnimation.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0.0).isActive = true
        circularAnimation.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor, constant: 0.0).isActive = true
        
        view.layoutIfNeeded()
        circularAnimation.widthAnchor.constraint(equalToConstant: constant).isActive = true
        circularAnimation.heightAnchor.constraint(equalToConstant: constant).isActive = true
        circularAnimation.layer.cornerRadius = constant/1.8
        
        UIView.animate(withDuration: 2.0, delay: 0.1, options: .curveEaseOut, animations: {
            view.layoutIfNeeded()
            circularAnimation.layer.opacity = 0.0
            let animationView = view.viewWithTag(1)
            view.willRemoveSubview(animationView!)
        }, completion: { finishedANimation in
            if finishedANimation == true {
                self.repeatAnimation(views: self.superView!)
            }
        })
    }
    
    func repeatAnimation(views: UIView) {
        setup(view: views, colour: UIColor.red)
    }
}





