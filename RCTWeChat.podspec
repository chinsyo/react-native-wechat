#
#  Be sure to run `pod spec lint RCTWeChat.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RCTWeChat"
  s.version      = package['version']
  s.summary      = package['description']

  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/chinsyo/react-native-wechat.git", :tag => "master" }
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React"
  s.vendored_libraries = "ios/libWeChatSDK.a"
  s.requires_arc = true
  s.frameworks = 'SystemConfiguration','CoreTelephony', 'WebKit'
  s.library = 'sqlite3','c++','z'
end
