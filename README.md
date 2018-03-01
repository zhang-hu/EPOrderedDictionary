# EPOrderedDictionary

[![CI Status](http://img.shields.io/travis/zhang-hu/EPOrderedDictionary.svg?style=flat)](https://travis-ci.org/zhang-hu/EPOrderedDictionary)
[![Version](https://img.shields.io/cocoapods/v/EPOrderedDictionary.svg?style=flat)](http://cocoapods.org/pods/EPOrderedDictionary)
[![License](https://img.shields.io/cocoapods/l/EPOrderedDictionary.svg?style=flat)](http://cocoapods.org/pods/EPOrderedDictionary)
[![Platform](https://img.shields.io/cocoapods/p/EPOrderedDictionary.svg?style=flat)](http://cocoapods.org/pods/EPOrderedDictionary)

**An implementation of the ordered dictionary for iOS**

## Overview

It's known that the `NSDictionary` and `NSMutableDictionary` in Foundation framework are all unordered collections of key-value pairs, but in some real scenarios, we do need the data structure to hold the ordered key-value pairs. In order to fill this kind of gap, this library was born.

The library contains only two classes: `OrderedDictionary` and `OrderedMutableDictionary`. `OrderedDictionary` is an immutable(static) ordered dictionary, and `OrderedMutableDictionary` is a mutable(dynamic) ordered dictionary.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Xcode 7.0+, iOS 2.0+

## Installation

EPOrderedDictionary is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EPOrderedDictionary', '~> 0.1.1'
```

## Author

zhanghu

## License

EPOrderedDictionary is available under the MIT license. See the LICENSE file for more info.
