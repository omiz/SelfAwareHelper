//
//  SelfAwareHelperTests.swift
//  SelfAwareHelperTests
//
//  Created by Omar Allaham on 6/24/20.
//  Copyright © 2020 Martian Bears. All rights reserved.
//

import XCTest

class SelfAwareHelperTests: XCTestCase {

    class SomeClass: SelfAware {
        
        static var isInvloked: Bool = false
        
        static func awake() {
            print("SomeClass", "has awaken")
            isInvloked = true
        }
    }
    
    override func setUpWithError() throws {
        
        StarterEngine.appWillLaunch(Notification(name: UIApplication.didFinishLaunchingNotification))
    }
    
    override func tearDownWithError() throws {
        SomeClass.isInvloked = false
    }
    
    func testExample() throws {
        
        assert(SomeClass.isInvloked, "The class confirming to SelfAware protocol was not invoked")
    }

}
