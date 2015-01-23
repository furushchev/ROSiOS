# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ROSiOS-log4cxx"
  s.version      = "0.0.2"
  s.summary      = "log4cxx framework for ROSiOS"

  s.description  = <<-DESC
This is a log4cxx framework for ROSiOS
DESC

  s.homepage     = "http://github.com/furushchev/ROSiOS"
  s.license      = { :type => "MIT" }
  s.author             = { "Yuki Furuta" => "furushchev@jsk.imi.i.u-tokyo.ac.jp" }
  s.social_media_url   = "http://twitter.com/furushchev"
  s.platform     = :ios, "6.0"

  s.source = {:http => "https://github.com/jsk-ros-pkg/archives/raw/master/ios/frameworks/log4cxx.framework.zip"}

  s.preserve_paths = "log4cxx.framework"
  s.ios.vendored_frameworks = "log4cxx.framework"
end
