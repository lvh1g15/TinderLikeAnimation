//
//  FetchPictureFromPhotos.swift
//  TinderAnimation
//
//  Created by Landon Vago-Hughes on 27/08/2017.
//  Copyright © 2017 Landon Vago-Hughes. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

extension ViewController {
        
    func imageSetup(_ sender: UIButton) {
        guard let urls = URL(string: "https://source.unsplash.com/random/\(Int(self.profileView.layer.frame.height))x\(Int(self.profileView.layer.frame.width))") else { return }
        let resource = ImageResource(downloadURL: urls)
        self.profileView.kf.setImage(with: resource)
        self.profileView.clipsToBounds = true
    }
    
    func setupRefreshButton() {
        let refreshed = UIButton()
        self.view.addSubview(refreshed)
        refreshed.setImage(UIImage(named: "refresh"), for: .normal)
        refreshed.translatesAutoresizingMaskIntoConstraints = false
        refreshed.widthAnchor.constraint(equalToConstant: 40).isActive = true
        refreshed.heightAnchor.constraint(equalToConstant: 40).isActive = true
        refreshed.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
        refreshed.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50).isActive = true
        refreshed.addTarget(self, action: #selector(imageSetup(_:)), for: .touchUpInside)
    }
    
    func image(image:UIImage,imageSize:CGSize)->UIImage {
        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0.0)
        image.drawAsPattern(in: CGRect(x: self.profileView.center.x, y: self.profileView.center.y, width: self.profileView.layer.frame.width, height: self.profileView.layer.frame.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext()
        return newImage!;
    }
}

