//
//  NormalViewController.swift
//  Flyweight Pattern
//
//  Created by Don on 2017/1/7.
//  Copyright © 2017年 Don. All rights reserved.
//

import UIKit

class NormalViewController: UIViewController {
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        let imageView = UIImageView(frame: imageFrame)
        imageView.contentMode = .scaleAspectFit
        
        // image
        let imageRow = Int(arc4random_uniform(8))
        if let image = getImage(row:imageRow) {
            imageView.image = image
        }
        
        view.addSubview(imageView)
        
    }
    
    func getImage(row:Int) -> UIImage? {
        if let imageType = CharacterType(rawValue: row) {
            switch imageType {
            case .mario:
                return UIImage(named: "mario")
                
            case .montyMole:
                return UIImage(named: "MontyMole")
                
            case .peach:
                return UIImage(named: "peach")
                
            case .shyguy:
                return UIImage(named: "ShyGuy")
                
            case .star:
                return UIImage(named: "star")
                
            case .turtleBlue:
                return UIImage(named: "turtle-blue")
                
            case .turtleGreen:
                return UIImage(named: "turtle-green")
                
            case .boo:
                return UIImage(named: "boo")
                
            }
        } else {
          return nil
            
        }
        

    }
    
    


}
