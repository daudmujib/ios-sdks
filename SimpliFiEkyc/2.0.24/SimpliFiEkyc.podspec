Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiEkyc'
  spec.version      = '2.0.24'
  spec.summary      = 'A card SDK for SimpliFi eKYC.'
  spec.description  = 'SimpliFiCard provides capabilities for SimpliFi eKYC operations.'
  spec.homepage     = 'https://simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  #spec.source       = { :http => 'https://www.dropbox.com/s/w6tv3mz39avrzhu/SimpliFiEkyc.xcframework.zip?dl=1' }
  spec.source       = { :http => 'https://www.dropbox.com/s/s95c8ny1vf4l7ff/SimpliFiEkyc.framework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'SimpliFiEkyc.framework'
  spec.swift_version = '5.0'


  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_CONFIGURATION_BUILD_DIR}/SimpliFiCore/SimpliFiCore.framework/Headers" "${PODS_CONFIGURATION_BUILD_DIR}/GTMSessionFetcher/GTMSessionFetcher.framework/Headers" "${PODS_CONFIGURATION_BUILD_DIR}/GoogleDataTransport/GoogleDataTransport.framework/Headers" "${PODS_CONFIGURATION_BUILD_DIR}/GoogleToolboxForMac/GoogleToolboxForMac.framework/Headers" "${PODS_CONFIGURATION_BUILD_DIR}/GoogleUtilities/GoogleUtilities.framework/Headers" "${PODS_CONFIGURATION_BUILD_DIR}/GoogleUtilitiesComponents/GoogleUtilitiesComponents.framework/Headers" "${PODS_CONFIGURATION_BUILD_DIR}/PromisesObjC/FBLPromises.framework/Headers" "${PODS_CONFIGURATION_BUILD_DIR}/Protobuf/Protobuf.framework/Headers" "${PODS_CONFIGURATION_BUILD_DIR}/nanopb/nanopb.framework/Headers" "${PODS_ROOT}/Headers/Public" "${PODS_ROOT}/Headers/Public/GoogleMLKit" $(inherited) ${PODS_ROOT}/GoogleMLKit/MLKitCore/Sources' }


  spec.dependency 'SimpliFiChallenge'
  spec.dependency 'IDWise', '3.11.5'

end
