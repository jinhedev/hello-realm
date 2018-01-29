//
//  Configs.swift
//  hello-realm
//
//  Created by rightmeow on 1/28/18.
//  Copyright © 2018 rightmeow. All rights reserved.
//

import Foundation

class Configs: NSObject {

    static let shared = Configs()

    // document_path

    func documentDirectory() -> String {
        let path = FileManager.default.urls(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask).first?.path
        return path!
    }

}
