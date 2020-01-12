require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/dylancompanjen/react-native-wifi-transfer.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'GCDWebServer/WebUploader', :git => 'https://github.com/dylancompanjen/GCDWebServer.git', :commit => '8592586c8e6b9efebd9e284b0351accaf835f425'
end