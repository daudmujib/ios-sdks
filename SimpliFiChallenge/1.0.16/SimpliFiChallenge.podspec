Pod::Spec.new do |spec|
  
  spec.name         = 'SimpliFiChallenge'
  spec.version      = '1.0.16'
  spec.summary      = 'A challenge SDK for SimpliFi card operations.'
  spec.description  = 'SimpliFiChallenge provides challenge capabilities for SimpliFi operations.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/mj5f4j8gp2bpmet/SimpliFiChallenge.framework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'SimpliFiChallenge.framework'
  spec.swift_version = '5.0'
  
  spec.dependency 'SimpliFiCore'

end
