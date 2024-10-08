Pod::Spec.new do |s|
  s.name                  = 'MWConstructionPlugin'
    s.version               = '1.2.3'
  s.summary               = 'Collection of Steps to aid in construction site related activities.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPreviewRepository-iOS/main/MWConstructionPlugin/1.2.3/MWConstructionPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '17.1'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.29'

        cs.vendored_frameworks   = 'MWConstructionPlugin.xcframework'
        cs.preserve_paths        = ['MWConstructionPlugin.xcframework']
  end
end
