#
#  Be sure to run `pod spec lint FPhiSelphIDWidgetiOS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "FPhiSelphIDWidgetiOS"
  spec.version      = "1.6.0"
  spec.summary      = "Component for OCR and liveness test"
  spec.ios.deployment_target  = "10.0"
  spec.static_framework = true

  spec.description  = <<-DESC
  Safe digital onboarding solution with the best real time OCR in the market with facial liveness test.
  DESC
  spec.homepage     = "https://www.facephi.com"
  spec.license = { :type => "Commercial", 
                   :text => <<-LICENSE
                   © Facephi 2020. All rights reserved.
                LICENSE
              }

  spec.author             = { "Carlos Fernandez" => "cfernandez@facephi.com" }
  spec.source       = { :git => "https://github.com/facephi/selphid-framework.git", :tag => "#{spec.version}" }

  spec.ios.resources = "fphi-selphid-widget-resources-selphid-1.0.zip"
  spec.ios.vendored_frameworks = "FPhiSelphIDWidgetiOS.xcframework"

  # Removed architecture for simulator

  spec.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
  spec.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }

  spec.dependency "Firebase/Analytics"
  spec.dependency "Firebase/MLVision"
  spec.dependency "Firebase/MLVisionTextModel"
  spec.dependency "FPhiMBWidgetiOS"
  spec.dependency "zipzap"


end
