//
//  ViewController.swift
//  CoreAnimationDemo
//
//  Created by 洪亞偉 on 15/4/29.
//  Copyright (c) 2015年 Raincle. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var block: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        block.layer.cornerRadius = 10
        block.layer.shadowOffset = CGSizeMake(2, 2)
        block.layer.shadowOpacity = 0.8
        block.layer.shadowRadius = 3
//        block.layer.masksToBounds = true
        block.layer.shadowColor = UIColor.greenColor().CGColor
        
        let animationR = CABasicAnimation(keyPath: "cornerRadius")
        animationR.fromValue = block.layer.cornerRadius
        animationR.toValue = block.layer.frame.size.height/2
        animationR.autoreverses = true
        animationR.repeatCount = HUGE
        animationR.duration = 1
        block.layer.addAnimation(animationR, forKey: "cornerRadius")
        
        let animationS = CABasicAnimation(keyPath: "shadowRadius")
        animationS.fromValue = block.layer.shadowRadius
        animationS.toValue = 100
        animationS.autoreverses = true
        animationS.repeatCount = HUGE
        animationS.duration = 1
        block.layer.addAnimation(animationS, forKey: "shadowRadius")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

