# JasonDateUtils

![Swift](https://img.shields.io/badge/Swift-5.1-orange.svg)
![Platform](https://cocoapod-badges.herokuapp.com/p/JasonDateUtils/badge.png)
[![CocoaPods](https://img.shields.io/cocoapods/v/JasonDateUtils.svg)](https://cocoapods.org/pods/JasonDateUtils)

## What is JasonDateUtils ?
* *JasonDateUtils* is a simple Swift framework to manage Date conveniently.
* Version: 0.0.1

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate JasonDateUtils into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!
target '<Your Target Name>' do
    pod 'JasonDateUtils', '~> 5.0.0'
end
```

## Usage

### Convert Date To String

```swift
let date = Date()  // 2019-11-20 04:41:59 +0000

date.string(dateFormat: "yyyy-MM-dd")
date.string(dateFormat: "yyyy-MM-dd HH:mm:ss")
```

```bash
2019-11-20
2019-11-20 13:37:07
```

### Add Date

```swift
let date = Date()  // 2019-11-20 04:41:59 +0000

date.add(year: 1)
date.add(month: 1)
date.add(day: 1)
```

```bash
2020-11-20 04:41:59 +0000
2019-12-20 04:41:59 +0000
2019-11-21 04:41:59 +0000
```


## License

JasonDateUtils is released under the MIT license. See LICENSE for details.
