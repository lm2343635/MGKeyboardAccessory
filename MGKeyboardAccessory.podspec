#
# Be sure to run `pod lib lint MGKeyboardAccessory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MGKeyboardAccessory'
  s.version          = '0.1.1'
  s.summary          = 'A keyboard accessory to input special text to text field directly.'

  s.description      = <<-DESC
MGKeyboardAccessory is a keyboard accessory to input special text to text field directly. Itallows developer to add the custom button with text in keyboard accessory, text in the button will be inserted to text field if the button is clicked.
# Features
- Support custom text in the button.
- Support two styles: defualt and dark.
                       DESC

  s.homepage         = 'https://github.com/lm2343635/MGKeyboardAccessory'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Meng Li' => 'lm2343635@126.com' }
  s.social_media_url = "http://fczm.pw"
  s.source           = { :git => 'https://github.com/lm2343635/MGKeyboardAccessory.git', :tag => '0.1.1' }

  s.platform     = :ios
  s.ios.deployment_target = '8.0'
  s.source_files = 'MGKeyboardAccessory/Classes/**/*'

end
