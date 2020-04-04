#
#  Be sure to run `pod spec lint RCTWeChat.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "RCTWeChat"
  s.version      = "1.9.12"
  s.summary      = "React-Native(iOS/Android) functionalities include WeChat Login, Share, Favorite and Payment"
  s.description  = <<-DESC
  React-Native(iOS/Android) functionalities include WeChat Login, Share, Favorite and Payment
   DESC
  s.author       = { "chinsyo" => "chinsyo@qq.com" }
  s.homepage     = "https://github.com/chinsyo/react-native-wechat"
  s.license      = "MIT"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/chinsyo/react-native-wechat.git", :tag => "master" }
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React"
  s.vendored_libraries = "ios/libWeChatSDK.a"
  s.requires_arc = true
  s.frameworks = 'SystemConfiguration','CoreTelephony'
  s.library = 'sqlite3','c++','z'
end
