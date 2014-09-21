//
//  ___PACKAGENAME___.swift
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import AppKit

var sharedPlugin = nil

class ___PACKAGENAME___: NSObject {
    var bundle: NSBundle

    class func pluginDidLoad(bundle: NSBundle) {
    	if NSBundle.mainBundle.infoDictionary["CFBundleName"] == "Xcode" {
	        sharedPlugin = self(bundle: bundle)
    	}
    }

    init(bundle: NSBundle) {
    	self.bundle = bundle
    	createMenuItems()
    }

    deinit {
        NSNotificationCenter.defaultCenter.removeObserver(self)
    }

    func createMenuItems() {
    	var item = NSApp.mainMenu.itemWithTitle("Edit")
    	if item {
    		var actionMenuItem = NSMenuItem(title:"Do Action", action:"doMenuAction", keyEquivalent:"")
    		actionMenuItem.target = self
    		item.submenu.addItem(NSMenuItem.separatorItem())
    		item.submenu.addItem(actionMenuItem)
    	}
    }

    func doMenuAction() {
    	NSAlert.alertWithMessageText("Hello, World!", defaultButton:nil, alternateButton:nil, otherButton:nil, informativeTextWithFormat:"").runModal()
    }
}
