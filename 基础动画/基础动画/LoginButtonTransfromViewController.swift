//
//  LoginButtonTransfromViewController.swift
//  基础动画
//
//  Created by 王壮 on 2017/6/17.
//  Copyright © 2017年 Arther. All rights reserved.
//

import UIKit

class LoginButtonTransfromViewController: UIViewController {

    var loginButton : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let backgroundView = UIImageView(image: #imageLiteral(resourceName: "login"))
        backgroundView.frame = self.view.bounds
        self.view.addSubview(backgroundView)
        
        loginButton = UIButton(frame: CGRect(x: -394, y: 230, width: self.view.bounds.size.width - 20 * 2, height: 50))
        loginButton?.backgroundColor = UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton?.setTitle("登陆", for: .normal)
        self.view.addSubview(loginButton!)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(1)
        loginButton?.frame = CGRect(x: 20, y: (self.loginButton?.frame.origin.y)!, width: (self.loginButton?.frame.size.width)!, height: (self.loginButton?.frame.size.height)!)
        UIView.commitAnimations()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
