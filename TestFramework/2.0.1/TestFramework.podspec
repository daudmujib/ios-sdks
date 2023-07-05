Pod::Spec.new do |spec|
  spec.name         = 'TestFramework'
  spec.version      = '2.0.1'
  spec.summary      = 'A logging framework for iOS.'
  spec.description  = 'SimpliFiLogger provides logging capabilities for iOS applications.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/lbybctpupzfzddf/TestFramework.xcframework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'TestFramework.xcframework'
  spec.swift_version = '5.0'

  spec.ios.deployment_target = '13.0'

  spec.dependency 'AEOTPTextField'

end
