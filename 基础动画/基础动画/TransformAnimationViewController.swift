
//
//  TransformAnimationViewController.swift
//  基础动画
//
//  Created by neoby on 2018/3/28.
//  Copyright © 2018年 Arther. All rights reserved.
//

import UIKit

class TransformAnimationViewController: UIViewController {
    
    private var image: UIImageView!
    private var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        image = UIImageView(image: #imageLiteral(resourceName: "turntable"))
        image?.sizeToFit()
        image?.center = self.view.center
        self.view.addSubview(image)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animationEnd()
    }
    
    @objc private func animationEnd() {
        UIView.beginAnimations(nil, context: nil)
        //设置控制器为代理
        UIView.setAnimationDelegate(self)
        //设置动画执行完成后执行方法
        UIView.setAnimationDidStop(#selector(TransformAnimationViewController.animationEnd))
        //设置动画时长
        UIView.setAnimationDuration(0.1)
        index += 1
        let angleStart: CGFloat = CGFloat(Double.pi / 2)
        let angle: CGFloat = CGFloat(index) * angleStart
        //设置动画旋转角度
        image.transform = CGAffineTransform(rotationAngle: angle)
        UIView.commitAnimations()
    }

}
