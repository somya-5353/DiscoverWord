//
//  DesignableTextField.swift
//  DiscoverWord
//
//  Created by Somya on 07/07/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableTextField: UITextField {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateTextField()
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet {
            updateTextField()
        }
    }
    
    private func updateTextField() {
        
        if let image = leftImage {
            
            leftViewMode = .always
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.tintColor = tintColor
            imageView.image = image
            
            let width = leftPadding + 20
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
            view.addSubview(imageView)
            
            leftView = view
            
        } else {
            //image is nil, so hide the the left image view
            leftViewMode = .never
        }
        
        //change the color of placeholder text to tint color
        attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor:tintColor ?? UIColor.gray])
    }
}
