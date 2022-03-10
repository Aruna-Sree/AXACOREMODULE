#!/usr/bin/env ruby
require 'xcodeproj'
require 'shellwords'

project_path = '../Pods.xcodeproj/'
project_path = "#{project_path}".shellescape
project = Xcodeproj::Project.open(project_path)
project.targets.each do |target|
    if target.name == "AXACOREMODULE" && !(target.headers_build_phase.file_display_names.include? "CAMDOReporter.h")
        ref = project.files.select { |project_file| project_file.display_name == "CAMDOReporter.h" }[0]
        header = target.headers_build_phase.add_file_reference(ref)
        header.settings = { 'ATTRIBUTES' => ['Public'] }
        project.save
    end
end

