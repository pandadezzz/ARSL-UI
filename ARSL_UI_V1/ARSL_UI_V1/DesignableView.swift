//
//  DesignableView.swift
//  ARSL_UI_V1
//
//  Created by jc on 2/25/18.
//  Copyright © 2018 jc. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
        
    }

}
