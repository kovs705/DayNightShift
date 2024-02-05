//
//  MenuManager.swift
//  DayNightShift
//
//  Created by Eugene Kovs on 04.02.2024.
//

import AppKit

@objc class ToggleManager: NSObject {
    static let key = "com.CodingKovs.DayNightShift"

    @objc class func setup() {
        let defaults = [key: true]
        UserDefaults.standard.register(defaults: defaults)
    }

    @objc class func isEnabled() -> Bool {
        return UserDefaults.standard.bool(forKey: key)
    }

    @objc class func toggle() {
        UserDefaults.standard.set(!isEnabled(), forKey: key)
    }
}
