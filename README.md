# Xcode Plugin Template

Basic template for creating a plugin for Xcode 6+.

## Installation

- Install using [Alcatraz](alcatraz.io)

## Usage

The default plugin file links against `AppKit` and `Foundation`, and, when built (and Xcode is restarted), creates a menu item labeled "Do Action" in the File menu. Pressing the menu item should open an alert. Customize at will!

**Note:** Compiling the Swift template requires OS X 10.10 or greater.


## Notes

- Add the build UUIDs for the versions of Xcode you wish to support to `DVTPlugInCompatibilityUUIDs` in `Info.plist`. This can be found by running:

  <pre>defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID</pre>


### Plugin Debugging

- Set `Xcode` as the application of the `Run` action in your scheme
