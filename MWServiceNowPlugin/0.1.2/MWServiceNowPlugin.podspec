Pod::Spec.new do |s|
    s.name                  = 'MWServiceNowPlugin'
    s.version               = '0.1.2'
    s.summary               = 'ServiceNow plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    ServiceNow plugin for MobileWorkflow on iOS, containg a ServiceNowAsyncTaskService.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPreviewRepository-iOS/main/MWServiceNowPlugin/0.1.2/MWServiceNowPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
    s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.0.0'
        cs.vendored_frameworks   = 'MWServiceNowPlugin.xcframework'
        cs.preserve_paths        = ['MWServiceNowPlugin.xcframework']
    end
end
