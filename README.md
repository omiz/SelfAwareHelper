# SelfAwareHelper

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)

## Requirements

- iOS 10.0+
- Xcode 11+
- Swift 5.1+

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate SelfAwareHelper into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'SelfAwareHelper'
```

## Usage

Confirm to `SelfAware` protocol and implement the `awake` function that will be run on the app start 

```Swift
import SelfAwareHelper

class SomeClass: SelfAware {
    
    static func awake() {
         //this will run on app start
        print("SomeClass", "has awaken")
    }
}
```
