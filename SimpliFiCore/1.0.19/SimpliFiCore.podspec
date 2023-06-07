Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiCore'
  spec.version      = '1.0.19'
  spec.summary      = 'A core SDK for SimpliFi operations.'
  spec.description  = 'SimpliFiCore provides capabilities for SimpliFi operations.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/yyg66o9hbndas4o/SimpliFiCore.framework.zip?dl=1' }
    spec.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_CONFIGURATION_BUILD_DIR}/SimpliFiCore/SimpliFiCore.framework/Headers" "${PODS_CONFIGURATION_BUILD_DIR}/SimpliFiNetwork/SimpliFiNetwork.framework/Headers"' }

  spec.ios.vendored_frameworks = 'SimpliFiCore.framework'
  spec.dependency 'SimpliFiNetwork'
  spec.swift_version = '5.0'
end
