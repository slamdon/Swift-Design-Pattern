//
//  Flyweight.swift
//  Flyweight Pattern
//
//  Created by Don on 2017/1/8.
//  Copyright © 2017年 Don. All rights reserved.
//

import UIKit


enum CharacterType:Int {
    case mario
    case montyMole
    case peach
    case shyguy
    case star
    case turtleBlue
    case turtleGreen
    case boo
}

class FlyweightFactory {
    var characterImages = [CharacterType:UIImage]()
    
    func createFlyweight(type:CharacterType) -> Character {
        
        var image = characterImages[type]
        if image == nil {
            switch type {
            case .mario:
                image = UIImage(named: "mario")
                characterImages[type] = image
                
            case .montyMole:
                image = UIImage(named: "montyMole")
                characterImages[type] = image
                
            case .peach:
                image = UIImage(named: "peach")
                characterImages[type] = image
                
            case .shyguy:
                image = UIImage(named: "shyguy")
                characterImages[type] = image
                
            case .star:
                image = UIImage(named: "star")
                characterImages[type] = image
                
            case .turtleBlue:
                image = UIImage(named: "turtle-blue")
                characterImages[type] = image
                
            case .turtleGreen:
                image = UIImage(named: "turtle-green")
                characterImages[type] = image
                
            case .boo:
                image = UIImage(named: "boo")
                characterImages[type] = image
            }
        }
        
        
        
        return Character(image: image)
    }
    
    
}



