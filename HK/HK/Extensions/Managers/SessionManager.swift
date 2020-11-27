//
//  SessionManager.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/26/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import Foundation

class SessionManager {
    private init(){}
    
    static let instance = SessionManager()
    let defaults = UserDefaults.standard
    
    var HelloKigaliBearerToken : String {
        get {
            return defaults.string(forKey: "HELLO_KIGALI_ACCESS_TOKEN") ?? ""
        }set (value){
            defaults.set(value,forKey: "HELLO_KIGALI_ACCESS_TOKEN")
        }
    }
    
    
    var isLoggedIn : Bool {
        get {
            return defaults.bool(forKey: "ACCESS_TOKEN")
        }
        set (value){
            defaults.set(value, forKey: "ACCESS_TOKEN")
        }
    }
    var collectBadges : Bool {
        get {
            return defaults.bool(forKey: "HELLO_KIGALI_COLLECT_BADGES")
        }
        set (value) {
            return defaults.set(value, forKey: "HELLO_KIGALI_COLLECT_BADGES")
        }
    }
    var displayName: Bool {
        get {
            return defaults.bool(forKey: "HELLO_KIGALI_DISPLAY_NAME")
        }
        set(value) {
            return defaults.set(value, forKey: "HELLO_KIGALI_DISPLAY_NAME")
        }
    }
    

    
    func destroy() {
        UserDefaults.standard.removeObject(forKey: "HELLO_KIGALI_COLLECT_BADGES")
        UserDefaults.standard.removeObject(forKey: "HELLO_KIGALI_ACCESS_TOKEN")
        
    }
}
