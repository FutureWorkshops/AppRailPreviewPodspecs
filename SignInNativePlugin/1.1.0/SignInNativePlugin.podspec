Pod::Spec.new do |s|
  s.name                  = 'SignInNativePlugin'
  s.version               = '1.1.0'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPreviewRepository-iOS/main/SignInNativePlugin/1.1.0/SignInNativePlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '15.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 2.1.13'
        cs.vendored_frameworks   = 'SignInNativePlugin.xcframework'
        cs.preserve_paths        = ['SignInNativePlugin.xcframework']
  end
end
