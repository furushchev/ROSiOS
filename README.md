# ROSiOS

[![CI Status](http://img.shields.io/travis/furushchev/ROSiOS.svg?style=flat)](https://travis-ci.org/furushchev/ROSiOS)
[![Version](https://img.shields.io/cocoapods/v/ROSiOS.svg?style=flat)](http://cocoadocs.org/docsets/ROSiOS)
[![License](https://img.shields.io/cocoapods/l/ROSiOS.svg?style=flat)](http://cocoadocs.org/docsets/ROSiOS)
[![Platform](https://img.shields.io/cocoapods/p/ROSiOS.svg?style=flat)](http://cocoadocs.org/docsets/ROSiOS)

## Requirements

- Xcode
- CocoaPods
(Since Ruby/Gems are already installed on OSX, just type `sudo gem install cocoapods && pod setup`)


## How to use

Try Example.

```bash
$ pod try ROSiOS
```

Or clone the repo, and run `pod install` from the Example directory first.

```bash
$ git clone http://github.com/furushchev/ROSiOS.git
$ cd ROSiOS/Example
$ pod install
$ open ROSiOS.xcworkspace
```


## Step-by-Step setup on your Xcode project

1. Add ROSiOS packages as dependencies, and install.

  ROSiOS is available through [CocoaPods](http://cocoapods.org).
  To install it, simply add the following line to your `Podfile` (or just create it by `pod init`):
  
  ```ruby
  pod "ROSiOS"
  ```

  Then run `pod install`.
  That's it.
  
  To add ros message/package frameworks, just add the following line to your `Podfile`.

  Example:

  ```ruby
  pod "ROSiOS"
  pod "ROSiOS-sensor_msgs"  # ROSiOS-<message_type>
  pod "ROSiOS-tf"           # ROSiOS-<package_type>
  ```

  Then one more time run `pod install`.

2. Setup your project.

  After `pod install`, you can see the file `<your project name>.xcworkspace` (**NOT `*.xcodeproj`**) that we use it on development.

  - Now open your project.

    ```bash
    open *.xcworkspace
    ```

  - Rename `main.m` -> `main.mm`

    Files that have `*.mm` extension are recognized as Objective-C++ codes.

  - Setup ROS Configuration into `AppDelegate`

    Before hacking your app, it's highly recommended to insert `Configuration` before the initial view controller of your app.
    This includes setup utilities of ROS Environments (`ROS_IP`, `ROS_MASTER_URI`,...).

    - Open the `AppDelegate.m` (you may have a prefix) on your Xcode.
    - Import utility class header.

    ```diff
    ...

    #import "AppDelegate.h"
    + #import <ROSiOS/ROSConfigurationUtil.h>

    ...
    ```

    - Then add 1 line code to your AppDelegate method.

    ```objc
    ...

    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
    {
      [ROSConfigurationUtil insertROSConfigurationAsInitialInterfaceOfWindow:self.window
                                                                withNodeName:@"sample_ios_app"]; // ROS Node Name

      return YES;
    }

    ...
    ```

3. Enjoy hacking! :-)

## Author

Yuki Furuta, furushchev@jsk.imi.i.u-tokyo.ac.jp

## License

ROSiOS is available under the MIT license. See the LICENSE file for more info.

