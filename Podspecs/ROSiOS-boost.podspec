# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ROSiOS-boost"
  s.version      = "0.0.4"
  s.summary      = "boost framework for ROSiOS"

  s.description  = <<-DESC
This is a boost framework for ROSiOS
DESC

  s.homepage     = "http://github.com/furushchev/ROSiOS"
  s.license      = { :type => "MIT" }
  s.author             = { "Yuki Furuta" => "furushchev@jsk.imi.i.u-tokyo.ac.jp" }
  s.social_media_url   = "http://twitter.com/furushchev"
  s.platform     = :ios, "6.0"

  s.source = {:http => "https://github.com/jsk-ros-pkg/archives/raw/master/ios/frameworks/boost.framework.zip"}

  s.preserve_paths = "boost.framework"
  s.ios.vendored_frameworks = "boost.framework"
end
