//
//  RealmManager.swift
//  hello-realm
//
//  Created by rightmeow on 1/28/18.
//  Copyright © 2018 rightmeow. All rights reserved.
//

import Foundation
import RealmSwift

var defaultRealm: Realm!

func setupRealm() {
    defaultRealm = try! Realm()
}
