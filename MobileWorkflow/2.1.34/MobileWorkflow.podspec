Pod::Spec.new do |s|
    s.name                  = 'MobileWorkflow'
    s.version               = '2.1.34'
    s.summary               = 'Core functionality for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Core functionality for MobileWorkflow on iOS, including ResearchKit derived steps and addtional custom steps.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPreviewRepository-iOS/main/MobileWorkflow/2.1.34/MobileWorkflow.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '17.1'
    s.default_subspecs      = 'Core'
    s.module_name           = 'MobileWorkflowCore'

    s.subspec 'Core' do |cs|
        cs.vendored_frameworks   = 'MobileWorkflowCore.xcframework'
        cs.preserve_paths        = ['MobileWorkflowCore.xcframework']

    end
end
