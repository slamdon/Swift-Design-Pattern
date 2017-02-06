//
//  FlyweightViewController.swift
//  Flyweight Pattern
//
//  Created by Don on 2017/1/7.
//  Copyright © 2017年 Don. All rights reserved.
//

import UIKit

class FlyweightViewController: UIViewController {
    
    let factory = FlyweightFactory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }


    override func viewDidAppear(_ animated: Bool) {
        for _ in 0...50000 {
            showWorld()
        }
    }
    
    func showWorld() {
        let screenBounds = UIScreen.main.bounds
        let screenWidth = screenBounds.width
        let screenHeight = screenBounds.height
        let minWidth = CGFloat(20)
        
        let randomX = CGFloat(arc4random_uniform(UInt32(screenWidth)))
        let randomY = CGFloat(arc4random_uniform(UInt32(screenHeight)))
        let randomWidth = CGFloat(max(CGFloat(arc4random_uniform(50)), minWidth))
        
        // imageView
        let imageFrame = CGRect(x: randomX, y: randomY, width: randomWidth, height: randomWidth)
        
        let randomType = Int(arc4random_uniform(8))
        let character = factory.createFlyweight(type: CharacterType(rawValue:randomType)!)
        character.frame = imageFrame
        
        view.addSubview(character)
        
    }

}
