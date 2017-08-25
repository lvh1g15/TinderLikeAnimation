//
//  ViewController.swift
//  TinderAnimation
//
//  Created by Landon Vago-Hughes on 25/08/2017.
//  Copyright © 2017 Landon Vago-Hughes. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    var animation = TinderAnimate()
    override func viewDidLoad() {
        super.viewDidLoad()
        animation.setup(view: self.view)
    }
}

