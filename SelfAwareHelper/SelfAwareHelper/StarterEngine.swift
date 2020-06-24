//
//  StarterEngine.swift
//  SelfAwareHelper
//
//  Created by Omar Allaham on 6/24/20.
//  Copyright © 2020 Martian Bears. All rights reserved.
//

import Foundation

public protocol SelfAware: AnyObject {
    static func awake()
}

class StarterEngine: NSObject {
    
    @objc static func appWillLaunch(_: Notification) {
        
        wakeAllConfirmingTypes()
    }
    
    static func wakeAllConfirmingTypes() {
        
        let typeCount = Int(objc_getClassList(nil, 0))
        
        let types = UnsafeMutablePointer<AnyClass>.allocate(capacity: typeCount)
        
        let autoreleasingTypes = AutoreleasingUnsafeMutablePointer<AnyClass>(types)
        
        objc_getClassList(autoreleasingTypes, Int32(typeCount))
        
        for index in 0 ..< typeCount {
            (types[index] as? SelfAware.Type)?.awake()
        }
        
        types.deallocate()
    }
}

