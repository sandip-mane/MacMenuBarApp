//
//  AppMenu.swift
//  MacMenuBarApp
//
//  Created by Sandip Mane on 25/05/22.
//

import Foundation
import SwiftUI

class AppMenu: NSObject {
    let menu = NSMenu()
    
    func createMenu() -> NSMenu {
        let contentView = ContentView()
        
        let topView = NSHostingController(rootView: contentView)
        topView.view.frame.size = CGSize(width: 225, height: 225)
        
        let customMenuItem = NSMenuItem()
        customMenuItem.view = topView.view
        menu.addItem(customMenuItem)
        menu.addItem(.separator())
        
        return menu
    }
}
