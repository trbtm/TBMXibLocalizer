# TBMXibLocalizer

TBMXibLocalizer helps you to localise your xib files and is compatible with genstrings.

## Adding to your Project
If your are using [CocoaPods](http://cocoapods.org/) simply add the following to your Podfile

``` ruby
pod 'TBMXibLocalizer'
```

else add all .h and .m files you find the `Classes` folder to your project.

## Getting started

For each xib file that you want to localise you should create a class that inherties from `TBMXibLocalizer`. 
You can define the IBOutlets in an private extension that is in your implementation file.
```objective-c

@interface MainMenuLocalizer ()

@property (strong) IBOutlet id aButton;

@end

@implementation MainMenuLocalizer

TBMXibLocalizeControl(aButton, NSLocalizedString(@"Hi I'm a button!", @""))

@end

```

~~`TBMXibDefineControl` defines a control or rather an IBOutlet~~.

Since Xcode 6 Interface Builder is not able to read preprocessor macros or classes only defined in an implementation file correctly. If you used TBMXibDefineControl do not touch that code, it still works.

`TBMXibLocalizeControl` creates a method that calls `-localizeControl:string:`. The methods by defined by `TBMXibLocalizeControl` a prefixed and dynamically called using run time features in `-awakeFromNib`.

In your xib file you have to create an object with the appropriate sublass of `TBMXibLocalizer` and connect the IBOulets with the controls in the xib file.

## Warning

* Make sure that genstrings is able to read your subclasses of `TBMXibLocalizer`.
* Make sure that all controls i.e. buttons are wide enough for all versions of the localized string if not using autolayout

## Supported classes

* NSWindow
* NSButton
* NSTextField
* NSTabViewItem
* NSTableColumn
* NSMenuItem
* NSToolbarItem

To support `TBMXibLocalizer` the class simply has to implement the `TBMLocalizableControl` protocol.


## Deployment
Supports 10.7+

## License
MIT

