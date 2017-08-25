//
//  animation.swift
//  TinderAnimation
//
//  Created by Landon Vago-Hughes on 25/08/2017.
//  Copyright © 2017 Landon Vago-Hughes. All rights reserved.

import Foundation
import UIKit
import Darwin

class TinderAnimate {
    var superView: UIView?
    
    func setup(view: UIView) {
        var constant: CGFloat = 0.0
        let circularAnimation = UIView()
        view.addSubview(circularAnimation)
        self.superView = view
        circularAnimation.tag = 1
        circularAnimation.translatesAutoresizingMaskIntoConstraints = false
        circularAnimation.layer.borderWidth = 2.0
        circularAnimation.layer.borderColor = UIColor(red: 254/255, green: 63/255, blue: 68/255, alpha: 1.0).cgColor
        circularAnimation.layer.backgroundColor = UIColor(red: 254/255, green: 130/255, blue: 130/255, alpha: 1.0).cgColor
        circularAnimation.layer.opacity = 1.0
        circularAnimation.layer.cornerRadius = 0.0
        circularAnimation.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0.0).isActive = true
        circularAnimation.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor, constant: 0.0).isActive = true
        constant = 100
        circularAnimation.widthAnchor.constraint(equalToConstant: constant/2).isActive = true
        circularAnimation.heightAnchor.constraint(equalToConstant: constant/2).isActive = true
        circularAnimation.layer.cornerRadius = 25.0
        
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 2.5, delay: 0.1, options: .repeat, animations: {
            view.layoutIfNeeded()
            
            circularAnimation.layer.opacity = 0.0
            circularAnimation.transform = CGAffineTransform(scaleX: 7, y: 7)
            circularAnimation.layer.borderWidth = 1.0

        }, completion: { finishedANimation in

        })
    }
    
    func repeatAnimation(views: UIView) {
        setup(view: views)
    }
}





