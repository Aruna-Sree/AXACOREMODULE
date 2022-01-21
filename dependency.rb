#!/usr/bin/env ruby
require 'xcodeproj'
require 'shellwords'

project_path = '../Pods.xcodeproj/'
project_path = "#{project_path}".shellescape
project = Xcodeproj::Project.open(project_path)
project.targets.each do |target|
    if target.name == "AXACOREMODULE" && !(target.headers_build_phase.file_display_names.include? "CAMDOReporter.h")
        group = project.main_group.find_subpath(File.join('Pods'),true )
        file_ref=group.new_file('Headers/Public/CAMobileAppAnalytics/CAMDOReporter.h')
        build_file = target.headers_build_phase.add_file_reference (file_ref)
        build_file.settings = { 'ATTRIBUTES' => ['Public'] }
        project.save
    end
end

