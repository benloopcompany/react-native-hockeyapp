require 'json'

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'package.json')))

  s.name           = 'HockeyAppReactNative'
  s.version        = package['version']
  s.license        = 'MIT'
  s.summary        = 'Official HockeyApp SDK for react-native'
  s.author         = 'hccoelho'
  s.homepage       = "https://github.com/benloopcompany/react-native-hockeyapp"
  s.source         = { :git => 'https://github.com/benloopcompany/react-native-hockeyapp.git', :tag => "#{s.version}"}

  s.ios.deployment_target = "8.0"

  s.preserve_paths = '*.js'

  s.dependency 'React'
  s.dependency 'HockeySDK/AllFeaturesLib', '~> 5.0.0'

  s.source_files = 'ios/RNHockeyApp*.{h,m}'
  s.public_header_files = 'ios/RNHockeyApp.h'
end
