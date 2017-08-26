//
//  UserTouchEnabled.swift
//  TinderAnimation
//
//  Created by Landon Vago-Hughes on 26/08/2017.
//  Copyright © 2017 Landon Vago-Hughes. All rights reserved.
//

import Foundation
import UIKit

class UserTouchEnabled {
    func userTouch(superView: UIView) {
        for i in superView.subviews {
            i.isUserInteractionEnabled = true
        }
    }
}
