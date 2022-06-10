#
# Be sure to run `pod lib lint AXACOREMODULE.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AXACOREMODULE'
  s.version          = '1.3.9'
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
  s.dependency 'CAMobileAppAnalytics/xcframework', '~> 2022.6.0.2'

# s.prepare_command = 'ruby dependency.rb'
end
