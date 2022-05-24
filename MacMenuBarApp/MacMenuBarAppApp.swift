//
//  MacMenuBarAppApp.swift
//  MacMenuBarApp
//
//  Created by Sandip Mane on 25/05/22.
//

import SwiftUI

@main
struct MacMenuBarAppApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    static private(set) var instance: AppDelegate!
    lazy var statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let menu = AppMenu()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        AppDelegate.instance = self
        
        statusBarItem.button?.image = NSImage(named: NSImage.Name("MenuBarIcon"))
        statusBarItem.button?.imagePosition = .imageLeading
        statusBarItem.button?.imageScaling = .scaleProportionallyDown
        statusBarItem.menu = menu.createMenu()
    }
}
