# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ROSiOS-tf"
  s.version      = "0.0.1"
  s.summary      = "tf framework for ROSiOS"

  s.description  = <<-DESC
This is a tf framework for ROSiOS
DESC

  s.homepage     = "http://github.com/furushchev/ROSiOS"
  s.license      = { :type => "MIT" }
  s.author             = { "Yuki Furuta" => "furushchev@jsk.imi.i.u-tokyo.ac.jp" }
  s.social_media_url   = "http://twitter.com/furushchev"
  s.platform     = :ios, "6.0"

  s.source = {:http => "https://github.com/jsk-ros-pkg/archives/raw/master/ios/frameworks/tf.framework.zip"}

  s.preserve_paths = "tf.framework"
  s.ios.vendored_frameworks = "tf.framework"

  s.dependency "ROSiOS-core"
  s.dependency "ROSiOS-geometry_msgs"
  s.dependency "ROSiOS-sensor_msgs"
end
