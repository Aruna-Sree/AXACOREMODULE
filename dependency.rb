#!/usr/bin/env ruby
require 'xcodeproj'
basePath=File.dirname(__FILE__)
puts basePath


project_path = 'Pods/Pods.xcodeproj/'
project = Xcodeproj::Project.open(project_path)
project.targets.each do |target|
    if target.name == "AXACOREMODULE"
        group = project.main_group.find_subpath(File.join('Pods'),true )
        file_ref=group.new_file('Headers/Public/CAMobileAppAnalytics/CAMDOReporter.h')
        build_files = target.add_file_references ( [file_ref] ) do |build_file|
          build_file.settings = { 'ATTRIBUTES' => ['Public'] }
        end
        project.save
    end
end


