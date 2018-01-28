//
//  User.swift
//  hello-realm
//
//  Created by rightmeow on 1/28/18.
//  Copyright © 2018 rightmeow. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {

    @objc dynamic var id: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var is_completed: Bool = false
    @objc dynamic var created_at: NSDate?
    @objc dynamic var updated_at: NSDate?

    override static func primaryKey() -> String? {
        return "id"
    }

    func save() {
        do {
            try realm?.write {
                realm?.add(self, update: true)
            }
        } catch let err {
            print(err.localizedDescription)
        }
    }

    convenience init(id: String, title: String, is_completed: Bool, created_at: NSDate, updated_at: NSDate) {
        self.init()
        self.id = id
        self.title = title
        self.is_completed = is_completed
        self.created_at = created_at
        self.updated_at = updated_at
    }

}
