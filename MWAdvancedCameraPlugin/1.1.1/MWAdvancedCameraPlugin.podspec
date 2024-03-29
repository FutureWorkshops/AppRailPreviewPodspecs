Pod::Spec.new do |s|
  s.name                  = 'MWAdvancedCameraPlugin'
    s.version               = '1.1.1'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPreviewRepository-iOS/main/MWAdvancedCameraPlugin/1.1.1/MWAdvancedCameraPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.framework          = 'AVFoundation'
    cs.framework          = 'AVKit'
        cs.dependency            'MobileWorkflow', '~> 2.1.12'
    cs.dependency           'MWCameraPlugin', '~> 0.3.0'
        cs.vendored_frameworks   = 'MWAdvancedCameraPlugin.xcframework'
        cs.preserve_paths        = ['MWAdvancedCameraPlugin.xcframework']

  end
end
