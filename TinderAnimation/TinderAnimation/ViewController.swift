//
//  ViewController.swift
//  TinderAnimation
//
//  Created by Landon Vago-Hughes on 25/08/2017.
//  Copyright © 2017 Landon Vago-Hughes. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    var profileClickButton = UIButton()
    var profileView = UIImageView()
    var animation = TinderAnimate()
    var profilePicture = profilePic()
    var userTouch = UserTouchEnabled()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animation.setup(view: self.view, options: .repeat)
        let profileClick = profilePicture.creatingProfileView(view: self.view)
        self.profileView = profileClick.profileView
        self.profileView.isUserInteractionEnabled = true
        self.view.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch: UITouch = touches.first else { return }
        if touch.view == self.profileView {
            animation.profileAnimateTouchBegin(profileView: self.profileView, bool: true, view: self.view)
        }
        super.touchesBegan(touches, with: event)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch: UITouch = touches.first else { return }
        if touch.view == self.profileView {
            animation.profileAnimateTouchBegin(profileView: self.profileView, bool: false, view: self.view)
        }
    }
}

