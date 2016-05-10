//
//  ___PACKAGENAME___.swift
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import AppKit

var sharedPlugin: ___PACKAGENAME___?

class ___PACKAGENAME___: NSObject {

    var bundle: NSBundle
    lazy var center = NSNotificationCenter.defaultCenter()

    class func pluginDidLoad(bundle: NSBundle) {
        let allowedLoaders = bundle.objectForInfoDictionaryKey("me.delisa.XcodePluginBase.AllowedLoaders") as! Array<String>
        if allowedLoaders.contains(NSBundle.mainBundle().bundleIdentifier ?? "") {
            sharedPlugin = ___PACKAGENAME___(bundle: bundle)
        }
    }

    init(bundle: NSBundle) {
        self.bundle = bundle

        super.init()
        center.addObserver(self, selector: #selector(self.createMenuItems), name: NSApplicationDidFinishLaunchingNotification, object: nil)
    }

    deinit {
        removeObserver()
    }

    func removeObserver() {
        center.removeObserver(self)
    }

    func createMenuItems() {
        removeObserver()

        guard let mainMenu = NSApp.mainMenu else { return }
        guard let item = mainMenu.itemWithTitle("Edit") else { return }
        guard let submenu = item.submenu else { return }

        let actionMenuItem = NSMenuItem(title:"Do Action", action:#selector(self.doMenuAction), keyEquivalent:"")
        actionMenuItem.target = self

        submenu.addItem(NSMenuItem.separatorItem())
        submenu.addItem(actionMenuItem)
    }

    func doMenuAction() {
        let error = NSError(domain: "Hello World!", code:42, userInfo:nil)
        NSAlert(error: error).runModal()
    }
}

