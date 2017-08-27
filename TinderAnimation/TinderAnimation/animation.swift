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
    
    func setup(view: UIView, options: UIViewAnimationOptions) {
        var constant: CGFloat = 0.0
        let circularAnimation = UIView()
//        view.addSubview(circularAnimation)
        view.insertSubview(circularAnimation, at: 1)
        self.superView = view
        circularAnimation.tag = 1
        circularAnimation.translatesAutoresizingMaskIntoConstraints = false
        circularAnimation.layer.borderWidth = 0.5
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
        
        UIView.animate(withDuration: 2.5, delay: 0.1, options: options, animations: {
            view.layoutIfNeeded()
            
            circularAnimation.layer.opacity = 0.0
            circularAnimation.transform = CGAffineTransform(scaleX: 7, y: 7)

        }, completion: { finishedANimation in

        })
    }
    
    func profileAnimateTouchBegin(profileView: UIImageView, bool: Bool, view: UIView) {
        if bool == true {
            UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear, animations: {
                profileView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }, completion: nil)
            setup(view: view, options: .curveEaseOut)
            
        } else {
            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 6.0, options: .curveLinear, animations: {
                profileView.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
        }
    }
}





