Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiNetwork'
  spec.version      = '1.0.8'
  spec.summary      = 'A network SDK for SimpliFi applications.'
  spec.description  = 'SimpliFiNetwork provides networking capabilities for SimpliFi iOS applications.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/j83dryhrq8hds0f/SimpliFiNetwork.framework.zip?dl=1' }
  spec.vendored_frameworks = 'SimpliFiNetwork.framework'
  spec.swift_version = '5.0'
end
