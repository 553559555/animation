//
//  KeyframesAnimationViewController.swift
//  基础动画
//
//  Created by neoby on 2018/3/28.
//  Copyright © 2018年 Arther. All rights reserved.
//

import UIKit

class KeyframesAnimationViewController: UIViewController {
    
    private var backgroundImage: UIImageView!
    private var planeImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        backgroundImage = UIImageView(image: #imageLiteral(resourceName: "Airport"))
        backgroundImage.frame = CGRect(x: 0, y: self.view.bounds.size.height - 200, width: self.view.bounds.size.width, height: 200)
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(backgroundImage)
        
        planeImage = UIImageView(image: #imageLiteral(resourceName: "Plane"))
        planeImage.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        self.view.addSubview(planeImage)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animateKeyframes(withDuration: 2, delay: 0, options: UIViewKeyframeAnimationOptions.calculationModeCubic, animations: {
            //添加子动画
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/2, animations: {
                self.planeImage.frame = CGRect(x: 300, y: 100, width: 30, height: 30)
            })
            UIView.addKeyframe(withRelativeStartTime: 1/2, relativeDuration: 1/2, animations: {
                self.planeImage.frame = CGRect(x: 300, y: self.view.bounds.size.height - 200, width: 100, height: 100)
            })
        }) { (finish) in
            print("动画执行完成")
        }
    }

}
