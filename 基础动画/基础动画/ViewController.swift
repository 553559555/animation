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
    private let listArray : [[String]] = {
        let array = [["UIView方法播放动画","Transform播放动画","关键帧动画","逐帧动画"],["登陆按钮移动动画","1","2","3"],["登陆按钮移动动画","1","2","3"],["登陆按钮移动动画","1","2","3"]]
        return array
    }()
    private let titleArray : [String] = {
        let array = ["视图动画","高级动画","转场动画","未知动画"]
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview?.dequeueReusableCell(withIdentifier: ViewController.identifier)
        cell?.textLabel?.text = listArray[indexPath.section][indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        jumpNextViewController(indexPath.section, indexPath.row)
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleArray[section]
    }
    
    //判断跳转控制器逻辑
    func jumpNextViewController(_ section: Int, _ row: Int) {
        switch section {
        case 0:
            switch row {
            case 0:
                self.navigationController?.pushViewController(LoginButtonTransfromViewController(), animated: true)
            case 1:
                self.navigationController?.pushViewController(TransformAnimationViewController(), animated: true)
            case 2:
                self.navigationController?.pushViewController(KeyframesAnimationViewController(), animated: true)
            case 3:
                self.navigationController?.pushViewController(FrameByFrameAnimationViewController(), animated: true)
            default:
                print(row)
            }
        case 1:
            switch row {
            case 0:
                self.navigationController?.pushViewController(LoginButtonTransfromViewController(), animated: true)
            default:
                print(row)
            }
        case 2:
            switch row {
            case 0:
                self.navigationController?.pushViewController(LoginButtonTransfromViewController(), animated: true)
            default:
                print(row)
            }
        case 3:
            switch row {
            case 0:
                self.navigationController?.pushViewController(LoginButtonTransfromViewController(), animated: true)
            default:
                print(row)
            }
        default:
            print(section)
        }
    }


}

