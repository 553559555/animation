//
//  ViewController.swift
//  基础动画
//
//  Created by 王壮 on 2017/6/17.
//  Copyright © 2017年 Arther. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //列表显示数组
    private let listArray : [String] = {
        
        let array = ["登陆按钮移动动画","1","2","3"]
        return array
    }()
    
    private var tableview : UITableView?
    
    static let identifier = "UITableViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "动画列表"
        
        tableview = UITableView(frame: self.view.bounds, style: .plain)
        tableview?.delegate = self
        tableview?.dataSource = self
        tableview?.rowHeight = 40
        tableview?.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: ViewController.identifier)
        view.addSubview(tableview!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview?.dequeueReusableCell(withIdentifier: ViewController.identifier)
        cell?.textLabel?.text = listArray[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(LoginButtonTransfromViewController(), animated: true)
        default:
            print(indexPath.row)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

