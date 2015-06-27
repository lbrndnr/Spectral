#
#  Be sure to run `pod spec lint ImagePickerSheetController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "Spectrum"
  s.version      = "0.0.1"
  s.summary      = "A µframework that adds hex support to UIColor/NSColor"

  s.description  = <<-DESC
                   ImagePickerSheetController is a component that replicates the custom photo action sheet in iMessage. It's very similar to UIAlertController which makes its usage simple and concise.
                   DESC

  s.homepage     = "https://github.com/larcus94/Spectrum"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Laurin Brandner" => "hello@laurinbrandner.ch" }
  s.social_media_url   = "http://twitter.com/larcus94"
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  s.ios.deployment_target = "8.0"
  # s.osx.deployment_target = "10.7"

  s.source       = { :git => "https://github.com/larcus94/Spectrum.git", :tag => s.version }
  s.source_files  = "Spectrum/Spectrum/*.swift"

  s.requires_arc = true

end
