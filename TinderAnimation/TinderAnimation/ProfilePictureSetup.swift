//
//  ProfilePictureSetup.swift
//  TinderAnimation
//
//  Created by Landon Vago-Hughes on 25/08/2017.
//  Copyright © 2017 Landon Vago-Hughes. All rights reserved.
//

import Foundation
import UIKit

class profilePic {
    
    struct Returners {
        var profileView: UIImageView!
    }

    func creatingProfileView(view: UIView) -> Returners {
        let profileView = UIImageView()
        view.addSubview(profileView)
        
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileView.layer.borderWidth = 2.0
        profileView.layer.borderColor = UIColor.white.cgColor
        profileView.layer.backgroundColor = UIColor.lightGray.cgColor
        profileView.layer.cornerRadius = 35.0
        profileView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        profileView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        profileView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
        profileView.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor).isActive = true

        return Returners(profileView: profileView)

    }
}

