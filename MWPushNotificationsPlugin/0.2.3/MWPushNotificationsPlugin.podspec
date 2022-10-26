Pod::Spec.new do |s|
    s.name                  = 'MWPushNotificationsPlugin'
    s.version               = '0.2.3'
    s.summary               = 'Push Notifications plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Push Notifications plugin for MobileWorkflow on iOS, to obtain user permission and then APNS token.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPreviewRepository-iOS/main/MWPushNotificationsPlugin/0.2.3/MWPushNotificationsPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
    s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.0'
        cs.vendored_frameworks   = 'MWPushNotificationsPlugin.xcframework'
        cs.preserve_paths        = ['MWPushNotificationsPlugin.xcframework']
    end
end
