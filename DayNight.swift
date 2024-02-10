//
//  DayNight.swift
//  DayNightShift
//
//  Created by Eugene Kovs on 04.02.2024.
//

import AppKit
import Solar
import CoreLocation

var sharedPlugin: DayNight?

class DayNight: NSObject {
    
    var bundle: Bundle
    lazy var center = NotificationCenter.default
    
    let menuHandler = MenuHandler()
    let someDate = Date()
    
    init(bundle: Bundle) {
        self.bundle = bundle
        super.init()
        
        center.addObserver(self, selector: #selector(setup),
                           name: NSApplication.didFinishLaunchingNotification, object: nil)
        
        // Call swizzleMethods() directly in the initializer
        swizzleMethods()
    }
    
    // MARK: Setup
    @objc func setup() {
        ToggleManager.setup()
        menuHandler.setup()
    }
    
    // MARK: Swizzle
    private func swizzleMethods() {
        guard let originalClass = NSClassFromString("DVTBezelAlertPanel") as? NSObject.Type else {
            return
        }
        
        do {
            try originalClass.jr_swizzleMethod("initWithIcon:message:parentWindow:duration:",
                                               withMethod: "xmas_initWithIcon:message:parentWindow:duration:")
        }
        catch {
            Swift.print("Swizzling failed")
        }
    }
}

