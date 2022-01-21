#
# Be sure to run `pod lib lint AXACOREMODULE.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AXACOREMODULE'
  s.version          = '1.2.5'
  s.summary          = 'A short description of AXACOREMODULE.'
  s.description      = 'Testing module'

  s.homepage         = 'https://github.com/Aruna-Sree/AXACOREMODULE'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aruna' => 'arunaiosdev@gmail.com' }
  s.source           = { :git => 'https://github.com/Aruna-Sree/AXACOREMODULE.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'AXACOREMODULE/Classes/**/*'
  s.resources = 'dependency.rb'
  s.script_phases = [
  { :name => 'Precompile',
    :script => 'cd "${PODS_TARGET_SRCROOT}"
                ruby dependency.rb
                cd - ',
    :execution_position => :before_compile
  }
]

  s.static_framework = true
  s.dependency 'CAMobileAppAnalytics'

  # s.source_files = 'CAMobileAppAnalytics/**/*.h'
  # s.public_header_files = 'CAMobileAppAnalytics/**/*.h'
  # s.resources = 'CAMobileAppAnalytics/**/*.js'
  # s.vendored_libraries = 'CAMobileAppAnalytics/**/*.a'
  
  # s.libraries = 'c++', 'z', 'sqlite3'
  # s.frameworks = 'CoreLocation', 'SystemConfiguration', 'Foundation', 'UIKit', 'CoreGraphics', 'Security', 'CoreTelephony', 'WebKit'
  # s.requires_arc = true
  

  # s.pod_target_xcconfig = {
  #   'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  # }
  # def s.post_install(target)
  #     puts "post_install comamnd runing"
  #     puts config.project_pods_root
  #     ref = config.project_pods_root.files.select { |project_file| project_file.display_name == "CAMDOReporter.h" }[0]
  #     puts ref
  #     header = target.headers_build_phase.add_file_reference(ref)
  #     header.settings = { 'ATTRIBUTES' => ['Public'] }
  # end

  # s.resource_bundles = {
  #   'AXACOREMODULE' => ['AXACOREMODULE/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
# sed -i -e '$a\TEXTTOEND' 'Podfile'
#   s.prepare_command = <<-CMD
#                           echo 'post_install do |installer|
#   installer.pods_project.targets.each do |target|
#     if target.name  == "AXACOREMODULE"
#       ref = installer.pods_project.files.select { |project_file| project_file.display_name == "CAMDOReporter.h" }[0]
#       header = target.headers_build_phase.add_file_reference(ref)
#       header.settings = { 'ATTRIBUTES' => ['Public'] }
#     end
#   end
# end' >> ./Podfile
#                       CMD

# s.prepare_command = 'ruby dependency.rb'
end
