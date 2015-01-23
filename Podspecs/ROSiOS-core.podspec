# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ROSiOS-core"
  s.version      = "0.0.3"
  s.summary      = "core framework for ROSiOS"

  s.description  = <<-DESC
This is a core framework for ROSiOS
DESC

  s.homepage     = "http://github.com/furushchev/ROSiOS"
  s.license      = { :type => "MIT" }
  s.author             = { "Yuki Furuta" => "furushchev@jsk.imi.i.u-tokyo.ac.jp" }
  s.social_media_url   = "http://twitter.com/furushchev"
  s.platform     = :ios, "6.0"

  s.source = {:http => "https://github.com/jsk-ros-pkg/archives/raw/master/ios/frameworks/ros.framework.zip"}
  s.library = "iconv"
  s.preserve_paths = "ros.framework"
  s.ios.vendored_frameworks = "ros.framework"

  s.dependency "ROSiOS-boost"
  s.dependency "ROSiOS-log4cxx"
end
