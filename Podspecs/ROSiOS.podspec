Pod::Spec.new do |s|
  s.name             = "ROSiOS"
  s.version          = "0.0.4"
  s.summary          = "template package of ROSiOS."
  s.description      = <<-DESC
This is a bootstrap package for creating iOS App using ROS(Robot Operating System).
This includes some examples (Topic Viewer, Talker and Listener) on Example directory.
                       DESC
  s.homepage         = "https://github.com/furushchev/ROSiOS"
  s.license          = {:type => 'MIT'}
  s.author           = { "Yuki Furuta" => "furushchev@jsk.imi.i.u-tokyo.ac.jp" }
  s.source           = { :git => "https://github.com/furushchev/ROSiOS.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/furushchev'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/*.{h,m,mm}'
  s.resource_bundles = {
    'ROSiOS' => ['Pod/Assets/Configuration.storyboard']
  }

  s.public_header_files = 'Pod/Classes/*.h'
  s.frameworks = 'UIKit'
  s.dependency "ROSiOS-core"

  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/**'}
end
