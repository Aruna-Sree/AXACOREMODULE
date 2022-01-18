#
# Be sure to run `pod lib lint AXACOREMODULE.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AXACOREMODULE'
  s.version          = '1.0'
  s.summary          = 'A short description of AXACOREMODULE.'
  s.description      = 'Testing module'

  s.homepage         = 'https://github.com/Aruna-Sree/AXACOREMODULE'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aruna' => 'arunaiosdev@gmail.com' }
  s.source           = { :git => 'https://github.com/Aruna-Sree/AXACOREMODULE.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'AXACOREMODULE/Classes/**/*'
  
  s.static_framework = true
  s.dependency 'CAMobileAppAnalytics'
  def s.post_install(target)
      puts "post_install comamnd runing"
      puts config.project_pods_root
      ref = config.project_pods_root.files.select { |project_file| project_file.display_name == "CAMDOReporter.h" }[0]
      puts ref
      header = target.headers_build_phase.add_file_reference(ref)
      header.settings = { 'ATTRIBUTES' => ['Public'] }
  end

  # s.resource_bundles = {
  #   'AXACOREMODULE' => ['AXACOREMODULE/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
