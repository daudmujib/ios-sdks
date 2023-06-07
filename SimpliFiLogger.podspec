Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiLogger'
  spec.version      = '1.0.7'
  spec.summary      = 'A logging framework for iOS.'
  spec.description  = 'SimpliFiLogger provides logging capabilities for iOS applications.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/sszk1wp7r0fazz3/Logger.framework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'Logger.framework'
  spec.dependency 'Firebase/AnalyticsWithoutAdIdSupport'
end
