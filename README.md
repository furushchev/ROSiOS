# ROSiOS

[![CI Status](http://img.shields.io/travis/Furushchev/ROSiOS.svg?style=flat)](https://travis-ci.org/Furushchev/ROSiOS)
[![Version](https://img.shields.io/cocoapods/v/ROSiOS.svg?style=flat)](http://cocoadocs.org/docsets/ROSiOS)
[![License](https://img.shields.io/cocoapods/l/ROSiOS.svg?style=flat)](http://cocoadocs.org/docsets/ROSiOS)
[![Platform](https://img.shields.io/cocoapods/p/ROSiOS.svg?style=flat)](http://cocoadocs.org/docsets/ROSiOS)

## Usage

See Example.

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```bash
$ git clone http://github.com/furushchev/ROSiOS.git
$ cd ROSiOS/Example
$ pod install
```

## Requirements

- Xcode
- CocoaPods
(Since Ruby/Gems are already installed on OSX, just type `sudo gem install cocoapods && pod setup`)

## Installation

ROSiOS is available through [CocoaPods](http://cocoapods.org).
To install it, simply add the following line to your `Podfile` (or just create it):

```ruby
pod "ROSiOS"
```

then run `pod install`.
That's it.

To add ros message/package frameworks, just add the following line to your `Podfile`:

```ruby
pod "ROSiOS"
pod "ROSiOS-sensor_msgs"  # ROSiOS-<message_type>
pod "ROSiOS-tf"           # ROSiOS-<package_type>
```

then one more time run `pod install`.

## Author

Yuki Furuta, furushchev@jsk.imi.i.u-tokyo.ac.jp

## License

ROSiOS is available under the MIT license. See the LICENSE file for more info.

