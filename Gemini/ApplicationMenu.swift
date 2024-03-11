import Foundation
import SwiftUI

class ApplicationMenu: NSObject {
    let menu = NSMenu()
    
    func createMenu() -> NSMenu {
        let contentView = ContentView()
        let topView = NSHostingController(rootView: contentView)
        topView.view.frame.size = CGSize(width: 385, height: 525)
        
        let customMenuItem = NSMenuItem()
        customMenuItem.view = topView.view
        menu.addItem(customMenuItem)
        menu.addItem(NSMenuItem.separator())
        
        let aboutMenuItem = NSMenuItem(title: "About Gemini", action: #selector(about), keyEquivalent: "")
        let quitMenuItem = NSMenuItem(title: "Quit", action: #selector(quit), keyEquivalent: "q")
        
        
        aboutMenuItem.target = self
        menu.addItem(aboutMenuItem)
        
        quitMenuItem.target = self
        menu.addItem(quitMenuItem)
        
        return menu
    }
    
    @objc func about(sender: NSMenuItem) {
        NSApp.orderFrontStandardAboutPanel()
    }
    
    @objc func quit(sender: NSMenuItem) {
        NSApp.terminate(self)
    }
}
