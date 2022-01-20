#!/usr/bin/env ruby
require 'bundler/setup' # Required so that the gem below loads from bundler, not system's gems.
require 'xcodeproj'
project = Xcodeproj::Project.open('/Users/arunakumariyarra/Desktop/CA/Defects/DE524377-Cocoapods/DE524377Sample/DE524377Sample.xcodeproj')
project.targets.each do |target|
    if target.name == "AXACoreModule"
        group = project.main_group.find_subpath(File.join('CAMDOReporter.h','Pod','Classes',  'CAMobileAppAnalytics'),true )
        group.set_source_tree('SOURCE_ROOT')
        file_ref=group.new_reference(file_path)
        header = target.headers_build_phase.add_file_reference(file_ref)
        #        target.add_file_references ( [file_ref] )
        header.settings = { 'ATTRIBUTES' => ['Public'] }
        project.save
    end
end
