Pod::Spec.new do |s|
  s.name                  = 'KAFDGeneralPluginPlugin'
  s.version               = '1.0.0'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPreviewRepository-iOS/main/KAFDGeneralPluginPlugin/1.0.0/KAFDGeneralPluginPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '15.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 2.1.3'
        cs.vendored_frameworks   = 'KAFDGeneralPluginPlugin.xcframework'
        cs.preserve_paths        = ['KAFDGeneralPluginPlugin.xcframework']
  end
end
