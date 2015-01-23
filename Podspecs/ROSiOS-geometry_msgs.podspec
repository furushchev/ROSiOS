# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ROSiOS-geometry_msgs"
  s.version      = "0.0.1"
  s.summary      = "geometry_msgs framework for ROSiOS"

  s.description  = <<-DESC
This is a geometry_msgs framework for ROSiOS
DESC

  s.homepage     = "http://github.com/furushchev/ROSiOS"
  s.license      = { :type => "MIT" }
  s.author             = { "Yuki Furuta" => "furushchev@jsk.imi.i.u-tokyo.ac.jp" }
  s.social_media_url   = "http://twitter.com/furushchev"
  s.platform     = :ios, "6.0"

  s.source = {:http => "https://github.com/jsk-ros-pkg/archives/raw/master/ios/frameworks/geometry_msgs.framework.zip"}

  s.preserve_paths = "geometry_msgs.framework"
  s.ios.vendored_frameworks = "geometry_msgs.framework"

  s.dependency "ROSiOS-std_msgs"
end
