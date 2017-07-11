# YWNamePlaceHolder
[![CI Status](https://travis-ci.org/nsnull0/YWNamePlaceholder.svg?branch=master)](https://travis-ci.org/nsnull0/YWNamePlaceholder)
[![Version](https://img.shields.io/cocoapods/v/YWNamePlaceholder.svg?style=flat)](https://cocoapods.org/pods/YWNamePlaceholder)
[![License](https://img.shields.io/cocoapods/l/YWNamePlaceholder.svg?style=flat)](https://cocoapods.org/pods/YWNamePlaceholder)
[![Platform](https://img.shields.io/cocoapods/p/YWNamePlaceholder.svg?style=flat)](https://cocoapods.org/pods/YWNamePlaceholder)

Profile Picture place Holder


## Availability
#### ⚠️ **This Library only Available to Swift > 3.0** ⚠️

## Screenshot V1.1
![Demo](http://imgur.com/qcgvVPE)

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

```ruby
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
pod 'YWNamePlaceHolder'
end
```

Then, run the following command:

```bash
$ pod install
```

## Initialization
YWNamePlaceHolder is UIView descent
```swift

//initiate with default length characters based on text received
let yourProfileContainer:YWNamePlaceHolder = YWNamePlaceHolder(originLocation: <CGPoint> ,
_withSize: <CGFloat> ,
_yourPlaceholder :<String> ,
_fontPlaceHolder: <UIFont>)


//initiate with your preferred length of characters
let yourProfileContainer:YWNamePlaceHolder = YWNamePlaceHolder(originLocation: <CGPoint> ,
_withSize: <CGFloat> ,
_yourPlaceholder :<String> ,
_fontPlaceHolder: <UIFont>,
_constraintTextResultCount: <Int>)

```

## Functionality
```swift

func setFont(UIFont)

/*
TextColor: setting the text profile color
ContentColor: setting the circle background content
*/
func setColor(TextColor<UIColor>, ContentColor<UIColor>)

/*
fontSize: setting the text size spesificly and static
*/
func setFontSize(fontSize<CGFloat>)

/*
to list font that used in the device
*/
func debugListFontDevice() -> Array<String>

```

see Example project for more detail in initialization

## Support
- Updated occasionally for more functionality


## Credits
- Creator Yoseph Wijaya (Swift 3.0)
- BMInitialPlaceHoldersView (Objective-C)
