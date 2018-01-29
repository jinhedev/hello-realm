//
//  ViewController.swift
//  hello-realm
//
//  Created by rightmeow on 1/28/18.
//  Copyright © 2018 rightmeow. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
        let newUser = User(id: "123", title: "sihfaksfnd", is_completed: false, created_at: NSDate(), updated_at: NSDate())
        newUser.save()
        print(Configs.shared.documentDirectory())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

