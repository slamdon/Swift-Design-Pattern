//
//  Character.swift
//  Flyweight Pattern
//
//  Created by Don on 2017/1/8.
//  Copyright © 2017年 Don. All rights reserved.
//

import UIKit

class Character: UIImageView {

    override func draw(_ rect: CGRect) {
        // Drawing code
        image?.draw(in: rect)
    }


}
