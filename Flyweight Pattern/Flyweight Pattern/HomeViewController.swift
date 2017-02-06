//
//  HomeViewController.swift
//  Flyweight Pattern
//
//  Created by Don on 2017/1/7.
//  Copyright © 2017年 Don. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var nomalButton: UIButton!
    @IBOutlet var flyweightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Flyweight Pattern"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapNormal(_ sender: Any) {
        let VC = NormalViewController(nibName: "NormalViewController", bundle: nil)
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @IBAction func didTapFlyweight(_ sender: Any) {
        let VC = FlyweightViewController(nibName: "FlyweightViewController", bundle: nil)
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @IBAction func didTapFlyweight2(_ sender: Any) {
        
    }

}
