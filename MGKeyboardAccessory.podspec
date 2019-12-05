#
# Be sure to run `pod lib lint MGKeyboardAccessory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MGKeyboardAccessory'
  s.version          = '0.6.1'
  s.summary          = 'A keyboard accessory to input special characters.'

  s.description      = <<-DESC
MGKeyboardAccessory is a keyboard accessory to input special characters in UITextField or UI directly. It allows developers to add the custom button with characters in keyboard accessory, characters in the button will be inserted to text field if the button is clicked.
# Features
- Support custom characters.
- Support two styles: defualt and dark.
- Support both UITextField and UITextView.
                       DESC

  s.homepage         = 'https://github.com/lm2343635/MGKeyboardAccessory'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Meng Li' => 'lm2343635@126.com' }
  s.social_media_url = "http://www.fczm.pw"
  s.source           = { :git => 'https://github.com/lm2343635/MGKeyboardAccessory.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |core|
    core.source_files = 'MGKeyboardAccessory/Classes/Core/**/*'
  end
  
  s.subspec 'Rx' do |rx|
    rx.dependency 'MGKeyboardAccessory/Core', '~> 0'
    rx.dependency 'RxCocoa', '~> 5.0'
    rx.source_files = 'MGKeyboardAccessory/Classes/Rx/**/*'
  end

end
