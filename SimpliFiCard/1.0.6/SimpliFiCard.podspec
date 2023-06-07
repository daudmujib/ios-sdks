Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiCard'
  spec.version      = '1.0.6'
  spec.summary      = 'A card SDK for SimpliFi Cards.'
  spec.description  = 'SimpliFiCard provides capabilities for SimpliFi card operations.'
  spec.homepage     = 'https://simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/kl94zm9wc3hvy9q/SimpliFiCard.framework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'SimpliFiCard.framework'
  spec.swift_version = '5.0'
  spec.dependency 'SimpliFiChallenge'
end
