//
//  FrameByFrameAnimationViewController.swift
//  基础动画
//
//  Created by neoby on 2018/3/28.
//  Copyright © 2018年 Arther. All rights reserved.
//

import UIKit

class FrameByFrameAnimationViewController: UIViewController {
    
    private var image: UIImageView!
    private var index = 0
    private var Time: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white

        image = UIImageView(frame: self.view.bounds)
        image.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(image)
        
        Time = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(FrameByFrameAnimationViewController.refushImage), userInfo: nil, repeats: true)
        
    }
    
    @objc func refushImage() {
        image.image = UIImage(named: "\(index)")
        index += 1
        if index == 67 {
            index = 0
        }
    }

}
