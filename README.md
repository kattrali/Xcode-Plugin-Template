# Xcode Plugin Template

Basic template for creating a plugin for Xcode 6+.

## Installation

- Install using [Alcatraz](http://alcatraz.io/)

## Usage

The default plugin file links against `AppKit` and `Foundation`, and, when built (and Xcode is restarted), creates a menu item labeled "Do Action" in the Edit menu. Pressing the menu item should open an alert. Customize at will!

**Note:** Compiling the template with Swift requires Xcode 6.1 or greater.


## Notes

- Add the build UUIDs for the versions of Xcode you wish to support to `DVTPlugInCompatibilityUUIDs` in `Info.plist`. This can be found by running:

  <pre>defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID</pre>

## Common Issues

* Plugin with Swift root class fails to load: Ensure the `Principle Class` field
  of `Info.plist` includes the module name.
  [Reference](https://github.com/kattrali/Xcode-Plugin-Template/pull/35#issuecomment-218011462)
