//
//  MenuManager.swift
//  DayNightShift
//
//  Created by Eugene Kovs on 04.02.2024.
//

import AppKit

class MenuHandler: NSObject {
    func setup() {
        if let edit = NSApp.mainMenu?.item(withTitle: "Edit") {
            let xmas = NSMenuItem(title: "Xmas", action: nil, keyEquivalent: "")
            xmas.isEnabled = true
            xmas.submenu = NSMenu(title: xmas.title)

            edit.submenu?.addItem(NSMenuItem.separator())
            edit.submenu?.addItem(xmas)
            
            let toggle = NSMenuItem(title: "", action: #selector(NSDrawer.toggle(_:)), keyEquivalent: "")
            toggle.target = self
            configureToggleItem(toggle)
            xmas.submenu?.addItem(toggle)
        }
    }

    func toggle(menuItem: NSMenuItem) {
        ToggleManager.toggle()
        configureToggleItem(menuItem)
    }

    func configureToggleItem(_ item: NSMenuItem) {
        let title = ToggleManager.isEnabled() ? "Disable" : "Enable"
        item.title = title
    }
}
