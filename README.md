# Xcode5 Plugin Template

Basic template for creating a plugin for Xcode 5.


## Installation

- Clone or copy this project to `~/Library/Developer/Xcode/Templates/Project Templates/Application Plug-in/Xcode5 Plugin.xctemplate`. (Create the `Templates/Project Templates/Application Plug-in` subdirectories if they do not already exist.)
- Restart Xcode
- When creating a new Xcode plugin, create a new project and select **Xcode5 Plugin** from `OS X > Application Plug-in`.


## Usage

The default plugin file links against `AppKit` and `Foundation`, and, when built (and Xcode is restarted), creates a menu item labeled "Do Action" in the File menu. Pressing the menu item should open an alert. Customize at will!


## Notes

- Set `XCPluginHasUI` in `Info.plist` to `YES` to disable your plugin
- Unlike Xcode 4, Xcode 5 uses ARC.
- Add the build UUIDs for the versions of Xcode you wish to support to `DVTPlugInCompatibilityUUIDs` in `Info.plist`. This can be found by running:

  <pre>defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID</pre>



### Plugin Debugging

- I would recommend keeping a console open with `tail -f /var/log/system.log` running, for that special moment when you crash Xcode, or want to see the output of your `NSLog()` statements.
