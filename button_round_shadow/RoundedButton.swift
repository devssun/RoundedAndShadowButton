//
//  RoundedButton.swift
//  RoundedButton using Inspectable
//
//  Created by hyesunzzang on 2017. 10. 20..
//  Copyright © 2017년 hyesunzzang. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable

class RoundedButton: UIButton {
    
    // borderColor
    @IBInspectable public var borderColor: UIColor?{
        didSet{
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    // borderWidth
    @IBInspectable public var borderWidth: CGFloat = 0{
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
    // cornerRadius
    @IBInspectable public var cornerRadius: CGFloat{
        get{
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    // shadowOpacity
    @IBInspectable public var shadowOpacity: Float = 0.0{
        didSet{
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    // shadowRadius
    @IBInspectable public var shadowRadius: CGFloat = 0{
        didSet{
            layer.shadowRadius = shadowRadius
        }
    }
    
    // shadowColor
    @IBInspectable public var shadowColor: UIColor?{
        didSet{
            layer.shadowColor = shadowColor?.cgColor
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel?.adjustsFontForContentSizeCategory = true
        contentEdgeInsets = UIEdgeInsetsMake(5, 16, 5, 16)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
