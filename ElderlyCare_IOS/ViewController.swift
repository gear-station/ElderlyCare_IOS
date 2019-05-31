//
//  ViewController.swift
//  ElderlyCare_IOS
//
//  Created by 贾富佳 on 2019/4/2.
//  Copyright © 2019 iHolon. All rights reserved.
//

import UIKit
import ElderCare_UserMediator
import CTMediator


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func pushToUser(_ sender: Any) {
        print(CTMediator.sharedInstance()?.userViewController(callback: { (s) in
            
        }))
        guard let userVC = CTMediator.sharedInstance()?.userViewController(callback: { (callback) in
            print(callback)
        }) else {return}
        navigationController?.pushViewController(userVC, animated: true)
    }
}

