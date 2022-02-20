//
//  UIImageView+ImageResource.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import UIKit
import Kingfisher

extension UIImageView {
    
    func setImage(withResource imageResource: ImageResource?) {
        switch imageResource {
        case .named(let imageName):
            image = UIImage(named: imageName)
        case .url(let url):
            kf.setImage(with: url)
        default:
            image = nil
        }
    }
    
}
